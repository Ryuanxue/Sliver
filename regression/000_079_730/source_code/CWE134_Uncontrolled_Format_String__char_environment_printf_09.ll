; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_09.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_09.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLOBAL_CONST_TRUE = external dso_local global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@GLOBAL_CONST_FALSE = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_09_bad() #0 !dbg !9 {
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
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !23
  %tobool = icmp ne i32 %1, 0, !dbg !23
  br i1 %tobool, label %if.then, label %if.end5, !dbg !25

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !26, metadata !DIExpression()), !dbg !32
  %2 = load i8*, i8** %data, align 8, !dbg !33
  %call = call i64 @strlen(i8* %2) #6, !dbg !34
  store i64 %call, i64* %dataLen, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !35, metadata !DIExpression()), !dbg !36
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !37
  store i8* %call1, i8** %environment, align 8, !dbg !36
  %3 = load i8*, i8** %environment, align 8, !dbg !38
  %cmp = icmp ne i8* %3, null, !dbg !40
  br i1 %cmp, label %if.then2, label %if.end, !dbg !41

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !42
  %5 = load i64, i64* %dataLen, align 8, !dbg !44
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !45
  %6 = load i8*, i8** %environment, align 8, !dbg !46
  %7 = load i64, i64* %dataLen, align 8, !dbg !47
  %sub = sub i64 100, %7, !dbg !48
  %sub3 = sub i64 %sub, 1, !dbg !49
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !50
  br label %if.end, !dbg !51

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !52

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !53
  %tobool6 = icmp ne i32 %8, 0, !dbg !53
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !55

if.then7:                                         ; preds = %if.end5
  %9 = load i8*, i8** %data, align 8, !dbg !56
  %call8 = call i32 (i8*, ...) @printf(i8* %9), !dbg !58
  br label %if.end9, !dbg !59

if.end9:                                          ; preds = %if.then7, %if.end5
  ret void, !dbg !60
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
define dso_local void @goodB2G1() #0 !dbg !61 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !64, metadata !DIExpression()), !dbg !65
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !65
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !65
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !66
  store i8* %arraydecay, i8** %data, align 8, !dbg !67
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !68
  %tobool = icmp ne i32 %1, 0, !dbg !68
  br i1 %tobool, label %if.then, label %if.end5, !dbg !70

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !71, metadata !DIExpression()), !dbg !74
  %2 = load i8*, i8** %data, align 8, !dbg !75
  %call = call i64 @strlen(i8* %2) #6, !dbg !76
  store i64 %call, i64* %dataLen, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !77, metadata !DIExpression()), !dbg !78
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !79
  store i8* %call1, i8** %environment, align 8, !dbg !78
  %3 = load i8*, i8** %environment, align 8, !dbg !80
  %cmp = icmp ne i8* %3, null, !dbg !82
  br i1 %cmp, label %if.then2, label %if.end, !dbg !83

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !84
  %5 = load i64, i64* %dataLen, align 8, !dbg !86
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !87
  %6 = load i8*, i8** %environment, align 8, !dbg !88
  %7 = load i64, i64* %dataLen, align 8, !dbg !89
  %sub = sub i64 100, %7, !dbg !90
  %sub3 = sub i64 %sub, 1, !dbg !91
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !92
  br label %if.end, !dbg !93

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !94

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @GLOBAL_CONST_FALSE, align 4, !dbg !95
  %tobool6 = icmp ne i32 %8, 0, !dbg !95
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !97

if.then7:                                         ; preds = %if.end5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !98
  br label %if.end9, !dbg !100

if.else:                                          ; preds = %if.end5
  %9 = load i8*, i8** %data, align 8, !dbg !101
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %9), !dbg !103
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  ret void, !dbg !104
}

