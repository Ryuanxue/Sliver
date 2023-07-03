; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_04169CWE606_Unchecked_Loop_Condition__char_file_04226_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_04169CWE606_Unchecked_Loop_Condition__char_file_04226_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@STATIC_CONST_TRUE = external dso_local global i32, align 4
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@STATIC_CONST_FALSE = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_04169CWE606_Unchecked_Loop_Condition__char_file_04226_1(i8* %_goodB2G2_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G2_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G2_dataLen_0 = alloca i64, align 8
  %_goodB2G2_pFile_0 = alloca %struct._IO_FILE*, align 8
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
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !29
  %tobool = icmp ne i32 %1, 0, !dbg !29
  br i1 %tobool, label %if.then, label %if.end13, !dbg !31

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !38
  %2 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !39
  %call = call i64 @strlen(i8* %2) #6, !dbg !40
  store i64 %call, i64* %_goodB2G2_dataLen_0, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_goodB2G2_pFile_0, metadata !41, metadata !DIExpression()), !dbg !99
  %3 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !100
  %sub = sub i64 100, %3, !dbg !102
  %cmp = icmp ugt i64 %sub, 1, !dbg !103
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !104

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !105
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %_goodB2G2_pFile_0, align 8, !dbg !107
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G2_pFile_0, align 8, !dbg !108
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !110
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !111

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !112
  %6 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !115
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !116
  %7 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !117
  %sub5 = sub i64 100, %7, !dbg !118
  %conv = trunc i64 %sub5 to i32, !dbg !119
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G2_pFile_0, align 8, !dbg !120
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !121
  %cmp7 = icmp eq i8* %call6, null, !dbg !122
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !123

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !124
  %9 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !126
  %10 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !127
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !126
  store i8 0, i8* %arrayidx, align 1, !dbg !128
  br label %if.end, !dbg !129

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G2_pFile_0, align 8, !dbg !130
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !131
  br label %if.end11, !dbg !132

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !133

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !134

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !135
  %tobool14 = icmp ne i32 %12, 0, !dbg !135
  br i1 %tobool14, label %if.then15, label %if.end28, !dbg !137

if.then15:                                        ; preds = %if.end13
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_i_0, metadata !138, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_n_0, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_intVariable_0, metadata !144, metadata !DIExpression()), !dbg !145
  %13 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !146
  %call16 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_goodB2G2_n_0) #7, !dbg !148
  %cmp17 = icmp eq i32 %call16, 1, !dbg !149
  br i1 %cmp17, label %if.then19, label %if.end27, !dbg !150

if.then19:                                        ; preds = %if.then15
  %14 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !151
  %cmp20 = icmp slt i32 %14, 10000, !dbg !154
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !155

if.then22:                                        ; preds = %if.then19
  store i32 0, i32* %_goodB2G2_intVariable_0, align 4, !dbg !156
  store i32 0, i32* %_goodB2G2_i_0, align 4, !dbg !158
  br label %for.cond, !dbg !160

for.cond:                                         ; preds = %for.inc, %if.then22
  %15 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !161
  %16 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !163
  %cmp23 = icmp slt i32 %15, %16, !dbg !164
  br i1 %cmp23, label %for.body, label %for.end, !dbg !165

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !166
  %inc = add nsw i32 %17, 1, !dbg !166
  store i32 %inc, i32* %_goodB2G2_intVariable_0, align 4, !dbg !166
  br label %for.inc, !dbg !168

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !169
  %inc25 = add nsw i32 %18, 1, !dbg !169
  store i32 %inc25, i32* %_goodB2G2_i_0, align 4, !dbg !169
  br label %for.cond, !dbg !170, !llvm.loop !171

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !174
  call void @printIntLine(i32 %19), !dbg !175
  br label %if.end26, !dbg !176

if.end26:                                         ; preds = %for.end, %if.then19
  br label %if.end27, !dbg !177

if.end27:                                         ; preds = %if.end26, %if.then15
  br label %if.end28, !dbg !178

if.end28:                                         ; preds = %if.end27, %if.end13
  br label %goodB2G2_label_, !dbg !135

