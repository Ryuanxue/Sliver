; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_13161CWE606_Unchecked_Loop_Condition__char_console_13226_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_13161CWE606_Unchecked_Loop_Condition__char_console_13226_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@GLOBAL_CONST_FIVE = external dso_local global i32, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_13161CWE606_Unchecked_Loop_Condition__char_console_13226_1(i8* %_goodB2G2_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G2_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G2_dataLen_0 = alloca i64, align 8
  %_goodB2G2_i_0 = alloca i32, align 4
  %_goodB2G2_n_0 = alloca i32, align 4
  %_goodB2G2_intVariable_0 = alloca i32, align 4
  %_goodG2B1_data_0 = alloca i8*, align 8
  %_goodG2B1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B1_i_0 = alloca i32, align 4
  %_goodG2B1_n_0 = alloca i32, align 4
  %_goodG2B1_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G2_data_0, i8** %_goodB2G2_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G2_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G2_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G2_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G2_data_0.addr, align 8, !dbg !28
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !29
  %cmp = icmp eq i32 %1, 5, !dbg !31
  br i1 %cmp, label %if.then, label %if.end21, !dbg !32

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !33, metadata !DIExpression()), !dbg !39
  %2 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !40
  %call = call i64 @strlen(i8* %2) #6, !dbg !41
  store i64 %call, i64* %_goodB2G2_dataLen_0, align 8, !dbg !39
  %3 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !42
  %sub = sub i64 100, %3, !dbg !44
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !45
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !46

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !47
  %5 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !50
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !51
  %6 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !52
  %sub3 = sub i64 100, %6, !dbg !53
  %conv = trunc i64 %sub3 to i32, !dbg !54
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !55
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !56
  %cmp5 = icmp ne i8* %call4, null, !dbg !57
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !58

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !59
  %call8 = call i64 @strlen(i8* %8) #6, !dbg !61
  store i64 %call8, i64* %_goodB2G2_dataLen_0, align 8, !dbg !62
  %9 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !63
  %cmp9 = icmp ugt i64 %9, 0, !dbg !65
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !66

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !67
  %11 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !68
  %sub11 = sub i64 %11, 1, !dbg !69
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !67
  %12 = load i8, i8* %arrayidx, align 1, !dbg !67
  %conv12 = sext i8 %12 to i32, !dbg !67
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !70
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !71

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !72
  %14 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !74
  %sub16 = sub i64 %14, 1, !dbg !75
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !72
  store i8 0, i8* %arrayidx17, align 1, !dbg !76
  br label %if.end, !dbg !77

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !78

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !79
  %15 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !81
  %16 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !82
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !81
  store i8 0, i8* %arrayidx18, align 1, !dbg !83
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !84

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !85

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !86
  %cmp22 = icmp eq i32 %17, 5, !dbg !88
  br i1 %cmp22, label %if.then24, label %if.end37, !dbg !89

if.then24:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_i_0, metadata !90, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_n_0, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_intVariable_0, metadata !96, metadata !DIExpression()), !dbg !97
  %18 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !98
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G2_n_0) #7, !dbg !100
  %cmp26 = icmp eq i32 %call25, 1, !dbg !101
  br i1 %cmp26, label %if.then28, label %if.end36, !dbg !102

if.then28:                                        ; preds = %if.then24
  %19 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !103
  %cmp29 = icmp slt i32 %19, 10000, !dbg !106
  br i1 %cmp29, label %if.then31, label %if.end35, !dbg !107

if.then31:                                        ; preds = %if.then28
  store i32 0, i32* %_goodB2G2_intVariable_0, align 4, !dbg !108
  store i32 0, i32* %_goodB2G2_i_0, align 4, !dbg !110
  br label %for.cond, !dbg !112

for.cond:                                         ; preds = %for.inc, %if.then31
  %20 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !113
  %21 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !115
  %cmp32 = icmp slt i32 %20, %21, !dbg !116
  br i1 %cmp32, label %for.body, label %for.end, !dbg !117

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !118
  %inc = add nsw i32 %22, 1, !dbg !118
  store i32 %inc, i32* %_goodB2G2_intVariable_0, align 4, !dbg !118
  br label %for.inc, !dbg !120

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !121
  %inc34 = add nsw i32 %23, 1, !dbg !121
  store i32 %inc34, i32* %_goodB2G2_i_0, align 4, !dbg !121
  br label %for.cond, !dbg !122, !llvm.loop !123

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !126
  call void @printIntLine(i32 %24), !dbg !127
  br label %if.end35, !dbg !128

if.end35:                                         ; preds = %for.end, %if.then28
  br label %if.end36, !dbg !129

if.end36:                                         ; preds = %if.end35, %if.then24
  br label %if.end37, !dbg !130

