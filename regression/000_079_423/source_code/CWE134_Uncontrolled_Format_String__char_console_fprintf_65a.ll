; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_fprintf_65a.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_fprintf_65a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_65_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !17, metadata !DIExpression()), !dbg !21
  store void (i8*)* @CWE134_Uncontrolled_Format_String__char_console_fprintf_65b_badSink, void (i8*)** %funcPtr, align 8, !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %data, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !29, metadata !DIExpression()), !dbg !34
  %1 = load i8*, i8** %data, align 8, !dbg !35
  %call = call i64 @strlen(i8* %1) #6, !dbg !36
  store i64 %call, i64* %dataLen, align 8, !dbg !34
  %2 = load i64, i64* %dataLen, align 8, !dbg !37
  %sub = sub i64 100, %2, !dbg !39
  %cmp = icmp ugt i64 %sub, 1, !dbg !40
  br i1 %cmp, label %if.then, label %if.end18, !dbg !41

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !42
  %4 = load i64, i64* %dataLen, align 8, !dbg !45
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !46
  %5 = load i64, i64* %dataLen, align 8, !dbg !47
  %sub1 = sub i64 100, %5, !dbg !48
  %conv = trunc i64 %sub1 to i32, !dbg !49
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !50
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !51
  %cmp3 = icmp ne i8* %call2, null, !dbg !52
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !53

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !54
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !56
  store i64 %call6, i64* %dataLen, align 8, !dbg !57
  %8 = load i64, i64* %dataLen, align 8, !dbg !58
  %cmp7 = icmp ugt i64 %8, 0, !dbg !60
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !61

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !62
  %10 = load i64, i64* %dataLen, align 8, !dbg !63
  %sub9 = sub i64 %10, 1, !dbg !64
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !62
  %11 = load i8, i8* %arrayidx, align 1, !dbg !62
  %conv10 = sext i8 %11 to i32, !dbg !62
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !65
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !66

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !67
  %13 = load i64, i64* %dataLen, align 8, !dbg !69
  %sub14 = sub i64 %13, 1, !dbg !70
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !67
  store i8 0, i8* %arrayidx15, align 1, !dbg !71
  br label %if.end, !dbg !72

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !73

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !74
  %14 = load i8*, i8** %data, align 8, !dbg !76
  %15 = load i64, i64* %dataLen, align 8, !dbg !77
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !76
  store i8 0, i8* %arrayidx16, align 1, !dbg !78
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !79

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !80
  %17 = load i8*, i8** %data, align 8, !dbg !81
  call void %16(i8* %17), !dbg !80
  ret void, !dbg !82
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_65b_badSink(i8*) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare dso_local void @printLine(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !83 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !86, metadata !DIExpression()), !dbg !87
  store void (i8*)* @CWE134_Uncontrolled_Format_String__char_console_fprintf_65b_goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !87
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !88, metadata !DIExpression()), !dbg !89
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !89
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !89
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !90
  store i8* %arraydecay, i8** %data, align 8, !dbg !91
  %1 = load i8*, i8** %data, align 8, !dbg !92
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !93
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !94
  %3 = load i8*, i8** %data, align 8, !dbg !95
  call void %2(i8* %3), !dbg !94
  ret void, !dbg !96
}

declare dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_65b_goodG2BSink(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !97 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !98, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !100, metadata !DIExpression()), !dbg !101
  store void (i8*)* @CWE134_Uncontrolled_Format_String__char_console_fprintf_65b_goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !101
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
  %16 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !154
  %17 = load i8*, i8** %data, align 8, !dbg !155
  call void %16(i8* %17), !dbg !154
  ret void, !dbg !156
}

