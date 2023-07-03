; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_16.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_16_bad() #0 !dbg !9 {
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
  br label %while.body, !dbg !23

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !24, metadata !DIExpression()), !dbg !30
  %1 = load i8*, i8** %data, align 8, !dbg !31
  %call = call i64 @strlen(i8* %1) #6, !dbg !32
  store i64 %call, i64* %dataLen, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !33, metadata !DIExpression()), !dbg !34
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !35
  store i8* %call1, i8** %environment, align 8, !dbg !34
  %2 = load i8*, i8** %environment, align 8, !dbg !36
  %cmp = icmp ne i8* %2, null, !dbg !38
  br i1 %cmp, label %if.then, label %if.end, !dbg !39

if.then:                                          ; preds = %while.body
  %3 = load i8*, i8** %data, align 8, !dbg !40
  %4 = load i64, i64* %dataLen, align 8, !dbg !42
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !43
  %5 = load i8*, i8** %environment, align 8, !dbg !44
  %6 = load i64, i64* %dataLen, align 8, !dbg !45
  %sub = sub i64 100, %6, !dbg !46
  %sub2 = sub i64 %sub, 1, !dbg !47
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !48
  br label %if.end, !dbg !49

if.end:                                           ; preds = %if.then, %while.body
  br label %while.end, !dbg !50

while.end:                                        ; preds = %if.end
  br label %while.body4, !dbg !51

while.body4:                                      ; preds = %while.end
  %7 = load i8*, i8** %data, align 8, !dbg !52
  %call5 = call i32 (i8*, ...) @printf(i8* %7), !dbg !54
  br label %while.end6, !dbg !55

while.end6:                                       ; preds = %while.body4
  ret void, !dbg !56
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !57 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !60, metadata !DIExpression()), !dbg !61
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !61
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !62
  store i8* %arraydecay, i8** %data, align 8, !dbg !63
  br label %while.body, !dbg !64

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !65, metadata !DIExpression()), !dbg !68
  %1 = load i8*, i8** %data, align 8, !dbg !69
  %call = call i64 @strlen(i8* %1) #6, !dbg !70
  store i64 %call, i64* %dataLen, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !71, metadata !DIExpression()), !dbg !72
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !73
  store i8* %call1, i8** %environment, align 8, !dbg !72
  %2 = load i8*, i8** %environment, align 8, !dbg !74
  %cmp = icmp ne i8* %2, null, !dbg !76
  br i1 %cmp, label %if.then, label %if.end, !dbg !77

if.then:                                          ; preds = %while.body
  %3 = load i8*, i8** %data, align 8, !dbg !78
  %4 = load i64, i64* %dataLen, align 8, !dbg !80
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !81
  %5 = load i8*, i8** %environment, align 8, !dbg !82
  %6 = load i64, i64* %dataLen, align 8, !dbg !83
  %sub = sub i64 100, %6, !dbg !84
  %sub2 = sub i64 %sub, 1, !dbg !85
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !86
  br label %if.end, !dbg !87

if.end:                                           ; preds = %if.then, %while.body
  br label %while.end, !dbg !88

while.end:                                        ; preds = %if.end
  br label %while.body4, !dbg !89

while.body4:                                      ; preds = %while.end
  %7 = load i8*, i8** %data, align 8, !dbg !90
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %7), !dbg !92
  br label %while.end6, !dbg !93

while.end6:                                       ; preds = %while.body4
  ret void, !dbg !94
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !95 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !98, metadata !DIExpression()), !dbg !99
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !99
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !99
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !100
  store i8* %arraydecay, i8** %data, align 8, !dbg !101
  br label %while.body, !dbg !102

while.body:                                       ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !103
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !105
  br label %while.end, !dbg !106

while.end:                                        ; preds = %while.body
  br label %while.body1, !dbg !107

while.body1:                                      ; preds = %while.end
  %2 = load i8*, i8** %data, align 8, !dbg !108
  %call2 = call i32 (i8*, ...) @printf(i8* %2), !dbg !110
  br label %while.end3, !dbg !111

