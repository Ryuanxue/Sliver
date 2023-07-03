; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_11161CWE606_Unchecked_Loop_Condition__char_console_11256_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_11161CWE606_Unchecked_Loop_Condition__char_console_11256_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_11161CWE606_Unchecked_Loop_Condition__char_console_11256_1(i8* %_goodB2G2_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G2_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G2_dataLen_0 = alloca i64, align 8
  %_goodB2G2_i_0 = alloca i32, align 4
  %_goodB2G2_n_0 = alloca i32, align 4
  %_goodB2G2_intVariable_0 = alloca i32, align 4
  %_goodG2B2_data_0 = alloca i8*, align 8
  %_goodG2B2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B2_i_0 = alloca i32, align 4
  %_goodG2B2_n_0 = alloca i32, align 4
  %_goodG2B2_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G2_data_0, i8** %_goodB2G2_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G2_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G2_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G2_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G2_data_0.addr, align 8, !dbg !28
  %call = call i32 (...) @globalReturnsTrue(), !dbg !29
  %tobool = icmp ne i32 %call, 0, !dbg !29
  br i1 %tobool, label %if.then, label %if.end21, !dbg !31

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !38
  %1 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !39
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !40
  store i64 %call1, i64* %_goodB2G2_dataLen_0, align 8, !dbg !38
  %2 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !41
  %sub = sub i64 100, %2, !dbg !43
  %cmp = icmp ugt i64 %sub, 1, !dbg !44
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !45

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !46
  %4 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !50
  %5 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !51
  %sub3 = sub i64 100, %5, !dbg !52
  %conv = trunc i64 %sub3 to i32, !dbg !53
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !54
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !55
  %cmp5 = icmp ne i8* %call4, null, !dbg !56
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !57

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !58
  %call8 = call i64 @strlen(i8* %7) #6, !dbg !60
  store i64 %call8, i64* %_goodB2G2_dataLen_0, align 8, !dbg !61
  %8 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !62
  %cmp9 = icmp ugt i64 %8, 0, !dbg !64
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !65

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !66
  %10 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !67
  %sub11 = sub i64 %10, 1, !dbg !68
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !66
  %11 = load i8, i8* %arrayidx, align 1, !dbg !66
  %conv12 = sext i8 %11 to i32, !dbg !66
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !69
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !70

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !71
  %13 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !73
  %sub16 = sub i64 %13, 1, !dbg !74
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !71
  store i8 0, i8* %arrayidx17, align 1, !dbg !75
  br label %if.end, !dbg !76

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !77

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !78
  %14 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !80
  %15 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !81
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !80
  store i8 0, i8* %arrayidx18, align 1, !dbg !82
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !83

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !84

if.end21:                                         ; preds = %if.end20, %entry
  %call22 = call i32 (...) @globalReturnsTrue(), !dbg !85
  %tobool23 = icmp ne i32 %call22, 0, !dbg !85
  br i1 %tobool23, label %if.then24, label %if.end37, !dbg !87

if.then24:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_i_0, metadata !88, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_n_0, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_intVariable_0, metadata !94, metadata !DIExpression()), !dbg !95
  %16 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !96
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G2_n_0) #7, !dbg !98
  %cmp26 = icmp eq i32 %call25, 1, !dbg !99
  br i1 %cmp26, label %if.then28, label %if.end36, !dbg !100

if.then28:                                        ; preds = %if.then24
  %17 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !101
  %cmp29 = icmp slt i32 %17, 10000, !dbg !104
  br i1 %cmp29, label %if.then31, label %if.end35, !dbg !105

if.then31:                                        ; preds = %if.then28
  store i32 0, i32* %_goodB2G2_intVariable_0, align 4, !dbg !106
  store i32 0, i32* %_goodB2G2_i_0, align 4, !dbg !108
  br label %for.cond, !dbg !110

for.cond:                                         ; preds = %for.inc, %if.then31
  %18 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !111
  %19 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !113
  %cmp32 = icmp slt i32 %18, %19, !dbg !114
  br i1 %cmp32, label %for.body, label %for.end, !dbg !115

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !116
  %inc = add nsw i32 %20, 1, !dbg !116
  store i32 %inc, i32* %_goodB2G2_intVariable_0, align 4, !dbg !116
  br label %for.inc, !dbg !118

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !119
  %inc34 = add nsw i32 %21, 1, !dbg !119
  store i32 %inc34, i32* %_goodB2G2_i_0, align 4, !dbg !119
  br label %for.cond, !dbg !120, !llvm.loop !121

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !124
  call void @printIntLine(i32 %22), !dbg !125
  br label %if.end35, !dbg !126

if.end35:                                         ; preds = %for.end, %if.then28
  br label %if.end36, !dbg !127

if.end36:                                         ; preds = %if.end35, %if.then24
  br label %if.end37, !dbg !128

if.end37:                                         ; preds = %if.end36, %if.end21
  br label %goodB2G2_label_, !dbg !129

