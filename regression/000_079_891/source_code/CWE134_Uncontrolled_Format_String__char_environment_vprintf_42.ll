; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_vprintf_42.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_vprintf_42.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @badSource(i8* %data) #0 !dbg !9 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !16, metadata !DIExpression()), !dbg !21
  %0 = load i8*, i8** %data.addr, align 8, !dbg !22
  %call = call i64 @strlen(i8* %0) #7, !dbg !23
  store i64 %call, i64* %dataLen, align 8, !dbg !21
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !24, metadata !DIExpression()), !dbg !25
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !26
  store i8* %call1, i8** %environment, align 8, !dbg !25
  %1 = load i8*, i8** %environment, align 8, !dbg !27
  %cmp = icmp ne i8* %1, null, !dbg !29
  br i1 %cmp, label %if.then, label %if.end, !dbg !30

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !31
  %3 = load i64, i64* %dataLen, align 8, !dbg !33
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !34
  %4 = load i8*, i8** %environment, align 8, !dbg !35
  %5 = load i64, i64* %dataLen, align 8, !dbg !36
  %sub = sub i64 100, %5, !dbg !37
  %sub2 = sub i64 %sub, 1, !dbg !38
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %4, i64 %sub2) #8, !dbg !39
  br label %if.end, !dbg !40

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %data.addr, align 8, !dbg !41
  ret i8* %6, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !43 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !48, metadata !DIExpression()), !dbg !65
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !66
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !66
  call void @llvm.va_start(i8* %arraydecay1), !dbg !66
  %0 = load i8*, i8** %data.addr, align 8, !dbg !67
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !68
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !69
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !70
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !70
  call void @llvm.va_end(i8* %arraydecay34), !dbg !70
  ret void, !dbg !71
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #4

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #5

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_42_bad() #0 !dbg !72 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !77, metadata !DIExpression()), !dbg !81
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !81
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !81
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !82
  store i8* %arraydecay, i8** %data, align 8, !dbg !83
  %1 = load i8*, i8** %data, align 8, !dbg !84
  %call = call i8* @badSource(i8* %1), !dbg !85
  store i8* %call, i8** %data, align 8, !dbg !86
  %2 = load i8*, i8** %data, align 8, !dbg !87
  %3 = load i8*, i8** %data, align 8, !dbg !88
  call void (i8*, ...) @badVaSink(i8* %2, i8* %3), !dbg !89
  ret void, !dbg !90
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodG2BSource(i8* %data) #0 !dbg !91 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !92, metadata !DIExpression()), !dbg !93
  %0 = load i8*, i8** %data.addr, align 8, !dbg !94
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !95
  %1 = load i8*, i8** %data.addr, align 8, !dbg !96
  ret i8* %1, !dbg !97
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !98 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !101, metadata !DIExpression()), !dbg !103
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !104
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !104
  call void @llvm.va_start(i8* %arraydecay1), !dbg !104
  %0 = load i8*, i8** %data.addr, align 8, !dbg !105
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !106
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !107
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !108
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !108
  call void @llvm.va_end(i8* %arraydecay34), !dbg !108
  ret void, !dbg !109
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !110 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !113, metadata !DIExpression()), !dbg !114
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !114
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !114
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !115
  store i8* %arraydecay, i8** %data, align 8, !dbg !116
  %1 = load i8*, i8** %data, align 8, !dbg !117
  %call = call i8* @goodG2BSource(i8* %1), !dbg !118
  store i8* %call, i8** %data, align 8, !dbg !119
  %2 = load i8*, i8** %data, align 8, !dbg !120
  %3 = load i8*, i8** %data, align 8, !dbg !121
  call void (i8*, ...) @goodG2BVaSink(i8* %2, i8* %3), !dbg !122
  ret void, !dbg !123
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodB2GSource(i8* %data) #0 !dbg !124 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !127, metadata !DIExpression()), !dbg !129
  %0 = load i8*, i8** %data.addr, align 8, !dbg !130
  %call = call i64 @strlen(i8* %0) #7, !dbg !131
  store i64 %call, i64* %dataLen, align 8, !dbg !129
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !132, metadata !DIExpression()), !dbg !133
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !134
  store i8* %call1, i8** %environment, align 8, !dbg !133
  %1 = load i8*, i8** %environment, align 8, !dbg !135
  %cmp = icmp ne i8* %1, null, !dbg !137
  br i1 %cmp, label %if.then, label %if.end, !dbg !138

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !139
  %3 = load i64, i64* %dataLen, align 8, !dbg !141
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !142
  %4 = load i8*, i8** %environment, align 8, !dbg !143
  %5 = load i64, i64* %dataLen, align 8, !dbg !144
  %sub = sub i64 100, %5, !dbg !145
  %sub2 = sub i64 %sub, 1, !dbg !146
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %4, i64 %sub2) #8, !dbg !147
  br label %if.end, !dbg !148

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %data.addr, align 8, !dbg !149
  ret i8* %6, !dbg !150
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !151 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !154, metadata !DIExpression()), !dbg !156
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !157
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !157
  call void @llvm.va_start(i8* %arraydecay1), !dbg !157
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !158
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !159
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !160
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !160
  call void @llvm.va_end(i8* %arraydecay34), !dbg !160
  ret void, !dbg !161
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !162 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !165, metadata !DIExpression()), !dbg !166
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !166
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !166
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !167
  store i8* %arraydecay, i8** %data, align 8, !dbg !168
  %1 = load i8*, i8** %data, align 8, !dbg !169
  %call = call i8* @goodB2GSource(i8* %1), !dbg !170
  store i8* %call, i8** %data, align 8, !dbg !171
  %2 = load i8*, i8** %data, align 8, !dbg !172
  %3 = load i8*, i8** %data, align 8, !dbg !173
  call void (i8*, ...) @goodB2GVaSink(i8* %2, i8* %3), !dbg !174
  ret void, !dbg !175
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_42_good() #0 !dbg !176 {
entry:
  call void @goodG2B(), !dbg !177
  call void @goodB2G(), !dbg !178
  ret void, !dbg !179
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nosync nounwind willreturn }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_42.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_891/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "badSource", scope: !1, file: !1, line: 36, type: !10, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "data", arg: 1, scope: !9, file: !1, line: 36, type: !12)
!15 = !DILocation(line: 36, column: 25, scope: !9)
!16 = !DILocalVariable(name: "dataLen", scope: !17, file: !1, line: 40, type: !18)
!17 = distinct !DILexicalBlock(scope: !9, file: !1, line: 38, column: 5)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 46, baseType: !20)
!19 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!20 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!21 = !DILocation(line: 40, column: 16, scope: !17)
!22 = !DILocation(line: 40, column: 33, scope: !17)
!23 = !DILocation(line: 40, column: 26, scope: !17)
!24 = !DILocalVariable(name: "environment", scope: !17, file: !1, line: 41, type: !12)
!25 = !DILocation(line: 41, column: 16, scope: !17)
!26 = !DILocation(line: 41, column: 30, scope: !17)
!27 = !DILocation(line: 43, column: 13, scope: !28)
!28 = distinct !DILexicalBlock(scope: !17, file: !1, line: 43, column: 13)
!29 = !DILocation(line: 43, column: 25, scope: !28)
!30 = !DILocation(line: 43, column: 13, scope: !17)
!31 = !DILocation(line: 46, column: 21, scope: !32)
!32 = distinct !DILexicalBlock(scope: !28, file: !1, line: 44, column: 9)
!33 = !DILocation(line: 46, column: 26, scope: !32)
!34 = !DILocation(line: 46, column: 25, scope: !32)
!35 = !DILocation(line: 46, column: 35, scope: !32)
!36 = !DILocation(line: 46, column: 52, scope: !32)
!37 = !DILocation(line: 46, column: 51, scope: !32)
!38 = !DILocation(line: 46, column: 59, scope: !32)
!39 = !DILocation(line: 46, column: 13, scope: !32)
!40 = !DILocation(line: 47, column: 9, scope: !32)
!41 = !DILocation(line: 49, column: 12, scope: !9)
!42 = !DILocation(line: 49, column: 5, scope: !9)
!43 = distinct !DISubprogram(name: "badVaSink", scope: !1, file: !1, line: 52, type: !44, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !12, null}
!46 = !DILocalVariable(name: "data", arg: 1, scope: !43, file: !1, line: 52, type: !12)
!47 = !DILocation(line: 52, column: 23, scope: !43)
!48 = !DILocalVariable(name: "args", scope: !49, file: !1, line: 55, type: !50)
!49 = distinct !DILexicalBlock(scope: !43, file: !1, line: 54, column: 5)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !51, line: 52, baseType: !52)
!51 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !53, line: 32, baseType: !54)
!53 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, baseType: !55)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 192, elements: !63)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !57)
!57 = !{!58, !60, !61, !62}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !56, file: !1, line: 55, baseType: !59, size: 32)
!59 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !56, file: !1, line: 55, baseType: !59, size: 32, offset: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !56, file: !1, line: 55, baseType: !4, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !56, file: !1, line: 55, baseType: !4, size: 64, offset: 128)
!63 = !{!64}
!64 = !DISubrange(count: 1)
!65 = !DILocation(line: 55, column: 17, scope: !49)
!66 = !DILocation(line: 56, column: 9, scope: !49)
!67 = !DILocation(line: 58, column: 17, scope: !49)
!68 = !DILocation(line: 58, column: 23, scope: !49)
!69 = !DILocation(line: 58, column: 9, scope: !49)
!70 = !DILocation(line: 59, column: 9, scope: !49)
!71 = !DILocation(line: 61, column: 1, scope: !43)
!72 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_42_bad", scope: !1, file: !1, line: 63, type: !73, scopeLine: 64, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!73 = !DISubroutineType(types: !74)
!74 = !{null}
!75 = !DILocalVariable(name: "data", scope: !72, file: !1, line: 65, type: !12)
!76 = !DILocation(line: 65, column: 12, scope: !72)
!77 = !DILocalVariable(name: "dataBuffer", scope: !72, file: !1, line: 66, type: !78)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 100)
!81 = !DILocation(line: 66, column: 10, scope: !72)
!82 = !DILocation(line: 67, column: 12, scope: !72)
!83 = !DILocation(line: 67, column: 10, scope: !72)
!84 = !DILocation(line: 68, column: 22, scope: !72)
!85 = !DILocation(line: 68, column: 12, scope: !72)
!86 = !DILocation(line: 68, column: 10, scope: !72)
!87 = !DILocation(line: 69, column: 15, scope: !72)
!88 = !DILocation(line: 69, column: 21, scope: !72)
!89 = !DILocation(line: 69, column: 5, scope: !72)
!90 = !DILocation(line: 70, column: 1, scope: !72)
!91 = distinct !DISubprogram(name: "goodG2BSource", scope: !1, file: !1, line: 77, type: !10, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!92 = !DILocalVariable(name: "data", arg: 1, scope: !91, file: !1, line: 77, type: !12)
!93 = !DILocation(line: 77, column: 29, scope: !91)
!94 = !DILocation(line: 80, column: 12, scope: !91)
!95 = !DILocation(line: 80, column: 5, scope: !91)
!96 = !DILocation(line: 81, column: 12, scope: !91)
!97 = !DILocation(line: 81, column: 5, scope: !91)
!98 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !1, file: !1, line: 84, type: !44, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!99 = !DILocalVariable(name: "data", arg: 1, scope: !98, file: !1, line: 84, type: !12)
!100 = !DILocation(line: 84, column: 27, scope: !98)
!101 = !DILocalVariable(name: "args", scope: !102, file: !1, line: 87, type: !50)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 86, column: 5)
!103 = !DILocation(line: 87, column: 17, scope: !102)
!104 = !DILocation(line: 88, column: 9, scope: !102)
!105 = !DILocation(line: 90, column: 17, scope: !102)
!106 = !DILocation(line: 90, column: 23, scope: !102)
!107 = !DILocation(line: 90, column: 9, scope: !102)
!108 = !DILocation(line: 91, column: 9, scope: !102)
!109 = !DILocation(line: 93, column: 1, scope: !98)
!110 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 95, type: !73, scopeLine: 96, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!111 = !DILocalVariable(name: "data", scope: !110, file: !1, line: 97, type: !12)
!112 = !DILocation(line: 97, column: 12, scope: !110)
!113 = !DILocalVariable(name: "dataBuffer", scope: !110, file: !1, line: 98, type: !78)
!114 = !DILocation(line: 98, column: 10, scope: !110)
!115 = !DILocation(line: 99, column: 12, scope: !110)
!116 = !DILocation(line: 99, column: 10, scope: !110)
!117 = !DILocation(line: 100, column: 26, scope: !110)
!118 = !DILocation(line: 100, column: 12, scope: !110)
!119 = !DILocation(line: 100, column: 10, scope: !110)
!120 = !DILocation(line: 101, column: 19, scope: !110)
!121 = !DILocation(line: 101, column: 25, scope: !110)
!122 = !DILocation(line: 101, column: 5, scope: !110)
!123 = !DILocation(line: 102, column: 1, scope: !110)
!124 = distinct !DISubprogram(name: "goodB2GSource", scope: !1, file: !1, line: 105, type: !10, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!125 = !DILocalVariable(name: "data", arg: 1, scope: !124, file: !1, line: 105, type: !12)
!126 = !DILocation(line: 105, column: 29, scope: !124)
!127 = !DILocalVariable(name: "dataLen", scope: !128, file: !1, line: 109, type: !18)
!128 = distinct !DILexicalBlock(scope: !124, file: !1, line: 107, column: 5)
!129 = !DILocation(line: 109, column: 16, scope: !128)
!130 = !DILocation(line: 109, column: 33, scope: !128)
!131 = !DILocation(line: 109, column: 26, scope: !128)
!132 = !DILocalVariable(name: "environment", scope: !128, file: !1, line: 110, type: !12)
!133 = !DILocation(line: 110, column: 16, scope: !128)
!134 = !DILocation(line: 110, column: 30, scope: !128)
!135 = !DILocation(line: 112, column: 13, scope: !136)
!136 = distinct !DILexicalBlock(scope: !128, file: !1, line: 112, column: 13)
!137 = !DILocation(line: 112, column: 25, scope: !136)
!138 = !DILocation(line: 112, column: 13, scope: !128)
!139 = !DILocation(line: 115, column: 21, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !1, line: 113, column: 9)
!141 = !DILocation(line: 115, column: 26, scope: !140)
!142 = !DILocation(line: 115, column: 25, scope: !140)
!143 = !DILocation(line: 115, column: 35, scope: !140)
!144 = !DILocation(line: 115, column: 52, scope: !140)
!145 = !DILocation(line: 115, column: 51, scope: !140)
!146 = !DILocation(line: 115, column: 59, scope: !140)
!147 = !DILocation(line: 115, column: 13, scope: !140)
!148 = !DILocation(line: 116, column: 9, scope: !140)
!149 = !DILocation(line: 118, column: 12, scope: !124)
!150 = !DILocation(line: 118, column: 5, scope: !124)
!151 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !1, file: !1, line: 121, type: !44, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!152 = !DILocalVariable(name: "data", arg: 1, scope: !151, file: !1, line: 121, type: !12)
!153 = !DILocation(line: 121, column: 27, scope: !151)
!154 = !DILocalVariable(name: "args", scope: !155, file: !1, line: 124, type: !50)
!155 = distinct !DILexicalBlock(scope: !151, file: !1, line: 123, column: 5)
!156 = !DILocation(line: 124, column: 17, scope: !155)
!157 = !DILocation(line: 125, column: 9, scope: !155)
!158 = !DILocation(line: 127, column: 23, scope: !155)
!159 = !DILocation(line: 127, column: 9, scope: !155)
!160 = !DILocation(line: 128, column: 9, scope: !155)
!161 = !DILocation(line: 130, column: 1, scope: !151)
!162 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 132, type: !73, scopeLine: 133, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!163 = !DILocalVariable(name: "data", scope: !162, file: !1, line: 134, type: !12)
!164 = !DILocation(line: 134, column: 12, scope: !162)
!165 = !DILocalVariable(name: "dataBuffer", scope: !162, file: !1, line: 135, type: !78)
!166 = !DILocation(line: 135, column: 10, scope: !162)
!167 = !DILocation(line: 136, column: 12, scope: !162)
!168 = !DILocation(line: 136, column: 10, scope: !162)
!169 = !DILocation(line: 137, column: 26, scope: !162)
!170 = !DILocation(line: 137, column: 12, scope: !162)
!171 = !DILocation(line: 137, column: 10, scope: !162)
!172 = !DILocation(line: 138, column: 19, scope: !162)
!173 = !DILocation(line: 138, column: 25, scope: !162)
!174 = !DILocation(line: 138, column: 5, scope: !162)
!175 = !DILocation(line: 139, column: 1, scope: !162)
!176 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_42_good", scope: !1, file: !1, line: 141, type: !73, scopeLine: 142, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!177 = !DILocation(line: 143, column: 5, scope: !176)
!178 = !DILocation(line: 144, column: 5, scope: !176)
!179 = !DILocation(line: 145, column: 1, scope: !176)