if.end37:                                         ; preds = %if.end36, %if.end21
  br label %goodB2G2_label_, !dbg !131

goodB2G2_label_:                                  ; preds = %if.end37
  call void @llvm.dbg.label(metadata !132), !dbg !133
  call void @llvm.dbg.declare(metadata i8** %_goodG2B1_data_0, metadata !134, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B1_dataBuffer_0, metadata !137, metadata !DIExpression()), !dbg !138
  %25 = bitcast [100 x i8]* %_goodG2B1_dataBuffer_0 to i8*, !dbg !138
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 100, i1 false), !dbg !138
  %arraydecay38 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B1_dataBuffer_0, i64 0, i64 0, !dbg !139
  store i8* %arraydecay38, i8** %_goodG2B1_data_0, align 8, !dbg !140
  %26 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !141
  %cmp39 = icmp ne i32 %26, 5, !dbg !143
  br i1 %cmp39, label %if.then41, label %if.else42, !dbg !144

if.then41:                                        ; preds = %goodB2G2_label_
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !145
  br label %if.end44, !dbg !147

if.else42:                                        ; preds = %goodB2G2_label_
  %27 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !148
  %call43 = call i8* @strcpy(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !150
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %if.then41
  %28 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !151
  %cmp45 = icmp eq i32 %28, 5, !dbg !153
  br i1 %cmp45, label %if.then47, label %if.end53, !dbg !154

if.then47:                                        ; preds = %if.end44
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !155, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_n_0, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_intVariable_0, metadata !161, metadata !DIExpression()), !dbg !162
  %29 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !163
  %call48 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B1_n_0) #7, !dbg !165
  %cmp49 = icmp eq i32 %call48, 1, !dbg !166
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !167

if.then51:                                        ; preds = %if.then47
  store i32 0, i32* %_goodG2B1_intVariable_0, align 4, !dbg !168
  %30 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !170
  %31 = load i32, i32* %_goodG2B1_n_0, align 4, !dbg !171
  call void %30(i32 %31), !dbg !170
  %32 = load i32, i32* %_goodG2B1_intVariable_0, align 4, !dbg !172
  call void @printIntLine(i32 %32), !dbg !173
  br label %if.end52, !dbg !174

if.end52:                                         ; preds = %if.then51, %if.then47
  br label %if.end53, !dbg !175

if.end53:                                         ; preds = %if.end52, %if.end44
  br label %goodG2B1_label_, !dbg !176

goodG2B1_label_:                                  ; preds = %if.end53
  call void @llvm.dbg.label(metadata !177), !dbg !178
  br label %CWE606_Unchecked_Loop_Condition__char_console_13_good_label_, !dbg !179

