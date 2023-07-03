; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_03163CWE606_Unchecked_Loop_Condition__char_file_03220_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_03163CWE606_Unchecked_Loop_Condition__char_file_03220_1.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_03163CWE606_Unchecked_Loop_Condition__char_file_03220_1(i8* %_goodB2G2_data_0, void (i32)* %opsink) #0 !dbg !9 {
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
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !29, metadata !DIExpression()), !dbg !36
  %1 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !37
  %call = call i64 @strlen(i8* %1) #6, !dbg !38
  store i64 %call, i64* %_goodB2G2_dataLen_0, align 8, !dbg !36
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_goodB2G2_pFile_0, metadata !39, metadata !DIExpression()), !dbg !97
  %2 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !98
  %sub = sub i64 100, %2, !dbg !100
  %cmp = icmp ugt i64 %sub, 1, !dbg !101
  br i1 %cmp, label %if.then, label %if.end11, !dbg !102

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !103
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %_goodB2G2_pFile_0, align 8, !dbg !105
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G2_pFile_0, align 8, !dbg !106
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !108
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !109

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !110
  %5 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !113
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !114
  %6 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !115
  %sub4 = sub i64 100, %6, !dbg !116
  %conv = trunc i64 %sub4 to i32, !dbg !117
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G2_pFile_0, align 8, !dbg !118
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !119
  %cmp6 = icmp eq i8* %call5, null, !dbg !120
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !121

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !122
  %8 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !124
  %9 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !125
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !124
  store i8 0, i8* %arrayidx, align 1, !dbg !126
  br label %if.end, !dbg !127

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G2_pFile_0, align 8, !dbg !128
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !129
  br label %if.end10, !dbg !130

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !131

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_i_0, metadata !132, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_n_0, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_intVariable_0, metadata !139, metadata !DIExpression()), !dbg !140
  %11 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !141
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_goodB2G2_n_0) #7, !dbg !143
  %cmp13 = icmp eq i32 %call12, 1, !dbg !144
  br i1 %cmp13, label %if.then15, label %if.end23, !dbg !145

if.then15:                                        ; preds = %if.end11
  %12 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !146
  %cmp16 = icmp slt i32 %12, 10000, !dbg !149
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !150

if.then18:                                        ; preds = %if.then15
  store i32 0, i32* %_goodB2G2_intVariable_0, align 4, !dbg !151
  store i32 0, i32* %_goodB2G2_i_0, align 4, !dbg !153
  br label %for.cond, !dbg !155

for.cond:                                         ; preds = %for.inc, %if.then18
  %13 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !156
  %14 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !158
  %cmp19 = icmp slt i32 %13, %14, !dbg !159
  br i1 %cmp19, label %for.body, label %for.end, !dbg !160

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !161
  %inc = add nsw i32 %15, 1, !dbg !161
  store i32 %inc, i32* %_goodB2G2_intVariable_0, align 4, !dbg !161
  br label %for.inc, !dbg !163

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !164
  %inc21 = add nsw i32 %16, 1, !dbg !164
  store i32 %inc21, i32* %_goodB2G2_i_0, align 4, !dbg !164
  br label %for.cond, !dbg !165, !llvm.loop !166

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !169
  call void @printIntLine(i32 %17), !dbg !170
  br label %if.end22, !dbg !171

if.end22:                                         ; preds = %for.end, %if.then15
  br label %if.end23, !dbg !172

if.end23:                                         ; preds = %if.end22, %if.end11
  br label %goodB2G2_label_, !dbg !173

goodB2G2_label_:                                  ; preds = %if.end23
  call void @llvm.dbg.label(metadata !174), !dbg !175
  call void @llvm.dbg.declare(metadata i8** %_goodG2B1_data_0, metadata !176, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B1_dataBuffer_0, metadata !179, metadata !DIExpression()), !dbg !180
  %18 = bitcast [100 x i8]* %_goodG2B1_dataBuffer_0 to i8*, !dbg !180
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 100, i1 false), !dbg !180
  %arraydecay24 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B1_dataBuffer_0, i64 0, i64 0, !dbg !181
  store i8* %arraydecay24, i8** %_goodG2B1_data_0, align 8, !dbg !182
  %19 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !183
  %call25 = call i8* @strcpy(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !186
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !187, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_n_0, metadata !192, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_intVariable_0, metadata !194, metadata !DIExpression()), !dbg !195
  %20 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !196
  %call26 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_goodG2B1_n_0) #7, !dbg !198
  %cmp27 = icmp eq i32 %call26, 1, !dbg !199
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !200

if.then29:                                        ; preds = %goodB2G2_label_
  store i32 0, i32* %_goodG2B1_intVariable_0, align 4, !dbg !201
  %21 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !203
  %22 = load i32, i32* %_goodG2B1_n_0, align 4, !dbg !204
  call void %21(i32 %22), !dbg !203
  %23 = load i32, i32* %_goodG2B1_intVariable_0, align 4, !dbg !205
  call void @printIntLine(i32 %23), !dbg !206
  br label %if.end30, !dbg !207

