; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_18.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_18.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad() #0 !dbg !9 {
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
  br label %source, !dbg !23

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !24), !dbg !25
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !26, metadata !DIExpression()), !dbg !31
  %1 = load i8*, i8** %data, align 8, !dbg !32
  %call = call i64 @strlen(i8* %1) #6, !dbg !33
  store i64 %call, i64* %dataLen, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !34, metadata !DIExpression()), !dbg !35
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !36
  store i8* %call1, i8** %environment, align 8, !dbg !35
  %2 = load i8*, i8** %environment, align 8, !dbg !37
  %cmp = icmp ne i8* %2, null, !dbg !39
  br i1 %cmp, label %if.then, label %if.end, !dbg !40

if.then:                                          ; preds = %source
  %3 = load i8*, i8** %data, align 8, !dbg !41
  %4 = load i64, i64* %dataLen, align 8, !dbg !43
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !44
  %5 = load i8*, i8** %environment, align 8, !dbg !45
  %6 = load i64, i64* %dataLen, align 8, !dbg !46
  %sub = sub i64 100, %6, !dbg !47
  %sub2 = sub i64 %sub, 1, !dbg !48
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !49
  br label %if.end, !dbg !50

if.end:                                           ; preds = %if.then, %source
  br label %sink, !dbg !51

sink:                                             ; preds = %if.end
  call void @llvm.dbg.label(metadata !52), !dbg !53
  %7 = load i8*, i8** %data, align 8, !dbg !54
  %call4 = call i32 (i8*, ...) @printf(i8* %7), !dbg !55
  ret void, !dbg !56
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
  br label %source, !dbg !64

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !65), !dbg !66
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !69
  %1 = load i8*, i8** %data, align 8, !dbg !70
  %call = call i64 @strlen(i8* %1) #6, !dbg !71
  store i64 %call, i64* %dataLen, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !72, metadata !DIExpression()), !dbg !73
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !74
  store i8* %call1, i8** %environment, align 8, !dbg !73
  %2 = load i8*, i8** %environment, align 8, !dbg !75
  %cmp = icmp ne i8* %2, null, !dbg !77
  br i1 %cmp, label %if.then, label %if.end, !dbg !78

if.then:                                          ; preds = %source
  %3 = load i8*, i8** %data, align 8, !dbg !79
  %4 = load i64, i64* %dataLen, align 8, !dbg !81
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !82
  %5 = load i8*, i8** %environment, align 8, !dbg !83
  %6 = load i64, i64* %dataLen, align 8, !dbg !84
  %sub = sub i64 100, %6, !dbg !85
  %sub2 = sub i64 %sub, 1, !dbg !86
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !87
  br label %if.end, !dbg !88

if.end:                                           ; preds = %if.then, %source
  br label %sink, !dbg !89

sink:                                             ; preds = %if.end
  call void @llvm.dbg.label(metadata !90), !dbg !91
  %7 = load i8*, i8** %data, align 8, !dbg !92
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %7), !dbg !93
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
  br label %source, !dbg !102

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !103), !dbg !104
  %1 = load i8*, i8** %data, align 8, !dbg !105
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !106
  br label %sink, !dbg !107

