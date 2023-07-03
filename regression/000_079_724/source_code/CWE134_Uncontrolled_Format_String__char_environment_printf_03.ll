; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_03.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_03.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_03_bad() #0 !dbg !9 {
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
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !23, metadata !DIExpression()), !dbg !30
  %1 = load i8*, i8** %data, align 8, !dbg !31
  %call = call i64 @strlen(i8* %1) #6, !dbg !32
  store i64 %call, i64* %dataLen, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !33, metadata !DIExpression()), !dbg !34
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !35
  store i8* %call1, i8** %environment, align 8, !dbg !34
  %2 = load i8*, i8** %environment, align 8, !dbg !36
  %cmp = icmp ne i8* %2, null, !dbg !38
  br i1 %cmp, label %if.then, label %if.end, !dbg !39

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !40
  %4 = load i64, i64* %dataLen, align 8, !dbg !42
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !43
  %5 = load i8*, i8** %environment, align 8, !dbg !44
  %6 = load i64, i64* %dataLen, align 8, !dbg !45
  %sub = sub i64 100, %6, !dbg !46
  %sub2 = sub i64 %sub, 1, !dbg !47
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !48
  br label %if.end, !dbg !49

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !50
  %call4 = call i32 (i8*, ...) @printf(i8* %7), !dbg !53
  ret void, !dbg !54
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
define dso_local void @goodB2G1() #0 !dbg !55 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !58, metadata !DIExpression()), !dbg !59
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !59
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !59
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !60
  store i8* %arraydecay, i8** %data, align 8, !dbg !61
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !62, metadata !DIExpression()), !dbg !66
  %1 = load i8*, i8** %data, align 8, !dbg !67
  %call = call i64 @strlen(i8* %1) #6, !dbg !68
  store i64 %call, i64* %dataLen, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !69, metadata !DIExpression()), !dbg !70
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !71
  store i8* %call1, i8** %environment, align 8, !dbg !70
  %2 = load i8*, i8** %environment, align 8, !dbg !72
  %cmp = icmp ne i8* %2, null, !dbg !74
  br i1 %cmp, label %if.then, label %if.end, !dbg !75

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !76
  %4 = load i64, i64* %dataLen, align 8, !dbg !78
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !79
  %5 = load i8*, i8** %environment, align 8, !dbg !80
  %6 = load i64, i64* %dataLen, align 8, !dbg !81
  %sub = sub i64 100, %6, !dbg !82
  %sub2 = sub i64 %sub, 1, !dbg !83
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !84
  br label %if.end, !dbg !85

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !86
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %7), !dbg !89
  ret void, !dbg !90
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !91 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !94, metadata !DIExpression()), !dbg !95
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !95
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !95
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !96
  store i8* %arraydecay, i8** %data, align 8, !dbg !97
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !98, metadata !DIExpression()), !dbg !102
  %1 = load i8*, i8** %data, align 8, !dbg !103
  %call = call i64 @strlen(i8* %1) #6, !dbg !104
  store i64 %call, i64* %dataLen, align 8, !dbg !102
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !105, metadata !DIExpression()), !dbg !106
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !107
  store i8* %call1, i8** %environment, align 8, !dbg !106
  %2 = load i8*, i8** %environment, align 8, !dbg !108
  %cmp = icmp ne i8* %2, null, !dbg !110
  br i1 %cmp, label %if.then, label %if.end, !dbg !111

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !112
  %4 = load i64, i64* %dataLen, align 8, !dbg !114
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !115
  %5 = load i8*, i8** %environment, align 8, !dbg !116
  %6 = load i64, i64* %dataLen, align 8, !dbg !117
  %sub = sub i64 100, %6, !dbg !118
  %sub2 = sub i64 %sub, 1, !dbg !119
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !120
  br label %if.end, !dbg !121

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !122
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %7), !dbg !125
  ret void, !dbg !126
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !127 {
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
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !137
  %2 = load i8*, i8** %data, align 8, !dbg !138
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !141
  ret void, !dbg !142
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !143 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !146, metadata !DIExpression()), !dbg !147
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !147
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !147
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !148
  store i8* %arraydecay, i8** %data, align 8, !dbg !149
  %1 = load i8*, i8** %data, align 8, !dbg !150
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !153
  %2 = load i8*, i8** %data, align 8, !dbg !154
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !157
  ret void, !dbg !158
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_03_good() #0 !dbg !159 {
entry:
  call void @goodB2G1(), !dbg !160
  call void @goodB2G2(), !dbg !161
  call void @goodG2B1(), !dbg !162
  call void @goodG2B2(), !dbg !163
  ret void, !dbg !164
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_03.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_724/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_03_bad", scope: !1, file: !1, line: 35, type: !10, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!23 = !DILocalVariable(name: "dataLen", scope: !24, file: !1, line: 44, type: !27)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 42, column: 9)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 41, column: 5)
!26 = distinct !DILexicalBlock(scope: !9, file: !1, line: 40, column: 8)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 46, baseType: !29)
!28 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DILocation(line: 44, column: 20, scope: !24)
!31 = !DILocation(line: 44, column: 37, scope: !24)
!32 = !DILocation(line: 44, column: 30, scope: !24)
!33 = !DILocalVariable(name: "environment", scope: !24, file: !1, line: 45, type: !13)
!34 = !DILocation(line: 45, column: 20, scope: !24)
!35 = !DILocation(line: 45, column: 34, scope: !24)
!36 = !DILocation(line: 47, column: 17, scope: !37)
!37 = distinct !DILexicalBlock(scope: !24, file: !1, line: 47, column: 17)
!38 = !DILocation(line: 47, column: 29, scope: !37)
!39 = !DILocation(line: 47, column: 17, scope: !24)
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
!50 = !DILocation(line: 57, column: 16, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 55, column: 5)
!52 = distinct !DILexicalBlock(scope: !9, file: !1, line: 54, column: 8)
!53 = !DILocation(line: 57, column: 9, scope: !51)
!54 = !DILocation(line: 59, column: 1, scope: !9)
!55 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 66, type: !10, scopeLine: 67, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!56 = !DILocalVariable(name: "data", scope: !55, file: !1, line: 68, type: !13)
!57 = !DILocation(line: 68, column: 12, scope: !55)
!58 = !DILocalVariable(name: "dataBuffer", scope: !55, file: !1, line: 69, type: !17)
!59 = !DILocation(line: 69, column: 10, scope: !55)
!60 = !DILocation(line: 70, column: 12, scope: !55)
!61 = !DILocation(line: 70, column: 10, scope: !55)
!62 = !DILocalVariable(name: "dataLen", scope: !63, file: !1, line: 75, type: !27)
!63 = distinct !DILexicalBlock(scope: !64, file: !1, line: 73, column: 9)
!64 = distinct !DILexicalBlock(scope: !65, file: !1, line: 72, column: 5)
!65 = distinct !DILexicalBlock(scope: !55, file: !1, line: 71, column: 8)
!66 = !DILocation(line: 75, column: 20, scope: !63)
!67 = !DILocation(line: 75, column: 37, scope: !63)
!68 = !DILocation(line: 75, column: 30, scope: !63)
!69 = !DILocalVariable(name: "environment", scope: !63, file: !1, line: 76, type: !13)
!70 = !DILocation(line: 76, column: 20, scope: !63)
!71 = !DILocation(line: 76, column: 34, scope: !63)
!72 = !DILocation(line: 78, column: 17, scope: !73)
!73 = distinct !DILexicalBlock(scope: !63, file: !1, line: 78, column: 17)
!74 = !DILocation(line: 78, column: 29, scope: !73)
!75 = !DILocation(line: 78, column: 17, scope: !63)
!76 = !DILocation(line: 81, column: 25, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 79, column: 13)
!78 = !DILocation(line: 81, column: 30, scope: !77)
!79 = !DILocation(line: 81, column: 29, scope: !77)
!80 = !DILocation(line: 81, column: 39, scope: !77)
!81 = !DILocation(line: 81, column: 56, scope: !77)
!82 = !DILocation(line: 81, column: 55, scope: !77)
!83 = !DILocation(line: 81, column: 63, scope: !77)
!84 = !DILocation(line: 81, column: 17, scope: !77)
!85 = !DILocation(line: 82, column: 13, scope: !77)
!86 = !DILocation(line: 93, column: 24, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !1, line: 91, column: 5)
!88 = distinct !DILexicalBlock(scope: !55, file: !1, line: 85, column: 8)
!89 = !DILocation(line: 93, column: 9, scope: !87)
!90 = !DILocation(line: 95, column: 1, scope: !55)
!91 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 98, type: !10, scopeLine: 99, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!92 = !DILocalVariable(name: "data", scope: !91, file: !1, line: 100, type: !13)
!93 = !DILocation(line: 100, column: 12, scope: !91)
!94 = !DILocalVariable(name: "dataBuffer", scope: !91, file: !1, line: 101, type: !17)
!95 = !DILocation(line: 101, column: 10, scope: !91)
!96 = !DILocation(line: 102, column: 12, scope: !91)
!97 = !DILocation(line: 102, column: 10, scope: !91)
!98 = !DILocalVariable(name: "dataLen", scope: !99, file: !1, line: 107, type: !27)
!99 = distinct !DILexicalBlock(scope: !100, file: !1, line: 105, column: 9)
!100 = distinct !DILexicalBlock(scope: !101, file: !1, line: 104, column: 5)
!101 = distinct !DILexicalBlock(scope: !91, file: !1, line: 103, column: 8)
!102 = !DILocation(line: 107, column: 20, scope: !99)
!103 = !DILocation(line: 107, column: 37, scope: !99)
!104 = !DILocation(line: 107, column: 30, scope: !99)
!105 = !DILocalVariable(name: "environment", scope: !99, file: !1, line: 108, type: !13)
!106 = !DILocation(line: 108, column: 20, scope: !99)
!107 = !DILocation(line: 108, column: 34, scope: !99)
!108 = !DILocation(line: 110, column: 17, scope: !109)
!109 = distinct !DILexicalBlock(scope: !99, file: !1, line: 110, column: 17)
!110 = !DILocation(line: 110, column: 29, scope: !109)
!111 = !DILocation(line: 110, column: 17, scope: !99)
!112 = !DILocation(line: 113, column: 25, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !1, line: 111, column: 13)
!114 = !DILocation(line: 113, column: 30, scope: !113)
!115 = !DILocation(line: 113, column: 29, scope: !113)
!116 = !DILocation(line: 113, column: 39, scope: !113)
!117 = !DILocation(line: 113, column: 56, scope: !113)
!118 = !DILocation(line: 113, column: 55, scope: !113)
!119 = !DILocation(line: 113, column: 63, scope: !113)
!120 = !DILocation(line: 113, column: 17, scope: !113)
!121 = !DILocation(line: 114, column: 13, scope: !113)
!122 = !DILocation(line: 120, column: 24, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !1, line: 118, column: 5)
!124 = distinct !DILexicalBlock(scope: !91, file: !1, line: 117, column: 8)
!125 = !DILocation(line: 120, column: 9, scope: !123)
!126 = !DILocation(line: 122, column: 1, scope: !91)
!127 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 125, type: !10, scopeLine: 126, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!128 = !DILocalVariable(name: "data", scope: !127, file: !1, line: 127, type: !13)
!129 = !DILocation(line: 127, column: 12, scope: !127)
!130 = !DILocalVariable(name: "dataBuffer", scope: !127, file: !1, line: 128, type: !17)
!131 = !DILocation(line: 128, column: 10, scope: !127)
!132 = !DILocation(line: 129, column: 12, scope: !127)
!133 = !DILocation(line: 129, column: 10, scope: !127)
!134 = !DILocation(line: 138, column: 16, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !1, line: 136, column: 5)
!136 = distinct !DILexicalBlock(scope: !127, file: !1, line: 130, column: 8)
!137 = !DILocation(line: 138, column: 9, scope: !135)
!138 = !DILocation(line: 143, column: 16, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !1, line: 141, column: 5)
!140 = distinct !DILexicalBlock(scope: !127, file: !1, line: 140, column: 8)
!141 = !DILocation(line: 143, column: 9, scope: !139)
!142 = !DILocation(line: 145, column: 1, scope: !127)
!143 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 148, type: !10, scopeLine: 149, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!144 = !DILocalVariable(name: "data", scope: !143, file: !1, line: 150, type: !13)
!145 = !DILocation(line: 150, column: 12, scope: !143)
!146 = !DILocalVariable(name: "dataBuffer", scope: !143, file: !1, line: 151, type: !17)
!147 = !DILocation(line: 151, column: 10, scope: !143)
!148 = !DILocation(line: 152, column: 12, scope: !143)
!149 = !DILocation(line: 152, column: 10, scope: !143)
!150 = !DILocation(line: 156, column: 16, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !1, line: 154, column: 5)
!152 = distinct !DILexicalBlock(scope: !143, file: !1, line: 153, column: 8)
!153 = !DILocation(line: 156, column: 9, scope: !151)
!154 = !DILocation(line: 161, column: 16, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 159, column: 5)
!156 = distinct !DILexicalBlock(scope: !143, file: !1, line: 158, column: 8)
!157 = !DILocation(line: 161, column: 9, scope: !155)
!158 = !DILocation(line: 163, column: 1, scope: !143)
!159 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_03_good", scope: !1, file: !1, line: 165, type: !10, scopeLine: 166, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!160 = !DILocation(line: 167, column: 5, scope: !159)
!161 = !DILocation(line: 168, column: 5, scope: !159)
!162 = !DILocation(line: 169, column: 5, scope: !159)
!163 = !DILocation(line: 170, column: 5, scope: !159)
!164 = !DILocation(line: 171, column: 1, scope: !159)