goodB2G2_label_:                                  ; preds = %if.end37
  call void @llvm.dbg.label(metadata !130), !dbg !131
  call void (...) @goodG2B1(), !dbg !132
  call void @llvm.dbg.declare(metadata i8** %_goodG2B2_data_0, metadata !133, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B2_dataBuffer_0, metadata !136, metadata !DIExpression()), !dbg !137
  %23 = bitcast [100 x i8]* %_goodG2B2_dataBuffer_0 to i8*, !dbg !137
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 100, i1 false), !dbg !137
  %arraydecay38 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B2_dataBuffer_0, i64 0, i64 0, !dbg !138
  store i8* %arraydecay38, i8** %_goodG2B2_data_0, align 8, !dbg !139
  %call39 = call i32 (...) @globalReturnsTrue(), !dbg !140
  %tobool40 = icmp ne i32 %call39, 0, !dbg !140
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !142

if.then41:                                        ; preds = %goodB2G2_label_
  %24 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !143
  %call42 = call i8* @strcpy(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !145
  br label %if.end43, !dbg !146

if.end43:                                         ; preds = %if.then41, %goodB2G2_label_
  %call44 = call i32 (...) @globalReturnsTrue(), !dbg !147
  %tobool45 = icmp ne i32 %call44, 0, !dbg !147
  br i1 %tobool45, label %if.then46, label %if.end52, !dbg !149

if.then46:                                        ; preds = %if.end43
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_i_0, metadata !150, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_n_0, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_intVariable_0, metadata !156, metadata !DIExpression()), !dbg !157
  %25 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !158
  %call47 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B2_n_0) #7, !dbg !160
  %cmp48 = icmp eq i32 %call47, 1, !dbg !161
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !162

if.then50:                                        ; preds = %if.then46
  store i32 0, i32* %_goodG2B2_intVariable_0, align 4, !dbg !163
  %26 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !165
  %27 = load i32, i32* %_goodG2B2_n_0, align 4, !dbg !166
  call void %26(i32 %27), !dbg !165
  %28 = load i32, i32* %_goodG2B2_intVariable_0, align 4, !dbg !167
  call void @printIntLine(i32 %28), !dbg !168
  br label %if.end51, !dbg !169

if.end51:                                         ; preds = %if.then50, %if.then46
  br label %if.end52, !dbg !170

if.end52:                                         ; preds = %if.end51, %if.end43
  br label %goodG2B2_label_, !dbg !171

goodG2B2_label_:                                  ; preds = %if.end52
  call void @llvm.dbg.label(metadata !172), !dbg !173
  br label %CWE606_Unchecked_Loop_Condition__char_console_11_good_label_, !dbg !174

