; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_fprintf_52a.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_fprintf_52a.c"
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !17, metadata !DIExpression()), !dbg !21
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !21
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !21
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !22
  store i8* %arraydecay, i8** %data, align 8, !dbg !23
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !24, metadata !DIExpression()), !dbg !29
  %1 = load i8*, i8** %data, align 8, !dbg !30
  %call = call i64 @strlen(i8* %1) #6, !dbg !31
  store i64 %call, i64* %dataLen, align 8, !dbg !29
  %2 = load i64, i64* %dataLen, align 8, !dbg !32
  %sub = sub i64 100, %2, !dbg !34
  %cmp = icmp ugt i64 %sub, 1, !dbg !35
  br i1 %cmp, label %if.then, label %if.end18, !dbg !36

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !37
  %4 = load i64, i64* %dataLen, align 8, !dbg !40
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !41
  %5 = load i64, i64* %dataLen, align 8, !dbg !42
  %sub1 = sub i64 100, %5, !dbg !43
  %conv = trunc i64 %sub1 to i32, !dbg !44
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !45
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !46
  %cmp3 = icmp ne i8* %call2, null, !dbg !47
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !48

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !49
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !51
  store i64 %call6, i64* %dataLen, align 8, !dbg !52
  %8 = load i64, i64* %dataLen, align 8, !dbg !53
  %cmp7 = icmp ugt i64 %8, 0, !dbg !55
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !56

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !57
  %10 = load i64, i64* %dataLen, align 8, !dbg !58
  %sub9 = sub i64 %10, 1, !dbg !59
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !57
  %11 = load i8, i8* %arrayidx, align 1, !dbg !57
  %conv10 = sext i8 %11 to i32, !dbg !57
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !60
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !61

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !62
  %13 = load i64, i64* %dataLen, align 8, !dbg !64
  %sub14 = sub i64 %13, 1, !dbg !65
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !62
  store i8 0, i8* %arrayidx15, align 1, !dbg !66
  br label %if.end, !dbg !67

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !68

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !69
  %14 = load i8*, i8** %data, align 8, !dbg !71
  %15 = load i64, i64* %dataLen, align 8, !dbg !72
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !71
  store i8 0, i8* %arrayidx16, align 1, !dbg !73
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !74

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !75
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52b_badSink(i8* %16), !dbg !76
  ret void, !dbg !77
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

declare dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52b_badSink(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !78 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !81, metadata !DIExpression()), !dbg !82
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !82
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !82
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !83
  store i8* %arraydecay, i8** %data, align 8, !dbg !84
  %1 = load i8*, i8** %data, align 8, !dbg !85
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !86
  %2 = load i8*, i8** %data, align 8, !dbg !87
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52b_goodG2BSink(i8* %2), !dbg !88
  ret void, !dbg !89
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

declare dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52b_goodG2BSink(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !90 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !93, metadata !DIExpression()), !dbg !94
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !94
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !94
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !95
  store i8* %arraydecay, i8** %data, align 8, !dbg !96
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !97, metadata !DIExpression()), !dbg !99
  %1 = load i8*, i8** %data, align 8, !dbg !100
  %call = call i64 @strlen(i8* %1) #6, !dbg !101
  store i64 %call, i64* %dataLen, align 8, !dbg !99
  %2 = load i64, i64* %dataLen, align 8, !dbg !102
  %sub = sub i64 100, %2, !dbg !104
  %cmp = icmp ugt i64 %sub, 1, !dbg !105
  br i1 %cmp, label %if.then, label %if.end18, !dbg !106

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !107
  %4 = load i64, i64* %dataLen, align 8, !dbg !110
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !111
  %5 = load i64, i64* %dataLen, align 8, !dbg !112
  %sub1 = sub i64 100, %5, !dbg !113
  %conv = trunc i64 %sub1 to i32, !dbg !114
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !115
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !116
  %cmp3 = icmp ne i8* %call2, null, !dbg !117
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !118

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !119
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !121
  store i64 %call6, i64* %dataLen, align 8, !dbg !122
  %8 = load i64, i64* %dataLen, align 8, !dbg !123
  %cmp7 = icmp ugt i64 %8, 0, !dbg !125
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !126

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !127
  %10 = load i64, i64* %dataLen, align 8, !dbg !128
  %sub9 = sub i64 %10, 1, !dbg !129
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !127
  %11 = load i8, i8* %arrayidx, align 1, !dbg !127
  %conv10 = sext i8 %11 to i32, !dbg !127
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !130
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !131

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !132
  %13 = load i64, i64* %dataLen, align 8, !dbg !134
  %sub14 = sub i64 %13, 1, !dbg !135
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !132
  store i8 0, i8* %arrayidx15, align 1, !dbg !136
  br label %if.end, !dbg !137

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !138

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !139
  %14 = load i8*, i8** %data, align 8, !dbg !141
  %15 = load i64, i64* %dataLen, align 8, !dbg !142
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !141
  store i8 0, i8* %arrayidx16, align 1, !dbg !143
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !144

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !145
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52b_goodB2GSink(i8* %16), !dbg !146
  ret void, !dbg !147
}

