; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_10100CWE606_Unchecked_Loop_Condition__char_console_10226_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_10100CWE606_Unchecked_Loop_Condition__char_console_10226_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@globalTrue = external dso_local global i32, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@globalFalse = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_10100CWE606_Unchecked_Loop_Condition__char_console_10226_1(i8* %_goodB2G1_data_0, void (i32)* %opsink) #0 !dbg !9 {
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
  %1 = load i32, i32* @globalTrue, align 4, !dbg !29
  %tobool = icmp ne i32 %1, 0, !dbg !29
  br i1 %tobool, label %if.then, label %if.end20, !dbg !31

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !38
  %2 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !39
  %call = call i64 @strlen(i8* %2) #6, !dbg !40
  store i64 %call, i64* %_goodB2G1_dataLen_0, align 8, !dbg !38
  %3 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !41
  %sub = sub i64 100, %3, !dbg !43
  %cmp = icmp ugt i64 %sub, 1, !dbg !44
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !45

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !46
  %5 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !50
  %6 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !51
  %sub2 = sub i64 100, %6, !dbg !52
  %conv = trunc i64 %sub2 to i32, !dbg !53
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !54
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !55
  %cmp4 = icmp ne i8* %call3, null, !dbg !56
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !57

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !58
  %call7 = call i64 @strlen(i8* %8) #6, !dbg !60
  store i64 %call7, i64* %_goodB2G1_dataLen_0, align 8, !dbg !61
  %9 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !62
  %cmp8 = icmp ugt i64 %9, 0, !dbg !64
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !65

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !66
  %11 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !67
  %sub10 = sub i64 %11, 1, !dbg !68
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !66
  %12 = load i8, i8* %arrayidx, align 1, !dbg !66
  %conv11 = sext i8 %12 to i32, !dbg !66
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !69
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !70

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !71
  %14 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !73
  %sub15 = sub i64 %14, 1, !dbg !74
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !71
  store i8 0, i8* %arrayidx16, align 1, !dbg !75
  br label %if.end, !dbg !76

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !77

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !78
  %15 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !80
  %16 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !81
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !80
  store i8 0, i8* %arrayidx17, align 1, !dbg !82
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !83

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !84

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @globalFalse, align 4, !dbg !85
  %tobool21 = icmp ne i32 %17, 0, !dbg !85
  br i1 %tobool21, label %if.then22, label %if.else23, !dbg !87

if.then22:                                        ; preds = %if.end20
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !88
  br label %if.end36, !dbg !90

if.else23:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !91, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_n_0, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_intVariable_0, metadata !97, metadata !DIExpression()), !dbg !98
  %18 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !99
  %call24 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %_goodB2G1_n_0) #7, !dbg !101
  %cmp25 = icmp eq i32 %call24, 1, !dbg !102
  br i1 %cmp25, label %if.then27, label %if.end35, !dbg !103

if.then27:                                        ; preds = %if.else23
  %19 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !104
  %cmp28 = icmp slt i32 %19, 10000, !dbg !107
  br i1 %cmp28, label %if.then30, label %if.end34, !dbg !108

if.then30:                                        ; preds = %if.then27
  store i32 0, i32* %_goodB2G1_intVariable_0, align 4, !dbg !109
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !111
  br label %for.cond, !dbg !113

for.cond:                                         ; preds = %for.inc, %if.then30
  %20 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !114
  %21 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !116
  %cmp31 = icmp slt i32 %20, %21, !dbg !117
  br i1 %cmp31, label %for.body, label %for.end, !dbg !118

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !119
  %inc = add nsw i32 %22, 1, !dbg !119
  store i32 %inc, i32* %_goodB2G1_intVariable_0, align 4, !dbg !119
  br label %for.inc, !dbg !121

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !122
  %inc33 = add nsw i32 %23, 1, !dbg !122
  store i32 %inc33, i32* %_goodB2G1_i_0, align 4, !dbg !122
  br label %for.cond, !dbg !123, !llvm.loop !124

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !127
  call void @printIntLine(i32 %24), !dbg !128
  br label %if.end34, !dbg !129

if.end34:                                         ; preds = %for.end, %if.then27
  br label %if.end35, !dbg !130

if.end35:                                         ; preds = %if.end34, %if.else23
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then22
  br label %goodB2G1_label_, !dbg !85

