; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_52a43CWE606_Unchecked_Loop_Condition__char_console_52c36_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_52a43CWE606_Unchecked_Loop_Condition__char_console_52c36_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_52a43CWE606_Unchecked_Loop_Condition__char_console_52c36_1(i8* %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_console_52c_badSink_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_console_52c_badSink_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_console_52c_badSink_intVariable_0 = alloca i32, align 4
  store i8* %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_data_0, i8** %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_dataBuffer_0 to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_dataBuffer_0, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_data_0.addr, align 8, !dbg !27
  call void @llvm.dbg.declare(metadata i64* %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_dataLen_0, metadata !28, metadata !DIExpression()), !dbg !33
  %1 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_data_0.addr, align 8, !dbg !34
  %call = call i64 @strlen(i8* %1) #6, !dbg !35
  store i64 %call, i64* %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_dataLen_0, align 8, !dbg !33
  %2 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_dataLen_0, align 8, !dbg !36
  %sub = sub i64 100, %2, !dbg !38
  %cmp = icmp ugt i64 %sub, 1, !dbg !39
  br i1 %cmp, label %if.then, label %if.end18, !dbg !40

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_data_0.addr, align 8, !dbg !41
  %4 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_dataLen_0, align 8, !dbg !44
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !45
  %5 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_dataLen_0, align 8, !dbg !46
  %sub1 = sub i64 100, %5, !dbg !47
  %conv = trunc i64 %sub1 to i32, !dbg !48
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !49
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !50
  %cmp3 = icmp ne i8* %call2, null, !dbg !51
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !52

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_data_0.addr, align 8, !dbg !53
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !55
  store i64 %call6, i64* %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_dataLen_0, align 8, !dbg !56
  %8 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_dataLen_0, align 8, !dbg !57
  %cmp7 = icmp ugt i64 %8, 0, !dbg !59
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !60

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_data_0.addr, align 8, !dbg !61
  %10 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_dataLen_0, align 8, !dbg !62
  %sub9 = sub i64 %10, 1, !dbg !63
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !61
  %11 = load i8, i8* %arrayidx, align 1, !dbg !61
  %conv10 = sext i8 %11 to i32, !dbg !61
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !64
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !65

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_data_0.addr, align 8, !dbg !66
  %13 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_dataLen_0, align 8, !dbg !68
  %sub14 = sub i64 %13, 1, !dbg !69
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !66
  store i8 0, i8* %arrayidx15, align 1, !dbg !70
  br label %if.end, !dbg !71

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !72

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !73
  %14 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_data_0.addr, align 8, !dbg !75
  %15 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_dataLen_0, align 8, !dbg !76
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !75
  store i8 0, i8* %arrayidx16, align 1, !dbg !77
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !78

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_console_52c_badSink_i_0, metadata !79, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_console_52c_badSink_n_0, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_console_52c_badSink_intVariable_0, metadata !86, metadata !DIExpression()), !dbg !87
  %16 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_52_bad_data_0.addr, align 8, !dbg !88
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_console_52c_badSink_n_0) #7, !dbg !90
  %cmp20 = icmp eq i32 %call19, 1, !dbg !91
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !92

if.then22:                                        ; preds = %if.end18
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_console_52c_badSink_intVariable_0, align 4, !dbg !93
  %17 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !95
  %18 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_console_52c_badSink_n_0, align 4, !dbg !96
  call void %17(i32 %18), !dbg !95
  %19 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_console_52c_badSink_intVariable_0, align 4, !dbg !97
  call void @printIntLine(i32 %19), !dbg !98
  br label %if.end23, !dbg !99

if.end23:                                         ; preds = %if.then22, %if.end18
  br label %CWE606_Unchecked_Loop_Condition__char_console_52c_badSink_label_, !dbg !100

CWE606_Unchecked_Loop_Condition__char_console_52c_badSink_label_: ; preds = %if.end23
  call void @llvm.dbg.label(metadata !101), !dbg !102
  br label %CWE606_Unchecked_Loop_Condition__char_console_52b_badSink_label_, !dbg !103

CWE606_Unchecked_Loop_Condition__char_console_52b_badSink_label_: ; preds = %CWE606_Unchecked_Loop_Condition__char_console_52c_badSink_label_
  call void @llvm.dbg.label(metadata !104), !dbg !105
  br label %CWE606_Unchecked_Loop_Condition__char_console_52_bad_label_, !dbg !106

