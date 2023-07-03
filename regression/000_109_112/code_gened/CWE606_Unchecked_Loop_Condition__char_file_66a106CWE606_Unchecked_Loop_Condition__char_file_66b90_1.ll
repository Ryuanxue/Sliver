; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_66a106CWE606_Unchecked_Loop_Condition__char_file_66b90_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_66a106CWE606_Unchecked_Loop_Condition__char_file_66b90_1.c"
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_66a106CWE606_Unchecked_Loop_Condition__char_file_66b90_1(i8* %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_dataArray_0 = alloca [5 x i8*], align 16
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_pFile_0 = alloca %struct._IO_FILE*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_data_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [5 x i8*]* %_goodB2G_dataArray_0, metadata !21, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !26, metadata !DIExpression()), !dbg !30
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !30
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !30
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !31
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !33, metadata !DIExpression()), !dbg !38
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !39
  %call = call i64 @strlen(i8* %1) #6, !dbg !40
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_goodB2G_pFile_0, metadata !41, metadata !DIExpression()), !dbg !99
  %2 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !100
  %sub = sub i64 100, %2, !dbg !102
  %cmp = icmp ugt i64 %sub, 1, !dbg !103
  br i1 %cmp, label %if.then, label %if.end11, !dbg !104

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !105
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !107
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !108
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !110
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !111

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !112
  %5 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !115
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !116
  %6 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !117
  %sub4 = sub i64 100, %6, !dbg !118
  %conv = trunc i64 %sub4 to i32, !dbg !119
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !120
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !121
  %cmp6 = icmp eq i8* %call5, null, !dbg !122
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !123

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !124
  %8 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !126
  %9 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !127
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !126
  store i8 0, i8* %arrayidx, align 1, !dbg !128
  br label %if.end, !dbg !129

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !130
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !131
  br label %if.end10, !dbg !132

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !133

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !134
  %arrayidx12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %_goodB2G_dataArray_0, i64 0, i64 2, !dbg !135
  store i8* %11, i8** %arrayidx12, align 16, !dbg !136
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_data_0, metadata !137, metadata !DIExpression()), !dbg !139
  %arrayidx13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %_goodB2G_dataArray_0, i64 0, i64 2, !dbg !140
  %12 = load i8*, i8** %arrayidx13, align 16, !dbg !140
  store i8* %12, i8** %_CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_data_0, align 8, !dbg !139
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_i_0, metadata !141, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_n_0, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_intVariable_0, metadata !146, metadata !DIExpression()), !dbg !147
  %13 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_data_0, align 8, !dbg !148
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_n_0) #7, !dbg !150
  %cmp15 = icmp eq i32 %call14, 1, !dbg !151
  br i1 %cmp15, label %if.then17, label %if.end22, !dbg !152

if.then17:                                        ; preds = %if.end11
  %14 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_n_0, align 4, !dbg !153
  %cmp18 = icmp slt i32 %14, 10000, !dbg !156
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !157

if.then20:                                        ; preds = %if.then17
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_intVariable_0, align 4, !dbg !158
  %15 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !160
  %16 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_n_0, align 4, !dbg !161
  call void %15(i32 %16), !dbg !160
  %17 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_intVariable_0, align 4, !dbg !162
  call void @printIntLine(i32 %17), !dbg !163
  br label %if.end21, !dbg !164

if.end21:                                         ; preds = %if.then20, %if.then17
  br label %if.end22, !dbg !165

if.end22:                                         ; preds = %if.end21, %if.end11
  br label %CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_label_, !dbg !166

CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_label_: ; preds = %if.end22
  call void @llvm.dbg.label(metadata !167), !dbg !168
  br label %goodB2G_label_, !dbg !169

