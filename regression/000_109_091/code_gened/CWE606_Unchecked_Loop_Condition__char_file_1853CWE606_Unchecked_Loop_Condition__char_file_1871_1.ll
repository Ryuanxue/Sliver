; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_1853CWE606_Unchecked_Loop_Condition__char_file_1871_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_1853CWE606_Unchecked_Loop_Condition__char_file_1871_1.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_1853CWE606_Unchecked_Loop_Condition__char_file_1871_1(i8* %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_pFile_0 = alloca %struct._IO_FILE*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_intVariable_0 = alloca i32, align 4
  store i8* %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_data_0, i8** %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_dataBuffer_0 to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_dataBuffer_0, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_data_0.addr, align 8, !dbg !27
  br label %CWE606_Unchecked_Loop_Condition__char_file_18_bad_source, !dbg !28

CWE606_Unchecked_Loop_Condition__char_file_18_bad_source: ; preds = %entry
  call void @llvm.dbg.label(metadata !29), !dbg !30
  call void @llvm.dbg.declare(metadata i64* %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_dataLen_0, metadata !31, metadata !DIExpression()), !dbg !36
  %1 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_data_0.addr, align 8, !dbg !37
  %call = call i64 @strlen(i8* %1) #6, !dbg !38
  store i64 %call, i64* %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_dataLen_0, align 8, !dbg !36
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_pFile_0, metadata !39, metadata !DIExpression()), !dbg !97
  %2 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_dataLen_0, align 8, !dbg !98
  %sub = sub i64 100, %2, !dbg !100
  %cmp = icmp ugt i64 %sub, 1, !dbg !101
  br i1 %cmp, label %if.then, label %if.end11, !dbg !102

if.then:                                          ; preds = %CWE606_Unchecked_Loop_Condition__char_file_18_bad_source
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !103
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_pFile_0, align 8, !dbg !105
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_pFile_0, align 8, !dbg !106
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !108
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !109

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_data_0.addr, align 8, !dbg !110
  %5 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_dataLen_0, align 8, !dbg !113
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !114
  %6 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_dataLen_0, align 8, !dbg !115
  %sub4 = sub i64 100, %6, !dbg !116
  %conv = trunc i64 %sub4 to i32, !dbg !117
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_pFile_0, align 8, !dbg !118
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !119
  %cmp6 = icmp eq i8* %call5, null, !dbg !120
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !121

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !122
  %8 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_data_0.addr, align 8, !dbg !124
  %9 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_dataLen_0, align 8, !dbg !125
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !124
  store i8 0, i8* %arrayidx, align 1, !dbg !126
  br label %if.end, !dbg !127

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_pFile_0, align 8, !dbg !128
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !129
  br label %if.end10, !dbg !130

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !131

if.end11:                                         ; preds = %if.end10, %CWE606_Unchecked_Loop_Condition__char_file_18_bad_source
  br label %CWE606_Unchecked_Loop_Condition__char_file_18_bad_sink, !dbg !132

CWE606_Unchecked_Loop_Condition__char_file_18_bad_sink: ; preds = %if.end11
  call void @llvm.dbg.label(metadata !133), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_i_0, metadata !135, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_n_0, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_intVariable_0, metadata !140, metadata !DIExpression()), !dbg !141
  %11 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_data_0.addr, align 8, !dbg !142
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_n_0) #7, !dbg !144
  %cmp13 = icmp eq i32 %call12, 1, !dbg !145
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !146

if.then15:                                        ; preds = %CWE606_Unchecked_Loop_Condition__char_file_18_bad_sink
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_intVariable_0, align 4, !dbg !147
  %12 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !149
  %13 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_n_0, align 4, !dbg !150
  call void %12(i32 %13), !dbg !149
  %14 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_file_18_bad_intVariable_0, align 4, !dbg !151
  call void @printIntLine(i32 %14), !dbg !152
  br label %if.end16, !dbg !153

if.end16:                                         ; preds = %if.then15, %CWE606_Unchecked_Loop_Condition__char_file_18_bad_sink
  br label %CWE606_Unchecked_Loop_Condition__char_file_18_bad_label_, !dbg !154

