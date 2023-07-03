; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_07166CWE606_Unchecked_Loop_Condition__char_console_07195_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_07166CWE606_Unchecked_Loop_Condition__char_console_07195_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@staticFive = external dso_local global i32, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_07166CWE606_Unchecked_Loop_Condition__char_console_07195_1(i8* %_goodB2G2_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G2_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G2_dataLen_0 = alloca i64, align 8
  %_goodB2G2_i_0 = alloca i32, align 4
  %_goodB2G2_n_0 = alloca i32, align 4
  %_goodB2G2_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G2_data_0, i8** %_goodB2G2_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G2_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %_goodB2G2_dataBuffer_0 to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G2_dataBuffer_0, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %_goodB2G2_data_0.addr, align 8, !dbg !27
  %1 = load i32, i32* @staticFive, align 4, !dbg !28
  %cmp = icmp eq i32 %1, 5, !dbg !30
  br i1 %cmp, label %if.then, label %if.end21, !dbg !31

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !38
  %2 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !39
  %call = call i64 @strlen(i8* %2) #6, !dbg !40
  store i64 %call, i64* %_goodB2G2_dataLen_0, align 8, !dbg !38
  %3 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !41
  %sub = sub i64 100, %3, !dbg !43
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !44
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !45

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !46
  %5 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !50
  %6 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !51
  %sub3 = sub i64 100, %6, !dbg !52
  %conv = trunc i64 %sub3 to i32, !dbg !53
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !54
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !55
  %cmp5 = icmp ne i8* %call4, null, !dbg !56
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !57

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !58
  %call8 = call i64 @strlen(i8* %8) #6, !dbg !60
  store i64 %call8, i64* %_goodB2G2_dataLen_0, align 8, !dbg !61
  %9 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !62
  %cmp9 = icmp ugt i64 %9, 0, !dbg !64
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !65

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !66
  %11 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !67
  %sub11 = sub i64 %11, 1, !dbg !68
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !66
  %12 = load i8, i8* %arrayidx, align 1, !dbg !66
  %conv12 = sext i8 %12 to i32, !dbg !66
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !69
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !70

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !71
  %14 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !73
  %sub16 = sub i64 %14, 1, !dbg !74
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !71
  store i8 0, i8* %arrayidx17, align 1, !dbg !75
  br label %if.end, !dbg !76

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !77

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !78
  %15 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !80
  %16 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !81
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !80
  store i8 0, i8* %arrayidx18, align 1, !dbg !82
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !83

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !84

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @staticFive, align 4, !dbg !85
  %cmp22 = icmp eq i32 %17, 5, !dbg !87
  br i1 %cmp22, label %if.then24, label %if.end34, !dbg !88

if.then24:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_i_0, metadata !89, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_n_0, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_intVariable_0, metadata !95, metadata !DIExpression()), !dbg !96
  %18 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !97
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G2_n_0) #7, !dbg !99
  %cmp26 = icmp eq i32 %call25, 1, !dbg !100
  br i1 %cmp26, label %if.then28, label %if.end33, !dbg !101

if.then28:                                        ; preds = %if.then24
  %19 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !102
  %cmp29 = icmp slt i32 %19, 10000, !dbg !105
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !106

if.then31:                                        ; preds = %if.then28
  store i32 0, i32* %_goodB2G2_intVariable_0, align 4, !dbg !107
  %20 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !109
  %21 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !110
  call void %20(i32 %21), !dbg !109
  %22 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !111
  call void @printIntLine(i32 %22), !dbg !112
  br label %if.end32, !dbg !113

if.end32:                                         ; preds = %if.then31, %if.then28
  br label %if.end33, !dbg !114

if.end33:                                         ; preds = %if.end32, %if.then24
  br label %if.end34, !dbg !115

if.end34:                                         ; preds = %if.end33, %if.end21
  br label %goodB2G2_label_, !dbg !116

