; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_3245CWE606_Unchecked_Loop_Condition__char_console_3273_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_3245CWE606_Unchecked_Loop_Condition__char_console_3273_1.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_3245CWE606_Unchecked_Loop_Condition__char_console_3273_1(i8* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataPtr1_0 = alloca i8**, align 8
  %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataPtr2_0 = alloca i8**, align 8
  %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_2 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_intVariable_0 = alloca i32, align 4
  store i8* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1, i8** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_0, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i8*** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataPtr1_0, metadata !23, metadata !DIExpression()), !dbg !25
  store i8** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_0, i8*** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataPtr1_0, align 8, !dbg !25
  call void @llvm.dbg.declare(metadata i8*** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataPtr2_0, metadata !26, metadata !DIExpression()), !dbg !27
  store i8** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_0, i8*** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataPtr2_0, align 8, !dbg !27
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataBuffer_0, metadata !28, metadata !DIExpression()), !dbg !32
  %0 = bitcast [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataBuffer_0 to i8*, !dbg !32
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !32
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataBuffer_0, i64 0, i64 0, !dbg !33
  store i8* %arraydecay, i8** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_0, align 8, !dbg !34
  %1 = load i8**, i8*** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataPtr1_0, align 8, !dbg !35
  %2 = load i8*, i8** %1, align 8, !dbg !37
  store i8* %2, i8** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1.addr, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata i64* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0, metadata !39, metadata !DIExpression()), !dbg !44
  %3 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1.addr, align 8, !dbg !45
  %call = call i64 @strlen(i8* %3) #6, !dbg !46
  store i64 %call, i64* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0, align 8, !dbg !44
  %4 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0, align 8, !dbg !47
  %sub = sub i64 100, %4, !dbg !49
  %cmp = icmp ugt i64 %sub, 1, !dbg !50
  br i1 %cmp, label %if.then, label %if.end18, !dbg !51

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1.addr, align 8, !dbg !52
  %6 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0, align 8, !dbg !55
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !56
  %7 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0, align 8, !dbg !57
  %sub1 = sub i64 100, %7, !dbg !58
  %conv = trunc i64 %sub1 to i32, !dbg !59
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !60
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !61
  %cmp3 = icmp ne i8* %call2, null, !dbg !62
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !63

if.then5:                                         ; preds = %if.then
  %9 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1.addr, align 8, !dbg !64
  %call6 = call i64 @strlen(i8* %9) #6, !dbg !66
  store i64 %call6, i64* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0, align 8, !dbg !67
  %10 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0, align 8, !dbg !68
  %cmp7 = icmp ugt i64 %10, 0, !dbg !70
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !71

land.lhs.true:                                    ; preds = %if.then5
  %11 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1.addr, align 8, !dbg !72
  %12 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0, align 8, !dbg !73
  %sub9 = sub i64 %12, 1, !dbg !74
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %sub9, !dbg !72
  %13 = load i8, i8* %arrayidx, align 1, !dbg !72
  %conv10 = sext i8 %13 to i32, !dbg !72
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !75
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !76

if.then13:                                        ; preds = %land.lhs.true
  %14 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1.addr, align 8, !dbg !77
  %15 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0, align 8, !dbg !79
  %sub14 = sub i64 %15, 1, !dbg !80
  %arrayidx15 = getelementptr inbounds i8, i8* %14, i64 %sub14, !dbg !77
  store i8 0, i8* %arrayidx15, align 1, !dbg !81
  br label %if.end, !dbg !82

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !83

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !84
  %16 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1.addr, align 8, !dbg !86
  %17 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0, align 8, !dbg !87
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !86
  store i8 0, i8* %arrayidx16, align 1, !dbg !88
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !89