while.end3:                                       ; preds = %while.body1
  ret void, !dbg !112
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_16_good() #0 !dbg !113 {
entry:
  call void @goodB2G(), !dbg !114
  call void @goodG2B(), !dbg !115
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_16.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_737/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_16_bad", scope: !1, file: !1, line: 35, type: !10, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 37, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocation(line: 37, column: 12, scope: !9)
!16 = !DILocalVariable(name: "dataBuffer", scope: !9, file: !1, line: 38, type: !17)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 100)
!20 = !DILocation(line: 38, column: 10, scope: !9)
!21 = !DILocation(line: 39, column: 12, scope: !9)
!22 = !DILocation(line: 39, column: 10, scope: !9)
!23 = !DILocation(line: 40, column: 5, scope: !9)
!24 = !DILocalVariable(name: "dataLen", scope: !25, file: !1, line: 44, type: !27)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 42, column: 9)
!26 = distinct !DILexicalBlock(scope: !9, file: !1, line: 41, column: 5)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 46, baseType: !29)
!28 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DILocation(line: 44, column: 20, scope: !25)
!31 = !DILocation(line: 44, column: 37, scope: !25)
!32 = !DILocation(line: 44, column: 30, scope: !25)
!33 = !DILocalVariable(name: "environment", scope: !25, file: !1, line: 45, type: !13)
!34 = !DILocation(line: 45, column: 20, scope: !25)
!35 = !DILocation(line: 45, column: 34, scope: !25)
!36 = !DILocation(line: 47, column: 17, scope: !37)
!37 = distinct !DILexicalBlock(scope: !25, file: !1, line: 47, column: 17)
!38 = !DILocation(line: 47, column: 29, scope: !37)
!39 = !DILocation(line: 47, column: 17, scope: !25)
!40 = !DILocation(line: 50, column: 25, scope: !41)
!41 = distinct !DILexicalBlock(scope: !37, file: !1, line: 48, column: 13)
!42 = !DILocation(line: 50, column: 30, scope: !41)
!43 = !DILocation(line: 50, column: 29, scope: !41)
!44 = !DILocation(line: 50, column: 39, scope: !41)
!45 = !DILocation(line: 50, column: 56, scope: !41)
!46 = !DILocation(line: 50, column: 55, scope: !41)
!47 = !DILocation(line: 50, column: 63, scope: !41)
!48 = !DILocation(line: 50, column: 17, scope: !41)
!49 = !DILocation(line: 51, column: 13, scope: !41)
!50 = !DILocation(line: 53, column: 9, scope: !26)
!51 = !DILocation(line: 55, column: 5, scope: !9)
!52 = !DILocation(line: 58, column: 16, scope: !53)
!53 = distinct !DILexicalBlock(scope: !9, file: !1, line: 56, column: 5)
!54 = !DILocation(line: 58, column: 9, scope: !53)
!55 = !DILocation(line: 59, column: 9, scope: !53)
!56 = !DILocation(line: 61, column: 1, scope: !9)
!57 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 68, type: !10, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!58 = !DILocalVariable(name: "data", scope: !57, file: !1, line: 70, type: !13)
!59 = !DILocation(line: 70, column: 12, scope: !57)
!60 = !DILocalVariable(name: "dataBuffer", scope: !57, file: !1, line: 71, type: !17)
!61 = !DILocation(line: 71, column: 10, scope: !57)
!62 = !DILocation(line: 72, column: 12, scope: !57)
!63 = !DILocation(line: 72, column: 10, scope: !57)
!64 = !DILocation(line: 73, column: 5, scope: !57)
!65 = !DILocalVariable(name: "dataLen", scope: !66, file: !1, line: 77, type: !27)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 75, column: 9)
!67 = distinct !DILexicalBlock(scope: !57, file: !1, line: 74, column: 5)
!68 = !DILocation(line: 77, column: 20, scope: !66)
!69 = !DILocation(line: 77, column: 37, scope: !66)
!70 = !DILocation(line: 77, column: 30, scope: !66)
!71 = !DILocalVariable(name: "environment", scope: !66, file: !1, line: 78, type: !13)
!72 = !DILocation(line: 78, column: 20, scope: !66)
!73 = !DILocation(line: 78, column: 34, scope: !66)
!74 = !DILocation(line: 80, column: 17, scope: !75)
!75 = distinct !DILexicalBlock(scope: !66, file: !1, line: 80, column: 17)
!76 = !DILocation(line: 80, column: 29, scope: !75)
!77 = !DILocation(line: 80, column: 17, scope: !66)
!78 = !DILocation(line: 83, column: 25, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !1, line: 81, column: 13)
!80 = !DILocation(line: 83, column: 30, scope: !79)
!81 = !DILocation(line: 83, column: 29, scope: !79)
!82 = !DILocation(line: 83, column: 39, scope: !79)
!83 = !DILocation(line: 83, column: 56, scope: !79)
!84 = !DILocation(line: 83, column: 55, scope: !79)
!85 = !DILocation(line: 83, column: 63, scope: !79)
!86 = !DILocation(line: 83, column: 17, scope: !79)
!87 = !DILocation(line: 84, column: 13, scope: !79)
!88 = !DILocation(line: 86, column: 9, scope: !67)
!89 = !DILocation(line: 88, column: 5, scope: !57)
!90 = !DILocation(line: 91, column: 24, scope: !91)
!91 = distinct !DILexicalBlock(scope: !57, file: !1, line: 89, column: 5)
!92 = !DILocation(line: 91, column: 9, scope: !91)
!93 = !DILocation(line: 92, column: 9, scope: !91)
!94 = !DILocation(line: 94, column: 1, scope: !57)
!95 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 97, type: !10, scopeLine: 98, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!96 = !DILocalVariable(name: "data", scope: !95, file: !1, line: 99, type: !13)
!97 = !DILocation(line: 99, column: 12, scope: !95)
!98 = !DILocalVariable(name: "dataBuffer", scope: !95, file: !1, line: 100, type: !17)
!99 = !DILocation(line: 100, column: 10, scope: !95)
!100 = !DILocation(line: 101, column: 12, scope: !95)
!101 = !DILocation(line: 101, column: 10, scope: !95)
!102 = !DILocation(line: 102, column: 5, scope: !95)
!103 = !DILocation(line: 105, column: 16, scope: !104)
!104 = distinct !DILexicalBlock(scope: !95, file: !1, line: 103, column: 5)
!105 = !DILocation(line: 105, column: 9, scope: !104)
!106 = !DILocation(line: 106, column: 9, scope: !104)
!107 = !DILocation(line: 108, column: 5, scope: !95)
!108 = !DILocation(line: 111, column: 16, scope: !109)
!109 = distinct !DILexicalBlock(scope: !95, file: !1, line: 109, column: 5)
!110 = !DILocation(line: 111, column: 9, scope: !109)
!111 = !DILocation(line: 112, column: 9, scope: !109)
!112 = !DILocation(line: 114, column: 1, scope: !95)
!113 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_16_good", scope: !1, file: !1, line: 116, type: !10, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!114 = !DILocation(line: 118, column: 5, scope: !113)
!115 = !DILocation(line: 119, column: 5, scope: !113)
!116 = !DILocation(line: 120, column: 1, scope: !113)
