; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_printf_1752CWE134_Uncontrolled_Format_String__char_file_printf_1766_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_printf_1752CWE134_Uncontrolled_Format_String__char_file_printf_1766_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_1752CWE134_Uncontrolled_Format_String__char_file_printf_1766_1(i8* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_data_0, i32 %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_i_0, i32 %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_j_0, void (i8*)* %opsink) #0 !dbg !9 {
entry:
  %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_data_0.addr = alloca i8*, align 8
  %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_i_0.addr = alloca i32, align 4
  %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_j_0.addr = alloca i32, align 4
  %opsink.addr = alloca void (i8*)*, align 8
  %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_dataLen_0 = alloca i64, align 8
  %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_pFile_0 = alloca %struct._IO_FILE*, align 8
  store i8* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_data_0, i8** %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_i_0, i32* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_i_0.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_i_0.addr, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_j_0, i32* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_j_0.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_j_0.addr, metadata !21, metadata !DIExpression()), !dbg !22
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_dataBuffer_0, metadata !25, metadata !DIExpression()), !dbg !29
  %0 = bitcast [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_dataBuffer_0 to i8*, !dbg !29
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !29
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_dataBuffer_0, i64 0, i64 0, !dbg !30
  store i8* %arraydecay, i8** %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_data_0.addr, align 8, !dbg !31
  store i32 0, i32* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_i_0.addr, align 4, !dbg !32
  br label %for.cond, !dbg !34

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_i_0.addr, align 4, !dbg !35
  %cmp = icmp slt i32 %1, 1, !dbg !37
  br i1 %cmp, label %for.body, label %for.end, !dbg !38

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_dataLen_0, metadata !39, metadata !DIExpression()), !dbg !45
  %2 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_data_0.addr, align 8, !dbg !46
  %call = call i64 @strlen(i8* %2) #5, !dbg !47
  store i64 %call, i64* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_dataLen_0, align 8, !dbg !45
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_pFile_0, metadata !48, metadata !DIExpression()), !dbg !106
  %3 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_dataLen_0, align 8, !dbg !107
  %sub = sub i64 100, %3, !dbg !109
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !110
  br i1 %cmp1, label %if.then, label %if.end12, !dbg !111

if.then:                                          ; preds = %for.body
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !112
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_pFile_0, align 8, !dbg !114
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_pFile_0, align 8, !dbg !115
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !117
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !118

if.then4:                                         ; preds = %if.then
  %5 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_data_0.addr, align 8, !dbg !119
  %6 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_dataLen_0, align 8, !dbg !122
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !123
  %7 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_dataLen_0, align 8, !dbg !124
  %sub5 = sub i64 100, %7, !dbg !125
  %conv = trunc i64 %sub5 to i32, !dbg !126
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_pFile_0, align 8, !dbg !127
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !128
  %cmp7 = icmp eq i8* %call6, null, !dbg !129
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !130

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !131
  %9 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_data_0.addr, align 8, !dbg !133
  %10 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_dataLen_0, align 8, !dbg !134
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !133
  store i8 0, i8* %arrayidx, align 1, !dbg !135
  br label %if.end, !dbg !136

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_pFile_0, align 8, !dbg !137
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !138
  br label %if.end11, !dbg !139

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end12, !dbg !140

if.end12:                                         ; preds = %if.end11, %for.body
  br label %for.inc, !dbg !141

for.inc:                                          ; preds = %if.end12
  %12 = load i32, i32* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_i_0.addr, align 4, !dbg !142
  %inc = add nsw i32 %12, 1, !dbg !142
  store i32 %inc, i32* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_i_0.addr, align 4, !dbg !142
  br label %for.cond, !dbg !143, !llvm.loop !144

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_j_0.addr, align 4, !dbg !147
  br label %for.cond13, !dbg !149

for.cond13:                                       ; preds = %for.inc17, %for.end
  %13 = load i32, i32* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_j_0.addr, align 4, !dbg !150
  %cmp14 = icmp slt i32 %13, 1, !dbg !152
  br i1 %cmp14, label %for.body16, label %for.end19, !dbg !153

for.body16:                                       ; preds = %for.cond13
  %14 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !154
  %15 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_data_0.addr, align 8, !dbg !156
  call void %14(i8* %15), !dbg !154
  br label %for.inc17, !dbg !157

for.inc17:                                        ; preds = %for.body16
  %16 = load i32, i32* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_j_0.addr, align 4, !dbg !158
  %inc18 = add nsw i32 %16, 1, !dbg !158
  store i32 %inc18, i32* %_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_j_0.addr, align 4, !dbg !158
  br label %for.cond13, !dbg !159, !llvm.loop !160

