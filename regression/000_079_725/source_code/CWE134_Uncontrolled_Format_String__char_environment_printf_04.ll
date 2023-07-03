; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_04.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_04.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATIC_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@STATIC_CONST_FALSE = dso_local global i32 0, align 4, !dbg !8
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_04_bad() #0 !dbg !15 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !18, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %data, align 8, !dbg !28
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !29
  %tobool = icmp ne i32 %1, 0, !dbg !29
  br i1 %tobool, label %if.then, label %if.end5, !dbg !31

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !32, metadata !DIExpression()), !dbg !38
  %2 = load i8*, i8** %data, align 8, !dbg !39
  %call = call i64 @strlen(i8* %2) #6, !dbg !40
  store i64 %call, i64* %dataLen, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !41, metadata !DIExpression()), !dbg !42
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !43
  store i8* %call1, i8** %environment, align 8, !dbg !42
  %3 = load i8*, i8** %environment, align 8, !dbg !44
  %cmp = icmp ne i8* %3, null, !dbg !46
  br i1 %cmp, label %if.then2, label %if.end, !dbg !47

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !48
  %5 = load i64, i64* %dataLen, align 8, !dbg !50
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !51
  %6 = load i8*, i8** %environment, align 8, !dbg !52
  %7 = load i64, i64* %dataLen, align 8, !dbg !53
  %sub = sub i64 100, %7, !dbg !54
  %sub3 = sub i64 %sub, 1, !dbg !55
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !56
  br label %if.end, !dbg !57

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !58

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !59
  %tobool6 = icmp ne i32 %8, 0, !dbg !59
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !61

if.then7:                                         ; preds = %if.end5
  %9 = load i8*, i8** %data, align 8, !dbg !62
  %call8 = call i32 (i8*, ...) @printf(i8* %9), !dbg !64
  br label %if.end9, !dbg !65

if.end9:                                          ; preds = %if.then7, %if.end5
  ret void, !dbg !66
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
define dso_local void @goodB2G1() #0 !dbg !67 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !70, metadata !DIExpression()), !dbg !71
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !71
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !71
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !72
  store i8* %arraydecay, i8** %data, align 8, !dbg !73
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !74
  %tobool = icmp ne i32 %1, 0, !dbg !74
  br i1 %tobool, label %if.then, label %if.end5, !dbg !76

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !77, metadata !DIExpression()), !dbg !80
  %2 = load i8*, i8** %data, align 8, !dbg !81
  %call = call i64 @strlen(i8* %2) #6, !dbg !82
  store i64 %call, i64* %dataLen, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !83, metadata !DIExpression()), !dbg !84
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !85
  store i8* %call1, i8** %environment, align 8, !dbg !84
  %3 = load i8*, i8** %environment, align 8, !dbg !86
  %cmp = icmp ne i8* %3, null, !dbg !88
  br i1 %cmp, label %if.then2, label %if.end, !dbg !89

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !90
  %5 = load i64, i64* %dataLen, align 8, !dbg !92
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !93
  %6 = load i8*, i8** %environment, align 8, !dbg !94
  %7 = load i64, i64* %dataLen, align 8, !dbg !95
  %sub = sub i64 100, %7, !dbg !96
  %sub3 = sub i64 %sub, 1, !dbg !97
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !98
  br label %if.end, !dbg !99

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !100

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @STATIC_CONST_FALSE, align 4, !dbg !101
  %tobool6 = icmp ne i32 %8, 0, !dbg !101
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !103

if.then7:                                         ; preds = %if.end5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !104
  br label %if.end9, !dbg !106

if.else:                                          ; preds = %if.end5
  %9 = load i8*, i8** %data, align 8, !dbg !107
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %9), !dbg !109
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  ret void, !dbg !110
}

