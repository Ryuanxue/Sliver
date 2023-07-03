; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_fprintf_66a.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_fprintf_66a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_66_bad() #0 !dbg !9 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !12, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !16, metadata !DIExpression()), !dbg !20
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
  %7 = load i8*, i8** %data, align 8, !dbg !53
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !54
  store i8* %7, i8** %arrayidx, align 16, !dbg !55
  %arraydecay4 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !56
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_66b_badSink(i8** %arraydecay4), !dbg !57
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

declare dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_66b_badSink(i8**) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !59 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !64, metadata !DIExpression()), !dbg !65
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !65
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !65
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !66
  store i8* %arraydecay, i8** %data, align 8, !dbg !67
  %1 = load i8*, i8** %data, align 8, !dbg !68
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !69
  %2 = load i8*, i8** %data, align 8, !dbg !70
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !71
  store i8* %2, i8** %arrayidx, align 16, !dbg !72
  %arraydecay1 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !73
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_66b_goodG2BSink(i8** %arraydecay1), !dbg !74
  ret void, !dbg !75
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

declare dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_66b_goodG2BSink(i8**) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !76 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !81, metadata !DIExpression()), !dbg !82
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !82
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !82
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !83
  store i8* %arraydecay, i8** %data, align 8, !dbg !84
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !85, metadata !DIExpression()), !dbg !87
  %1 = load i8*, i8** %data, align 8, !dbg !88
  %call = call i64 @strlen(i8* %1) #6, !dbg !89
  store i64 %call, i64* %dataLen, align 8, !dbg !87
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !90, metadata !DIExpression()), !dbg !91
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !92
  store i8* %call1, i8** %environment, align 8, !dbg !91
  %2 = load i8*, i8** %environment, align 8, !dbg !93
  %cmp = icmp ne i8* %2, null, !dbg !95
  br i1 %cmp, label %if.then, label %if.end, !dbg !96

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !97
  %4 = load i64, i64* %dataLen, align 8, !dbg !99
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !100
  %5 = load i8*, i8** %environment, align 8, !dbg !101
  %6 = load i64, i64* %dataLen, align 8, !dbg !102
  %sub = sub i64 100, %6, !dbg !103
  %sub2 = sub i64 %sub, 1, !dbg !104
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !105
  br label %if.end, !dbg !106

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !107
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !108
  store i8* %7, i8** %arrayidx, align 16, !dbg !109
  %arraydecay4 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !110
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_66b_goodB2GSink(i8** %arraydecay4), !dbg !111
  ret void, !dbg !112
}

