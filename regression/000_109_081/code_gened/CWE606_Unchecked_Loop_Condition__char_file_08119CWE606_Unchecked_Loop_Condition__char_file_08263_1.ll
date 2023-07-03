; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_08119CWE606_Unchecked_Loop_Condition__char_file_08263_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_08119CWE606_Unchecked_Loop_Condition__char_file_08263_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_08119CWE606_Unchecked_Loop_Condition__char_file_08263_1(i8* %_goodB2G1_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G1_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G1_dataLen_0 = alloca i64, align 8
  %_goodB2G1_pFile_0 = alloca %struct._IO_FILE*, align 8
  %_goodB2G1_i_0 = alloca i32, align 4
  %_goodB2G1_n_0 = alloca i32, align 4
  %_goodB2G1_intVariable_0 = alloca i32, align 4
  %_goodG2B2_data_0 = alloca i8*, align 8
  %_goodG2B2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B2_i_0 = alloca i32, align 4
  %_goodG2B2_n_0 = alloca i32, align 4
  %_goodG2B2_intVariable_0 = alloca i32, align 4
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
  br i1 %tobool, label %if.then, label %if.end14, !dbg !31

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !38
  %1 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !39
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !40
  store i64 %call1, i64* %_goodB2G1_dataLen_0, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_goodB2G1_pFile_0, metadata !41, metadata !DIExpression()), !dbg !99
  %2 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !100
  %sub = sub i64 100, %2, !dbg !102
  %cmp = icmp ugt i64 %sub, 1, !dbg !103
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !104

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !105
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %_goodB2G1_pFile_0, align 8, !dbg !107
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G1_pFile_0, align 8, !dbg !108
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !110
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !111

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !112
  %5 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !115
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !116
  %6 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !117
  %sub6 = sub i64 100, %6, !dbg !118
  %conv = trunc i64 %sub6 to i32, !dbg !119
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G1_pFile_0, align 8, !dbg !120
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !121
  %cmp8 = icmp eq i8* %call7, null, !dbg !122
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !123

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !124
  %8 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !126
  %9 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !127
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !126
  store i8 0, i8* %arrayidx, align 1, !dbg !128
  br label %if.end, !dbg !129

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G1_pFile_0, align 8, !dbg !130
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !131
  br label %if.end12, !dbg !132

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !133

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !134

if.end14:                                         ; preds = %if.end13, %entry
  %call15 = call i32 (...) @staticReturnsFalse(), !dbg !135
  %tobool16 = icmp ne i32 %call15, 0, !dbg !135
  br i1 %tobool16, label %if.then17, label %if.else, !dbg !137

if.then17:                                        ; preds = %if.end14
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !138
  br label %if.end30, !dbg !140

if.else:                                          ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !141, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_n_0, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_intVariable_0, metadata !147, metadata !DIExpression()), !dbg !148
  %11 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !149
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %_goodB2G1_n_0) #7, !dbg !151
  %cmp19 = icmp eq i32 %call18, 1, !dbg !152
  br i1 %cmp19, label %if.then21, label %if.end29, !dbg !153

if.then21:                                        ; preds = %if.else
  %12 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !154
  %cmp22 = icmp slt i32 %12, 10000, !dbg !157
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !158

if.then24:                                        ; preds = %if.then21
  store i32 0, i32* %_goodB2G1_intVariable_0, align 4, !dbg !159
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !161
  br label %for.cond, !dbg !163

for.cond:                                         ; preds = %for.inc, %if.then24
  %13 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !164
  %14 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !166
  %cmp25 = icmp slt i32 %13, %14, !dbg !167
  br i1 %cmp25, label %for.body, label %for.end, !dbg !168

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !169
  %inc = add nsw i32 %15, 1, !dbg !169
  store i32 %inc, i32* %_goodB2G1_intVariable_0, align 4, !dbg !169
  br label %for.inc, !dbg !171

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !172
  %inc27 = add nsw i32 %16, 1, !dbg !172
  store i32 %inc27, i32* %_goodB2G1_i_0, align 4, !dbg !172
  br label %for.cond, !dbg !173, !llvm.loop !174

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !177
  call void @printIntLine(i32 %17), !dbg !178
  br label %if.end28, !dbg !179

