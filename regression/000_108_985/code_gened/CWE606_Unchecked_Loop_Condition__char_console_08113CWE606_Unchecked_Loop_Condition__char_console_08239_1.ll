; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_08113CWE606_Unchecked_Loop_Condition__char_console_08239_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_08113CWE606_Unchecked_Loop_Condition__char_console_08239_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_08113CWE606_Unchecked_Loop_Condition__char_console_08239_1(i8* %_goodB2G1_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G1_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G1_dataLen_0 = alloca i64, align 8
  %_goodB2G1_i_0 = alloca i32, align 4
  %_goodB2G1_n_0 = alloca i32, align 4
  %_goodB2G1_intVariable_0 = alloca i32, align 4
  %_goodG2B1_data_0 = alloca i8*, align 8
  %_goodG2B1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B1_i_0 = alloca i32, align 4
  %_goodG2B1_n_0 = alloca i32, align 4
  %_goodG2B1_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G1_data_0, i8** %_goodB2G1_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G1_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G1_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G1_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G1_data_0.addr, align 8, !dbg !28
  %call = call i32 (...) @staticReturnsTrue(), !dbg !29
  %tobool = icmp ne i32 %call, 0, !dbg !29
  br i1 %tobool, label %if.then, label %if.end21, !dbg !31

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !38
  %1 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !39
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !40
  store i64 %call1, i64* %_goodB2G1_dataLen_0, align 8, !dbg !38
  %2 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !41
  %sub = sub i64 100, %2, !dbg !43
  %cmp = icmp ugt i64 %sub, 1, !dbg !44
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !45

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !46
  %4 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !50
  %5 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !51
  %sub3 = sub i64 100, %5, !dbg !52
  %conv = trunc i64 %sub3 to i32, !dbg !53
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !54
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !55
  %cmp5 = icmp ne i8* %call4, null, !dbg !56
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !57

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !58
  %call8 = call i64 @strlen(i8* %7) #6, !dbg !60
  store i64 %call8, i64* %_goodB2G1_dataLen_0, align 8, !dbg !61
  %8 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !62
  %cmp9 = icmp ugt i64 %8, 0, !dbg !64
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !65

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !66
  %10 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !67
  %sub11 = sub i64 %10, 1, !dbg !68
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !66
  %11 = load i8, i8* %arrayidx, align 1, !dbg !66
  %conv12 = sext i8 %11 to i32, !dbg !66
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !69
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !70

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !71
  %13 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !73
  %sub16 = sub i64 %13, 1, !dbg !74
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !71
  store i8 0, i8* %arrayidx17, align 1, !dbg !75
  br label %if.end, !dbg !76

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !77

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !78
  %14 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !80
  %15 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !81
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !80
  store i8 0, i8* %arrayidx18, align 1, !dbg !82
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !83

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !84

if.end21:                                         ; preds = %if.end20, %entry
  %call22 = call i32 (...) @staticReturnsFalse(), !dbg !85
  %tobool23 = icmp ne i32 %call22, 0, !dbg !85
  br i1 %tobool23, label %if.then24, label %if.else25, !dbg !87

if.then24:                                        ; preds = %if.end21
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !88
  br label %if.end38, !dbg !90

if.else25:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !91, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_n_0, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_intVariable_0, metadata !97, metadata !DIExpression()), !dbg !98
  %16 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !99
  %call26 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %_goodB2G1_n_0) #7, !dbg !101
  %cmp27 = icmp eq i32 %call26, 1, !dbg !102
  br i1 %cmp27, label %if.then29, label %if.end37, !dbg !103

if.then29:                                        ; preds = %if.else25
  %17 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !104
  %cmp30 = icmp slt i32 %17, 10000, !dbg !107
  br i1 %cmp30, label %if.then32, label %if.end36, !dbg !108

if.then32:                                        ; preds = %if.then29
  store i32 0, i32* %_goodB2G1_intVariable_0, align 4, !dbg !109
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !111
  br label %for.cond, !dbg !113

for.cond:                                         ; preds = %for.inc, %if.then32
  %18 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !114
  %19 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !116
  %cmp33 = icmp slt i32 %18, %19, !dbg !117
  br i1 %cmp33, label %for.body, label %for.end, !dbg !118

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !119
  %inc = add nsw i32 %20, 1, !dbg !119
  store i32 %inc, i32* %_goodB2G1_intVariable_0, align 4, !dbg !119
  br label %for.inc, !dbg !121

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !122
  %inc35 = add nsw i32 %21, 1, !dbg !122
  store i32 %inc35, i32* %_goodB2G1_i_0, align 4, !dbg !122
  br label %for.cond, !dbg !123, !llvm.loop !124

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !127
  call void @printIntLine(i32 %22), !dbg !128
  br label %if.end36, !dbg !129

