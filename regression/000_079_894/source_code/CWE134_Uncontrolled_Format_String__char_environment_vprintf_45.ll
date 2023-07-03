; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_vprintf_45.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_vprintf_45.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_badData = dso_local global i8* null, align 8, !dbg !0
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_goodG2BData = dso_local global i8* null, align 8, !dbg !8
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_goodB2GData = dso_local global i8* null, align 8, !dbg !12

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !18 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !23, metadata !DIExpression()), !dbg !40
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !41
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !41
  call void @llvm.va_start(i8* %arraydecay1), !dbg !41
  %0 = load i8*, i8** %data.addr, align 8, !dbg !42
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !43
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !44
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !45
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !45
  call void @llvm.va_end(i8* %arraydecay34), !dbg !45
  ret void, !dbg !46
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink() #0 !dbg !47 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !50, metadata !DIExpression()), !dbg !51
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_badData, align 8, !dbg !52
  store i8* %0, i8** %data, align 8, !dbg !51
  %1 = load i8*, i8** %data, align 8, !dbg !53
  %2 = load i8*, i8** %data, align 8, !dbg !54
  call void (i8*, ...) @badVaSink(i8* %1, i8* %2), !dbg !55
  ret void, !dbg !56
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_bad() #0 !dbg !57 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !60, metadata !DIExpression()), !dbg !64
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !64
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !64
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !65
  store i8* %arraydecay, i8** %data, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !72
  %1 = load i8*, i8** %data, align 8, !dbg !73
  %call = call i64 @strlen(i8* %1) #7, !dbg !74
  store i64 %call, i64* %dataLen, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !75, metadata !DIExpression()), !dbg !76
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !77
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
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !90
  br label %if.end, !dbg !91

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !92
  store i8* %7, i8** @CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_badData, align 8, !dbg !93
  call void @badSink(), !dbg !94
  ret void, !dbg !95
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #6

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !96 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !99, metadata !DIExpression()), !dbg !101
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !102
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !102
  call void @llvm.va_start(i8* %arraydecay1), !dbg !102
  %0 = load i8*, i8** %data.addr, align 8, !dbg !103
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !104
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !105
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !106
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !106
  call void @llvm.va_end(i8* %arraydecay34), !dbg !106
  ret void, !dbg !107
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink() #0 !dbg !108 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !109, metadata !DIExpression()), !dbg !110
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_goodG2BData, align 8, !dbg !111
  store i8* %0, i8** %data, align 8, !dbg !110
  %1 = load i8*, i8** %data, align 8, !dbg !112
  %2 = load i8*, i8** %data, align 8, !dbg !113
  call void (i8*, ...) @goodG2BVaSink(i8* %1, i8* %2), !dbg !114
  ret void, !dbg !115
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !116 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !119, metadata !DIExpression()), !dbg !120
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !120
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !120
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !121
  store i8* %arraydecay, i8** %data, align 8, !dbg !122
  %1 = load i8*, i8** %data, align 8, !dbg !123
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !124
  %2 = load i8*, i8** %data, align 8, !dbg !125
  store i8* %2, i8** @CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_goodG2BData, align 8, !dbg !126
  call void @goodG2BSink(), !dbg !127
  ret void, !dbg !128
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !129 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !132, metadata !DIExpression()), !dbg !134
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !135
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !135
  call void @llvm.va_start(i8* %arraydecay1), !dbg !135
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !136
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !137
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !138
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !138
  call void @llvm.va_end(i8* %arraydecay34), !dbg !138
  ret void, !dbg !139
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink() #0 !dbg !140 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !141, metadata !DIExpression()), !dbg !142
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_goodB2GData, align 8, !dbg !143
  store i8* %0, i8** %data, align 8, !dbg !142
  %1 = load i8*, i8** %data, align 8, !dbg !144
  %2 = load i8*, i8** %data, align 8, !dbg !145
  call void (i8*, ...) @goodB2GVaSink(i8* %1, i8* %2), !dbg !146
  ret void, !dbg !147
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !148 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !151, metadata !DIExpression()), !dbg !152
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !152
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !152
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !153
  store i8* %arraydecay, i8** %data, align 8, !dbg !154
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !155, metadata !DIExpression()), !dbg !157
  %1 = load i8*, i8** %data, align 8, !dbg !158
  %call = call i64 @strlen(i8* %1) #7, !dbg !159
  store i64 %call, i64* %dataLen, align 8, !dbg !157
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !160, metadata !DIExpression()), !dbg !161
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !162
  store i8* %call1, i8** %environment, align 8, !dbg !161
  %2 = load i8*, i8** %environment, align 8, !dbg !163
  %cmp = icmp ne i8* %2, null, !dbg !165
  br i1 %cmp, label %if.then, label %if.end, !dbg !166

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !167
  %4 = load i64, i64* %dataLen, align 8, !dbg !169
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !170
  %5 = load i8*, i8** %environment, align 8, !dbg !171
  %6 = load i64, i64* %dataLen, align 8, !dbg !172
  %sub = sub i64 100, %6, !dbg !173
  %sub2 = sub i64 %sub, 1, !dbg !174
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !175
  br label %if.end, !dbg !176

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !177
  store i8* %7, i8** @CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_goodB2GData, align 8, !dbg !178
  call void @goodB2GSink(), !dbg !179
  ret void, !dbg !180
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_good() #0 !dbg !181 {
entry:
  call void @goodG2B(), !dbg !182
  call void @goodB2G(), !dbg !183
  ret void, !dbg !184
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_badData", scope: !2, file: !3, line: 34, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_45.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_894/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8, !12}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_goodG2BData", scope: !2, file: !3, line: 35, type: !10, isLocal: false, isDefinition: true)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_goodB2GData", scope: !2, file: !3, line: 36, type: !10, isLocal: false, isDefinition: true)
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 12.0.0"}
!18 = distinct !DISubprogram(name: "badVaSink", scope: !3, file: !3, line: 40, type: !19, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !10, null}
!21 = !DILocalVariable(name: "data", arg: 1, scope: !18, file: !3, line: 40, type: !10)
!22 = !DILocation(line: 40, column: 23, scope: !18)
!23 = !DILocalVariable(name: "args", scope: !24, file: !3, line: 43, type: !25)
!24 = distinct !DILexicalBlock(scope: !18, file: !3, line: 42, column: 5)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !26, line: 52, baseType: !27)
!26 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !28, line: 32, baseType: !29)
!28 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 192, elements: !38)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !32)
!32 = !{!33, !35, !36, !37}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !31, file: !3, line: 43, baseType: !34, size: 32)
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !31, file: !3, line: 43, baseType: !34, size: 32, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !31, file: !3, line: 43, baseType: !6, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !31, file: !3, line: 43, baseType: !6, size: 64, offset: 128)
!38 = !{!39}
!39 = !DISubrange(count: 1)
!40 = !DILocation(line: 43, column: 17, scope: !24)
!41 = !DILocation(line: 44, column: 9, scope: !24)
!42 = !DILocation(line: 46, column: 17, scope: !24)
!43 = !DILocation(line: 46, column: 23, scope: !24)
!44 = !DILocation(line: 46, column: 9, scope: !24)
!45 = !DILocation(line: 47, column: 9, scope: !24)
!46 = !DILocation(line: 49, column: 1, scope: !18)
!47 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 51, type: !48, scopeLine: 52, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!48 = !DISubroutineType(types: !49)
!49 = !{null}
!50 = !DILocalVariable(name: "data", scope: !47, file: !3, line: 53, type: !10)
!51 = !DILocation(line: 53, column: 12, scope: !47)
!52 = !DILocation(line: 53, column: 19, scope: !47)
!53 = !DILocation(line: 54, column: 15, scope: !47)
!54 = !DILocation(line: 54, column: 21, scope: !47)
!55 = !DILocation(line: 54, column: 5, scope: !47)
!56 = !DILocation(line: 55, column: 1, scope: !47)
!57 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_bad", scope: !3, file: !3, line: 57, type: !48, scopeLine: 58, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!58 = !DILocalVariable(name: "data", scope: !57, file: !3, line: 59, type: !10)
!59 = !DILocation(line: 59, column: 12, scope: !57)
!60 = !DILocalVariable(name: "dataBuffer", scope: !57, file: !3, line: 60, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 100)
!64 = !DILocation(line: 60, column: 10, scope: !57)
!65 = !DILocation(line: 61, column: 12, scope: !57)
!66 = !DILocation(line: 61, column: 10, scope: !57)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !3, line: 64, type: !69)
!68 = distinct !DILexicalBlock(scope: !57, file: !3, line: 62, column: 5)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!71 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DILocation(line: 64, column: 16, scope: !68)
!73 = !DILocation(line: 64, column: 33, scope: !68)
!74 = !DILocation(line: 64, column: 26, scope: !68)
!75 = !DILocalVariable(name: "environment", scope: !68, file: !3, line: 65, type: !10)
!76 = !DILocation(line: 65, column: 16, scope: !68)
!77 = !DILocation(line: 65, column: 30, scope: !68)
!78 = !DILocation(line: 67, column: 13, scope: !79)
!79 = distinct !DILexicalBlock(scope: !68, file: !3, line: 67, column: 13)
!80 = !DILocation(line: 67, column: 25, scope: !79)
!81 = !DILocation(line: 67, column: 13, scope: !68)
!82 = !DILocation(line: 70, column: 21, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !3, line: 68, column: 9)
!84 = !DILocation(line: 70, column: 26, scope: !83)
!85 = !DILocation(line: 70, column: 25, scope: !83)
!86 = !DILocation(line: 70, column: 35, scope: !83)
!87 = !DILocation(line: 70, column: 52, scope: !83)
!88 = !DILocation(line: 70, column: 51, scope: !83)
!89 = !DILocation(line: 70, column: 59, scope: !83)
!90 = !DILocation(line: 70, column: 13, scope: !83)
!91 = !DILocation(line: 71, column: 9, scope: !83)
!92 = !DILocation(line: 73, column: 78, scope: !57)
!93 = !DILocation(line: 73, column: 76, scope: !57)
!94 = !DILocation(line: 74, column: 5, scope: !57)
!95 = !DILocation(line: 75, column: 1, scope: !57)
!96 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !3, file: !3, line: 82, type: !19, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!97 = !DILocalVariable(name: "data", arg: 1, scope: !96, file: !3, line: 82, type: !10)
!98 = !DILocation(line: 82, column: 27, scope: !96)
!99 = !DILocalVariable(name: "args", scope: !100, file: !3, line: 85, type: !25)
!100 = distinct !DILexicalBlock(scope: !96, file: !3, line: 84, column: 5)
!101 = !DILocation(line: 85, column: 17, scope: !100)
!102 = !DILocation(line: 86, column: 9, scope: !100)
!103 = !DILocation(line: 88, column: 17, scope: !100)
!104 = !DILocation(line: 88, column: 23, scope: !100)
!105 = !DILocation(line: 88, column: 9, scope: !100)
!106 = !DILocation(line: 89, column: 9, scope: !100)
!107 = !DILocation(line: 91, column: 1, scope: !96)
!108 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 93, type: !48, scopeLine: 94, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!109 = !DILocalVariable(name: "data", scope: !108, file: !3, line: 95, type: !10)
!110 = !DILocation(line: 95, column: 12, scope: !108)
!111 = !DILocation(line: 95, column: 19, scope: !108)
!112 = !DILocation(line: 96, column: 19, scope: !108)
!113 = !DILocation(line: 96, column: 25, scope: !108)
!114 = !DILocation(line: 96, column: 5, scope: !108)
!115 = !DILocation(line: 97, column: 1, scope: !108)
!116 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 99, type: !48, scopeLine: 100, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!117 = !DILocalVariable(name: "data", scope: !116, file: !3, line: 101, type: !10)
!118 = !DILocation(line: 101, column: 12, scope: !116)
!119 = !DILocalVariable(name: "dataBuffer", scope: !116, file: !3, line: 102, type: !61)
!120 = !DILocation(line: 102, column: 10, scope: !116)
!121 = !DILocation(line: 103, column: 12, scope: !116)
!122 = !DILocation(line: 103, column: 10, scope: !116)
!123 = !DILocation(line: 105, column: 12, scope: !116)
!124 = !DILocation(line: 105, column: 5, scope: !116)
!125 = !DILocation(line: 106, column: 82, scope: !116)
!126 = !DILocation(line: 106, column: 80, scope: !116)
!127 = !DILocation(line: 107, column: 5, scope: !116)
!128 = !DILocation(line: 108, column: 1, scope: !116)
!129 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !3, file: !3, line: 111, type: !19, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!130 = !DILocalVariable(name: "data", arg: 1, scope: !129, file: !3, line: 111, type: !10)
!131 = !DILocation(line: 111, column: 27, scope: !129)
!132 = !DILocalVariable(name: "args", scope: !133, file: !3, line: 114, type: !25)
!133 = distinct !DILexicalBlock(scope: !129, file: !3, line: 113, column: 5)
!134 = !DILocation(line: 114, column: 17, scope: !133)
!135 = !DILocation(line: 115, column: 9, scope: !133)
!136 = !DILocation(line: 117, column: 23, scope: !133)
!137 = !DILocation(line: 117, column: 9, scope: !133)
!138 = !DILocation(line: 118, column: 9, scope: !133)
!139 = !DILocation(line: 120, column: 1, scope: !129)
!140 = distinct !DISubprogram(name: "goodB2GSink", scope: !3, file: !3, line: 122, type: !48, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!141 = !DILocalVariable(name: "data", scope: !140, file: !3, line: 124, type: !10)
!142 = !DILocation(line: 124, column: 12, scope: !140)
!143 = !DILocation(line: 124, column: 19, scope: !140)
!144 = !DILocation(line: 125, column: 19, scope: !140)
!145 = !DILocation(line: 125, column: 25, scope: !140)
!146 = !DILocation(line: 125, column: 5, scope: !140)
!147 = !DILocation(line: 126, column: 1, scope: !140)
!148 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 128, type: !48, scopeLine: 129, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!149 = !DILocalVariable(name: "data", scope: !148, file: !3, line: 130, type: !10)
!150 = !DILocation(line: 130, column: 12, scope: !148)
!151 = !DILocalVariable(name: "dataBuffer", scope: !148, file: !3, line: 131, type: !61)
!152 = !DILocation(line: 131, column: 10, scope: !148)
!153 = !DILocation(line: 132, column: 12, scope: !148)
!154 = !DILocation(line: 132, column: 10, scope: !148)
!155 = !DILocalVariable(name: "dataLen", scope: !156, file: !3, line: 135, type: !69)
!156 = distinct !DILexicalBlock(scope: !148, file: !3, line: 133, column: 5)
!157 = !DILocation(line: 135, column: 16, scope: !156)
!158 = !DILocation(line: 135, column: 33, scope: !156)
!159 = !DILocation(line: 135, column: 26, scope: !156)
!160 = !DILocalVariable(name: "environment", scope: !156, file: !3, line: 136, type: !10)
!161 = !DILocation(line: 136, column: 16, scope: !156)
!162 = !DILocation(line: 136, column: 30, scope: !156)
!163 = !DILocation(line: 138, column: 13, scope: !164)
!164 = distinct !DILexicalBlock(scope: !156, file: !3, line: 138, column: 13)
!165 = !DILocation(line: 138, column: 25, scope: !164)
!166 = !DILocation(line: 138, column: 13, scope: !156)
!167 = !DILocation(line: 141, column: 21, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !3, line: 139, column: 9)
!169 = !DILocation(line: 141, column: 26, scope: !168)
!170 = !DILocation(line: 141, column: 25, scope: !168)
!171 = !DILocation(line: 141, column: 35, scope: !168)
!172 = !DILocation(line: 141, column: 52, scope: !168)
!173 = !DILocation(line: 141, column: 51, scope: !168)
!174 = !DILocation(line: 141, column: 59, scope: !168)
!175 = !DILocation(line: 141, column: 13, scope: !168)
!176 = !DILocation(line: 142, column: 9, scope: !168)
!177 = !DILocation(line: 144, column: 82, scope: !148)
!178 = !DILocation(line: 144, column: 80, scope: !148)
!179 = !DILocation(line: 145, column: 5, scope: !148)
!180 = !DILocation(line: 146, column: 1, scope: !148)
!181 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_good", scope: !3, file: !3, line: 148, type: !48, scopeLine: 149, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!182 = !DILocation(line: 150, column: 5, scope: !181)
!183 = !DILocation(line: 151, column: 5, scope: !181)
!184 = !DILocation(line: 152, column: 1, scope: !181)
