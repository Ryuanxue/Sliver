; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_vprintf_31.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_vprintf_31.c"
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_31_bad() #0 !dbg !40 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %dataCopy = alloca i8*, align 8
  %data4 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !45, metadata !DIExpression()), !dbg !49
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !49
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !49
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !50
  store i8* %arraydecay, i8** %data, align 8, !dbg !51
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !52, metadata !DIExpression()), !dbg !57
  %1 = load i8*, i8** %data, align 8, !dbg !58
  %call = call i64 @strlen(i8* %1) #7, !dbg !59
  store i64 %call, i64* %dataLen, align 8, !dbg !57
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !60, metadata !DIExpression()), !dbg !61
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !62
  store i8* %call1, i8** %environment, align 8, !dbg !61
  %2 = load i8*, i8** %environment, align 8, !dbg !63
  %cmp = icmp ne i8* %2, null, !dbg !65
  br i1 %cmp, label %if.then, label %if.end, !dbg !66

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !67
  %4 = load i64, i64* %dataLen, align 8, !dbg !69
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !70
  %5 = load i8*, i8** %environment, align 8, !dbg !71
  %6 = load i64, i64* %dataLen, align 8, !dbg !72
  %sub = sub i64 100, %6, !dbg !73
  %sub2 = sub i64 %sub, 1, !dbg !74
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !75
  br label %if.end, !dbg !76

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !77, metadata !DIExpression()), !dbg !79
  %7 = load i8*, i8** %data, align 8, !dbg !80
  store i8* %7, i8** %dataCopy, align 8, !dbg !79
  call void @llvm.dbg.declare(metadata i8** %data4, metadata !81, metadata !DIExpression()), !dbg !82
  %8 = load i8*, i8** %dataCopy, align 8, !dbg !83
  store i8* %8, i8** %data4, align 8, !dbg !82
  %9 = load i8*, i8** %data4, align 8, !dbg !84
  %10 = load i8*, i8** %data4, align 8, !dbg !85
  call void (i8*, ...) @badVaSink(i8* %9, i8* %10), !dbg !86
  ret void, !dbg !87
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
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !88 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !91, metadata !DIExpression()), !dbg !93
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !94
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !94
  call void @llvm.va_start(i8* %arraydecay1), !dbg !94
  %0 = load i8*, i8** %data.addr, align 8, !dbg !95
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !96
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !97
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !98
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !98
  call void @llvm.va_end(i8* %arraydecay34), !dbg !98
  ret void, !dbg !99
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !100 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataCopy = alloca i8*, align 8
  %data1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !103, metadata !DIExpression()), !dbg !104
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !104
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !104
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !105
  store i8* %arraydecay, i8** %data, align 8, !dbg !106
  %1 = load i8*, i8** %data, align 8, !dbg !107
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !108
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !109, metadata !DIExpression()), !dbg !111
  %2 = load i8*, i8** %data, align 8, !dbg !112
  store i8* %2, i8** %dataCopy, align 8, !dbg !111
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !113, metadata !DIExpression()), !dbg !114
  %3 = load i8*, i8** %dataCopy, align 8, !dbg !115
  store i8* %3, i8** %data1, align 8, !dbg !114
  %4 = load i8*, i8** %data1, align 8, !dbg !116
  %5 = load i8*, i8** %data1, align 8, !dbg !117
  call void (i8*, ...) @goodG2BVaSink(i8* %4, i8* %5), !dbg !118
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
define dso_local void @goodB2G() #0 !dbg !131 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %dataCopy = alloca i8*, align 8
  %data4 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !134, metadata !DIExpression()), !dbg !135
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !135
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !135
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !136
  store i8* %arraydecay, i8** %data, align 8, !dbg !137
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !138, metadata !DIExpression()), !dbg !140
  %1 = load i8*, i8** %data, align 8, !dbg !141
  %call = call i64 @strlen(i8* %1) #7, !dbg !142
  store i64 %call, i64* %dataLen, align 8, !dbg !140
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !143, metadata !DIExpression()), !dbg !144
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !145
  store i8* %call1, i8** %environment, align 8, !dbg !144
  %2 = load i8*, i8** %environment, align 8, !dbg !146
  %cmp = icmp ne i8* %2, null, !dbg !148
  br i1 %cmp, label %if.then, label %if.end, !dbg !149

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !150
  %4 = load i64, i64* %dataLen, align 8, !dbg !152
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !153
  %5 = load i8*, i8** %environment, align 8, !dbg !154
  %6 = load i64, i64* %dataLen, align 8, !dbg !155
  %sub = sub i64 100, %6, !dbg !156
  %sub2 = sub i64 %sub, 1, !dbg !157
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !158
  br label %if.end, !dbg !159

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !160, metadata !DIExpression()), !dbg !162
  %7 = load i8*, i8** %data, align 8, !dbg !163
  store i8* %7, i8** %dataCopy, align 8, !dbg !162
  call void @llvm.dbg.declare(metadata i8** %data4, metadata !164, metadata !DIExpression()), !dbg !165
  %8 = load i8*, i8** %dataCopy, align 8, !dbg !166
  store i8* %8, i8** %data4, align 8, !dbg !165
  %9 = load i8*, i8** %data4, align 8, !dbg !167
  %10 = load i8*, i8** %data4, align 8, !dbg !168
  call void (i8*, ...) @goodB2GVaSink(i8* %9, i8* %10), !dbg !169
  ret void, !dbg !170
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_31_good() #0 !dbg !171 {
entry:
  call void @goodG2B(), !dbg !172
  call void @goodB2G(), !dbg !173
  ret void, !dbg !174
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_31.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_886/source_code")
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
!40 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_31_bad", scope: !1, file: !1, line: 47, type: !41, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!41 = !DISubroutineType(types: !42)
!42 = !{null}
!43 = !DILocalVariable(name: "data", scope: !40, file: !1, line: 49, type: !12)
!44 = !DILocation(line: 49, column: 12, scope: !40)
!45 = !DILocalVariable(name: "dataBuffer", scope: !40, file: !1, line: 50, type: !46)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 100)
!49 = !DILocation(line: 50, column: 10, scope: !40)
!50 = !DILocation(line: 51, column: 12, scope: !40)
!51 = !DILocation(line: 51, column: 10, scope: !40)
!52 = !DILocalVariable(name: "dataLen", scope: !53, file: !1, line: 54, type: !54)
!53 = distinct !DILexicalBlock(scope: !40, file: !1, line: 52, column: 5)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 46, baseType: !56)
!55 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!56 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!57 = !DILocation(line: 54, column: 16, scope: !53)
!58 = !DILocation(line: 54, column: 33, scope: !53)
!59 = !DILocation(line: 54, column: 26, scope: !53)
!60 = !DILocalVariable(name: "environment", scope: !53, file: !1, line: 55, type: !12)
!61 = !DILocation(line: 55, column: 16, scope: !53)
!62 = !DILocation(line: 55, column: 30, scope: !53)
!63 = !DILocation(line: 57, column: 13, scope: !64)
!64 = distinct !DILexicalBlock(scope: !53, file: !1, line: 57, column: 13)
!65 = !DILocation(line: 57, column: 25, scope: !64)
!66 = !DILocation(line: 57, column: 13, scope: !53)
!67 = !DILocation(line: 60, column: 21, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 58, column: 9)
!69 = !DILocation(line: 60, column: 26, scope: !68)
!70 = !DILocation(line: 60, column: 25, scope: !68)
!71 = !DILocation(line: 60, column: 35, scope: !68)
!72 = !DILocation(line: 60, column: 52, scope: !68)
!73 = !DILocation(line: 60, column: 51, scope: !68)
!74 = !DILocation(line: 60, column: 59, scope: !68)
!75 = !DILocation(line: 60, column: 13, scope: !68)
!76 = !DILocation(line: 61, column: 9, scope: !68)
!77 = !DILocalVariable(name: "dataCopy", scope: !78, file: !1, line: 64, type: !12)
!78 = distinct !DILexicalBlock(scope: !40, file: !1, line: 63, column: 5)
!79 = !DILocation(line: 64, column: 16, scope: !78)
!80 = !DILocation(line: 64, column: 27, scope: !78)
!81 = !DILocalVariable(name: "data", scope: !78, file: !1, line: 65, type: !12)
!82 = !DILocation(line: 65, column: 16, scope: !78)
!83 = !DILocation(line: 65, column: 23, scope: !78)
!84 = !DILocation(line: 66, column: 19, scope: !78)
!85 = !DILocation(line: 66, column: 25, scope: !78)
!86 = !DILocation(line: 66, column: 9, scope: !78)
!87 = !DILocation(line: 68, column: 1, scope: !40)
!88 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !1, file: !1, line: 75, type: !10, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!89 = !DILocalVariable(name: "data", arg: 1, scope: !88, file: !1, line: 75, type: !12)
!90 = !DILocation(line: 75, column: 27, scope: !88)
!91 = !DILocalVariable(name: "args", scope: !92, file: !1, line: 78, type: !18)
!92 = distinct !DILexicalBlock(scope: !88, file: !1, line: 77, column: 5)
!93 = !DILocation(line: 78, column: 17, scope: !92)
!94 = !DILocation(line: 79, column: 9, scope: !92)
!95 = !DILocation(line: 81, column: 17, scope: !92)
!96 = !DILocation(line: 81, column: 23, scope: !92)
!97 = !DILocation(line: 81, column: 9, scope: !92)
!98 = !DILocation(line: 82, column: 9, scope: !92)
!99 = !DILocation(line: 84, column: 1, scope: !88)
!100 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 86, type: !41, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!101 = !DILocalVariable(name: "data", scope: !100, file: !1, line: 88, type: !12)
!102 = !DILocation(line: 88, column: 12, scope: !100)
!103 = !DILocalVariable(name: "dataBuffer", scope: !100, file: !1, line: 89, type: !46)
!104 = !DILocation(line: 89, column: 10, scope: !100)
!105 = !DILocation(line: 90, column: 12, scope: !100)
!106 = !DILocation(line: 90, column: 10, scope: !100)
!107 = !DILocation(line: 92, column: 12, scope: !100)
!108 = !DILocation(line: 92, column: 5, scope: !100)
!109 = !DILocalVariable(name: "dataCopy", scope: !110, file: !1, line: 94, type: !12)
!110 = distinct !DILexicalBlock(scope: !100, file: !1, line: 93, column: 5)
!111 = !DILocation(line: 94, column: 16, scope: !110)
!112 = !DILocation(line: 94, column: 27, scope: !110)
!113 = !DILocalVariable(name: "data", scope: !110, file: !1, line: 95, type: !12)
!114 = !DILocation(line: 95, column: 16, scope: !110)
!115 = !DILocation(line: 95, column: 23, scope: !110)
!116 = !DILocation(line: 96, column: 23, scope: !110)
!117 = !DILocation(line: 96, column: 29, scope: !110)
!118 = !DILocation(line: 96, column: 9, scope: !110)
!119 = !DILocation(line: 98, column: 1, scope: !100)
!120 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !1, file: !1, line: 101, type: !10, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!121 = !DILocalVariable(name: "data", arg: 1, scope: !120, file: !1, line: 101, type: !12)
!122 = !DILocation(line: 101, column: 27, scope: !120)
!123 = !DILocalVariable(name: "args", scope: !124, file: !1, line: 104, type: !18)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 103, column: 5)
!125 = !DILocation(line: 104, column: 17, scope: !124)
!126 = !DILocation(line: 105, column: 9, scope: !124)
!127 = !DILocation(line: 107, column: 23, scope: !124)
!128 = !DILocation(line: 107, column: 9, scope: !124)
!129 = !DILocation(line: 108, column: 9, scope: !124)
!130 = !DILocation(line: 110, column: 1, scope: !120)
!131 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 112, type: !41, scopeLine: 113, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!132 = !DILocalVariable(name: "data", scope: !131, file: !1, line: 114, type: !12)
!133 = !DILocation(line: 114, column: 12, scope: !131)
!134 = !DILocalVariable(name: "dataBuffer", scope: !131, file: !1, line: 115, type: !46)
!135 = !DILocation(line: 115, column: 10, scope: !131)
!136 = !DILocation(line: 116, column: 12, scope: !131)
!137 = !DILocation(line: 116, column: 10, scope: !131)
!138 = !DILocalVariable(name: "dataLen", scope: !139, file: !1, line: 119, type: !54)
!139 = distinct !DILexicalBlock(scope: !131, file: !1, line: 117, column: 5)
!140 = !DILocation(line: 119, column: 16, scope: !139)
!141 = !DILocation(line: 119, column: 33, scope: !139)
!142 = !DILocation(line: 119, column: 26, scope: !139)
!143 = !DILocalVariable(name: "environment", scope: !139, file: !1, line: 120, type: !12)
!144 = !DILocation(line: 120, column: 16, scope: !139)
!145 = !DILocation(line: 120, column: 30, scope: !139)
!146 = !DILocation(line: 122, column: 13, scope: !147)
!147 = distinct !DILexicalBlock(scope: !139, file: !1, line: 122, column: 13)
!148 = !DILocation(line: 122, column: 25, scope: !147)
!149 = !DILocation(line: 122, column: 13, scope: !139)
!150 = !DILocation(line: 125, column: 21, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 123, column: 9)
!152 = !DILocation(line: 125, column: 26, scope: !151)
!153 = !DILocation(line: 125, column: 25, scope: !151)
!154 = !DILocation(line: 125, column: 35, scope: !151)
!155 = !DILocation(line: 125, column: 52, scope: !151)
!156 = !DILocation(line: 125, column: 51, scope: !151)
!157 = !DILocation(line: 125, column: 59, scope: !151)
!158 = !DILocation(line: 125, column: 13, scope: !151)
!159 = !DILocation(line: 126, column: 9, scope: !151)
!160 = !DILocalVariable(name: "dataCopy", scope: !161, file: !1, line: 129, type: !12)
!161 = distinct !DILexicalBlock(scope: !131, file: !1, line: 128, column: 5)
!162 = !DILocation(line: 129, column: 16, scope: !161)
!163 = !DILocation(line: 129, column: 27, scope: !161)
!164 = !DILocalVariable(name: "data", scope: !161, file: !1, line: 130, type: !12)
!165 = !DILocation(line: 130, column: 16, scope: !161)
!166 = !DILocation(line: 130, column: 23, scope: !161)
!167 = !DILocation(line: 131, column: 23, scope: !161)
!168 = !DILocation(line: 131, column: 29, scope: !161)
!169 = !DILocation(line: 131, column: 9, scope: !161)
!170 = !DILocation(line: 133, column: 1, scope: !131)
!171 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_31_good", scope: !1, file: !1, line: 135, type: !41, scopeLine: 136, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!172 = !DILocation(line: 137, column: 5, scope: !171)
!173 = !DILocation(line: 138, column: 5, scope: !171)
!174 = !DILocation(line: 139, column: 1, scope: !171)
