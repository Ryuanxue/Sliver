; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_fprintf_67a53CWE134_Uncontrolled_Format_String__char_file_fprintf_67b41_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_fprintf_67a53CWE134_Uncontrolled_Format_String__char_file_fprintf_67b41_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType = type { i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_67a53CWE134_Uncontrolled_Format_String__char_file_fprintf_67b41_1(i8* %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_data_0, void (i8*)* %opsink) #0 !dbg !9 {
entry:
  %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_myStruct_0 = alloca %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, align 8
  %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_dataLen_0 = alloca i64, align 8
  %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_pFile_0 = alloca %struct._IO_FILE*, align 8
  %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_badSink_data_0 = alloca i8*, align 8
  store i8* %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_data_0, i8** %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_myStruct_0, metadata !21, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_dataBuffer_0, metadata !28, metadata !DIExpression()), !dbg !32
  %0 = bitcast [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_dataBuffer_0 to i8*, !dbg !32
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !32
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_dataBuffer_0, i64 0, i64 0, !dbg !33
  store i8* %arraydecay, i8** %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_data_0.addr, align 8, !dbg !34
  call void @llvm.dbg.declare(metadata i64* %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_dataLen_0, metadata !35, metadata !DIExpression()), !dbg !40
  %1 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_data_0.addr, align 8, !dbg !41
  %call = call i64 @strlen(i8* %1) #5, !dbg !42
  store i64 %call, i64* %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_dataLen_0, align 8, !dbg !40
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_pFile_0, metadata !43, metadata !DIExpression()), !dbg !101
  %2 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_dataLen_0, align 8, !dbg !102
  %sub = sub i64 100, %2, !dbg !104
  %cmp = icmp ugt i64 %sub, 1, !dbg !105
  br i1 %cmp, label %if.then, label %if.end11, !dbg !106

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !107
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_pFile_0, align 8, !dbg !109
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_pFile_0, align 8, !dbg !110
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !112
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !113

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_data_0.addr, align 8, !dbg !114
  %5 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_dataLen_0, align 8, !dbg !117
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !118
  %6 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_dataLen_0, align 8, !dbg !119
  %sub4 = sub i64 100, %6, !dbg !120
  %conv = trunc i64 %sub4 to i32, !dbg !121
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_pFile_0, align 8, !dbg !122
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !123
  %cmp6 = icmp eq i8* %call5, null, !dbg !124
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !125

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !126
  %8 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_data_0.addr, align 8, !dbg !128
  %9 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_dataLen_0, align 8, !dbg !129
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !128
  store i8 0, i8* %arrayidx, align 1, !dbg !130
  br label %if.end, !dbg !131

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_pFile_0, align 8, !dbg !132
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !133
  br label %if.end10, !dbg !134

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !135

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_data_0.addr, align 8, !dbg !136
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_myStruct_0, i32 0, i32 0, !dbg !137
  store i8* %11, i8** %structFirst, align 8, !dbg !138
  call void @llvm.dbg.declare(metadata i8** %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_badSink_data_0, metadata !139, metadata !DIExpression()), !dbg !141
  %structFirst12 = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_myStruct_0, i32 0, i32 0, !dbg !142
  %12 = load i8*, i8** %structFirst12, align 8, !dbg !142
  store i8* %12, i8** %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_badSink_data_0, align 8, !dbg !141
  %13 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !143
  %14 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_badSink_data_0, align 8, !dbg !144
  call void %13(i8* %14), !dbg !143
  br label %CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_badSink_label_, !dbg !143

CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_badSink_label_: ; preds = %if.end11
  call void @llvm.dbg.label(metadata !145), !dbg !146
  br label %CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_label_, !dbg !147

CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_label_: ; preds = %CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_badSink_label_
  call void @llvm.dbg.label(metadata !148), !dbg !149
  ret void, !dbg !150
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_67a53CWE134_Uncontrolled_Format_String__char_file_fprintf_67b41_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_001/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_67a53CWE134_Uncontrolled_Format_String__char_file_fprintf_67b41_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !12}
!17 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 131, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 207, scope: !9)
!21 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_myStruct_0", scope: !9, file: !1, line: 5, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType", file: !23, line: 8, baseType: !24)
!23 = !DIFile(filename: "../source_code/_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_001/code_gened")
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType", file: !23, line: 5, size: 64, elements: !25)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !24, file: !23, line: 7, baseType: !12, size: 64)
!27 = !DILocation(line: 5, column: 70, scope: !9)
!28 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_dataBuffer_0", scope: !9, file: !1, line: 6, type: !29)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 100)
!32 = !DILocation(line: 6, column: 8, scope: !9)
!33 = !DILocation(line: 7, column: 73, scope: !9)
!34 = !DILocation(line: 7, column: 71, scope: !9)
!35 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_dataLen_0", scope: !36, file: !1, line: 9, type: !37)
!36 = distinct !DILexicalBlock(scope: !9, file: !1, line: 8, column: 3)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 46, baseType: !39)
!38 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!39 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!40 = !DILocation(line: 9, column: 12, scope: !36)
!41 = !DILocation(line: 9, column: 92, scope: !36)
!42 = !DILocation(line: 9, column: 85, scope: !36)
!43 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_pFile_0", scope: !36, file: !1, line: 10, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !46, line: 7, baseType: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 49, size: 1728, elements: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !65, !67, !68, !69, !73, !75, !77, !81, !84, !86, !89, !92, !93, !95, !96, !97}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !48, line: 51, baseType: !4, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !47, file: !48, line: 54, baseType: !12, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !47, file: !48, line: 55, baseType: !12, size: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !47, file: !48, line: 56, baseType: !12, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !47, file: !48, line: 57, baseType: !12, size: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !47, file: !48, line: 58, baseType: !12, size: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !47, file: !48, line: 59, baseType: !12, size: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !47, file: !48, line: 60, baseType: !12, size: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !47, file: !48, line: 61, baseType: !12, size: 64, offset: 512)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !47, file: !48, line: 64, baseType: !12, size: 64, offset: 576)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !47, file: !48, line: 65, baseType: !12, size: 64, offset: 640)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !47, file: !48, line: 66, baseType: !12, size: 64, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !47, file: !48, line: 68, baseType: !63, size: 64, offset: 768)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !48, line: 36, flags: DIFlagFwdDecl)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !47, file: !48, line: 70, baseType: !66, size: 64, offset: 832)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !47, file: !48, line: 72, baseType: !4, size: 32, offset: 896)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !48, line: 73, baseType: !4, size: 32, offset: 928)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !47, file: !48, line: 74, baseType: !70, size: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !71, line: 152, baseType: !72)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!72 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !47, file: !48, line: 77, baseType: !74, size: 16, offset: 1024)
!74 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !47, file: !48, line: 78, baseType: !76, size: 8, offset: 1040)
!76 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !47, file: !48, line: 79, baseType: !78, size: 8, offset: 1048)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 1)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !48, line: 81, baseType: !82, size: 64, offset: 1088)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !48, line: 43, baseType: null)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !48, line: 89, baseType: !85, size: 64, offset: 1152)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !71, line: 153, baseType: !72)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !47, file: !48, line: 91, baseType: !87, size: 64, offset: 1216)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !48, line: 37, flags: DIFlagFwdDecl)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !47, file: !48, line: 92, baseType: !90, size: 64, offset: 1280)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !48, line: 38, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !47, file: !48, line: 93, baseType: !66, size: 64, offset: 1344)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !47, file: !48, line: 94, baseType: !94, size: 64, offset: 1408)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !47, file: !48, line: 95, baseType: !37, size: 64, offset: 1472)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !47, file: !48, line: 96, baseType: !4, size: 32, offset: 1536)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !47, file: !48, line: 98, baseType: !98, size: 160, offset: 1568)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 20)
!101 = !DILocation(line: 10, column: 11, scope: !36)
!102 = !DILocation(line: 11, column: 16, scope: !103)
!103 = distinct !DILexicalBlock(scope: !36, file: !1, line: 11, column: 9)
!104 = !DILocation(line: 11, column: 14, scope: !103)
!105 = !DILocation(line: 11, column: 88, scope: !103)
!106 = !DILocation(line: 11, column: 9, scope: !36)
!107 = !DILocation(line: 13, column: 78, scope: !108)
!108 = distinct !DILexicalBlock(scope: !103, file: !1, line: 12, column: 5)
!109 = !DILocation(line: 13, column: 76, scope: !108)
!110 = !DILocation(line: 14, column: 11, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !1, line: 14, column: 11)
!112 = !DILocation(line: 14, column: 80, scope: !111)
!113 = !DILocation(line: 14, column: 11, scope: !108)
!114 = !DILocation(line: 16, column: 19, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !1, line: 16, column: 13)
!116 = distinct !DILexicalBlock(scope: !111, file: !1, line: 15, column: 7)
!117 = !DILocation(line: 16, column: 89, scope: !115)
!118 = !DILocation(line: 16, column: 87, scope: !115)
!119 = !DILocation(line: 16, column: 174, scope: !115)
!120 = !DILocation(line: 16, column: 172, scope: !115)
!121 = !DILocation(line: 16, column: 161, scope: !115)
!122 = !DILocation(line: 16, column: 247, scope: !115)
!123 = !DILocation(line: 16, column: 13, scope: !115)
!124 = !DILocation(line: 16, column: 317, scope: !115)
!125 = !DILocation(line: 16, column: 13, scope: !116)
!126 = !DILocation(line: 18, column: 11, scope: !127)
!127 = distinct !DILexicalBlock(scope: !115, file: !1, line: 17, column: 9)
!128 = !DILocation(line: 19, column: 11, scope: !127)
!129 = !DILocation(line: 19, column: 79, scope: !127)
!130 = !DILocation(line: 19, column: 151, scope: !127)
!131 = !DILocation(line: 20, column: 9, scope: !127)
!132 = !DILocation(line: 22, column: 16, scope: !116)
!133 = !DILocation(line: 22, column: 9, scope: !116)
!134 = !DILocation(line: 23, column: 7, scope: !116)
!135 = !DILocation(line: 25, column: 5, scope: !108)
!136 = !DILocation(line: 28, column: 89, scope: !9)
!137 = !DILocation(line: 28, column: 75, scope: !9)
!138 = !DILocation(line: 28, column: 87, scope: !9)
!139 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_badSink_data_0", scope: !140, file: !1, line: 30, type: !12)
!140 = distinct !DILexicalBlock(scope: !9, file: !1, line: 29, column: 3)
!141 = !DILocation(line: 30, column: 11, scope: !140)
!142 = !DILocation(line: 30, column: 158, scope: !140)
!143 = !DILocation(line: 31, column: 5, scope: !140)
!144 = !DILocation(line: 31, column: 12, scope: !140)
!145 = !DILabel(scope: !140, name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_badSink_label_", file: !1, line: 32)
!146 = !DILocation(line: 32, column: 5, scope: !140)
!147 = !DILocation(line: 37, column: 3, scope: !140)
!148 = !DILabel(scope: !9, name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad_label_", file: !1, line: 38)
!149 = !DILocation(line: 38, column: 3, scope: !9)
!150 = !DILocation(line: 43, column: 1, scope: !9)
