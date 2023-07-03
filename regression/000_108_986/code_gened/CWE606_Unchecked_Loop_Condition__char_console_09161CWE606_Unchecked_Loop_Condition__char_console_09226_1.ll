; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_09161CWE606_Unchecked_Loop_Condition__char_console_09226_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_09161CWE606_Unchecked_Loop_Condition__char_console_09226_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@GLOBAL_CONST_TRUE = external dso_local global i32, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GLOBAL_CONST_FALSE = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_09161CWE606_Unchecked_Loop_Condition__char_console_09226_1(i8* %_goodB2G2_data_0, void (i32)* %opsink) #0 !dbg !9 {
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
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !29
  %tobool = icmp ne i32 %1, 0, !dbg !29
  br i1 %tobool, label %if.then, label %if.end20, !dbg !31

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !38
  %2 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !39
  %call = call i64 @strlen(i8* %2) #6, !dbg !40
  store i64 %call, i64* %_goodB2G2_dataLen_0, align 8, !dbg !38
  %3 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !41
  %sub = sub i64 100, %3, !dbg !43
  %cmp = icmp ugt i64 %sub, 1, !dbg !44
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !45

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !46
  %5 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !50
  %6 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !51
  %sub2 = sub i64 100, %6, !dbg !52
  %conv = trunc i64 %sub2 to i32, !dbg !53
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !54
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !55
  %cmp4 = icmp ne i8* %call3, null, !dbg !56
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !57

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !58
  %call7 = call i64 @strlen(i8* %8) #6, !dbg !60
  store i64 %call7, i64* %_goodB2G2_dataLen_0, align 8, !dbg !61
  %9 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !62
  %cmp8 = icmp ugt i64 %9, 0, !dbg !64
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !65

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !66
  %11 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !67
  %sub10 = sub i64 %11, 1, !dbg !68
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !66
  %12 = load i8, i8* %arrayidx, align 1, !dbg !66
  %conv11 = sext i8 %12 to i32, !dbg !66
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !69
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !70

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !71
  %14 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !73
  %sub15 = sub i64 %14, 1, !dbg !74
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !71
  store i8 0, i8* %arrayidx16, align 1, !dbg !75
  br label %if.end, !dbg !76

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !77

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !78
  %15 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !80
  %16 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !81
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !80
  store i8 0, i8* %arrayidx17, align 1, !dbg !82
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !83

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !84

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !85
  %tobool21 = icmp ne i32 %17, 0, !dbg !85
  br i1 %tobool21, label %if.then22, label %if.end35, !dbg !87

if.then22:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_i_0, metadata !88, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_n_0, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_intVariable_0, metadata !94, metadata !DIExpression()), !dbg !95
  %18 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !96
  %call23 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G2_n_0) #7, !dbg !98
  %cmp24 = icmp eq i32 %call23, 1, !dbg !99
  br i1 %cmp24, label %if.then26, label %if.end34, !dbg !100

if.then26:                                        ; preds = %if.then22
  %19 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !101
  %cmp27 = icmp slt i32 %19, 10000, !dbg !104
  br i1 %cmp27, label %if.then29, label %if.end33, !dbg !105

if.then29:                                        ; preds = %if.then26
  store i32 0, i32* %_goodB2G2_intVariable_0, align 4, !dbg !106
  store i32 0, i32* %_goodB2G2_i_0, align 4, !dbg !108
  br label %for.cond, !dbg !110

for.cond:                                         ; preds = %for.inc, %if.then29
  %20 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !111
  %21 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !113
  %cmp30 = icmp slt i32 %20, %21, !dbg !114
  br i1 %cmp30, label %for.body, label %for.end, !dbg !115

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !116
  %inc = add nsw i32 %22, 1, !dbg !116
  store i32 %inc, i32* %_goodB2G2_intVariable_0, align 4, !dbg !116
  br label %for.inc, !dbg !118

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !119
  %inc32 = add nsw i32 %23, 1, !dbg !119
  store i32 %inc32, i32* %_goodB2G2_i_0, align 4, !dbg !119
  br label %for.cond, !dbg !120, !llvm.loop !121

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !124
  call void @printIntLine(i32 %24), !dbg !125
  br label %if.end33, !dbg !126

if.end33:                                         ; preds = %for.end, %if.then26
  br label %if.end34, !dbg !127

if.end34:                                         ; preds = %if.end33, %if.then22
  br label %if.end35, !dbg !128

if.end35:                                         ; preds = %if.end34, %if.end20
  br label %goodB2G2_label_, !dbg !85

