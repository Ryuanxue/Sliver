; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_15183CWE606_Unchecked_Loop_Condition__char_file_15295_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_15183CWE606_Unchecked_Loop_Condition__char_file_15295_1.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_15183CWE606_Unchecked_Loop_Condition__char_file_15295_1(i8* %_goodB2G2_data_0, void (i32)* %opsink) #0 !dbg !9 {
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
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !29, metadata !DIExpression()), !dbg !34
  %1 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !35
  %call = call i64 @strlen(i8* %1) #6, !dbg !36
  store i64 %call, i64* %_goodB2G2_dataLen_0, align 8, !dbg !34
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_goodB2G2_pFile_0, metadata !37, metadata !DIExpression()), !dbg !95
  %2 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !96
  %sub = sub i64 100, %2, !dbg !98
  %cmp = icmp ugt i64 %sub, 1, !dbg !99
  br i1 %cmp, label %if.then, label %if.end11, !dbg !100

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !101
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %_goodB2G2_pFile_0, align 8, !dbg !103
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G2_pFile_0, align 8, !dbg !104
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !106
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !107

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !108
  %5 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !111
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !112
  %6 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !113
  %sub4 = sub i64 100, %6, !dbg !114
  %conv = trunc i64 %sub4 to i32, !dbg !115
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G2_pFile_0, align 8, !dbg !116
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !117
  %cmp6 = icmp eq i8* %call5, null, !dbg !118
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !119

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !120
  %8 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !122
  %9 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !123
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !122
  store i8 0, i8* %arrayidx, align 1, !dbg !124
  br label %if.end, !dbg !125

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G2_pFile_0, align 8, !dbg !126
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !127
  br label %if.end10, !dbg !128

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !129

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_i_0, metadata !130, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_n_0, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_intVariable_0, metadata !135, metadata !DIExpression()), !dbg !136
  %11 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !137
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_goodB2G2_n_0) #7, !dbg !139
  %cmp13 = icmp eq i32 %call12, 1, !dbg !140
  br i1 %cmp13, label %if.then15, label %if.end23, !dbg !141

if.then15:                                        ; preds = %if.end11
  %12 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !142
  %cmp16 = icmp slt i32 %12, 10000, !dbg !145
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !146

if.then18:                                        ; preds = %if.then15
  store i32 0, i32* %_goodB2G2_intVariable_0, align 4, !dbg !147
  store i32 0, i32* %_goodB2G2_i_0, align 4, !dbg !149
  br label %for.cond, !dbg !151

for.cond:                                         ; preds = %for.inc, %if.then18
  %13 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !152
  %14 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !154
  %cmp19 = icmp slt i32 %13, %14, !dbg !155
  br i1 %cmp19, label %for.body, label %for.end, !dbg !156

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !157
  %inc = add nsw i32 %15, 1, !dbg !157
  store i32 %inc, i32* %_goodB2G2_intVariable_0, align 4, !dbg !157
  br label %for.inc, !dbg !159

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !160
  %inc21 = add nsw i32 %16, 1, !dbg !160
  store i32 %inc21, i32* %_goodB2G2_i_0, align 4, !dbg !160
  br label %for.cond, !dbg !161, !llvm.loop !162

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !165
  call void @printIntLine(i32 %17), !dbg !166
  br label %if.end22, !dbg !167

if.end22:                                         ; preds = %for.end, %if.then15
  br label %if.end23, !dbg !168

if.end23:                                         ; preds = %if.end22, %if.end11
  br label %goodB2G2_label_, !dbg !169

goodB2G2_label_:                                  ; preds = %if.end23
  call void @llvm.dbg.label(metadata !170), !dbg !171
  call void (...) @goodG2B1(), !dbg !172
  call void @llvm.dbg.declare(metadata i8** %_goodG2B2_data_0, metadata !173, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B2_dataBuffer_0, metadata !176, metadata !DIExpression()), !dbg !177
  %18 = bitcast [100 x i8]* %_goodG2B2_dataBuffer_0 to i8*, !dbg !177
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 100, i1 false), !dbg !177
  %arraydecay24 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B2_dataBuffer_0, i64 0, i64 0, !dbg !178
  store i8* %arraydecay24, i8** %_goodG2B2_data_0, align 8, !dbg !179
  %19 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !180
  %call25 = call i8* @strcpy(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !181
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_i_0, metadata !182, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_n_0, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_intVariable_0, metadata !187, metadata !DIExpression()), !dbg !188
  %20 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !189
  %call26 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_goodG2B2_n_0) #7, !dbg !191
  %cmp27 = icmp eq i32 %call26, 1, !dbg !192
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !193

