; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_66a44CWE606_Unchecked_Loop_Condition__char_console_66b38_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_66a44CWE606_Unchecked_Loop_Condition__char_console_66b38_1.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_66a44CWE606_Unchecked_Loop_Condition__char_console_66b38_1(i8* %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataArray_0 = alloca [5 x i8*], align 16
  %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_data_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_intVariable_0 = alloca i32, align 4
  store i8* %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_data_0, i8** %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [5 x i8*]* %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataArray_0, metadata !21, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataBuffer_0, metadata !26, metadata !DIExpression()), !dbg !30
  %0 = bitcast [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataBuffer_0 to i8*, !dbg !30
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !30
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataBuffer_0, i64 0, i64 0, !dbg !31
  store i8* %arraydecay, i8** %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_data_0.addr, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata i64* %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataLen_0, metadata !33, metadata !DIExpression()), !dbg !38
  %1 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_data_0.addr, align 8, !dbg !39
  %call = call i64 @strlen(i8* %1) #6, !dbg !40
  store i64 %call, i64* %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataLen_0, align 8, !dbg !38
  %2 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataLen_0, align 8, !dbg !41
  %sub = sub i64 100, %2, !dbg !43
  %cmp = icmp ugt i64 %sub, 1, !dbg !44
  br i1 %cmp, label %if.then, label %if.end18, !dbg !45

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_data_0.addr, align 8, !dbg !46
  %4 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataLen_0, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !50
  %5 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataLen_0, align 8, !dbg !51
  %sub1 = sub i64 100, %5, !dbg !52
  %conv = trunc i64 %sub1 to i32, !dbg !53
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !54
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !55
  %cmp3 = icmp ne i8* %call2, null, !dbg !56
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !57

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_data_0.addr, align 8, !dbg !58
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !60
  store i64 %call6, i64* %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataLen_0, align 8, !dbg !61
  %8 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataLen_0, align 8, !dbg !62
  %cmp7 = icmp ugt i64 %8, 0, !dbg !64
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !65

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_data_0.addr, align 8, !dbg !66
  %10 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataLen_0, align 8, !dbg !67
  %sub9 = sub i64 %10, 1, !dbg !68
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !66
  %11 = load i8, i8* %arrayidx, align 1, !dbg !66
  %conv10 = sext i8 %11 to i32, !dbg !66
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !69
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !70

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_data_0.addr, align 8, !dbg !71
  %13 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataLen_0, align 8, !dbg !73
  %sub14 = sub i64 %13, 1, !dbg !74
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !71
  store i8 0, i8* %arrayidx15, align 1, !dbg !75
  br label %if.end, !dbg !76

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !77

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !78
  %14 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_data_0.addr, align 8, !dbg !80
  %15 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataLen_0, align 8, !dbg !81
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !80
  store i8 0, i8* %arrayidx16, align 1, !dbg !82
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !83

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_data_0.addr, align 8, !dbg !84
  %arrayidx19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataArray_0, i64 0, i64 2, !dbg !85
  store i8* %16, i8** %arrayidx19, align 16, !dbg !86
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_data_0, metadata !87, metadata !DIExpression()), !dbg !89
  %arrayidx20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataArray_0, i64 0, i64 2, !dbg !90
  %17 = load i8*, i8** %arrayidx20, align 16, !dbg !90
  store i8* %17, i8** %_CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_data_0, align 8, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_i_0, metadata !91, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_n_0, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_intVariable_0, metadata !96, metadata !DIExpression()), !dbg !97
  %18 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_data_0, align 8, !dbg !98
  %call21 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_n_0) #7, !dbg !100
  %cmp22 = icmp eq i32 %call21, 1, !dbg !101
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !102

if.then24:                                        ; preds = %if.end18
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_intVariable_0, align 4, !dbg !103
  %19 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !105
  %20 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_n_0, align 4, !dbg !106
  call void %19(i32 %20), !dbg !105
  %21 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_intVariable_0, align 4, !dbg !107
  call void @printIntLine(i32 %21), !dbg !108
  br label %if.end25, !dbg !109

if.end25:                                         ; preds = %if.then24, %if.end18
  br label %CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_label_, !dbg !110

CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_label_: ; preds = %if.end25
  call void @llvm.dbg.label(metadata !111), !dbg !112
  br label %CWE606_Unchecked_Loop_Condition__char_console_66_bad_label_, !dbg !113