if.end36:                                         ; preds = %for.end, %if.then29
  br label %if.end37, !dbg !130

if.end37:                                         ; preds = %if.end36, %if.else25
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then24
  br label %goodB2G1_label_, !dbg !131

goodB2G1_label_:                                  ; preds = %if.end38
  call void @llvm.dbg.label(metadata !132), !dbg !133
  call void (...) @goodB2G2(), !dbg !134
  call void @llvm.dbg.declare(metadata i8** %_goodG2B1_data_0, metadata !135, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B1_dataBuffer_0, metadata !138, metadata !DIExpression()), !dbg !139
  %23 = bitcast [100 x i8]* %_goodG2B1_dataBuffer_0 to i8*, !dbg !139
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 100, i1 false), !dbg !139
  %arraydecay39 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B1_dataBuffer_0, i64 0, i64 0, !dbg !140
  store i8* %arraydecay39, i8** %_goodG2B1_data_0, align 8, !dbg !141
  %call40 = call i32 (...) @staticReturnsFalse(), !dbg !142
  %tobool41 = icmp ne i32 %call40, 0, !dbg !142
  br i1 %tobool41, label %if.then42, label %if.else43, !dbg !144

if.then42:                                        ; preds = %goodB2G1_label_
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !145
  br label %if.end45, !dbg !147

if.else43:                                        ; preds = %goodB2G1_label_
  %24 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !148
  %call44 = call i8* @strcpy(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !150
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then42
  %call46 = call i32 (...) @staticReturnsTrue(), !dbg !151
  %tobool47 = icmp ne i32 %call46, 0, !dbg !151
  br i1 %tobool47, label %if.then48, label %if.end54, !dbg !153

if.then48:                                        ; preds = %if.end45
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !154, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_n_0, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_intVariable_0, metadata !160, metadata !DIExpression()), !dbg !161
  %25 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !162
  %call49 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %_goodG2B1_n_0) #7, !dbg !164
  %cmp50 = icmp eq i32 %call49, 1, !dbg !165
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !166

if.then52:                                        ; preds = %if.then48
  store i32 0, i32* %_goodG2B1_intVariable_0, align 4, !dbg !167
  %26 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !169
  %27 = load i32, i32* %_goodG2B1_n_0, align 4, !dbg !170
  call void %26(i32 %27), !dbg !169
  %28 = load i32, i32* %_goodG2B1_intVariable_0, align 4, !dbg !171
  call void @printIntLine(i32 %28), !dbg !172
  br label %if.end53, !dbg !173

if.end53:                                         ; preds = %if.then52, %if.then48
  br label %if.end54, !dbg !174

if.end54:                                         ; preds = %if.end53, %if.end45
  br label %goodG2B1_label_, !dbg !175

goodG2B1_label_:                                  ; preds = %if.end54
  call void @llvm.dbg.label(metadata !176), !dbg !177
  br label %CWE606_Unchecked_Loop_Condition__char_console_08_good_label_, !dbg !178

