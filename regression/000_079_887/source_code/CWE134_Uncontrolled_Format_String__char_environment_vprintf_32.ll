; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_vprintf_32.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_vprintf_32.c"
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad() #0 !dbg !40 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %data5 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !45, metadata !DIExpression()), !dbg !47
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !47
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !48, metadata !DIExpression()), !dbg !49
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !49
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !50, metadata !DIExpression()), !dbg !54
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !54
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !54
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !55
  store i8* %arraydecay, i8** %data, align 8, !dbg !56
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !57, metadata !DIExpression()), !dbg !59
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !60
  %2 = load i8*, i8** %1, align 8, !dbg !61
  store i8* %2, i8** %data1, align 8, !dbg !59
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !62, metadata !DIExpression()), !dbg !67
  %3 = load i8*, i8** %data1, align 8, !dbg !68
  %call = call i64 @strlen(i8* %3) #7, !dbg !69
  store i64 %call, i64* %dataLen, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !70, metadata !DIExpression()), !dbg !71
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !72
  store i8* %call2, i8** %environment, align 8, !dbg !71
  %4 = load i8*, i8** %environment, align 8, !dbg !73
  %cmp = icmp ne i8* %4, null, !dbg !75
  br i1 %cmp, label %if.then, label %if.end, !dbg !76

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %data1, align 8, !dbg !77
  %6 = load i64, i64* %dataLen, align 8, !dbg !79
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !80
  %7 = load i8*, i8** %environment, align 8, !dbg !81
  %8 = load i64, i64* %dataLen, align 8, !dbg !82
  %sub = sub i64 100, %8, !dbg !83
  %sub3 = sub i64 %sub, 1, !dbg !84
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %7, i64 %sub3) #8, !dbg !85
  br label %if.end, !dbg !86

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %data1, align 8, !dbg !87
  %10 = load i8**, i8*** %dataPtr1, align 8, !dbg !88
  store i8* %9, i8** %10, align 8, !dbg !89
  call void @llvm.dbg.declare(metadata i8** %data5, metadata !90, metadata !DIExpression()), !dbg !92
  %11 = load i8**, i8*** %dataPtr2, align 8, !dbg !93
  %12 = load i8*, i8** %11, align 8, !dbg !94
  store i8* %12, i8** %data5, align 8, !dbg !92
  %13 = load i8*, i8** %data5, align 8, !dbg !95
  %14 = load i8*, i8** %data5, align 8, !dbg !96
  call void (i8*, ...) @badVaSink(i8* %13, i8* %14), !dbg !97
  ret void, !dbg !98
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
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !99 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !102, metadata !DIExpression()), !dbg !104
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !105
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !105
  call void @llvm.va_start(i8* %arraydecay1), !dbg !105
  %0 = load i8*, i8** %data.addr, align 8, !dbg !106
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !107
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !108
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !109
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !109
  call void @llvm.va_end(i8* %arraydecay34), !dbg !109
  ret void, !dbg !110
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !111 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !114, metadata !DIExpression()), !dbg !115
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !115
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !116, metadata !DIExpression()), !dbg !117
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !117
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !118, metadata !DIExpression()), !dbg !119
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !119
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !119
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !120
  store i8* %arraydecay, i8** %data, align 8, !dbg !121
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !122, metadata !DIExpression()), !dbg !124
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !125
  %2 = load i8*, i8** %1, align 8, !dbg !126
  store i8* %2, i8** %data1, align 8, !dbg !124
  %3 = load i8*, i8** %data1, align 8, !dbg !127
  %call = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !128
  %4 = load i8*, i8** %data1, align 8, !dbg !129
  %5 = load i8**, i8*** %dataPtr1, align 8, !dbg !130
  store i8* %4, i8** %5, align 8, !dbg !131
  call void @llvm.dbg.declare(metadata i8** %data2, metadata !132, metadata !DIExpression()), !dbg !134
  %6 = load i8**, i8*** %dataPtr2, align 8, !dbg !135
  %7 = load i8*, i8** %6, align 8, !dbg !136
  store i8* %7, i8** %data2, align 8, !dbg !134
  %8 = load i8*, i8** %data2, align 8, !dbg !137
  %9 = load i8*, i8** %data2, align 8, !dbg !138
  call void (i8*, ...) @goodG2BVaSink(i8* %8, i8* %9), !dbg !139
  ret void, !dbg !140
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !141 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !144, metadata !DIExpression()), !dbg !146
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !147
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !147
  call void @llvm.va_start(i8* %arraydecay1), !dbg !147
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !148
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !149
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !150
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !150
  call void @llvm.va_end(i8* %arraydecay34), !dbg !150
  ret void, !dbg !151
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !152 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %data5 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !155, metadata !DIExpression()), !dbg !156
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !156
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !157, metadata !DIExpression()), !dbg !158
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !158
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !159, metadata !DIExpression()), !dbg !160
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !160
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !160
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !161
  store i8* %arraydecay, i8** %data, align 8, !dbg !162
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !163, metadata !DIExpression()), !dbg !165
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !166
  %2 = load i8*, i8** %1, align 8, !dbg !167
  store i8* %2, i8** %data1, align 8, !dbg !165
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !168, metadata !DIExpression()), !dbg !170
  %3 = load i8*, i8** %data1, align 8, !dbg !171
  %call = call i64 @strlen(i8* %3) #7, !dbg !172
  store i64 %call, i64* %dataLen, align 8, !dbg !170
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !173, metadata !DIExpression()), !dbg !174
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !175
  store i8* %call2, i8** %environment, align 8, !dbg !174
  %4 = load i8*, i8** %environment, align 8, !dbg !176
  %cmp = icmp ne i8* %4, null, !dbg !178
  br i1 %cmp, label %if.then, label %if.end, !dbg !179

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %data1, align 8, !dbg !180
  %6 = load i64, i64* %dataLen, align 8, !dbg !182
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !183
  %7 = load i8*, i8** %environment, align 8, !dbg !184
  %8 = load i64, i64* %dataLen, align 8, !dbg !185
  %sub = sub i64 100, %8, !dbg !186
  %sub3 = sub i64 %sub, 1, !dbg !187
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %7, i64 %sub3) #8, !dbg !188
  br label %if.end, !dbg !189

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %data1, align 8, !dbg !190
  %10 = load i8**, i8*** %dataPtr1, align 8, !dbg !191
  store i8* %9, i8** %10, align 8, !dbg !192
  call void @llvm.dbg.declare(metadata i8** %data5, metadata !193, metadata !DIExpression()), !dbg !195
  %11 = load i8**, i8*** %dataPtr2, align 8, !dbg !196
  %12 = load i8*, i8** %11, align 8, !dbg !197
  store i8* %12, i8** %data5, align 8, !dbg !195
  %13 = load i8*, i8** %data5, align 8, !dbg !198
  %14 = load i8*, i8** %data5, align 8, !dbg !199
  call void (i8*, ...) @goodB2GVaSink(i8* %13, i8* %14), !dbg !200
  ret void, !dbg !201
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_good() #0 !dbg !202 {
entry:
  call void @goodG2B(), !dbg !203
  call void @goodB2G(), !dbg !204
  ret void, !dbg !205
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_32.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_887/source_code")
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
!40 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad", scope: !1, file: !1, line: 47, type: !41, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!41 = !DISubroutineType(types: !42)
!42 = !{null}
!43 = !DILocalVariable(name: "data", scope: !40, file: !1, line: 49, type: !12)
!44 = !DILocation(line: 49, column: 12, scope: !40)
!45 = !DILocalVariable(name: "dataPtr1", scope: !40, file: !1, line: 50, type: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!47 = !DILocation(line: 50, column: 13, scope: !40)
!48 = !DILocalVariable(name: "dataPtr2", scope: !40, file: !1, line: 51, type: !46)
!49 = !DILocation(line: 51, column: 13, scope: !40)
!50 = !DILocalVariable(name: "dataBuffer", scope: !40, file: !1, line: 52, type: !51)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 100)
!54 = !DILocation(line: 52, column: 10, scope: !40)
!55 = !DILocation(line: 53, column: 12, scope: !40)
!56 = !DILocation(line: 53, column: 10, scope: !40)
!57 = !DILocalVariable(name: "data", scope: !58, file: !1, line: 55, type: !12)
!58 = distinct !DILexicalBlock(scope: !40, file: !1, line: 54, column: 5)
!59 = !DILocation(line: 55, column: 16, scope: !58)
!60 = !DILocation(line: 55, column: 24, scope: !58)
!61 = !DILocation(line: 55, column: 23, scope: !58)
!62 = !DILocalVariable(name: "dataLen", scope: !63, file: !1, line: 58, type: !64)
!63 = distinct !DILexicalBlock(scope: !58, file: !1, line: 56, column: 9)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 46, baseType: !66)
!65 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!66 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!67 = !DILocation(line: 58, column: 20, scope: !63)
!68 = !DILocation(line: 58, column: 37, scope: !63)
!69 = !DILocation(line: 58, column: 30, scope: !63)
!70 = !DILocalVariable(name: "environment", scope: !63, file: !1, line: 59, type: !12)
!71 = !DILocation(line: 59, column: 20, scope: !63)
!72 = !DILocation(line: 59, column: 34, scope: !63)
!73 = !DILocation(line: 61, column: 17, scope: !74)
!74 = distinct !DILexicalBlock(scope: !63, file: !1, line: 61, column: 17)
!75 = !DILocation(line: 61, column: 29, scope: !74)
!76 = !DILocation(line: 61, column: 17, scope: !63)
!77 = !DILocation(line: 64, column: 25, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !1, line: 62, column: 13)
!79 = !DILocation(line: 64, column: 30, scope: !78)
!80 = !DILocation(line: 64, column: 29, scope: !78)
!81 = !DILocation(line: 64, column: 39, scope: !78)
!82 = !DILocation(line: 64, column: 56, scope: !78)
!83 = !DILocation(line: 64, column: 55, scope: !78)
!84 = !DILocation(line: 64, column: 63, scope: !78)
!85 = !DILocation(line: 64, column: 17, scope: !78)
!86 = !DILocation(line: 65, column: 13, scope: !78)
!87 = !DILocation(line: 67, column: 21, scope: !58)
!88 = !DILocation(line: 67, column: 10, scope: !58)
!89 = !DILocation(line: 67, column: 19, scope: !58)
!90 = !DILocalVariable(name: "data", scope: !91, file: !1, line: 70, type: !12)
!91 = distinct !DILexicalBlock(scope: !40, file: !1, line: 69, column: 5)
!92 = !DILocation(line: 70, column: 16, scope: !91)
!93 = !DILocation(line: 70, column: 24, scope: !91)
!94 = !DILocation(line: 70, column: 23, scope: !91)
!95 = !DILocation(line: 71, column: 19, scope: !91)
!96 = !DILocation(line: 71, column: 25, scope: !91)
!97 = !DILocation(line: 71, column: 9, scope: !91)
!98 = !DILocation(line: 73, column: 1, scope: !40)
!99 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !1, file: !1, line: 80, type: !10, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!100 = !DILocalVariable(name: "data", arg: 1, scope: !99, file: !1, line: 80, type: !12)
!101 = !DILocation(line: 80, column: 27, scope: !99)
!102 = !DILocalVariable(name: "args", scope: !103, file: !1, line: 83, type: !18)
!103 = distinct !DILexicalBlock(scope: !99, file: !1, line: 82, column: 5)
!104 = !DILocation(line: 83, column: 17, scope: !103)
!105 = !DILocation(line: 84, column: 9, scope: !103)
!106 = !DILocation(line: 86, column: 17, scope: !103)
!107 = !DILocation(line: 86, column: 23, scope: !103)
!108 = !DILocation(line: 86, column: 9, scope: !103)
!109 = !DILocation(line: 87, column: 9, scope: !103)
!110 = !DILocation(line: 89, column: 1, scope: !99)
!111 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 91, type: !41, scopeLine: 92, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!112 = !DILocalVariable(name: "data", scope: !111, file: !1, line: 93, type: !12)
!113 = !DILocation(line: 93, column: 12, scope: !111)
!114 = !DILocalVariable(name: "dataPtr1", scope: !111, file: !1, line: 94, type: !46)
!115 = !DILocation(line: 94, column: 13, scope: !111)
!116 = !DILocalVariable(name: "dataPtr2", scope: !111, file: !1, line: 95, type: !46)
!117 = !DILocation(line: 95, column: 13, scope: !111)
!118 = !DILocalVariable(name: "dataBuffer", scope: !111, file: !1, line: 96, type: !51)
!119 = !DILocation(line: 96, column: 10, scope: !111)
!120 = !DILocation(line: 97, column: 12, scope: !111)
!121 = !DILocation(line: 97, column: 10, scope: !111)
!122 = !DILocalVariable(name: "data", scope: !123, file: !1, line: 99, type: !12)
!123 = distinct !DILexicalBlock(scope: !111, file: !1, line: 98, column: 5)
!124 = !DILocation(line: 99, column: 16, scope: !123)
!125 = !DILocation(line: 99, column: 24, scope: !123)
!126 = !DILocation(line: 99, column: 23, scope: !123)
!127 = !DILocation(line: 101, column: 16, scope: !123)
!128 = !DILocation(line: 101, column: 9, scope: !123)
!129 = !DILocation(line: 102, column: 21, scope: !123)
!130 = !DILocation(line: 102, column: 10, scope: !123)
!131 = !DILocation(line: 102, column: 19, scope: !123)
!132 = !DILocalVariable(name: "data", scope: !133, file: !1, line: 105, type: !12)
!133 = distinct !DILexicalBlock(scope: !111, file: !1, line: 104, column: 5)
!134 = !DILocation(line: 105, column: 16, scope: !133)
!135 = !DILocation(line: 105, column: 24, scope: !133)
!136 = !DILocation(line: 105, column: 23, scope: !133)
!137 = !DILocation(line: 106, column: 23, scope: !133)
!138 = !DILocation(line: 106, column: 29, scope: !133)
!139 = !DILocation(line: 106, column: 9, scope: !133)
!140 = !DILocation(line: 108, column: 1, scope: !111)
!141 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !1, file: !1, line: 111, type: !10, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!142 = !DILocalVariable(name: "data", arg: 1, scope: !141, file: !1, line: 111, type: !12)
!143 = !DILocation(line: 111, column: 27, scope: !141)
!144 = !DILocalVariable(name: "args", scope: !145, file: !1, line: 114, type: !18)
!145 = distinct !DILexicalBlock(scope: !141, file: !1, line: 113, column: 5)
!146 = !DILocation(line: 114, column: 17, scope: !145)
!147 = !DILocation(line: 115, column: 9, scope: !145)
!148 = !DILocation(line: 117, column: 23, scope: !145)
!149 = !DILocation(line: 117, column: 9, scope: !145)
!150 = !DILocation(line: 118, column: 9, scope: !145)
!151 = !DILocation(line: 120, column: 1, scope: !141)
!152 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 122, type: !41, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!153 = !DILocalVariable(name: "data", scope: !152, file: !1, line: 124, type: !12)
!154 = !DILocation(line: 124, column: 12, scope: !152)
!155 = !DILocalVariable(name: "dataPtr1", scope: !152, file: !1, line: 125, type: !46)
!156 = !DILocation(line: 125, column: 13, scope: !152)
!157 = !DILocalVariable(name: "dataPtr2", scope: !152, file: !1, line: 126, type: !46)
!158 = !DILocation(line: 126, column: 13, scope: !152)
!159 = !DILocalVariable(name: "dataBuffer", scope: !152, file: !1, line: 127, type: !51)
!160 = !DILocation(line: 127, column: 10, scope: !152)
!161 = !DILocation(line: 128, column: 12, scope: !152)
!162 = !DILocation(line: 128, column: 10, scope: !152)
!163 = !DILocalVariable(name: "data", scope: !164, file: !1, line: 130, type: !12)
!164 = distinct !DILexicalBlock(scope: !152, file: !1, line: 129, column: 5)
!165 = !DILocation(line: 130, column: 16, scope: !164)
!166 = !DILocation(line: 130, column: 24, scope: !164)
!167 = !DILocation(line: 130, column: 23, scope: !164)
!168 = !DILocalVariable(name: "dataLen", scope: !169, file: !1, line: 133, type: !64)
!169 = distinct !DILexicalBlock(scope: !164, file: !1, line: 131, column: 9)
!170 = !DILocation(line: 133, column: 20, scope: !169)
!171 = !DILocation(line: 133, column: 37, scope: !169)
!172 = !DILocation(line: 133, column: 30, scope: !169)
!173 = !DILocalVariable(name: "environment", scope: !169, file: !1, line: 134, type: !12)
!174 = !DILocation(line: 134, column: 20, scope: !169)
!175 = !DILocation(line: 134, column: 34, scope: !169)
!176 = !DILocation(line: 136, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !169, file: !1, line: 136, column: 17)
!178 = !DILocation(line: 136, column: 29, scope: !177)
!179 = !DILocation(line: 136, column: 17, scope: !169)
!180 = !DILocation(line: 139, column: 25, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 137, column: 13)
!182 = !DILocation(line: 139, column: 30, scope: !181)
!183 = !DILocation(line: 139, column: 29, scope: !181)
!184 = !DILocation(line: 139, column: 39, scope: !181)
!185 = !DILocation(line: 139, column: 56, scope: !181)
!186 = !DILocation(line: 139, column: 55, scope: !181)
!187 = !DILocation(line: 139, column: 63, scope: !181)
!188 = !DILocation(line: 139, column: 17, scope: !181)
!189 = !DILocation(line: 140, column: 13, scope: !181)
!190 = !DILocation(line: 142, column: 21, scope: !164)
!191 = !DILocation(line: 142, column: 10, scope: !164)
!192 = !DILocation(line: 142, column: 19, scope: !164)
!193 = !DILocalVariable(name: "data", scope: !194, file: !1, line: 145, type: !12)
!194 = distinct !DILexicalBlock(scope: !152, file: !1, line: 144, column: 5)
!195 = !DILocation(line: 145, column: 16, scope: !194)
!196 = !DILocation(line: 145, column: 24, scope: !194)
!197 = !DILocation(line: 145, column: 23, scope: !194)
!198 = !DILocation(line: 146, column: 23, scope: !194)
!199 = !DILocation(line: 146, column: 29, scope: !194)
!200 = !DILocation(line: 146, column: 9, scope: !194)
!201 = !DILocation(line: 148, column: 1, scope: !152)
!202 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_good", scope: !1, file: !1, line: 150, type: !41, scopeLine: 151, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!203 = !DILocation(line: 152, column: 5, scope: !202)
!204 = !DILocation(line: 153, column: 5, scope: !202)
!205 = !DILocation(line: 154, column: 1, scope: !202)
