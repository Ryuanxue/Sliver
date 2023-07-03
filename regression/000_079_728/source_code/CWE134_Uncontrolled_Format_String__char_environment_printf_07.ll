; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_07.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_07.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@staticFive = dso_local global i32 5, align 4, !dbg !0
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_07_bad() #0 !dbg !13 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !16, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !20, metadata !DIExpression()), !dbg !24
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !24
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !24
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !25
  store i8* %arraydecay, i8** %data, align 8, !dbg !26
  %1 = load i32, i32* @staticFive, align 4, !dbg !27
  %cmp = icmp eq i32 %1, 5, !dbg !29
  br i1 %cmp, label %if.then, label %if.end6, !dbg !30

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !31, metadata !DIExpression()), !dbg !37
  %2 = load i8*, i8** %data, align 8, !dbg !38
  %call = call i64 @strlen(i8* %2) #6, !dbg !39
  store i64 %call, i64* %dataLen, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !40, metadata !DIExpression()), !dbg !41
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !42
  store i8* %call1, i8** %environment, align 8, !dbg !41
  %3 = load i8*, i8** %environment, align 8, !dbg !43
  %cmp2 = icmp ne i8* %3, null, !dbg !45
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !46

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !47
  %5 = load i64, i64* %dataLen, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !50
  %6 = load i8*, i8** %environment, align 8, !dbg !51
  %7 = load i64, i64* %dataLen, align 8, !dbg !52
  %sub = sub i64 100, %7, !dbg !53
  %sub4 = sub i64 %sub, 1, !dbg !54
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #7, !dbg !55
  br label %if.end, !dbg !56

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !57

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @staticFive, align 4, !dbg !58
  %cmp7 = icmp eq i32 %8, 5, !dbg !60
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !61

if.then8:                                         ; preds = %if.end6
  %9 = load i8*, i8** %data, align 8, !dbg !62
  %call9 = call i32 (i8*, ...) @printf(i8* %9), !dbg !64
  br label %if.end10, !dbg !65

if.end10:                                         ; preds = %if.then8, %if.end6
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
  %1 = load i32, i32* @staticFive, align 4, !dbg !74
  %cmp = icmp eq i32 %1, 5, !dbg !76
  br i1 %cmp, label %if.then, label %if.end6, !dbg !77

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !78, metadata !DIExpression()), !dbg !81
  %2 = load i8*, i8** %data, align 8, !dbg !82
  %call = call i64 @strlen(i8* %2) #6, !dbg !83
  store i64 %call, i64* %dataLen, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !84, metadata !DIExpression()), !dbg !85
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !86
  store i8* %call1, i8** %environment, align 8, !dbg !85
  %3 = load i8*, i8** %environment, align 8, !dbg !87
  %cmp2 = icmp ne i8* %3, null, !dbg !89
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !90

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !91
  %5 = load i64, i64* %dataLen, align 8, !dbg !93
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !94
  %6 = load i8*, i8** %environment, align 8, !dbg !95
  %7 = load i64, i64* %dataLen, align 8, !dbg !96
  %sub = sub i64 100, %7, !dbg !97
  %sub4 = sub i64 %sub, 1, !dbg !98
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #7, !dbg !99
  br label %if.end, !dbg !100

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !101

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @staticFive, align 4, !dbg !102
  %cmp7 = icmp ne i32 %8, 5, !dbg !104
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !105

if.then8:                                         ; preds = %if.end6
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !106
  br label %if.end10, !dbg !108

if.else:                                          ; preds = %if.end6
  %9 = load i8*, i8** %data, align 8, !dbg !109
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %9), !dbg !111
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  ret void, !dbg !112
}

