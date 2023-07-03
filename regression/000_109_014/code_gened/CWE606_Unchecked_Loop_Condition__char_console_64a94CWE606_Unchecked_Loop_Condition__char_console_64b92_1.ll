; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_64a94CWE606_Unchecked_Loop_Condition__char_console_64b92_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_64a94CWE606_Unchecked_Loop_Condition__char_console_64b92_1.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_64a94CWE606_Unchecked_Loop_Condition__char_console_64b92_1(i8* %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !12 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_dataPtr_0 = alloca i8**, align 8
  %_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_data_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !29, metadata !DIExpression()), !dbg !34
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !35
  %call = call i64 @strlen(i8* %1) #6, !dbg !36
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !34
  %2 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !37
  %sub = sub i64 100, %2, !dbg !39
  %cmp = icmp ugt i64 %sub, 1, !dbg !40
  br i1 %cmp, label %if.then, label %if.end18, !dbg !41

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !42
  %4 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !45
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !46
  %5 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !47
  %sub1 = sub i64 100, %5, !dbg !48
  %conv = trunc i64 %sub1 to i32, !dbg !49
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !50
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !51
  %cmp3 = icmp ne i8* %call2, null, !dbg !52
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !53

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !54
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !56
  store i64 %call6, i64* %_goodB2G_dataLen_0, align 8, !dbg !57
  %8 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !58
  %cmp7 = icmp ugt i64 %8, 0, !dbg !60
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !61

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !62
  %10 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !63
  %sub9 = sub i64 %10, 1, !dbg !64
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !62
  %11 = load i8, i8* %arrayidx, align 1, !dbg !62
  %conv10 = sext i8 %11 to i32, !dbg !62
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !65
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !66

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !67
  %13 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !69
  %sub14 = sub i64 %13, 1, !dbg !70
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !67
  store i8 0, i8* %arrayidx15, align 1, !dbg !71
  br label %if.end, !dbg !72

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !73

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !74
  %14 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !76
  %15 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !77
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !76
  store i8 0, i8* %arrayidx16, align 1, !dbg !78
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !79

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i8*** %_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_dataPtr_0, metadata !80, metadata !DIExpression()), !dbg !82
  store i8** %_goodB2G_data_0.addr, i8*** %_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_dataPtr_0, align 8, !dbg !82
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_data_0, metadata !83, metadata !DIExpression()), !dbg !84
  %16 = load i8**, i8*** %_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_dataPtr_0, align 8, !dbg !85
  %17 = load i8*, i8** %16, align 8, !dbg !86
  store i8* %17, i8** %_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_data_0, align 8, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_i_0, metadata !87, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_n_0, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_intVariable_0, metadata !92, metadata !DIExpression()), !dbg !93
  %18 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_data_0, align 8, !dbg !94
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_n_0) #7, !dbg !96
  %cmp20 = icmp eq i32 %call19, 1, !dbg !97
  br i1 %cmp20, label %if.then22, label %if.end27, !dbg !98

if.then22:                                        ; preds = %if.end18
  %19 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_n_0, align 4, !dbg !99
  %cmp23 = icmp slt i32 %19, 10000, !dbg !102
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !103

if.then25:                                        ; preds = %if.then22
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_intVariable_0, align 4, !dbg !104
  %20 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !106
  %21 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_n_0, align 4, !dbg !107
  call void %20(i32 %21), !dbg !106
  %22 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_intVariable_0, align 4, !dbg !108
  call void @printIntLine(i32 %22), !dbg !109
  br label %if.end26, !dbg !110

if.end26:                                         ; preds = %if.then25, %if.then22
  br label %if.end27, !dbg !111

if.end27:                                         ; preds = %if.end26, %if.end18
  br label %CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_label_, !dbg !112

CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_label_: ; preds = %if.end27
  call void @llvm.dbg.label(metadata !113), !dbg !114
  br label %goodB2G_label_, !dbg !115

