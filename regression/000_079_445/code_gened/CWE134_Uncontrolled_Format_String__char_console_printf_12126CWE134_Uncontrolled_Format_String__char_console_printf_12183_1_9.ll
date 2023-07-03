; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_12126CWE134_Uncontrolled_Format_String__char_console_printf_12183_1_9.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_12126CWE134_Uncontrolled_Format_String__char_console_printf_12183_1_9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_12126CWE134_Uncontrolled_Format_String__char_console_printf_12183_1_9(i8* %_goodB2G_data_0, void (i8*)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_dataLen_022 = alloca i64, align 8
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !28
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !29
  %tobool = icmp ne i32 %call, 0, !dbg !29
  br i1 %tobool, label %if.then, label %if.else21, !dbg !31

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !38
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !39
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !40
  store i64 %call1, i64* %_goodB2G_dataLen_0, align 8, !dbg !38
  %2 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !41
  %sub = sub i64 100, %2, !dbg !43
  %cmp = icmp ugt i64 %sub, 1, !dbg !44
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !45

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !46
  %4 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !50
  %5 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !51
  %sub3 = sub i64 100, %5, !dbg !52
  %conv = trunc i64 %sub3 to i32, !dbg !53
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !54
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !55
  %cmp5 = icmp ne i8* %call4, null, !dbg !56
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !57

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !58
  %call8 = call i64 @strlen(i8* %7) #6, !dbg !60
  store i64 %call8, i64* %_goodB2G_dataLen_0, align 8, !dbg !61
  %8 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !62
  %cmp9 = icmp ugt i64 %8, 0, !dbg !64
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !65

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !66
  %10 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !67
  %sub11 = sub i64 %10, 1, !dbg !68
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !66
  %11 = load i8, i8* %arrayidx, align 1, !dbg !66
  %conv12 = sext i8 %11 to i32, !dbg !66
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !69
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !70

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !71
  %13 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !73
  %sub16 = sub i64 %13, 1, !dbg !74
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !71
  store i8 0, i8* %arrayidx17, align 1, !dbg !75
  br label %if.end, !dbg !76

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !77

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !78
  %14 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !80
  %15 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !81
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !80
  store i8 0, i8* %arrayidx18, align 1, !dbg !82
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !83

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end52, !dbg !84

if.else21:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_022, metadata !85, metadata !DIExpression()), !dbg !88
  %16 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !89
  %call23 = call i64 @strlen(i8* %16) #6, !dbg !90
  store i64 %call23, i64* %_goodB2G_dataLen_022, align 8, !dbg !88
  %17 = load i64, i64* %_goodB2G_dataLen_022, align 8, !dbg !91
  %sub24 = sub i64 100, %17, !dbg !93
  %cmp25 = icmp ugt i64 %sub24, 1, !dbg !94
  br i1 %cmp25, label %if.then27, label %if.end51, !dbg !95

if.then27:                                        ; preds = %if.else21
  %18 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !96
  %19 = load i64, i64* %_goodB2G_dataLen_022, align 8, !dbg !99
  %add.ptr28 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !100
  %20 = load i64, i64* %_goodB2G_dataLen_022, align 8, !dbg !101
  %sub29 = sub i64 100, %20, !dbg !102
  %conv30 = trunc i64 %sub29 to i32, !dbg !103
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !104
  %call31 = call i8* @fgets(i8* %add.ptr28, i32 %conv30, %struct._IO_FILE* %21), !dbg !105
  %cmp32 = icmp ne i8* %call31, null, !dbg !106
  br i1 %cmp32, label %if.then34, label %if.else48, !dbg !107

if.then34:                                        ; preds = %if.then27
  %22 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !108
  %call35 = call i64 @strlen(i8* %22) #6, !dbg !110
  store i64 %call35, i64* %_goodB2G_dataLen_022, align 8, !dbg !111
  %23 = load i64, i64* %_goodB2G_dataLen_022, align 8, !dbg !112
  %cmp36 = icmp ugt i64 %23, 0, !dbg !114
  br i1 %cmp36, label %land.lhs.true38, label %if.end47, !dbg !115

land.lhs.true38:                                  ; preds = %if.then34
  %24 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !116
  %25 = load i64, i64* %_goodB2G_dataLen_022, align 8, !dbg !117
  %sub39 = sub i64 %25, 1, !dbg !118
  %arrayidx40 = getelementptr inbounds i8, i8* %24, i64 %sub39, !dbg !116
  %26 = load i8, i8* %arrayidx40, align 1, !dbg !116
  %conv41 = sext i8 %26 to i32, !dbg !116
  %cmp42 = icmp eq i32 %conv41, 10, !dbg !119
  br i1 %cmp42, label %if.then44, label %if.end47, !dbg !120

