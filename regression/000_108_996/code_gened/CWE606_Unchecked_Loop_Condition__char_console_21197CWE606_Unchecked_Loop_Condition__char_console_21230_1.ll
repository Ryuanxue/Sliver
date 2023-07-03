; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_21197CWE606_Unchecked_Loop_Condition__char_console_21230_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_21197CWE606_Unchecked_Loop_Condition__char_console_21230_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@goodB2G2Static = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@goodG2BStatic = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_21197CWE606_Unchecked_Loop_Condition__char_console_21230_1(i8* %_goodB2G2_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G2_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G2_dataLen_0 = alloca i64, align 8
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2BSink_i_0 = alloca i32, align 4
  %_goodG2BSink_n_0 = alloca i32, align 4
  %_goodG2BSink_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G2_data_0, i8** %_goodB2G2_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G2_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G2_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G2_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G2_data_0.addr, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !29, metadata !DIExpression()), !dbg !34
  %1 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !35
  %call = call i64 @strlen(i8* %1) #6, !dbg !36
  store i64 %call, i64* %_goodB2G2_dataLen_0, align 8, !dbg !34
  %2 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !37
  %sub = sub i64 100, %2, !dbg !39
  %cmp = icmp ugt i64 %sub, 1, !dbg !40
  br i1 %cmp, label %if.then, label %if.end18, !dbg !41

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !42
  %4 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !45
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !46
  %5 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !47
  %sub1 = sub i64 100, %5, !dbg !48
  %conv = trunc i64 %sub1 to i32, !dbg !49
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !50
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !51
  %cmp3 = icmp ne i8* %call2, null, !dbg !52
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !53

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !54
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !56
  store i64 %call6, i64* %_goodB2G2_dataLen_0, align 8, !dbg !57
  %8 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !58
  %cmp7 = icmp ugt i64 %8, 0, !dbg !60
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !61

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !62
  %10 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !63
  %sub9 = sub i64 %10, 1, !dbg !64
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !62
  %11 = load i8, i8* %arrayidx, align 1, !dbg !62
  %conv10 = sext i8 %11 to i32, !dbg !62
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !65
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !66

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !67
  %13 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !69
  %sub14 = sub i64 %13, 1, !dbg !70
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !67
  store i8 0, i8* %arrayidx15, align 1, !dbg !71
  br label %if.end, !dbg !72

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !73

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !74
  %14 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !76
  %15 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !77
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !76
  store i8 0, i8* %arrayidx16, align 1, !dbg !78
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !79

if.end18:                                         ; preds = %if.end17, %entry
  store i32 1, i32* @goodB2G2Static, align 4, !dbg !80
  %16 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !81
  call void @goodB2G2Sink(i8* %16), !dbg !82
  br label %goodB2G2_label_, !dbg !82

goodB2G2_label_:                                  ; preds = %if.end18
  call void @llvm.dbg.label(metadata !83), !dbg !84
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !85, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !88, metadata !DIExpression()), !dbg !89
  %17 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !89
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 100, i1 false), !dbg !89
  %arraydecay19 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !90
  store i8* %arraydecay19, i8** %_goodG2B_data_0, align 8, !dbg !91
  %18 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !92
  %call20 = call i8* @strcpy(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !93
  store i32 1, i32* @goodG2BStatic, align 4, !dbg !94
  %19 = load i32, i32* @goodG2BStatic, align 4, !dbg !95
  %tobool = icmp ne i32 %19, 0, !dbg !95
  br i1 %tobool, label %if.then21, label %if.end27, !dbg !98

if.then21:                                        ; preds = %goodB2G2_label_
  call void @llvm.dbg.declare(metadata i32* %_goodG2BSink_i_0, metadata !99, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata i32* %_goodG2BSink_n_0, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata i32* %_goodG2BSink_intVariable_0, metadata !105, metadata !DIExpression()), !dbg !106
  %20 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !107
  %call22 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %_goodG2BSink_n_0) #7, !dbg !109
  %cmp23 = icmp eq i32 %call22, 1, !dbg !110
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !111

if.then25:                                        ; preds = %if.then21
  store i32 0, i32* %_goodG2BSink_intVariable_0, align 4, !dbg !112
  %21 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !114
  %22 = load i32, i32* %_goodG2BSink_n_0, align 4, !dbg !115
  call void %21(i32 %22), !dbg !114
  %23 = load i32, i32* %_goodG2BSink_intVariable_0, align 4, !dbg !116
  call void @printIntLine(i32 %23), !dbg !117
  br label %if.end26, !dbg !118