if.end18:                                         ; preds = %if.end17, %entry
  %18 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1.addr, align 8, !dbg !90
  %19 = load i8**, i8*** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataPtr1_0, align 8, !dbg !91
  store i8* %18, i8** %19, align 8, !dbg !92
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_2, metadata !93, metadata !DIExpression()), !dbg !95
  %20 = load i8**, i8*** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataPtr2_0, align 8, !dbg !96
  %21 = load i8*, i8** %20, align 8, !dbg !97
  store i8* %21, i8** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_2, align 8, !dbg !95
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_i_0, metadata !98, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_n_0, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_intVariable_0, metadata !103, metadata !DIExpression()), !dbg !104
  %22 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_2, align 8, !dbg !105
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_n_0) #7, !dbg !107
  %cmp20 = icmp eq i32 %call19, 1, !dbg !108
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !109

if.then22:                                        ; preds = %if.end18
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_intVariable_0, align 4, !dbg !110
  %23 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !112
  %24 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_n_0, align 4, !dbg !113
  call void %23(i32 %24), !dbg !112
  %25 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_console_32_bad_intVariable_0, align 4, !dbg !114
  call void @printIntLine(i32 %25), !dbg !115
  br label %if.end23, !dbg !116

if.end23:                                         ; preds = %if.then22, %if.end18
  br label %CWE606_Unchecked_Loop_Condition__char_console_32_bad_label_, !dbg !117

