; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_printf_15105CWE134_Uncontrolled_Format_String__char_file_printf_15234_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_printf_15105CWE134_Uncontrolled_Format_String__char_file_printf_15234_1.c"
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_15105CWE134_Uncontrolled_Format_String__char_file_printf_15234_1(i8* %_goodB2G1_data_0, void (i8*)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G1_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G1_dataLen_0 = alloca i64, align 8
  %_goodB2G1_pFile_0 = alloca %struct._IO_FILE*, align 8
  %_goodG2B2_data_0 = alloca i8*, align 8
  %_goodG2B2_dataBuffer_0 = alloca [100 x i8], align 16
  store i8* %_goodB2G1_data_0, i8** %_goodB2G1_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G1_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G1_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G1_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G1_data_0.addr, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !29, metadata !DIExpression()), !dbg !34
  %1 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !35
  %call = call i64 @strlen(i8* %1) #6, !dbg !36
  store i64 %call, i64* %_goodB2G1_dataLen_0, align 8, !dbg !34
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_goodB2G1_pFile_0, metadata !37, metadata !DIExpression()), !dbg !95
  %2 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !96
  %sub = sub i64 100, %2, !dbg !98
  %cmp = icmp ugt i64 %sub, 1, !dbg !99
  br i1 %cmp, label %if.then, label %if.end11, !dbg !100

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !101
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %_goodB2G1_pFile_0, align 8, !dbg !103
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G1_pFile_0, align 8, !dbg !104
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !106
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !107

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !108
  %5 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !111
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !112
  %6 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !113
  %sub4 = sub i64 100, %6, !dbg !114
  %conv = trunc i64 %sub4 to i32, !dbg !115
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G1_pFile_0, align 8, !dbg !116
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !117
  %cmp6 = icmp eq i8* %call5, null, !dbg !118
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !119

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !120
  %8 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !122
  %9 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !123
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !122
  store i8 0, i8* %arrayidx, align 1, !dbg !124
  br label %if.end, !dbg !125

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G1_pFile_0, align 8, !dbg !126
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !127
  br label %if.end10, !dbg !128

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !129

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !130
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %11), !dbg !131
  br label %goodB2G1_label_, !dbg !131

goodB2G1_label_:                                  ; preds = %if.end11
  call void @llvm.dbg.label(metadata !132), !dbg !133
  call void (...) @goodB2G2(), !dbg !134
  call void (...) @goodG2B1(), !dbg !135
  call void @llvm.dbg.declare(metadata i8** %_goodG2B2_data_0, metadata !136, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B2_dataBuffer_0, metadata !139, metadata !DIExpression()), !dbg !140
  %12 = bitcast [100 x i8]* %_goodG2B2_dataBuffer_0 to i8*, !dbg !140
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 100, i1 false), !dbg !140
  %arraydecay13 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B2_dataBuffer_0, i64 0, i64 0, !dbg !141
  store i8* %arraydecay13, i8** %_goodG2B2_data_0, align 8, !dbg !142
  %13 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !143
  %call14 = call i8* @strcpy(i8* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !144
  %14 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !145
  %15 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !146
  call void %14(i8* %15), !dbg !145
  br label %goodG2B2_label_, !dbg !145

goodG2B2_label_:                                  ; preds = %goodB2G1_label_
  call void @llvm.dbg.label(metadata !147), !dbg !148
  br label %CWE134_Uncontrolled_Format_String__char_file_printf_15_good_label_, !dbg !149

CWE134_Uncontrolled_Format_String__char_file_printf_15_good_label_: ; preds = %goodG2B2_label_
  call void @llvm.dbg.label(metadata !150), !dbg !151
  ret void, !dbg !152
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

declare dso_local void @goodB2G2(...) #4

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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_15105CWE134_Uncontrolled_Format_String__char_file_printf_15234_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_024/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_15105CWE134_Uncontrolled_Format_String__char_file_printf_15234_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !12}
!17 = !DILocalVariable(name: "_goodB2G1_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 129, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 154, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !22, file: !1, line: 6, type: !23)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 5, column: 3)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 6, column: 10, scope: !22)
!27 = !DILocation(line: 7, column: 24, scope: !22)
!28 = !DILocation(line: 7, column: 22, scope: !22)
!29 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !30, file: !1, line: 12, type: !31)
!30 = distinct !DILexicalBlock(scope: !22, file: !1, line: 11, column: 7)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 12, column: 16, scope: !30)
!35 = !DILocation(line: 12, column: 45, scope: !30)
!36 = !DILocation(line: 12, column: 38, scope: !30)
!37 = !DILocalVariable(name: "_goodB2G1_pFile_0", scope: !30, file: !1, line: 13, type: !38)
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
!130 = !DILocation(line: 46, column: 24, scope: !22)
!131 = !DILocation(line: 46, column: 9, scope: !22)
!132 = !DILabel(scope: !22, name: "goodB2G1_label_", file: !1, line: 51)
!133 = !DILocation(line: 51, column: 5, scope: !22)
!134 = !DILocation(line: 57, column: 3, scope: !9)
!135 = !DILocation(line: 58, column: 3, scope: !9)
!136 = !DILocalVariable(name: "_goodG2B2_data_0", scope: !137, file: !1, line: 60, type: !12)
!137 = distinct !DILexicalBlock(scope: !9, file: !1, line: 59, column: 3)
!138 = !DILocation(line: 60, column: 11, scope: !137)
!139 = !DILocalVariable(name: "_goodG2B2_dataBuffer_0", scope: !137, file: !1, line: 61, type: !23)
!140 = !DILocation(line: 61, column: 10, scope: !137)
!141 = !DILocation(line: 62, column: 24, scope: !137)
!142 = !DILocation(line: 62, column: 22, scope: !137)
!143 = !DILocation(line: 66, column: 16, scope: !137)
!144 = !DILocation(line: 66, column: 9, scope: !137)
!145 = !DILocation(line: 78, column: 9, scope: !137)
!146 = !DILocation(line: 78, column: 16, scope: !137)
!147 = !DILabel(scope: !137, name: "goodG2B2_label_", file: !1, line: 87)
!148 = !DILocation(line: 87, column: 5, scope: !137)
!149 = !DILocation(line: 92, column: 3, scope: !137)
!150 = !DILabel(scope: !9, name: "CWE134_Uncontrolled_Format_String__char_file_printf_15_good_label_", file: !1, line: 93)
!151 = !DILocation(line: 93, column: 3, scope: !9)
!152 = !DILocation(line: 98, column: 1, scope: !9)