goodB2G2_label_:                                  ; preds = %if.end35
  call void @llvm.dbg.label(metadata !129), !dbg !130
  call void @llvm.dbg.declare(metadata i8** %_goodG2B1_data_0, metadata !131, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B1_dataBuffer_0, metadata !134, metadata !DIExpression()), !dbg !135
  %25 = bitcast [100 x i8]* %_goodG2B1_dataBuffer_0 to i8*, !dbg !135
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 100, i1 false), !dbg !135
  %arraydecay36 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B1_dataBuffer_0, i64 0, i64 0, !dbg !136
  store i8* %arraydecay36, i8** %_goodG2B1_data_0, align 8, !dbg !137
  %26 = load i32, i32* @GLOBAL_CONST_FALSE, align 4, !dbg !138
  %tobool37 = icmp ne i32 %26, 0, !dbg !138
  br i1 %tobool37, label %if.then38, label %if.else39, !dbg !140

if.then38:                                        ; preds = %goodB2G2_label_
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !141
  br label %if.end41, !dbg !143

if.else39:                                        ; preds = %goodB2G2_label_
  %27 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !144
  %call40 = call i8* @strcpy(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !146
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.then38
  %28 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !147
  %tobool42 = icmp ne i32 %28, 0, !dbg !147
  br i1 %tobool42, label %if.then43, label %if.end49, !dbg !149

if.then43:                                        ; preds = %if.end41
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !150, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_n_0, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_intVariable_0, metadata !156, metadata !DIExpression()), !dbg !157
  %29 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !158
  %call44 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B1_n_0) #7, !dbg !160
  %cmp45 = icmp eq i32 %call44, 1, !dbg !161
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !162

if.then47:                                        ; preds = %if.then43
  store i32 0, i32* %_goodG2B1_intVariable_0, align 4, !dbg !163
  %30 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !165
  %31 = load i32, i32* %_goodG2B1_n_0, align 4, !dbg !166
  call void %30(i32 %31), !dbg !165
  %32 = load i32, i32* %_goodG2B1_intVariable_0, align 4, !dbg !167
  call void @printIntLine(i32 %32), !dbg !168
  br label %if.end48, !dbg !169

if.end48:                                         ; preds = %if.then47, %if.then43
  br label %if.end49, !dbg !170

if.end49:                                         ; preds = %if.end48, %if.end41
  br label %goodG2B1_label_, !dbg !147

goodG2B1_label_:                                  ; preds = %if.end49
  call void @llvm.dbg.label(metadata !171), !dbg !172
  br label %CWE606_Unchecked_Loop_Condition__char_console_09_good_label_, !dbg !173

