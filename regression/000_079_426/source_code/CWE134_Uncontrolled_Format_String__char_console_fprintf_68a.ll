; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_fprintf_68a.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_fprintf_68a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@CWE134_Uncontrolled_Format_String__char_console_fprintf_68_badData = dso_local global i8* null, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@CWE134_Uncontrolled_Format_String__char_console_fprintf_68_goodG2BData = dso_local global i8* null, align 8, !dbg !9
@CWE134_Uncontrolled_Format_String__char_console_fprintf_68_goodB2GData = dso_local global i8* null, align 8, !dbg !13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_68_bad() #0 !dbg !19 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !24, metadata !DIExpression()), !dbg !28
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !28
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !28
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !29
  store i8* %arraydecay, i8** %data, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !31, metadata !DIExpression()), !dbg !36
  %1 = load i8*, i8** %data, align 8, !dbg !37
  %call = call i64 @strlen(i8* %1) #6, !dbg !38
  store i64 %call, i64* %dataLen, align 8, !dbg !36
  %2 = load i64, i64* %dataLen, align 8, !dbg !39
  %sub = sub i64 100, %2, !dbg !41
  %cmp = icmp ugt i64 %sub, 1, !dbg !42
  br i1 %cmp, label %if.then, label %if.end18, !dbg !43

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !44
  %4 = load i64, i64* %dataLen, align 8, !dbg !47
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !48
  %5 = load i64, i64* %dataLen, align 8, !dbg !49
  %sub1 = sub i64 100, %5, !dbg !50
  %conv = trunc i64 %sub1 to i32, !dbg !51
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !52
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !53
  %cmp3 = icmp ne i8* %call2, null, !dbg !54
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !55

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !56
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !58
  store i64 %call6, i64* %dataLen, align 8, !dbg !59
  %8 = load i64, i64* %dataLen, align 8, !dbg !60
  %cmp7 = icmp ugt i64 %8, 0, !dbg !62
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !63

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !64
  %10 = load i64, i64* %dataLen, align 8, !dbg !65
  %sub9 = sub i64 %10, 1, !dbg !66
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !64
  %11 = load i8, i8* %arrayidx, align 1, !dbg !64
  %conv10 = sext i8 %11 to i32, !dbg !64
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !67
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !68

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !69
  %13 = load i64, i64* %dataLen, align 8, !dbg !71
  %sub14 = sub i64 %13, 1, !dbg !72
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !69
  store i8 0, i8* %arrayidx15, align 1, !dbg !73
  br label %if.end, !dbg !74

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !75

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !76
  %14 = load i8*, i8** %data, align 8, !dbg !78
  %15 = load i64, i64* %dataLen, align 8, !dbg !79
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !78
  store i8 0, i8* %arrayidx16, align 1, !dbg !80
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !81

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !82
  store i8* %16, i8** @CWE134_Uncontrolled_Format_String__char_console_fprintf_68_badData, align 8, !dbg !83
  call void (...) @CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_badSink(), !dbg !84
  ret void, !dbg !85
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

declare dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_badSink(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !86 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !89, metadata !DIExpression()), !dbg !90
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !90
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !90
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !91
  store i8* %arraydecay, i8** %data, align 8, !dbg !92
  %1 = load i8*, i8** %data, align 8, !dbg !93
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !94
  %2 = load i8*, i8** %data, align 8, !dbg !95
  store i8* %2, i8** @CWE134_Uncontrolled_Format_String__char_console_fprintf_68_goodG2BData, align 8, !dbg !96
  call void (...) @CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_goodG2BSink(), !dbg !97
  ret void, !dbg !98
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