declare dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_65b_goodB2GSink(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_65_good() #0 !dbg !157 {
entry:
  call void @goodG2B(), !dbg !158
  call void @goodB2G(), !dbg !159
  ret void, !dbg !160
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_65a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_423/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_65_bad", scope: !1, file: !1, line: 29, type: !11, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 31, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 31, column: 12, scope: !10)
!17 = !DILocalVariable(name: "funcPtr", scope: !10, file: !1, line: 33, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !14}
!21 = !DILocation(line: 33, column: 12, scope: !10)
!22 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 34, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 34, column: 10, scope: !10)
!27 = !DILocation(line: 35, column: 12, scope: !10)
!28 = !DILocation(line: 35, column: 10, scope: !10)
!29 = !DILocalVariable(name: "dataLen", scope: !30, file: !1, line: 38, type: !31)
!30 = distinct !DILexicalBlock(scope: !10, file: !1, line: 36, column: 5)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 38, column: 16, scope: !30)
!35 = !DILocation(line: 38, column: 33, scope: !30)
!36 = !DILocation(line: 38, column: 26, scope: !30)
!37 = !DILocation(line: 40, column: 17, scope: !38)
!38 = distinct !DILexicalBlock(scope: !30, file: !1, line: 40, column: 13)
!39 = !DILocation(line: 40, column: 16, scope: !38)
!40 = !DILocation(line: 40, column: 25, scope: !38)
!41 = !DILocation(line: 40, column: 13, scope: !30)
!42 = !DILocation(line: 43, column: 23, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 43, column: 17)
!44 = distinct !DILexicalBlock(scope: !38, file: !1, line: 41, column: 9)
!45 = !DILocation(line: 43, column: 28, scope: !43)
!46 = !DILocation(line: 43, column: 27, scope: !43)
!47 = !DILocation(line: 43, column: 47, scope: !43)
!48 = !DILocation(line: 43, column: 46, scope: !43)
!49 = !DILocation(line: 43, column: 37, scope: !43)
!50 = !DILocation(line: 43, column: 57, scope: !43)
!51 = !DILocation(line: 43, column: 17, scope: !43)
!52 = !DILocation(line: 43, column: 64, scope: !43)
!53 = !DILocation(line: 43, column: 17, scope: !44)
!54 = !DILocation(line: 47, column: 34, scope: !55)
!55 = distinct !DILexicalBlock(scope: !43, file: !1, line: 44, column: 13)
!56 = !DILocation(line: 47, column: 27, scope: !55)
!57 = !DILocation(line: 47, column: 25, scope: !55)
!58 = !DILocation(line: 48, column: 21, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 48, column: 21)
!60 = !DILocation(line: 48, column: 29, scope: !59)
!61 = !DILocation(line: 48, column: 33, scope: !59)
!62 = !DILocation(line: 48, column: 36, scope: !59)
!63 = !DILocation(line: 48, column: 41, scope: !59)
!64 = !DILocation(line: 48, column: 48, scope: !59)
!65 = !DILocation(line: 48, column: 52, scope: !59)
!66 = !DILocation(line: 48, column: 21, scope: !55)
!67 = !DILocation(line: 50, column: 21, scope: !68)
!68 = distinct !DILexicalBlock(scope: !59, file: !1, line: 49, column: 17)
!69 = !DILocation(line: 50, column: 26, scope: !68)
!70 = !DILocation(line: 50, column: 33, scope: !68)
!71 = !DILocation(line: 50, column: 37, scope: !68)
!72 = !DILocation(line: 51, column: 17, scope: !68)
!73 = !DILocation(line: 52, column: 13, scope: !55)
!74 = !DILocation(line: 55, column: 17, scope: !75)
!75 = distinct !DILexicalBlock(scope: !43, file: !1, line: 54, column: 13)
!76 = !DILocation(line: 57, column: 17, scope: !75)
!77 = !DILocation(line: 57, column: 22, scope: !75)
!78 = !DILocation(line: 57, column: 31, scope: !75)
!79 = !DILocation(line: 59, column: 9, scope: !44)
!80 = !DILocation(line: 62, column: 5, scope: !10)
!81 = !DILocation(line: 62, column: 13, scope: !10)
!82 = !DILocation(line: 63, column: 1, scope: !10)
!83 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 71, type: !11, scopeLine: 72, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!84 = !DILocalVariable(name: "data", scope: !83, file: !1, line: 73, type: !14)
!85 = !DILocation(line: 73, column: 12, scope: !83)
!86 = !DILocalVariable(name: "funcPtr", scope: !83, file: !1, line: 74, type: !18)
!87 = !DILocation(line: 74, column: 12, scope: !83)
!88 = !DILocalVariable(name: "dataBuffer", scope: !83, file: !1, line: 75, type: !23)
!89 = !DILocation(line: 75, column: 10, scope: !83)
!90 = !DILocation(line: 76, column: 12, scope: !83)
!91 = !DILocation(line: 76, column: 10, scope: !83)
!92 = !DILocation(line: 78, column: 12, scope: !83)
!93 = !DILocation(line: 78, column: 5, scope: !83)
!94 = !DILocation(line: 79, column: 5, scope: !83)
!95 = !DILocation(line: 79, column: 13, scope: !83)
!96 = !DILocation(line: 80, column: 1, scope: !83)
!97 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 84, type: !11, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!98 = !DILocalVariable(name: "data", scope: !97, file: !1, line: 86, type: !14)
!99 = !DILocation(line: 86, column: 12, scope: !97)
!100 = !DILocalVariable(name: "funcPtr", scope: !97, file: !1, line: 87, type: !18)
!101 = !DILocation(line: 87, column: 12, scope: !97)
!102 = !DILocalVariable(name: "dataBuffer", scope: !97, file: !1, line: 88, type: !23)
!103 = !DILocation(line: 88, column: 10, scope: !97)
!104 = !DILocation(line: 89, column: 12, scope: !97)
!105 = !DILocation(line: 89, column: 10, scope: !97)
!106 = !DILocalVariable(name: "dataLen", scope: !107, file: !1, line: 92, type: !31)
!107 = distinct !DILexicalBlock(scope: !97, file: !1, line: 90, column: 5)
!108 = !DILocation(line: 92, column: 16, scope: !107)
!109 = !DILocation(line: 92, column: 33, scope: !107)
!110 = !DILocation(line: 92, column: 26, scope: !107)
!111 = !DILocation(line: 94, column: 17, scope: !112)
!112 = distinct !DILexicalBlock(scope: !107, file: !1, line: 94, column: 13)
!113 = !DILocation(line: 94, column: 16, scope: !112)
!114 = !DILocation(line: 94, column: 25, scope: !112)
!115 = !DILocation(line: 94, column: 13, scope: !107)
!116 = !DILocation(line: 97, column: 23, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !1, line: 97, column: 17)
!118 = distinct !DILexicalBlock(scope: !112, file: !1, line: 95, column: 9)
!119 = !DILocation(line: 97, column: 28, scope: !117)
!120 = !DILocation(line: 97, column: 27, scope: !117)
!121 = !DILocation(line: 97, column: 47, scope: !117)
!122 = !DILocation(line: 97, column: 46, scope: !117)
!123 = !DILocation(line: 97, column: 37, scope: !117)
!124 = !DILocation(line: 97, column: 57, scope: !117)
!125 = !DILocation(line: 97, column: 17, scope: !117)
!126 = !DILocation(line: 97, column: 64, scope: !117)
!127 = !DILocation(line: 97, column: 17, scope: !118)
!128 = !DILocation(line: 101, column: 34, scope: !129)
!129 = distinct !DILexicalBlock(scope: !117, file: !1, line: 98, column: 13)
!130 = !DILocation(line: 101, column: 27, scope: !129)
!131 = !DILocation(line: 101, column: 25, scope: !129)
!132 = !DILocation(line: 102, column: 21, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !1, line: 102, column: 21)
!134 = !DILocation(line: 102, column: 29, scope: !133)
!135 = !DILocation(line: 102, column: 33, scope: !133)
!136 = !DILocation(line: 102, column: 36, scope: !133)
!137 = !DILocation(line: 102, column: 41, scope: !133)
!138 = !DILocation(line: 102, column: 48, scope: !133)
!139 = !DILocation(line: 102, column: 52, scope: !133)
!140 = !DILocation(line: 102, column: 21, scope: !129)
!141 = !DILocation(line: 104, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !133, file: !1, line: 103, column: 17)
!143 = !DILocation(line: 104, column: 26, scope: !142)
!144 = !DILocation(line: 104, column: 33, scope: !142)
!145 = !DILocation(line: 104, column: 37, scope: !142)
!146 = !DILocation(line: 105, column: 17, scope: !142)
!147 = !DILocation(line: 106, column: 13, scope: !129)
!148 = !DILocation(line: 109, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !117, file: !1, line: 108, column: 13)
!150 = !DILocation(line: 111, column: 17, scope: !149)
!151 = !DILocation(line: 111, column: 22, scope: !149)
!152 = !DILocation(line: 111, column: 31, scope: !149)
!153 = !DILocation(line: 113, column: 9, scope: !118)
!154 = !DILocation(line: 115, column: 5, scope: !97)
!155 = !DILocation(line: 115, column: 13, scope: !97)
!156 = !DILocation(line: 116, column: 1, scope: !97)
!157 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_65_good", scope: !1, file: !1, line: 118, type: !11, scopeLine: 119, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!158 = !DILocation(line: 120, column: 5, scope: !157)
!159 = !DILocation(line: 121, column: 5, scope: !157)
!160 = !DILocation(line: 122, column: 1, scope: !157)