goodB2G2_label_:                                  ; preds = %if.end34
  call void @llvm.dbg.label(metadata !117), !dbg !118
  ret void, !dbg !119
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_07166CWE606_Unchecked_Loop_Condition__char_console_07195_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_984/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_07166CWE606_Unchecked_Loop_Condition__char_console_07195_1", scope: !1, file: !1, line: 4, type: !10, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G2_data_0", arg: 1, scope: !9, file: !1, line: 4, type: !12)
!18 = !DILocation(line: 4, column: 117, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 4, type: !14)
!20 = !DILocation(line: 4, column: 142, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G2_dataBuffer_0", scope: !9, file: !1, line: 6, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 6, column: 8, scope: !9)
!26 = !DILocation(line: 7, column: 22, scope: !9)
!27 = !DILocation(line: 7, column: 20, scope: !9)
!28 = !DILocation(line: 8, column: 7, scope: !29)
!29 = distinct !DILexicalBlock(scope: !9, file: !1, line: 8, column: 7)
!30 = !DILocation(line: 8, column: 18, scope: !29)
!31 = !DILocation(line: 8, column: 7, scope: !9)
!32 = !DILocalVariable(name: "_goodB2G2_dataLen_0", scope: !33, file: !1, line: 11, type: !35)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 10, column: 5)
!34 = distinct !DILexicalBlock(scope: !29, file: !1, line: 9, column: 3)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 11, column: 14, scope: !33)
!39 = !DILocation(line: 11, column: 43, scope: !33)
!40 = !DILocation(line: 11, column: 36, scope: !33)
!41 = !DILocation(line: 12, column: 18, scope: !42)
!42 = distinct !DILexicalBlock(scope: !33, file: !1, line: 12, column: 11)
!43 = !DILocation(line: 12, column: 16, scope: !42)
!44 = !DILocation(line: 12, column: 39, scope: !42)
!45 = !DILocation(line: 12, column: 11, scope: !33)
!46 = !DILocation(line: 14, column: 19, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 14, column: 13)
!48 = distinct !DILexicalBlock(scope: !42, file: !1, line: 13, column: 7)
!49 = !DILocation(line: 14, column: 38, scope: !47)
!50 = !DILocation(line: 14, column: 36, scope: !47)
!51 = !DILocation(line: 14, column: 72, scope: !47)
!52 = !DILocation(line: 14, column: 70, scope: !47)
!53 = !DILocation(line: 14, column: 59, scope: !47)
!54 = !DILocation(line: 14, column: 94, scope: !47)
!55 = !DILocation(line: 14, column: 13, scope: !47)
!56 = !DILocation(line: 14, column: 101, scope: !47)
!57 = !DILocation(line: 14, column: 13, scope: !48)
!58 = !DILocation(line: 16, column: 40, scope: !59)
!59 = distinct !DILexicalBlock(scope: !47, file: !1, line: 15, column: 9)
!60 = !DILocation(line: 16, column: 33, scope: !59)
!61 = !DILocation(line: 16, column: 31, scope: !59)
!62 = !DILocation(line: 17, column: 16, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 17, column: 15)
!64 = !DILocation(line: 17, column: 36, scope: !63)
!65 = !DILocation(line: 17, column: 41, scope: !63)
!66 = !DILocation(line: 17, column: 45, scope: !63)
!67 = !DILocation(line: 17, column: 62, scope: !63)
!68 = !DILocation(line: 17, column: 82, scope: !63)
!69 = !DILocation(line: 17, column: 87, scope: !63)
!70 = !DILocation(line: 17, column: 15, scope: !59)
!71 = !DILocation(line: 19, column: 13, scope: !72)
!72 = distinct !DILexicalBlock(scope: !63, file: !1, line: 18, column: 11)
!73 = !DILocation(line: 19, column: 30, scope: !72)
!74 = !DILocation(line: 19, column: 50, scope: !72)
!75 = !DILocation(line: 19, column: 55, scope: !72)
!76 = !DILocation(line: 20, column: 11, scope: !72)
!77 = !DILocation(line: 22, column: 9, scope: !59)
!78 = !DILocation(line: 25, column: 11, scope: !79)
!79 = distinct !DILexicalBlock(scope: !47, file: !1, line: 24, column: 9)
!80 = !DILocation(line: 26, column: 11, scope: !79)
!81 = !DILocation(line: 26, column: 28, scope: !79)
!82 = !DILocation(line: 26, column: 49, scope: !79)
!83 = !DILocation(line: 29, column: 7, scope: !48)
!84 = !DILocation(line: 32, column: 3, scope: !34)
!85 = !DILocation(line: 34, column: 7, scope: !86)
!86 = distinct !DILexicalBlock(scope: !9, file: !1, line: 34, column: 7)
!87 = !DILocation(line: 34, column: 18, scope: !86)
!88 = !DILocation(line: 34, column: 7, scope: !9)
!89 = !DILocalVariable(name: "_goodB2G2_i_0", scope: !90, file: !1, line: 37, type: !4)
!90 = distinct !DILexicalBlock(scope: !91, file: !1, line: 36, column: 5)
!91 = distinct !DILexicalBlock(scope: !86, file: !1, line: 35, column: 3)
!92 = !DILocation(line: 37, column: 11, scope: !90)
!93 = !DILocalVariable(name: "_goodB2G2_n_0", scope: !90, file: !1, line: 38, type: !4)
!94 = !DILocation(line: 38, column: 11, scope: !90)
!95 = !DILocalVariable(name: "_goodB2G2_intVariable_0", scope: !90, file: !1, line: 39, type: !4)
!96 = !DILocation(line: 39, column: 11, scope: !90)
!97 = !DILocation(line: 40, column: 18, scope: !98)
!98 = distinct !DILexicalBlock(scope: !90, file: !1, line: 40, column: 11)
!99 = !DILocation(line: 40, column: 11, scope: !98)
!100 = !DILocation(line: 40, column: 58, scope: !98)
!101 = !DILocation(line: 40, column: 11, scope: !90)
!102 = !DILocation(line: 42, column: 13, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !1, line: 42, column: 13)
!104 = distinct !DILexicalBlock(scope: !98, file: !1, line: 41, column: 7)
!105 = !DILocation(line: 42, column: 27, scope: !103)
!106 = !DILocation(line: 42, column: 13, scope: !104)
!107 = !DILocation(line: 44, column: 35, scope: !108)
!108 = distinct !DILexicalBlock(scope: !103, file: !1, line: 43, column: 9)
!109 = !DILocation(line: 45, column: 11, scope: !108)
!110 = !DILocation(line: 45, column: 18, scope: !108)
!111 = !DILocation(line: 46, column: 24, scope: !108)
!112 = !DILocation(line: 46, column: 11, scope: !108)
!113 = !DILocation(line: 47, column: 9, scope: !108)
!114 = !DILocation(line: 49, column: 7, scope: !104)
!115 = !DILocation(line: 52, column: 3, scope: !91)
!116 = !DILocation(line: 34, column: 21, scope: !86)
!117 = !DILabel(scope: !9, name: "goodB2G2_label_", file: !1, line: 54)
!118 = !DILocation(line: 54, column: 3, scope: !9)
!119 = !DILocation(line: 59, column: 1, scope: !9)
