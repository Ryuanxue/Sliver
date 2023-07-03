; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_fprintf_53a.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_fprintf_53a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53_bad() #0 !dbg !9 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !12, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !16, metadata !DIExpression()), !dbg !20
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !20
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !20
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !21
  store i8* %arraydecay, i8** %data, align 8, !dbg !22
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !23, metadata !DIExpression()), !dbg !28
  %1 = load i8*, i8** %data, align 8, !dbg !29
  %call = call i64 @strlen(i8* %1) #6, !dbg !30
  store i64 %call, i64* %dataLen, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !31, metadata !DIExpression()), !dbg !32
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !33
  store i8* %call1, i8** %environment, align 8, !dbg !32
  %2 = load i8*, i8** %environment, align 8, !dbg !34
  %cmp = icmp ne i8* %2, null, !dbg !36
  br i1 %cmp, label %if.then, label %if.end, !dbg !37

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !38
  %4 = load i64, i64* %dataLen, align 8, !dbg !40
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !41
  %5 = load i8*, i8** %environment, align 8, !dbg !42
  %6 = load i64, i64* %dataLen, align 8, !dbg !43
  %sub = sub i64 100, %6, !dbg !44
  %sub2 = sub i64 %sub, 1, !dbg !45
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !46
  br label %if.end, !dbg !47

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !48
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53b_badSink(i8* %7), !dbg !49
  ret void, !dbg !50
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

declare dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53b_badSink(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !51 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !54, metadata !DIExpression()), !dbg !55
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !55
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !55
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !56
  store i8* %arraydecay, i8** %data, align 8, !dbg !57
  %1 = load i8*, i8** %data, align 8, !dbg !58
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !59
  %2 = load i8*, i8** %data, align 8, !dbg !60
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53b_goodG2BSink(i8* %2), !dbg !61
  ret void, !dbg !62
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

declare dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53b_goodG2BSink(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !63 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !66, metadata !DIExpression()), !dbg !67
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !67
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !67
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !68
  store i8* %arraydecay, i8** %data, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !70, metadata !DIExpression()), !dbg !72
  %1 = load i8*, i8** %data, align 8, !dbg !73
  %call = call i64 @strlen(i8* %1) #6, !dbg !74
  store i64 %call, i64* %dataLen, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !75, metadata !DIExpression()), !dbg !76
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !77
  store i8* %call1, i8** %environment, align 8, !dbg !76
  %2 = load i8*, i8** %environment, align 8, !dbg !78
  %cmp = icmp ne i8* %2, null, !dbg !80
  br i1 %cmp, label %if.then, label %if.end, !dbg !81

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !82
  %4 = load i64, i64* %dataLen, align 8, !dbg !84
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !85
  %5 = load i8*, i8** %environment, align 8, !dbg !86
  %6 = load i64, i64* %dataLen, align 8, !dbg !87
  %sub = sub i64 100, %6, !dbg !88
  %sub2 = sub i64 %sub, 1, !dbg !89
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !90
  br label %if.end, !dbg !91

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !92
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53b_goodB2GSink(i8* %7), !dbg !93
  ret void, !dbg !94
}