for.end19:                                        ; preds = %for.cond13
  br label %CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_label_, !dbg !161

CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_label_: ; preds = %for.end19
  call void @llvm.dbg.label(metadata !162), !dbg !163
  ret void, !dbg !164
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_1752CWE134_Uncontrolled_Format_String__char_file_printf_1766_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_026/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_1752CWE134_Uncontrolled_Format_String__char_file_printf_1766_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !4, !4, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !12}
!17 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 127, scope: !9)
!19 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_i_0", arg: 2, scope: !9, file: !1, line: 3, type: !4)
!20 = !DILocation(line: 3, column: 199, scope: !9)
!21 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_j_0", arg: 3, scope: !9, file: !1, line: 3, type: !4)
!22 = !DILocation(line: 3, column: 268, scope: !9)
!23 = !DILocalVariable(name: "opsink", arg: 4, scope: !9, file: !1, line: 3, type: !14)
!24 = !DILocation(line: 3, column: 340, scope: !9)
!25 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_dataBuffer_0", scope: !9, file: !1, line: 5, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 100)
!29 = !DILocation(line: 5, column: 8, scope: !9)
!30 = !DILocation(line: 6, column: 72, scope: !9)
!31 = !DILocation(line: 6, column: 70, scope: !9)
!32 = !DILocation(line: 7, column: 72, scope: !33)
!33 = distinct !DILexicalBlock(scope: !9, file: !1, line: 7, column: 3)
!34 = !DILocation(line: 7, column: 8, scope: !33)
!35 = !DILocation(line: 7, column: 77, scope: !36)
!36 = distinct !DILexicalBlock(scope: !33, file: !1, line: 7, column: 3)
!37 = !DILocation(line: 7, column: 141, scope: !36)
!38 = !DILocation(line: 7, column: 3, scope: !33)
!39 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_dataLen_0", scope: !40, file: !1, line: 10, type: !42)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 9, column: 5)
!41 = distinct !DILexicalBlock(scope: !36, file: !1, line: 8, column: 3)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 46, baseType: !44)
!43 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!44 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!45 = !DILocation(line: 10, column: 14, scope: !40)
!46 = !DILocation(line: 10, column: 93, scope: !40)
!47 = !DILocation(line: 10, column: 86, scope: !40)
!48 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_pFile_0", scope: !40, file: !1, line: 11, type: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !51, line: 7, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 49, size: 1728, elements: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !70, !72, !73, !74, !78, !80, !82, !86, !89, !91, !94, !97, !98, !100, !101, !102}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !52, file: !53, line: 51, baseType: !4, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !52, file: !53, line: 54, baseType: !12, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !52, file: !53, line: 55, baseType: !12, size: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !52, file: !53, line: 56, baseType: !12, size: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !52, file: !53, line: 57, baseType: !12, size: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !52, file: !53, line: 58, baseType: !12, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !52, file: !53, line: 59, baseType: !12, size: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !52, file: !53, line: 60, baseType: !12, size: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !52, file: !53, line: 61, baseType: !12, size: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !52, file: !53, line: 64, baseType: !12, size: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !52, file: !53, line: 65, baseType: !12, size: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !52, file: !53, line: 66, baseType: !12, size: 64, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !52, file: !53, line: 68, baseType: !68, size: 64, offset: 768)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !53, line: 36, flags: DIFlagFwdDecl)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !52, file: !53, line: 70, baseType: !71, size: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !52, file: !53, line: 72, baseType: !4, size: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !52, file: !53, line: 73, baseType: !4, size: 32, offset: 928)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !52, file: !53, line: 74, baseType: !75, size: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !76, line: 152, baseType: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!77 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !52, file: !53, line: 77, baseType: !79, size: 16, offset: 1024)
!79 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !52, file: !53, line: 78, baseType: !81, size: 8, offset: 1040)
!81 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !52, file: !53, line: 79, baseType: !83, size: 8, offset: 1048)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 1)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !52, file: !53, line: 81, baseType: !87, size: 64, offset: 1088)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !53, line: 43, baseType: null)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !52, file: !53, line: 89, baseType: !90, size: 64, offset: 1152)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !76, line: 153, baseType: !77)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !52, file: !53, line: 91, baseType: !92, size: 64, offset: 1216)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !53, line: 37, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !52, file: !53, line: 92, baseType: !95, size: 64, offset: 1280)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !53, line: 38, flags: DIFlagFwdDecl)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !52, file: !53, line: 93, baseType: !71, size: 64, offset: 1344)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !52, file: !53, line: 94, baseType: !99, size: 64, offset: 1408)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !52, file: !53, line: 95, baseType: !42, size: 64, offset: 1472)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !52, file: !53, line: 96, baseType: !4, size: 32, offset: 1536)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !52, file: !53, line: 98, baseType: !103, size: 160, offset: 1568)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 20)
!106 = !DILocation(line: 11, column: 13, scope: !40)
!107 = !DILocation(line: 12, column: 18, scope: !108)
!108 = distinct !DILexicalBlock(scope: !40, file: !1, line: 12, column: 11)
!109 = !DILocation(line: 12, column: 16, scope: !108)
!110 = !DILocation(line: 12, column: 89, scope: !108)
!111 = !DILocation(line: 12, column: 11, scope: !40)
!112 = !DILocation(line: 14, column: 79, scope: !113)
!113 = distinct !DILexicalBlock(scope: !108, file: !1, line: 13, column: 7)
!114 = !DILocation(line: 14, column: 77, scope: !113)
!115 = !DILocation(line: 15, column: 13, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !1, line: 15, column: 13)
!117 = !DILocation(line: 15, column: 81, scope: !116)
!118 = !DILocation(line: 15, column: 13, scope: !113)
!119 = !DILocation(line: 17, column: 21, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !1, line: 17, column: 15)
!121 = distinct !DILexicalBlock(scope: !116, file: !1, line: 16, column: 9)
!122 = !DILocation(line: 17, column: 90, scope: !120)
!123 = !DILocation(line: 17, column: 88, scope: !120)
!124 = !DILocation(line: 17, column: 174, scope: !120)
!125 = !DILocation(line: 17, column: 172, scope: !120)
!126 = !DILocation(line: 17, column: 161, scope: !120)
!127 = !DILocation(line: 17, column: 246, scope: !120)
!128 = !DILocation(line: 17, column: 15, scope: !120)
!129 = !DILocation(line: 17, column: 315, scope: !120)
!130 = !DILocation(line: 17, column: 15, scope: !121)
!131 = !DILocation(line: 19, column: 13, scope: !132)
!132 = distinct !DILexicalBlock(scope: !120, file: !1, line: 18, column: 11)
!133 = !DILocation(line: 20, column: 13, scope: !132)
!134 = !DILocation(line: 20, column: 80, scope: !132)
!135 = !DILocation(line: 20, column: 151, scope: !132)
!136 = !DILocation(line: 21, column: 11, scope: !132)
!137 = !DILocation(line: 23, column: 18, scope: !121)
!138 = !DILocation(line: 23, column: 11, scope: !121)
!139 = !DILocation(line: 24, column: 9, scope: !121)
!140 = !DILocation(line: 26, column: 7, scope: !113)
!141 = !DILocation(line: 29, column: 3, scope: !41)
!142 = !DILocation(line: 7, column: 209, scope: !36)
!143 = !DILocation(line: 7, column: 3, scope: !36)
!144 = distinct !{!144, !38, !145, !146}
!145 = !DILocation(line: 29, column: 3, scope: !33)
!146 = !{!"llvm.loop.mustprogress"}
!147 = !DILocation(line: 31, column: 72, scope: !148)
!148 = distinct !DILexicalBlock(scope: !9, file: !1, line: 31, column: 3)
!149 = !DILocation(line: 31, column: 8, scope: !148)
!150 = !DILocation(line: 31, column: 77, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !1, line: 31, column: 3)
!152 = !DILocation(line: 31, column: 141, scope: !151)
!153 = !DILocation(line: 31, column: 3, scope: !148)
!154 = !DILocation(line: 33, column: 5, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !1, line: 32, column: 3)
!156 = !DILocation(line: 33, column: 12, scope: !155)
!157 = !DILocation(line: 34, column: 3, scope: !155)
!158 = !DILocation(line: 31, column: 209, scope: !151)
!159 = !DILocation(line: 31, column: 3, scope: !151)
!160 = distinct !{!160, !153, !161, !146}
!161 = !DILocation(line: 34, column: 3, scope: !148)
!162 = !DILabel(scope: !9, name: "CWE134_Uncontrolled_Format_String__char_file_printf_17_bad_label_", file: !1, line: 36)
!163 = !DILocation(line: 36, column: 3, scope: !9)
!164 = !DILocation(line: 41, column: 1, scope: !9)
