; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_63a.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_63a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_63_bad() #0 !dbg !10 {
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
  call void @CWE606_Unchecked_Loop_Condition__char_console_63b_badSink(i8** %data), !dbg !75
  ret void, !dbg !76
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_console_63b_badSink(i8**) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !77 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !80, metadata !DIExpression()), !dbg !81
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !81
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !81
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !82
  store i8* %arraydecay, i8** %data, align 8, !dbg !83
  %1 = load i8*, i8** %data, align 8, !dbg !84
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !85
  call void @CWE606_Unchecked_Loop_Condition__char_console_63b_goodG2BSink(i8** %data), !dbg !86
  ret void, !dbg !87
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_console_63b_goodG2BSink(i8**) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !88 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !91, metadata !DIExpression()), !dbg !92
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !92
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !92
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !93
  store i8* %arraydecay, i8** %data, align 8, !dbg !94
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !95, metadata !DIExpression()), !dbg !97
  %1 = load i8*, i8** %data, align 8, !dbg !98
  %call = call i64 @strlen(i8* %1) #6, !dbg !99
  store i64 %call, i64* %dataLen, align 8, !dbg !97
  %2 = load i64, i64* %dataLen, align 8, !dbg !100
  %sub = sub i64 100, %2, !dbg !102
  %cmp = icmp ugt i64 %sub, 1, !dbg !103
  br i1 %cmp, label %if.then, label %if.end18, !dbg !104

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !105
  %4 = load i64, i64* %dataLen, align 8, !dbg !108
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !109
  %5 = load i64, i64* %dataLen, align 8, !dbg !110
  %sub1 = sub i64 100, %5, !dbg !111
  %conv = trunc i64 %sub1 to i32, !dbg !112
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !113
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !114
  %cmp3 = icmp ne i8* %call2, null, !dbg !115
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !116

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !117
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !119
  store i64 %call6, i64* %dataLen, align 8, !dbg !120
  %8 = load i64, i64* %dataLen, align 8, !dbg !121
  %cmp7 = icmp ugt i64 %8, 0, !dbg !123
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !124

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !125
  %10 = load i64, i64* %dataLen, align 8, !dbg !126
  %sub9 = sub i64 %10, 1, !dbg !127
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !125
  %11 = load i8, i8* %arrayidx, align 1, !dbg !125
  %conv10 = sext i8 %11 to i32, !dbg !125
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !128
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !129

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !130
  %13 = load i64, i64* %dataLen, align 8, !dbg !132
  %sub14 = sub i64 %13, 1, !dbg !133
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !130
  store i8 0, i8* %arrayidx15, align 1, !dbg !134
  br label %if.end, !dbg !135

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !136

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !137
  %14 = load i8*, i8** %data, align 8, !dbg !139
  %15 = load i64, i64* %dataLen, align 8, !dbg !140
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !139
  store i8 0, i8* %arrayidx16, align 1, !dbg !141
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !142