goodB2G_label_:                                   ; preds = %CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_label_
  call void @llvm.dbg.label(metadata !170), !dbg !171
  ret void, !dbg !172
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_66a106CWE606_Unchecked_Loop_Condition__char_file_66b90_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_112/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_66a106CWE606_Unchecked_Loop_Condition__char_file_66b90_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 112, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 136, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G_dataArray_0", scope: !9, file: !1, line: 5, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 320, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 5)
!25 = !DILocation(line: 5, column: 9, scope: !9)
!26 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !9, file: !1, line: 6, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 100)
!30 = !DILocation(line: 6, column: 8, scope: !9)
!31 = !DILocation(line: 7, column: 21, scope: !9)
!32 = !DILocation(line: 7, column: 19, scope: !9)
!33 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !34, file: !1, line: 9, type: !35)
!34 = distinct !DILexicalBlock(scope: !9, file: !1, line: 8, column: 3)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 9, column: 12, scope: !34)
!39 = !DILocation(line: 9, column: 40, scope: !34)
!40 = !DILocation(line: 9, column: 33, scope: !34)
!41 = !DILocalVariable(name: "_goodB2G_pFile_0", scope: !34, file: !1, line: 10, type: !42)
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
!99 = !DILocation(line: 10, column: 11, scope: !34)
!100 = !DILocation(line: 11, column: 16, scope: !101)
!101 = distinct !DILexicalBlock(scope: !34, file: !1, line: 11, column: 9)
!102 = !DILocation(line: 11, column: 14, scope: !101)
!103 = !DILocation(line: 11, column: 36, scope: !101)
!104 = !DILocation(line: 11, column: 9, scope: !34)
!105 = !DILocation(line: 13, column: 26, scope: !106)
!106 = distinct !DILexicalBlock(scope: !101, file: !1, line: 12, column: 5)
!107 = !DILocation(line: 13, column: 24, scope: !106)
!108 = !DILocation(line: 14, column: 11, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 14, column: 11)
!110 = !DILocation(line: 14, column: 28, scope: !109)
!111 = !DILocation(line: 14, column: 11, scope: !106)
!112 = !DILocation(line: 16, column: 19, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !1, line: 16, column: 13)
!114 = distinct !DILexicalBlock(scope: !109, file: !1, line: 15, column: 7)
!115 = !DILocation(line: 16, column: 37, scope: !113)
!116 = !DILocation(line: 16, column: 35, scope: !113)
!117 = !DILocation(line: 16, column: 70, scope: !113)
!118 = !DILocation(line: 16, column: 68, scope: !113)
!119 = !DILocation(line: 16, column: 57, scope: !113)
!120 = !DILocation(line: 16, column: 91, scope: !113)
!121 = !DILocation(line: 16, column: 13, scope: !113)
!122 = !DILocation(line: 16, column: 109, scope: !113)
!123 = !DILocation(line: 16, column: 13, scope: !114)
!124 = !DILocation(line: 18, column: 11, scope: !125)
!125 = distinct !DILexicalBlock(scope: !113, file: !1, line: 17, column: 9)
!126 = !DILocation(line: 19, column: 11, scope: !125)
!127 = !DILocation(line: 19, column: 27, scope: !125)
!128 = !DILocation(line: 19, column: 47, scope: !125)
!129 = !DILocation(line: 20, column: 9, scope: !125)
!130 = !DILocation(line: 22, column: 16, scope: !114)
!131 = !DILocation(line: 22, column: 9, scope: !114)
!132 = !DILocation(line: 23, column: 7, scope: !114)
!133 = !DILocation(line: 25, column: 5, scope: !106)
!134 = !DILocation(line: 28, column: 29, scope: !9)
!135 = !DILocation(line: 28, column: 3, scope: !9)
!136 = !DILocation(line: 28, column: 27, scope: !9)
!137 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_data_0", scope: !138, file: !1, line: 30, type: !12)
!138 = distinct !DILexicalBlock(scope: !9, file: !1, line: 29, column: 3)
!139 = !DILocation(line: 30, column: 11, scope: !138)
!140 = !DILocation(line: 30, column: 80, scope: !138)
!141 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_i_0", scope: !142, file: !1, line: 32, type: !4)
!142 = distinct !DILexicalBlock(scope: !138, file: !1, line: 31, column: 5)
!143 = !DILocation(line: 32, column: 11, scope: !142)
!144 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_n_0", scope: !142, file: !1, line: 33, type: !4)
!145 = !DILocation(line: 33, column: 11, scope: !142)
!146 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_intVariable_0", scope: !142, file: !1, line: 34, type: !4)
!147 = !DILocation(line: 34, column: 11, scope: !142)
!148 = !DILocation(line: 35, column: 18, scope: !149)
!149 = distinct !DILexicalBlock(scope: !142, file: !1, line: 35, column: 11)
!150 = !DILocation(line: 35, column: 11, scope: !149)
!151 = !DILocation(line: 35, column: 158, scope: !149)
!152 = !DILocation(line: 35, column: 11, scope: !142)
!153 = !DILocation(line: 37, column: 13, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !1, line: 37, column: 13)
!155 = distinct !DILexicalBlock(scope: !149, file: !1, line: 36, column: 7)
!156 = !DILocation(line: 37, column: 77, scope: !154)
!157 = !DILocation(line: 37, column: 13, scope: !155)
!158 = !DILocation(line: 39, column: 85, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !1, line: 38, column: 9)
!160 = !DILocation(line: 40, column: 11, scope: !159)
!161 = !DILocation(line: 40, column: 18, scope: !159)
!162 = !DILocation(line: 41, column: 24, scope: !159)
!163 = !DILocation(line: 41, column: 11, scope: !159)
!164 = !DILocation(line: 42, column: 9, scope: !159)
!165 = !DILocation(line: 44, column: 7, scope: !155)
!166 = !DILocation(line: 46, column: 5, scope: !142)
!167 = !DILabel(scope: !138, name: "CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink_label_", file: !1, line: 47)
!168 = !DILocation(line: 47, column: 5, scope: !138)
!169 = !DILocation(line: 52, column: 3, scope: !138)
!170 = !DILabel(scope: !9, name: "goodB2G_label_", file: !1, line: 53)
!171 = !DILocation(line: 53, column: 3, scope: !9)
!172 = !DILocation(line: 58, column: 1, scope: !9)
