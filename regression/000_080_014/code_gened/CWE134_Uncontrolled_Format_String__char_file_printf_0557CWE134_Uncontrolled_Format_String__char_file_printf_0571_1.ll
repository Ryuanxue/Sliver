; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_printf_0557CWE134_Uncontrolled_Format_String__char_file_printf_0571_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_printf_0557CWE134_Uncontrolled_Format_String__char_file_printf_0571_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@staticTrue = external dso_local global i32, align 4
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_0557CWE134_Uncontrolled_Format_String__char_file_printf_0571_1(i8* %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_data_0, void (i8*)* %opsink) #0 !dbg !9 {
entry:
  %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_dataLen_0 = alloca i64, align 8
  %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_pFile_0 = alloca %struct._IO_FILE*, align 8
  store i8* %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_data_0, i8** %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_dataBuffer_0 to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_dataBuffer_0, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_data_0.addr, align 8, !dbg !27
  %1 = load i32, i32* @staticTrue, align 4, !dbg !28
  %tobool = icmp ne i32 %1, 0, !dbg !28
  br i1 %tobool, label %if.then, label %if.end13, !dbg !30

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_dataLen_0, metadata !31, metadata !DIExpression()), !dbg !37
  %2 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_data_0.addr, align 8, !dbg !38
  %call = call i64 @strlen(i8* %2) #5, !dbg !39
  store i64 %call, i64* %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_dataLen_0, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_pFile_0, metadata !40, metadata !DIExpression()), !dbg !98
  %3 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_dataLen_0, align 8, !dbg !99
  %sub = sub i64 100, %3, !dbg !101
  %cmp = icmp ugt i64 %sub, 1, !dbg !102
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !103

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !104
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_pFile_0, align 8, !dbg !106
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_pFile_0, align 8, !dbg !107
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !109
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !110

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_data_0.addr, align 8, !dbg !111
  %6 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_dataLen_0, align 8, !dbg !114
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !115
  %7 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_dataLen_0, align 8, !dbg !116
  %sub5 = sub i64 100, %7, !dbg !117
  %conv = trunc i64 %sub5 to i32, !dbg !118
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_pFile_0, align 8, !dbg !119
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !120
  %cmp7 = icmp eq i8* %call6, null, !dbg !121
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !122

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !123
  %9 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_data_0.addr, align 8, !dbg !125
  %10 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_dataLen_0, align 8, !dbg !126
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !125
  store i8 0, i8* %arrayidx, align 1, !dbg !127
  br label %if.end, !dbg !128

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_pFile_0, align 8, !dbg !129
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !130
  br label %if.end11, !dbg !131

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !132

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !133

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @staticTrue, align 4, !dbg !134
  %tobool14 = icmp ne i32 %12, 0, !dbg !134
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !136

if.then15:                                        ; preds = %if.end13
  %13 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !137
  %14 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_data_0.addr, align 8, !dbg !139
  call void %13(i8* %14), !dbg !137
  br label %if.end16, !dbg !140

if.end16:                                         ; preds = %if.then15, %if.end13
  br label %CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_label_, !dbg !134

CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_label_: ; preds = %if.end16
  call void @llvm.dbg.label(metadata !141), !dbg !142
  ret void, !dbg !143
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_0557CWE134_Uncontrolled_Format_String__char_file_printf_0571_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_014/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_0557CWE134_Uncontrolled_Format_String__char_file_printf_0571_1", scope: !1, file: !1, line: 4, type: !10, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !12}
!17 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_data_0", arg: 1, scope: !9, file: !1, line: 4, type: !12)
!18 = !DILocation(line: 4, column: 127, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 4, type: !14)
!20 = !DILocation(line: 4, column: 202, scope: !9)
!21 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_dataBuffer_0", scope: !9, file: !1, line: 6, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 6, column: 8, scope: !9)
!26 = !DILocation(line: 7, column: 72, scope: !9)
!27 = !DILocation(line: 7, column: 70, scope: !9)
!28 = !DILocation(line: 8, column: 7, scope: !29)
!29 = distinct !DILexicalBlock(scope: !9, file: !1, line: 8, column: 7)
!30 = !DILocation(line: 8, column: 7, scope: !9)
!31 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_dataLen_0", scope: !32, file: !1, line: 11, type: !34)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 10, column: 5)
!33 = distinct !DILexicalBlock(scope: !29, file: !1, line: 9, column: 3)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 11, column: 14, scope: !32)
!38 = !DILocation(line: 11, column: 93, scope: !32)
!39 = !DILocation(line: 11, column: 86, scope: !32)
!40 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_pFile_0", scope: !32, file: !1, line: 12, type: !41)
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
!98 = !DILocation(line: 12, column: 13, scope: !32)
!99 = !DILocation(line: 13, column: 18, scope: !100)
!100 = distinct !DILexicalBlock(scope: !32, file: !1, line: 13, column: 11)
!101 = !DILocation(line: 13, column: 16, scope: !100)
!102 = !DILocation(line: 13, column: 89, scope: !100)
!103 = !DILocation(line: 13, column: 11, scope: !32)
!104 = !DILocation(line: 15, column: 79, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !1, line: 14, column: 7)
!106 = !DILocation(line: 15, column: 77, scope: !105)
!107 = !DILocation(line: 16, column: 13, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !1, line: 16, column: 13)
!109 = !DILocation(line: 16, column: 81, scope: !108)
!110 = !DILocation(line: 16, column: 13, scope: !105)
!111 = !DILocation(line: 18, column: 21, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !1, line: 18, column: 15)
!113 = distinct !DILexicalBlock(scope: !108, file: !1, line: 17, column: 9)
!114 = !DILocation(line: 18, column: 90, scope: !112)
!115 = !DILocation(line: 18, column: 88, scope: !112)
!116 = !DILocation(line: 18, column: 174, scope: !112)
!117 = !DILocation(line: 18, column: 172, scope: !112)
!118 = !DILocation(line: 18, column: 161, scope: !112)
!119 = !DILocation(line: 18, column: 246, scope: !112)
!120 = !DILocation(line: 18, column: 15, scope: !112)
!121 = !DILocation(line: 18, column: 315, scope: !112)
!122 = !DILocation(line: 18, column: 15, scope: !113)
!123 = !DILocation(line: 20, column: 13, scope: !124)
!124 = distinct !DILexicalBlock(scope: !112, file: !1, line: 19, column: 11)
!125 = !DILocation(line: 21, column: 13, scope: !124)
!126 = !DILocation(line: 21, column: 80, scope: !124)
!127 = !DILocation(line: 21, column: 151, scope: !124)
!128 = !DILocation(line: 22, column: 11, scope: !124)
!129 = !DILocation(line: 24, column: 18, scope: !113)
!130 = !DILocation(line: 24, column: 11, scope: !113)
!131 = !DILocation(line: 25, column: 9, scope: !113)
!132 = !DILocation(line: 27, column: 7, scope: !105)
!133 = !DILocation(line: 30, column: 3, scope: !33)
!134 = !DILocation(line: 32, column: 7, scope: !135)
!135 = distinct !DILexicalBlock(scope: !9, file: !1, line: 32, column: 7)
!136 = !DILocation(line: 32, column: 7, scope: !9)
!137 = !DILocation(line: 34, column: 5, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !1, line: 33, column: 3)
!139 = !DILocation(line: 34, column: 12, scope: !138)
!140 = !DILocation(line: 35, column: 3, scope: !138)
!141 = !DILabel(scope: !9, name: "CWE134_Uncontrolled_Format_String__char_file_printf_05_bad_label_", file: !1, line: 37)
!142 = !DILocation(line: 37, column: 3, scope: !9)
!143 = !DILocation(line: 42, column: 1, scope: !9)