if.end18:                                         ; preds = %if.end17, %entry
  call void @CWE606_Unchecked_Loop_Condition__char_console_63b_goodB2GSink(i8** %data), !dbg !143
  ret void, !dbg !144
}

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_console_63b_goodB2GSink(i8**) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_63_good() #0 !dbg !145 {
entry:
  call void @goodG2B(), !dbg !146
  call void @goodB2G(), !dbg !147
  ret void, !dbg !148
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_63a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_013/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_63_bad", scope: !1, file: !1, line: 31, type: !11, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 33, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 33, column: 12, scope: !10)
!17 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 34, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 100)
!21 = !DILocation(line: 34, column: 10, scope: !10)
!22 = !DILocation(line: 35, column: 12, scope: !10)
!23 = !DILocation(line: 35, column: 10, scope: !10)
!24 = !DILocalVariable(name: "dataLen", scope: !25, file: !1, line: 38, type: !26)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 36, column: 5)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DILocation(line: 38, column: 16, scope: !25)
!30 = !DILocation(line: 38, column: 33, scope: !25)
!31 = !DILocation(line: 38, column: 26, scope: !25)
!32 = !DILocation(line: 40, column: 17, scope: !33)
!33 = distinct !DILexicalBlock(scope: !25, file: !1, line: 40, column: 13)
!34 = !DILocation(line: 40, column: 16, scope: !33)
!35 = !DILocation(line: 40, column: 25, scope: !33)
!36 = !DILocation(line: 40, column: 13, scope: !25)
!37 = !DILocation(line: 43, column: 23, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 43, column: 17)
!39 = distinct !DILexicalBlock(scope: !33, file: !1, line: 41, column: 9)
!40 = !DILocation(line: 43, column: 28, scope: !38)
!41 = !DILocation(line: 43, column: 27, scope: !38)
!42 = !DILocation(line: 43, column: 47, scope: !38)
!43 = !DILocation(line: 43, column: 46, scope: !38)
!44 = !DILocation(line: 43, column: 37, scope: !38)
!45 = !DILocation(line: 43, column: 57, scope: !38)
!46 = !DILocation(line: 43, column: 17, scope: !38)
!47 = !DILocation(line: 43, column: 64, scope: !38)
!48 = !DILocation(line: 43, column: 17, scope: !39)
!49 = !DILocation(line: 47, column: 34, scope: !50)
!50 = distinct !DILexicalBlock(scope: !38, file: !1, line: 44, column: 13)
!51 = !DILocation(line: 47, column: 27, scope: !50)
!52 = !DILocation(line: 47, column: 25, scope: !50)
!53 = !DILocation(line: 48, column: 21, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 48, column: 21)
!55 = !DILocation(line: 48, column: 29, scope: !54)
!56 = !DILocation(line: 48, column: 33, scope: !54)
!57 = !DILocation(line: 48, column: 36, scope: !54)
!58 = !DILocation(line: 48, column: 41, scope: !54)
!59 = !DILocation(line: 48, column: 48, scope: !54)
!60 = !DILocation(line: 48, column: 52, scope: !54)
!61 = !DILocation(line: 48, column: 21, scope: !50)
!62 = !DILocation(line: 50, column: 21, scope: !63)
!63 = distinct !DILexicalBlock(scope: !54, file: !1, line: 49, column: 17)
!64 = !DILocation(line: 50, column: 26, scope: !63)
!65 = !DILocation(line: 50, column: 33, scope: !63)
!66 = !DILocation(line: 50, column: 37, scope: !63)
!67 = !DILocation(line: 51, column: 17, scope: !63)
!68 = !DILocation(line: 52, column: 13, scope: !50)
!69 = !DILocation(line: 55, column: 17, scope: !70)
!70 = distinct !DILexicalBlock(scope: !38, file: !1, line: 54, column: 13)
!71 = !DILocation(line: 57, column: 17, scope: !70)
!72 = !DILocation(line: 57, column: 22, scope: !70)
!73 = !DILocation(line: 57, column: 31, scope: !70)
!74 = !DILocation(line: 59, column: 9, scope: !39)
!75 = !DILocation(line: 61, column: 5, scope: !10)
!76 = !DILocation(line: 62, column: 1, scope: !10)
!77 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 70, type: !11, scopeLine: 71, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!78 = !DILocalVariable(name: "data", scope: !77, file: !1, line: 72, type: !14)
!79 = !DILocation(line: 72, column: 12, scope: !77)
!80 = !DILocalVariable(name: "dataBuffer", scope: !77, file: !1, line: 73, type: !18)
!81 = !DILocation(line: 73, column: 10, scope: !77)
!82 = !DILocation(line: 74, column: 12, scope: !77)
!83 = !DILocation(line: 74, column: 10, scope: !77)
!84 = !DILocation(line: 76, column: 12, scope: !77)
!85 = !DILocation(line: 76, column: 5, scope: !77)
!86 = !DILocation(line: 77, column: 5, scope: !77)
!87 = !DILocation(line: 78, column: 1, scope: !77)
!88 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 82, type: !11, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!89 = !DILocalVariable(name: "data", scope: !88, file: !1, line: 84, type: !14)
!90 = !DILocation(line: 84, column: 12, scope: !88)
!91 = !DILocalVariable(name: "dataBuffer", scope: !88, file: !1, line: 85, type: !18)
!92 = !DILocation(line: 85, column: 10, scope: !88)
!93 = !DILocation(line: 86, column: 12, scope: !88)
!94 = !DILocation(line: 86, column: 10, scope: !88)
!95 = !DILocalVariable(name: "dataLen", scope: !96, file: !1, line: 89, type: !26)
!96 = distinct !DILexicalBlock(scope: !88, file: !1, line: 87, column: 5)
!97 = !DILocation(line: 89, column: 16, scope: !96)
!98 = !DILocation(line: 89, column: 33, scope: !96)
!99 = !DILocation(line: 89, column: 26, scope: !96)
!100 = !DILocation(line: 91, column: 17, scope: !101)
!101 = distinct !DILexicalBlock(scope: !96, file: !1, line: 91, column: 13)
!102 = !DILocation(line: 91, column: 16, scope: !101)
!103 = !DILocation(line: 91, column: 25, scope: !101)
!104 = !DILocation(line: 91, column: 13, scope: !96)
!105 = !DILocation(line: 94, column: 23, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !1, line: 94, column: 17)
!107 = distinct !DILexicalBlock(scope: !101, file: !1, line: 92, column: 9)
!108 = !DILocation(line: 94, column: 28, scope: !106)
!109 = !DILocation(line: 94, column: 27, scope: !106)
!110 = !DILocation(line: 94, column: 47, scope: !106)
!111 = !DILocation(line: 94, column: 46, scope: !106)
!112 = !DILocation(line: 94, column: 37, scope: !106)
!113 = !DILocation(line: 94, column: 57, scope: !106)
!114 = !DILocation(line: 94, column: 17, scope: !106)
!115 = !DILocation(line: 94, column: 64, scope: !106)
!116 = !DILocation(line: 94, column: 17, scope: !107)
!117 = !DILocation(line: 98, column: 34, scope: !118)
!118 = distinct !DILexicalBlock(scope: !106, file: !1, line: 95, column: 13)
!119 = !DILocation(line: 98, column: 27, scope: !118)
!120 = !DILocation(line: 98, column: 25, scope: !118)
!121 = !DILocation(line: 99, column: 21, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !1, line: 99, column: 21)
!123 = !DILocation(line: 99, column: 29, scope: !122)
!124 = !DILocation(line: 99, column: 33, scope: !122)
!125 = !DILocation(line: 99, column: 36, scope: !122)
!126 = !DILocation(line: 99, column: 41, scope: !122)
!127 = !DILocation(line: 99, column: 48, scope: !122)
!128 = !DILocation(line: 99, column: 52, scope: !122)
!129 = !DILocation(line: 99, column: 21, scope: !118)
!130 = !DILocation(line: 101, column: 21, scope: !131)
!131 = distinct !DILexicalBlock(scope: !122, file: !1, line: 100, column: 17)
!132 = !DILocation(line: 101, column: 26, scope: !131)
!133 = !DILocation(line: 101, column: 33, scope: !131)
!134 = !DILocation(line: 101, column: 37, scope: !131)
!135 = !DILocation(line: 102, column: 17, scope: !131)
!136 = !DILocation(line: 103, column: 13, scope: !118)
!137 = !DILocation(line: 106, column: 17, scope: !138)
!138 = distinct !DILexicalBlock(scope: !106, file: !1, line: 105, column: 13)
!139 = !DILocation(line: 108, column: 17, scope: !138)
!140 = !DILocation(line: 108, column: 22, scope: !138)
!141 = !DILocation(line: 108, column: 31, scope: !138)
!142 = !DILocation(line: 110, column: 9, scope: !107)
!143 = !DILocation(line: 112, column: 5, scope: !88)
!144 = !DILocation(line: 113, column: 1, scope: !88)
!145 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_63_good", scope: !1, file: !1, line: 115, type: !11, scopeLine: 116, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!146 = !DILocation(line: 117, column: 5, scope: !145)
!147 = !DILocation(line: 118, column: 5, scope: !145)
!148 = !DILocation(line: 119, column: 1, scope: !145)