if.then44:                                        ; preds = %land.lhs.true38
  %27 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !121
  %28 = load i64, i64* %_goodB2G_dataLen_022, align 8, !dbg !123
  %sub45 = sub i64 %28, 1, !dbg !124
  %arrayidx46 = getelementptr inbounds i8, i8* %27, i64 %sub45, !dbg !121
  store i8 0, i8* %arrayidx46, align 1, !dbg !125
  br label %if.end47, !dbg !126

if.end47:                                         ; preds = %if.then44, %land.lhs.true38, %if.then34
  br label %if.end50, !dbg !127

if.else48:                                        ; preds = %if.then27
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !128
  %29 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !130
  %30 = load i64, i64* %_goodB2G_dataLen_022, align 8, !dbg !131
  %arrayidx49 = getelementptr inbounds i8, i8* %29, i64 %30, !dbg !130
  store i8 0, i8* %arrayidx49, align 1, !dbg !132
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.end47
  br label %if.end51, !dbg !133

if.end51:                                         ; preds = %if.end50, %if.else21
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end20
  %call53 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !134
  %tobool54 = icmp ne i32 %call53, 0, !dbg !134
  br i1 %tobool54, label %if.then55, label %if.else57, !dbg !136

if.then55:                                        ; preds = %if.end52
  %31 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !137
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %31), !dbg !139
  br label %if.end59, !dbg !140

if.else57:                                        ; preds = %if.end52
  %32 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !141
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %32), !dbg !143
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.then55
  br label %goodB2G_label_, !dbg !144

goodB2G_label_:                                   ; preds = %if.end59
  call void @llvm.dbg.label(metadata !145), !dbg !146
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !147, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !150, metadata !DIExpression()), !dbg !151
  %33 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !151
  call void @llvm.memset.p0i8.i64(i8* align 16 %33, i8 0, i64 100, i1 false), !dbg !151
  %arraydecay60 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !152
  store i8* %arraydecay60, i8** %_goodG2B_data_0, align 8, !dbg !153
  %call61 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !154
  %tobool62 = icmp ne i32 %call61, 0, !dbg !154
  br i1 %tobool62, label %if.then63, label %if.else65, !dbg !156