CWE606_Unchecked_Loop_Condition__char_file_18_bad_label_: ; preds = %if.end16
  call void @llvm.dbg.label(metadata !155), !dbg !156
  ret void, !dbg !157
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_1853CWE606_Unchecked_Loop_Condition__char_file_1871_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_091/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_1853CWE606_Unchecked_Loop_Condition__char_file_1871_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_18_bad_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 109, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 175, scope: !9)
!21 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_18_bad_dataBuffer_0", scope: !9, file: !1, line: 5, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 5, column: 8, scope: !9)
!26 = !DILocation(line: 6, column: 63, scope: !9)
!27 = !DILocation(line: 6, column: 61, scope: !9)
!28 = !DILocation(line: 6, column: 3, scope: !9)
!29 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_file_18_bad_source", file: !1, line: 7)
!30 = !DILocation(line: 7, column: 3, scope: !9)
!31 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_18_bad_dataLen_0", scope: !32, file: !1, line: 9, type: !33)
!32 = distinct !DILexicalBlock(scope: !9, file: !1, line: 8, column: 3)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocation(line: 9, column: 12, scope: !32)
!37 = !DILocation(line: 9, column: 82, scope: !32)
!38 = !DILocation(line: 9, column: 75, scope: !32)
!39 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_18_bad_pFile_0", scope: !32, file: !1, line: 10, type: !40)
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
!97 = !DILocation(line: 10, column: 11, scope: !32)
!98 = !DILocation(line: 11, column: 16, scope: !99)
!99 = distinct !DILexicalBlock(scope: !32, file: !1, line: 11, column: 9)
!100 = !DILocation(line: 11, column: 14, scope: !99)
!101 = !DILocation(line: 11, column: 78, scope: !99)
!102 = !DILocation(line: 11, column: 9, scope: !32)
!103 = !DILocation(line: 13, column: 68, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !1, line: 12, column: 5)
!105 = !DILocation(line: 13, column: 66, scope: !104)
!106 = !DILocation(line: 14, column: 11, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !1, line: 14, column: 11)
!108 = !DILocation(line: 14, column: 70, scope: !107)
!109 = !DILocation(line: 14, column: 11, scope: !104)
!110 = !DILocation(line: 16, column: 19, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !1, line: 16, column: 13)
!112 = distinct !DILexicalBlock(scope: !107, file: !1, line: 15, column: 7)
!113 = !DILocation(line: 16, column: 79, scope: !111)
!114 = !DILocation(line: 16, column: 77, scope: !111)
!115 = !DILocation(line: 16, column: 154, scope: !111)
!116 = !DILocation(line: 16, column: 152, scope: !111)
!117 = !DILocation(line: 16, column: 141, scope: !111)
!118 = !DILocation(line: 16, column: 217, scope: !111)
!119 = !DILocation(line: 16, column: 13, scope: !111)
!120 = !DILocation(line: 16, column: 277, scope: !111)
!121 = !DILocation(line: 16, column: 13, scope: !112)
!122 = !DILocation(line: 18, column: 11, scope: !123)
!123 = distinct !DILexicalBlock(scope: !111, file: !1, line: 17, column: 9)
!124 = !DILocation(line: 19, column: 11, scope: !123)
!125 = !DILocation(line: 19, column: 69, scope: !123)
!126 = !DILocation(line: 19, column: 131, scope: !123)
!127 = !DILocation(line: 20, column: 9, scope: !123)
!128 = !DILocation(line: 22, column: 16, scope: !112)
!129 = !DILocation(line: 22, column: 9, scope: !112)
!130 = !DILocation(line: 23, column: 7, scope: !112)
!131 = !DILocation(line: 25, column: 5, scope: !104)
!132 = !DILocation(line: 29, column: 3, scope: !9)
!133 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_file_18_bad_sink", file: !1, line: 30)
!134 = !DILocation(line: 30, column: 3, scope: !9)
!135 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_18_bad_i_0", scope: !136, file: !1, line: 32, type: !4)
!136 = distinct !DILexicalBlock(scope: !9, file: !1, line: 31, column: 3)
!137 = !DILocation(line: 32, column: 9, scope: !136)
!138 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_18_bad_n_0", scope: !136, file: !1, line: 33, type: !4)
!139 = !DILocation(line: 33, column: 9, scope: !136)
!140 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_18_bad_intVariable_0", scope: !136, file: !1, line: 34, type: !4)
!141 = !DILocation(line: 34, column: 9, scope: !136)
!142 = !DILocation(line: 35, column: 16, scope: !143)
!143 = distinct !DILexicalBlock(scope: !136, file: !1, line: 35, column: 9)
!144 = !DILocation(line: 35, column: 9, scope: !143)
!145 = !DILocation(line: 35, column: 138, scope: !143)
!146 = !DILocation(line: 35, column: 9, scope: !136)
!147 = !DILocation(line: 37, column: 72, scope: !148)
!148 = distinct !DILexicalBlock(scope: !143, file: !1, line: 36, column: 5)
!149 = !DILocation(line: 38, column: 7, scope: !148)
!150 = !DILocation(line: 38, column: 14, scope: !148)
!151 = !DILocation(line: 39, column: 20, scope: !148)
!152 = !DILocation(line: 39, column: 7, scope: !148)
!153 = !DILocation(line: 40, column: 5, scope: !148)
!154 = !DILocation(line: 42, column: 3, scope: !136)
!155 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_file_18_bad_label_", file: !1, line: 44)
!156 = !DILocation(line: 44, column: 3, scope: !9)
!157 = !DILocation(line: 49, column: 1, scope: !9)