sink:                                             ; preds = %source
  call void @llvm.dbg.label(metadata !108), !dbg !109
  %2 = load i8*, i8** %data, align 8, !dbg !110
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !111
  ret void, !dbg !112
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_18_good() #0 !dbg !113 {
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_18.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_739/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad", scope: !1, file: !1, line: 35, type: !10, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!24 = !DILabel(scope: !9, name: "source", file: !1, line: 41)
!25 = !DILocation(line: 41, column: 1, scope: !9)
!26 = !DILocalVariable(name: "dataLen", scope: !27, file: !1, line: 44, type: !28)
!27 = distinct !DILexicalBlock(scope: !9, file: !1, line: 42, column: 5)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DILocation(line: 44, column: 16, scope: !27)
!32 = !DILocation(line: 44, column: 33, scope: !27)
!33 = !DILocation(line: 44, column: 26, scope: !27)
!34 = !DILocalVariable(name: "environment", scope: !27, file: !1, line: 45, type: !13)
!35 = !DILocation(line: 45, column: 16, scope: !27)
!36 = !DILocation(line: 45, column: 30, scope: !27)
!37 = !DILocation(line: 47, column: 13, scope: !38)
!38 = distinct !DILexicalBlock(scope: !27, file: !1, line: 47, column: 13)
!39 = !DILocation(line: 47, column: 25, scope: !38)
!40 = !DILocation(line: 47, column: 13, scope: !27)
!41 = !DILocation(line: 50, column: 21, scope: !42)
!42 = distinct !DILexicalBlock(scope: !38, file: !1, line: 48, column: 9)
!43 = !DILocation(line: 50, column: 26, scope: !42)
!44 = !DILocation(line: 50, column: 25, scope: !42)
!45 = !DILocation(line: 50, column: 35, scope: !42)
!46 = !DILocation(line: 50, column: 52, scope: !42)
!47 = !DILocation(line: 50, column: 51, scope: !42)
!48 = !DILocation(line: 50, column: 59, scope: !42)
!49 = !DILocation(line: 50, column: 13, scope: !42)
!50 = !DILocation(line: 51, column: 9, scope: !42)
!51 = !DILocation(line: 53, column: 5, scope: !9)
!52 = !DILabel(scope: !9, name: "sink", file: !1, line: 54)
!53 = !DILocation(line: 54, column: 1, scope: !9)
!54 = !DILocation(line: 56, column: 12, scope: !9)
!55 = !DILocation(line: 56, column: 5, scope: !9)
!56 = !DILocation(line: 57, column: 1, scope: !9)
!57 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 64, type: !10, scopeLine: 65, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!58 = !DILocalVariable(name: "data", scope: !57, file: !1, line: 66, type: !13)
!59 = !DILocation(line: 66, column: 12, scope: !57)
!60 = !DILocalVariable(name: "dataBuffer", scope: !57, file: !1, line: 67, type: !17)
!61 = !DILocation(line: 67, column: 10, scope: !57)
!62 = !DILocation(line: 68, column: 12, scope: !57)
!63 = !DILocation(line: 68, column: 10, scope: !57)
!64 = !DILocation(line: 69, column: 5, scope: !57)
!65 = !DILabel(scope: !57, name: "source", file: !1, line: 70)
!66 = !DILocation(line: 70, column: 1, scope: !57)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !1, line: 73, type: !28)
!68 = distinct !DILexicalBlock(scope: !57, file: !1, line: 71, column: 5)
!69 = !DILocation(line: 73, column: 16, scope: !68)
!70 = !DILocation(line: 73, column: 33, scope: !68)
!71 = !DILocation(line: 73, column: 26, scope: !68)
!72 = !DILocalVariable(name: "environment", scope: !68, file: !1, line: 74, type: !13)
!73 = !DILocation(line: 74, column: 16, scope: !68)
!74 = !DILocation(line: 74, column: 30, scope: !68)
!75 = !DILocation(line: 76, column: 13, scope: !76)
!76 = distinct !DILexicalBlock(scope: !68, file: !1, line: 76, column: 13)
!77 = !DILocation(line: 76, column: 25, scope: !76)
!78 = !DILocation(line: 76, column: 13, scope: !68)
!79 = !DILocation(line: 79, column: 21, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !1, line: 77, column: 9)
!81 = !DILocation(line: 79, column: 26, scope: !80)
!82 = !DILocation(line: 79, column: 25, scope: !80)
!83 = !DILocation(line: 79, column: 35, scope: !80)
!84 = !DILocation(line: 79, column: 52, scope: !80)
!85 = !DILocation(line: 79, column: 51, scope: !80)
!86 = !DILocation(line: 79, column: 59, scope: !80)
!87 = !DILocation(line: 79, column: 13, scope: !80)
!88 = !DILocation(line: 80, column: 9, scope: !80)
!89 = !DILocation(line: 82, column: 5, scope: !57)
!90 = !DILabel(scope: !57, name: "sink", file: !1, line: 83)
!91 = !DILocation(line: 83, column: 1, scope: !57)
!92 = !DILocation(line: 85, column: 20, scope: !57)
!93 = !DILocation(line: 85, column: 5, scope: !57)
!94 = !DILocation(line: 86, column: 1, scope: !57)
!95 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 89, type: !10, scopeLine: 90, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!96 = !DILocalVariable(name: "data", scope: !95, file: !1, line: 91, type: !13)
!97 = !DILocation(line: 91, column: 12, scope: !95)
!98 = !DILocalVariable(name: "dataBuffer", scope: !95, file: !1, line: 92, type: !17)
!99 = !DILocation(line: 92, column: 10, scope: !95)
!100 = !DILocation(line: 93, column: 12, scope: !95)
!101 = !DILocation(line: 93, column: 10, scope: !95)
!102 = !DILocation(line: 94, column: 5, scope: !95)
!103 = !DILabel(scope: !95, name: "source", file: !1, line: 95)
!104 = !DILocation(line: 95, column: 1, scope: !95)
!105 = !DILocation(line: 97, column: 12, scope: !95)
!106 = !DILocation(line: 97, column: 5, scope: !95)
!107 = !DILocation(line: 98, column: 5, scope: !95)
!108 = !DILabel(scope: !95, name: "sink", file: !1, line: 99)
!109 = !DILocation(line: 99, column: 1, scope: !95)
!110 = !DILocation(line: 101, column: 12, scope: !95)
!111 = !DILocation(line: 101, column: 5, scope: !95)
!112 = !DILocation(line: 102, column: 1, scope: !95)
!113 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_18_good", scope: !1, file: !1, line: 104, type: !10, scopeLine: 105, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!114 = !DILocation(line: 106, column: 5, scope: !113)
!115 = !DILocation(line: 107, column: 5, scope: !113)
!116 = !DILocation(line: 108, column: 1, scope: !113)