declare dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_goodG2BSink(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !99 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !102, metadata !DIExpression()), !dbg !103
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !103
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !103
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !104
  store i8* %arraydecay, i8** %data, align 8, !dbg !105
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !106, metadata !DIExpression()), !dbg !108
  %1 = load i8*, i8** %data, align 8, !dbg !109
  %call = call i64 @strlen(i8* %1) #6, !dbg !110
  store i64 %call, i64* %dataLen, align 8, !dbg !108
  %2 = load i64, i64* %dataLen, align 8, !dbg !111
  %sub = sub i64 100, %2, !dbg !113
  %cmp = icmp ugt i64 %sub, 1, !dbg !114
  br i1 %cmp, label %if.then, label %if.end18, !dbg !115

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !116
  %4 = load i64, i64* %dataLen, align 8, !dbg !119
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !120
  %5 = load i64, i64* %dataLen, align 8, !dbg !121
  %sub1 = sub i64 100, %5, !dbg !122
  %conv = trunc i64 %sub1 to i32, !dbg !123
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !124
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !125
  %cmp3 = icmp ne i8* %call2, null, !dbg !126
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !127

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !128
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !130
  store i64 %call6, i64* %dataLen, align 8, !dbg !131
  %8 = load i64, i64* %dataLen, align 8, !dbg !132
  %cmp7 = icmp ugt i64 %8, 0, !dbg !134
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !135

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !136
  %10 = load i64, i64* %dataLen, align 8, !dbg !137
  %sub9 = sub i64 %10, 1, !dbg !138
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !136
  %11 = load i8, i8* %arrayidx, align 1, !dbg !136
  %conv10 = sext i8 %11 to i32, !dbg !136
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !139
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !140

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !141
  %13 = load i64, i64* %dataLen, align 8, !dbg !143
  %sub14 = sub i64 %13, 1, !dbg !144
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !141
  store i8 0, i8* %arrayidx15, align 1, !dbg !145
  br label %if.end, !dbg !146

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !147

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !148
  %14 = load i8*, i8** %data, align 8, !dbg !150
  %15 = load i64, i64* %dataLen, align 8, !dbg !151
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !150
  store i8 0, i8* %arrayidx16, align 1, !dbg !152
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !153

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !154
  store i8* %16, i8** @CWE134_Uncontrolled_Format_String__char_console_fprintf_68_goodB2GData, align 8, !dbg !155
  call void (...) @CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_goodB2GSink(), !dbg !156
  ret void, !dbg !157
}

