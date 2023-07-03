; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_16108CWE606_Unchecked_Loop_Condition__char_file_16163_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_16108CWE606_Unchecked_Loop_Condition__char_file_16163_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_16108CWE606_Unchecked_Loop_Condition__char_file_16163_1(i8* %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_pFile_0 = alloca %struct._IO_FILE*, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_n_0 = alloca i32, align 4
  %_goodG2B_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !28
  br label %while.body, !dbg !29

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !30, metadata !DIExpression()), !dbg !36
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !37
  %call = call i64 @strlen(i8* %1) #6, !dbg !38
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !36
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_goodB2G_pFile_0, metadata !39, metadata !DIExpression()), !dbg !97
  %2 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !98
  %sub = sub i64 100, %2, !dbg !100
  %cmp = icmp ugt i64 %sub, 1, !dbg !101
  br i1 %cmp, label %if.then, label %if.end11, !dbg !102

if.then:                                          ; preds = %while.body
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !103
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !105
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !106
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !108
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !109

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !110
  %5 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !113
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !114
  %6 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !115
  %sub4 = sub i64 100, %6, !dbg !116
  %conv = trunc i64 %sub4 to i32, !dbg !117
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !118
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !119
  %cmp6 = icmp eq i8* %call5, null, !dbg !120
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !121

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !122
  %8 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !124
  %9 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !125
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !124
  store i8 0, i8* %arrayidx, align 1, !dbg !126
  br label %if.end, !dbg !127

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !128
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !129
  br label %if.end10, !dbg !130

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !131

if.end11:                                         ; preds = %if.end10, %while.body
  br label %while.end, !dbg !132

while.end:                                        ; preds = %if.end11
  br label %while.body12, !dbg !133

while.body12:                                     ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !134, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !140, metadata !DIExpression()), !dbg !141
  %11 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !142
  %call13 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_goodB2G_n_0) #7, !dbg !144
  %cmp14 = icmp eq i32 %call13, 1, !dbg !145
  br i1 %cmp14, label %if.then16, label %if.end24, !dbg !146

if.then16:                                        ; preds = %while.body12
  %12 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !147
  %cmp17 = icmp slt i32 %12, 10000, !dbg !150
  br i1 %cmp17, label %if.then19, label %if.end23, !dbg !151

if.then19:                                        ; preds = %if.then16
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !152
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !154
  br label %for.cond, !dbg !156

for.cond:                                         ; preds = %for.inc, %if.then19
  %13 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !157
  %14 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !159
  %cmp20 = icmp slt i32 %13, %14, !dbg !160
  br i1 %cmp20, label %for.body, label %for.end, !dbg !161

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !162
  %inc = add nsw i32 %15, 1, !dbg !162
  store i32 %inc, i32* %_goodB2G_intVariable_0, align 4, !dbg !162
  br label %for.inc, !dbg !164

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !165
  %inc22 = add nsw i32 %16, 1, !dbg !165
  store i32 %inc22, i32* %_goodB2G_i_0, align 4, !dbg !165
  br label %for.cond, !dbg !166, !llvm.loop !167

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !170
  call void @printIntLine(i32 %17), !dbg !171
  br label %if.end23, !dbg !172

if.end23:                                         ; preds = %for.end, %if.then16
  br label %if.end24, !dbg !173

if.end24:                                         ; preds = %if.end23, %while.body12
  br label %while.end25, !dbg !174

while.end25:                                      ; preds = %if.end24
  br label %goodB2G_label_, !dbg !133

goodB2G_label_:                                   ; preds = %while.end25
  call void @llvm.dbg.label(metadata !175), !dbg !176
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !177, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !180, metadata !DIExpression()), !dbg !181
  %18 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !181
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 100, i1 false), !dbg !181
  %arraydecay26 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !182
  store i8* %arraydecay26, i8** %_goodG2B_data_0, align 8, !dbg !183
  br label %while.body27, !dbg !184

while.body27:                                     ; preds = %goodB2G_label_
  %19 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !185
  %call28 = call i8* @strcpy(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !187
  br label %while.end29, !dbg !188

while.end29:                                      ; preds = %while.body27
  br label %while.body30, !dbg !189

while.body30:                                     ; preds = %while.end29
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !190, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_n_0, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_intVariable_0, metadata !196, metadata !DIExpression()), !dbg !197
  %20 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !198
  %call31 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_goodG2B_n_0) #7, !dbg !200
  %cmp32 = icmp eq i32 %call31, 1, !dbg !201
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !202