CWE606_Unchecked_Loop_Condition__char_console_11_good_label_: ; preds = %goodG2B2_label_
  call void @llvm.dbg.label(metadata !175), !dbg !176
  ret void, !dbg !177
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @globalReturnsTrue(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @goodG2B1(...) #3

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_11161CWE606_Unchecked_Loop_Condition__char_console_11256_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_988/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_11161CWE606_Unchecked_Loop_Condition__char_console_11256_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G2_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 117, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 142, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G2_dataBuffer_0", scope: !22, file: !1, line: 6, type: !23)
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
!32 = !DILocalVariable(name: "_goodB2G2_dataLen_0", scope: !33, file: !1, line: 11, type: !35)
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
!88 = !DILocalVariable(name: "_goodB2G2_i_0", scope: !89, file: !1, line: 37, type: !4)
!89 = distinct !DILexicalBlock(scope: !90, file: !1, line: 36, column: 7)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 35, column: 5)
!91 = !DILocation(line: 37, column: 13, scope: !89)
!92 = !DILocalVariable(name: "_goodB2G2_n_0", scope: !89, file: !1, line: 38, type: !4)
!93 = !DILocation(line: 38, column: 13, scope: !89)
!94 = !DILocalVariable(name: "_goodB2G2_intVariable_0", scope: !89, file: !1, line: 39, type: !4)
!95 = !DILocation(line: 39, column: 13, scope: !89)
!96 = !DILocation(line: 40, column: 20, scope: !97)
!97 = distinct !DILexicalBlock(scope: !89, file: !1, line: 40, column: 13)
!98 = !DILocation(line: 40, column: 13, scope: !97)
!99 = !DILocation(line: 40, column: 60, scope: !97)
!100 = !DILocation(line: 40, column: 13, scope: !89)
!101 = !DILocation(line: 42, column: 15, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 42, column: 15)
!103 = distinct !DILexicalBlock(scope: !97, file: !1, line: 41, column: 9)
!104 = !DILocation(line: 42, column: 29, scope: !102)
!105 = !DILocation(line: 42, column: 15, scope: !103)
!106 = !DILocation(line: 44, column: 37, scope: !107)
!107 = distinct !DILexicalBlock(scope: !102, file: !1, line: 43, column: 11)
!108 = !DILocation(line: 45, column: 32, scope: !109)
!109 = distinct !DILexicalBlock(scope: !107, file: !1, line: 45, column: 13)
!110 = !DILocation(line: 45, column: 18, scope: !109)
!111 = !DILocation(line: 45, column: 37, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !1, line: 45, column: 13)
!113 = !DILocation(line: 45, column: 53, scope: !112)
!114 = !DILocation(line: 45, column: 51, scope: !112)
!115 = !DILocation(line: 45, column: 13, scope: !109)
!116 = !DILocation(line: 47, column: 38, scope: !117)
!117 = distinct !DILexicalBlock(scope: !112, file: !1, line: 46, column: 13)
!118 = !DILocation(line: 48, column: 13, scope: !117)
!119 = !DILocation(line: 45, column: 81, scope: !112)
!120 = !DILocation(line: 45, column: 13, scope: !112)
!121 = distinct !{!121, !115, !122, !123}
!122 = !DILocation(line: 48, column: 13, scope: !109)
!123 = !{!"llvm.loop.mustprogress"}
!124 = !DILocation(line: 50, column: 26, scope: !107)
!125 = !DILocation(line: 50, column: 13, scope: !107)
!126 = !DILocation(line: 51, column: 11, scope: !107)
!127 = !DILocation(line: 53, column: 9, scope: !103)
!128 = !DILocation(line: 56, column: 5, scope: !90)
!129 = !DILocation(line: 34, column: 27, scope: !86)
!130 = !DILabel(scope: !22, name: "goodB2G2_label_", file: !1, line: 58)
!131 = !DILocation(line: 58, column: 5, scope: !22)
!132 = !DILocation(line: 64, column: 3, scope: !9)
!133 = !DILocalVariable(name: "_goodG2B2_data_0", scope: !134, file: !1, line: 66, type: !12)
!134 = distinct !DILexicalBlock(scope: !9, file: !1, line: 65, column: 3)
!135 = !DILocation(line: 66, column: 11, scope: !134)
!136 = !DILocalVariable(name: "_goodG2B2_dataBuffer_0", scope: !134, file: !1, line: 67, type: !23)
!137 = !DILocation(line: 67, column: 10, scope: !134)
!138 = !DILocation(line: 68, column: 24, scope: !134)
!139 = !DILocation(line: 68, column: 22, scope: !134)
!140 = !DILocation(line: 69, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !134, file: !1, line: 69, column: 9)
!142 = !DILocation(line: 69, column: 9, scope: !134)
!143 = !DILocation(line: 71, column: 14, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !1, line: 70, column: 5)
!145 = !DILocation(line: 71, column: 7, scope: !144)
!146 = !DILocation(line: 72, column: 5, scope: !144)
!147 = !DILocation(line: 74, column: 9, scope: !148)
!148 = distinct !DILexicalBlock(scope: !134, file: !1, line: 74, column: 9)
!149 = !DILocation(line: 74, column: 9, scope: !134)
!150 = !DILocalVariable(name: "_goodG2B2_i_0", scope: !151, file: !1, line: 77, type: !4)
!151 = distinct !DILexicalBlock(scope: !152, file: !1, line: 76, column: 7)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 75, column: 5)
!153 = !DILocation(line: 77, column: 13, scope: !151)
!154 = !DILocalVariable(name: "_goodG2B2_n_0", scope: !151, file: !1, line: 78, type: !4)
!155 = !DILocation(line: 78, column: 13, scope: !151)
!156 = !DILocalVariable(name: "_goodG2B2_intVariable_0", scope: !151, file: !1, line: 79, type: !4)
!157 = !DILocation(line: 79, column: 13, scope: !151)
!158 = !DILocation(line: 80, column: 20, scope: !159)
!159 = distinct !DILexicalBlock(scope: !151, file: !1, line: 80, column: 13)
!160 = !DILocation(line: 80, column: 13, scope: !159)
!161 = !DILocation(line: 80, column: 60, scope: !159)
!162 = !DILocation(line: 80, column: 13, scope: !151)
!163 = !DILocation(line: 82, column: 35, scope: !164)
!164 = distinct !DILexicalBlock(scope: !159, file: !1, line: 81, column: 9)
!165 = !DILocation(line: 83, column: 11, scope: !164)
!166 = !DILocation(line: 83, column: 18, scope: !164)
!167 = !DILocation(line: 84, column: 24, scope: !164)
!168 = !DILocation(line: 84, column: 11, scope: !164)
!169 = !DILocation(line: 85, column: 9, scope: !164)
!170 = !DILocation(line: 88, column: 5, scope: !152)
!171 = !DILocation(line: 74, column: 27, scope: !148)
!172 = !DILabel(scope: !134, name: "goodG2B2_label_", file: !1, line: 90)
!173 = !DILocation(line: 90, column: 5, scope: !134)
!174 = !DILocation(line: 95, column: 3, scope: !134)
!175 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_console_11_good_label_", file: !1, line: 96)
!176 = !DILocation(line: 96, column: 3, scope: !9)
!177 = !DILocation(line: 101, column: 1, scope: !9)