goodB2G_label_:                                   ; preds = %CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_label_
  call void @llvm.dbg.label(metadata !116), !dbg !117
  ret void, !dbg !118
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
!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_64a94CWE606_Unchecked_Loop_Condition__char_console_64b92_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_014/code_gened")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{i32 7, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 12.0.0"}
!12 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_64a94CWE606_Unchecked_Loop_Condition__char_console_64b92_1", scope: !1, file: !1, line: 3, type: !13, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !6, !15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !4}
!18 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !12, file: !1, line: 3, type: !6)
!19 = !DILocation(line: 3, column: 117, scope: !12)
!20 = !DILocalVariable(name: "opsink", arg: 2, scope: !12, file: !1, line: 3, type: !15)
!21 = !DILocation(line: 3, column: 141, scope: !12)
!22 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !12, file: !1, line: 5, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 5, column: 8, scope: !12)
!27 = !DILocation(line: 6, column: 21, scope: !12)
!28 = !DILocation(line: 6, column: 19, scope: !12)
!29 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !30, file: !1, line: 8, type: !31)
!30 = distinct !DILexicalBlock(scope: !12, file: !1, line: 7, column: 3)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 8, column: 12, scope: !30)
!35 = !DILocation(line: 8, column: 40, scope: !30)
!36 = !DILocation(line: 8, column: 33, scope: !30)
!37 = !DILocation(line: 9, column: 16, scope: !38)
!38 = distinct !DILexicalBlock(scope: !30, file: !1, line: 9, column: 9)
!39 = !DILocation(line: 9, column: 14, scope: !38)
!40 = !DILocation(line: 9, column: 36, scope: !38)
!41 = !DILocation(line: 9, column: 9, scope: !30)
!42 = !DILocation(line: 11, column: 17, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 11, column: 11)
!44 = distinct !DILexicalBlock(scope: !38, file: !1, line: 10, column: 5)
!45 = !DILocation(line: 11, column: 35, scope: !43)
!46 = !DILocation(line: 11, column: 33, scope: !43)
!47 = !DILocation(line: 11, column: 68, scope: !43)
!48 = !DILocation(line: 11, column: 66, scope: !43)
!49 = !DILocation(line: 11, column: 55, scope: !43)
!50 = !DILocation(line: 11, column: 89, scope: !43)
!51 = !DILocation(line: 11, column: 11, scope: !43)
!52 = !DILocation(line: 11, column: 96, scope: !43)
!53 = !DILocation(line: 11, column: 11, scope: !44)
!54 = !DILocation(line: 13, column: 37, scope: !55)
!55 = distinct !DILexicalBlock(scope: !43, file: !1, line: 12, column: 7)
!56 = !DILocation(line: 13, column: 30, scope: !55)
!57 = !DILocation(line: 13, column: 28, scope: !55)
!58 = !DILocation(line: 14, column: 14, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 14, column: 13)
!60 = !DILocation(line: 14, column: 33, scope: !59)
!61 = !DILocation(line: 14, column: 38, scope: !59)
!62 = !DILocation(line: 14, column: 42, scope: !59)
!63 = !DILocation(line: 14, column: 58, scope: !59)
!64 = !DILocation(line: 14, column: 77, scope: !59)
!65 = !DILocation(line: 14, column: 82, scope: !59)
!66 = !DILocation(line: 14, column: 13, scope: !55)
!67 = !DILocation(line: 16, column: 11, scope: !68)
!68 = distinct !DILexicalBlock(scope: !59, file: !1, line: 15, column: 9)
!69 = !DILocation(line: 16, column: 27, scope: !68)
!70 = !DILocation(line: 16, column: 46, scope: !68)
!71 = !DILocation(line: 16, column: 51, scope: !68)
!72 = !DILocation(line: 17, column: 9, scope: !68)
!73 = !DILocation(line: 19, column: 7, scope: !55)
!74 = !DILocation(line: 22, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !43, file: !1, line: 21, column: 7)
!76 = !DILocation(line: 23, column: 9, scope: !75)
!77 = !DILocation(line: 23, column: 25, scope: !75)
!78 = !DILocation(line: 23, column: 45, scope: !75)
!79 = !DILocation(line: 26, column: 5, scope: !44)
!80 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_dataPtr_0", scope: !81, file: !1, line: 30, type: !5)
!81 = distinct !DILexicalBlock(scope: !12, file: !1, line: 29, column: 3)
!82 = !DILocation(line: 30, column: 12, scope: !81)
!83 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_data_0", scope: !81, file: !1, line: 31, type: !6)
!84 = !DILocation(line: 31, column: 11, scope: !81)
!85 = !DILocation(line: 31, column: 84, scope: !81)
!86 = !DILocation(line: 31, column: 83, scope: !81)
!87 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_i_0", scope: !88, file: !1, line: 33, type: !4)
!88 = distinct !DILexicalBlock(scope: !81, file: !1, line: 32, column: 5)
!89 = !DILocation(line: 33, column: 11, scope: !88)
!90 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_n_0", scope: !88, file: !1, line: 34, type: !4)
!91 = !DILocation(line: 34, column: 11, scope: !88)
!92 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_intVariable_0", scope: !88, file: !1, line: 35, type: !4)
!93 = !DILocation(line: 35, column: 11, scope: !88)
!94 = !DILocation(line: 36, column: 18, scope: !95)
!95 = distinct !DILexicalBlock(scope: !88, file: !1, line: 36, column: 11)
!96 = !DILocation(line: 36, column: 11, scope: !95)
!97 = !DILocation(line: 36, column: 164, scope: !95)
!98 = !DILocation(line: 36, column: 11, scope: !88)
!99 = !DILocation(line: 38, column: 13, scope: !100)
!100 = distinct !DILexicalBlock(scope: !101, file: !1, line: 38, column: 13)
!101 = distinct !DILexicalBlock(scope: !95, file: !1, line: 37, column: 7)
!102 = !DILocation(line: 38, column: 80, scope: !100)
!103 = !DILocation(line: 38, column: 13, scope: !101)
!104 = !DILocation(line: 40, column: 88, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !1, line: 39, column: 9)
!106 = !DILocation(line: 41, column: 11, scope: !105)
!107 = !DILocation(line: 41, column: 18, scope: !105)
!108 = !DILocation(line: 42, column: 24, scope: !105)
!109 = !DILocation(line: 42, column: 11, scope: !105)
!110 = !DILocation(line: 43, column: 9, scope: !105)
!111 = !DILocation(line: 45, column: 7, scope: !101)
!112 = !DILocation(line: 47, column: 5, scope: !88)
!113 = !DILabel(scope: !81, name: "CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink_label_", file: !1, line: 48)
!114 = !DILocation(line: 48, column: 5, scope: !81)
!115 = !DILocation(line: 53, column: 3, scope: !81)
!116 = !DILabel(scope: !12, name: "goodB2G_label_", file: !1, line: 54)
!117 = !DILocation(line: 54, column: 3, scope: !12)
!118 = !DILocation(line: 59, column: 1, scope: !12)