if.then34:                                        ; preds = %while.body30
  store i32 0, i32* %_goodG2B_intVariable_0, align 4, !dbg !203
  %21 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !205
  %22 = load i32, i32* %_goodG2B_n_0, align 4, !dbg !206
  call void %21(i32 %22), !dbg !205
  %23 = load i32, i32* %_goodG2B_intVariable_0, align 4, !dbg !207
  call void @printIntLine(i32 %23), !dbg !208
  br label %if.end35, !dbg !209

if.end35:                                         ; preds = %if.then34, %while.body30
  br label %while.end36, !dbg !210

while.end36:                                      ; preds = %if.end35
  br label %goodG2B_label_, !dbg !189

goodG2B_label_:                                   ; preds = %while.end36
  call void @llvm.dbg.label(metadata !211), !dbg !212
  br label %CWE606_Unchecked_Loop_Condition__char_file_16_good_label_, !dbg !213

CWE606_Unchecked_Loop_Condition__char_file_16_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !214), !dbg !215
  ret void, !dbg !216
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_16108CWE606_Unchecked_Loop_Condition__char_file_16163_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_089/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_16108CWE606_Unchecked_Loop_Condition__char_file_16163_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 111, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 135, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !22, file: !1, line: 6, type: !23)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 5, column: 3)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 6, column: 10, scope: !22)
!27 = !DILocation(line: 7, column: 23, scope: !22)
!28 = !DILocation(line: 7, column: 21, scope: !22)
!29 = !DILocation(line: 8, column: 5, scope: !22)
!30 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !31, file: !1, line: 11, type: !33)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 10, column: 7)
!32 = distinct !DILexicalBlock(scope: !22, file: !1, line: 9, column: 5)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocation(line: 11, column: 16, scope: !31)
!37 = !DILocation(line: 11, column: 44, scope: !31)
!38 = !DILocation(line: 11, column: 37, scope: !31)
!39 = !DILocalVariable(name: "_goodB2G_pFile_0", scope: !31, file: !1, line: 12, type: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !42, line: 7, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !44, line: 49, size: 1728, elements: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !61, !63, !64, !65, !69, !71, !73, !77, !80, !82, !85, !88, !89, !91, !92, !93}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !43, file: !44, line: 51, baseType: !4, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !43, file: !44, line: 54, baseType: !12, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !43, file: !44, line: 55, baseType: !12, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !43, file: !44, line: 56, baseType: !12, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !43, file: !44, line: 57, baseType: !12, size: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !43, file: !44, line: 58, baseType: !12, size: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !43, file: !44, line: 59, baseType: !12, size: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !43, file: !44, line: 60, baseType: !12, size: 64, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !43, file: !44, line: 61, baseType: !12, size: 64, offset: 512)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !43, file: !44, line: 64, baseType: !12, size: 64, offset: 576)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !43, file: !44, line: 65, baseType: !12, size: 64, offset: 640)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !43, file: !44, line: 66, baseType: !12, size: 64, offset: 704)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !43, file: !44, line: 68, baseType: !59, size: 64, offset: 768)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !44, line: 36, flags: DIFlagFwdDecl)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !43, file: !44, line: 70, baseType: !62, size: 64, offset: 832)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !43, file: !44, line: 72, baseType: !4, size: 32, offset: 896)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !43, file: !44, line: 73, baseType: !4, size: 32, offset: 928)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !43, file: !44, line: 74, baseType: !66, size: 64, offset: 960)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !67, line: 152, baseType: !68)
!67 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!68 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !43, file: !44, line: 77, baseType: !70, size: 16, offset: 1024)
!70 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !43, file: !44, line: 78, baseType: !72, size: 8, offset: 1040)
!72 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !43, file: !44, line: 79, baseType: !74, size: 8, offset: 1048)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !43, file: !44, line: 81, baseType: !78, size: 64, offset: 1088)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !44, line: 43, baseType: null)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !43, file: !44, line: 89, baseType: !81, size: 64, offset: 1152)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !67, line: 153, baseType: !68)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !43, file: !44, line: 91, baseType: !83, size: 64, offset: 1216)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !44, line: 37, flags: DIFlagFwdDecl)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !43, file: !44, line: 92, baseType: !86, size: 64, offset: 1280)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !44, line: 38, flags: DIFlagFwdDecl)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !43, file: !44, line: 93, baseType: !62, size: 64, offset: 1344)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !43, file: !44, line: 94, baseType: !90, size: 64, offset: 1408)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !43, file: !44, line: 95, baseType: !33, size: 64, offset: 1472)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !43, file: !44, line: 96, baseType: !4, size: 32, offset: 1536)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !43, file: !44, line: 98, baseType: !94, size: 160, offset: 1568)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 20)
!97 = !DILocation(line: 12, column: 15, scope: !31)
!98 = !DILocation(line: 13, column: 20, scope: !99)
!99 = distinct !DILexicalBlock(scope: !31, file: !1, line: 13, column: 13)
!100 = !DILocation(line: 13, column: 18, scope: !99)
!101 = !DILocation(line: 13, column: 40, scope: !99)
!102 = !DILocation(line: 13, column: 13, scope: !31)
!103 = !DILocation(line: 15, column: 30, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !1, line: 14, column: 9)
!105 = !DILocation(line: 15, column: 28, scope: !104)
!106 = !DILocation(line: 16, column: 15, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !1, line: 16, column: 15)
!108 = !DILocation(line: 16, column: 32, scope: !107)
!109 = !DILocation(line: 16, column: 15, scope: !104)
!110 = !DILocation(line: 18, column: 23, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !1, line: 18, column: 17)
!112 = distinct !DILexicalBlock(scope: !107, file: !1, line: 17, column: 11)
!113 = !DILocation(line: 18, column: 41, scope: !111)
!114 = !DILocation(line: 18, column: 39, scope: !111)
!115 = !DILocation(line: 18, column: 74, scope: !111)
!116 = !DILocation(line: 18, column: 72, scope: !111)
!117 = !DILocation(line: 18, column: 61, scope: !111)
!118 = !DILocation(line: 18, column: 95, scope: !111)
!119 = !DILocation(line: 18, column: 17, scope: !111)
!120 = !DILocation(line: 18, column: 113, scope: !111)
!121 = !DILocation(line: 18, column: 17, scope: !112)
!122 = !DILocation(line: 20, column: 15, scope: !123)
!123 = distinct !DILexicalBlock(scope: !111, file: !1, line: 19, column: 13)
!124 = !DILocation(line: 21, column: 15, scope: !123)
!125 = !DILocation(line: 21, column: 31, scope: !123)
!126 = !DILocation(line: 21, column: 51, scope: !123)
!127 = !DILocation(line: 22, column: 13, scope: !123)
!128 = !DILocation(line: 24, column: 20, scope: !112)
!129 = !DILocation(line: 24, column: 13, scope: !112)
!130 = !DILocation(line: 25, column: 11, scope: !112)
!131 = !DILocation(line: 27, column: 9, scope: !104)
!132 = !DILocation(line: 30, column: 7, scope: !32)
!133 = !DILocation(line: 33, column: 5, scope: !22)
!134 = !DILocalVariable(name: "_goodB2G_i_0", scope: !135, file: !1, line: 36, type: !4)
!135 = distinct !DILexicalBlock(scope: !136, file: !1, line: 35, column: 7)
!136 = distinct !DILexicalBlock(scope: !22, file: !1, line: 34, column: 5)
!137 = !DILocation(line: 36, column: 13, scope: !135)
!138 = !DILocalVariable(name: "_goodB2G_n_0", scope: !135, file: !1, line: 37, type: !4)
!139 = !DILocation(line: 37, column: 13, scope: !135)
!140 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !135, file: !1, line: 38, type: !4)
!141 = !DILocation(line: 38, column: 13, scope: !135)
!142 = !DILocation(line: 39, column: 20, scope: !143)
!143 = distinct !DILexicalBlock(scope: !135, file: !1, line: 39, column: 13)
!144 = !DILocation(line: 39, column: 13, scope: !143)
!145 = !DILocation(line: 39, column: 58, scope: !143)
!146 = !DILocation(line: 39, column: 13, scope: !135)
!147 = !DILocation(line: 41, column: 15, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !1, line: 41, column: 15)
!149 = distinct !DILexicalBlock(scope: !143, file: !1, line: 40, column: 9)
!150 = !DILocation(line: 41, column: 28, scope: !148)
!151 = !DILocation(line: 41, column: 15, scope: !149)
!152 = !DILocation(line: 43, column: 36, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !1, line: 42, column: 11)
!154 = !DILocation(line: 44, column: 31, scope: !155)
!155 = distinct !DILexicalBlock(scope: !153, file: !1, line: 44, column: 13)
!156 = !DILocation(line: 44, column: 18, scope: !155)
!157 = !DILocation(line: 44, column: 36, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !1, line: 44, column: 13)
!159 = !DILocation(line: 44, column: 51, scope: !158)
!160 = !DILocation(line: 44, column: 49, scope: !158)
!161 = !DILocation(line: 44, column: 13, scope: !155)
!162 = !DILocation(line: 46, column: 37, scope: !163)
!163 = distinct !DILexicalBlock(scope: !158, file: !1, line: 45, column: 13)
!164 = !DILocation(line: 47, column: 13, scope: !163)
!165 = !DILocation(line: 44, column: 77, scope: !158)
!166 = !DILocation(line: 44, column: 13, scope: !158)
!167 = distinct !{!167, !161, !168, !169}
!168 = !DILocation(line: 47, column: 13, scope: !155)
!169 = !{!"llvm.loop.mustprogress"}
!170 = !DILocation(line: 49, column: 26, scope: !153)
!171 = !DILocation(line: 49, column: 13, scope: !153)
!172 = !DILocation(line: 50, column: 11, scope: !153)
!173 = !DILocation(line: 52, column: 9, scope: !149)
!174 = !DILocation(line: 55, column: 7, scope: !136)
!175 = !DILabel(scope: !22, name: "goodB2G_label_", file: !1, line: 58)
!176 = !DILocation(line: 58, column: 5, scope: !22)
!177 = !DILocalVariable(name: "_goodG2B_data_0", scope: !178, file: !1, line: 65, type: !12)
!178 = distinct !DILexicalBlock(scope: !9, file: !1, line: 64, column: 3)
!179 = !DILocation(line: 65, column: 11, scope: !178)
!180 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !178, file: !1, line: 66, type: !23)
!181 = !DILocation(line: 66, column: 10, scope: !178)
!182 = !DILocation(line: 67, column: 23, scope: !178)
!183 = !DILocation(line: 67, column: 21, scope: !178)
!184 = !DILocation(line: 68, column: 5, scope: !178)
!185 = !DILocation(line: 70, column: 14, scope: !186)
!186 = distinct !DILexicalBlock(scope: !178, file: !1, line: 69, column: 5)
!187 = !DILocation(line: 70, column: 7, scope: !186)
!188 = !DILocation(line: 71, column: 7, scope: !186)
!189 = !DILocation(line: 74, column: 5, scope: !178)
!190 = !DILocalVariable(name: "_goodG2B_i_0", scope: !191, file: !1, line: 77, type: !4)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 76, column: 7)
!192 = distinct !DILexicalBlock(scope: !178, file: !1, line: 75, column: 5)
!193 = !DILocation(line: 77, column: 13, scope: !191)
!194 = !DILocalVariable(name: "_goodG2B_n_0", scope: !191, file: !1, line: 78, type: !4)
!195 = !DILocation(line: 78, column: 13, scope: !191)
!196 = !DILocalVariable(name: "_goodG2B_intVariable_0", scope: !191, file: !1, line: 79, type: !4)
!197 = !DILocation(line: 79, column: 13, scope: !191)
!198 = !DILocation(line: 80, column: 20, scope: !199)
!199 = distinct !DILexicalBlock(scope: !191, file: !1, line: 80, column: 13)
!200 = !DILocation(line: 80, column: 13, scope: !199)
!201 = !DILocation(line: 80, column: 58, scope: !199)
!202 = !DILocation(line: 80, column: 13, scope: !191)
!203 = !DILocation(line: 82, column: 34, scope: !204)
!204 = distinct !DILexicalBlock(scope: !199, file: !1, line: 81, column: 9)
!205 = !DILocation(line: 83, column: 11, scope: !204)
!206 = !DILocation(line: 83, column: 18, scope: !204)
!207 = !DILocation(line: 84, column: 24, scope: !204)
!208 = !DILocation(line: 84, column: 11, scope: !204)
!209 = !DILocation(line: 85, column: 9, scope: !204)
!210 = !DILocation(line: 88, column: 7, scope: !192)
!211 = !DILabel(scope: !178, name: "goodG2B_label_", file: !1, line: 91)
!212 = !DILocation(line: 91, column: 5, scope: !178)
!213 = !DILocation(line: 96, column: 3, scope: !178)
!214 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_file_16_good_label_", file: !1, line: 97)
!215 = !DILocation(line: 97, column: 3, scope: !9)
!216 = !DILocation(line: 102, column: 1, scope: !9)