if.then63:                                        ; preds = %goodB2G_label_
  %34 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !157
  %call64 = call i8* @strcpy(i8* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !159
  br label %if.end67, !dbg !160

if.else65:                                        ; preds = %goodB2G_label_
  %35 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !161
  %call66 = call i8* @strcpy(i8* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !163
  br label %if.end67

if.end67:                                         ; preds = %if.else65, %if.then63
  %call68 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !164
  %tobool69 = icmp ne i32 %call68, 0, !dbg !164
  br i1 %tobool69, label %if.then70, label %if.else72, !dbg !166

if.then70:                                        ; preds = %if.end67
  %36 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !167
  %call71 = call i32 (i8*, ...) @printf(i8* %36), !dbg !169
  br label %if.end73, !dbg !170

if.else72:                                        ; preds = %if.end67
  %37 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !171
  %38 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !173
  call void %37(i8* %38), !dbg !171
  br label %if.end73

if.end73:                                         ; preds = %if.else72, %if.then70
  br label %goodG2B_label_, !dbg !174

goodG2B_label_:                                   ; preds = %if.end73
  call void @llvm.dbg.label(metadata !175), !dbg !176
  br label %CWE134_Uncontrolled_Format_String__char_console_printf_12_good_label_, !dbg !177

CWE134_Uncontrolled_Format_String__char_console_printf_12_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !178), !dbg !179
  ret void, !dbg !180
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @globalReturnsTrueOrFalse(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_12126CWE134_Uncontrolled_Format_String__char_console_printf_12183_1_9.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_445/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_12126CWE134_Uncontrolled_Format_String__char_console_printf_12183_1_9", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !12}
!17 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 137, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 161, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !22, file: !1, line: 6, type: !23)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 5, column: 3)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 6, column: 10, scope: !22)
!27 = !DILocation(line: 7, column: 23, scope: !22)
!28 = !DILocation(line: 7, column: 21, scope: !22)
!29 = !DILocation(line: 8, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !22, file: !1, line: 8, column: 9)
!31 = !DILocation(line: 8, column: 9, scope: !22)
!32 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !33, file: !1, line: 11, type: !35)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 10, column: 7)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 9, column: 5)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 11, column: 16, scope: !33)
!39 = !DILocation(line: 11, column: 44, scope: !33)
!40 = !DILocation(line: 11, column: 37, scope: !33)
!41 = !DILocation(line: 12, column: 20, scope: !42)
!42 = distinct !DILexicalBlock(scope: !33, file: !1, line: 12, column: 13)
!43 = !DILocation(line: 12, column: 18, scope: !42)
!44 = !DILocation(line: 12, column: 40, scope: !42)
!45 = !DILocation(line: 12, column: 13, scope: !33)
!46 = !DILocation(line: 14, column: 21, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 14, column: 15)
!48 = distinct !DILexicalBlock(scope: !42, file: !1, line: 13, column: 9)
!49 = !DILocation(line: 14, column: 39, scope: !47)
!50 = !DILocation(line: 14, column: 37, scope: !47)
!51 = !DILocation(line: 14, column: 72, scope: !47)
!52 = !DILocation(line: 14, column: 70, scope: !47)
!53 = !DILocation(line: 14, column: 59, scope: !47)
!54 = !DILocation(line: 14, column: 93, scope: !47)
!55 = !DILocation(line: 14, column: 15, scope: !47)
!56 = !DILocation(line: 14, column: 100, scope: !47)
!57 = !DILocation(line: 14, column: 15, scope: !48)
!58 = !DILocation(line: 16, column: 41, scope: !59)
!59 = distinct !DILexicalBlock(scope: !47, file: !1, line: 15, column: 11)
!60 = !DILocation(line: 16, column: 34, scope: !59)
!61 = !DILocation(line: 16, column: 32, scope: !59)
!62 = !DILocation(line: 17, column: 18, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 17, column: 17)
!64 = !DILocation(line: 17, column: 37, scope: !63)
!65 = !DILocation(line: 17, column: 42, scope: !63)
!66 = !DILocation(line: 17, column: 46, scope: !63)
!67 = !DILocation(line: 17, column: 62, scope: !63)
!68 = !DILocation(line: 17, column: 81, scope: !63)
!69 = !DILocation(line: 17, column: 86, scope: !63)
!70 = !DILocation(line: 17, column: 17, scope: !59)
!71 = !DILocation(line: 19, column: 15, scope: !72)
!72 = distinct !DILexicalBlock(scope: !63, file: !1, line: 18, column: 13)
!73 = !DILocation(line: 19, column: 31, scope: !72)
!74 = !DILocation(line: 19, column: 50, scope: !72)
!75 = !DILocation(line: 19, column: 55, scope: !72)
!76 = !DILocation(line: 20, column: 13, scope: !72)
!77 = !DILocation(line: 22, column: 11, scope: !59)
!78 = !DILocation(line: 25, column: 13, scope: !79)
!79 = distinct !DILexicalBlock(scope: !47, file: !1, line: 24, column: 11)
!80 = !DILocation(line: 26, column: 13, scope: !79)
!81 = !DILocation(line: 26, column: 29, scope: !79)
!82 = !DILocation(line: 26, column: 49, scope: !79)
!83 = !DILocation(line: 29, column: 9, scope: !48)
!84 = !DILocation(line: 32, column: 5, scope: !34)
!85 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !86, file: !1, line: 36, type: !35)
!86 = distinct !DILexicalBlock(scope: !87, file: !1, line: 35, column: 7)
!87 = distinct !DILexicalBlock(scope: !30, file: !1, line: 34, column: 5)
!88 = !DILocation(line: 36, column: 16, scope: !86)
!89 = !DILocation(line: 36, column: 44, scope: !86)
!90 = !DILocation(line: 36, column: 37, scope: !86)
!91 = !DILocation(line: 37, column: 20, scope: !92)
!92 = distinct !DILexicalBlock(scope: !86, file: !1, line: 37, column: 13)
!93 = !DILocation(line: 37, column: 18, scope: !92)
!94 = !DILocation(line: 37, column: 40, scope: !92)
!95 = !DILocation(line: 37, column: 13, scope: !86)
!96 = !DILocation(line: 39, column: 21, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !1, line: 39, column: 15)
!98 = distinct !DILexicalBlock(scope: !92, file: !1, line: 38, column: 9)
!99 = !DILocation(line: 39, column: 39, scope: !97)
!100 = !DILocation(line: 39, column: 37, scope: !97)
!101 = !DILocation(line: 39, column: 72, scope: !97)
!102 = !DILocation(line: 39, column: 70, scope: !97)
!103 = !DILocation(line: 39, column: 59, scope: !97)
!104 = !DILocation(line: 39, column: 93, scope: !97)
!105 = !DILocation(line: 39, column: 15, scope: !97)
!106 = !DILocation(line: 39, column: 100, scope: !97)
!107 = !DILocation(line: 39, column: 15, scope: !98)
!108 = !DILocation(line: 41, column: 41, scope: !109)
!109 = distinct !DILexicalBlock(scope: !97, file: !1, line: 40, column: 11)
!110 = !DILocation(line: 41, column: 34, scope: !109)
!111 = !DILocation(line: 41, column: 32, scope: !109)
!112 = !DILocation(line: 42, column: 18, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !1, line: 42, column: 17)
!114 = !DILocation(line: 42, column: 37, scope: !113)
!115 = !DILocation(line: 42, column: 42, scope: !113)
!116 = !DILocation(line: 42, column: 46, scope: !113)
!117 = !DILocation(line: 42, column: 62, scope: !113)
!118 = !DILocation(line: 42, column: 81, scope: !113)
!119 = !DILocation(line: 42, column: 86, scope: !113)
!120 = !DILocation(line: 42, column: 17, scope: !109)
!121 = !DILocation(line: 44, column: 15, scope: !122)
!122 = distinct !DILexicalBlock(scope: !113, file: !1, line: 43, column: 13)
!123 = !DILocation(line: 44, column: 31, scope: !122)
!124 = !DILocation(line: 44, column: 50, scope: !122)
!125 = !DILocation(line: 44, column: 55, scope: !122)
!126 = !DILocation(line: 45, column: 13, scope: !122)
!127 = !DILocation(line: 47, column: 11, scope: !109)
!128 = !DILocation(line: 50, column: 13, scope: !129)
!129 = distinct !DILexicalBlock(scope: !97, file: !1, line: 49, column: 11)
!130 = !DILocation(line: 51, column: 13, scope: !129)
!131 = !DILocation(line: 51, column: 29, scope: !129)
!132 = !DILocation(line: 51, column: 49, scope: !129)
!133 = !DILocation(line: 54, column: 9, scope: !98)
!134 = !DILocation(line: 59, column: 9, scope: !135)
!135 = distinct !DILexicalBlock(scope: !22, file: !1, line: 59, column: 9)
!136 = !DILocation(line: 59, column: 9, scope: !22)
!137 = !DILocation(line: 61, column: 22, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !1, line: 60, column: 5)
!139 = !DILocation(line: 61, column: 7, scope: !138)
!140 = !DILocation(line: 62, column: 5, scope: !138)
!141 = !DILocation(line: 65, column: 22, scope: !142)
!142 = distinct !DILexicalBlock(scope: !135, file: !1, line: 64, column: 5)
!143 = !DILocation(line: 65, column: 7, scope: !142)
!144 = !DILocation(line: 59, column: 34, scope: !135)
!145 = !DILabel(scope: !22, name: "goodB2G_label_", file: !1, line: 68)
!146 = !DILocation(line: 68, column: 5, scope: !22)
!147 = !DILocalVariable(name: "_goodG2B_data_0", scope: !148, file: !1, line: 75, type: !12)
!148 = distinct !DILexicalBlock(scope: !9, file: !1, line: 74, column: 3)
!149 = !DILocation(line: 75, column: 11, scope: !148)
!150 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !148, file: !1, line: 76, type: !23)
!151 = !DILocation(line: 76, column: 10, scope: !148)
!152 = !DILocation(line: 77, column: 23, scope: !148)
!153 = !DILocation(line: 77, column: 21, scope: !148)
!154 = !DILocation(line: 78, column: 9, scope: !155)
!155 = distinct !DILexicalBlock(scope: !148, file: !1, line: 78, column: 9)
!156 = !DILocation(line: 78, column: 9, scope: !148)
!157 = !DILocation(line: 80, column: 14, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !1, line: 79, column: 5)
!159 = !DILocation(line: 80, column: 7, scope: !158)
!160 = !DILocation(line: 81, column: 5, scope: !158)
!161 = !DILocation(line: 84, column: 14, scope: !162)
!162 = distinct !DILexicalBlock(scope: !155, file: !1, line: 83, column: 5)
!163 = !DILocation(line: 84, column: 7, scope: !162)
!164 = !DILocation(line: 87, column: 9, scope: !165)
!165 = distinct !DILexicalBlock(scope: !148, file: !1, line: 87, column: 9)
!166 = !DILocation(line: 87, column: 9, scope: !148)
!167 = !DILocation(line: 89, column: 14, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !1, line: 88, column: 5)
!169 = !DILocation(line: 89, column: 7, scope: !168)
!170 = !DILocation(line: 90, column: 5, scope: !168)
!171 = !DILocation(line: 93, column: 7, scope: !172)
!172 = distinct !DILexicalBlock(scope: !165, file: !1, line: 92, column: 5)
!173 = !DILocation(line: 93, column: 14, scope: !172)
!174 = !DILocation(line: 87, column: 34, scope: !165)
!175 = !DILabel(scope: !148, name: "goodG2B_label_", file: !1, line: 96)
!176 = !DILocation(line: 96, column: 5, scope: !148)
!177 = !DILocation(line: 101, column: 3, scope: !148)
!178 = !DILabel(scope: !9, name: "CWE134_Uncontrolled_Format_String__char_console_printf_12_good_label_", file: !1, line: 102)
!179 = !DILocation(line: 102, column: 3, scope: !9)
!180 = !DILocation(line: 107, column: 1, scope: !9)
