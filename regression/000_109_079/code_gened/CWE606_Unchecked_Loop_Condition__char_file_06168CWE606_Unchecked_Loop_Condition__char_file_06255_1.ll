; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_06168CWE606_Unchecked_Loop_Condition__char_file_06255_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_06168CWE606_Unchecked_Loop_Condition__char_file_06255_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@STATIC_CONST_FIVE = external dso_local global i32, align 4
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_06168CWE606_Unchecked_Loop_Condition__char_file_06255_1(i8* %_goodB2G2_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G2_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G2_dataLen_0 = alloca i64, align 8
  %_goodB2G2_pFile_0 = alloca %struct._IO_FILE*, align 8
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
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !29
  %cmp = icmp eq i32 %1, 5, !dbg !31
  br i1 %cmp, label %if.then, label %if.end14, !dbg !32

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !33, metadata !DIExpression()), !dbg !39
  %2 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !40
  %call = call i64 @strlen(i8* %2) #6, !dbg !41
  store i64 %call, i64* %_goodB2G2_dataLen_0, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_goodB2G2_pFile_0, metadata !42, metadata !DIExpression()), !dbg !100
  %3 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !101
  %sub = sub i64 100, %3, !dbg !103
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !104
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !105

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !106
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %_goodB2G2_pFile_0, align 8, !dbg !108
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G2_pFile_0, align 8, !dbg !109
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !111
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !112

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !113
  %6 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !116
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !117
  %7 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !118
  %sub6 = sub i64 100, %7, !dbg !119
  %conv = trunc i64 %sub6 to i32, !dbg !120
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G2_pFile_0, align 8, !dbg !121
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !122
  %cmp8 = icmp eq i8* %call7, null, !dbg !123
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !124

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !125
  %9 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !127
  %10 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !128
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !127
  store i8 0, i8* %arrayidx, align 1, !dbg !129
  br label %if.end, !dbg !130

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G2_pFile_0, align 8, !dbg !131
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !132
  br label %if.end12, !dbg !133

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !134

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !135

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !136
  %cmp15 = icmp eq i32 %12, 5, !dbg !138
  br i1 %cmp15, label %if.then17, label %if.end30, !dbg !139

if.then17:                                        ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_i_0, metadata !140, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_n_0, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_intVariable_0, metadata !146, metadata !DIExpression()), !dbg !147
  %13 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !148
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_goodB2G2_n_0) #7, !dbg !150
  %cmp19 = icmp eq i32 %call18, 1, !dbg !151
  br i1 %cmp19, label %if.then21, label %if.end29, !dbg !152

if.then21:                                        ; preds = %if.then17
  %14 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !153
  %cmp22 = icmp slt i32 %14, 10000, !dbg !156
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !157

if.then24:                                        ; preds = %if.then21
  store i32 0, i32* %_goodB2G2_intVariable_0, align 4, !dbg !158
  store i32 0, i32* %_goodB2G2_i_0, align 4, !dbg !160
  br label %for.cond, !dbg !162

for.cond:                                         ; preds = %for.inc, %if.then24
  %15 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !163
  %16 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !165
  %cmp25 = icmp slt i32 %15, %16, !dbg !166
  br i1 %cmp25, label %for.body, label %for.end, !dbg !167

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !168
  %inc = add nsw i32 %17, 1, !dbg !168
  store i32 %inc, i32* %_goodB2G2_intVariable_0, align 4, !dbg !168
  br label %for.inc, !dbg !170

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !171
  %inc27 = add nsw i32 %18, 1, !dbg !171
  store i32 %inc27, i32* %_goodB2G2_i_0, align 4, !dbg !171
  br label %for.cond, !dbg !172, !llvm.loop !173

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !176
  call void @printIntLine(i32 %19), !dbg !177
  br label %if.end28, !dbg !178

if.end28:                                         ; preds = %for.end, %if.then21
  br label %if.end29, !dbg !179

if.end29:                                         ; preds = %if.end28, %if.then17
  br label %if.end30, !dbg !180

