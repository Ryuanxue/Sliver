; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_15.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_15_bad() #0 !dbg !9 {
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
  %call4 = call i32 (i8*, ...) @printf(i8* %7), !dbg !49
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

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !51 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !54, metadata !DIExpression()), !dbg !55
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !55
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !55
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !56
  store i8* %arraydecay, i8** %data, align 8, !dbg !57
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !58, metadata !DIExpression()), !dbg !60
  %1 = load i8*, i8** %data, align 8, !dbg !61
  %call = call i64 @strlen(i8* %1) #6, !dbg !62
  store i64 %call, i64* %dataLen, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !63, metadata !DIExpression()), !dbg !64
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !65
  store i8* %call1, i8** %environment, align 8, !dbg !64
  %2 = load i8*, i8** %environment, align 8, !dbg !66
  %cmp = icmp ne i8* %2, null, !dbg !68
  br i1 %cmp, label %if.then, label %if.end, !dbg !69

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !70
  %4 = load i64, i64* %dataLen, align 8, !dbg !72
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !73
  %5 = load i8*, i8** %environment, align 8, !dbg !74
  %6 = load i64, i64* %dataLen, align 8, !dbg !75
  %sub = sub i64 100, %6, !dbg !76
  %sub2 = sub i64 %sub, 1, !dbg !77
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !78
  br label %if.end, !dbg !79

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !80
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %7), !dbg !81
  ret void, !dbg !82
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !83 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !86, metadata !DIExpression()), !dbg !87
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !87
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !87
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !88
  store i8* %arraydecay, i8** %data, align 8, !dbg !89
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !90, metadata !DIExpression()), !dbg !92
  %1 = load i8*, i8** %data, align 8, !dbg !93
  %call = call i64 @strlen(i8* %1) #6, !dbg !94
  store i64 %call, i64* %dataLen, align 8, !dbg !92
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !95, metadata !DIExpression()), !dbg !96
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !97
  store i8* %call1, i8** %environment, align 8, !dbg !96
  %2 = load i8*, i8** %environment, align 8, !dbg !98
  %cmp = icmp ne i8* %2, null, !dbg !100
  br i1 %cmp, label %if.then, label %if.end, !dbg !101

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !102
  %4 = load i64, i64* %dataLen, align 8, !dbg !104
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !105
  %5 = load i8*, i8** %environment, align 8, !dbg !106
  %6 = load i64, i64* %dataLen, align 8, !dbg !107
  %sub = sub i64 100, %6, !dbg !108
  %sub2 = sub i64 %sub, 1, !dbg !109
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !110
  br label %if.end, !dbg !111

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !112
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %7), !dbg !113
  ret void, !dbg !114
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !115 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !118, metadata !DIExpression()), !dbg !119
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !119
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !119
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !120
  store i8* %arraydecay, i8** %data, align 8, !dbg !121
  %1 = load i8*, i8** %data, align 8, !dbg !122
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !123
  %2 = load i8*, i8** %data, align 8, !dbg !124
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !125
  ret void, !dbg !126
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !127 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !130, metadata !DIExpression()), !dbg !131
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !131
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !131
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !132
  store i8* %arraydecay, i8** %data, align 8, !dbg !133
  %1 = load i8*, i8** %data, align 8, !dbg !134
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !135
  %2 = load i8*, i8** %data, align 8, !dbg !136
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !137
  ret void, !dbg !138
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_15_good() #0 !dbg !139 {
entry:
  call void @goodB2G1(), !dbg !140
  call void @goodB2G2(), !dbg !141
  call void @goodG2B1(), !dbg !142
  call void @goodG2B2(), !dbg !143
  ret void, !dbg !144
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_15.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_736/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_15_bad", scope: !1, file: !1, line: 35, type: !10, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!23 = !DILocalVariable(name: "dataLen", scope: !24, file: !1, line: 45, type: !25)
!24 = distinct !DILexicalBlock(scope: !9, file: !1, line: 43, column: 5)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !27)
!26 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 45, column: 16, scope: !24)
!29 = !DILocation(line: 45, column: 33, scope: !24)
!30 = !DILocation(line: 45, column: 26, scope: !24)
!31 = !DILocalVariable(name: "environment", scope: !24, file: !1, line: 46, type: !13)
!32 = !DILocation(line: 46, column: 16, scope: !24)
!33 = !DILocation(line: 46, column: 30, scope: !24)
!34 = !DILocation(line: 48, column: 13, scope: !35)
!35 = distinct !DILexicalBlock(scope: !24, file: !1, line: 48, column: 13)
!36 = !DILocation(line: 48, column: 25, scope: !35)
!37 = !DILocation(line: 48, column: 13, scope: !24)
!38 = !DILocation(line: 51, column: 21, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !1, line: 49, column: 9)
!40 = !DILocation(line: 51, column: 26, scope: !39)
!41 = !DILocation(line: 51, column: 25, scope: !39)
!42 = !DILocation(line: 51, column: 35, scope: !39)
!43 = !DILocation(line: 51, column: 52, scope: !39)
!44 = !DILocation(line: 51, column: 51, scope: !39)
!45 = !DILocation(line: 51, column: 59, scope: !39)
!46 = !DILocation(line: 51, column: 13, scope: !39)
!47 = !DILocation(line: 52, column: 9, scope: !39)
!48 = !DILocation(line: 64, column: 16, scope: !9)
!49 = !DILocation(line: 64, column: 9, scope: !9)
!50 = !DILocation(line: 71, column: 1, scope: !9)
!51 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 78, type: !10, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!52 = !DILocalVariable(name: "data", scope: !51, file: !1, line: 80, type: !13)
!53 = !DILocation(line: 80, column: 12, scope: !51)
!54 = !DILocalVariable(name: "dataBuffer", scope: !51, file: !1, line: 81, type: !17)
!55 = !DILocation(line: 81, column: 10, scope: !51)
!56 = !DILocation(line: 82, column: 12, scope: !51)
!57 = !DILocation(line: 82, column: 10, scope: !51)
!58 = !DILocalVariable(name: "dataLen", scope: !59, file: !1, line: 88, type: !25)
!59 = distinct !DILexicalBlock(scope: !51, file: !1, line: 86, column: 5)
!60 = !DILocation(line: 88, column: 16, scope: !59)
!61 = !DILocation(line: 88, column: 33, scope: !59)
!62 = !DILocation(line: 88, column: 26, scope: !59)
!63 = !DILocalVariable(name: "environment", scope: !59, file: !1, line: 89, type: !13)
!64 = !DILocation(line: 89, column: 16, scope: !59)
!65 = !DILocation(line: 89, column: 30, scope: !59)
!66 = !DILocation(line: 91, column: 13, scope: !67)
!67 = distinct !DILexicalBlock(scope: !59, file: !1, line: 91, column: 13)
!68 = !DILocation(line: 91, column: 25, scope: !67)
!69 = !DILocation(line: 91, column: 13, scope: !59)
!70 = !DILocation(line: 94, column: 21, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 92, column: 9)
!72 = !DILocation(line: 94, column: 26, scope: !71)
!73 = !DILocation(line: 94, column: 25, scope: !71)
!74 = !DILocation(line: 94, column: 35, scope: !71)
!75 = !DILocation(line: 94, column: 52, scope: !71)
!76 = !DILocation(line: 94, column: 51, scope: !71)
!77 = !DILocation(line: 94, column: 59, scope: !71)
!78 = !DILocation(line: 94, column: 13, scope: !71)
!79 = !DILocation(line: 95, column: 9, scope: !71)
!80 = !DILocation(line: 111, column: 24, scope: !51)
!81 = !DILocation(line: 111, column: 9, scope: !51)
!82 = !DILocation(line: 114, column: 1, scope: !51)
!83 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 117, type: !10, scopeLine: 118, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!84 = !DILocalVariable(name: "data", scope: !83, file: !1, line: 119, type: !13)
!85 = !DILocation(line: 119, column: 12, scope: !83)
!86 = !DILocalVariable(name: "dataBuffer", scope: !83, file: !1, line: 120, type: !17)
!87 = !DILocation(line: 120, column: 10, scope: !83)
!88 = !DILocation(line: 121, column: 12, scope: !83)
!89 = !DILocation(line: 121, column: 10, scope: !83)
!90 = !DILocalVariable(name: "dataLen", scope: !91, file: !1, line: 127, type: !25)
!91 = distinct !DILexicalBlock(scope: !83, file: !1, line: 125, column: 5)
!92 = !DILocation(line: 127, column: 16, scope: !91)
!93 = !DILocation(line: 127, column: 33, scope: !91)
!94 = !DILocation(line: 127, column: 26, scope: !91)
!95 = !DILocalVariable(name: "environment", scope: !91, file: !1, line: 128, type: !13)
!96 = !DILocation(line: 128, column: 16, scope: !91)
!97 = !DILocation(line: 128, column: 30, scope: !91)
!98 = !DILocation(line: 130, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !91, file: !1, line: 130, column: 13)
!100 = !DILocation(line: 130, column: 25, scope: !99)
!101 = !DILocation(line: 130, column: 13, scope: !91)
!102 = !DILocation(line: 133, column: 21, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !1, line: 131, column: 9)
!104 = !DILocation(line: 133, column: 26, scope: !103)
!105 = !DILocation(line: 133, column: 25, scope: !103)
!106 = !DILocation(line: 133, column: 35, scope: !103)
!107 = !DILocation(line: 133, column: 52, scope: !103)
!108 = !DILocation(line: 133, column: 51, scope: !103)
!109 = !DILocation(line: 133, column: 59, scope: !103)
!110 = !DILocation(line: 133, column: 13, scope: !103)
!111 = !DILocation(line: 134, column: 9, scope: !103)
!112 = !DILocation(line: 146, column: 24, scope: !83)
!113 = !DILocation(line: 146, column: 9, scope: !83)
!114 = !DILocation(line: 153, column: 1, scope: !83)
!115 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 156, type: !10, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!116 = !DILocalVariable(name: "data", scope: !115, file: !1, line: 158, type: !13)
!117 = !DILocation(line: 158, column: 12, scope: !115)
!118 = !DILocalVariable(name: "dataBuffer", scope: !115, file: !1, line: 159, type: !17)
!119 = !DILocation(line: 159, column: 10, scope: !115)
!120 = !DILocation(line: 160, column: 12, scope: !115)
!121 = !DILocation(line: 160, column: 10, scope: !115)
!122 = !DILocation(line: 169, column: 16, scope: !115)
!123 = !DILocation(line: 169, column: 9, scope: !115)
!124 = !DILocation(line: 176, column: 16, scope: !115)
!125 = !DILocation(line: 176, column: 9, scope: !115)
!126 = !DILocation(line: 183, column: 1, scope: !115)
!127 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 186, type: !10, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!128 = !DILocalVariable(name: "data", scope: !127, file: !1, line: 188, type: !13)
!129 = !DILocation(line: 188, column: 12, scope: !127)
!130 = !DILocalVariable(name: "dataBuffer", scope: !127, file: !1, line: 189, type: !17)
!131 = !DILocation(line: 189, column: 10, scope: !127)
!132 = !DILocation(line: 190, column: 12, scope: !127)
!133 = !DILocation(line: 190, column: 10, scope: !127)
!134 = !DILocation(line: 195, column: 16, scope: !127)
!135 = !DILocation(line: 195, column: 9, scope: !127)
!136 = !DILocation(line: 206, column: 16, scope: !127)
!137 = !DILocation(line: 206, column: 9, scope: !127)
!138 = !DILocation(line: 213, column: 1, scope: !127)
!139 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_15_good", scope: !1, file: !1, line: 215, type: !10, scopeLine: 216, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!140 = !DILocation(line: 217, column: 5, scope: !139)
!141 = !DILocation(line: 218, column: 5, scope: !139)
!142 = !DILocation(line: 219, column: 5, scope: !139)
!143 = !DILocation(line: 220, column: 5, scope: !139)
!144 = !DILocation(line: 221, column: 1, scope: !139)