goodB2G1_label_:                                  ; preds = %if.end36
  call void @llvm.dbg.label(metadata !131), !dbg !132
  call void (...) @goodB2G2(), !dbg !133
  call void @llvm.dbg.declare(metadata i8** %_goodG2B1_data_0, metadata !134, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B1_dataBuffer_0, metadata !137, metadata !DIExpression()), !dbg !138
  %25 = bitcast [100 x i8]* %_goodG2B1_dataBuffer_0 to i8*, !dbg !138
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 100, i1 false), !dbg !138
  %arraydecay37 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B1_dataBuffer_0, i64 0, i64 0, !dbg !139
  store i8* %arraydecay37, i8** %_goodG2B1_data_0, align 8, !dbg !140
  %26 = load i32, i32* @globalFalse, align 4, !dbg !141
  %tobool38 = icmp ne i32 %26, 0, !dbg !141
  br i1 %tobool38, label %if.then39, label %if.else40, !dbg !143

if.then39:                                        ; preds = %goodB2G1_label_
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !144
  br label %if.end42, !dbg !146

if.else40:                                        ; preds = %goodB2G1_label_
  %27 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !147
  %call41 = call i8* @strcpy(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !149
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.then39
  %28 = load i32, i32* @globalTrue, align 4, !dbg !150
  %tobool43 = icmp ne i32 %28, 0, !dbg !150
  br i1 %tobool43, label %if.then44, label %if.end50, !dbg !152

if.then44:                                        ; preds = %if.end42
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !153, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_n_0, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_intVariable_0, metadata !159, metadata !DIExpression()), !dbg !160
  %29 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !161
  %call45 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %_goodG2B1_n_0) #7, !dbg !163
  %cmp46 = icmp eq i32 %call45, 1, !dbg !164
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !165

if.then48:                                        ; preds = %if.then44
  store i32 0, i32* %_goodG2B1_intVariable_0, align 4, !dbg !166
  %30 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !168
  %31 = load i32, i32* %_goodG2B1_n_0, align 4, !dbg !169
  call void %30(i32 %31), !dbg !168
  %32 = load i32, i32* %_goodG2B1_intVariable_0, align 4, !dbg !170
  call void @printIntLine(i32 %32), !dbg !171
  br label %if.end49, !dbg !172

if.end49:                                         ; preds = %if.then48, %if.then44
  br label %if.end50, !dbg !173

if.end50:                                         ; preds = %if.end49, %if.end42
  br label %goodG2B1_label_, !dbg !150

goodG2B1_label_:                                  ; preds = %if.end50
  call void @llvm.dbg.label(metadata !174), !dbg !175
  br label %CWE606_Unchecked_Loop_Condition__char_console_10_good_label_, !dbg !176

CWE606_Unchecked_Loop_Condition__char_console_10_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !177), !dbg !178
  ret void, !dbg !179
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