if.end30:                                         ; preds = %if.end29, %if.end14
  br label %goodB2G2_label_, !dbg !181

goodB2G2_label_:                                  ; preds = %if.end30
  call void @llvm.dbg.label(metadata !182), !dbg !183
  call void (...) @goodG2B1(), !dbg !184
  call void @llvm.dbg.declare(metadata i8** %_goodG2B2_data_0, metadata !185, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B2_dataBuffer_0, metadata !188, metadata !DIExpression()), !dbg !189
  %20 = bitcast [100 x i8]* %_goodG2B2_dataBuffer_0 to i8*, !dbg !189
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 100, i1 false), !dbg !189
  %arraydecay31 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B2_dataBuffer_0, i64 0, i64 0, !dbg !190
  store i8* %arraydecay31, i8** %_goodG2B2_data_0, align 8, !dbg !191
  %21 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !192
  %cmp32 = icmp eq i32 %21, 5, !dbg !194
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !195

if.then34:                                        ; preds = %goodB2G2_label_
  %22 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !196
  %call35 = call i8* @strcpy(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !198
  br label %if.end36, !dbg !199

if.end36:                                         ; preds = %if.then34, %goodB2G2_label_
  %23 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !200
  %cmp37 = icmp eq i32 %23, 5, !dbg !202
  br i1 %cmp37, label %if.then39, label %if.end45, !dbg !203

if.then39:                                        ; preds = %if.end36
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_i_0, metadata !204, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_n_0, metadata !208, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_intVariable_0, metadata !210, metadata !DIExpression()), !dbg !211
  %24 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !212
  %call40 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_goodG2B2_n_0) #7, !dbg !214
  %cmp41 = icmp eq i32 %call40, 1, !dbg !215
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !216

if.then43:                                        ; preds = %if.then39
  store i32 0, i32* %_goodG2B2_intVariable_0, align 4, !dbg !217
  %25 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !219
  %26 = load i32, i32* %_goodG2B2_n_0, align 4, !dbg !220
  call void %25(i32 %26), !dbg !219
  %27 = load i32, i32* %_goodG2B2_intVariable_0, align 4, !dbg !221
  call void @printIntLine(i32 %27), !dbg !222
  br label %if.end44, !dbg !223

if.end44:                                         ; preds = %if.then43, %if.then39
  br label %if.end45, !dbg !224

if.end45:                                         ; preds = %if.end44, %if.end36
  br label %goodG2B2_label_, !dbg !225

goodG2B2_label_:                                  ; preds = %if.end45
  call void @llvm.dbg.label(metadata !226), !dbg !227
  br label %CWE606_Unchecked_Loop_Condition__char_file_06_good_label_, !dbg !228

