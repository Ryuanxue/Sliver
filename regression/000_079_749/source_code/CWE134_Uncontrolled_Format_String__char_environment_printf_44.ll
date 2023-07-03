; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_44.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_44.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink(i8* %data) #0 !dbg !9 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !14, metadata !DIExpression()), !dbg !15
  %0 = load i8*, i8** %data.addr, align 8, !dbg !16
  %call = call i32 (i8*, ...) @printf(i8* %0), !dbg !17
  ret void, !dbg !18
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_44_bad() #0 !dbg !19 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !24, metadata !DIExpression()), !dbg !26
  store void (i8*)* @badSink, void (i8*)** %funcPtr, align 8, !dbg !26
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !27, metadata !DIExpression()), !dbg !31
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !31
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !31
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !32
  store i8* %arraydecay, i8** %data, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !34, metadata !DIExpression()), !dbg !39
  %1 = load i8*, i8** %data, align 8, !dbg !40
  %call = call i64 @strlen(i8* %1) #6, !dbg !41
  store i64 %call, i64* %dataLen, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !42, metadata !DIExpression()), !dbg !43
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !44
  store i8* %call1, i8** %environment, align 8, !dbg !43
  %2 = load i8*, i8** %environment, align 8, !dbg !45
  %cmp = icmp ne i8* %2, null, !dbg !47
  br i1 %cmp, label %if.then, label %if.end, !dbg !48

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !49
  %4 = load i64, i64* %dataLen, align 8, !dbg !51
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !52
  %5 = load i8*, i8** %environment, align 8, !dbg !53
  %6 = load i64, i64* %dataLen, align 8, !dbg !54
  %sub = sub i64 100, %6, !dbg !55
  %sub2 = sub i64 %sub, 1, !dbg !56
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !57
  br label %if.end, !dbg !58

if.end:                                           ; preds = %if.then, %entry
  %7 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !59
  %8 = load i8*, i8** %data, align 8, !dbg !60
  call void %7(i8* %8), !dbg !59
  ret void, !dbg !61
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !62 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !63, metadata !DIExpression()), !dbg !64
  %0 = load i8*, i8** %data.addr, align 8, !dbg !65
  %call = call i32 (i8*, ...) @printf(i8* %0), !dbg !66
  ret void, !dbg !67
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !68 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !71, metadata !DIExpression()), !dbg !72
  store void (i8*)* @goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !73, metadata !DIExpression()), !dbg !74
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !74
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !74
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !75
  store i8* %arraydecay, i8** %data, align 8, !dbg !76
  %1 = load i8*, i8** %data, align 8, !dbg !77
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !78
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !79
  %3 = load i8*, i8** %data, align 8, !dbg !80
  call void %2(i8* %3), !dbg !79
  ret void, !dbg !81
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !82 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !83, metadata !DIExpression()), !dbg !84
  %0 = load i8*, i8** %data.addr, align 8, !dbg !85
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %0), !dbg !86
  ret void, !dbg !87
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !88 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !91, metadata !DIExpression()), !dbg !92
  store void (i8*)* @goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !92
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !93, metadata !DIExpression()), !dbg !94
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !94
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !94
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !95
  store i8* %arraydecay, i8** %data, align 8, !dbg !96
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !97, metadata !DIExpression()), !dbg !99
  %1 = load i8*, i8** %data, align 8, !dbg !100
  %call = call i64 @strlen(i8* %1) #6, !dbg !101
  store i64 %call, i64* %dataLen, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !102, metadata !DIExpression()), !dbg !103
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !104
  store i8* %call1, i8** %environment, align 8, !dbg !103
  %2 = load i8*, i8** %environment, align 8, !dbg !105
  %cmp = icmp ne i8* %2, null, !dbg !107
  br i1 %cmp, label %if.then, label %if.end, !dbg !108

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !109
  %4 = load i64, i64* %dataLen, align 8, !dbg !111
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !112
  %5 = load i8*, i8** %environment, align 8, !dbg !113
  %6 = load i64, i64* %dataLen, align 8, !dbg !114
  %sub = sub i64 100, %6, !dbg !115
  %sub2 = sub i64 %sub, 1, !dbg !116
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !117
  br label %if.end, !dbg !118