CWE606_Unchecked_Loop_Condition__char_console_52_bad_label_: ; preds = %CWE606_Unchecked_Loop_Condition__char_console_52b_badSink_label_
  call void @llvm.dbg.label(metadata !107), !dbg !108
  ret void, !dbg !109
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_52a43CWE606_Unchecked_Loop_Condition__char_console_52c36_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_008/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_52a43CWE606_Unchecked_Loop_Condition__char_console_52c36_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_52_bad_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 117, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 186, scope: !9)
!21 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_52_bad_dataBuffer_0", scope: !9, file: !1, line: 5, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 5, column: 8, scope: !9)
!26 = !DILocation(line: 6, column: 66, scope: !9)
!27 = !DILocation(line: 6, column: 64, scope: !9)
!28 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_52_bad_dataLen_0", scope: !29, file: !1, line: 8, type: !30)
!29 = distinct !DILexicalBlock(scope: !9, file: !1, line: 7, column: 3)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DILocation(line: 8, column: 12, scope: !29)
!34 = !DILocation(line: 8, column: 85, scope: !29)
!35 = !DILocation(line: 8, column: 78, scope: !29)
!36 = !DILocation(line: 9, column: 16, scope: !37)
!37 = distinct !DILexicalBlock(scope: !29, file: !1, line: 9, column: 9)
!38 = !DILocation(line: 9, column: 14, scope: !37)
!39 = !DILocation(line: 9, column: 81, scope: !37)
!40 = !DILocation(line: 9, column: 9, scope: !29)
!41 = !DILocation(line: 11, column: 17, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 11, column: 11)
!43 = distinct !DILexicalBlock(scope: !37, file: !1, line: 10, column: 5)
!44 = !DILocation(line: 11, column: 80, scope: !42)
!45 = !DILocation(line: 11, column: 78, scope: !42)
!46 = !DILocation(line: 11, column: 158, scope: !42)
!47 = !DILocation(line: 11, column: 156, scope: !42)
!48 = !DILocation(line: 11, column: 145, scope: !42)
!49 = !DILocation(line: 11, column: 224, scope: !42)
!50 = !DILocation(line: 11, column: 11, scope: !42)
!51 = !DILocation(line: 11, column: 231, scope: !42)
!52 = !DILocation(line: 11, column: 11, scope: !43)
!53 = !DILocation(line: 13, column: 82, scope: !54)
!54 = distinct !DILexicalBlock(scope: !42, file: !1, line: 12, column: 7)
!55 = !DILocation(line: 13, column: 75, scope: !54)
!56 = !DILocation(line: 13, column: 73, scope: !54)
!57 = !DILocation(line: 14, column: 14, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 14, column: 13)
!59 = !DILocation(line: 14, column: 78, scope: !58)
!60 = !DILocation(line: 14, column: 83, scope: !58)
!61 = !DILocation(line: 14, column: 87, scope: !58)
!62 = !DILocation(line: 14, column: 148, scope: !58)
!63 = !DILocation(line: 14, column: 212, scope: !58)
!64 = !DILocation(line: 14, column: 217, scope: !58)
!65 = !DILocation(line: 14, column: 13, scope: !54)
!66 = !DILocation(line: 16, column: 11, scope: !67)
!67 = distinct !DILexicalBlock(scope: !58, file: !1, line: 15, column: 9)
!68 = !DILocation(line: 16, column: 72, scope: !67)
!69 = !DILocation(line: 16, column: 136, scope: !67)
!70 = !DILocation(line: 16, column: 141, scope: !67)
!71 = !DILocation(line: 17, column: 9, scope: !67)
!72 = !DILocation(line: 19, column: 7, scope: !54)
!73 = !DILocation(line: 22, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !42, file: !1, line: 21, column: 7)
!75 = !DILocation(line: 23, column: 9, scope: !74)
!76 = !DILocation(line: 23, column: 70, scope: !74)
!77 = !DILocation(line: 23, column: 135, scope: !74)
!78 = !DILocation(line: 26, column: 5, scope: !43)
!79 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_52c_badSink_i_0", scope: !80, file: !1, line: 32, type: !4)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 31, column: 7)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 30, column: 5)
!82 = distinct !DILexicalBlock(scope: !9, file: !1, line: 29, column: 3)
!83 = !DILocation(line: 32, column: 13, scope: !80)
!84 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_52c_badSink_n_0", scope: !80, file: !1, line: 33, type: !4)
!85 = !DILocation(line: 33, column: 13, scope: !80)
!86 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_52c_badSink_intVariable_0", scope: !80, file: !1, line: 34, type: !4)
!87 = !DILocation(line: 34, column: 13, scope: !80)
!88 = !DILocation(line: 35, column: 20, scope: !89)
!89 = distinct !DILexicalBlock(scope: !80, file: !1, line: 35, column: 13)
!90 = !DILocation(line: 35, column: 13, scope: !89)
!91 = !DILocation(line: 35, column: 153, scope: !89)
!92 = !DILocation(line: 35, column: 13, scope: !80)
!93 = !DILocation(line: 37, column: 84, scope: !94)
!94 = distinct !DILexicalBlock(scope: !89, file: !1, line: 36, column: 9)
!95 = !DILocation(line: 38, column: 11, scope: !94)
!96 = !DILocation(line: 38, column: 18, scope: !94)
!97 = !DILocation(line: 39, column: 24, scope: !94)
!98 = !DILocation(line: 39, column: 11, scope: !94)
!99 = !DILocation(line: 40, column: 9, scope: !94)
!100 = !DILocation(line: 42, column: 7, scope: !80)
!101 = !DILabel(scope: !81, name: "CWE606_Unchecked_Loop_Condition__char_console_52c_badSink_label_", file: !1, line: 43)
!102 = !DILocation(line: 43, column: 7, scope: !81)
!103 = !DILocation(line: 48, column: 5, scope: !81)
!104 = !DILabel(scope: !82, name: "CWE606_Unchecked_Loop_Condition__char_console_52b_badSink_label_", file: !1, line: 49)
!105 = !DILocation(line: 49, column: 5, scope: !82)
!106 = !DILocation(line: 54, column: 3, scope: !82)
!107 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_console_52_bad_label_", file: !1, line: 55)
!108 = !DILocation(line: 55, column: 3, scope: !9)
!109 = !DILocation(line: 60, column: 1, scope: !9)