declare dso_local void @printLine(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !111 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !114, metadata !DIExpression()), !dbg !115
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !115
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !115
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !116
  store i8* %arraydecay, i8** %data, align 8, !dbg !117
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !118
  %tobool = icmp ne i32 %1, 0, !dbg !118
  br i1 %tobool, label %if.then, label %if.end5, !dbg !120

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !121, metadata !DIExpression()), !dbg !124
  %2 = load i8*, i8** %data, align 8, !dbg !125
  %call = call i64 @strlen(i8* %2) #6, !dbg !126
  store i64 %call, i64* %dataLen, align 8, !dbg !124
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !127, metadata !DIExpression()), !dbg !128
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !129
  store i8* %call1, i8** %environment, align 8, !dbg !128
  %3 = load i8*, i8** %environment, align 8, !dbg !130
  %cmp = icmp ne i8* %3, null, !dbg !132
  br i1 %cmp, label %if.then2, label %if.end, !dbg !133

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !134
  %5 = load i64, i64* %dataLen, align 8, !dbg !136
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !137
  %6 = load i8*, i8** %environment, align 8, !dbg !138
  %7 = load i64, i64* %dataLen, align 8, !dbg !139
  %sub = sub i64 100, %7, !dbg !140
  %sub3 = sub i64 %sub, 1, !dbg !141
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !142
  br label %if.end, !dbg !143

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !144

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !145
  %tobool6 = icmp ne i32 %8, 0, !dbg !145
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !147

if.then7:                                         ; preds = %if.end5
  %9 = load i8*, i8** %data, align 8, !dbg !148
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %9), !dbg !150
  br label %if.end9, !dbg !151

