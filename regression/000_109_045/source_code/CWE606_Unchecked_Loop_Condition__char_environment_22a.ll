; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_22a.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_22a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CWE606_Unchecked_Loop_Condition__char_environment_22_badGlobal = dso_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G1Global = dso_local global i32 0, align 4, !dbg !8
@CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Global = dso_local global i32 0, align 4, !dbg !11
@CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BGlobal = dso_local global i32 0, align 4, !dbg !13
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_22_bad() #0 !dbg !19 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !22, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !26, metadata !DIExpression()), !dbg !30
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !30
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !30
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !31
  store i8* %arraydecay, i8** %data, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !33, metadata !DIExpression()), !dbg !38
  %1 = load i8*, i8** %data, align 8, !dbg !39
  %call = call i64 @strlen(i8* %1) #6, !dbg !40
  store i64 %call, i64* %dataLen, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !41, metadata !DIExpression()), !dbg !42
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !43
  store i8* %call1, i8** %environment, align 8, !dbg !42
  %2 = load i8*, i8** %environment, align 8, !dbg !44
  %cmp = icmp ne i8* %2, null, !dbg !46
  br i1 %cmp, label %if.then, label %if.end, !dbg !47

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !48
  %4 = load i64, i64* %dataLen, align 8, !dbg !50
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !51
  %5 = load i8*, i8** %environment, align 8, !dbg !52
  %6 = load i64, i64* %dataLen, align 8, !dbg !53
  %sub = sub i64 100, %6, !dbg !54
  %sub2 = sub i64 %sub, 1, !dbg !55
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !56
  br label %if.end, !dbg !57

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_environment_22_badGlobal, align 4, !dbg !58
  %7 = load i8*, i8** %data, align 8, !dbg !59
  call void @CWE606_Unchecked_Loop_Condition__char_environment_22_badSink(i8* %7), !dbg !60
  ret void, !dbg !61
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

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_22_badSink(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !62 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !65, metadata !DIExpression()), !dbg !66
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !66
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !66
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !67
  store i8* %arraydecay, i8** %data, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !69, metadata !DIExpression()), !dbg !71
  %1 = load i8*, i8** %data, align 8, !dbg !72
  %call = call i64 @strlen(i8* %1) #6, !dbg !73
  store i64 %call, i64* %dataLen, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !74, metadata !DIExpression()), !dbg !75
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !76
  store i8* %call1, i8** %environment, align 8, !dbg !75
  %2 = load i8*, i8** %environment, align 8, !dbg !77
  %cmp = icmp ne i8* %2, null, !dbg !79
  br i1 %cmp, label %if.then, label %if.end, !dbg !80

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !81
  %4 = load i64, i64* %dataLen, align 8, !dbg !83
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !84
  %5 = load i8*, i8** %environment, align 8, !dbg !85
  %6 = load i64, i64* %dataLen, align 8, !dbg !86
  %sub = sub i64 100, %6, !dbg !87
  %sub2 = sub i64 %sub, 1, !dbg !88
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !89
  br label %if.end, !dbg !90

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* @CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G1Global, align 4, !dbg !91
  %7 = load i8*, i8** %data, align 8, !dbg !92
  call void @CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G1Sink(i8* %7), !dbg !93
  ret void, !dbg !94
}

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G1Sink(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !95 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !98, metadata !DIExpression()), !dbg !99
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !99
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !99
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !100
  store i8* %arraydecay, i8** %data, align 8, !dbg !101
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !102, metadata !DIExpression()), !dbg !104
  %1 = load i8*, i8** %data, align 8, !dbg !105
  %call = call i64 @strlen(i8* %1) #6, !dbg !106
  store i64 %call, i64* %dataLen, align 8, !dbg !104
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !107, metadata !DIExpression()), !dbg !108
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !109
  store i8* %call1, i8** %environment, align 8, !dbg !108
  %2 = load i8*, i8** %environment, align 8, !dbg !110
  %cmp = icmp ne i8* %2, null, !dbg !112
  br i1 %cmp, label %if.then, label %if.end, !dbg !113

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !114
  %4 = load i64, i64* %dataLen, align 8, !dbg !116
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !117
  %5 = load i8*, i8** %environment, align 8, !dbg !118
  %6 = load i64, i64* %dataLen, align 8, !dbg !119
  %sub = sub i64 100, %6, !dbg !120
  %sub2 = sub i64 %sub, 1, !dbg !121
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !122
  br label %if.end, !dbg !123

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Global, align 4, !dbg !124
  %7 = load i8*, i8** %data, align 8, !dbg !125
  call void @CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink(i8* %7), !dbg !126
  ret void, !dbg !127
}

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !128 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !131, metadata !DIExpression()), !dbg !132
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !132
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !132
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !133
  store i8* %arraydecay, i8** %data, align 8, !dbg !134
  %1 = load i8*, i8** %data, align 8, !dbg !135
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !136
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BGlobal, align 4, !dbg !137
  %2 = load i8*, i8** %data, align 8, !dbg !138
  call void @CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink(i8* %2), !dbg !139
  ret void, !dbg !140
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_22_good() #0 !dbg !141 {
entry:
  call void @goodB2G1(), !dbg !142
  call void @goodB2G2(), !dbg !143
  call void @goodG2B(), !dbg !144
  ret void, !dbg !145
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
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_environment_22_badGlobal", scope: !2, file: !3, line: 38, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_22a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_045/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8, !11, !13}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G1Global", scope: !2, file: !3, line: 66, type: !10, isLocal: false, isDefinition: true)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Global", scope: !2, file: !3, line: 67, type: !10, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BGlobal", scope: !2, file: !3, line: 68, type: !10, isLocal: false, isDefinition: true)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 12.0.0"}
!19 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_22_bad", scope: !3, file: !3, line: 41, type: !20, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null}
!22 = !DILocalVariable(name: "data", scope: !19, file: !3, line: 43, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DILocation(line: 43, column: 12, scope: !19)
!26 = !DILocalVariable(name: "dataBuffer", scope: !19, file: !3, line: 44, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 800, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 100)
!30 = !DILocation(line: 44, column: 10, scope: !19)
!31 = !DILocation(line: 45, column: 12, scope: !19)
!32 = !DILocation(line: 45, column: 10, scope: !19)
!33 = !DILocalVariable(name: "dataLen", scope: !34, file: !3, line: 48, type: !35)
!34 = distinct !DILexicalBlock(scope: !19, file: !3, line: 46, column: 5)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 48, column: 16, scope: !34)
!39 = !DILocation(line: 48, column: 33, scope: !34)
!40 = !DILocation(line: 48, column: 26, scope: !34)
!41 = !DILocalVariable(name: "environment", scope: !34, file: !3, line: 49, type: !23)
!42 = !DILocation(line: 49, column: 16, scope: !34)
!43 = !DILocation(line: 49, column: 30, scope: !34)
!44 = !DILocation(line: 51, column: 13, scope: !45)
!45 = distinct !DILexicalBlock(scope: !34, file: !3, line: 51, column: 13)
!46 = !DILocation(line: 51, column: 25, scope: !45)
!47 = !DILocation(line: 51, column: 13, scope: !34)
!48 = !DILocation(line: 54, column: 21, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !3, line: 52, column: 9)
!50 = !DILocation(line: 54, column: 26, scope: !49)
!51 = !DILocation(line: 54, column: 25, scope: !49)
!52 = !DILocation(line: 54, column: 35, scope: !49)
!53 = !DILocation(line: 54, column: 52, scope: !49)
!54 = !DILocation(line: 54, column: 51, scope: !49)
!55 = !DILocation(line: 54, column: 59, scope: !49)
!56 = !DILocation(line: 54, column: 13, scope: !49)
!57 = !DILocation(line: 55, column: 9, scope: !49)
!58 = !DILocation(line: 57, column: 68, scope: !19)
!59 = !DILocation(line: 58, column: 66, scope: !19)
!60 = !DILocation(line: 58, column: 5, scope: !19)
!61 = !DILocation(line: 59, column: 1, scope: !19)
!62 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 72, type: !20, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!63 = !DILocalVariable(name: "data", scope: !62, file: !3, line: 74, type: !23)
!64 = !DILocation(line: 74, column: 12, scope: !62)
!65 = !DILocalVariable(name: "dataBuffer", scope: !62, file: !3, line: 75, type: !27)
!66 = !DILocation(line: 75, column: 10, scope: !62)
!67 = !DILocation(line: 76, column: 12, scope: !62)
!68 = !DILocation(line: 76, column: 10, scope: !62)
!69 = !DILocalVariable(name: "dataLen", scope: !70, file: !3, line: 79, type: !35)
!70 = distinct !DILexicalBlock(scope: !62, file: !3, line: 77, column: 5)
!71 = !DILocation(line: 79, column: 16, scope: !70)
!72 = !DILocation(line: 79, column: 33, scope: !70)
!73 = !DILocation(line: 79, column: 26, scope: !70)
!74 = !DILocalVariable(name: "environment", scope: !70, file: !3, line: 80, type: !23)
!75 = !DILocation(line: 80, column: 16, scope: !70)
!76 = !DILocation(line: 80, column: 30, scope: !70)
!77 = !DILocation(line: 82, column: 13, scope: !78)
!78 = distinct !DILexicalBlock(scope: !70, file: !3, line: 82, column: 13)
!79 = !DILocation(line: 82, column: 25, scope: !78)
!80 = !DILocation(line: 82, column: 13, scope: !70)
!81 = !DILocation(line: 85, column: 21, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !3, line: 83, column: 9)
!83 = !DILocation(line: 85, column: 26, scope: !82)
!84 = !DILocation(line: 85, column: 25, scope: !82)
!85 = !DILocation(line: 85, column: 35, scope: !82)
!86 = !DILocation(line: 85, column: 52, scope: !82)
!87 = !DILocation(line: 85, column: 51, scope: !82)
!88 = !DILocation(line: 85, column: 59, scope: !82)
!89 = !DILocation(line: 85, column: 13, scope: !82)
!90 = !DILocation(line: 86, column: 9, scope: !82)
!91 = !DILocation(line: 88, column: 73, scope: !62)
!92 = !DILocation(line: 89, column: 71, scope: !62)
!93 = !DILocation(line: 89, column: 5, scope: !62)
!94 = !DILocation(line: 90, column: 1, scope: !62)
!95 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 94, type: !20, scopeLine: 95, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!96 = !DILocalVariable(name: "data", scope: !95, file: !3, line: 96, type: !23)
!97 = !DILocation(line: 96, column: 12, scope: !95)
!98 = !DILocalVariable(name: "dataBuffer", scope: !95, file: !3, line: 97, type: !27)
!99 = !DILocation(line: 97, column: 10, scope: !95)
!100 = !DILocation(line: 98, column: 12, scope: !95)
!101 = !DILocation(line: 98, column: 10, scope: !95)
!102 = !DILocalVariable(name: "dataLen", scope: !103, file: !3, line: 101, type: !35)
!103 = distinct !DILexicalBlock(scope: !95, file: !3, line: 99, column: 5)
!104 = !DILocation(line: 101, column: 16, scope: !103)
!105 = !DILocation(line: 101, column: 33, scope: !103)
!106 = !DILocation(line: 101, column: 26, scope: !103)
!107 = !DILocalVariable(name: "environment", scope: !103, file: !3, line: 102, type: !23)
!108 = !DILocation(line: 102, column: 16, scope: !103)
!109 = !DILocation(line: 102, column: 30, scope: !103)
!110 = !DILocation(line: 104, column: 13, scope: !111)
!111 = distinct !DILexicalBlock(scope: !103, file: !3, line: 104, column: 13)
!112 = !DILocation(line: 104, column: 25, scope: !111)
!113 = !DILocation(line: 104, column: 13, scope: !103)
!114 = !DILocation(line: 107, column: 21, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !3, line: 105, column: 9)
!116 = !DILocation(line: 107, column: 26, scope: !115)
!117 = !DILocation(line: 107, column: 25, scope: !115)
!118 = !DILocation(line: 107, column: 35, scope: !115)
!119 = !DILocation(line: 107, column: 52, scope: !115)
!120 = !DILocation(line: 107, column: 51, scope: !115)
!121 = !DILocation(line: 107, column: 59, scope: !115)
!122 = !DILocation(line: 107, column: 13, scope: !115)
!123 = !DILocation(line: 108, column: 9, scope: !115)
!124 = !DILocation(line: 110, column: 73, scope: !95)
!125 = !DILocation(line: 111, column: 71, scope: !95)
!126 = !DILocation(line: 111, column: 5, scope: !95)
!127 = !DILocation(line: 112, column: 1, scope: !95)
!128 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 116, type: !20, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!129 = !DILocalVariable(name: "data", scope: !128, file: !3, line: 118, type: !23)
!130 = !DILocation(line: 118, column: 12, scope: !128)
!131 = !DILocalVariable(name: "dataBuffer", scope: !128, file: !3, line: 119, type: !27)
!132 = !DILocation(line: 119, column: 10, scope: !128)
!133 = !DILocation(line: 120, column: 12, scope: !128)
!134 = !DILocation(line: 120, column: 10, scope: !128)
!135 = !DILocation(line: 122, column: 12, scope: !128)
!136 = !DILocation(line: 122, column: 5, scope: !128)
!137 = !DILocation(line: 123, column: 72, scope: !128)
!138 = !DILocation(line: 124, column: 70, scope: !128)
!139 = !DILocation(line: 124, column: 5, scope: !128)
!140 = !DILocation(line: 125, column: 1, scope: !128)
!141 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_22_good", scope: !3, file: !3, line: 127, type: !20, scopeLine: 128, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!142 = !DILocation(line: 129, column: 5, scope: !141)
!143 = !DILocation(line: 130, column: 5, scope: !141)
!144 = !DILocation(line: 131, column: 5, scope: !141)
!145 = !DILocation(line: 132, column: 1, scope: !141)