declare dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_goodB2GSink(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_68_good() #0 !dbg !158 {
entry:
  call void @goodG2B(), !dbg !159
  call void @goodB2G(), !dbg !160
  ret void, !dbg !161
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_68_badData", scope: !2, file: !3, line: 25, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_68a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_426/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0, !9, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_68_goodG2BData", scope: !2, file: !3, line: 26, type: !11, isLocal: false, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_68_goodB2GData", scope: !2, file: !3, line: 27, type: !11, isLocal: false, isDefinition: true)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 12.0.0"}
!19 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_68_bad", scope: !3, file: !3, line: 33, type: !20, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null}
!22 = !DILocalVariable(name: "data", scope: !19, file: !3, line: 35, type: !11)
!23 = !DILocation(line: 35, column: 12, scope: !19)
!24 = !DILocalVariable(name: "dataBuffer", scope: !19, file: !3, line: 36, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 800, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 100)
!28 = !DILocation(line: 36, column: 10, scope: !19)
!29 = !DILocation(line: 37, column: 12, scope: !19)
!30 = !DILocation(line: 37, column: 10, scope: !19)
!31 = !DILocalVariable(name: "dataLen", scope: !32, file: !3, line: 40, type: !33)
!32 = distinct !DILexicalBlock(scope: !19, file: !3, line: 38, column: 5)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocation(line: 40, column: 16, scope: !32)
!37 = !DILocation(line: 40, column: 33, scope: !32)
!38 = !DILocation(line: 40, column: 26, scope: !32)
!39 = !DILocation(line: 42, column: 17, scope: !40)
!40 = distinct !DILexicalBlock(scope: !32, file: !3, line: 42, column: 13)
!41 = !DILocation(line: 42, column: 16, scope: !40)
!42 = !DILocation(line: 42, column: 25, scope: !40)
!43 = !DILocation(line: 42, column: 13, scope: !32)
!44 = !DILocation(line: 45, column: 23, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !3, line: 45, column: 17)
!46 = distinct !DILexicalBlock(scope: !40, file: !3, line: 43, column: 9)
!47 = !DILocation(line: 45, column: 28, scope: !45)
!48 = !DILocation(line: 45, column: 27, scope: !45)
!49 = !DILocation(line: 45, column: 47, scope: !45)
!50 = !DILocation(line: 45, column: 46, scope: !45)
!51 = !DILocation(line: 45, column: 37, scope: !45)
!52 = !DILocation(line: 45, column: 57, scope: !45)
!53 = !DILocation(line: 45, column: 17, scope: !45)
!54 = !DILocation(line: 45, column: 64, scope: !45)
!55 = !DILocation(line: 45, column: 17, scope: !46)
!56 = !DILocation(line: 49, column: 34, scope: !57)
!57 = distinct !DILexicalBlock(scope: !45, file: !3, line: 46, column: 13)
!58 = !DILocation(line: 49, column: 27, scope: !57)
!59 = !DILocation(line: 49, column: 25, scope: !57)
!60 = !DILocation(line: 50, column: 21, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !3, line: 50, column: 21)
!62 = !DILocation(line: 50, column: 29, scope: !61)
!63 = !DILocation(line: 50, column: 33, scope: !61)
!64 = !DILocation(line: 50, column: 36, scope: !61)
!65 = !DILocation(line: 50, column: 41, scope: !61)
!66 = !DILocation(line: 50, column: 48, scope: !61)
!67 = !DILocation(line: 50, column: 52, scope: !61)
!68 = !DILocation(line: 50, column: 21, scope: !57)
!69 = !DILocation(line: 52, column: 21, scope: !70)
!70 = distinct !DILexicalBlock(scope: !61, file: !3, line: 51, column: 17)
!71 = !DILocation(line: 52, column: 26, scope: !70)
!72 = !DILocation(line: 52, column: 33, scope: !70)
!73 = !DILocation(line: 52, column: 37, scope: !70)
!74 = !DILocation(line: 53, column: 17, scope: !70)
!75 = !DILocation(line: 54, column: 13, scope: !57)
!76 = !DILocation(line: 57, column: 17, scope: !77)
!77 = distinct !DILexicalBlock(scope: !45, file: !3, line: 56, column: 13)
!78 = !DILocation(line: 59, column: 17, scope: !77)
!79 = !DILocation(line: 59, column: 22, scope: !77)
!80 = !DILocation(line: 59, column: 31, scope: !77)
!81 = !DILocation(line: 61, column: 9, scope: !46)
!82 = !DILocation(line: 63, column: 74, scope: !19)
!83 = !DILocation(line: 63, column: 72, scope: !19)
!84 = !DILocation(line: 64, column: 5, scope: !19)
!85 = !DILocation(line: 65, column: 1, scope: !19)
!86 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 74, type: !20, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!87 = !DILocalVariable(name: "data", scope: !86, file: !3, line: 76, type: !11)
!88 = !DILocation(line: 76, column: 12, scope: !86)
!89 = !DILocalVariable(name: "dataBuffer", scope: !86, file: !3, line: 77, type: !25)
!90 = !DILocation(line: 77, column: 10, scope: !86)
!91 = !DILocation(line: 78, column: 12, scope: !86)
!92 = !DILocation(line: 78, column: 10, scope: !86)
!93 = !DILocation(line: 80, column: 12, scope: !86)
!94 = !DILocation(line: 80, column: 5, scope: !86)
!95 = !DILocation(line: 81, column: 78, scope: !86)
!96 = !DILocation(line: 81, column: 76, scope: !86)
!97 = !DILocation(line: 82, column: 5, scope: !86)
!98 = !DILocation(line: 83, column: 1, scope: !86)
!99 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 86, type: !20, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!100 = !DILocalVariable(name: "data", scope: !99, file: !3, line: 88, type: !11)
!101 = !DILocation(line: 88, column: 12, scope: !99)
!102 = !DILocalVariable(name: "dataBuffer", scope: !99, file: !3, line: 89, type: !25)
!103 = !DILocation(line: 89, column: 10, scope: !99)
!104 = !DILocation(line: 90, column: 12, scope: !99)
!105 = !DILocation(line: 90, column: 10, scope: !99)
!106 = !DILocalVariable(name: "dataLen", scope: !107, file: !3, line: 93, type: !33)
!107 = distinct !DILexicalBlock(scope: !99, file: !3, line: 91, column: 5)
!108 = !DILocation(line: 93, column: 16, scope: !107)
!109 = !DILocation(line: 93, column: 33, scope: !107)
!110 = !DILocation(line: 93, column: 26, scope: !107)
!111 = !DILocation(line: 95, column: 17, scope: !112)
!112 = distinct !DILexicalBlock(scope: !107, file: !3, line: 95, column: 13)
!113 = !DILocation(line: 95, column: 16, scope: !112)
!114 = !DILocation(line: 95, column: 25, scope: !112)
!115 = !DILocation(line: 95, column: 13, scope: !107)
!116 = !DILocation(line: 98, column: 23, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !3, line: 98, column: 17)
!118 = distinct !DILexicalBlock(scope: !112, file: !3, line: 96, column: 9)
!119 = !DILocation(line: 98, column: 28, scope: !117)
!120 = !DILocation(line: 98, column: 27, scope: !117)
!121 = !DILocation(line: 98, column: 47, scope: !117)
!122 = !DILocation(line: 98, column: 46, scope: !117)
!123 = !DILocation(line: 98, column: 37, scope: !117)
!124 = !DILocation(line: 98, column: 57, scope: !117)
!125 = !DILocation(line: 98, column: 17, scope: !117)
!126 = !DILocation(line: 98, column: 64, scope: !117)
!127 = !DILocation(line: 98, column: 17, scope: !118)
!128 = !DILocation(line: 102, column: 34, scope: !129)
!129 = distinct !DILexicalBlock(scope: !117, file: !3, line: 99, column: 13)
!130 = !DILocation(line: 102, column: 27, scope: !129)
!131 = !DILocation(line: 102, column: 25, scope: !129)
!132 = !DILocation(line: 103, column: 21, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !3, line: 103, column: 21)
!134 = !DILocation(line: 103, column: 29, scope: !133)
!135 = !DILocation(line: 103, column: 33, scope: !133)
!136 = !DILocation(line: 103, column: 36, scope: !133)
!137 = !DILocation(line: 103, column: 41, scope: !133)
!138 = !DILocation(line: 103, column: 48, scope: !133)
!139 = !DILocation(line: 103, column: 52, scope: !133)
!140 = !DILocation(line: 103, column: 21, scope: !129)
!141 = !DILocation(line: 105, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !133, file: !3, line: 104, column: 17)
!143 = !DILocation(line: 105, column: 26, scope: !142)
!144 = !DILocation(line: 105, column: 33, scope: !142)
!145 = !DILocation(line: 105, column: 37, scope: !142)
!146 = !DILocation(line: 106, column: 17, scope: !142)
!147 = !DILocation(line: 107, column: 13, scope: !129)
!148 = !DILocation(line: 110, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !117, file: !3, line: 109, column: 13)
!150 = !DILocation(line: 112, column: 17, scope: !149)
!151 = !DILocation(line: 112, column: 22, scope: !149)
!152 = !DILocation(line: 112, column: 31, scope: !149)
!153 = !DILocation(line: 114, column: 9, scope: !118)
!154 = !DILocation(line: 116, column: 78, scope: !99)
!155 = !DILocation(line: 116, column: 76, scope: !99)
!156 = !DILocation(line: 117, column: 5, scope: !99)
!157 = !DILocation(line: 118, column: 1, scope: !99)
!158 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_68_good", scope: !3, file: !3, line: 120, type: !20, scopeLine: 121, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!159 = !DILocation(line: 122, column: 5, scope: !158)
!160 = !DILocation(line: 123, column: 5, scope: !158)
!161 = !DILocation(line: 124, column: 1, scope: !158)