if.end28:                                         ; preds = %for.end, %if.then21
  br label %if.end29, !dbg !180

if.end29:                                         ; preds = %if.end28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then17
  br label %goodB2G1_label_, !dbg !181

goodB2G1_label_:                                  ; preds = %if.end30
  call void @llvm.dbg.label(metadata !182), !dbg !183
  call void (...) @goodB2G2(), !dbg !184
  call void (...) @goodG2B1(), !dbg !185
  call void @llvm.dbg.declare(metadata i8** %_goodG2B2_data_0, metadata !186, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B2_dataBuffer_0, metadata !189, metadata !DIExpression()), !dbg !190
  %18 = bitcast [100 x i8]* %_goodG2B2_dataBuffer_0 to i8*, !dbg !190
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 100, i1 false), !dbg !190
  %arraydecay31 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B2_dataBuffer_0, i64 0, i64 0, !dbg !191
  store i8* %arraydecay31, i8** %_goodG2B2_data_0, align 8, !dbg !192
  %call32 = call i32 (...) @staticReturnsTrue(), !dbg !193
  %tobool33 = icmp ne i32 %call32, 0, !dbg !193
  br i1 %tobool33, label %if.then34, label %if.end36, !dbg !195

if.then34:                                        ; preds = %goodB2G1_label_
  %19 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !196
  %call35 = call i8* @strcpy(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !198
  br label %if.end36, !dbg !199

if.end36:                                         ; preds = %if.then34, %goodB2G1_label_
  %call37 = call i32 (...) @staticReturnsTrue(), !dbg !200
  %tobool38 = icmp ne i32 %call37, 0, !dbg !200
  br i1 %tobool38, label %if.then39, label %if.end45, !dbg !202

if.then39:                                        ; preds = %if.end36
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_i_0, metadata !203, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_n_0, metadata !207, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_intVariable_0, metadata !209, metadata !DIExpression()), !dbg !210
  %20 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !211
  %call40 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %_goodG2B2_n_0) #7, !dbg !213
  %cmp41 = icmp eq i32 %call40, 1, !dbg !214
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !215

if.then43:                                        ; preds = %if.then39
  store i32 0, i32* %_goodG2B2_intVariable_0, align 4, !dbg !216
  %21 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !218
  %22 = load i32, i32* %_goodG2B2_n_0, align 4, !dbg !219
  call void %21(i32 %22), !dbg !218
  %23 = load i32, i32* %_goodG2B2_intVariable_0, align 4, !dbg !220
  call void @printIntLine(i32 %23), !dbg !221
  br label %if.end44, !dbg !222

if.end44:                                         ; preds = %if.then43, %if.then39
  br label %if.end45, !dbg !223

if.end45:                                         ; preds = %if.end44, %if.end36
  br label %goodG2B2_label_, !dbg !224

goodG2B2_label_:                                  ; preds = %if.end45
  call void @llvm.dbg.label(metadata !225), !dbg !226
  br label %CWE606_Unchecked_Loop_Condition__char_file_08_good_label_, !dbg !227