goodB2G2_label_:                                  ; preds = %if.end28
  call void @llvm.dbg.label(metadata !179), !dbg !180
  call void @llvm.dbg.declare(metadata i8** %_goodG2B1_data_0, metadata !181, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B1_dataBuffer_0, metadata !184, metadata !DIExpression()), !dbg !185
  %20 = bitcast [100 x i8]* %_goodG2B1_dataBuffer_0 to i8*, !dbg !185
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 100, i1 false), !dbg !185
  %arraydecay29 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B1_dataBuffer_0, i64 0, i64 0, !dbg !186
  store i8* %arraydecay29, i8** %_goodG2B1_data_0, align 8, !dbg !187
  %21 = load i32, i32* @STATIC_CONST_FALSE, align 4, !dbg !188
  %tobool30 = icmp ne i32 %21, 0, !dbg !188
  br i1 %tobool30, label %if.then31, label %if.else, !dbg !190

if.then31:                                        ; preds = %goodB2G2_label_
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !191
  br label %if.end33, !dbg !193

if.else:                                          ; preds = %goodB2G2_label_
  %22 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !194
  %call32 = call i8* @strcpy(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !196
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then31
  %23 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !197
  %tobool34 = icmp ne i32 %23, 0, !dbg !197
  br i1 %tobool34, label %if.then35, label %if.end41, !dbg !199

if.then35:                                        ; preds = %if.end33
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !200, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_n_0, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_intVariable_0, metadata !206, metadata !DIExpression()), !dbg !207
  %24 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !208
  %call36 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_goodG2B1_n_0) #7, !dbg !210
  %cmp37 = icmp eq i32 %call36, 1, !dbg !211
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !212

if.then39:                                        ; preds = %if.then35
  store i32 0, i32* %_goodG2B1_intVariable_0, align 4, !dbg !213
  %25 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !215
  %26 = load i32, i32* %_goodG2B1_n_0, align 4, !dbg !216
  call void %25(i32 %26), !dbg !215
  %27 = load i32, i32* %_goodG2B1_intVariable_0, align 4, !dbg !217
  call void @printIntLine(i32 %27), !dbg !218
  br label %if.end40, !dbg !219

if.end40:                                         ; preds = %if.then39, %if.then35
  br label %if.end41, !dbg !220

if.end41:                                         ; preds = %if.end40, %if.end33
  br label %goodG2B1_label_, !dbg !197

goodG2B1_label_:                                  ; preds = %if.end41
  call void @llvm.dbg.label(metadata !221), !dbg !222
  br label %CWE606_Unchecked_Loop_Condition__char_file_04_good_label_, !dbg !223

