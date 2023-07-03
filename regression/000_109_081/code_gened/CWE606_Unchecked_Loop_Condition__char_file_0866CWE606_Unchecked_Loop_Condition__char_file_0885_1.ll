; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_0866CWE606_Unchecked_Loop_Condition__char_file_0885_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_0866CWE606_Unchecked_Loop_Condition__char_file_0885_1.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_0866CWE606_Unchecked_Loop_Condition__char_file_0885_1(i8* %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_pFile_0 = alloca %struct._IO_FILE*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_intVariable_0 = alloca i32, align 4
  store i8* %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_data_0, i8** %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_dataBuffer_0 to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_dataBuffer_0, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_data_0.addr, align 8, !dbg !27
  %call = call i32 (...) @staticReturnsTrue(), !dbg !28
  %tobool = icmp ne i32 %call, 0, !dbg !28
  br i1 %tobool, label %if.then, label %if.end14, !dbg !30

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_dataLen_0, metadata !31, metadata !DIExpression()), !dbg !37
  %1 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_data_0.addr, align 8, !dbg !38
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !39
  store i64 %call1, i64* %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_dataLen_0, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_pFile_0, metadata !40, metadata !DIExpression()), !dbg !98
  %2 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_dataLen_0, align 8, !dbg !99
  %sub = sub i64 100, %2, !dbg !101
  %cmp = icmp ugt i64 %sub, 1, !dbg !102
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !103

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !104
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_pFile_0, align 8, !dbg !106
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_pFile_0, align 8, !dbg !107
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !109
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !110

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_data_0.addr, align 8, !dbg !111
  %5 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_dataLen_0, align 8, !dbg !114
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !115
  %6 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_dataLen_0, align 8, !dbg !116
  %sub6 = sub i64 100, %6, !dbg !117
  %conv = trunc i64 %sub6 to i32, !dbg !118
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_pFile_0, align 8, !dbg !119
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !120
  %cmp8 = icmp eq i8* %call7, null, !dbg !121
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !122

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !123
  %8 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_data_0.addr, align 8, !dbg !125
  %9 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_dataLen_0, align 8, !dbg !126
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !125
  store i8 0, i8* %arrayidx, align 1, !dbg !127
  br label %if.end, !dbg !128

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_pFile_0, align 8, !dbg !129
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !130
  br label %if.end12, !dbg !131

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !132

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !133

if.end14:                                         ; preds = %if.end13, %entry
  %call15 = call i32 (...) @staticReturnsTrue(), !dbg !134
  %tobool16 = icmp ne i32 %call15, 0, !dbg !134
  br i1 %tobool16, label %if.then17, label %if.end23, !dbg !136

if.then17:                                        ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_i_0, metadata !137, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_n_0, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_intVariable_0, metadata !143, metadata !DIExpression()), !dbg !144
  %11 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_data_0.addr, align 8, !dbg !145
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_n_0) #7, !dbg !147
  %cmp19 = icmp eq i32 %call18, 1, !dbg !148
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !149

if.then21:                                        ; preds = %if.then17
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_intVariable_0, align 4, !dbg !150
  %12 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !152
  %13 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_n_0, align 4, !dbg !153
  call void %12(i32 %13), !dbg !152
  %14 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_file_08_bad_intVariable_0, align 4, !dbg !154
  call void @printIntLine(i32 %14), !dbg !155
  br label %if.end22, !dbg !156

if.end22:                                         ; preds = %if.then21, %if.then17
  br label %if.end23, !dbg !157

if.end23:                                         ; preds = %if.end22, %if.end14
  br label %CWE606_Unchecked_Loop_Condition__char_file_08_bad_label_, !dbg !158