CWE606_Unchecked_Loop_Condition__char_file_06_good_label_: ; preds = %goodG2B2_label_
  call void @llvm.dbg.label(metadata !229), !dbg !230
  ret void, !dbg !231
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @goodG2B1(...) #4

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_06168CWE606_Unchecked_Loop_Condition__char_file_06255_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_079/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_06168CWE606_Unchecked_Loop_Condition__char_file_06255_1", scope: !1, file: !1, line: 4, type: !10, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G2_data_0", arg: 1, scope: !9, file: !1, line: 4, type: !12)
!18 = !DILocation(line: 4, column: 111, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 4, type: !14)
!20 = !DILocation(line: 4, column: 136, scope: !9)
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
!42 = !DILocalVariable(name: "_goodB2G2_pFile_0", scope: !34, file: !1, line: 13, type: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !45, line: 7, baseType: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 49, size: 1728, elements: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !64, !66, !67, !68, !72, !74, !76, !80, !83, !85, !88, !91, !92, !94, !95, !96}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !46, file: !47, line: 51, baseType: !4, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !46, file: !47, line: 54, baseType: !12, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !46, file: !47, line: 55, baseType: !12, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !46, file: !47, line: 56, baseType: !12, size: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !46, file: !47, line: 57, baseType: !12, size: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !46, file: !47, line: 58, baseType: !12, size: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !46, file: !47, line: 59, baseType: !12, size: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !46, file: !47, line: 60, baseType: !12, size: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !46, file: !47, line: 61, baseType: !12, size: 64, offset: 512)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !46, file: !47, line: 64, baseType: !12, size: 64, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !46, file: !47, line: 65, baseType: !12, size: 64, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !46, file: !47, line: 66, baseType: !12, size: 64, offset: 704)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !46, file: !47, line: 68, baseType: !62, size: 64, offset: 768)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !47, line: 36, flags: DIFlagFwdDecl)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !46, file: !47, line: 70, baseType: !65, size: 64, offset: 832)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !46, file: !47, line: 72, baseType: !4, size: 32, offset: 896)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !46, file: !47, line: 73, baseType: !4, size: 32, offset: 928)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !46, file: !47, line: 74, baseType: !69, size: 64, offset: 960)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !70, line: 152, baseType: !71)
!70 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!71 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !46, file: !47, line: 77, baseType: !73, size: 16, offset: 1024)
!73 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !46, file: !47, line: 78, baseType: !75, size: 8, offset: 1040)
!75 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !46, file: !47, line: 79, baseType: !77, size: 8, offset: 1048)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 1)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !46, file: !47, line: 81, baseType: !81, size: 64, offset: 1088)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !47, line: 43, baseType: null)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !46, file: !47, line: 89, baseType: !84, size: 64, offset: 1152)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !70, line: 153, baseType: !71)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !46, file: !47, line: 91, baseType: !86, size: 64, offset: 1216)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !47, line: 37, flags: DIFlagFwdDecl)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !46, file: !47, line: 92, baseType: !89, size: 64, offset: 1280)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !47, line: 38, flags: DIFlagFwdDecl)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !46, file: !47, line: 93, baseType: !65, size: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !46, file: !47, line: 94, baseType: !93, size: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !46, file: !47, line: 95, baseType: !36, size: 64, offset: 1472)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !46, file: !47, line: 96, baseType: !4, size: 32, offset: 1536)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !46, file: !47, line: 98, baseType: !97, size: 160, offset: 1568)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 20)
!100 = !DILocation(line: 13, column: 15, scope: !34)
!101 = !DILocation(line: 14, column: 20, scope: !102)
!102 = distinct !DILexicalBlock(scope: !34, file: !1, line: 14, column: 13)
!103 = !DILocation(line: 14, column: 18, scope: !102)
!104 = !DILocation(line: 14, column: 41, scope: !102)
!105 = !DILocation(line: 14, column: 13, scope: !34)
!106 = !DILocation(line: 16, column: 31, scope: !107)
!107 = distinct !DILexicalBlock(scope: !102, file: !1, line: 15, column: 9)
!108 = !DILocation(line: 16, column: 29, scope: !107)
!109 = !DILocation(line: 17, column: 15, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !1, line: 17, column: 15)
!111 = !DILocation(line: 17, column: 33, scope: !110)
!112 = !DILocation(line: 17, column: 15, scope: !107)
!113 = !DILocation(line: 19, column: 23, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !1, line: 19, column: 17)
!115 = distinct !DILexicalBlock(scope: !110, file: !1, line: 18, column: 11)
!116 = !DILocation(line: 19, column: 42, scope: !114)
!117 = !DILocation(line: 19, column: 40, scope: !114)
!118 = !DILocation(line: 19, column: 76, scope: !114)
!119 = !DILocation(line: 19, column: 74, scope: !114)
!120 = !DILocation(line: 19, column: 63, scope: !114)
!121 = !DILocation(line: 19, column: 98, scope: !114)
!122 = !DILocation(line: 19, column: 17, scope: !114)
!123 = !DILocation(line: 19, column: 117, scope: !114)
!124 = !DILocation(line: 19, column: 17, scope: !115)
!125 = !DILocation(line: 21, column: 15, scope: !126)
!126 = distinct !DILexicalBlock(scope: !114, file: !1, line: 20, column: 13)
!127 = !DILocation(line: 22, column: 15, scope: !126)
!128 = !DILocation(line: 22, column: 32, scope: !126)
!129 = !DILocation(line: 22, column: 53, scope: !126)
!130 = !DILocation(line: 23, column: 13, scope: !126)
!131 = !DILocation(line: 25, column: 20, scope: !115)
!132 = !DILocation(line: 25, column: 13, scope: !115)
!133 = !DILocation(line: 26, column: 11, scope: !115)
!134 = !DILocation(line: 28, column: 9, scope: !107)
!135 = !DILocation(line: 31, column: 5, scope: !35)
!136 = !DILocation(line: 33, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !22, file: !1, line: 33, column: 9)
!138 = !DILocation(line: 33, column: 27, scope: !137)
!139 = !DILocation(line: 33, column: 9, scope: !22)
!140 = !DILocalVariable(name: "_goodB2G2_i_0", scope: !141, file: !1, line: 36, type: !4)
!141 = distinct !DILexicalBlock(scope: !142, file: !1, line: 35, column: 7)
!142 = distinct !DILexicalBlock(scope: !137, file: !1, line: 34, column: 5)
!143 = !DILocation(line: 36, column: 13, scope: !141)
!144 = !DILocalVariable(name: "_goodB2G2_n_0", scope: !141, file: !1, line: 37, type: !4)
!145 = !DILocation(line: 37, column: 13, scope: !141)
!146 = !DILocalVariable(name: "_goodB2G2_intVariable_0", scope: !141, file: !1, line: 38, type: !4)
!147 = !DILocation(line: 38, column: 13, scope: !141)
!148 = !DILocation(line: 39, column: 20, scope: !149)
!149 = distinct !DILexicalBlock(scope: !141, file: !1, line: 39, column: 13)
!150 = !DILocation(line: 39, column: 13, scope: !149)
!151 = !DILocation(line: 39, column: 60, scope: !149)
!152 = !DILocation(line: 39, column: 13, scope: !141)
!153 = !DILocation(line: 41, column: 15, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !1, line: 41, column: 15)
!155 = distinct !DILexicalBlock(scope: !149, file: !1, line: 40, column: 9)
!156 = !DILocation(line: 41, column: 29, scope: !154)
!157 = !DILocation(line: 41, column: 15, scope: !155)
!158 = !DILocation(line: 43, column: 37, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !1, line: 42, column: 11)
!160 = !DILocation(line: 44, column: 32, scope: !161)
!161 = distinct !DILexicalBlock(scope: !159, file: !1, line: 44, column: 13)
!162 = !DILocation(line: 44, column: 18, scope: !161)
!163 = !DILocation(line: 44, column: 37, scope: !164)
!164 = distinct !DILexicalBlock(scope: !161, file: !1, line: 44, column: 13)
!165 = !DILocation(line: 44, column: 53, scope: !164)
!166 = !DILocation(line: 44, column: 51, scope: !164)
!167 = !DILocation(line: 44, column: 13, scope: !161)
!168 = !DILocation(line: 46, column: 38, scope: !169)
!169 = distinct !DILexicalBlock(scope: !164, file: !1, line: 45, column: 13)
!170 = !DILocation(line: 47, column: 13, scope: !169)
!171 = !DILocation(line: 44, column: 81, scope: !164)
!172 = !DILocation(line: 44, column: 13, scope: !164)
!173 = distinct !{!173, !167, !174, !175}
!174 = !DILocation(line: 47, column: 13, scope: !161)
!175 = !{!"llvm.loop.mustprogress"}
!176 = !DILocation(line: 49, column: 26, scope: !159)
!177 = !DILocation(line: 49, column: 13, scope: !159)
!178 = !DILocation(line: 50, column: 11, scope: !159)
!179 = !DILocation(line: 52, column: 9, scope: !155)
!180 = !DILocation(line: 55, column: 5, scope: !142)
!181 = !DILocation(line: 33, column: 30, scope: !137)
!182 = !DILabel(scope: !22, name: "goodB2G2_label_", file: !1, line: 57)
!183 = !DILocation(line: 57, column: 5, scope: !22)
!184 = !DILocation(line: 63, column: 3, scope: !9)
!185 = !DILocalVariable(name: "_goodG2B2_data_0", scope: !186, file: !1, line: 65, type: !12)
!186 = distinct !DILexicalBlock(scope: !9, file: !1, line: 64, column: 3)
!187 = !DILocation(line: 65, column: 11, scope: !186)
!188 = !DILocalVariable(name: "_goodG2B2_dataBuffer_0", scope: !186, file: !1, line: 66, type: !23)
!189 = !DILocation(line: 66, column: 10, scope: !186)
!190 = !DILocation(line: 67, column: 24, scope: !186)
!191 = !DILocation(line: 67, column: 22, scope: !186)
!192 = !DILocation(line: 68, column: 9, scope: !193)
!193 = distinct !DILexicalBlock(scope: !186, file: !1, line: 68, column: 9)
!194 = !DILocation(line: 68, column: 27, scope: !193)
!195 = !DILocation(line: 68, column: 9, scope: !186)
!196 = !DILocation(line: 70, column: 14, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !1, line: 69, column: 5)
!198 = !DILocation(line: 70, column: 7, scope: !197)
!199 = !DILocation(line: 71, column: 5, scope: !197)
!200 = !DILocation(line: 73, column: 9, scope: !201)
!201 = distinct !DILexicalBlock(scope: !186, file: !1, line: 73, column: 9)
!202 = !DILocation(line: 73, column: 27, scope: !201)
!203 = !DILocation(line: 73, column: 9, scope: !186)
!204 = !DILocalVariable(name: "_goodG2B2_i_0", scope: !205, file: !1, line: 76, type: !4)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 75, column: 7)
!206 = distinct !DILexicalBlock(scope: !201, file: !1, line: 74, column: 5)
!207 = !DILocation(line: 76, column: 13, scope: !205)
!208 = !DILocalVariable(name: "_goodG2B2_n_0", scope: !205, file: !1, line: 77, type: !4)
!209 = !DILocation(line: 77, column: 13, scope: !205)
!210 = !DILocalVariable(name: "_goodG2B2_intVariable_0", scope: !205, file: !1, line: 78, type: !4)
!211 = !DILocation(line: 78, column: 13, scope: !205)
!212 = !DILocation(line: 79, column: 20, scope: !213)
!213 = distinct !DILexicalBlock(scope: !205, file: !1, line: 79, column: 13)
!214 = !DILocation(line: 79, column: 13, scope: !213)
!215 = !DILocation(line: 79, column: 60, scope: !213)
!216 = !DILocation(line: 79, column: 13, scope: !205)
!217 = !DILocation(line: 81, column: 35, scope: !218)
!218 = distinct !DILexicalBlock(scope: !213, file: !1, line: 80, column: 9)
!219 = !DILocation(line: 82, column: 11, scope: !218)
!220 = !DILocation(line: 82, column: 18, scope: !218)
!221 = !DILocation(line: 83, column: 24, scope: !218)
!222 = !DILocation(line: 83, column: 11, scope: !218)
!223 = !DILocation(line: 84, column: 9, scope: !218)
!224 = !DILocation(line: 87, column: 5, scope: !206)
!225 = !DILocation(line: 73, column: 30, scope: !201)
!226 = !DILabel(scope: !186, name: "goodG2B2_label_", file: !1, line: 89)
!227 = !DILocation(line: 89, column: 5, scope: !186)
!228 = !DILocation(line: 94, column: 3, scope: !186)
!229 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_file_06_good_label_", file: !1, line: 95)
!230 = !DILocation(line: 95, column: 3, scope: !9)
!231 = !DILocation(line: 100, column: 1, scope: !9)