declare dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52b_goodB2GSink(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52_good() #0 !dbg !148 {
entry:
  call void @goodG2B(), !dbg !149
  call void @goodB2G(), !dbg !150
  ret void, !dbg !151
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_52a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_416/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_52_bad", scope: !1, file: !1, line: 29, type: !11, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 31, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 31, column: 12, scope: !10)
!17 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 32, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 100)
!21 = !DILocation(line: 32, column: 10, scope: !10)
!22 = !DILocation(line: 33, column: 12, scope: !10)
!23 = !DILocation(line: 33, column: 10, scope: !10)
!24 = !DILocalVariable(name: "dataLen", scope: !25, file: !1, line: 36, type: !26)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 34, column: 5)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DILocation(line: 36, column: 16, scope: !25)
!30 = !DILocation(line: 36, column: 33, scope: !25)
!31 = !DILocation(line: 36, column: 26, scope: !25)
!32 = !DILocation(line: 38, column: 17, scope: !33)
!33 = distinct !DILexicalBlock(scope: !25, file: !1, line: 38, column: 13)
!34 = !DILocation(line: 38, column: 16, scope: !33)
!35 = !DILocation(line: 38, column: 25, scope: !33)
!36 = !DILocation(line: 38, column: 13, scope: !25)
!37 = !DILocation(line: 41, column: 23, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 41, column: 17)
!39 = distinct !DILexicalBlock(scope: !33, file: !1, line: 39, column: 9)
!40 = !DILocation(line: 41, column: 28, scope: !38)
!41 = !DILocation(line: 41, column: 27, scope: !38)
!42 = !DILocation(line: 41, column: 47, scope: !38)
!43 = !DILocation(line: 41, column: 46, scope: !38)
!44 = !DILocation(line: 41, column: 37, scope: !38)
!45 = !DILocation(line: 41, column: 57, scope: !38)
!46 = !DILocation(line: 41, column: 17, scope: !38)
!47 = !DILocation(line: 41, column: 64, scope: !38)
!48 = !DILocation(line: 41, column: 17, scope: !39)
!49 = !DILocation(line: 45, column: 34, scope: !50)
!50 = distinct !DILexicalBlock(scope: !38, file: !1, line: 42, column: 13)
!51 = !DILocation(line: 45, column: 27, scope: !50)
!52 = !DILocation(line: 45, column: 25, scope: !50)
!53 = !DILocation(line: 46, column: 21, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 46, column: 21)
!55 = !DILocation(line: 46, column: 29, scope: !54)
!56 = !DILocation(line: 46, column: 33, scope: !54)
!57 = !DILocation(line: 46, column: 36, scope: !54)
!58 = !DILocation(line: 46, column: 41, scope: !54)
!59 = !DILocation(line: 46, column: 48, scope: !54)
!60 = !DILocation(line: 46, column: 52, scope: !54)
!61 = !DILocation(line: 46, column: 21, scope: !50)
!62 = !DILocation(line: 48, column: 21, scope: !63)
!63 = distinct !DILexicalBlock(scope: !54, file: !1, line: 47, column: 17)
!64 = !DILocation(line: 48, column: 26, scope: !63)
!65 = !DILocation(line: 48, column: 33, scope: !63)
!66 = !DILocation(line: 48, column: 37, scope: !63)
!67 = !DILocation(line: 49, column: 17, scope: !63)
!68 = !DILocation(line: 50, column: 13, scope: !50)
!69 = !DILocation(line: 53, column: 17, scope: !70)
!70 = distinct !DILexicalBlock(scope: !38, file: !1, line: 52, column: 13)
!71 = !DILocation(line: 55, column: 17, scope: !70)
!72 = !DILocation(line: 55, column: 22, scope: !70)
!73 = !DILocation(line: 55, column: 31, scope: !70)
!74 = !DILocation(line: 57, column: 9, scope: !39)
!75 = !DILocation(line: 59, column: 73, scope: !10)
!76 = !DILocation(line: 59, column: 5, scope: !10)
!77 = !DILocation(line: 60, column: 1, scope: !10)
!78 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 68, type: !11, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!79 = !DILocalVariable(name: "data", scope: !78, file: !1, line: 70, type: !14)
!80 = !DILocation(line: 70, column: 12, scope: !78)
!81 = !DILocalVariable(name: "dataBuffer", scope: !78, file: !1, line: 71, type: !18)
!82 = !DILocation(line: 71, column: 10, scope: !78)
!83 = !DILocation(line: 72, column: 12, scope: !78)
!84 = !DILocation(line: 72, column: 10, scope: !78)
!85 = !DILocation(line: 74, column: 12, scope: !78)
!86 = !DILocation(line: 74, column: 5, scope: !78)
!87 = !DILocation(line: 75, column: 77, scope: !78)
!88 = !DILocation(line: 75, column: 5, scope: !78)
!89 = !DILocation(line: 76, column: 1, scope: !78)
!90 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 80, type: !11, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!91 = !DILocalVariable(name: "data", scope: !90, file: !1, line: 82, type: !14)
!92 = !DILocation(line: 82, column: 12, scope: !90)
!93 = !DILocalVariable(name: "dataBuffer", scope: !90, file: !1, line: 83, type: !18)
!94 = !DILocation(line: 83, column: 10, scope: !90)
!95 = !DILocation(line: 84, column: 12, scope: !90)
!96 = !DILocation(line: 84, column: 10, scope: !90)
!97 = !DILocalVariable(name: "dataLen", scope: !98, file: !1, line: 87, type: !26)
!98 = distinct !DILexicalBlock(scope: !90, file: !1, line: 85, column: 5)
!99 = !DILocation(line: 87, column: 16, scope: !98)
!100 = !DILocation(line: 87, column: 33, scope: !98)
!101 = !DILocation(line: 87, column: 26, scope: !98)
!102 = !DILocation(line: 89, column: 17, scope: !103)
!103 = distinct !DILexicalBlock(scope: !98, file: !1, line: 89, column: 13)
!104 = !DILocation(line: 89, column: 16, scope: !103)
!105 = !DILocation(line: 89, column: 25, scope: !103)
!106 = !DILocation(line: 89, column: 13, scope: !98)
!107 = !DILocation(line: 92, column: 23, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !1, line: 92, column: 17)
!109 = distinct !DILexicalBlock(scope: !103, file: !1, line: 90, column: 9)
!110 = !DILocation(line: 92, column: 28, scope: !108)
!111 = !DILocation(line: 92, column: 27, scope: !108)
!112 = !DILocation(line: 92, column: 47, scope: !108)
!113 = !DILocation(line: 92, column: 46, scope: !108)
!114 = !DILocation(line: 92, column: 37, scope: !108)
!115 = !DILocation(line: 92, column: 57, scope: !108)
!116 = !DILocation(line: 92, column: 17, scope: !108)
!117 = !DILocation(line: 92, column: 64, scope: !108)
!118 = !DILocation(line: 92, column: 17, scope: !109)
!119 = !DILocation(line: 96, column: 34, scope: !120)
!120 = distinct !DILexicalBlock(scope: !108, file: !1, line: 93, column: 13)
!121 = !DILocation(line: 96, column: 27, scope: !120)
!122 = !DILocation(line: 96, column: 25, scope: !120)
!123 = !DILocation(line: 97, column: 21, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 97, column: 21)
!125 = !DILocation(line: 97, column: 29, scope: !124)
!126 = !DILocation(line: 97, column: 33, scope: !124)
!127 = !DILocation(line: 97, column: 36, scope: !124)
!128 = !DILocation(line: 97, column: 41, scope: !124)
!129 = !DILocation(line: 97, column: 48, scope: !124)
!130 = !DILocation(line: 97, column: 52, scope: !124)
!131 = !DILocation(line: 97, column: 21, scope: !120)
!132 = !DILocation(line: 99, column: 21, scope: !133)
!133 = distinct !DILexicalBlock(scope: !124, file: !1, line: 98, column: 17)
!134 = !DILocation(line: 99, column: 26, scope: !133)
!135 = !DILocation(line: 99, column: 33, scope: !133)
!136 = !DILocation(line: 99, column: 37, scope: !133)
!137 = !DILocation(line: 100, column: 17, scope: !133)
!138 = !DILocation(line: 101, column: 13, scope: !120)
!139 = !DILocation(line: 104, column: 17, scope: !140)
!140 = distinct !DILexicalBlock(scope: !108, file: !1, line: 103, column: 13)
!141 = !DILocation(line: 106, column: 17, scope: !140)
!142 = !DILocation(line: 106, column: 22, scope: !140)
!143 = !DILocation(line: 106, column: 31, scope: !140)
!144 = !DILocation(line: 108, column: 9, scope: !109)
!145 = !DILocation(line: 110, column: 77, scope: !90)
!146 = !DILocation(line: 110, column: 5, scope: !90)
!147 = !DILocation(line: 111, column: 1, scope: !90)
!148 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_52_good", scope: !1, file: !1, line: 113, type: !11, scopeLine: 114, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!149 = !DILocation(line: 115, column: 5, scope: !148)
!150 = !DILocation(line: 116, column: 5, scope: !148)
!151 = !DILocation(line: 117, column: 1, scope: !148)