if.end30:                                         ; preds = %if.then29, %goodB2G2_label_
  br label %goodG2B1_label_, !dbg !208

goodG2B1_label_:                                  ; preds = %if.end30
  call void @llvm.dbg.label(metadata !209), !dbg !210
  br label %CWE606_Unchecked_Loop_Condition__char_file_03_good_label_, !dbg !211

CWE606_Unchecked_Loop_Condition__char_file_03_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !212), !dbg !213
  ret void, !dbg !214
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_03163CWE606_Unchecked_Loop_Condition__char_file_03220_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_076/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_03163CWE606_Unchecked_Loop_Condition__char_file_03220_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G2_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 111, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 136, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G2_dataBuffer_0", scope: !22, file: !1, line: 6, type: !23)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 5, column: 3)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 6, column: 10, scope: !22)
!27 = !DILocation(line: 7, column: 24, scope: !22)
!28 = !DILocation(line: 7, column: 22, scope: !22)
!29 = !DILocalVariable(name: "_goodB2G2_dataLen_0", scope: !30, file: !1, line: 11, type: !33)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 10, column: 7)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 9, column: 5)
!32 = distinct !DILexicalBlock(scope: !22, file: !1, line: 8, column: 9)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocation(line: 11, column: 16, scope: !30)
!37 = !DILocation(line: 11, column: 45, scope: !30)
!38 = !DILocation(line: 11, column: 38, scope: !30)
!39 = !DILocalVariable(name: "_goodB2G2_pFile_0", scope: !30, file: !1, line: 12, type: !40)
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
!97 = !DILocation(line: 12, column: 15, scope: !30)
!98 = !DILocation(line: 13, column: 20, scope: !99)
!99 = distinct !DILexicalBlock(scope: !30, file: !1, line: 13, column: 13)
!100 = !DILocation(line: 13, column: 18, scope: !99)
!101 = !DILocation(line: 13, column: 41, scope: !99)
!102 = !DILocation(line: 13, column: 13, scope: !30)
!103 = !DILocation(line: 15, column: 31, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !1, line: 14, column: 9)
!105 = !DILocation(line: 15, column: 29, scope: !104)
!106 = !DILocation(line: 16, column: 15, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !1, line: 16, column: 15)
!108 = !DILocation(line: 16, column: 33, scope: !107)
!109 = !DILocation(line: 16, column: 15, scope: !104)
!110 = !DILocation(line: 18, column: 23, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !1, line: 18, column: 17)
!112 = distinct !DILexicalBlock(scope: !107, file: !1, line: 17, column: 11)
!113 = !DILocation(line: 18, column: 42, scope: !111)
!114 = !DILocation(line: 18, column: 40, scope: !111)
!115 = !DILocation(line: 18, column: 76, scope: !111)
!116 = !DILocation(line: 18, column: 74, scope: !111)
!117 = !DILocation(line: 18, column: 63, scope: !111)
!118 = !DILocation(line: 18, column: 98, scope: !111)
!119 = !DILocation(line: 18, column: 17, scope: !111)
!120 = !DILocation(line: 18, column: 117, scope: !111)
!121 = !DILocation(line: 18, column: 17, scope: !112)
!122 = !DILocation(line: 20, column: 15, scope: !123)
!123 = distinct !DILexicalBlock(scope: !111, file: !1, line: 19, column: 13)
!124 = !DILocation(line: 21, column: 15, scope: !123)
!125 = !DILocation(line: 21, column: 32, scope: !123)
!126 = !DILocation(line: 21, column: 53, scope: !123)
!127 = !DILocation(line: 22, column: 13, scope: !123)
!128 = !DILocation(line: 24, column: 20, scope: !112)
!129 = !DILocation(line: 24, column: 13, scope: !112)
!130 = !DILocation(line: 25, column: 11, scope: !112)
!131 = !DILocation(line: 27, column: 9, scope: !104)
!132 = !DILocalVariable(name: "_goodB2G2_i_0", scope: !133, file: !1, line: 35, type: !4)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 34, column: 7)
!134 = distinct !DILexicalBlock(scope: !135, file: !1, line: 33, column: 5)
!135 = distinct !DILexicalBlock(scope: !22, file: !1, line: 32, column: 9)
!136 = !DILocation(line: 35, column: 13, scope: !133)
!137 = !DILocalVariable(name: "_goodB2G2_n_0", scope: !133, file: !1, line: 36, type: !4)
!138 = !DILocation(line: 36, column: 13, scope: !133)
!139 = !DILocalVariable(name: "_goodB2G2_intVariable_0", scope: !133, file: !1, line: 37, type: !4)
!140 = !DILocation(line: 37, column: 13, scope: !133)
!141 = !DILocation(line: 38, column: 20, scope: !142)
!142 = distinct !DILexicalBlock(scope: !133, file: !1, line: 38, column: 13)
!143 = !DILocation(line: 38, column: 13, scope: !142)
!144 = !DILocation(line: 38, column: 60, scope: !142)
!145 = !DILocation(line: 38, column: 13, scope: !133)
!146 = !DILocation(line: 40, column: 15, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !1, line: 40, column: 15)
!148 = distinct !DILexicalBlock(scope: !142, file: !1, line: 39, column: 9)
!149 = !DILocation(line: 40, column: 29, scope: !147)
!150 = !DILocation(line: 40, column: 15, scope: !148)
!151 = !DILocation(line: 42, column: 37, scope: !152)
!152 = distinct !DILexicalBlock(scope: !147, file: !1, line: 41, column: 11)
!153 = !DILocation(line: 43, column: 32, scope: !154)
!154 = distinct !DILexicalBlock(scope: !152, file: !1, line: 43, column: 13)
!155 = !DILocation(line: 43, column: 18, scope: !154)
!156 = !DILocation(line: 43, column: 37, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !1, line: 43, column: 13)
!158 = !DILocation(line: 43, column: 53, scope: !157)
!159 = !DILocation(line: 43, column: 51, scope: !157)
!160 = !DILocation(line: 43, column: 13, scope: !154)
!161 = !DILocation(line: 45, column: 38, scope: !162)
!162 = distinct !DILexicalBlock(scope: !157, file: !1, line: 44, column: 13)
!163 = !DILocation(line: 46, column: 13, scope: !162)
!164 = !DILocation(line: 43, column: 81, scope: !157)
!165 = !DILocation(line: 43, column: 13, scope: !157)
!166 = distinct !{!166, !160, !167, !168}
!167 = !DILocation(line: 46, column: 13, scope: !154)
!168 = !{!"llvm.loop.mustprogress"}
!169 = !DILocation(line: 48, column: 26, scope: !152)
!170 = !DILocation(line: 48, column: 13, scope: !152)
!171 = !DILocation(line: 49, column: 11, scope: !152)
!172 = !DILocation(line: 51, column: 9, scope: !148)
!173 = !DILocation(line: 32, column: 14, scope: !135)
!174 = !DILabel(scope: !22, name: "goodB2G2_label_", file: !1, line: 56)
!175 = !DILocation(line: 56, column: 5, scope: !22)
!176 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !177, file: !1, line: 63, type: !12)
!177 = distinct !DILexicalBlock(scope: !9, file: !1, line: 62, column: 3)
!178 = !DILocation(line: 63, column: 11, scope: !177)
!179 = !DILocalVariable(name: "_goodG2B1_dataBuffer_0", scope: !177, file: !1, line: 64, type: !23)
!180 = !DILocation(line: 64, column: 10, scope: !177)
!181 = !DILocation(line: 65, column: 24, scope: !177)
!182 = !DILocation(line: 65, column: 22, scope: !177)
!183 = !DILocation(line: 72, column: 14, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !1, line: 71, column: 5)
!185 = distinct !DILexicalBlock(scope: !177, file: !1, line: 66, column: 9)
!186 = !DILocation(line: 72, column: 7, scope: !184)
!187 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !188, file: !1, line: 78, type: !4)
!188 = distinct !DILexicalBlock(scope: !189, file: !1, line: 77, column: 7)
!189 = distinct !DILexicalBlock(scope: !190, file: !1, line: 76, column: 5)
!190 = distinct !DILexicalBlock(scope: !177, file: !1, line: 75, column: 9)
!191 = !DILocation(line: 78, column: 13, scope: !188)
!192 = !DILocalVariable(name: "_goodG2B1_n_0", scope: !188, file: !1, line: 79, type: !4)
!193 = !DILocation(line: 79, column: 13, scope: !188)
!194 = !DILocalVariable(name: "_goodG2B1_intVariable_0", scope: !188, file: !1, line: 80, type: !4)
!195 = !DILocation(line: 80, column: 13, scope: !188)
!196 = !DILocation(line: 81, column: 20, scope: !197)
!197 = distinct !DILexicalBlock(scope: !188, file: !1, line: 81, column: 13)
!198 = !DILocation(line: 81, column: 13, scope: !197)
!199 = !DILocation(line: 81, column: 60, scope: !197)
!200 = !DILocation(line: 81, column: 13, scope: !188)
!201 = !DILocation(line: 83, column: 35, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !1, line: 82, column: 9)
!203 = !DILocation(line: 84, column: 11, scope: !202)
!204 = !DILocation(line: 84, column: 18, scope: !202)
!205 = !DILocation(line: 85, column: 24, scope: !202)
!206 = !DILocation(line: 85, column: 11, scope: !202)
!207 = !DILocation(line: 86, column: 9, scope: !202)
!208 = !DILocation(line: 75, column: 14, scope: !190)
!209 = !DILabel(scope: !177, name: "goodG2B1_label_", file: !1, line: 91)
!210 = !DILocation(line: 91, column: 5, scope: !177)
!211 = !DILocation(line: 96, column: 3, scope: !177)
!212 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_file_03_good_label_", file: !1, line: 97)
!213 = !DILocation(line: 97, column: 3, scope: !9)
!214 = !DILocation(line: 102, column: 1, scope: !9)