declare dso_local void @printLine(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !113 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !116, metadata !DIExpression()), !dbg !117
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !117
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !117
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !118
  store i8* %arraydecay, i8** %data, align 8, !dbg !119
  %1 = load i32, i32* @staticFive, align 4, !dbg !120
  %cmp = icmp eq i32 %1, 5, !dbg !122
  br i1 %cmp, label %if.then, label %if.end6, !dbg !123

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !124, metadata !DIExpression()), !dbg !127
  %2 = load i8*, i8** %data, align 8, !dbg !128
  %call = call i64 @strlen(i8* %2) #6, !dbg !129
  store i64 %call, i64* %dataLen, align 8, !dbg !127
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !130, metadata !DIExpression()), !dbg !131
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !132
  store i8* %call1, i8** %environment, align 8, !dbg !131
  %3 = load i8*, i8** %environment, align 8, !dbg !133
  %cmp2 = icmp ne i8* %3, null, !dbg !135
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !136

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !137
  %5 = load i64, i64* %dataLen, align 8, !dbg !139
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !140
  %6 = load i8*, i8** %environment, align 8, !dbg !141
  %7 = load i64, i64* %dataLen, align 8, !dbg !142
  %sub = sub i64 100, %7, !dbg !143
  %sub4 = sub i64 %sub, 1, !dbg !144
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #7, !dbg !145
  br label %if.end, !dbg !146

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !147

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @staticFive, align 4, !dbg !148
  %cmp7 = icmp eq i32 %8, 5, !dbg !150
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !151

if.then8:                                         ; preds = %if.end6
  %9 = load i8*, i8** %data, align 8, !dbg !152
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %9), !dbg !154
  br label %if.end10, !dbg !155

