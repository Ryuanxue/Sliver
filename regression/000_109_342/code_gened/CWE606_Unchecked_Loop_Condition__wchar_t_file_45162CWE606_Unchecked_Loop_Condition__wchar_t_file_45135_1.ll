; ModuleID = 'CWE606_Unchecked_Loop_Condition__wchar_t_file_45162CWE606_Unchecked_Loop_Condition__wchar_t_file_45135_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__wchar_t_file_45162CWE606_Unchecked_Loop_Condition__wchar_t_file_45135_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1
@CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GData = external dso_local global i32*, align 8
@.str.3 = private unnamed_addr constant [3 x i32] [i32 37, i32 100, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__wchar_t_file_45162CWE606_Unchecked_Loop_Condition__wchar_t_file_45135_1(i32* %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G_data_0.addr = alloca i32*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i32], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_pFile_0 = alloca %struct._IO_FILE*, align 8
  %_goodB2GSink_data_0 = alloca i32*, align 8
  %_goodB2GSink_i_0 = alloca i32, align 4
  %_goodB2GSink_n_0 = alloca i32, align 4
  %_goodB2GSink_intVariable_0 = alloca i32, align 4
  store i32* %_goodB2G_data_0, i32** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %_goodB2G_data_0.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i32]* %_goodB2G_dataBuffer_0, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i32]* %_goodB2G_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 400, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i32], [100 x i32]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i32* %arraydecay, i32** %_goodB2G_data_0.addr, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !29, metadata !DIExpression()), !dbg !33
  %1 = load i32*, i32** %_goodB2G_data_0.addr, align 8, !dbg !34
  %call = call i64 @wcslen(i32* %1), !dbg !35
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_goodB2G_pFile_0, metadata !36, metadata !DIExpression()), !dbg !96
  %2 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !97
  %sub = sub i64 100, %2, !dbg !99
  %cmp = icmp ugt i64 %sub, 1, !dbg !100
  br i1 %cmp, label %if.then, label %if.end11, !dbg !101

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !102
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !104
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !105
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !107
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !108

if.then3:                                         ; preds = %if.then
  %4 = load i32*, i32** %_goodB2G_data_0.addr, align 8, !dbg !109
  %5 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !112
  %add.ptr = getelementptr inbounds i32, i32* %4, i64 %5, !dbg !113
  %6 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !114
  %sub4 = sub i64 100, %6, !dbg !115
  %conv = trunc i64 %sub4 to i32, !dbg !116
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !117
  %call5 = call i32 (i32*, i32, %struct._IO_FILE*, ...) bitcast (i32 (...)* @fgetws to i32 (i32*, i32, %struct._IO_FILE*, ...)*)(i32* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !118
  %cmp6 = icmp eq i32 %call5, 0, !dbg !119
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !120

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)), !dbg !121
  %8 = load i32*, i32** %_goodB2G_data_0.addr, align 8, !dbg !123
  %9 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !124
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %9, !dbg !123
  store i32 0, i32* %arrayidx, align 4, !dbg !125
  br label %if.end, !dbg !126

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !127
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !128
  br label %if.end10, !dbg !129

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !130

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i32*, i32** %_goodB2G_data_0.addr, align 8, !dbg !131
  store i32* %11, i32** @CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GData, align 8, !dbg !132
  call void @llvm.dbg.declare(metadata i32** %_goodB2GSink_data_0, metadata !133, metadata !DIExpression()), !dbg !135
  %12 = load i32*, i32** @CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GData, align 8, !dbg !136
  store i32* %12, i32** %_goodB2GSink_data_0, align 8, !dbg !135
  call void @llvm.dbg.declare(metadata i32* %_goodB2GSink_i_0, metadata !137, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i32* %_goodB2GSink_n_0, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %_goodB2GSink_intVariable_0, metadata !142, metadata !DIExpression()), !dbg !143
  %13 = load i32*, i32** %_goodB2GSink_data_0, align 8, !dbg !144
  %call12 = call i32 (i32*, i32*, i32*, ...) bitcast (i32 (...)* @swscanf to i32 (i32*, i32*, i32*, ...)*)(i32* %13, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.3, i64 0, i64 0), i32* %_goodB2GSink_n_0), !dbg !146
  %cmp13 = icmp eq i32 %call12, 1, !dbg !147
  br i1 %cmp13, label %if.then15, label %if.end20, !dbg !148

if.then15:                                        ; preds = %if.end11
  %14 = load i32, i32* %_goodB2GSink_n_0, align 4, !dbg !149
  %cmp16 = icmp slt i32 %14, 10000, !dbg !152
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !153

if.then18:                                        ; preds = %if.then15
  store i32 0, i32* %_goodB2GSink_intVariable_0, align 4, !dbg !154
  %15 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !156
  %16 = load i32, i32* %_goodB2GSink_n_0, align 4, !dbg !157
  call void %15(i32 %16), !dbg !156
  %17 = load i32, i32* %_goodB2GSink_intVariable_0, align 4, !dbg !158
  call void @printIntLine(i32 %17), !dbg !159
  br label %if.end19, !dbg !160

