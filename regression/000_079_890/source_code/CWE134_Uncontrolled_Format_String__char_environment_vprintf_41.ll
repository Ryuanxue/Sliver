; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_vprintf_41.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_vprintf_41.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !9 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !16, metadata !DIExpression()), !dbg !33
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !34
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !34
  call void @llvm.va_start(i8* %arraydecay1), !dbg !34
  %0 = load i8*, i8** %data.addr, align 8, !dbg !35
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !36
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !37
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !38
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !38
  call void @llvm.va_end(i8* %arraydecay34), !dbg !38
  ret void, !dbg !39
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink(i8* %data) #0 !dbg !40 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !43, metadata !DIExpression()), !dbg !44
  %0 = load i8*, i8** %data.addr, align 8, !dbg !45
  %1 = load i8*, i8** %data.addr, align 8, !dbg !46
  call void (i8*, ...) @badVaSink(i8* %0, i8* %1), !dbg !47
  ret void, !dbg !48
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_41_bad() #0 !dbg !49 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !54, metadata !DIExpression()), !dbg !58
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !58
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !58
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !59
  store i8* %arraydecay, i8** %data, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !61, metadata !DIExpression()), !dbg !66
  %1 = load i8*, i8** %data, align 8, !dbg !67
  %call = call i64 @strlen(i8* %1) #7, !dbg !68
  store i64 %call, i64* %dataLen, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !69, metadata !DIExpression()), !dbg !70
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !71
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
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !84
  br label %if.end, !dbg !85

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !86
  call void @badSink(i8* %7), !dbg !87
  ret void, !dbg !88
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
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !89 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !92, metadata !DIExpression()), !dbg !94
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !95
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !95
  call void @llvm.va_start(i8* %arraydecay1), !dbg !95
  %0 = load i8*, i8** %data.addr, align 8, !dbg !96
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !97
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !98
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !99
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !99
  call void @llvm.va_end(i8* %arraydecay34), !dbg !99
  ret void, !dbg !100
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !101 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !102, metadata !DIExpression()), !dbg !103
  %0 = load i8*, i8** %data.addr, align 8, !dbg !104
  %1 = load i8*, i8** %data.addr, align 8, !dbg !105
  call void (i8*, ...) @goodG2BVaSink(i8* %0, i8* %1), !dbg !106
  ret void, !dbg !107
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !108 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !111, metadata !DIExpression()), !dbg !112
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !112
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !112
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !113
  store i8* %arraydecay, i8** %data, align 8, !dbg !114
  %1 = load i8*, i8** %data, align 8, !dbg !115
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !116
  %2 = load i8*, i8** %data, align 8, !dbg !117
  call void @goodG2BSink(i8* %2), !dbg !118
  ret void, !dbg !119
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !120 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !123, metadata !DIExpression()), !dbg !125
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !126
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !126
  call void @llvm.va_start(i8* %arraydecay1), !dbg !126
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !127
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !128
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !129
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !129
  call void @llvm.va_end(i8* %arraydecay34), !dbg !129
  ret void, !dbg !130
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !131 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !132, metadata !DIExpression()), !dbg !133
  %0 = load i8*, i8** %data.addr, align 8, !dbg !134
  %1 = load i8*, i8** %data.addr, align 8, !dbg !135
  call void (i8*, ...) @goodB2GVaSink(i8* %0, i8* %1), !dbg !136
  ret void, !dbg !137
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !138 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !141, metadata !DIExpression()), !dbg !142
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !142
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !142
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !143
  store i8* %arraydecay, i8** %data, align 8, !dbg !144
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !145, metadata !DIExpression()), !dbg !147
  %1 = load i8*, i8** %data, align 8, !dbg !148
  %call = call i64 @strlen(i8* %1) #7, !dbg !149
  store i64 %call, i64* %dataLen, align 8, !dbg !147
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !150, metadata !DIExpression()), !dbg !151
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !152
  store i8* %call1, i8** %environment, align 8, !dbg !151
  %2 = load i8*, i8** %environment, align 8, !dbg !153
  %cmp = icmp ne i8* %2, null, !dbg !155
  br i1 %cmp, label %if.then, label %if.end, !dbg !156

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !157
  %4 = load i64, i64* %dataLen, align 8, !dbg !159
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !160
  %5 = load i8*, i8** %environment, align 8, !dbg !161
  %6 = load i64, i64* %dataLen, align 8, !dbg !162
  %sub = sub i64 100, %6, !dbg !163
  %sub2 = sub i64 %sub, 1, !dbg !164
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !165
  br label %if.end, !dbg !166

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !167
  call void @goodB2GSink(i8* %7), !dbg !168
  ret void, !dbg !169
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_41_good() #0 !dbg !170 {
entry:
  call void @goodG2B(), !dbg !171
  call void @goodB2G(), !dbg !172
  ret void, !dbg !173
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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_41.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_890/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "badVaSink", scope: !1, file: !1, line: 36, type: !10, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, null}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "data", arg: 1, scope: !9, file: !1, line: 36, type: !12)
!15 = !DILocation(line: 36, column: 23, scope: !9)
!16 = !DILocalVariable(name: "args", scope: !17, file: !1, line: 39, type: !18)
!17 = distinct !DILexicalBlock(scope: !9, file: !1, line: 38, column: 5)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !19, line: 52, baseType: !20)
!19 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !21, line: 32, baseType: !22)
!21 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, baseType: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 192, elements: !31)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !25)
!25 = !{!26, !28, !29, !30}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !24, file: !1, line: 39, baseType: !27, size: 32)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !24, file: !1, line: 39, baseType: !27, size: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !24, file: !1, line: 39, baseType: !4, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !24, file: !1, line: 39, baseType: !4, size: 64, offset: 128)
!31 = !{!32}
!32 = !DISubrange(count: 1)
!33 = !DILocation(line: 39, column: 17, scope: !17)
!34 = !DILocation(line: 40, column: 9, scope: !17)
!35 = !DILocation(line: 42, column: 17, scope: !17)
!36 = !DILocation(line: 42, column: 23, scope: !17)
!37 = !DILocation(line: 42, column: 9, scope: !17)
!38 = !DILocation(line: 43, column: 9, scope: !17)
!39 = !DILocation(line: 45, column: 1, scope: !9)
!40 = distinct !DISubprogram(name: "badSink", scope: !1, file: !1, line: 47, type: !41, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !12}
!43 = !DILocalVariable(name: "data", arg: 1, scope: !40, file: !1, line: 47, type: !12)
!44 = !DILocation(line: 47, column: 21, scope: !40)
!45 = !DILocation(line: 49, column: 15, scope: !40)
!46 = !DILocation(line: 49, column: 21, scope: !40)
!47 = !DILocation(line: 49, column: 5, scope: !40)
!48 = !DILocation(line: 50, column: 1, scope: !40)
!49 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_41_bad", scope: !1, file: !1, line: 52, type: !50, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!50 = !DISubroutineType(types: !51)
!51 = !{null}
!52 = !DILocalVariable(name: "data", scope: !49, file: !1, line: 54, type: !12)
!53 = !DILocation(line: 54, column: 12, scope: !49)
!54 = !DILocalVariable(name: "dataBuffer", scope: !49, file: !1, line: 55, type: !55)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 100)
!58 = !DILocation(line: 55, column: 10, scope: !49)
!59 = !DILocation(line: 56, column: 12, scope: !49)
!60 = !DILocation(line: 56, column: 10, scope: !49)
!61 = !DILocalVariable(name: "dataLen", scope: !62, file: !1, line: 59, type: !63)
!62 = distinct !DILexicalBlock(scope: !49, file: !1, line: 57, column: 5)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 46, baseType: !65)
!64 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!65 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!66 = !DILocation(line: 59, column: 16, scope: !62)
!67 = !DILocation(line: 59, column: 33, scope: !62)
!68 = !DILocation(line: 59, column: 26, scope: !62)
!69 = !DILocalVariable(name: "environment", scope: !62, file: !1, line: 60, type: !12)
!70 = !DILocation(line: 60, column: 16, scope: !62)
!71 = !DILocation(line: 60, column: 30, scope: !62)
!72 = !DILocation(line: 62, column: 13, scope: !73)
!73 = distinct !DILexicalBlock(scope: !62, file: !1, line: 62, column: 13)
!74 = !DILocation(line: 62, column: 25, scope: !73)
!75 = !DILocation(line: 62, column: 13, scope: !62)
!76 = !DILocation(line: 65, column: 21, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 63, column: 9)
!78 = !DILocation(line: 65, column: 26, scope: !77)
!79 = !DILocation(line: 65, column: 25, scope: !77)
!80 = !DILocation(line: 65, column: 35, scope: !77)
!81 = !DILocation(line: 65, column: 52, scope: !77)
!82 = !DILocation(line: 65, column: 51, scope: !77)
!83 = !DILocation(line: 65, column: 59, scope: !77)
!84 = !DILocation(line: 65, column: 13, scope: !77)
!85 = !DILocation(line: 66, column: 9, scope: !77)
!86 = !DILocation(line: 68, column: 13, scope: !49)
!87 = !DILocation(line: 68, column: 5, scope: !49)
!88 = !DILocation(line: 69, column: 1, scope: !49)
!89 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !1, file: !1, line: 76, type: !10, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!90 = !DILocalVariable(name: "data", arg: 1, scope: !89, file: !1, line: 76, type: !12)
!91 = !DILocation(line: 76, column: 27, scope: !89)
!92 = !DILocalVariable(name: "args", scope: !93, file: !1, line: 79, type: !18)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 78, column: 5)
!94 = !DILocation(line: 79, column: 17, scope: !93)
!95 = !DILocation(line: 80, column: 9, scope: !93)
!96 = !DILocation(line: 82, column: 17, scope: !93)
!97 = !DILocation(line: 82, column: 23, scope: !93)
!98 = !DILocation(line: 82, column: 9, scope: !93)
!99 = !DILocation(line: 83, column: 9, scope: !93)
!100 = !DILocation(line: 85, column: 1, scope: !89)
!101 = distinct !DISubprogram(name: "goodG2BSink", scope: !1, file: !1, line: 87, type: !41, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!102 = !DILocalVariable(name: "data", arg: 1, scope: !101, file: !1, line: 87, type: !12)
!103 = !DILocation(line: 87, column: 25, scope: !101)
!104 = !DILocation(line: 89, column: 19, scope: !101)
!105 = !DILocation(line: 89, column: 25, scope: !101)
!106 = !DILocation(line: 89, column: 5, scope: !101)
!107 = !DILocation(line: 90, column: 1, scope: !101)
!108 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 92, type: !50, scopeLine: 93, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!109 = !DILocalVariable(name: "data", scope: !108, file: !1, line: 94, type: !12)
!110 = !DILocation(line: 94, column: 12, scope: !108)
!111 = !DILocalVariable(name: "dataBuffer", scope: !108, file: !1, line: 95, type: !55)
!112 = !DILocation(line: 95, column: 10, scope: !108)
!113 = !DILocation(line: 96, column: 12, scope: !108)
!114 = !DILocation(line: 96, column: 10, scope: !108)
!115 = !DILocation(line: 98, column: 12, scope: !108)
!116 = !DILocation(line: 98, column: 5, scope: !108)
!117 = !DILocation(line: 99, column: 17, scope: !108)
!118 = !DILocation(line: 99, column: 5, scope: !108)
!119 = !DILocation(line: 100, column: 1, scope: !108)
!120 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !1, file: !1, line: 103, type: !10, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!121 = !DILocalVariable(name: "data", arg: 1, scope: !120, file: !1, line: 103, type: !12)
!122 = !DILocation(line: 103, column: 27, scope: !120)
!123 = !DILocalVariable(name: "args", scope: !124, file: !1, line: 106, type: !18)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 105, column: 5)
!125 = !DILocation(line: 106, column: 17, scope: !124)
!126 = !DILocation(line: 107, column: 9, scope: !124)
!127 = !DILocation(line: 109, column: 23, scope: !124)
!128 = !DILocation(line: 109, column: 9, scope: !124)
!129 = !DILocation(line: 110, column: 9, scope: !124)
!130 = !DILocation(line: 112, column: 1, scope: !120)
!131 = distinct !DISubprogram(name: "goodB2GSink", scope: !1, file: !1, line: 114, type: !41, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!132 = !DILocalVariable(name: "data", arg: 1, scope: !131, file: !1, line: 114, type: !12)
!133 = !DILocation(line: 114, column: 25, scope: !131)
!134 = !DILocation(line: 116, column: 19, scope: !131)
!135 = !DILocation(line: 116, column: 25, scope: !131)
!136 = !DILocation(line: 116, column: 5, scope: !131)
!137 = !DILocation(line: 117, column: 1, scope: !131)
!138 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 119, type: !50, scopeLine: 120, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!139 = !DILocalVariable(name: "data", scope: !138, file: !1, line: 121, type: !12)
!140 = !DILocation(line: 121, column: 12, scope: !138)
!141 = !DILocalVariable(name: "dataBuffer", scope: !138, file: !1, line: 122, type: !55)
!142 = !DILocation(line: 122, column: 10, scope: !138)
!143 = !DILocation(line: 123, column: 12, scope: !138)
!144 = !DILocation(line: 123, column: 10, scope: !138)
!145 = !DILocalVariable(name: "dataLen", scope: !146, file: !1, line: 126, type: !63)
!146 = distinct !DILexicalBlock(scope: !138, file: !1, line: 124, column: 5)
!147 = !DILocation(line: 126, column: 16, scope: !146)
!148 = !DILocation(line: 126, column: 33, scope: !146)
!149 = !DILocation(line: 126, column: 26, scope: !146)
!150 = !DILocalVariable(name: "environment", scope: !146, file: !1, line: 127, type: !12)
!151 = !DILocation(line: 127, column: 16, scope: !146)
!152 = !DILocation(line: 127, column: 30, scope: !146)
!153 = !DILocation(line: 129, column: 13, scope: !154)
!154 = distinct !DILexicalBlock(scope: !146, file: !1, line: 129, column: 13)
!155 = !DILocation(line: 129, column: 25, scope: !154)
!156 = !DILocation(line: 129, column: 13, scope: !146)
!157 = !DILocation(line: 132, column: 21, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !1, line: 130, column: 9)
!159 = !DILocation(line: 132, column: 26, scope: !158)
!160 = !DILocation(line: 132, column: 25, scope: !158)
!161 = !DILocation(line: 132, column: 35, scope: !158)
!162 = !DILocation(line: 132, column: 52, scope: !158)
!163 = !DILocation(line: 132, column: 51, scope: !158)
!164 = !DILocation(line: 132, column: 59, scope: !158)
!165 = !DILocation(line: 132, column: 13, scope: !158)
!166 = !DILocation(line: 133, column: 9, scope: !158)
!167 = !DILocation(line: 135, column: 17, scope: !138)
!168 = !DILocation(line: 135, column: 5, scope: !138)
!169 = !DILocation(line: 136, column: 1, scope: !138)
!170 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_41_good", scope: !1, file: !1, line: 138, type: !50, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!171 = !DILocation(line: 140, column: 5, scope: !170)
!172 = !DILocation(line: 141, column: 5, scope: !170)
!173 = !DILocation(line: 142, column: 1, scope: !170)