if.end9:                                          ; preds = %if.then7, %if.end5
  ret void, !dbg !152
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !153 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !156, metadata !DIExpression()), !dbg !157
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !157
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !157
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !158
  store i8* %arraydecay, i8** %data, align 8, !dbg !159
  %1 = load i32, i32* @STATIC_CONST_FALSE, align 4, !dbg !160
  %tobool = icmp ne i32 %1, 0, !dbg !160
  br i1 %tobool, label %if.then, label %if.else, !dbg !162

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !163
  br label %if.end, !dbg !165

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !166
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !168
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !169
  %tobool1 = icmp ne i32 %3, 0, !dbg !169
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !171

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !172
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !174
  br label %if.end4, !dbg !175

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !176
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !177 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !180, metadata !DIExpression()), !dbg !181
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !181
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !181
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !182
  store i8* %arraydecay, i8** %data, align 8, !dbg !183
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !184
  %tobool = icmp ne i32 %1, 0, !dbg !184
  br i1 %tobool, label %if.then, label %if.end, !dbg !186

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !187
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !189
  br label %if.end, !dbg !190

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !191
  %tobool1 = icmp ne i32 %3, 0, !dbg !191
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !193

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !194
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !196
  br label %if.end4, !dbg !197

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !198
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_04_good() #0 !dbg !199 {
entry:
  call void @goodB2G1(), !dbg !200
  call void @goodB2G2(), !dbg !201
  call void @goodG2B1(), !dbg !202
  call void @goodG2B2(), !dbg !203
  ret void, !dbg !204
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
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "STATIC_CONST_TRUE", scope: !2, file: !3, line: 36, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_04.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_725/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "STATIC_CONST_FALSE", scope: !2, file: !3, line: 37, type: !10, isLocal: false, isDefinition: true)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 12.0.0"}
!15 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_04_bad", scope: !3, file: !3, line: 41, type: !16, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!16 = !DISubroutineType(types: !17)
!17 = !{null}
!18 = !DILocalVariable(name: "data", scope: !15, file: !3, line: 43, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DILocation(line: 43, column: 12, scope: !15)
!22 = !DILocalVariable(name: "dataBuffer", scope: !15, file: !3, line: 44, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 44, column: 10, scope: !15)
!27 = !DILocation(line: 45, column: 12, scope: !15)
!28 = !DILocation(line: 45, column: 10, scope: !15)
!29 = !DILocation(line: 46, column: 8, scope: !30)
!30 = distinct !DILexicalBlock(scope: !15, file: !3, line: 46, column: 8)
!31 = !DILocation(line: 46, column: 8, scope: !15)
!32 = !DILocalVariable(name: "dataLen", scope: !33, file: !3, line: 50, type: !35)
!33 = distinct !DILexicalBlock(scope: !34, file: !3, line: 48, column: 9)
!34 = distinct !DILexicalBlock(scope: !30, file: !3, line: 47, column: 5)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 50, column: 20, scope: !33)
!39 = !DILocation(line: 50, column: 37, scope: !33)
!40 = !DILocation(line: 50, column: 30, scope: !33)
!41 = !DILocalVariable(name: "environment", scope: !33, file: !3, line: 51, type: !19)
!42 = !DILocation(line: 51, column: 20, scope: !33)
!43 = !DILocation(line: 51, column: 34, scope: !33)
!44 = !DILocation(line: 53, column: 17, scope: !45)
!45 = distinct !DILexicalBlock(scope: !33, file: !3, line: 53, column: 17)
!46 = !DILocation(line: 53, column: 29, scope: !45)
!47 = !DILocation(line: 53, column: 17, scope: !33)
!48 = !DILocation(line: 56, column: 25, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !3, line: 54, column: 13)
!50 = !DILocation(line: 56, column: 30, scope: !49)
!51 = !DILocation(line: 56, column: 29, scope: !49)
!52 = !DILocation(line: 56, column: 39, scope: !49)
!53 = !DILocation(line: 56, column: 56, scope: !49)
!54 = !DILocation(line: 56, column: 55, scope: !49)
!55 = !DILocation(line: 56, column: 63, scope: !49)
!56 = !DILocation(line: 56, column: 17, scope: !49)
!57 = !DILocation(line: 57, column: 13, scope: !49)
!58 = !DILocation(line: 59, column: 5, scope: !34)
!59 = !DILocation(line: 60, column: 8, scope: !60)
!60 = distinct !DILexicalBlock(scope: !15, file: !3, line: 60, column: 8)
!61 = !DILocation(line: 60, column: 8, scope: !15)
!62 = !DILocation(line: 63, column: 16, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !3, line: 61, column: 5)
!64 = !DILocation(line: 63, column: 9, scope: !63)
!65 = !DILocation(line: 64, column: 5, scope: !63)
!66 = !DILocation(line: 65, column: 1, scope: !15)
!67 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 72, type: !16, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!68 = !DILocalVariable(name: "data", scope: !67, file: !3, line: 74, type: !19)
!69 = !DILocation(line: 74, column: 12, scope: !67)
!70 = !DILocalVariable(name: "dataBuffer", scope: !67, file: !3, line: 75, type: !23)
!71 = !DILocation(line: 75, column: 10, scope: !67)
!72 = !DILocation(line: 76, column: 12, scope: !67)
!73 = !DILocation(line: 76, column: 10, scope: !67)
!74 = !DILocation(line: 77, column: 8, scope: !75)
!75 = distinct !DILexicalBlock(scope: !67, file: !3, line: 77, column: 8)
!76 = !DILocation(line: 77, column: 8, scope: !67)
!77 = !DILocalVariable(name: "dataLen", scope: !78, file: !3, line: 81, type: !35)
!78 = distinct !DILexicalBlock(scope: !79, file: !3, line: 79, column: 9)
!79 = distinct !DILexicalBlock(scope: !75, file: !3, line: 78, column: 5)
!80 = !DILocation(line: 81, column: 20, scope: !78)
!81 = !DILocation(line: 81, column: 37, scope: !78)
!82 = !DILocation(line: 81, column: 30, scope: !78)
!83 = !DILocalVariable(name: "environment", scope: !78, file: !3, line: 82, type: !19)
!84 = !DILocation(line: 82, column: 20, scope: !78)
!85 = !DILocation(line: 82, column: 34, scope: !78)
!86 = !DILocation(line: 84, column: 17, scope: !87)
!87 = distinct !DILexicalBlock(scope: !78, file: !3, line: 84, column: 17)
!88 = !DILocation(line: 84, column: 29, scope: !87)
!89 = !DILocation(line: 84, column: 17, scope: !78)
!90 = !DILocation(line: 87, column: 25, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !3, line: 85, column: 13)
!92 = !DILocation(line: 87, column: 30, scope: !91)
!93 = !DILocation(line: 87, column: 29, scope: !91)
!94 = !DILocation(line: 87, column: 39, scope: !91)
!95 = !DILocation(line: 87, column: 56, scope: !91)
!96 = !DILocation(line: 87, column: 55, scope: !91)
!97 = !DILocation(line: 87, column: 63, scope: !91)
!98 = !DILocation(line: 87, column: 17, scope: !91)
!99 = !DILocation(line: 88, column: 13, scope: !91)
!100 = !DILocation(line: 90, column: 5, scope: !79)
!101 = !DILocation(line: 91, column: 8, scope: !102)
!102 = distinct !DILexicalBlock(scope: !67, file: !3, line: 91, column: 8)
!103 = !DILocation(line: 91, column: 8, scope: !67)
!104 = !DILocation(line: 94, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !102, file: !3, line: 92, column: 5)
!106 = !DILocation(line: 95, column: 5, scope: !105)
!107 = !DILocation(line: 99, column: 24, scope: !108)
!108 = distinct !DILexicalBlock(scope: !102, file: !3, line: 97, column: 5)
!109 = !DILocation(line: 99, column: 9, scope: !108)
!110 = !DILocation(line: 101, column: 1, scope: !67)
!111 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 104, type: !16, scopeLine: 105, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!112 = !DILocalVariable(name: "data", scope: !111, file: !3, line: 106, type: !19)
!113 = !DILocation(line: 106, column: 12, scope: !111)
!114 = !DILocalVariable(name: "dataBuffer", scope: !111, file: !3, line: 107, type: !23)
!115 = !DILocation(line: 107, column: 10, scope: !111)
!116 = !DILocation(line: 108, column: 12, scope: !111)
!117 = !DILocation(line: 108, column: 10, scope: !111)
!118 = !DILocation(line: 109, column: 8, scope: !119)
!119 = distinct !DILexicalBlock(scope: !111, file: !3, line: 109, column: 8)
!120 = !DILocation(line: 109, column: 8, scope: !111)
!121 = !DILocalVariable(name: "dataLen", scope: !122, file: !3, line: 113, type: !35)
!122 = distinct !DILexicalBlock(scope: !123, file: !3, line: 111, column: 9)
!123 = distinct !DILexicalBlock(scope: !119, file: !3, line: 110, column: 5)
!124 = !DILocation(line: 113, column: 20, scope: !122)
!125 = !DILocation(line: 113, column: 37, scope: !122)
!126 = !DILocation(line: 113, column: 30, scope: !122)
!127 = !DILocalVariable(name: "environment", scope: !122, file: !3, line: 114, type: !19)
!128 = !DILocation(line: 114, column: 20, scope: !122)
!129 = !DILocation(line: 114, column: 34, scope: !122)
!130 = !DILocation(line: 116, column: 17, scope: !131)
!131 = distinct !DILexicalBlock(scope: !122, file: !3, line: 116, column: 17)
!132 = !DILocation(line: 116, column: 29, scope: !131)
!133 = !DILocation(line: 116, column: 17, scope: !122)
!134 = !DILocation(line: 119, column: 25, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !3, line: 117, column: 13)
!136 = !DILocation(line: 119, column: 30, scope: !135)
!137 = !DILocation(line: 119, column: 29, scope: !135)
!138 = !DILocation(line: 119, column: 39, scope: !135)
!139 = !DILocation(line: 119, column: 56, scope: !135)
!140 = !DILocation(line: 119, column: 55, scope: !135)
!141 = !DILocation(line: 119, column: 63, scope: !135)
!142 = !DILocation(line: 119, column: 17, scope: !135)
!143 = !DILocation(line: 120, column: 13, scope: !135)
!144 = !DILocation(line: 122, column: 5, scope: !123)
!145 = !DILocation(line: 123, column: 8, scope: !146)
!146 = distinct !DILexicalBlock(scope: !111, file: !3, line: 123, column: 8)
!147 = !DILocation(line: 123, column: 8, scope: !111)
!148 = !DILocation(line: 126, column: 24, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !3, line: 124, column: 5)
!150 = !DILocation(line: 126, column: 9, scope: !149)
!151 = !DILocation(line: 127, column: 5, scope: !149)
!152 = !DILocation(line: 128, column: 1, scope: !111)
!153 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 131, type: !16, scopeLine: 132, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!154 = !DILocalVariable(name: "data", scope: !153, file: !3, line: 133, type: !19)
!155 = !DILocation(line: 133, column: 12, scope: !153)
!156 = !DILocalVariable(name: "dataBuffer", scope: !153, file: !3, line: 134, type: !23)
!157 = !DILocation(line: 134, column: 10, scope: !153)
!158 = !DILocation(line: 135, column: 12, scope: !153)
!159 = !DILocation(line: 135, column: 10, scope: !153)
!160 = !DILocation(line: 136, column: 8, scope: !161)
!161 = distinct !DILexicalBlock(scope: !153, file: !3, line: 136, column: 8)
!162 = !DILocation(line: 136, column: 8, scope: !153)
!163 = !DILocation(line: 139, column: 9, scope: !164)
!164 = distinct !DILexicalBlock(scope: !161, file: !3, line: 137, column: 5)
!165 = !DILocation(line: 140, column: 5, scope: !164)
!166 = !DILocation(line: 144, column: 16, scope: !167)
!167 = distinct !DILexicalBlock(scope: !161, file: !3, line: 142, column: 5)
!168 = !DILocation(line: 144, column: 9, scope: !167)
!169 = !DILocation(line: 146, column: 8, scope: !170)
!170 = distinct !DILexicalBlock(scope: !153, file: !3, line: 146, column: 8)
!171 = !DILocation(line: 146, column: 8, scope: !153)
!172 = !DILocation(line: 149, column: 16, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !3, line: 147, column: 5)
!174 = !DILocation(line: 149, column: 9, scope: !173)
!175 = !DILocation(line: 150, column: 5, scope: !173)
!176 = !DILocation(line: 151, column: 1, scope: !153)
!177 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 154, type: !16, scopeLine: 155, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!178 = !DILocalVariable(name: "data", scope: !177, file: !3, line: 156, type: !19)
!179 = !DILocation(line: 156, column: 12, scope: !177)
!180 = !DILocalVariable(name: "dataBuffer", scope: !177, file: !3, line: 157, type: !23)
!181 = !DILocation(line: 157, column: 10, scope: !177)
!182 = !DILocation(line: 158, column: 12, scope: !177)
!183 = !DILocation(line: 158, column: 10, scope: !177)
!184 = !DILocation(line: 159, column: 8, scope: !185)
!185 = distinct !DILexicalBlock(scope: !177, file: !3, line: 159, column: 8)
!186 = !DILocation(line: 159, column: 8, scope: !177)
!187 = !DILocation(line: 162, column: 16, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !3, line: 160, column: 5)
!189 = !DILocation(line: 162, column: 9, scope: !188)
!190 = !DILocation(line: 163, column: 5, scope: !188)
!191 = !DILocation(line: 164, column: 8, scope: !192)
!192 = distinct !DILexicalBlock(scope: !177, file: !3, line: 164, column: 8)
!193 = !DILocation(line: 164, column: 8, scope: !177)
!194 = !DILocation(line: 167, column: 16, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !3, line: 165, column: 5)
!196 = !DILocation(line: 167, column: 9, scope: !195)
!197 = !DILocation(line: 168, column: 5, scope: !195)
!198 = !DILocation(line: 169, column: 1, scope: !177)
!199 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_04_good", scope: !3, file: !3, line: 171, type: !16, scopeLine: 172, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!200 = !DILocation(line: 173, column: 5, scope: !199)
!201 = !DILocation(line: 174, column: 5, scope: !199)
!202 = !DILocation(line: 175, column: 5, scope: !199)
!203 = !DILocation(line: 176, column: 5, scope: !199)
!204 = !DILocation(line: 177, column: 1, scope: !199)