if.end:                                           ; preds = %if.then, %entry
  %7 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !119
  %8 = load i8*, i8** %data, align 8, !dbg !120
  call void %7(i8* %8), !dbg !119
  ret void, !dbg !121
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_44_good() #0 !dbg !122 {
entry:
  call void @goodG2B(), !dbg !123
  call void @goodB2G(), !dbg !124
  ret void, !dbg !125
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_44.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_749/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "badSink", scope: !1, file: !1, line: 35, type: !10, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "data", arg: 1, scope: !9, file: !1, line: 35, type: !12)
!15 = !DILocation(line: 35, column: 21, scope: !9)
!16 = !DILocation(line: 38, column: 12, scope: !9)
!17 = !DILocation(line: 38, column: 5, scope: !9)
!18 = !DILocation(line: 39, column: 1, scope: !9)
!19 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_44_bad", scope: !1, file: !1, line: 41, type: !20, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!20 = !DISubroutineType(types: !21)
!21 = !{null}
!22 = !DILocalVariable(name: "data", scope: !19, file: !1, line: 43, type: !12)
!23 = !DILocation(line: 43, column: 12, scope: !19)
!24 = !DILocalVariable(name: "funcPtr", scope: !19, file: !1, line: 45, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!26 = !DILocation(line: 45, column: 12, scope: !19)
!27 = !DILocalVariable(name: "dataBuffer", scope: !19, file: !1, line: 46, type: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 100)
!31 = !DILocation(line: 46, column: 10, scope: !19)
!32 = !DILocation(line: 47, column: 12, scope: !19)
!33 = !DILocation(line: 47, column: 10, scope: !19)
!34 = !DILocalVariable(name: "dataLen", scope: !35, file: !1, line: 50, type: !36)
!35 = distinct !DILexicalBlock(scope: !19, file: !1, line: 48, column: 5)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 50, column: 16, scope: !35)
!40 = !DILocation(line: 50, column: 33, scope: !35)
!41 = !DILocation(line: 50, column: 26, scope: !35)
!42 = !DILocalVariable(name: "environment", scope: !35, file: !1, line: 51, type: !12)
!43 = !DILocation(line: 51, column: 16, scope: !35)
!44 = !DILocation(line: 51, column: 30, scope: !35)
!45 = !DILocation(line: 53, column: 13, scope: !46)
!46 = distinct !DILexicalBlock(scope: !35, file: !1, line: 53, column: 13)
!47 = !DILocation(line: 53, column: 25, scope: !46)
!48 = !DILocation(line: 53, column: 13, scope: !35)
!49 = !DILocation(line: 56, column: 21, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !1, line: 54, column: 9)
!51 = !DILocation(line: 56, column: 26, scope: !50)
!52 = !DILocation(line: 56, column: 25, scope: !50)
!53 = !DILocation(line: 56, column: 35, scope: !50)
!54 = !DILocation(line: 56, column: 52, scope: !50)
!55 = !DILocation(line: 56, column: 51, scope: !50)
!56 = !DILocation(line: 56, column: 59, scope: !50)
!57 = !DILocation(line: 56, column: 13, scope: !50)
!58 = !DILocation(line: 57, column: 9, scope: !50)
!59 = !DILocation(line: 60, column: 5, scope: !19)
!60 = !DILocation(line: 60, column: 13, scope: !19)
!61 = !DILocation(line: 61, column: 1, scope: !19)
!62 = distinct !DISubprogram(name: "goodG2BSink", scope: !1, file: !1, line: 68, type: !10, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!63 = !DILocalVariable(name: "data", arg: 1, scope: !62, file: !1, line: 68, type: !12)
!64 = !DILocation(line: 68, column: 25, scope: !62)
!65 = !DILocation(line: 71, column: 12, scope: !62)
!66 = !DILocation(line: 71, column: 5, scope: !62)
!67 = !DILocation(line: 72, column: 1, scope: !62)
!68 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 74, type: !20, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!69 = !DILocalVariable(name: "data", scope: !68, file: !1, line: 76, type: !12)
!70 = !DILocation(line: 76, column: 12, scope: !68)
!71 = !DILocalVariable(name: "funcPtr", scope: !68, file: !1, line: 77, type: !25)
!72 = !DILocation(line: 77, column: 12, scope: !68)
!73 = !DILocalVariable(name: "dataBuffer", scope: !68, file: !1, line: 78, type: !28)
!74 = !DILocation(line: 78, column: 10, scope: !68)
!75 = !DILocation(line: 79, column: 12, scope: !68)
!76 = !DILocation(line: 79, column: 10, scope: !68)
!77 = !DILocation(line: 81, column: 12, scope: !68)
!78 = !DILocation(line: 81, column: 5, scope: !68)
!79 = !DILocation(line: 82, column: 5, scope: !68)
!80 = !DILocation(line: 82, column: 13, scope: !68)
!81 = !DILocation(line: 83, column: 1, scope: !68)
!82 = distinct !DISubprogram(name: "goodB2GSink", scope: !1, file: !1, line: 86, type: !10, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!83 = !DILocalVariable(name: "data", arg: 1, scope: !82, file: !1, line: 86, type: !12)
!84 = !DILocation(line: 86, column: 25, scope: !82)
!85 = !DILocation(line: 89, column: 20, scope: !82)
!86 = !DILocation(line: 89, column: 5, scope: !82)
!87 = !DILocation(line: 90, column: 1, scope: !82)
!88 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 92, type: !20, scopeLine: 93, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!89 = !DILocalVariable(name: "data", scope: !88, file: !1, line: 94, type: !12)
!90 = !DILocation(line: 94, column: 12, scope: !88)
!91 = !DILocalVariable(name: "funcPtr", scope: !88, file: !1, line: 95, type: !25)
!92 = !DILocation(line: 95, column: 12, scope: !88)
!93 = !DILocalVariable(name: "dataBuffer", scope: !88, file: !1, line: 96, type: !28)
!94 = !DILocation(line: 96, column: 10, scope: !88)
!95 = !DILocation(line: 97, column: 12, scope: !88)
!96 = !DILocation(line: 97, column: 10, scope: !88)
!97 = !DILocalVariable(name: "dataLen", scope: !98, file: !1, line: 100, type: !36)
!98 = distinct !DILexicalBlock(scope: !88, file: !1, line: 98, column: 5)
!99 = !DILocation(line: 100, column: 16, scope: !98)
!100 = !DILocation(line: 100, column: 33, scope: !98)
!101 = !DILocation(line: 100, column: 26, scope: !98)
!102 = !DILocalVariable(name: "environment", scope: !98, file: !1, line: 101, type: !12)
!103 = !DILocation(line: 101, column: 16, scope: !98)
!104 = !DILocation(line: 101, column: 30, scope: !98)
!105 = !DILocation(line: 103, column: 13, scope: !106)
!106 = distinct !DILexicalBlock(scope: !98, file: !1, line: 103, column: 13)
!107 = !DILocation(line: 103, column: 25, scope: !106)
!108 = !DILocation(line: 103, column: 13, scope: !98)
!109 = !DILocation(line: 106, column: 21, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !1, line: 104, column: 9)
!111 = !DILocation(line: 106, column: 26, scope: !110)
!112 = !DILocation(line: 106, column: 25, scope: !110)
!113 = !DILocation(line: 106, column: 35, scope: !110)
!114 = !DILocation(line: 106, column: 52, scope: !110)
!115 = !DILocation(line: 106, column: 51, scope: !110)
!116 = !DILocation(line: 106, column: 59, scope: !110)
!117 = !DILocation(line: 106, column: 13, scope: !110)
!118 = !DILocation(line: 107, column: 9, scope: !110)
!119 = !DILocation(line: 109, column: 5, scope: !88)
!120 = !DILocation(line: 109, column: 13, scope: !88)
!121 = !DILocation(line: 110, column: 1, scope: !88)
!122 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_44_good", scope: !1, file: !1, line: 112, type: !20, scopeLine: 113, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!123 = !DILocation(line: 114, column: 5, scope: !122)
!124 = !DILocation(line: 115, column: 5, scope: !122)
!125 = !DILocation(line: 116, column: 1, scope: !122)