CWE606_Unchecked_Loop_Condition__char_console_08_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !179), !dbg !180
  ret void, !dbg !181
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @staticReturnsTrue(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

declare dso_local i32 @staticReturnsFalse(...) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @goodB2G2(...) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_08113CWE606_Unchecked_Loop_Condition__char_console_08239_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_985/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_08113CWE606_Unchecked_Loop_Condition__char_console_08239_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G1_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 117, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 142, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !22, file: !1, line: 6, type: !23)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 5, column: 3)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 6, column: 10, scope: !22)
!27 = !DILocation(line: 7, column: 24, scope: !22)
!28 = !DILocation(line: 7, column: 22, scope: !22)
!29 = !DILocation(line: 8, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !22, file: !1, line: 8, column: 9)
!31 = !DILocation(line: 8, column: 9, scope: !22)
!32 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !33, file: !1, line: 11, type: !35)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 10, column: 7)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 9, column: 5)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 11, column: 16, scope: !33)
!39 = !DILocation(line: 11, column: 45, scope: !33)
!40 = !DILocation(line: 11, column: 38, scope: !33)
!41 = !DILocation(line: 12, column: 20, scope: !42)
!42 = distinct !DILexicalBlock(scope: !33, file: !1, line: 12, column: 13)
!43 = !DILocation(line: 12, column: 18, scope: !42)
!44 = !DILocation(line: 12, column: 41, scope: !42)
!45 = !DILocation(line: 12, column: 13, scope: !33)
!46 = !DILocation(line: 14, column: 21, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 14, column: 15)
!48 = distinct !DILexicalBlock(scope: !42, file: !1, line: 13, column: 9)
!49 = !DILocation(line: 14, column: 40, scope: !47)
!50 = !DILocation(line: 14, column: 38, scope: !47)
!51 = !DILocation(line: 14, column: 74, scope: !47)
!52 = !DILocation(line: 14, column: 72, scope: !47)
!53 = !DILocation(line: 14, column: 61, scope: !47)
!54 = !DILocation(line: 14, column: 96, scope: !47)
!55 = !DILocation(line: 14, column: 15, scope: !47)
!56 = !DILocation(line: 14, column: 103, scope: !47)
!57 = !DILocation(line: 14, column: 15, scope: !48)
!58 = !DILocation(line: 16, column: 42, scope: !59)
!59 = distinct !DILexicalBlock(scope: !47, file: !1, line: 15, column: 11)
!60 = !DILocation(line: 16, column: 35, scope: !59)
!61 = !DILocation(line: 16, column: 33, scope: !59)
!62 = !DILocation(line: 17, column: 18, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 17, column: 17)
!64 = !DILocation(line: 17, column: 38, scope: !63)
!65 = !DILocation(line: 17, column: 43, scope: !63)
!66 = !DILocation(line: 17, column: 47, scope: !63)
!67 = !DILocation(line: 17, column: 64, scope: !63)
!68 = !DILocation(line: 17, column: 84, scope: !63)
!69 = !DILocation(line: 17, column: 89, scope: !63)
!70 = !DILocation(line: 17, column: 17, scope: !59)
!71 = !DILocation(line: 19, column: 15, scope: !72)
!72 = distinct !DILexicalBlock(scope: !63, file: !1, line: 18, column: 13)
!73 = !DILocation(line: 19, column: 32, scope: !72)
!74 = !DILocation(line: 19, column: 52, scope: !72)
!75 = !DILocation(line: 19, column: 57, scope: !72)
!76 = !DILocation(line: 20, column: 13, scope: !72)
!77 = !DILocation(line: 22, column: 11, scope: !59)
!78 = !DILocation(line: 25, column: 13, scope: !79)
!79 = distinct !DILexicalBlock(scope: !47, file: !1, line: 24, column: 11)
!80 = !DILocation(line: 26, column: 13, scope: !79)
!81 = !DILocation(line: 26, column: 30, scope: !79)
!82 = !DILocation(line: 26, column: 51, scope: !79)
!83 = !DILocation(line: 29, column: 9, scope: !48)
!84 = !DILocation(line: 32, column: 5, scope: !34)
!85 = !DILocation(line: 34, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !22, file: !1, line: 34, column: 9)
!87 = !DILocation(line: 34, column: 9, scope: !22)
!88 = !DILocation(line: 36, column: 7, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 35, column: 5)
!90 = !DILocation(line: 37, column: 5, scope: !89)
!91 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !92, file: !1, line: 41, type: !4)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 40, column: 7)
!93 = distinct !DILexicalBlock(scope: !86, file: !1, line: 39, column: 5)
!94 = !DILocation(line: 41, column: 13, scope: !92)
!95 = !DILocalVariable(name: "_goodB2G1_n_0", scope: !92, file: !1, line: 42, type: !4)
!96 = !DILocation(line: 42, column: 13, scope: !92)
!97 = !DILocalVariable(name: "_goodB2G1_intVariable_0", scope: !92, file: !1, line: 43, type: !4)
!98 = !DILocation(line: 43, column: 13, scope: !92)
!99 = !DILocation(line: 44, column: 20, scope: !100)
!100 = distinct !DILexicalBlock(scope: !92, file: !1, line: 44, column: 13)
!101 = !DILocation(line: 44, column: 13, scope: !100)
!102 = !DILocation(line: 44, column: 60, scope: !100)
!103 = !DILocation(line: 44, column: 13, scope: !92)
!104 = !DILocation(line: 46, column: 15, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 46, column: 15)
!106 = distinct !DILexicalBlock(scope: !100, file: !1, line: 45, column: 9)
!107 = !DILocation(line: 46, column: 29, scope: !105)
!108 = !DILocation(line: 46, column: 15, scope: !106)
!109 = !DILocation(line: 48, column: 37, scope: !110)
!110 = distinct !DILexicalBlock(scope: !105, file: !1, line: 47, column: 11)
!111 = !DILocation(line: 49, column: 32, scope: !112)
!112 = distinct !DILexicalBlock(scope: !110, file: !1, line: 49, column: 13)
!113 = !DILocation(line: 49, column: 18, scope: !112)
!114 = !DILocation(line: 49, column: 37, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 49, column: 13)
!116 = !DILocation(line: 49, column: 53, scope: !115)
!117 = !DILocation(line: 49, column: 51, scope: !115)
!118 = !DILocation(line: 49, column: 13, scope: !112)
!119 = !DILocation(line: 51, column: 38, scope: !120)
!120 = distinct !DILexicalBlock(scope: !115, file: !1, line: 50, column: 13)
!121 = !DILocation(line: 52, column: 13, scope: !120)
!122 = !DILocation(line: 49, column: 81, scope: !115)
!123 = !DILocation(line: 49, column: 13, scope: !115)
!124 = distinct !{!124, !118, !125, !126}
!125 = !DILocation(line: 52, column: 13, scope: !112)
!126 = !{!"llvm.loop.mustprogress"}
!127 = !DILocation(line: 54, column: 26, scope: !110)
!128 = !DILocation(line: 54, column: 13, scope: !110)
!129 = !DILocation(line: 55, column: 11, scope: !110)
!130 = !DILocation(line: 57, column: 9, scope: !106)
!131 = !DILocation(line: 34, column: 28, scope: !86)
!132 = !DILabel(scope: !22, name: "goodB2G1_label_", file: !1, line: 62)
!133 = !DILocation(line: 62, column: 5, scope: !22)
!134 = !DILocation(line: 68, column: 3, scope: !9)
!135 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !136, file: !1, line: 70, type: !12)
!136 = distinct !DILexicalBlock(scope: !9, file: !1, line: 69, column: 3)
!137 = !DILocation(line: 70, column: 11, scope: !136)
!138 = !DILocalVariable(name: "_goodG2B1_dataBuffer_0", scope: !136, file: !1, line: 71, type: !23)
!139 = !DILocation(line: 71, column: 10, scope: !136)
!140 = !DILocation(line: 72, column: 24, scope: !136)
!141 = !DILocation(line: 72, column: 22, scope: !136)
!142 = !DILocation(line: 73, column: 9, scope: !143)
!143 = distinct !DILexicalBlock(scope: !136, file: !1, line: 73, column: 9)
!144 = !DILocation(line: 73, column: 9, scope: !136)
!145 = !DILocation(line: 75, column: 7, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !1, line: 74, column: 5)
!147 = !DILocation(line: 76, column: 5, scope: !146)
!148 = !DILocation(line: 79, column: 14, scope: !149)
!149 = distinct !DILexicalBlock(scope: !143, file: !1, line: 78, column: 5)
!150 = !DILocation(line: 79, column: 7, scope: !149)
!151 = !DILocation(line: 82, column: 9, scope: !152)
!152 = distinct !DILexicalBlock(scope: !136, file: !1, line: 82, column: 9)
!153 = !DILocation(line: 82, column: 9, scope: !136)
!154 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !155, file: !1, line: 85, type: !4)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 84, column: 7)
!156 = distinct !DILexicalBlock(scope: !152, file: !1, line: 83, column: 5)
!157 = !DILocation(line: 85, column: 13, scope: !155)
!158 = !DILocalVariable(name: "_goodG2B1_n_0", scope: !155, file: !1, line: 86, type: !4)
!159 = !DILocation(line: 86, column: 13, scope: !155)
!160 = !DILocalVariable(name: "_goodG2B1_intVariable_0", scope: !155, file: !1, line: 87, type: !4)
!161 = !DILocation(line: 87, column: 13, scope: !155)
!162 = !DILocation(line: 88, column: 20, scope: !163)
!163 = distinct !DILexicalBlock(scope: !155, file: !1, line: 88, column: 13)
!164 = !DILocation(line: 88, column: 13, scope: !163)
!165 = !DILocation(line: 88, column: 60, scope: !163)
!166 = !DILocation(line: 88, column: 13, scope: !155)
!167 = !DILocation(line: 90, column: 35, scope: !168)
!168 = distinct !DILexicalBlock(scope: !163, file: !1, line: 89, column: 9)
!169 = !DILocation(line: 91, column: 11, scope: !168)
!170 = !DILocation(line: 91, column: 18, scope: !168)
!171 = !DILocation(line: 92, column: 24, scope: !168)
!172 = !DILocation(line: 92, column: 11, scope: !168)
!173 = !DILocation(line: 93, column: 9, scope: !168)
!174 = !DILocation(line: 96, column: 5, scope: !156)
!175 = !DILocation(line: 82, column: 27, scope: !152)
!176 = !DILabel(scope: !136, name: "goodG2B1_label_", file: !1, line: 98)
!177 = !DILocation(line: 98, column: 5, scope: !136)
!178 = !DILocation(line: 103, column: 3, scope: !136)
!179 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_console_08_good_label_", file: !1, line: 104)
!180 = !DILocation(line: 104, column: 3, scope: !9)
!181 = !DILocation(line: 109, column: 1, scope: !9)