CWE606_Unchecked_Loop_Condition__char_console_13_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !180), !dbg !181
  ret void, !dbg !182
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

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_13161CWE606_Unchecked_Loop_Condition__char_console_13226_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_990/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_13161CWE606_Unchecked_Loop_Condition__char_console_13226_1", scope: !1, file: !1, line: 4, type: !10, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!21 = !DILocalVariable(name: "_goodB2G2_dataBuffer_0", scope: !22, file: !1, line: 7, type: !23)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 6, column: 3)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 7, column: 10, scope: !22)
!27 = !DILocation(line: 8, column: 24, scope: !22)
!28 = !DILocation(line: 8, column: 22, scope: !22)
!29 = !DILocation(line: 9, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !22, file: !1, line: 9, column: 9)
!31 = !DILocation(line: 9, column: 27, scope: !30)
!32 = !DILocation(line: 9, column: 9, scope: !22)
!33 = !DILocalVariable(name: "_goodB2G2_dataLen_0", scope: !34, file: !1, line: 12, type: !36)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 11, column: 7)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 10, column: 5)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 12, column: 16, scope: !34)
!40 = !DILocation(line: 12, column: 45, scope: !34)
!41 = !DILocation(line: 12, column: 38, scope: !34)
!42 = !DILocation(line: 13, column: 20, scope: !43)
!43 = distinct !DILexicalBlock(scope: !34, file: !1, line: 13, column: 13)
!44 = !DILocation(line: 13, column: 18, scope: !43)
!45 = !DILocation(line: 13, column: 41, scope: !43)
!46 = !DILocation(line: 13, column: 13, scope: !34)
!47 = !DILocation(line: 15, column: 21, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 15, column: 15)
!49 = distinct !DILexicalBlock(scope: !43, file: !1, line: 14, column: 9)
!50 = !DILocation(line: 15, column: 40, scope: !48)
!51 = !DILocation(line: 15, column: 38, scope: !48)
!52 = !DILocation(line: 15, column: 74, scope: !48)
!53 = !DILocation(line: 15, column: 72, scope: !48)
!54 = !DILocation(line: 15, column: 61, scope: !48)
!55 = !DILocation(line: 15, column: 96, scope: !48)
!56 = !DILocation(line: 15, column: 15, scope: !48)
!57 = !DILocation(line: 15, column: 103, scope: !48)
!58 = !DILocation(line: 15, column: 15, scope: !49)
!59 = !DILocation(line: 17, column: 42, scope: !60)
!60 = distinct !DILexicalBlock(scope: !48, file: !1, line: 16, column: 11)
!61 = !DILocation(line: 17, column: 35, scope: !60)
!62 = !DILocation(line: 17, column: 33, scope: !60)
!63 = !DILocation(line: 18, column: 18, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 18, column: 17)
!65 = !DILocation(line: 18, column: 38, scope: !64)
!66 = !DILocation(line: 18, column: 43, scope: !64)
!67 = !DILocation(line: 18, column: 47, scope: !64)
!68 = !DILocation(line: 18, column: 64, scope: !64)
!69 = !DILocation(line: 18, column: 84, scope: !64)
!70 = !DILocation(line: 18, column: 89, scope: !64)
!71 = !DILocation(line: 18, column: 17, scope: !60)
!72 = !DILocation(line: 20, column: 15, scope: !73)
!73 = distinct !DILexicalBlock(scope: !64, file: !1, line: 19, column: 13)
!74 = !DILocation(line: 20, column: 32, scope: !73)
!75 = !DILocation(line: 20, column: 52, scope: !73)
!76 = !DILocation(line: 20, column: 57, scope: !73)
!77 = !DILocation(line: 21, column: 13, scope: !73)
!78 = !DILocation(line: 23, column: 11, scope: !60)
!79 = !DILocation(line: 26, column: 13, scope: !80)
!80 = distinct !DILexicalBlock(scope: !48, file: !1, line: 25, column: 11)
!81 = !DILocation(line: 27, column: 13, scope: !80)
!82 = !DILocation(line: 27, column: 30, scope: !80)
!83 = !DILocation(line: 27, column: 51, scope: !80)
!84 = !DILocation(line: 30, column: 9, scope: !49)
!85 = !DILocation(line: 33, column: 5, scope: !35)
!86 = !DILocation(line: 35, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !22, file: !1, line: 35, column: 9)
!88 = !DILocation(line: 35, column: 27, scope: !87)
!89 = !DILocation(line: 35, column: 9, scope: !22)
!90 = !DILocalVariable(name: "_goodB2G2_i_0", scope: !91, file: !1, line: 38, type: !4)
!91 = distinct !DILexicalBlock(scope: !92, file: !1, line: 37, column: 7)
!92 = distinct !DILexicalBlock(scope: !87, file: !1, line: 36, column: 5)
!93 = !DILocation(line: 38, column: 13, scope: !91)
!94 = !DILocalVariable(name: "_goodB2G2_n_0", scope: !91, file: !1, line: 39, type: !4)
!95 = !DILocation(line: 39, column: 13, scope: !91)
!96 = !DILocalVariable(name: "_goodB2G2_intVariable_0", scope: !91, file: !1, line: 40, type: !4)
!97 = !DILocation(line: 40, column: 13, scope: !91)
!98 = !DILocation(line: 41, column: 20, scope: !99)
!99 = distinct !DILexicalBlock(scope: !91, file: !1, line: 41, column: 13)
!100 = !DILocation(line: 41, column: 13, scope: !99)
!101 = !DILocation(line: 41, column: 60, scope: !99)
!102 = !DILocation(line: 41, column: 13, scope: !91)
!103 = !DILocation(line: 43, column: 15, scope: !104)
!104 = distinct !DILexicalBlock(scope: !105, file: !1, line: 43, column: 15)
!105 = distinct !DILexicalBlock(scope: !99, file: !1, line: 42, column: 9)
!106 = !DILocation(line: 43, column: 29, scope: !104)
!107 = !DILocation(line: 43, column: 15, scope: !105)
!108 = !DILocation(line: 45, column: 37, scope: !109)
!109 = distinct !DILexicalBlock(scope: !104, file: !1, line: 44, column: 11)
!110 = !DILocation(line: 46, column: 32, scope: !111)
!111 = distinct !DILexicalBlock(scope: !109, file: !1, line: 46, column: 13)
!112 = !DILocation(line: 46, column: 18, scope: !111)
!113 = !DILocation(line: 46, column: 37, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !1, line: 46, column: 13)
!115 = !DILocation(line: 46, column: 53, scope: !114)
!116 = !DILocation(line: 46, column: 51, scope: !114)
!117 = !DILocation(line: 46, column: 13, scope: !111)
!118 = !DILocation(line: 48, column: 38, scope: !119)
!119 = distinct !DILexicalBlock(scope: !114, file: !1, line: 47, column: 13)
!120 = !DILocation(line: 49, column: 13, scope: !119)
!121 = !DILocation(line: 46, column: 81, scope: !114)
!122 = !DILocation(line: 46, column: 13, scope: !114)
!123 = distinct !{!123, !117, !124, !125}
!124 = !DILocation(line: 49, column: 13, scope: !111)
!125 = !{!"llvm.loop.mustprogress"}
!126 = !DILocation(line: 51, column: 26, scope: !109)
!127 = !DILocation(line: 51, column: 13, scope: !109)
!128 = !DILocation(line: 52, column: 11, scope: !109)
!129 = !DILocation(line: 54, column: 9, scope: !105)
!130 = !DILocation(line: 57, column: 5, scope: !92)
!131 = !DILocation(line: 35, column: 30, scope: !87)
!132 = !DILabel(scope: !22, name: "goodB2G2_label_", file: !1, line: 59)
!133 = !DILocation(line: 59, column: 5, scope: !22)
!134 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !135, file: !1, line: 66, type: !12)
!135 = distinct !DILexicalBlock(scope: !9, file: !1, line: 65, column: 3)
!136 = !DILocation(line: 66, column: 11, scope: !135)
!137 = !DILocalVariable(name: "_goodG2B1_dataBuffer_0", scope: !135, file: !1, line: 67, type: !23)
!138 = !DILocation(line: 67, column: 10, scope: !135)
!139 = !DILocation(line: 68, column: 24, scope: !135)
!140 = !DILocation(line: 68, column: 22, scope: !135)
!141 = !DILocation(line: 69, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !135, file: !1, line: 69, column: 9)
!143 = !DILocation(line: 69, column: 27, scope: !142)
!144 = !DILocation(line: 69, column: 9, scope: !135)
!145 = !DILocation(line: 71, column: 7, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !1, line: 70, column: 5)
!147 = !DILocation(line: 72, column: 5, scope: !146)
!148 = !DILocation(line: 75, column: 14, scope: !149)
!149 = distinct !DILexicalBlock(scope: !142, file: !1, line: 74, column: 5)
!150 = !DILocation(line: 75, column: 7, scope: !149)
!151 = !DILocation(line: 78, column: 9, scope: !152)
!152 = distinct !DILexicalBlock(scope: !135, file: !1, line: 78, column: 9)
!153 = !DILocation(line: 78, column: 27, scope: !152)
!154 = !DILocation(line: 78, column: 9, scope: !135)
!155 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !156, file: !1, line: 81, type: !4)
!156 = distinct !DILexicalBlock(scope: !157, file: !1, line: 80, column: 7)
!157 = distinct !DILexicalBlock(scope: !152, file: !1, line: 79, column: 5)
!158 = !DILocation(line: 81, column: 13, scope: !156)
!159 = !DILocalVariable(name: "_goodG2B1_n_0", scope: !156, file: !1, line: 82, type: !4)
!160 = !DILocation(line: 82, column: 13, scope: !156)
!161 = !DILocalVariable(name: "_goodG2B1_intVariable_0", scope: !156, file: !1, line: 83, type: !4)
!162 = !DILocation(line: 83, column: 13, scope: !156)
!163 = !DILocation(line: 84, column: 20, scope: !164)
!164 = distinct !DILexicalBlock(scope: !156, file: !1, line: 84, column: 13)
!165 = !DILocation(line: 84, column: 13, scope: !164)
!166 = !DILocation(line: 84, column: 60, scope: !164)
!167 = !DILocation(line: 84, column: 13, scope: !156)
!168 = !DILocation(line: 86, column: 35, scope: !169)
!169 = distinct !DILexicalBlock(scope: !164, file: !1, line: 85, column: 9)
!170 = !DILocation(line: 87, column: 11, scope: !169)
!171 = !DILocation(line: 87, column: 18, scope: !169)
!172 = !DILocation(line: 88, column: 24, scope: !169)
!173 = !DILocation(line: 88, column: 11, scope: !169)
!174 = !DILocation(line: 89, column: 9, scope: !169)
!175 = !DILocation(line: 92, column: 5, scope: !157)
!176 = !DILocation(line: 78, column: 30, scope: !152)
!177 = !DILabel(scope: !135, name: "goodG2B1_label_", file: !1, line: 94)
!178 = !DILocation(line: 94, column: 5, scope: !135)
!179 = !DILocation(line: 99, column: 3, scope: !135)
!180 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_console_13_good_label_", file: !1, line: 100)
!181 = !DILocation(line: 100, column: 3, scope: !9)
!182 = !DILocation(line: 105, column: 1, scope: !9)