CWE606_Unchecked_Loop_Condition__char_file_04_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !224), !dbg !225
  ret void, !dbg !226
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_04169CWE606_Unchecked_Loop_Condition__char_file_04226_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_077/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_04169CWE606_Unchecked_Loop_Condition__char_file_04226_1", scope: !1, file: !1, line: 5, type: !10, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G2_data_0", arg: 1, scope: !9, file: !1, line: 5, type: !12)
!18 = !DILocation(line: 5, column: 111, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 5, type: !14)
!20 = !DILocation(line: 5, column: 136, scope: !9)
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
!41 = !DILocalVariable(name: "_goodB2G2_pFile_0", scope: !33, file: !1, line: 14, type: !42)
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
!99 = !DILocation(line: 14, column: 15, scope: !33)
!100 = !DILocation(line: 15, column: 20, scope: !101)
!101 = distinct !DILexicalBlock(scope: !33, file: !1, line: 15, column: 13)
!102 = !DILocation(line: 15, column: 18, scope: !101)
!103 = !DILocation(line: 15, column: 41, scope: !101)
!104 = !DILocation(line: 15, column: 13, scope: !33)
!105 = !DILocation(line: 17, column: 31, scope: !106)
!106 = distinct !DILexicalBlock(scope: !101, file: !1, line: 16, column: 9)
!107 = !DILocation(line: 17, column: 29, scope: !106)
!108 = !DILocation(line: 18, column: 15, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 18, column: 15)
!110 = !DILocation(line: 18, column: 33, scope: !109)
!111 = !DILocation(line: 18, column: 15, scope: !106)
!112 = !DILocation(line: 20, column: 23, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !1, line: 20, column: 17)
!114 = distinct !DILexicalBlock(scope: !109, file: !1, line: 19, column: 11)
!115 = !DILocation(line: 20, column: 42, scope: !113)
!116 = !DILocation(line: 20, column: 40, scope: !113)
!117 = !DILocation(line: 20, column: 76, scope: !113)
!118 = !DILocation(line: 20, column: 74, scope: !113)
!119 = !DILocation(line: 20, column: 63, scope: !113)
!120 = !DILocation(line: 20, column: 98, scope: !113)
!121 = !DILocation(line: 20, column: 17, scope: !113)
!122 = !DILocation(line: 20, column: 117, scope: !113)
!123 = !DILocation(line: 20, column: 17, scope: !114)
!124 = !DILocation(line: 22, column: 15, scope: !125)
!125 = distinct !DILexicalBlock(scope: !113, file: !1, line: 21, column: 13)
!126 = !DILocation(line: 23, column: 15, scope: !125)
!127 = !DILocation(line: 23, column: 32, scope: !125)
!128 = !DILocation(line: 23, column: 53, scope: !125)
!129 = !DILocation(line: 24, column: 13, scope: !125)
!130 = !DILocation(line: 26, column: 20, scope: !114)
!131 = !DILocation(line: 26, column: 13, scope: !114)
!132 = !DILocation(line: 27, column: 11, scope: !114)
!133 = !DILocation(line: 29, column: 9, scope: !106)
!134 = !DILocation(line: 32, column: 5, scope: !34)
!135 = !DILocation(line: 34, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !22, file: !1, line: 34, column: 9)
!137 = !DILocation(line: 34, column: 9, scope: !22)
!138 = !DILocalVariable(name: "_goodB2G2_i_0", scope: !139, file: !1, line: 37, type: !4)
!139 = distinct !DILexicalBlock(scope: !140, file: !1, line: 36, column: 7)
!140 = distinct !DILexicalBlock(scope: !136, file: !1, line: 35, column: 5)
!141 = !DILocation(line: 37, column: 13, scope: !139)
!142 = !DILocalVariable(name: "_goodB2G2_n_0", scope: !139, file: !1, line: 38, type: !4)
!143 = !DILocation(line: 38, column: 13, scope: !139)
!144 = !DILocalVariable(name: "_goodB2G2_intVariable_0", scope: !139, file: !1, line: 39, type: !4)
!145 = !DILocation(line: 39, column: 13, scope: !139)
!146 = !DILocation(line: 40, column: 20, scope: !147)
!147 = distinct !DILexicalBlock(scope: !139, file: !1, line: 40, column: 13)
!148 = !DILocation(line: 40, column: 13, scope: !147)
!149 = !DILocation(line: 40, column: 60, scope: !147)
!150 = !DILocation(line: 40, column: 13, scope: !139)
!151 = !DILocation(line: 42, column: 15, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !1, line: 42, column: 15)
!153 = distinct !DILexicalBlock(scope: !147, file: !1, line: 41, column: 9)
!154 = !DILocation(line: 42, column: 29, scope: !152)
!155 = !DILocation(line: 42, column: 15, scope: !153)
!156 = !DILocation(line: 44, column: 37, scope: !157)
!157 = distinct !DILexicalBlock(scope: !152, file: !1, line: 43, column: 11)
!158 = !DILocation(line: 45, column: 32, scope: !159)
!159 = distinct !DILexicalBlock(scope: !157, file: !1, line: 45, column: 13)
!160 = !DILocation(line: 45, column: 18, scope: !159)
!161 = !DILocation(line: 45, column: 37, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !1, line: 45, column: 13)
!163 = !DILocation(line: 45, column: 53, scope: !162)
!164 = !DILocation(line: 45, column: 51, scope: !162)
!165 = !DILocation(line: 45, column: 13, scope: !159)
!166 = !DILocation(line: 47, column: 38, scope: !167)
!167 = distinct !DILexicalBlock(scope: !162, file: !1, line: 46, column: 13)
!168 = !DILocation(line: 48, column: 13, scope: !167)
!169 = !DILocation(line: 45, column: 81, scope: !162)
!170 = !DILocation(line: 45, column: 13, scope: !162)
!171 = distinct !{!171, !165, !172, !173}
!172 = !DILocation(line: 48, column: 13, scope: !159)
!173 = !{!"llvm.loop.mustprogress"}
!174 = !DILocation(line: 50, column: 26, scope: !157)
!175 = !DILocation(line: 50, column: 13, scope: !157)
!176 = !DILocation(line: 51, column: 11, scope: !157)
!177 = !DILocation(line: 53, column: 9, scope: !153)
!178 = !DILocation(line: 56, column: 5, scope: !140)
!179 = !DILabel(scope: !22, name: "goodB2G2_label_", file: !1, line: 58)
!180 = !DILocation(line: 58, column: 5, scope: !22)
!181 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !182, file: !1, line: 65, type: !12)
!182 = distinct !DILexicalBlock(scope: !9, file: !1, line: 64, column: 3)
!183 = !DILocation(line: 65, column: 11, scope: !182)
!184 = !DILocalVariable(name: "_goodG2B1_dataBuffer_0", scope: !182, file: !1, line: 66, type: !23)
!185 = !DILocation(line: 66, column: 10, scope: !182)
!186 = !DILocation(line: 67, column: 24, scope: !182)
!187 = !DILocation(line: 67, column: 22, scope: !182)
!188 = !DILocation(line: 68, column: 9, scope: !189)
!189 = distinct !DILexicalBlock(scope: !182, file: !1, line: 68, column: 9)
!190 = !DILocation(line: 68, column: 9, scope: !182)
!191 = !DILocation(line: 70, column: 7, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !1, line: 69, column: 5)
!193 = !DILocation(line: 71, column: 5, scope: !192)
!194 = !DILocation(line: 74, column: 14, scope: !195)
!195 = distinct !DILexicalBlock(scope: !189, file: !1, line: 73, column: 5)
!196 = !DILocation(line: 74, column: 7, scope: !195)
!197 = !DILocation(line: 77, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !182, file: !1, line: 77, column: 9)
!199 = !DILocation(line: 77, column: 9, scope: !182)
!200 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !201, file: !1, line: 80, type: !4)
!201 = distinct !DILexicalBlock(scope: !202, file: !1, line: 79, column: 7)
!202 = distinct !DILexicalBlock(scope: !198, file: !1, line: 78, column: 5)
!203 = !DILocation(line: 80, column: 13, scope: !201)
!204 = !DILocalVariable(name: "_goodG2B1_n_0", scope: !201, file: !1, line: 81, type: !4)
!205 = !DILocation(line: 81, column: 13, scope: !201)
!206 = !DILocalVariable(name: "_goodG2B1_intVariable_0", scope: !201, file: !1, line: 82, type: !4)
!207 = !DILocation(line: 82, column: 13, scope: !201)
!208 = !DILocation(line: 83, column: 20, scope: !209)
!209 = distinct !DILexicalBlock(scope: !201, file: !1, line: 83, column: 13)
!210 = !DILocation(line: 83, column: 13, scope: !209)
!211 = !DILocation(line: 83, column: 60, scope: !209)
!212 = !DILocation(line: 83, column: 13, scope: !201)
!213 = !DILocation(line: 85, column: 35, scope: !214)
!214 = distinct !DILexicalBlock(scope: !209, file: !1, line: 84, column: 9)
!215 = !DILocation(line: 86, column: 11, scope: !214)
!216 = !DILocation(line: 86, column: 18, scope: !214)
!217 = !DILocation(line: 87, column: 24, scope: !214)
!218 = !DILocation(line: 87, column: 11, scope: !214)
!219 = !DILocation(line: 88, column: 9, scope: !214)
!220 = !DILocation(line: 91, column: 5, scope: !202)
!221 = !DILabel(scope: !182, name: "goodG2B1_label_", file: !1, line: 93)
!222 = !DILocation(line: 93, column: 5, scope: !182)
!223 = !DILocation(line: 98, column: 3, scope: !182)
!224 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_file_04_good_label_", file: !1, line: 99)
!225 = !DILocation(line: 99, column: 3, scope: !9)
!226 = !DILocation(line: 104, column: 1, scope: !9)
