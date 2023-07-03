; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_printf_02134CWE134_Uncontrolled_Format_String__char_file_printf_02171_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_printf_02134CWE134_Uncontrolled_Format_String__char_file_printf_02171_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_02134CWE134_Uncontrolled_Format_String__char_file_printf_02171_1(i8* %_goodB2G2_data_0, void (i8*)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G2_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G2_dataLen_0 = alloca i64, align 8
  %_goodB2G2_pFile_0 = alloca %struct._IO_FILE*, align 8
  %_goodG2B1_data_0 = alloca i8*, align 8
  %_goodG2B1_dataBuffer_0 = alloca [100 x i8], align 16
  store i8* %_goodB2G2_data_0, i8** %_goodB2G2_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
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
  %11 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !132
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %11), !dbg !135
  br label %goodB2G2_label_, !dbg !136

goodB2G2_label_:                                  ; preds = %if.end11
  call void @llvm.dbg.label(metadata !137), !dbg !138
  call void @llvm.dbg.declare(metadata i8** %_goodG2B1_data_0, metadata !139, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B1_dataBuffer_0, metadata !142, metadata !DIExpression()), !dbg !143
  %12 = bitcast [100 x i8]* %_goodG2B1_dataBuffer_0 to i8*, !dbg !143
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 100, i1 false), !dbg !143
  %arraydecay13 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B1_dataBuffer_0, i64 0, i64 0, !dbg !144
  store i8* %arraydecay13, i8** %_goodG2B1_data_0, align 8, !dbg !145
  %13 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !146
  %call14 = call i8* @strcpy(i8* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !149
  %14 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !150
  %15 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !153
  call void %14(i8* %15), !dbg !150
  br label %goodG2B1_label_, !dbg !154

goodG2B1_label_:                                  ; preds = %goodB2G2_label_
  call void @llvm.dbg.label(metadata !155), !dbg !156
  br label %CWE134_Uncontrolled_Format_String__char_file_printf_02_good_label_, !dbg !157

CWE134_Uncontrolled_Format_String__char_file_printf_02_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !158), !dbg !159
  ret void, !dbg !160
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

declare dso_local i32 @printf(i8*, ...) #4

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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_02134CWE134_Uncontrolled_Format_String__char_file_printf_02171_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_011/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_02134CWE134_Uncontrolled_Format_String__char_file_printf_02171_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !12}
!17 = !DILocalVariable(name: "_goodB2G2_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 129, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 154, scope: !9)
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
!132 = !DILocation(line: 34, column: 22, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 33, column: 5)
!134 = distinct !DILexicalBlock(scope: !22, file: !1, line: 32, column: 9)
!135 = !DILocation(line: 34, column: 7, scope: !133)
!136 = !DILocation(line: 32, column: 9, scope: !134)
!137 = !DILabel(scope: !22, name: "goodB2G2_label_", file: !1, line: 37)
!138 = !DILocation(line: 37, column: 5, scope: !22)
!139 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !140, file: !1, line: 44, type: !12)
!140 = distinct !DILexicalBlock(scope: !9, file: !1, line: 43, column: 3)
!141 = !DILocation(line: 44, column: 11, scope: !140)
!142 = !DILocalVariable(name: "_goodG2B1_dataBuffer_0", scope: !140, file: !1, line: 45, type: !23)
!143 = !DILocation(line: 45, column: 10, scope: !140)
!144 = !DILocation(line: 46, column: 24, scope: !140)
!145 = !DILocation(line: 46, column: 22, scope: !140)
!146 = !DILocation(line: 53, column: 14, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !1, line: 52, column: 5)
!148 = distinct !DILexicalBlock(scope: !140, file: !1, line: 47, column: 9)
!149 = !DILocation(line: 53, column: 7, scope: !147)
!150 = !DILocation(line: 58, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !1, line: 57, column: 5)
!152 = distinct !DILexicalBlock(scope: !140, file: !1, line: 56, column: 9)
!153 = !DILocation(line: 58, column: 14, scope: !151)
!154 = !DILocation(line: 56, column: 9, scope: !152)
!155 = !DILabel(scope: !140, name: "goodG2B1_label_", file: !1, line: 61)
!156 = !DILocation(line: 61, column: 5, scope: !140)
!157 = !DILocation(line: 66, column: 3, scope: !140)
!158 = !DILabel(scope: !9, name: "CWE134_Uncontrolled_Format_String__char_file_printf_02_good_label_", file: !1, line: 67)
!159 = !DILocation(line: 67, column: 3, scope: !9)
!160 = !DILocation(line: 72, column: 1, scope: !9)