CWE606_Unchecked_Loop_Condition__char_console_32_bad_label_: ; preds = %if.end23
  call void @llvm.dbg.label(metadata !118), !dbg !119
  ret void, !dbg !120
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_3245CWE606_Unchecked_Loop_Condition__char_console_3273_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_999/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_3245CWE606_Unchecked_Loop_Condition__char_console_3273_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 115, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 184, scope: !9)
!21 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_0", scope: !9, file: !1, line: 5, type: !12)
!22 = !DILocation(line: 5, column: 9, scope: !9)
!23 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataPtr1_0", scope: !9, file: !1, line: 6, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!25 = !DILocation(line: 6, column: 10, scope: !9)
!26 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataPtr2_0", scope: !9, file: !1, line: 7, type: !24)
!27 = !DILocation(line: 7, column: 10, scope: !9)
!28 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataBuffer_0", scope: !9, file: !1, line: 8, type: !29)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 100)
!32 = !DILocation(line: 8, column: 8, scope: !9)
!33 = !DILocation(line: 9, column: 66, scope: !9)
!34 = !DILocation(line: 9, column: 64, scope: !9)
!35 = !DILocation(line: 11, column: 69, scope: !36)
!36 = distinct !DILexicalBlock(scope: !9, file: !1, line: 10, column: 3)
!37 = !DILocation(line: 11, column: 68, scope: !36)
!38 = !DILocation(line: 11, column: 66, scope: !36)
!39 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0", scope: !40, file: !1, line: 13, type: !41)
!40 = distinct !DILexicalBlock(scope: !36, file: !1, line: 12, column: 5)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 46, baseType: !43)
!42 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!43 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!44 = !DILocation(line: 13, column: 14, scope: !40)
!45 = !DILocation(line: 13, column: 87, scope: !40)
!46 = !DILocation(line: 13, column: 80, scope: !40)
!47 = !DILocation(line: 14, column: 18, scope: !48)
!48 = distinct !DILexicalBlock(scope: !40, file: !1, line: 14, column: 11)
!49 = !DILocation(line: 14, column: 16, scope: !48)
!50 = !DILocation(line: 14, column: 83, scope: !48)
!51 = !DILocation(line: 14, column: 11, scope: !40)
!52 = !DILocation(line: 16, column: 19, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 16, column: 13)
!54 = distinct !DILexicalBlock(scope: !48, file: !1, line: 15, column: 7)
!55 = !DILocation(line: 16, column: 82, scope: !53)
!56 = !DILocation(line: 16, column: 80, scope: !53)
!57 = !DILocation(line: 16, column: 160, scope: !53)
!58 = !DILocation(line: 16, column: 158, scope: !53)
!59 = !DILocation(line: 16, column: 147, scope: !53)
!60 = !DILocation(line: 16, column: 226, scope: !53)
!61 = !DILocation(line: 16, column: 13, scope: !53)
!62 = !DILocation(line: 16, column: 233, scope: !53)
!63 = !DILocation(line: 16, column: 13, scope: !54)
!64 = !DILocation(line: 18, column: 84, scope: !65)
!65 = distinct !DILexicalBlock(scope: !53, file: !1, line: 17, column: 9)
!66 = !DILocation(line: 18, column: 77, scope: !65)
!67 = !DILocation(line: 18, column: 75, scope: !65)
!68 = !DILocation(line: 19, column: 16, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !1, line: 19, column: 15)
!70 = !DILocation(line: 19, column: 80, scope: !69)
!71 = !DILocation(line: 19, column: 85, scope: !69)
!72 = !DILocation(line: 19, column: 89, scope: !69)
!73 = !DILocation(line: 19, column: 150, scope: !69)
!74 = !DILocation(line: 19, column: 214, scope: !69)
!75 = !DILocation(line: 19, column: 219, scope: !69)
!76 = !DILocation(line: 19, column: 15, scope: !65)
!77 = !DILocation(line: 21, column: 13, scope: !78)
!78 = distinct !DILexicalBlock(scope: !69, file: !1, line: 20, column: 11)
!79 = !DILocation(line: 21, column: 74, scope: !78)
!80 = !DILocation(line: 21, column: 138, scope: !78)
!81 = !DILocation(line: 21, column: 143, scope: !78)
!82 = !DILocation(line: 22, column: 11, scope: !78)
!83 = !DILocation(line: 24, column: 9, scope: !65)
!84 = !DILocation(line: 27, column: 11, scope: !85)
!85 = distinct !DILexicalBlock(scope: !53, file: !1, line: 26, column: 9)
!86 = !DILocation(line: 28, column: 11, scope: !85)
!87 = !DILocation(line: 28, column: 72, scope: !85)
!88 = !DILocation(line: 28, column: 137, scope: !85)
!89 = !DILocation(line: 31, column: 7, scope: !54)
!90 = !DILocation(line: 34, column: 73, scope: !36)
!91 = !DILocation(line: 34, column: 6, scope: !36)
!92 = !DILocation(line: 34, column: 71, scope: !36)
!93 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_2", scope: !94, file: !1, line: 37, type: !12)
!94 = distinct !DILexicalBlock(scope: !9, file: !1, line: 36, column: 3)
!95 = !DILocation(line: 37, column: 11, scope: !94)
!96 = !DILocation(line: 37, column: 75, scope: !94)
!97 = !DILocation(line: 37, column: 74, scope: !94)
!98 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_32_bad_i_0", scope: !99, file: !1, line: 39, type: !4)
!99 = distinct !DILexicalBlock(scope: !94, file: !1, line: 38, column: 5)
!100 = !DILocation(line: 39, column: 11, scope: !99)
!101 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_32_bad_n_0", scope: !99, file: !1, line: 40, type: !4)
!102 = !DILocation(line: 40, column: 11, scope: !99)
!103 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_console_32_bad_intVariable_0", scope: !99, file: !1, line: 41, type: !4)
!104 = !DILocation(line: 41, column: 11, scope: !99)
!105 = !DILocation(line: 42, column: 18, scope: !106)
!106 = distinct !DILexicalBlock(scope: !99, file: !1, line: 42, column: 11)
!107 = !DILocation(line: 42, column: 11, scope: !106)
!108 = !DILocation(line: 42, column: 146, scope: !106)
!109 = !DILocation(line: 42, column: 11, scope: !99)
!110 = !DILocation(line: 44, column: 77, scope: !111)
!111 = distinct !DILexicalBlock(scope: !106, file: !1, line: 43, column: 7)
!112 = !DILocation(line: 45, column: 9, scope: !111)
!113 = !DILocation(line: 45, column: 16, scope: !111)
!114 = !DILocation(line: 46, column: 22, scope: !111)
!115 = !DILocation(line: 46, column: 9, scope: !111)
!116 = !DILocation(line: 47, column: 7, scope: !111)
!117 = !DILocation(line: 50, column: 3, scope: !94)
!118 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_console_32_bad_label_", file: !1, line: 51)
!119 = !DILocation(line: 51, column: 3, scope: !9)
!120 = !DILocation(line: 56, column: 1, scope: !9)