CWE606_Unchecked_Loop_Condition__char_console_09_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !174), !dbg !175
  ret void, !dbg !176
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_09161CWE606_Unchecked_Loop_Condition__char_console_09226_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_986/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_09161CWE606_Unchecked_Loop_Condition__char_console_09226_1", scope: !1, file: !1, line: 5, type: !10, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!29 = !DILocation(line: 10, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !22, file: !1, line: 10, column: 9)
!31 = !DILocation(line: 10, column: 9, scope: !22)
!32 = !DILocalVariable(name: "_goodB2G2_dataLen_0", scope: !33, file: !1, line: 13, type: !35)
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
!88 = !DILocalVariable(name: "_goodB2G2_i_0", scope: !89, file: !1, line: 39, type: !4)
!89 = distinct !DILexicalBlock(scope: !90, file: !1, line: 38, column: 7)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 37, column: 5)
!91 = !DILocation(line: 39, column: 13, scope: !89)
!92 = !DILocalVariable(name: "_goodB2G2_n_0", scope: !89, file: !1, line: 40, type: !4)
!93 = !DILocation(line: 40, column: 13, scope: !89)
!94 = !DILocalVariable(name: "_goodB2G2_intVariable_0", scope: !89, file: !1, line: 41, type: !4)
!95 = !DILocation(line: 41, column: 13, scope: !89)
!96 = !DILocation(line: 42, column: 20, scope: !97)
!97 = distinct !DILexicalBlock(scope: !89, file: !1, line: 42, column: 13)
!98 = !DILocation(line: 42, column: 13, scope: !97)
!99 = !DILocation(line: 42, column: 60, scope: !97)
!100 = !DILocation(line: 42, column: 13, scope: !89)
!101 = !DILocation(line: 44, column: 15, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 44, column: 15)
!103 = distinct !DILexicalBlock(scope: !97, file: !1, line: 43, column: 9)
!104 = !DILocation(line: 44, column: 29, scope: !102)
!105 = !DILocation(line: 44, column: 15, scope: !103)
!106 = !DILocation(line: 46, column: 37, scope: !107)
!107 = distinct !DILexicalBlock(scope: !102, file: !1, line: 45, column: 11)
!108 = !DILocation(line: 47, column: 32, scope: !109)
!109 = distinct !DILexicalBlock(scope: !107, file: !1, line: 47, column: 13)
!110 = !DILocation(line: 47, column: 18, scope: !109)
!111 = !DILocation(line: 47, column: 37, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !1, line: 47, column: 13)
!113 = !DILocation(line: 47, column: 53, scope: !112)
!114 = !DILocation(line: 47, column: 51, scope: !112)
!115 = !DILocation(line: 47, column: 13, scope: !109)
!116 = !DILocation(line: 49, column: 38, scope: !117)
!117 = distinct !DILexicalBlock(scope: !112, file: !1, line: 48, column: 13)
!118 = !DILocation(line: 50, column: 13, scope: !117)
!119 = !DILocation(line: 47, column: 81, scope: !112)
!120 = !DILocation(line: 47, column: 13, scope: !112)
!121 = distinct !{!121, !115, !122, !123}
!122 = !DILocation(line: 50, column: 13, scope: !109)
!123 = !{!"llvm.loop.mustprogress"}
!124 = !DILocation(line: 52, column: 26, scope: !107)
!125 = !DILocation(line: 52, column: 13, scope: !107)
!126 = !DILocation(line: 53, column: 11, scope: !107)
!127 = !DILocation(line: 55, column: 9, scope: !103)
!128 = !DILocation(line: 58, column: 5, scope: !90)
!129 = !DILabel(scope: !22, name: "goodB2G2_label_", file: !1, line: 60)
!130 = !DILocation(line: 60, column: 5, scope: !22)
!131 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !132, file: !1, line: 67, type: !12)
!132 = distinct !DILexicalBlock(scope: !9, file: !1, line: 66, column: 3)
!133 = !DILocation(line: 67, column: 11, scope: !132)
!134 = !DILocalVariable(name: "_goodG2B1_dataBuffer_0", scope: !132, file: !1, line: 68, type: !23)
!135 = !DILocation(line: 68, column: 10, scope: !132)
!136 = !DILocation(line: 69, column: 24, scope: !132)
!137 = !DILocation(line: 69, column: 22, scope: !132)
!138 = !DILocation(line: 70, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !132, file: !1, line: 70, column: 9)
!140 = !DILocation(line: 70, column: 9, scope: !132)
!141 = !DILocation(line: 72, column: 7, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !1, line: 71, column: 5)
!143 = !DILocation(line: 73, column: 5, scope: !142)
!144 = !DILocation(line: 76, column: 14, scope: !145)
!145 = distinct !DILexicalBlock(scope: !139, file: !1, line: 75, column: 5)
!146 = !DILocation(line: 76, column: 7, scope: !145)
!147 = !DILocation(line: 79, column: 9, scope: !148)
!148 = distinct !DILexicalBlock(scope: !132, file: !1, line: 79, column: 9)
!149 = !DILocation(line: 79, column: 9, scope: !132)
!150 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !151, file: !1, line: 82, type: !4)
!151 = distinct !DILexicalBlock(scope: !152, file: !1, line: 81, column: 7)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 80, column: 5)
!153 = !DILocation(line: 82, column: 13, scope: !151)
!154 = !DILocalVariable(name: "_goodG2B1_n_0", scope: !151, file: !1, line: 83, type: !4)
!155 = !DILocation(line: 83, column: 13, scope: !151)
!156 = !DILocalVariable(name: "_goodG2B1_intVariable_0", scope: !151, file: !1, line: 84, type: !4)
!157 = !DILocation(line: 84, column: 13, scope: !151)
!158 = !DILocation(line: 85, column: 20, scope: !159)
!159 = distinct !DILexicalBlock(scope: !151, file: !1, line: 85, column: 13)
!160 = !DILocation(line: 85, column: 13, scope: !159)
!161 = !DILocation(line: 85, column: 60, scope: !159)
!162 = !DILocation(line: 85, column: 13, scope: !151)
!163 = !DILocation(line: 87, column: 35, scope: !164)
!164 = distinct !DILexicalBlock(scope: !159, file: !1, line: 86, column: 9)
!165 = !DILocation(line: 88, column: 11, scope: !164)
!166 = !DILocation(line: 88, column: 18, scope: !164)
!167 = !DILocation(line: 89, column: 24, scope: !164)
!168 = !DILocation(line: 89, column: 11, scope: !164)
!169 = !DILocation(line: 90, column: 9, scope: !164)
!170 = !DILocation(line: 93, column: 5, scope: !152)
!171 = !DILabel(scope: !132, name: "goodG2B1_label_", file: !1, line: 95)
!172 = !DILocation(line: 95, column: 5, scope: !132)
!173 = !DILocation(line: 100, column: 3, scope: !132)
!174 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_console_09_good_label_", file: !1, line: 101)
!175 = !DILocation(line: 101, column: 3, scope: !9)
!176 = !DILocation(line: 106, column: 1, scope: !9)