if.end26:                                         ; preds = %if.then25, %if.then21
  br label %if.end27, !dbg !119

if.end27:                                         ; preds = %if.end26, %goodB2G2_label_
  br label %goodG2BSink_label_, !dbg !95

goodG2BSink_label_:                               ; preds = %if.end27
  call void @llvm.dbg.label(metadata !120), !dbg !121
  br label %goodG2B_label_, !dbg !122

goodG2B_label_:                                   ; preds = %goodG2BSink_label_
  call void @llvm.dbg.label(metadata !123), !dbg !124
  br label %CWE606_Unchecked_Loop_Condition__char_console_21_good_label_, !dbg !125

CWE606_Unchecked_Loop_Condition__char_console_21_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !126), !dbg !127
  ret void, !dbg !128
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

declare dso_local void @goodB2G2Sink(i8*) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_21197CWE606_Unchecked_Loop_Condition__char_console_21230_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_996/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_21197CWE606_Unchecked_Loop_Condition__char_console_21230_1", scope: !1, file: !1, line: 5, type: !10, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G2_data_0", arg: 1, scope: !9, file: !1, line: 5, type: !12)
!18 = !DILocation(line: 5, column: 117, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 5, type: !14)
!20 = !DILocation(line: 5, column: 142, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G2_dataBuffer_0", scope: !22, file: !1, line: 8, type: !23)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 7, column: 3)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 8, column: 10, scope: !22)
!27 = !DILocation(line: 9, column: 24, scope: !22)
!28 = !DILocation(line: 9, column: 22, scope: !22)
!29 = !DILocalVariable(name: "_goodB2G2_dataLen_0", scope: !30, file: !1, line: 11, type: !31)
!30 = distinct !DILexicalBlock(scope: !22, file: !1, line: 10, column: 5)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 11, column: 14, scope: !30)
!35 = !DILocation(line: 11, column: 43, scope: !30)
!36 = !DILocation(line: 11, column: 36, scope: !30)
!37 = !DILocation(line: 12, column: 18, scope: !38)
!38 = distinct !DILexicalBlock(scope: !30, file: !1, line: 12, column: 11)
!39 = !DILocation(line: 12, column: 16, scope: !38)
!40 = !DILocation(line: 12, column: 39, scope: !38)
!41 = !DILocation(line: 12, column: 11, scope: !30)
!42 = !DILocation(line: 14, column: 19, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 14, column: 13)
!44 = distinct !DILexicalBlock(scope: !38, file: !1, line: 13, column: 7)
!45 = !DILocation(line: 14, column: 38, scope: !43)
!46 = !DILocation(line: 14, column: 36, scope: !43)
!47 = !DILocation(line: 14, column: 72, scope: !43)
!48 = !DILocation(line: 14, column: 70, scope: !43)
!49 = !DILocation(line: 14, column: 59, scope: !43)
!50 = !DILocation(line: 14, column: 94, scope: !43)
!51 = !DILocation(line: 14, column: 13, scope: !43)
!52 = !DILocation(line: 14, column: 101, scope: !43)
!53 = !DILocation(line: 14, column: 13, scope: !44)
!54 = !DILocation(line: 16, column: 40, scope: !55)
!55 = distinct !DILexicalBlock(scope: !43, file: !1, line: 15, column: 9)
!56 = !DILocation(line: 16, column: 33, scope: !55)
!57 = !DILocation(line: 16, column: 31, scope: !55)
!58 = !DILocation(line: 17, column: 16, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 17, column: 15)
!60 = !DILocation(line: 17, column: 36, scope: !59)
!61 = !DILocation(line: 17, column: 41, scope: !59)
!62 = !DILocation(line: 17, column: 45, scope: !59)
!63 = !DILocation(line: 17, column: 62, scope: !59)
!64 = !DILocation(line: 17, column: 82, scope: !59)
!65 = !DILocation(line: 17, column: 87, scope: !59)
!66 = !DILocation(line: 17, column: 15, scope: !55)
!67 = !DILocation(line: 19, column: 13, scope: !68)
!68 = distinct !DILexicalBlock(scope: !59, file: !1, line: 18, column: 11)
!69 = !DILocation(line: 19, column: 30, scope: !68)
!70 = !DILocation(line: 19, column: 50, scope: !68)
!71 = !DILocation(line: 19, column: 55, scope: !68)
!72 = !DILocation(line: 20, column: 11, scope: !68)
!73 = !DILocation(line: 22, column: 9, scope: !55)
!74 = !DILocation(line: 25, column: 11, scope: !75)
!75 = distinct !DILexicalBlock(scope: !43, file: !1, line: 24, column: 9)
!76 = !DILocation(line: 26, column: 11, scope: !75)
!77 = !DILocation(line: 26, column: 28, scope: !75)
!78 = !DILocation(line: 26, column: 49, scope: !75)
!79 = !DILocation(line: 29, column: 7, scope: !44)
!80 = !DILocation(line: 32, column: 20, scope: !22)
!81 = !DILocation(line: 33, column: 18, scope: !22)
!82 = !DILocation(line: 33, column: 5, scope: !22)
!83 = !DILabel(scope: !22, name: "goodB2G2_label_", file: !1, line: 34)
!84 = !DILocation(line: 34, column: 5, scope: !22)
!85 = !DILocalVariable(name: "_goodG2B_data_0", scope: !86, file: !1, line: 41, type: !12)
!86 = distinct !DILexicalBlock(scope: !9, file: !1, line: 40, column: 3)
!87 = !DILocation(line: 41, column: 11, scope: !86)
!88 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !86, file: !1, line: 42, type: !23)
!89 = !DILocation(line: 42, column: 10, scope: !86)
!90 = !DILocation(line: 43, column: 23, scope: !86)
!91 = !DILocation(line: 43, column: 21, scope: !86)
!92 = !DILocation(line: 44, column: 12, scope: !86)
!93 = !DILocation(line: 44, column: 5, scope: !86)
!94 = !DILocation(line: 45, column: 19, scope: !86)
!95 = !DILocation(line: 47, column: 11, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 47, column: 11)
!97 = distinct !DILexicalBlock(scope: !86, file: !1, line: 46, column: 5)
!98 = !DILocation(line: 47, column: 11, scope: !97)
!99 = !DILocalVariable(name: "_goodG2BSink_i_0", scope: !100, file: !1, line: 50, type: !4)
!100 = distinct !DILexicalBlock(scope: !101, file: !1, line: 49, column: 9)
!101 = distinct !DILexicalBlock(scope: !96, file: !1, line: 48, column: 7)
!102 = !DILocation(line: 50, column: 15, scope: !100)
!103 = !DILocalVariable(name: "_goodG2BSink_n_0", scope: !100, file: !1, line: 51, type: !4)
!104 = !DILocation(line: 51, column: 15, scope: !100)
!105 = !DILocalVariable(name: "_goodG2BSink_intVariable_0", scope: !100, file: !1, line: 52, type: !4)
!106 = !DILocation(line: 52, column: 15, scope: !100)
!107 = !DILocation(line: 53, column: 22, scope: !108)
!108 = distinct !DILexicalBlock(scope: !100, file: !1, line: 53, column: 15)
!109 = !DILocation(line: 53, column: 15, scope: !108)
!110 = !DILocation(line: 53, column: 64, scope: !108)
!111 = !DILocation(line: 53, column: 15, scope: !100)
!112 = !DILocation(line: 55, column: 40, scope: !113)
!113 = distinct !DILexicalBlock(scope: !108, file: !1, line: 54, column: 11)
!114 = !DILocation(line: 56, column: 13, scope: !113)
!115 = !DILocation(line: 56, column: 20, scope: !113)
!116 = !DILocation(line: 57, column: 26, scope: !113)
!117 = !DILocation(line: 57, column: 13, scope: !113)
!118 = !DILocation(line: 58, column: 11, scope: !113)
!119 = !DILocation(line: 61, column: 7, scope: !101)
!120 = !DILabel(scope: !97, name: "goodG2BSink_label_", file: !1, line: 63)
!121 = !DILocation(line: 63, column: 7, scope: !97)
!122 = !DILocation(line: 68, column: 5, scope: !97)
!123 = !DILabel(scope: !86, name: "goodG2B_label_", file: !1, line: 69)
!124 = !DILocation(line: 69, column: 5, scope: !86)
!125 = !DILocation(line: 74, column: 3, scope: !86)
!126 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_console_21_good_label_", file: !1, line: 75)
!127 = !DILocation(line: 75, column: 3, scope: !9)
!128 = !DILocation(line: 80, column: 1, scope: !9)