declare dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_66b_goodB2GSink(i8**) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_66_good() #0 !dbg !113 {
entry:
  call void @goodG2B(), !dbg !114
  call void @goodB2G(), !dbg !115
  ret void, !dbg !116
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_66a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_712/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_66_bad", scope: !1, file: !1, line: 37, type: !10, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 39, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocation(line: 39, column: 12, scope: !9)
!16 = !DILocalVariable(name: "dataArray", scope: !9, file: !1, line: 40, type: !17)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 320, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 5)
!20 = !DILocation(line: 40, column: 12, scope: !9)
!21 = !DILocalVariable(name: "dataBuffer", scope: !9, file: !1, line: 41, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 41, column: 10, scope: !9)
!26 = !DILocation(line: 42, column: 12, scope: !9)
!27 = !DILocation(line: 42, column: 10, scope: !9)
!28 = !DILocalVariable(name: "dataLen", scope: !29, file: !1, line: 45, type: !30)
!29 = distinct !DILexicalBlock(scope: !9, file: !1, line: 43, column: 5)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DILocation(line: 45, column: 16, scope: !29)
!34 = !DILocation(line: 45, column: 33, scope: !29)
!35 = !DILocation(line: 45, column: 26, scope: !29)
!36 = !DILocalVariable(name: "environment", scope: !29, file: !1, line: 46, type: !13)
!37 = !DILocation(line: 46, column: 16, scope: !29)
!38 = !DILocation(line: 46, column: 30, scope: !29)
!39 = !DILocation(line: 48, column: 13, scope: !40)
!40 = distinct !DILexicalBlock(scope: !29, file: !1, line: 48, column: 13)
!41 = !DILocation(line: 48, column: 25, scope: !40)
!42 = !DILocation(line: 48, column: 13, scope: !29)
!43 = !DILocation(line: 51, column: 21, scope: !44)
!44 = distinct !DILexicalBlock(scope: !40, file: !1, line: 49, column: 9)
!45 = !DILocation(line: 51, column: 26, scope: !44)
!46 = !DILocation(line: 51, column: 25, scope: !44)
!47 = !DILocation(line: 51, column: 35, scope: !44)
!48 = !DILocation(line: 51, column: 52, scope: !44)
!49 = !DILocation(line: 51, column: 51, scope: !44)
!50 = !DILocation(line: 51, column: 59, scope: !44)
!51 = !DILocation(line: 51, column: 13, scope: !44)
!52 = !DILocation(line: 52, column: 9, scope: !44)
!53 = !DILocation(line: 55, column: 20, scope: !9)
!54 = !DILocation(line: 55, column: 5, scope: !9)
!55 = !DILocation(line: 55, column: 18, scope: !9)
!56 = !DILocation(line: 56, column: 77, scope: !9)
!57 = !DILocation(line: 56, column: 5, scope: !9)
!58 = !DILocation(line: 57, column: 1, scope: !9)
!59 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 65, type: !10, scopeLine: 66, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!60 = !DILocalVariable(name: "data", scope: !59, file: !1, line: 67, type: !13)
!61 = !DILocation(line: 67, column: 12, scope: !59)
!62 = !DILocalVariable(name: "dataArray", scope: !59, file: !1, line: 68, type: !17)
!63 = !DILocation(line: 68, column: 12, scope: !59)
!64 = !DILocalVariable(name: "dataBuffer", scope: !59, file: !1, line: 69, type: !22)
!65 = !DILocation(line: 69, column: 10, scope: !59)
!66 = !DILocation(line: 70, column: 12, scope: !59)
!67 = !DILocation(line: 70, column: 10, scope: !59)
!68 = !DILocation(line: 72, column: 12, scope: !59)
!69 = !DILocation(line: 72, column: 5, scope: !59)
!70 = !DILocation(line: 73, column: 20, scope: !59)
!71 = !DILocation(line: 73, column: 5, scope: !59)
!72 = !DILocation(line: 73, column: 18, scope: !59)
!73 = !DILocation(line: 74, column: 81, scope: !59)
!74 = !DILocation(line: 74, column: 5, scope: !59)
!75 = !DILocation(line: 75, column: 1, scope: !59)
!76 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 79, type: !10, scopeLine: 80, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!77 = !DILocalVariable(name: "data", scope: !76, file: !1, line: 81, type: !13)
!78 = !DILocation(line: 81, column: 12, scope: !76)
!79 = !DILocalVariable(name: "dataArray", scope: !76, file: !1, line: 82, type: !17)
!80 = !DILocation(line: 82, column: 12, scope: !76)
!81 = !DILocalVariable(name: "dataBuffer", scope: !76, file: !1, line: 83, type: !22)
!82 = !DILocation(line: 83, column: 10, scope: !76)
!83 = !DILocation(line: 84, column: 12, scope: !76)
!84 = !DILocation(line: 84, column: 10, scope: !76)
!85 = !DILocalVariable(name: "dataLen", scope: !86, file: !1, line: 87, type: !30)
!86 = distinct !DILexicalBlock(scope: !76, file: !1, line: 85, column: 5)
!87 = !DILocation(line: 87, column: 16, scope: !86)
!88 = !DILocation(line: 87, column: 33, scope: !86)
!89 = !DILocation(line: 87, column: 26, scope: !86)
!90 = !DILocalVariable(name: "environment", scope: !86, file: !1, line: 88, type: !13)
!91 = !DILocation(line: 88, column: 16, scope: !86)
!92 = !DILocation(line: 88, column: 30, scope: !86)
!93 = !DILocation(line: 90, column: 13, scope: !94)
!94 = distinct !DILexicalBlock(scope: !86, file: !1, line: 90, column: 13)
!95 = !DILocation(line: 90, column: 25, scope: !94)
!96 = !DILocation(line: 90, column: 13, scope: !86)
!97 = !DILocation(line: 93, column: 21, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 91, column: 9)
!99 = !DILocation(line: 93, column: 26, scope: !98)
!100 = !DILocation(line: 93, column: 25, scope: !98)
!101 = !DILocation(line: 93, column: 35, scope: !98)
!102 = !DILocation(line: 93, column: 52, scope: !98)
!103 = !DILocation(line: 93, column: 51, scope: !98)
!104 = !DILocation(line: 93, column: 59, scope: !98)
!105 = !DILocation(line: 93, column: 13, scope: !98)
!106 = !DILocation(line: 94, column: 9, scope: !98)
!107 = !DILocation(line: 96, column: 20, scope: !76)
!108 = !DILocation(line: 96, column: 5, scope: !76)
!109 = !DILocation(line: 96, column: 18, scope: !76)
!110 = !DILocation(line: 97, column: 81, scope: !76)
!111 = !DILocation(line: 97, column: 5, scope: !76)
!112 = !DILocation(line: 98, column: 1, scope: !76)
!113 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_66_good", scope: !1, file: !1, line: 100, type: !10, scopeLine: 101, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!114 = !DILocation(line: 102, column: 5, scope: !113)
!115 = !DILocation(line: 103, column: 5, scope: !113)
!116 = !DILocation(line: 104, column: 1, scope: !113)