declare dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53b_goodB2GSink(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53_good() #0 !dbg !95 {
entry:
  call void @goodG2B(), !dbg !96
  call void @goodB2G(), !dbg !97
  ret void, !dbg !98
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_53a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_705/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_53_bad", scope: !1, file: !1, line: 37, type: !10, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 39, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocation(line: 39, column: 12, scope: !9)
!16 = !DILocalVariable(name: "dataBuffer", scope: !9, file: !1, line: 40, type: !17)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 100)
!20 = !DILocation(line: 40, column: 10, scope: !9)
!21 = !DILocation(line: 41, column: 12, scope: !9)
!22 = !DILocation(line: 41, column: 10, scope: !9)
!23 = !DILocalVariable(name: "dataLen", scope: !24, file: !1, line: 44, type: !25)
!24 = distinct !DILexicalBlock(scope: !9, file: !1, line: 42, column: 5)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !27)
!26 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 44, column: 16, scope: !24)
!29 = !DILocation(line: 44, column: 33, scope: !24)
!30 = !DILocation(line: 44, column: 26, scope: !24)
!31 = !DILocalVariable(name: "environment", scope: !24, file: !1, line: 45, type: !13)
!32 = !DILocation(line: 45, column: 16, scope: !24)
!33 = !DILocation(line: 45, column: 30, scope: !24)
!34 = !DILocation(line: 47, column: 13, scope: !35)
!35 = distinct !DILexicalBlock(scope: !24, file: !1, line: 47, column: 13)
!36 = !DILocation(line: 47, column: 25, scope: !35)
!37 = !DILocation(line: 47, column: 13, scope: !24)
!38 = !DILocation(line: 50, column: 21, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !1, line: 48, column: 9)
!40 = !DILocation(line: 50, column: 26, scope: !39)
!41 = !DILocation(line: 50, column: 25, scope: !39)
!42 = !DILocation(line: 50, column: 35, scope: !39)
!43 = !DILocation(line: 50, column: 52, scope: !39)
!44 = !DILocation(line: 50, column: 51, scope: !39)
!45 = !DILocation(line: 50, column: 59, scope: !39)
!46 = !DILocation(line: 50, column: 13, scope: !39)
!47 = !DILocation(line: 51, column: 9, scope: !39)
!48 = !DILocation(line: 53, column: 77, scope: !9)
!49 = !DILocation(line: 53, column: 5, scope: !9)
!50 = !DILocation(line: 54, column: 1, scope: !9)
!51 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 62, type: !10, scopeLine: 63, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!52 = !DILocalVariable(name: "data", scope: !51, file: !1, line: 64, type: !13)
!53 = !DILocation(line: 64, column: 12, scope: !51)
!54 = !DILocalVariable(name: "dataBuffer", scope: !51, file: !1, line: 65, type: !17)
!55 = !DILocation(line: 65, column: 10, scope: !51)
!56 = !DILocation(line: 66, column: 12, scope: !51)
!57 = !DILocation(line: 66, column: 10, scope: !51)
!58 = !DILocation(line: 68, column: 12, scope: !51)
!59 = !DILocation(line: 68, column: 5, scope: !51)
!60 = !DILocation(line: 69, column: 81, scope: !51)
!61 = !DILocation(line: 69, column: 5, scope: !51)
!62 = !DILocation(line: 70, column: 1, scope: !51)
!63 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 74, type: !10, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!64 = !DILocalVariable(name: "data", scope: !63, file: !1, line: 76, type: !13)
!65 = !DILocation(line: 76, column: 12, scope: !63)
!66 = !DILocalVariable(name: "dataBuffer", scope: !63, file: !1, line: 77, type: !17)
!67 = !DILocation(line: 77, column: 10, scope: !63)
!68 = !DILocation(line: 78, column: 12, scope: !63)
!69 = !DILocation(line: 78, column: 10, scope: !63)
!70 = !DILocalVariable(name: "dataLen", scope: !71, file: !1, line: 81, type: !25)
!71 = distinct !DILexicalBlock(scope: !63, file: !1, line: 79, column: 5)
!72 = !DILocation(line: 81, column: 16, scope: !71)
!73 = !DILocation(line: 81, column: 33, scope: !71)
!74 = !DILocation(line: 81, column: 26, scope: !71)
!75 = !DILocalVariable(name: "environment", scope: !71, file: !1, line: 82, type: !13)
!76 = !DILocation(line: 82, column: 16, scope: !71)
!77 = !DILocation(line: 82, column: 30, scope: !71)
!78 = !DILocation(line: 84, column: 13, scope: !79)
!79 = distinct !DILexicalBlock(scope: !71, file: !1, line: 84, column: 13)
!80 = !DILocation(line: 84, column: 25, scope: !79)
!81 = !DILocation(line: 84, column: 13, scope: !71)
!82 = !DILocation(line: 87, column: 21, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !1, line: 85, column: 9)
!84 = !DILocation(line: 87, column: 26, scope: !83)
!85 = !DILocation(line: 87, column: 25, scope: !83)
!86 = !DILocation(line: 87, column: 35, scope: !83)
!87 = !DILocation(line: 87, column: 52, scope: !83)
!88 = !DILocation(line: 87, column: 51, scope: !83)
!89 = !DILocation(line: 87, column: 59, scope: !83)
!90 = !DILocation(line: 87, column: 13, scope: !83)
!91 = !DILocation(line: 88, column: 9, scope: !83)
!92 = !DILocation(line: 90, column: 81, scope: !63)
!93 = !DILocation(line: 90, column: 5, scope: !63)
!94 = !DILocation(line: 91, column: 1, scope: !63)
!95 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_53_good", scope: !1, file: !1, line: 93, type: !10, scopeLine: 94, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!96 = !DILocation(line: 95, column: 5, scope: !95)
!97 = !DILocation(line: 96, column: 5, scope: !95)
!98 = !DILocation(line: 97, column: 1, scope: !95)