declare dso_local void @printLine(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !105 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !108, metadata !DIExpression()), !dbg !109
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !109
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !109
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !110
  store i8* %arraydecay, i8** %data, align 8, !dbg !111
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !112
  %tobool = icmp ne i32 %1, 0, !dbg !112
  br i1 %tobool, label %if.then, label %if.end5, !dbg !114

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !115, metadata !DIExpression()), !dbg !118
  %2 = load i8*, i8** %data, align 8, !dbg !119
  %call = call i64 @strlen(i8* %2) #6, !dbg !120
  store i64 %call, i64* %dataLen, align 8, !dbg !118
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !121, metadata !DIExpression()), !dbg !122
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !123
  store i8* %call1, i8** %environment, align 8, !dbg !122
  %3 = load i8*, i8** %environment, align 8, !dbg !124
  %cmp = icmp ne i8* %3, null, !dbg !126
  br i1 %cmp, label %if.then2, label %if.end, !dbg !127

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !128
  %5 = load i64, i64* %dataLen, align 8, !dbg !130
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !131
  %6 = load i8*, i8** %environment, align 8, !dbg !132
  %7 = load i64, i64* %dataLen, align 8, !dbg !133
  %sub = sub i64 100, %7, !dbg !134
  %sub3 = sub i64 %sub, 1, !dbg !135
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !136
  br label %if.end, !dbg !137

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !138

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !139
  %tobool6 = icmp ne i32 %8, 0, !dbg !139
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !141

if.then7:                                         ; preds = %if.end5
  %9 = load i8*, i8** %data, align 8, !dbg !142
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %9), !dbg !144
  br label %if.end9, !dbg !145