if.end19:                                         ; preds = %if.then18, %if.then15
  br label %if.end20, !dbg !161

if.end20:                                         ; preds = %if.end19, %if.end11
  br label %goodB2GSink_label_, !dbg !162

goodB2GSink_label_:                               ; preds = %if.end20
  call void @llvm.dbg.label(metadata !163), !dbg !164
  br label %goodB2G_label_, !dbg !165

goodB2G_label_:                                   ; preds = %goodB2GSink_label_
  call void @llvm.dbg.label(metadata !166), !dbg !167
  ret void, !dbg !168
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @wcslen(i32*) #3

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i32 @fgetws(...) #3

declare dso_local void @printLine(i8*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

declare dso_local i32 @swscanf(...) #3

declare dso_local void @printIntLine(i32) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__wchar_t_file_45162CWE606_Unchecked_Loop_Condition__wchar_t_file_45135_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_342/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__wchar_t_file_45162CWE606_Unchecked_Loop_Condition__wchar_t_file_45135_1", scope: !1, file: !1, line: 4, type: !10, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !15}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !14, line: 74, baseType: !4)
!14 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !4}
!18 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !9, file: !1, line: 4, type: !12)
!19 = !DILocation(line: 4, column: 120, scope: !9)
!20 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 4, type: !15)
!21 = !DILocation(line: 4, column: 144, scope: !9)
!22 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !9, file: !1, line: 6, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 3200, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 6, column: 11, scope: !9)
!27 = !DILocation(line: 7, column: 21, scope: !9)
!28 = !DILocation(line: 7, column: 19, scope: !9)
!29 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !30, file: !1, line: 9, type: !31)
!30 = distinct !DILexicalBlock(scope: !9, file: !1, line: 8, column: 3)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 46, baseType: !32)
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DILocation(line: 9, column: 12, scope: !30)
!34 = !DILocation(line: 9, column: 40, scope: !30)
!35 = !DILocation(line: 9, column: 33, scope: !30)
!36 = !DILocalVariable(name: "_goodB2G_pFile_0", scope: !30, file: !1, line: 10, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !39, line: 7, baseType: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !41, line: 49, size: 1728, elements: !42)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!42 = !{!43, !44, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !60, !62, !63, !64, !68, !70, !72, !76, !79, !81, !84, !87, !88, !90, !91, !92}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !40, file: !41, line: 51, baseType: !4, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !40, file: !41, line: 54, baseType: !45, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !40, file: !41, line: 55, baseType: !45, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !40, file: !41, line: 56, baseType: !45, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !40, file: !41, line: 57, baseType: !45, size: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !40, file: !41, line: 58, baseType: !45, size: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !40, file: !41, line: 59, baseType: !45, size: 64, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !40, file: !41, line: 60, baseType: !45, size: 64, offset: 448)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !40, file: !41, line: 61, baseType: !45, size: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !40, file: !41, line: 64, baseType: !45, size: 64, offset: 576)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !40, file: !41, line: 65, baseType: !45, size: 64, offset: 640)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !40, file: !41, line: 66, baseType: !45, size: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !40, file: !41, line: 68, baseType: !58, size: 64, offset: 768)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !41, line: 36, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !40, file: !41, line: 70, baseType: !61, size: 64, offset: 832)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !40, file: !41, line: 72, baseType: !4, size: 32, offset: 896)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !40, file: !41, line: 73, baseType: !4, size: 32, offset: 928)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !40, file: !41, line: 74, baseType: !65, size: 64, offset: 960)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !66, line: 152, baseType: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!67 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !40, file: !41, line: 77, baseType: !69, size: 16, offset: 1024)
!69 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !40, file: !41, line: 78, baseType: !71, size: 8, offset: 1040)
!71 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !40, file: !41, line: 79, baseType: !73, size: 8, offset: 1048)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 1)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !40, file: !41, line: 81, baseType: !77, size: 64, offset: 1088)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !41, line: 43, baseType: null)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !40, file: !41, line: 89, baseType: !80, size: 64, offset: 1152)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !66, line: 153, baseType: !67)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !40, file: !41, line: 91, baseType: !82, size: 64, offset: 1216)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !41, line: 37, flags: DIFlagFwdDecl)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !40, file: !41, line: 92, baseType: !85, size: 64, offset: 1280)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !41, line: 38, flags: DIFlagFwdDecl)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !40, file: !41, line: 93, baseType: !61, size: 64, offset: 1344)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !40, file: !41, line: 94, baseType: !89, size: 64, offset: 1408)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !40, file: !41, line: 95, baseType: !31, size: 64, offset: 1472)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !40, file: !41, line: 96, baseType: !4, size: 32, offset: 1536)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !40, file: !41, line: 98, baseType: !93, size: 160, offset: 1568)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 160, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 20)
!96 = !DILocation(line: 10, column: 11, scope: !30)
!97 = !DILocation(line: 11, column: 16, scope: !98)
!98 = distinct !DILexicalBlock(scope: !30, file: !1, line: 11, column: 9)
!99 = !DILocation(line: 11, column: 14, scope: !98)
!100 = !DILocation(line: 11, column: 36, scope: !98)
!101 = !DILocation(line: 11, column: 9, scope: !30)
!102 = !DILocation(line: 13, column: 26, scope: !103)
!103 = distinct !DILexicalBlock(scope: !98, file: !1, line: 12, column: 5)
!104 = !DILocation(line: 13, column: 24, scope: !103)
!105 = !DILocation(line: 14, column: 11, scope: !106)
!106 = distinct !DILexicalBlock(scope: !103, file: !1, line: 14, column: 11)
!107 = !DILocation(line: 14, column: 28, scope: !106)
!108 = !DILocation(line: 14, column: 11, scope: !103)
!109 = !DILocation(line: 16, column: 20, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !1, line: 16, column: 13)
!111 = distinct !DILexicalBlock(scope: !106, file: !1, line: 15, column: 7)
!112 = !DILocation(line: 16, column: 38, scope: !110)
!113 = !DILocation(line: 16, column: 36, scope: !110)
!114 = !DILocation(line: 16, column: 71, scope: !110)
!115 = !DILocation(line: 16, column: 69, scope: !110)
!116 = !DILocation(line: 16, column: 58, scope: !110)
!117 = !DILocation(line: 16, column: 92, scope: !110)
!118 = !DILocation(line: 16, column: 13, scope: !110)
!119 = !DILocation(line: 16, column: 110, scope: !110)
!120 = !DILocation(line: 16, column: 13, scope: !111)
!121 = !DILocation(line: 18, column: 11, scope: !122)
!122 = distinct !DILexicalBlock(scope: !110, file: !1, line: 17, column: 9)
!123 = !DILocation(line: 19, column: 11, scope: !122)
!124 = !DILocation(line: 19, column: 27, scope: !122)
!125 = !DILocation(line: 19, column: 47, scope: !122)
!126 = !DILocation(line: 20, column: 9, scope: !122)
!127 = !DILocation(line: 22, column: 16, scope: !111)
!128 = !DILocation(line: 22, column: 9, scope: !111)
!129 = !DILocation(line: 23, column: 7, scope: !111)
!130 = !DILocation(line: 25, column: 5, scope: !103)
!131 = !DILocation(line: 28, column: 66, scope: !9)
!132 = !DILocation(line: 28, column: 64, scope: !9)
!133 = !DILocalVariable(name: "_goodB2GSink_data_0", scope: !134, file: !1, line: 30, type: !12)
!134 = distinct !DILexicalBlock(scope: !9, file: !1, line: 29, column: 3)
!135 = !DILocation(line: 30, column: 14, scope: !134)
!136 = !DILocation(line: 30, column: 36, scope: !134)
!137 = !DILocalVariable(name: "_goodB2GSink_i_0", scope: !138, file: !1, line: 32, type: !4)
!138 = distinct !DILexicalBlock(scope: !134, file: !1, line: 31, column: 5)
!139 = !DILocation(line: 32, column: 11, scope: !138)
!140 = !DILocalVariable(name: "_goodB2GSink_n_0", scope: !138, file: !1, line: 33, type: !4)
!141 = !DILocation(line: 33, column: 11, scope: !138)
!142 = !DILocalVariable(name: "_goodB2GSink_intVariable_0", scope: !138, file: !1, line: 34, type: !4)
!143 = !DILocation(line: 34, column: 11, scope: !138)
!144 = !DILocation(line: 35, column: 19, scope: !145)
!145 = distinct !DILexicalBlock(scope: !138, file: !1, line: 35, column: 11)
!146 = !DILocation(line: 35, column: 11, scope: !145)
!147 = !DILocation(line: 35, column: 66, scope: !145)
!148 = !DILocation(line: 35, column: 11, scope: !138)
!149 = !DILocation(line: 37, column: 13, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !1, line: 37, column: 13)
!151 = distinct !DILexicalBlock(scope: !145, file: !1, line: 36, column: 7)
!152 = !DILocation(line: 37, column: 30, scope: !150)
!153 = !DILocation(line: 37, column: 13, scope: !151)
!154 = !DILocation(line: 39, column: 38, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !1, line: 38, column: 9)
!156 = !DILocation(line: 40, column: 11, scope: !155)
!157 = !DILocation(line: 40, column: 18, scope: !155)
!158 = !DILocation(line: 41, column: 24, scope: !155)
!159 = !DILocation(line: 41, column: 11, scope: !155)
!160 = !DILocation(line: 42, column: 9, scope: !155)
!161 = !DILocation(line: 44, column: 7, scope: !151)
!162 = !DILocation(line: 46, column: 5, scope: !138)
!163 = !DILabel(scope: !134, name: "goodB2GSink_label_", file: !1, line: 47)
!164 = !DILocation(line: 47, column: 5, scope: !134)
!165 = !DILocation(line: 52, column: 3, scope: !134)
!166 = !DILabel(scope: !9, name: "goodB2G_label_", file: !1, line: 53)
!167 = !DILocation(line: 53, column: 3, scope: !9)
!168 = !DILocation(line: 58, column: 1, scope: !9)