CWE606_Unchecked_Loop_Condition__char_file_08_bad_label_: ; preds = %if.end23
  call void @llvm.dbg.label(metadata !159), !dbg !160
  ret void, !dbg !161
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

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_0866CWE606_Unchecked_Loop_Condition__char_file_0885_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_081/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_0866CWE606_Unchecked_Loop_Condition__char_file_0885_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_08_bad_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 109, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 175, scope: !9)
!21 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_08_bad_dataBuffer_0", scope: !9, file: !1, line: 5, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 5, column: 8, scope: !9)
!26 = !DILocation(line: 6, column: 63, scope: !9)
!27 = !DILocation(line: 6, column: 61, scope: !9)
!28 = !DILocation(line: 7, column: 7, scope: !29)
!29 = distinct !DILexicalBlock(scope: !9, file: !1, line: 7, column: 7)
!30 = !DILocation(line: 7, column: 7, scope: !9)
!31 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_08_bad_dataLen_0", scope: !32, file: !1, line: 10, type: !34)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 9, column: 5)
!33 = distinct !DILexicalBlock(scope: !29, file: !1, line: 8, column: 3)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 10, column: 14, scope: !32)
!38 = !DILocation(line: 10, column: 84, scope: !32)
!39 = !DILocation(line: 10, column: 77, scope: !32)
!40 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_08_bad_pFile_0", scope: !32, file: !1, line: 11, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !43, line: 7, baseType: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !45, line: 49, size: 1728, elements: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !62, !64, !65, !66, !70, !72, !74, !78, !81, !83, !86, !89, !90, !92, !93, !94}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !44, file: !45, line: 51, baseType: !4, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !44, file: !45, line: 54, baseType: !12, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !44, file: !45, line: 55, baseType: !12, size: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !44, file: !45, line: 56, baseType: !12, size: 64, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !44, file: !45, line: 57, baseType: !12, size: 64, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !44, file: !45, line: 58, baseType: !12, size: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !44, file: !45, line: 59, baseType: !12, size: 64, offset: 384)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !44, file: !45, line: 60, baseType: !12, size: 64, offset: 448)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !44, file: !45, line: 61, baseType: !12, size: 64, offset: 512)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !44, file: !45, line: 64, baseType: !12, size: 64, offset: 576)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !44, file: !45, line: 65, baseType: !12, size: 64, offset: 640)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !44, file: !45, line: 66, baseType: !12, size: 64, offset: 704)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !44, file: !45, line: 68, baseType: !60, size: 64, offset: 768)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !45, line: 36, flags: DIFlagFwdDecl)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !44, file: !45, line: 70, baseType: !63, size: 64, offset: 832)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !44, file: !45, line: 72, baseType: !4, size: 32, offset: 896)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !44, file: !45, line: 73, baseType: !4, size: 32, offset: 928)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !44, file: !45, line: 74, baseType: !67, size: 64, offset: 960)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !68, line: 152, baseType: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!69 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !44, file: !45, line: 77, baseType: !71, size: 16, offset: 1024)
!71 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !44, file: !45, line: 78, baseType: !73, size: 8, offset: 1040)
!73 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !44, file: !45, line: 79, baseType: !75, size: 8, offset: 1048)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 1)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !44, file: !45, line: 81, baseType: !79, size: 64, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !45, line: 43, baseType: null)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !44, file: !45, line: 89, baseType: !82, size: 64, offset: 1152)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !68, line: 153, baseType: !69)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !44, file: !45, line: 91, baseType: !84, size: 64, offset: 1216)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !45, line: 37, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !44, file: !45, line: 92, baseType: !87, size: 64, offset: 1280)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !45, line: 38, flags: DIFlagFwdDecl)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !44, file: !45, line: 93, baseType: !63, size: 64, offset: 1344)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !44, file: !45, line: 94, baseType: !91, size: 64, offset: 1408)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !44, file: !45, line: 95, baseType: !34, size: 64, offset: 1472)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !44, file: !45, line: 96, baseType: !4, size: 32, offset: 1536)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !44, file: !45, line: 98, baseType: !95, size: 160, offset: 1568)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 20)
!98 = !DILocation(line: 11, column: 13, scope: !32)
!99 = !DILocation(line: 12, column: 18, scope: !100)
!100 = distinct !DILexicalBlock(scope: !32, file: !1, line: 12, column: 11)
!101 = !DILocation(line: 12, column: 16, scope: !100)
!102 = !DILocation(line: 12, column: 80, scope: !100)
!103 = !DILocation(line: 12, column: 11, scope: !32)
!104 = !DILocation(line: 14, column: 70, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !1, line: 13, column: 7)
!106 = !DILocation(line: 14, column: 68, scope: !105)
!107 = !DILocation(line: 15, column: 13, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !1, line: 15, column: 13)
!109 = !DILocation(line: 15, column: 72, scope: !108)
!110 = !DILocation(line: 15, column: 13, scope: !105)
!111 = !DILocation(line: 17, column: 21, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !1, line: 17, column: 15)
!113 = distinct !DILexicalBlock(scope: !108, file: !1, line: 16, column: 9)
!114 = !DILocation(line: 17, column: 81, scope: !112)
!115 = !DILocation(line: 17, column: 79, scope: !112)
!116 = !DILocation(line: 17, column: 156, scope: !112)
!117 = !DILocation(line: 17, column: 154, scope: !112)
!118 = !DILocation(line: 17, column: 143, scope: !112)
!119 = !DILocation(line: 17, column: 219, scope: !112)
!120 = !DILocation(line: 17, column: 15, scope: !112)
!121 = !DILocation(line: 17, column: 279, scope: !112)
!122 = !DILocation(line: 17, column: 15, scope: !113)
!123 = !DILocation(line: 19, column: 13, scope: !124)
!124 = distinct !DILexicalBlock(scope: !112, file: !1, line: 18, column: 11)
!125 = !DILocation(line: 20, column: 13, scope: !124)
!126 = !DILocation(line: 20, column: 71, scope: !124)
!127 = !DILocation(line: 20, column: 133, scope: !124)
!128 = !DILocation(line: 21, column: 11, scope: !124)
!129 = !DILocation(line: 23, column: 18, scope: !113)
!130 = !DILocation(line: 23, column: 11, scope: !113)
!131 = !DILocation(line: 24, column: 9, scope: !113)
!132 = !DILocation(line: 26, column: 7, scope: !105)
!133 = !DILocation(line: 29, column: 3, scope: !33)
!134 = !DILocation(line: 31, column: 7, scope: !135)
!135 = distinct !DILexicalBlock(scope: !9, file: !1, line: 31, column: 7)
!136 = !DILocation(line: 31, column: 7, scope: !9)
!137 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_08_bad_i_0", scope: !138, file: !1, line: 34, type: !4)
!138 = distinct !DILexicalBlock(scope: !139, file: !1, line: 33, column: 5)
!139 = distinct !DILexicalBlock(scope: !135, file: !1, line: 32, column: 3)
!140 = !DILocation(line: 34, column: 11, scope: !138)
!141 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_08_bad_n_0", scope: !138, file: !1, line: 35, type: !4)
!142 = !DILocation(line: 35, column: 11, scope: !138)
!143 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_08_bad_intVariable_0", scope: !138, file: !1, line: 36, type: !4)
!144 = !DILocation(line: 36, column: 11, scope: !138)
!145 = !DILocation(line: 37, column: 18, scope: !146)
!146 = distinct !DILexicalBlock(scope: !138, file: !1, line: 37, column: 11)
!147 = !DILocation(line: 37, column: 11, scope: !146)
!148 = !DILocation(line: 37, column: 140, scope: !146)
!149 = !DILocation(line: 37, column: 11, scope: !138)
!150 = !DILocation(line: 39, column: 74, scope: !151)
!151 = distinct !DILexicalBlock(scope: !146, file: !1, line: 38, column: 7)
!152 = !DILocation(line: 40, column: 9, scope: !151)
!153 = !DILocation(line: 40, column: 16, scope: !151)
!154 = !DILocation(line: 41, column: 22, scope: !151)
!155 = !DILocation(line: 41, column: 9, scope: !151)
!156 = !DILocation(line: 42, column: 7, scope: !151)
!157 = !DILocation(line: 45, column: 3, scope: !139)
!158 = !DILocation(line: 31, column: 25, scope: !135)
!159 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_file_08_bad_label_", file: !1, line: 47)
!160 = !DILocation(line: 47, column: 3, scope: !9)
!161 = !DILocation(line: 52, column: 1, scope: !9)