if.then29:                                        ; preds = %goodB2G2_label_
  store i32 0, i32* %_goodG2B2_intVariable_0, align 4, !dbg !194
  %21 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !196
  %22 = load i32, i32* %_goodG2B2_n_0, align 4, !dbg !197
  call void %21(i32 %22), !dbg !196
  %23 = load i32, i32* %_goodG2B2_intVariable_0, align 4, !dbg !198
  call void @printIntLine(i32 %23), !dbg !199
  br label %if.end30, !dbg !200

if.end30:                                         ; preds = %if.then29, %goodB2G2_label_
  br label %goodG2B2_label_, !dbg !201

goodG2B2_label_:                                  ; preds = %if.end30
  call void @llvm.dbg.label(metadata !202), !dbg !203
  br label %CWE606_Unchecked_Loop_Condition__char_file_15_good_label_, !dbg !204

CWE606_Unchecked_Loop_Condition__char_file_15_good_label_: ; preds = %goodG2B2_label_
  call void @llvm.dbg.label(metadata !205), !dbg !206
  ret void, !dbg !207
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_15183CWE606_Unchecked_Loop_Condition__char_file_15295_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_088/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_15183CWE606_Unchecked_Loop_Condition__char_file_15295_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!29 = !DILocalVariable(name: "_goodB2G2_dataLen_0", scope: !30, file: !1, line: 12, type: !31)
!30 = distinct !DILexicalBlock(scope: !22, file: !1, line: 11, column: 7)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 12, column: 16, scope: !30)
!35 = !DILocation(line: 12, column: 45, scope: !30)
!36 = !DILocation(line: 12, column: 38, scope: !30)
!37 = !DILocalVariable(name: "_goodB2G2_pFile_0", scope: !30, file: !1, line: 13, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !40, line: 7, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 49, size: 1728, elements: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !59, !61, !62, !63, !67, !69, !71, !75, !78, !80, !83, !86, !87, !89, !90, !91}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !41, file: !42, line: 51, baseType: !4, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !41, file: !42, line: 54, baseType: !12, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !41, file: !42, line: 55, baseType: !12, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !41, file: !42, line: 56, baseType: !12, size: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !41, file: !42, line: 57, baseType: !12, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !41, file: !42, line: 58, baseType: !12, size: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !41, file: !42, line: 59, baseType: !12, size: 64, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !41, file: !42, line: 60, baseType: !12, size: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !41, file: !42, line: 61, baseType: !12, size: 64, offset: 512)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !41, file: !42, line: 64, baseType: !12, size: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !41, file: !42, line: 65, baseType: !12, size: 64, offset: 640)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !41, file: !42, line: 66, baseType: !12, size: 64, offset: 704)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !41, file: !42, line: 68, baseType: !57, size: 64, offset: 768)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !42, line: 36, flags: DIFlagFwdDecl)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !41, file: !42, line: 70, baseType: !60, size: 64, offset: 832)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !41, file: !42, line: 72, baseType: !4, size: 32, offset: 896)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !41, file: !42, line: 73, baseType: !4, size: 32, offset: 928)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !41, file: !42, line: 74, baseType: !64, size: 64, offset: 960)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !65, line: 152, baseType: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!66 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !41, file: !42, line: 77, baseType: !68, size: 16, offset: 1024)
!68 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !41, file: !42, line: 78, baseType: !70, size: 8, offset: 1040)
!70 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !41, file: !42, line: 79, baseType: !72, size: 8, offset: 1048)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 1)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !41, file: !42, line: 81, baseType: !76, size: 64, offset: 1088)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !42, line: 43, baseType: null)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !41, file: !42, line: 89, baseType: !79, size: 64, offset: 1152)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !65, line: 153, baseType: !66)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !41, file: !42, line: 91, baseType: !81, size: 64, offset: 1216)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !42, line: 37, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !41, file: !42, line: 92, baseType: !84, size: 64, offset: 1280)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !42, line: 38, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !41, file: !42, line: 93, baseType: !60, size: 64, offset: 1344)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !41, file: !42, line: 94, baseType: !88, size: 64, offset: 1408)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !41, file: !42, line: 95, baseType: !31, size: 64, offset: 1472)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !41, file: !42, line: 96, baseType: !4, size: 32, offset: 1536)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !41, file: !42, line: 98, baseType: !92, size: 160, offset: 1568)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 20)
!95 = !DILocation(line: 13, column: 15, scope: !30)
!96 = !DILocation(line: 14, column: 20, scope: !97)
!97 = distinct !DILexicalBlock(scope: !30, file: !1, line: 14, column: 13)
!98 = !DILocation(line: 14, column: 18, scope: !97)
!99 = !DILocation(line: 14, column: 41, scope: !97)
!100 = !DILocation(line: 14, column: 13, scope: !30)
!101 = !DILocation(line: 16, column: 31, scope: !102)
!102 = distinct !DILexicalBlock(scope: !97, file: !1, line: 15, column: 9)
!103 = !DILocation(line: 16, column: 29, scope: !102)
!104 = !DILocation(line: 17, column: 15, scope: !105)
!105 = distinct !DILexicalBlock(scope: !102, file: !1, line: 17, column: 15)
!106 = !DILocation(line: 17, column: 33, scope: !105)
!107 = !DILocation(line: 17, column: 15, scope: !102)
!108 = !DILocation(line: 19, column: 23, scope: !109)
!109 = distinct !DILexicalBlock(scope: !110, file: !1, line: 19, column: 17)
!110 = distinct !DILexicalBlock(scope: !105, file: !1, line: 18, column: 11)
!111 = !DILocation(line: 19, column: 42, scope: !109)
!112 = !DILocation(line: 19, column: 40, scope: !109)
!113 = !DILocation(line: 19, column: 76, scope: !109)
!114 = !DILocation(line: 19, column: 74, scope: !109)
!115 = !DILocation(line: 19, column: 63, scope: !109)
!116 = !DILocation(line: 19, column: 98, scope: !109)
!117 = !DILocation(line: 19, column: 17, scope: !109)
!118 = !DILocation(line: 19, column: 117, scope: !109)
!119 = !DILocation(line: 19, column: 17, scope: !110)
!120 = !DILocation(line: 21, column: 15, scope: !121)
!121 = distinct !DILexicalBlock(scope: !109, file: !1, line: 20, column: 13)
!122 = !DILocation(line: 22, column: 15, scope: !121)
!123 = !DILocation(line: 22, column: 32, scope: !121)
!124 = !DILocation(line: 22, column: 53, scope: !121)
!125 = !DILocation(line: 23, column: 13, scope: !121)
!126 = !DILocation(line: 25, column: 20, scope: !110)
!127 = !DILocation(line: 25, column: 13, scope: !110)
!128 = !DILocation(line: 26, column: 11, scope: !110)
!129 = !DILocation(line: 28, column: 9, scope: !102)
!130 = !DILocalVariable(name: "_goodB2G2_i_0", scope: !131, file: !1, line: 43, type: !4)
!131 = distinct !DILexicalBlock(scope: !22, file: !1, line: 42, column: 7)
!132 = !DILocation(line: 43, column: 13, scope: !131)
!133 = !DILocalVariable(name: "_goodB2G2_n_0", scope: !131, file: !1, line: 44, type: !4)
!134 = !DILocation(line: 44, column: 13, scope: !131)
!135 = !DILocalVariable(name: "_goodB2G2_intVariable_0", scope: !131, file: !1, line: 45, type: !4)
!136 = !DILocation(line: 45, column: 13, scope: !131)
!137 = !DILocation(line: 46, column: 20, scope: !138)
!138 = distinct !DILexicalBlock(scope: !131, file: !1, line: 46, column: 13)
!139 = !DILocation(line: 46, column: 13, scope: !138)
!140 = !DILocation(line: 46, column: 60, scope: !138)
!141 = !DILocation(line: 46, column: 13, scope: !131)
!142 = !DILocation(line: 48, column: 15, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !1, line: 48, column: 15)
!144 = distinct !DILexicalBlock(scope: !138, file: !1, line: 47, column: 9)
!145 = !DILocation(line: 48, column: 29, scope: !143)
!146 = !DILocation(line: 48, column: 15, scope: !144)
!147 = !DILocation(line: 50, column: 37, scope: !148)
!148 = distinct !DILexicalBlock(scope: !143, file: !1, line: 49, column: 11)
!149 = !DILocation(line: 51, column: 32, scope: !150)
!150 = distinct !DILexicalBlock(scope: !148, file: !1, line: 51, column: 13)
!151 = !DILocation(line: 51, column: 18, scope: !150)
!152 = !DILocation(line: 51, column: 37, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !1, line: 51, column: 13)
!154 = !DILocation(line: 51, column: 53, scope: !153)
!155 = !DILocation(line: 51, column: 51, scope: !153)
!156 = !DILocation(line: 51, column: 13, scope: !150)
!157 = !DILocation(line: 53, column: 38, scope: !158)
!158 = distinct !DILexicalBlock(scope: !153, file: !1, line: 52, column: 13)
!159 = !DILocation(line: 54, column: 13, scope: !158)
!160 = !DILocation(line: 51, column: 81, scope: !153)
!161 = !DILocation(line: 51, column: 13, scope: !153)
!162 = distinct !{!162, !156, !163, !164}
!163 = !DILocation(line: 54, column: 13, scope: !150)
!164 = !{!"llvm.loop.mustprogress"}
!165 = !DILocation(line: 56, column: 26, scope: !148)
!166 = !DILocation(line: 56, column: 13, scope: !148)
!167 = !DILocation(line: 57, column: 11, scope: !148)
!168 = !DILocation(line: 59, column: 9, scope: !144)
!169 = !DILocation(line: 61, column: 7, scope: !131)
!170 = !DILabel(scope: !22, name: "goodB2G2_label_", file: !1, line: 70)
!171 = !DILocation(line: 70, column: 5, scope: !22)
!172 = !DILocation(line: 76, column: 3, scope: !9)
!173 = !DILocalVariable(name: "_goodG2B2_data_0", scope: !174, file: !1, line: 78, type: !12)
!174 = distinct !DILexicalBlock(scope: !9, file: !1, line: 77, column: 3)
!175 = !DILocation(line: 78, column: 11, scope: !174)
!176 = !DILocalVariable(name: "_goodG2B2_dataBuffer_0", scope: !174, file: !1, line: 79, type: !23)
!177 = !DILocation(line: 79, column: 10, scope: !174)
!178 = !DILocation(line: 80, column: 24, scope: !174)
!179 = !DILocation(line: 80, column: 22, scope: !174)
!180 = !DILocation(line: 84, column: 16, scope: !174)
!181 = !DILocation(line: 84, column: 9, scope: !174)
!182 = !DILocalVariable(name: "_goodG2B2_i_0", scope: !183, file: !1, line: 97, type: !4)
!183 = distinct !DILexicalBlock(scope: !174, file: !1, line: 96, column: 7)
!184 = !DILocation(line: 97, column: 13, scope: !183)
!185 = !DILocalVariable(name: "_goodG2B2_n_0", scope: !183, file: !1, line: 98, type: !4)
!186 = !DILocation(line: 98, column: 13, scope: !183)
!187 = !DILocalVariable(name: "_goodG2B2_intVariable_0", scope: !183, file: !1, line: 99, type: !4)
!188 = !DILocation(line: 99, column: 13, scope: !183)
!189 = !DILocation(line: 100, column: 20, scope: !190)
!190 = distinct !DILexicalBlock(scope: !183, file: !1, line: 100, column: 13)
!191 = !DILocation(line: 100, column: 13, scope: !190)
!192 = !DILocation(line: 100, column: 60, scope: !190)
!193 = !DILocation(line: 100, column: 13, scope: !183)
!194 = !DILocation(line: 102, column: 35, scope: !195)
!195 = distinct !DILexicalBlock(scope: !190, file: !1, line: 101, column: 9)
!196 = !DILocation(line: 103, column: 11, scope: !195)
!197 = !DILocation(line: 103, column: 18, scope: !195)
!198 = !DILocation(line: 104, column: 24, scope: !195)
!199 = !DILocation(line: 104, column: 11, scope: !195)
!200 = !DILocation(line: 105, column: 9, scope: !195)
!201 = !DILocation(line: 107, column: 7, scope: !183)
!202 = !DILabel(scope: !174, name: "goodG2B2_label_", file: !1, line: 116)
!203 = !DILocation(line: 116, column: 5, scope: !174)
!204 = !DILocation(line: 121, column: 3, scope: !174)
!205 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_file_15_good_label_", file: !1, line: 122)
!206 = !DILocation(line: 122, column: 3, scope: !9)
!207 = !DILocation(line: 127, column: 1, scope: !9)