if.end9:                                          ; preds = %if.then7, %if.end5
  ret void, !dbg !146
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !147 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !150, metadata !DIExpression()), !dbg !151
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !151
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !151
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !152
  store i8* %arraydecay, i8** %data, align 8, !dbg !153
  %1 = load i32, i32* @GLOBAL_CONST_FALSE, align 4, !dbg !154
  %tobool = icmp ne i32 %1, 0, !dbg !154
  br i1 %tobool, label %if.then, label %if.else, !dbg !156

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !157
  br label %if.end, !dbg !159

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !160
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !162
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !163
  %tobool1 = icmp ne i32 %3, 0, !dbg !163
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !165

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !166
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !168
  br label %if.end4, !dbg !169

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !170
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !171 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !174, metadata !DIExpression()), !dbg !175
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !175
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !175
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !176
  store i8* %arraydecay, i8** %data, align 8, !dbg !177
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !178
  %tobool = icmp ne i32 %1, 0, !dbg !178
  br i1 %tobool, label %if.then, label %if.end, !dbg !180

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !181
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !183
  br label %if.end, !dbg !184

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !185
  %tobool1 = icmp ne i32 %3, 0, !dbg !185
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !187

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !188
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !190
  br label %if.end4, !dbg !191

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !192
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_09_good() #0 !dbg !193 {
entry:
  call void @goodB2G1(), !dbg !194
  call void @goodB2G2(), !dbg !195
  call void @goodG2B1(), !dbg !196
  call void @goodG2B2(), !dbg !197
  ret void, !dbg !198
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_09.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_730/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_09_bad", scope: !1, file: !1, line: 35, type: !10, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!23 = !DILocation(line: 40, column: 8, scope: !24)
!24 = distinct !DILexicalBlock(scope: !9, file: !1, line: 40, column: 8)
!25 = !DILocation(line: 40, column: 8, scope: !9)
!26 = !DILocalVariable(name: "dataLen", scope: !27, file: !1, line: 44, type: !29)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 42, column: 9)
!28 = distinct !DILexicalBlock(scope: !24, file: !1, line: 41, column: 5)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 46, baseType: !31)
!30 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!31 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !DILocation(line: 44, column: 20, scope: !27)
!33 = !DILocation(line: 44, column: 37, scope: !27)
!34 = !DILocation(line: 44, column: 30, scope: !27)
!35 = !DILocalVariable(name: "environment", scope: !27, file: !1, line: 45, type: !13)
!36 = !DILocation(line: 45, column: 20, scope: !27)
!37 = !DILocation(line: 45, column: 34, scope: !27)
!38 = !DILocation(line: 47, column: 17, scope: !39)
!39 = distinct !DILexicalBlock(scope: !27, file: !1, line: 47, column: 17)
!40 = !DILocation(line: 47, column: 29, scope: !39)
!41 = !DILocation(line: 47, column: 17, scope: !27)
!42 = !DILocation(line: 50, column: 25, scope: !43)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 48, column: 13)
!44 = !DILocation(line: 50, column: 30, scope: !43)
!45 = !DILocation(line: 50, column: 29, scope: !43)
!46 = !DILocation(line: 50, column: 39, scope: !43)
!47 = !DILocation(line: 50, column: 56, scope: !43)
!48 = !DILocation(line: 50, column: 55, scope: !43)
!49 = !DILocation(line: 50, column: 63, scope: !43)
!50 = !DILocation(line: 50, column: 17, scope: !43)
!51 = !DILocation(line: 51, column: 13, scope: !43)
!52 = !DILocation(line: 53, column: 5, scope: !28)
!53 = !DILocation(line: 54, column: 8, scope: !54)
!54 = distinct !DILexicalBlock(scope: !9, file: !1, line: 54, column: 8)
!55 = !DILocation(line: 54, column: 8, scope: !9)
!56 = !DILocation(line: 57, column: 16, scope: !57)
!57 = distinct !DILexicalBlock(scope: !54, file: !1, line: 55, column: 5)
!58 = !DILocation(line: 57, column: 9, scope: !57)
!59 = !DILocation(line: 58, column: 5, scope: !57)
!60 = !DILocation(line: 59, column: 1, scope: !9)
!61 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 66, type: !10, scopeLine: 67, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!62 = !DILocalVariable(name: "data", scope: !61, file: !1, line: 68, type: !13)
!63 = !DILocation(line: 68, column: 12, scope: !61)
!64 = !DILocalVariable(name: "dataBuffer", scope: !61, file: !1, line: 69, type: !17)
!65 = !DILocation(line: 69, column: 10, scope: !61)
!66 = !DILocation(line: 70, column: 12, scope: !61)
!67 = !DILocation(line: 70, column: 10, scope: !61)
!68 = !DILocation(line: 71, column: 8, scope: !69)
!69 = distinct !DILexicalBlock(scope: !61, file: !1, line: 71, column: 8)
!70 = !DILocation(line: 71, column: 8, scope: !61)
!71 = !DILocalVariable(name: "dataLen", scope: !72, file: !1, line: 75, type: !29)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 73, column: 9)
!73 = distinct !DILexicalBlock(scope: !69, file: !1, line: 72, column: 5)
!74 = !DILocation(line: 75, column: 20, scope: !72)
!75 = !DILocation(line: 75, column: 37, scope: !72)
!76 = !DILocation(line: 75, column: 30, scope: !72)
!77 = !DILocalVariable(name: "environment", scope: !72, file: !1, line: 76, type: !13)
!78 = !DILocation(line: 76, column: 20, scope: !72)
!79 = !DILocation(line: 76, column: 34, scope: !72)
!80 = !DILocation(line: 78, column: 17, scope: !81)
!81 = distinct !DILexicalBlock(scope: !72, file: !1, line: 78, column: 17)
!82 = !DILocation(line: 78, column: 29, scope: !81)
!83 = !DILocation(line: 78, column: 17, scope: !72)
!84 = !DILocation(line: 81, column: 25, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !1, line: 79, column: 13)
!86 = !DILocation(line: 81, column: 30, scope: !85)
!87 = !DILocation(line: 81, column: 29, scope: !85)
!88 = !DILocation(line: 81, column: 39, scope: !85)
!89 = !DILocation(line: 81, column: 56, scope: !85)
!90 = !DILocation(line: 81, column: 55, scope: !85)
!91 = !DILocation(line: 81, column: 63, scope: !85)
!92 = !DILocation(line: 81, column: 17, scope: !85)
!93 = !DILocation(line: 82, column: 13, scope: !85)
!94 = !DILocation(line: 84, column: 5, scope: !73)
!95 = !DILocation(line: 85, column: 8, scope: !96)
!96 = distinct !DILexicalBlock(scope: !61, file: !1, line: 85, column: 8)
!97 = !DILocation(line: 85, column: 8, scope: !61)
!98 = !DILocation(line: 88, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !1, line: 86, column: 5)
!100 = !DILocation(line: 89, column: 5, scope: !99)
!101 = !DILocation(line: 93, column: 24, scope: !102)
!102 = distinct !DILexicalBlock(scope: !96, file: !1, line: 91, column: 5)
!103 = !DILocation(line: 93, column: 9, scope: !102)
!104 = !DILocation(line: 95, column: 1, scope: !61)
!105 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 98, type: !10, scopeLine: 99, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!106 = !DILocalVariable(name: "data", scope: !105, file: !1, line: 100, type: !13)
!107 = !DILocation(line: 100, column: 12, scope: !105)
!108 = !DILocalVariable(name: "dataBuffer", scope: !105, file: !1, line: 101, type: !17)
!109 = !DILocation(line: 101, column: 10, scope: !105)
!110 = !DILocation(line: 102, column: 12, scope: !105)
!111 = !DILocation(line: 102, column: 10, scope: !105)
!112 = !DILocation(line: 103, column: 8, scope: !113)
!113 = distinct !DILexicalBlock(scope: !105, file: !1, line: 103, column: 8)
!114 = !DILocation(line: 103, column: 8, scope: !105)
!115 = !DILocalVariable(name: "dataLen", scope: !116, file: !1, line: 107, type: !29)
!116 = distinct !DILexicalBlock(scope: !117, file: !1, line: 105, column: 9)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 104, column: 5)
!118 = !DILocation(line: 107, column: 20, scope: !116)
!119 = !DILocation(line: 107, column: 37, scope: !116)
!120 = !DILocation(line: 107, column: 30, scope: !116)
!121 = !DILocalVariable(name: "environment", scope: !116, file: !1, line: 108, type: !13)
!122 = !DILocation(line: 108, column: 20, scope: !116)
!123 = !DILocation(line: 108, column: 34, scope: !116)
!124 = !DILocation(line: 110, column: 17, scope: !125)
!125 = distinct !DILexicalBlock(scope: !116, file: !1, line: 110, column: 17)
!126 = !DILocation(line: 110, column: 29, scope: !125)
!127 = !DILocation(line: 110, column: 17, scope: !116)
!128 = !DILocation(line: 113, column: 25, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 111, column: 13)
!130 = !DILocation(line: 113, column: 30, scope: !129)
!131 = !DILocation(line: 113, column: 29, scope: !129)
!132 = !DILocation(line: 113, column: 39, scope: !129)
!133 = !DILocation(line: 113, column: 56, scope: !129)
!134 = !DILocation(line: 113, column: 55, scope: !129)
!135 = !DILocation(line: 113, column: 63, scope: !129)
!136 = !DILocation(line: 113, column: 17, scope: !129)
!137 = !DILocation(line: 114, column: 13, scope: !129)
!138 = !DILocation(line: 116, column: 5, scope: !117)
!139 = !DILocation(line: 117, column: 8, scope: !140)
!140 = distinct !DILexicalBlock(scope: !105, file: !1, line: 117, column: 8)
!141 = !DILocation(line: 117, column: 8, scope: !105)
!142 = !DILocation(line: 120, column: 24, scope: !143)
!143 = distinct !DILexicalBlock(scope: !140, file: !1, line: 118, column: 5)
!144 = !DILocation(line: 120, column: 9, scope: !143)
!145 = !DILocation(line: 121, column: 5, scope: !143)
!146 = !DILocation(line: 122, column: 1, scope: !105)
!147 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 125, type: !10, scopeLine: 126, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!148 = !DILocalVariable(name: "data", scope: !147, file: !1, line: 127, type: !13)
!149 = !DILocation(line: 127, column: 12, scope: !147)
!150 = !DILocalVariable(name: "dataBuffer", scope: !147, file: !1, line: 128, type: !17)
!151 = !DILocation(line: 128, column: 10, scope: !147)
!152 = !DILocation(line: 129, column: 12, scope: !147)
!153 = !DILocation(line: 129, column: 10, scope: !147)
!154 = !DILocation(line: 130, column: 8, scope: !155)
!155 = distinct !DILexicalBlock(scope: !147, file: !1, line: 130, column: 8)
!156 = !DILocation(line: 130, column: 8, scope: !147)
!157 = !DILocation(line: 133, column: 9, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !1, line: 131, column: 5)
!159 = !DILocation(line: 134, column: 5, scope: !158)
!160 = !DILocation(line: 138, column: 16, scope: !161)
!161 = distinct !DILexicalBlock(scope: !155, file: !1, line: 136, column: 5)
!162 = !DILocation(line: 138, column: 9, scope: !161)
!163 = !DILocation(line: 140, column: 8, scope: !164)
!164 = distinct !DILexicalBlock(scope: !147, file: !1, line: 140, column: 8)
!165 = !DILocation(line: 140, column: 8, scope: !147)
!166 = !DILocation(line: 143, column: 16, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !1, line: 141, column: 5)
!168 = !DILocation(line: 143, column: 9, scope: !167)
!169 = !DILocation(line: 144, column: 5, scope: !167)
!170 = !DILocation(line: 145, column: 1, scope: !147)
!171 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 148, type: !10, scopeLine: 149, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!172 = !DILocalVariable(name: "data", scope: !171, file: !1, line: 150, type: !13)
!173 = !DILocation(line: 150, column: 12, scope: !171)
!174 = !DILocalVariable(name: "dataBuffer", scope: !171, file: !1, line: 151, type: !17)
!175 = !DILocation(line: 151, column: 10, scope: !171)
!176 = !DILocation(line: 152, column: 12, scope: !171)
!177 = !DILocation(line: 152, column: 10, scope: !171)
!178 = !DILocation(line: 153, column: 8, scope: !179)
!179 = distinct !DILexicalBlock(scope: !171, file: !1, line: 153, column: 8)
!180 = !DILocation(line: 153, column: 8, scope: !171)
!181 = !DILocation(line: 156, column: 16, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !1, line: 154, column: 5)
!183 = !DILocation(line: 156, column: 9, scope: !182)
!184 = !DILocation(line: 157, column: 5, scope: !182)
!185 = !DILocation(line: 158, column: 8, scope: !186)
!186 = distinct !DILexicalBlock(scope: !171, file: !1, line: 158, column: 8)
!187 = !DILocation(line: 158, column: 8, scope: !171)
!188 = !DILocation(line: 161, column: 16, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !1, line: 159, column: 5)
!190 = !DILocation(line: 161, column: 9, scope: !189)
!191 = !DILocation(line: 162, column: 5, scope: !189)
!192 = !DILocation(line: 163, column: 1, scope: !171)
!193 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_09_good", scope: !1, file: !1, line: 165, type: !10, scopeLine: 166, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!194 = !DILocation(line: 167, column: 5, scope: !193)
!195 = !DILocation(line: 168, column: 5, scope: !193)
!196 = !DILocation(line: 169, column: 5, scope: !193)
!197 = !DILocation(line: 170, column: 5, scope: !193)
!198 = !DILocation(line: 171, column: 1, scope: !193)