declare dso_local void @goodB2G2(...) #4

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_10100CWE606_Unchecked_Loop_Condition__char_console_10226_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_987/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_10100CWE606_Unchecked_Loop_Condition__char_console_10226_1", scope: !1, file: !1, line: 5, type: !10, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G1_data_0", arg: 1, scope: !9, file: !1, line: 5, type: !12)
!18 = !DILocation(line: 5, column: 117, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 5, type: !14)
!20 = !DILocation(line: 5, column: 142, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !22, file: !1, line: 8, type: !23)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 7, column: 3)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 8, column: 10, scope: !22)
!27 = !DILocation(line: 9, column: 24, scope: !22)
!28 = !DILocation(line: 9, column: 22, scope: !22)
!29 = !DILocation(line: 10, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !22, file: !1, line: 10, column: 9)
!31 = !DILocation(line: 10, column: 9, scope: !22)
!32 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !33, file: !1, line: 13, type: !35)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 12, column: 7)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 11, column: 5)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 13, column: 16, scope: !33)
!39 = !DILocation(line: 13, column: 45, scope: !33)
!40 = !DILocation(line: 13, column: 38, scope: !33)
!41 = !DILocation(line: 14, column: 20, scope: !42)
!42 = distinct !DILexicalBlock(scope: !33, file: !1, line: 14, column: 13)
!43 = !DILocation(line: 14, column: 18, scope: !42)
!44 = !DILocation(line: 14, column: 41, scope: !42)
!45 = !DILocation(line: 14, column: 13, scope: !33)
!46 = !DILocation(line: 16, column: 21, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 16, column: 15)
!48 = distinct !DILexicalBlock(scope: !42, file: !1, line: 15, column: 9)
!49 = !DILocation(line: 16, column: 40, scope: !47)
!50 = !DILocation(line: 16, column: 38, scope: !47)
!51 = !DILocation(line: 16, column: 74, scope: !47)
!52 = !DILocation(line: 16, column: 72, scope: !47)
!53 = !DILocation(line: 16, column: 61, scope: !47)
!54 = !DILocation(line: 16, column: 96, scope: !47)
!55 = !DILocation(line: 16, column: 15, scope: !47)
!56 = !DILocation(line: 16, column: 103, scope: !47)
!57 = !DILocation(line: 16, column: 15, scope: !48)
!58 = !DILocation(line: 18, column: 42, scope: !59)
!59 = distinct !DILexicalBlock(scope: !47, file: !1, line: 17, column: 11)
!60 = !DILocation(line: 18, column: 35, scope: !59)
!61 = !DILocation(line: 18, column: 33, scope: !59)
!62 = !DILocation(line: 19, column: 18, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 19, column: 17)
!64 = !DILocation(line: 19, column: 38, scope: !63)
!65 = !DILocation(line: 19, column: 43, scope: !63)
!66 = !DILocation(line: 19, column: 47, scope: !63)
!67 = !DILocation(line: 19, column: 64, scope: !63)
!68 = !DILocation(line: 19, column: 84, scope: !63)
!69 = !DILocation(line: 19, column: 89, scope: !63)
!70 = !DILocation(line: 19, column: 17, scope: !59)
!71 = !DILocation(line: 21, column: 15, scope: !72)
!72 = distinct !DILexicalBlock(scope: !63, file: !1, line: 20, column: 13)
!73 = !DILocation(line: 21, column: 32, scope: !72)
!74 = !DILocation(line: 21, column: 52, scope: !72)
!75 = !DILocation(line: 21, column: 57, scope: !72)
!76 = !DILocation(line: 22, column: 13, scope: !72)
!77 = !DILocation(line: 24, column: 11, scope: !59)
!78 = !DILocation(line: 27, column: 13, scope: !79)
!79 = distinct !DILexicalBlock(scope: !47, file: !1, line: 26, column: 11)
!80 = !DILocation(line: 28, column: 13, scope: !79)
!81 = !DILocation(line: 28, column: 30, scope: !79)
!82 = !DILocation(line: 28, column: 51, scope: !79)
!83 = !DILocation(line: 31, column: 9, scope: !48)
!84 = !DILocation(line: 34, column: 5, scope: !34)
!85 = !DILocation(line: 36, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !22, file: !1, line: 36, column: 9)
!87 = !DILocation(line: 36, column: 9, scope: !22)
!88 = !DILocation(line: 38, column: 7, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 37, column: 5)
!90 = !DILocation(line: 39, column: 5, scope: !89)
!91 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !92, file: !1, line: 43, type: !4)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 42, column: 7)
!93 = distinct !DILexicalBlock(scope: !86, file: !1, line: 41, column: 5)
!94 = !DILocation(line: 43, column: 13, scope: !92)
!95 = !DILocalVariable(name: "_goodB2G1_n_0", scope: !92, file: !1, line: 44, type: !4)
!96 = !DILocation(line: 44, column: 13, scope: !92)
!97 = !DILocalVariable(name: "_goodB2G1_intVariable_0", scope: !92, file: !1, line: 45, type: !4)
!98 = !DILocation(line: 45, column: 13, scope: !92)
!99 = !DILocation(line: 46, column: 20, scope: !100)
!100 = distinct !DILexicalBlock(scope: !92, file: !1, line: 46, column: 13)
!101 = !DILocation(line: 46, column: 13, scope: !100)
!102 = !DILocation(line: 46, column: 60, scope: !100)
!103 = !DILocation(line: 46, column: 13, scope: !92)
!104 = !DILocation(line: 48, column: 15, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 48, column: 15)
!106 = distinct !DILexicalBlock(scope: !100, file: !1, line: 47, column: 9)
!107 = !DILocation(line: 48, column: 29, scope: !105)
!108 = !DILocation(line: 48, column: 15, scope: !106)
!109 = !DILocation(line: 50, column: 37, scope: !110)
!110 = distinct !DILexicalBlock(scope: !105, file: !1, line: 49, column: 11)
!111 = !DILocation(line: 51, column: 32, scope: !112)
!112 = distinct !DILexicalBlock(scope: !110, file: !1, line: 51, column: 13)
!113 = !DILocation(line: 51, column: 18, scope: !112)
!114 = !DILocation(line: 51, column: 37, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 51, column: 13)
!116 = !DILocation(line: 51, column: 53, scope: !115)
!117 = !DILocation(line: 51, column: 51, scope: !115)
!118 = !DILocation(line: 51, column: 13, scope: !112)
!119 = !DILocation(line: 53, column: 38, scope: !120)
!120 = distinct !DILexicalBlock(scope: !115, file: !1, line: 52, column: 13)
!121 = !DILocation(line: 54, column: 13, scope: !120)
!122 = !DILocation(line: 51, column: 81, scope: !115)
!123 = !DILocation(line: 51, column: 13, scope: !115)
!124 = distinct !{!124, !118, !125, !126}
!125 = !DILocation(line: 54, column: 13, scope: !112)
!126 = !{!"llvm.loop.mustprogress"}
!127 = !DILocation(line: 56, column: 26, scope: !110)
!128 = !DILocation(line: 56, column: 13, scope: !110)
!129 = !DILocation(line: 57, column: 11, scope: !110)
!130 = !DILocation(line: 59, column: 9, scope: !106)
!131 = !DILabel(scope: !22, name: "goodB2G1_label_", file: !1, line: 64)
!132 = !DILocation(line: 64, column: 5, scope: !22)
!133 = !DILocation(line: 70, column: 3, scope: !9)
!134 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !135, file: !1, line: 72, type: !12)
!135 = distinct !DILexicalBlock(scope: !9, file: !1, line: 71, column: 3)
!136 = !DILocation(line: 72, column: 11, scope: !135)
!137 = !DILocalVariable(name: "_goodG2B1_dataBuffer_0", scope: !135, file: !1, line: 73, type: !23)
!138 = !DILocation(line: 73, column: 10, scope: !135)
!139 = !DILocation(line: 74, column: 24, scope: !135)
!140 = !DILocation(line: 74, column: 22, scope: !135)
!141 = !DILocation(line: 75, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !135, file: !1, line: 75, column: 9)
!143 = !DILocation(line: 75, column: 9, scope: !135)
!144 = !DILocation(line: 77, column: 7, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !1, line: 76, column: 5)
!146 = !DILocation(line: 78, column: 5, scope: !145)
!147 = !DILocation(line: 81, column: 14, scope: !148)
!148 = distinct !DILexicalBlock(scope: !142, file: !1, line: 80, column: 5)
!149 = !DILocation(line: 81, column: 7, scope: !148)
!150 = !DILocation(line: 84, column: 9, scope: !151)
!151 = distinct !DILexicalBlock(scope: !135, file: !1, line: 84, column: 9)
!152 = !DILocation(line: 84, column: 9, scope: !135)
!153 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !154, file: !1, line: 87, type: !4)
!154 = distinct !DILexicalBlock(scope: !155, file: !1, line: 86, column: 7)
!155 = distinct !DILexicalBlock(scope: !151, file: !1, line: 85, column: 5)
!156 = !DILocation(line: 87, column: 13, scope: !154)
!157 = !DILocalVariable(name: "_goodG2B1_n_0", scope: !154, file: !1, line: 88, type: !4)
!158 = !DILocation(line: 88, column: 13, scope: !154)
!159 = !DILocalVariable(name: "_goodG2B1_intVariable_0", scope: !154, file: !1, line: 89, type: !4)
!160 = !DILocation(line: 89, column: 13, scope: !154)
!161 = !DILocation(line: 90, column: 20, scope: !162)
!162 = distinct !DILexicalBlock(scope: !154, file: !1, line: 90, column: 13)
!163 = !DILocation(line: 90, column: 13, scope: !162)
!164 = !DILocation(line: 90, column: 60, scope: !162)
!165 = !DILocation(line: 90, column: 13, scope: !154)
!166 = !DILocation(line: 92, column: 35, scope: !167)
!167 = distinct !DILexicalBlock(scope: !162, file: !1, line: 91, column: 9)
!168 = !DILocation(line: 93, column: 11, scope: !167)
!169 = !DILocation(line: 93, column: 18, scope: !167)
!170 = !DILocation(line: 94, column: 24, scope: !167)
!171 = !DILocation(line: 94, column: 11, scope: !167)
!172 = !DILocation(line: 95, column: 9, scope: !167)
!173 = !DILocation(line: 98, column: 5, scope: !155)
!174 = !DILabel(scope: !135, name: "goodG2B1_label_", file: !1, line: 100)
!175 = !DILocation(line: 100, column: 5, scope: !135)
!176 = !DILocation(line: 105, column: 3, scope: !135)
!177 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_console_10_good_label_", file: !1, line: 106)
!178 = !DILocation(line: 106, column: 3, scope: !9)
!179 = !DILocation(line: 111, column: 1, scope: !9)