CWE606_Unchecked_Loop_Condition__char_file_08_good_label_: ; preds = %goodG2B2_label_
  call void @llvm.dbg.label(metadata !228), !dbg !229
  ret void, !dbg !230
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @staticReturnsTrue(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

declare dso_local i32 @staticReturnsFalse(...) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @goodB2G2(...) #3

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_08119CWE606_Unchecked_Loop_Condition__char_file_08263_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_081/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_08119CWE606_Unchecked_Loop_Condition__char_file_08263_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G1_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 111, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 136, scope: !9)
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
!41 = !DILocalVariable(name: "_goodB2G1_pFile_0", scope: !33, file: !1, line: 12, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !44, line: 7, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !63, !65, !66, !67, !71, !73, !75, !79, !82, !84, !87, !90, !91, !93, !94, !95}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !45, file: !46, line: 51, baseType: !4, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !45, file: !46, line: 54, baseType: !12, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !45, file: !46, line: 55, baseType: !12, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !45, file: !46, line: 56, baseType: !12, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !45, file: !46, line: 57, baseType: !12, size: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !45, file: !46, line: 58, baseType: !12, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !45, file: !46, line: 59, baseType: !12, size: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !45, file: !46, line: 60, baseType: !12, size: 64, offset: 448)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !45, file: !46, line: 61, baseType: !12, size: 64, offset: 512)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !45, file: !46, line: 64, baseType: !12, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !45, file: !46, line: 65, baseType: !12, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !45, file: !46, line: 66, baseType: !12, size: 64, offset: 704)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !45, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !46, line: 36, flags: DIFlagFwdDecl)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !45, file: !46, line: 70, baseType: !64, size: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !45, file: !46, line: 72, baseType: !4, size: 32, offset: 896)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !45, file: !46, line: 73, baseType: !4, size: 32, offset: 928)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !45, file: !46, line: 74, baseType: !68, size: 64, offset: 960)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !69, line: 152, baseType: !70)
!69 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!70 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !45, file: !46, line: 77, baseType: !72, size: 16, offset: 1024)
!72 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !45, file: !46, line: 78, baseType: !74, size: 8, offset: 1040)
!74 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !45, file: !46, line: 79, baseType: !76, size: 8, offset: 1048)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 1)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !45, file: !46, line: 81, baseType: !80, size: 64, offset: 1088)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !46, line: 43, baseType: null)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !45, file: !46, line: 89, baseType: !83, size: 64, offset: 1152)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !69, line: 153, baseType: !70)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !45, file: !46, line: 91, baseType: !85, size: 64, offset: 1216)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !46, line: 37, flags: DIFlagFwdDecl)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !45, file: !46, line: 92, baseType: !88, size: 64, offset: 1280)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !46, line: 38, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !45, file: !46, line: 93, baseType: !64, size: 64, offset: 1344)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !45, file: !46, line: 94, baseType: !92, size: 64, offset: 1408)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !45, file: !46, line: 95, baseType: !35, size: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !45, file: !46, line: 96, baseType: !4, size: 32, offset: 1536)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !45, file: !46, line: 98, baseType: !96, size: 160, offset: 1568)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 20)
!99 = !DILocation(line: 12, column: 15, scope: !33)
!100 = !DILocation(line: 13, column: 20, scope: !101)
!101 = distinct !DILexicalBlock(scope: !33, file: !1, line: 13, column: 13)
!102 = !DILocation(line: 13, column: 18, scope: !101)
!103 = !DILocation(line: 13, column: 41, scope: !101)
!104 = !DILocation(line: 13, column: 13, scope: !33)
!105 = !DILocation(line: 15, column: 31, scope: !106)
!106 = distinct !DILexicalBlock(scope: !101, file: !1, line: 14, column: 9)
!107 = !DILocation(line: 15, column: 29, scope: !106)
!108 = !DILocation(line: 16, column: 15, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 16, column: 15)
!110 = !DILocation(line: 16, column: 33, scope: !109)
!111 = !DILocation(line: 16, column: 15, scope: !106)
!112 = !DILocation(line: 18, column: 23, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !1, line: 18, column: 17)
!114 = distinct !DILexicalBlock(scope: !109, file: !1, line: 17, column: 11)
!115 = !DILocation(line: 18, column: 42, scope: !113)
!116 = !DILocation(line: 18, column: 40, scope: !113)
!117 = !DILocation(line: 18, column: 76, scope: !113)
!118 = !DILocation(line: 18, column: 74, scope: !113)
!119 = !DILocation(line: 18, column: 63, scope: !113)
!120 = !DILocation(line: 18, column: 98, scope: !113)
!121 = !DILocation(line: 18, column: 17, scope: !113)
!122 = !DILocation(line: 18, column: 117, scope: !113)
!123 = !DILocation(line: 18, column: 17, scope: !114)
!124 = !DILocation(line: 20, column: 15, scope: !125)
!125 = distinct !DILexicalBlock(scope: !113, file: !1, line: 19, column: 13)
!126 = !DILocation(line: 21, column: 15, scope: !125)
!127 = !DILocation(line: 21, column: 32, scope: !125)
!128 = !DILocation(line: 21, column: 53, scope: !125)
!129 = !DILocation(line: 22, column: 13, scope: !125)
!130 = !DILocation(line: 24, column: 20, scope: !114)
!131 = !DILocation(line: 24, column: 13, scope: !114)
!132 = !DILocation(line: 25, column: 11, scope: !114)
!133 = !DILocation(line: 27, column: 9, scope: !106)
!134 = !DILocation(line: 30, column: 5, scope: !34)
!135 = !DILocation(line: 32, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !22, file: !1, line: 32, column: 9)
!137 = !DILocation(line: 32, column: 9, scope: !22)
!138 = !DILocation(line: 34, column: 7, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !1, line: 33, column: 5)
!140 = !DILocation(line: 35, column: 5, scope: !139)
!141 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !142, file: !1, line: 39, type: !4)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 38, column: 7)
!143 = distinct !DILexicalBlock(scope: !136, file: !1, line: 37, column: 5)
!144 = !DILocation(line: 39, column: 13, scope: !142)
!145 = !DILocalVariable(name: "_goodB2G1_n_0", scope: !142, file: !1, line: 40, type: !4)
!146 = !DILocation(line: 40, column: 13, scope: !142)
!147 = !DILocalVariable(name: "_goodB2G1_intVariable_0", scope: !142, file: !1, line: 41, type: !4)
!148 = !DILocation(line: 41, column: 13, scope: !142)
!149 = !DILocation(line: 42, column: 20, scope: !150)
!150 = distinct !DILexicalBlock(scope: !142, file: !1, line: 42, column: 13)
!151 = !DILocation(line: 42, column: 13, scope: !150)
!152 = !DILocation(line: 42, column: 60, scope: !150)
!153 = !DILocation(line: 42, column: 13, scope: !142)
!154 = !DILocation(line: 44, column: 15, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 44, column: 15)
!156 = distinct !DILexicalBlock(scope: !150, file: !1, line: 43, column: 9)
!157 = !DILocation(line: 44, column: 29, scope: !155)
!158 = !DILocation(line: 44, column: 15, scope: !156)
!159 = !DILocation(line: 46, column: 37, scope: !160)
!160 = distinct !DILexicalBlock(scope: !155, file: !1, line: 45, column: 11)
!161 = !DILocation(line: 47, column: 32, scope: !162)
!162 = distinct !DILexicalBlock(scope: !160, file: !1, line: 47, column: 13)
!163 = !DILocation(line: 47, column: 18, scope: !162)
!164 = !DILocation(line: 47, column: 37, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !1, line: 47, column: 13)
!166 = !DILocation(line: 47, column: 53, scope: !165)
!167 = !DILocation(line: 47, column: 51, scope: !165)
!168 = !DILocation(line: 47, column: 13, scope: !162)
!169 = !DILocation(line: 49, column: 38, scope: !170)
!170 = distinct !DILexicalBlock(scope: !165, file: !1, line: 48, column: 13)
!171 = !DILocation(line: 50, column: 13, scope: !170)
!172 = !DILocation(line: 47, column: 81, scope: !165)
!173 = !DILocation(line: 47, column: 13, scope: !165)
!174 = distinct !{!174, !168, !175, !176}
!175 = !DILocation(line: 50, column: 13, scope: !162)
!176 = !{!"llvm.loop.mustprogress"}
!177 = !DILocation(line: 52, column: 26, scope: !160)
!178 = !DILocation(line: 52, column: 13, scope: !160)
!179 = !DILocation(line: 53, column: 11, scope: !160)
!180 = !DILocation(line: 55, column: 9, scope: !156)
!181 = !DILocation(line: 32, column: 28, scope: !136)
!182 = !DILabel(scope: !22, name: "goodB2G1_label_", file: !1, line: 60)
!183 = !DILocation(line: 60, column: 5, scope: !22)
!184 = !DILocation(line: 66, column: 3, scope: !9)
!185 = !DILocation(line: 67, column: 3, scope: !9)
!186 = !DILocalVariable(name: "_goodG2B2_data_0", scope: !187, file: !1, line: 69, type: !12)
!187 = distinct !DILexicalBlock(scope: !9, file: !1, line: 68, column: 3)
!188 = !DILocation(line: 69, column: 11, scope: !187)
!189 = !DILocalVariable(name: "_goodG2B2_dataBuffer_0", scope: !187, file: !1, line: 70, type: !23)
!190 = !DILocation(line: 70, column: 10, scope: !187)
!191 = !DILocation(line: 71, column: 24, scope: !187)
!192 = !DILocation(line: 71, column: 22, scope: !187)
!193 = !DILocation(line: 72, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !187, file: !1, line: 72, column: 9)
!195 = !DILocation(line: 72, column: 9, scope: !187)
!196 = !DILocation(line: 74, column: 14, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !1, line: 73, column: 5)
!198 = !DILocation(line: 74, column: 7, scope: !197)
!199 = !DILocation(line: 75, column: 5, scope: !197)
!200 = !DILocation(line: 77, column: 9, scope: !201)
!201 = distinct !DILexicalBlock(scope: !187, file: !1, line: 77, column: 9)
!202 = !DILocation(line: 77, column: 9, scope: !187)
!203 = !DILocalVariable(name: "_goodG2B2_i_0", scope: !204, file: !1, line: 80, type: !4)
!204 = distinct !DILexicalBlock(scope: !205, file: !1, line: 79, column: 7)
!205 = distinct !DILexicalBlock(scope: !201, file: !1, line: 78, column: 5)
!206 = !DILocation(line: 80, column: 13, scope: !204)
!207 = !DILocalVariable(name: "_goodG2B2_n_0", scope: !204, file: !1, line: 81, type: !4)
!208 = !DILocation(line: 81, column: 13, scope: !204)
!209 = !DILocalVariable(name: "_goodG2B2_intVariable_0", scope: !204, file: !1, line: 82, type: !4)
!210 = !DILocation(line: 82, column: 13, scope: !204)
!211 = !DILocation(line: 83, column: 20, scope: !212)
!212 = distinct !DILexicalBlock(scope: !204, file: !1, line: 83, column: 13)
!213 = !DILocation(line: 83, column: 13, scope: !212)
!214 = !DILocation(line: 83, column: 60, scope: !212)
!215 = !DILocation(line: 83, column: 13, scope: !204)
!216 = !DILocation(line: 85, column: 35, scope: !217)
!217 = distinct !DILexicalBlock(scope: !212, file: !1, line: 84, column: 9)
!218 = !DILocation(line: 86, column: 11, scope: !217)
!219 = !DILocation(line: 86, column: 18, scope: !217)
!220 = !DILocation(line: 87, column: 24, scope: !217)
!221 = !DILocation(line: 87, column: 11, scope: !217)
!222 = !DILocation(line: 88, column: 9, scope: !217)
!223 = !DILocation(line: 91, column: 5, scope: !205)
!224 = !DILocation(line: 77, column: 27, scope: !201)
!225 = !DILabel(scope: !187, name: "goodG2B2_label_", file: !1, line: 93)
!226 = !DILocation(line: 93, column: 5, scope: !187)
!227 = !DILocation(line: 98, column: 3, scope: !187)
!228 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_file_08_good_label_", file: !1, line: 99)
!229 = !DILocation(line: 99, column: 3, scope: !9)
!230 = !DILocation(line: 104, column: 1, scope: !9)