if.end10:                                         ; preds = %if.then8, %if.end6
  ret void, !dbg !156
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !157 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !160, metadata !DIExpression()), !dbg !161
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !161
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !161
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !162
  store i8* %arraydecay, i8** %data, align 8, !dbg !163
  %1 = load i32, i32* @staticFive, align 4, !dbg !164
  %cmp = icmp ne i32 %1, 5, !dbg !166
  br i1 %cmp, label %if.then, label %if.else, !dbg !167

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !168
  br label %if.end, !dbg !170

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !171
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !173
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @staticFive, align 4, !dbg !174
  %cmp1 = icmp eq i32 %3, 5, !dbg !176
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !177

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !178
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !180
  br label %if.end4, !dbg !181

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !182
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !183 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !186, metadata !DIExpression()), !dbg !187
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !187
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !187
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !188
  store i8* %arraydecay, i8** %data, align 8, !dbg !189
  %1 = load i32, i32* @staticFive, align 4, !dbg !190
  %cmp = icmp eq i32 %1, 5, !dbg !192
  br i1 %cmp, label %if.then, label %if.end, !dbg !193

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !194
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !196
  br label %if.end, !dbg !197

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @staticFive, align 4, !dbg !198
  %cmp1 = icmp eq i32 %3, 5, !dbg !200
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !201

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !202
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !204
  br label %if.end4, !dbg !205

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !206
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_07_good() #0 !dbg !207 {
entry:
  call void @goodB2G1(), !dbg !208
  call void @goodB2G2(), !dbg !209
  call void @goodG2B1(), !dbg !210
  call void @goodG2B2(), !dbg !211
  ret void, !dbg !212
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
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "staticFive", scope: !2, file: !3, line: 36, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_07.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_728/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0}
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 12.0.0"}
!13 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_07_bad", scope: !3, file: !3, line: 40, type: !14, scopeLine: 41, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!14 = !DISubroutineType(types: !15)
!15 = !{null}
!16 = !DILocalVariable(name: "data", scope: !13, file: !3, line: 42, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DILocation(line: 42, column: 12, scope: !13)
!20 = !DILocalVariable(name: "dataBuffer", scope: !13, file: !3, line: 43, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 800, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 100)
!24 = !DILocation(line: 43, column: 10, scope: !13)
!25 = !DILocation(line: 44, column: 12, scope: !13)
!26 = !DILocation(line: 44, column: 10, scope: !13)
!27 = !DILocation(line: 45, column: 8, scope: !28)
!28 = distinct !DILexicalBlock(scope: !13, file: !3, line: 45, column: 8)
!29 = !DILocation(line: 45, column: 18, scope: !28)
!30 = !DILocation(line: 45, column: 8, scope: !13)
!31 = !DILocalVariable(name: "dataLen", scope: !32, file: !3, line: 49, type: !34)
!32 = distinct !DILexicalBlock(scope: !33, file: !3, line: 47, column: 9)
!33 = distinct !DILexicalBlock(scope: !28, file: !3, line: 46, column: 5)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 49, column: 20, scope: !32)
!38 = !DILocation(line: 49, column: 37, scope: !32)
!39 = !DILocation(line: 49, column: 30, scope: !32)
!40 = !DILocalVariable(name: "environment", scope: !32, file: !3, line: 50, type: !17)
!41 = !DILocation(line: 50, column: 20, scope: !32)
!42 = !DILocation(line: 50, column: 34, scope: !32)
!43 = !DILocation(line: 52, column: 17, scope: !44)
!44 = distinct !DILexicalBlock(scope: !32, file: !3, line: 52, column: 17)
!45 = !DILocation(line: 52, column: 29, scope: !44)
!46 = !DILocation(line: 52, column: 17, scope: !32)
!47 = !DILocation(line: 55, column: 25, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !3, line: 53, column: 13)
!49 = !DILocation(line: 55, column: 30, scope: !48)
!50 = !DILocation(line: 55, column: 29, scope: !48)
!51 = !DILocation(line: 55, column: 39, scope: !48)
!52 = !DILocation(line: 55, column: 56, scope: !48)
!53 = !DILocation(line: 55, column: 55, scope: !48)
!54 = !DILocation(line: 55, column: 63, scope: !48)
!55 = !DILocation(line: 55, column: 17, scope: !48)
!56 = !DILocation(line: 56, column: 13, scope: !48)
!57 = !DILocation(line: 58, column: 5, scope: !33)
!58 = !DILocation(line: 59, column: 8, scope: !59)
!59 = distinct !DILexicalBlock(scope: !13, file: !3, line: 59, column: 8)
!60 = !DILocation(line: 59, column: 18, scope: !59)
!61 = !DILocation(line: 59, column: 8, scope: !13)
!62 = !DILocation(line: 62, column: 16, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !3, line: 60, column: 5)
!64 = !DILocation(line: 62, column: 9, scope: !63)
!65 = !DILocation(line: 63, column: 5, scope: !63)
!66 = !DILocation(line: 64, column: 1, scope: !13)
!67 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 71, type: !14, scopeLine: 72, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!68 = !DILocalVariable(name: "data", scope: !67, file: !3, line: 73, type: !17)
!69 = !DILocation(line: 73, column: 12, scope: !67)
!70 = !DILocalVariable(name: "dataBuffer", scope: !67, file: !3, line: 74, type: !21)
!71 = !DILocation(line: 74, column: 10, scope: !67)
!72 = !DILocation(line: 75, column: 12, scope: !67)
!73 = !DILocation(line: 75, column: 10, scope: !67)
!74 = !DILocation(line: 76, column: 8, scope: !75)
!75 = distinct !DILexicalBlock(scope: !67, file: !3, line: 76, column: 8)
!76 = !DILocation(line: 76, column: 18, scope: !75)
!77 = !DILocation(line: 76, column: 8, scope: !67)
!78 = !DILocalVariable(name: "dataLen", scope: !79, file: !3, line: 80, type: !34)
!79 = distinct !DILexicalBlock(scope: !80, file: !3, line: 78, column: 9)
!80 = distinct !DILexicalBlock(scope: !75, file: !3, line: 77, column: 5)
!81 = !DILocation(line: 80, column: 20, scope: !79)
!82 = !DILocation(line: 80, column: 37, scope: !79)
!83 = !DILocation(line: 80, column: 30, scope: !79)
!84 = !DILocalVariable(name: "environment", scope: !79, file: !3, line: 81, type: !17)
!85 = !DILocation(line: 81, column: 20, scope: !79)
!86 = !DILocation(line: 81, column: 34, scope: !79)
!87 = !DILocation(line: 83, column: 17, scope: !88)
!88 = distinct !DILexicalBlock(scope: !79, file: !3, line: 83, column: 17)
!89 = !DILocation(line: 83, column: 29, scope: !88)
!90 = !DILocation(line: 83, column: 17, scope: !79)
!91 = !DILocation(line: 86, column: 25, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !3, line: 84, column: 13)
!93 = !DILocation(line: 86, column: 30, scope: !92)
!94 = !DILocation(line: 86, column: 29, scope: !92)
!95 = !DILocation(line: 86, column: 39, scope: !92)
!96 = !DILocation(line: 86, column: 56, scope: !92)
!97 = !DILocation(line: 86, column: 55, scope: !92)
!98 = !DILocation(line: 86, column: 63, scope: !92)
!99 = !DILocation(line: 86, column: 17, scope: !92)
!100 = !DILocation(line: 87, column: 13, scope: !92)
!101 = !DILocation(line: 89, column: 5, scope: !80)
!102 = !DILocation(line: 90, column: 8, scope: !103)
!103 = distinct !DILexicalBlock(scope: !67, file: !3, line: 90, column: 8)
!104 = !DILocation(line: 90, column: 18, scope: !103)
!105 = !DILocation(line: 90, column: 8, scope: !67)
!106 = !DILocation(line: 93, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !3, line: 91, column: 5)
!108 = !DILocation(line: 94, column: 5, scope: !107)
!109 = !DILocation(line: 98, column: 24, scope: !110)
!110 = distinct !DILexicalBlock(scope: !103, file: !3, line: 96, column: 5)
!111 = !DILocation(line: 98, column: 9, scope: !110)
!112 = !DILocation(line: 100, column: 1, scope: !67)
!113 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 103, type: !14, scopeLine: 104, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!114 = !DILocalVariable(name: "data", scope: !113, file: !3, line: 105, type: !17)
!115 = !DILocation(line: 105, column: 12, scope: !113)
!116 = !DILocalVariable(name: "dataBuffer", scope: !113, file: !3, line: 106, type: !21)
!117 = !DILocation(line: 106, column: 10, scope: !113)
!118 = !DILocation(line: 107, column: 12, scope: !113)
!119 = !DILocation(line: 107, column: 10, scope: !113)
!120 = !DILocation(line: 108, column: 8, scope: !121)
!121 = distinct !DILexicalBlock(scope: !113, file: !3, line: 108, column: 8)
!122 = !DILocation(line: 108, column: 18, scope: !121)
!123 = !DILocation(line: 108, column: 8, scope: !113)
!124 = !DILocalVariable(name: "dataLen", scope: !125, file: !3, line: 112, type: !34)
!125 = distinct !DILexicalBlock(scope: !126, file: !3, line: 110, column: 9)
!126 = distinct !DILexicalBlock(scope: !121, file: !3, line: 109, column: 5)
!127 = !DILocation(line: 112, column: 20, scope: !125)
!128 = !DILocation(line: 112, column: 37, scope: !125)
!129 = !DILocation(line: 112, column: 30, scope: !125)
!130 = !DILocalVariable(name: "environment", scope: !125, file: !3, line: 113, type: !17)
!131 = !DILocation(line: 113, column: 20, scope: !125)
!132 = !DILocation(line: 113, column: 34, scope: !125)
!133 = !DILocation(line: 115, column: 17, scope: !134)
!134 = distinct !DILexicalBlock(scope: !125, file: !3, line: 115, column: 17)
!135 = !DILocation(line: 115, column: 29, scope: !134)
!136 = !DILocation(line: 115, column: 17, scope: !125)
!137 = !DILocation(line: 118, column: 25, scope: !138)
!138 = distinct !DILexicalBlock(scope: !134, file: !3, line: 116, column: 13)
!139 = !DILocation(line: 118, column: 30, scope: !138)
!140 = !DILocation(line: 118, column: 29, scope: !138)
!141 = !DILocation(line: 118, column: 39, scope: !138)
!142 = !DILocation(line: 118, column: 56, scope: !138)
!143 = !DILocation(line: 118, column: 55, scope: !138)
!144 = !DILocation(line: 118, column: 63, scope: !138)
!145 = !DILocation(line: 118, column: 17, scope: !138)
!146 = !DILocation(line: 119, column: 13, scope: !138)
!147 = !DILocation(line: 121, column: 5, scope: !126)
!148 = !DILocation(line: 122, column: 8, scope: !149)
!149 = distinct !DILexicalBlock(scope: !113, file: !3, line: 122, column: 8)
!150 = !DILocation(line: 122, column: 18, scope: !149)
!151 = !DILocation(line: 122, column: 8, scope: !113)
!152 = !DILocation(line: 125, column: 24, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !3, line: 123, column: 5)
!154 = !DILocation(line: 125, column: 9, scope: !153)
!155 = !DILocation(line: 126, column: 5, scope: !153)
!156 = !DILocation(line: 127, column: 1, scope: !113)
!157 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 130, type: !14, scopeLine: 131, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!158 = !DILocalVariable(name: "data", scope: !157, file: !3, line: 132, type: !17)
!159 = !DILocation(line: 132, column: 12, scope: !157)
!160 = !DILocalVariable(name: "dataBuffer", scope: !157, file: !3, line: 133, type: !21)
!161 = !DILocation(line: 133, column: 10, scope: !157)
!162 = !DILocation(line: 134, column: 12, scope: !157)
!163 = !DILocation(line: 134, column: 10, scope: !157)
!164 = !DILocation(line: 135, column: 8, scope: !165)
!165 = distinct !DILexicalBlock(scope: !157, file: !3, line: 135, column: 8)
!166 = !DILocation(line: 135, column: 18, scope: !165)
!167 = !DILocation(line: 135, column: 8, scope: !157)
!168 = !DILocation(line: 138, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !3, line: 136, column: 5)
!170 = !DILocation(line: 139, column: 5, scope: !169)
!171 = !DILocation(line: 143, column: 16, scope: !172)
!172 = distinct !DILexicalBlock(scope: !165, file: !3, line: 141, column: 5)
!173 = !DILocation(line: 143, column: 9, scope: !172)
!174 = !DILocation(line: 145, column: 8, scope: !175)
!175 = distinct !DILexicalBlock(scope: !157, file: !3, line: 145, column: 8)
!176 = !DILocation(line: 145, column: 18, scope: !175)
!177 = !DILocation(line: 145, column: 8, scope: !157)
!178 = !DILocation(line: 148, column: 16, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !3, line: 146, column: 5)
!180 = !DILocation(line: 148, column: 9, scope: !179)
!181 = !DILocation(line: 149, column: 5, scope: !179)
!182 = !DILocation(line: 150, column: 1, scope: !157)
!183 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 153, type: !14, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!184 = !DILocalVariable(name: "data", scope: !183, file: !3, line: 155, type: !17)
!185 = !DILocation(line: 155, column: 12, scope: !183)
!186 = !DILocalVariable(name: "dataBuffer", scope: !183, file: !3, line: 156, type: !21)
!187 = !DILocation(line: 156, column: 10, scope: !183)
!188 = !DILocation(line: 157, column: 12, scope: !183)
!189 = !DILocation(line: 157, column: 10, scope: !183)
!190 = !DILocation(line: 158, column: 8, scope: !191)
!191 = distinct !DILexicalBlock(scope: !183, file: !3, line: 158, column: 8)
!192 = !DILocation(line: 158, column: 18, scope: !191)
!193 = !DILocation(line: 158, column: 8, scope: !183)
!194 = !DILocation(line: 161, column: 16, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !3, line: 159, column: 5)
!196 = !DILocation(line: 161, column: 9, scope: !195)
!197 = !DILocation(line: 162, column: 5, scope: !195)
!198 = !DILocation(line: 163, column: 8, scope: !199)
!199 = distinct !DILexicalBlock(scope: !183, file: !3, line: 163, column: 8)
!200 = !DILocation(line: 163, column: 18, scope: !199)
!201 = !DILocation(line: 163, column: 8, scope: !183)
!202 = !DILocation(line: 166, column: 16, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !3, line: 164, column: 5)
!204 = !DILocation(line: 166, column: 9, scope: !203)
!205 = !DILocation(line: 167, column: 5, scope: !203)
!206 = !DILocation(line: 168, column: 1, scope: !183)
!207 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_07_good", scope: !3, file: !3, line: 170, type: !14, scopeLine: 171, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!208 = !DILocation(line: 172, column: 5, scope: !207)
!209 = !DILocation(line: 173, column: 5, scope: !207)
!210 = !DILocation(line: 174, column: 5, scope: !207)
!211 = !DILocation(line: 175, column: 5, scope: !207)
!212 = !DILocation(line: 176, column: 1, scope: !207)