CWE606_Unchecked_Loop_Condition__char_console_66_bad_label_: ; preds = %CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_label_
  call void @llvm.dbg.label(metadata !114), !dbg !115
  ret void, !dbg !116
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_66a44CWE606_Unchecked_Loop_Condition__char_console_66b38_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_016/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_66a44CWE606_Unchecked_Loop_Condition__char_console_66b38_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_66_bad_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 117, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 186, scope: !9)
!21 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataArray_0", scope: !9, file: !1, line: 5, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 320, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 5)
!25 = !DILocation(line: 5, column: 9, scope: !9)
!26 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataBuffer_0", scope: !9, file: !1, line: 6, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 100)
!30 = !DILocation(line: 6, column: 8, scope: !9)
!31 = !DILocation(line: 7, column: 66, scope: !9)
!32 = !DILocation(line: 7, column: 64, scope: !9)
!33 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_66_bad_dataLen_0", scope: !34, file: !1, line: 9, type: !35)
!34 = distinct !DILexicalBlock(scope: !9, file: !1, line: 8, column: 3)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 9, column: 12, scope: !34)
!39 = !DILocation(line: 9, column: 85, scope: !34)
!40 = !DILocation(line: 9, column: 78, scope: !34)
!41 = !DILocation(line: 10, column: 16, scope: !42)
!42 = distinct !DILexicalBlock(scope: !34, file: !1, line: 10, column: 9)
!43 = !DILocation(line: 10, column: 14, scope: !42)
!44 = !DILocation(line: 10, column: 81, scope: !42)
!45 = !DILocation(line: 10, column: 9, scope: !34)
!46 = !DILocation(line: 12, column: 17, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 12, column: 11)
!48 = distinct !DILexicalBlock(scope: !42, file: !1, line: 11, column: 5)
!49 = !DILocation(line: 12, column: 80, scope: !47)
!50 = !DILocation(line: 12, column: 78, scope: !47)
!51 = !DILocation(line: 12, column: 158, scope: !47)
!52 = !DILocation(line: 12, column: 156, scope: !47)
!53 = !DILocation(line: 12, column: 145, scope: !47)
!54 = !DILocation(line: 12, column: 224, scope: !47)
!55 = !DILocation(line: 12, column: 11, scope: !47)
!56 = !DILocation(line: 12, column: 231, scope: !47)
!57 = !DILocation(line: 12, column: 11, scope: !48)
!58 = !DILocation(line: 14, column: 82, scope: !59)
!59 = distinct !DILexicalBlock(scope: !47, file: !1, line: 13, column: 7)
!60 = !DILocation(line: 14, column: 75, scope: !59)
!61 = !DILocation(line: 14, column: 73, scope: !59)
!62 = !DILocation(line: 15, column: 14, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 15, column: 13)
!64 = !DILocation(line: 15, column: 78, scope: !63)
!65 = !DILocation(line: 15, column: 83, scope: !63)
!66 = !DILocation(line: 15, column: 87, scope: !63)
!67 = !DILocation(line: 15, column: 148, scope: !63)
!68 = !DILocation(line: 15, column: 212, scope: !63)
!69 = !DILocation(line: 15, column: 217, scope: !63)
!70 = !DILocation(line: 15, column: 13, scope: !59)
!71 = !DILocation(line: 17, column: 11, scope: !72)
!72 = distinct !DILexicalBlock(scope: !63, file: !1, line: 16, column: 9)
!73 = !DILocation(line: 17, column: 72, scope: !72)
!74 = !DILocation(line: 17, column: 136, scope: !72)
!75 = !DILocation(line: 17, column: 141, scope: !72)
!76 = !DILocation(line: 18, column: 9, scope: !72)
!77 = !DILocation(line: 20, column: 7, scope: !59)
!78 = !DILocation(line: 23, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !47, file: !1, line: 22, column: 7)
!80 = !DILocation(line: 24, column: 9, scope: !79)
!81 = !DILocation(line: 24, column: 70, scope: !79)
!82 = !DILocation(line: 24, column: 135, scope: !79)
!83 = !DILocation(line: 27, column: 5, scope: !48)
!84 = !DILocation(line: 30, column: 74, scope: !9)
!85 = !DILocation(line: 30, column: 3, scope: !9)
!86 = !DILocation(line: 30, column: 72, scope: !9)
!87 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_data_0", scope: !88, file: !1, line: 32, type: !12)
!88 = distinct !DILexicalBlock(scope: !9, file: !1, line: 31, column: 3)
!89 = !DILocation(line: 32, column: 11, scope: !88)
!90 = !DILocation(line: 32, column: 79, scope: !88)
!91 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_i_0", scope: !92, file: !1, line: 34, type: !4)
!92 = distinct !DILexicalBlock(scope: !88, file: !1, line: 33, column: 5)
!93 = !DILocation(line: 34, column: 11, scope: !92)
!94 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_n_0", scope: !92, file: !1, line: 35, type: !4)
!95 = !DILocation(line: 35, column: 11, scope: !92)
!96 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_intVariable_0", scope: !92, file: !1, line: 36, type: !4)
!97 = !DILocation(line: 36, column: 11, scope: !92)
!98 = !DILocation(line: 37, column: 18, scope: !99)
!99 = distinct !DILexicalBlock(scope: !92, file: !1, line: 37, column: 11)
!100 = !DILocation(line: 37, column: 11, scope: !99)
!101 = !DILocation(line: 37, column: 156, scope: !99)
!102 = !DILocation(line: 37, column: 11, scope: !92)
!103 = !DILocation(line: 39, column: 82, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !1, line: 38, column: 7)
!105 = !DILocation(line: 40, column: 9, scope: !104)
!106 = !DILocation(line: 40, column: 16, scope: !104)
!107 = !DILocation(line: 41, column: 22, scope: !104)
!108 = !DILocation(line: 41, column: 9, scope: !104)
!109 = !DILocation(line: 42, column: 7, scope: !104)
!110 = !DILocation(line: 44, column: 5, scope: !92)
!111 = !DILabel(scope: !88, name: "CWE606_Unchecked_Loop_Condition__char_console_66b_badSink_label_", file: !1, line: 45)
!112 = !DILocation(line: 45, column: 5, scope: !88)
!113 = !DILocation(line: 50, column: 3, scope: !88)
!114 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_console_66_bad_label_", file: !1, line: 51)
!115 = !DILocation(line: 51, column: 3, scope: !9)
!116 = !DILocation(line: 56, column: 1, scope: !9)
