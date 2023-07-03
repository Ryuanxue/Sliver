; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_61b47CWE606_Unchecked_Loop_Condition__char_file_61a49_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_61b47CWE606_Unchecked_Loop_Condition__char_file_61a49_1.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_61b47CWE606_Unchecked_Loop_Condition__char_file_61a49_1(i8* %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_data_0, i8** %CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_return_, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_data_0.addr = alloca i8*, align 8
  %CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_return_.addr = alloca i8**, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_pFile_0 = alloca %struct._IO_FILE*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_intVariable_0 = alloca i32, align 4
  store i8* %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_data_0, i8** %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_data_0.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store i8** %CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_return_, i8*** %CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_return_.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_return_.addr, metadata !20, metadata !DIExpression()), !dbg !21
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_dataBuffer_0, metadata !24, metadata !DIExpression()), !dbg !28
  %0 = bitcast [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_dataBuffer_0 to i8*, !dbg !28
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !28
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_dataBuffer_0, i64 0, i64 0, !dbg !29
  store i8* %arraydecay, i8** %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_data_0.addr, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata i64* %_CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_dataLen_0, metadata !31, metadata !DIExpression()), !dbg !37
  %1 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_data_0.addr, align 8, !dbg !38
  %call = call i64 @strlen(i8* %1) #6, !dbg !39
  store i64 %call, i64* %_CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_dataLen_0, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_pFile_0, metadata !40, metadata !DIExpression()), !dbg !98
  %2 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_dataLen_0, align 8, !dbg !99
  %sub = sub i64 100, %2, !dbg !101
  %cmp = icmp ugt i64 %sub, 1, !dbg !102
  br i1 %cmp, label %if.then, label %if.end11, !dbg !103

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !104
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %_CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_pFile_0, align 8, !dbg !106
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %_CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_pFile_0, align 8, !dbg !107
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !109
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !110

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_data_0.addr, align 8, !dbg !111
  %5 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_dataLen_0, align 8, !dbg !114
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !115
  %6 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_dataLen_0, align 8, !dbg !116
  %sub4 = sub i64 100, %6, !dbg !117
  %conv = trunc i64 %sub4 to i32, !dbg !118
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %_CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_pFile_0, align 8, !dbg !119
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !120
  %cmp6 = icmp eq i8* %call5, null, !dbg !121
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !122

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !123
  %8 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_data_0.addr, align 8, !dbg !125
  %9 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_dataLen_0, align 8, !dbg !126
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !125
  store i8 0, i8* %arrayidx, align 1, !dbg !127
  br label %if.end, !dbg !128

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %_CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_pFile_0, align 8, !dbg !129
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !130
  br label %if.end10, !dbg !131

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !132

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_data_0.addr, align 8, !dbg !133
  %12 = bitcast i8* %11 to i8**, !dbg !133
  store i8** %12, i8*** %CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_return_.addr, align 8, !dbg !134
  br label %CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_label_, !dbg !135

CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_label_: ; preds = %if.end11
  call void @llvm.dbg.label(metadata !136), !dbg !137
  %13 = load i8**, i8*** %CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_return_.addr, align 8, !dbg !138
  %14 = bitcast i8** %13 to i8*, !dbg !138
  store i8* %14, i8** %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_data_0.addr, align 8, !dbg !139
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_i_0, metadata !140, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_n_0, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_intVariable_0, metadata !145, metadata !DIExpression()), !dbg !146
  %15 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_data_0.addr, align 8, !dbg !147
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_n_0) #7, !dbg !149
  %cmp13 = icmp eq i32 %call12, 1, !dbg !150
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !151

if.then15:                                        ; preds = %CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_label_
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_intVariable_0, align 4, !dbg !152
  %16 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !154
  %17 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_n_0, align 4, !dbg !155
  call void %16(i32 %17), !dbg !154
  %18 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_file_61_bad_intVariable_0, align 4, !dbg !156
  call void @printIntLine(i32 %18), !dbg !157
  br label %if.end16, !dbg !158

if.end16:                                         ; preds = %if.then15, %CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_label_
  br label %CWE606_Unchecked_Loop_Condition__char_file_61_bad_label_, !dbg !159

CWE606_Unchecked_Loop_Condition__char_file_61_bad_label_: ; preds = %if.end16
  call void @llvm.dbg.label(metadata !160), !dbg !161
  ret void, !dbg !162
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_61b47CWE606_Unchecked_Loop_Condition__char_file_61a49_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_107/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_61b47CWE606_Unchecked_Loop_Condition__char_file_61a49_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14, !15}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !4}
!18 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_61_bad_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 111, scope: !9)
!20 = !DILocalVariable(name: "CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_return_", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!21 = !DILocation(line: 3, column: 178, scope: !9)
!22 = !DILocalVariable(name: "opsink", arg: 3, scope: !9, file: !1, line: 3, type: !15)
!23 = !DILocation(line: 3, column: 251, scope: !9)
!24 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_61_bad_dataBuffer_0", scope: !9, file: !1, line: 5, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 100)
!28 = !DILocation(line: 5, column: 8, scope: !9)
!29 = !DILocation(line: 6, column: 63, scope: !9)
!30 = !DILocation(line: 6, column: 61, scope: !9)
!31 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_dataLen_0", scope: !32, file: !1, line: 9, type: !34)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 8, column: 5)
!33 = distinct !DILexicalBlock(scope: !9, file: !1, line: 7, column: 3)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 9, column: 14, scope: !32)
!38 = !DILocation(line: 9, column: 91, scope: !32)
!39 = !DILocation(line: 9, column: 84, scope: !32)
!40 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_pFile_0", scope: !32, file: !1, line: 10, type: !41)
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
!98 = !DILocation(line: 10, column: 13, scope: !32)
!99 = !DILocation(line: 11, column: 18, scope: !100)
!100 = distinct !DILexicalBlock(scope: !32, file: !1, line: 11, column: 11)
!101 = !DILocation(line: 11, column: 16, scope: !100)
!102 = !DILocation(line: 11, column: 87, scope: !100)
!103 = !DILocation(line: 11, column: 11, scope: !32)
!104 = !DILocation(line: 13, column: 77, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !1, line: 12, column: 7)
!106 = !DILocation(line: 13, column: 75, scope: !105)
!107 = !DILocation(line: 14, column: 13, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !1, line: 14, column: 13)
!109 = !DILocation(line: 14, column: 79, scope: !108)
!110 = !DILocation(line: 14, column: 13, scope: !105)
!111 = !DILocation(line: 16, column: 21, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !1, line: 16, column: 15)
!113 = distinct !DILexicalBlock(scope: !108, file: !1, line: 15, column: 9)
!114 = !DILocation(line: 16, column: 81, scope: !112)
!115 = !DILocation(line: 16, column: 79, scope: !112)
!116 = !DILocation(line: 16, column: 163, scope: !112)
!117 = !DILocation(line: 16, column: 161, scope: !112)
!118 = !DILocation(line: 16, column: 150, scope: !112)
!119 = !DILocation(line: 16, column: 233, scope: !112)
!120 = !DILocation(line: 16, column: 15, scope: !112)
!121 = !DILocation(line: 16, column: 300, scope: !112)
!122 = !DILocation(line: 16, column: 15, scope: !113)
!123 = !DILocation(line: 18, column: 13, scope: !124)
!124 = distinct !DILexicalBlock(scope: !112, file: !1, line: 17, column: 11)
!125 = !DILocation(line: 19, column: 13, scope: !124)
!126 = !DILocation(line: 19, column: 71, scope: !124)
!127 = !DILocation(line: 19, column: 140, scope: !124)
!128 = !DILocation(line: 20, column: 11, scope: !124)
!129 = !DILocation(line: 22, column: 18, scope: !113)
!130 = !DILocation(line: 22, column: 11, scope: !113)
!131 = !DILocation(line: 23, column: 9, scope: !113)
!132 = !DILocation(line: 25, column: 7, scope: !105)
!133 = !DILocation(line: 28, column: 72, scope: !33)
!134 = !DILocation(line: 28, column: 70, scope: !33)
!135 = !DILocation(line: 29, column: 5, scope: !33)
!136 = !DILabel(scope: !33, name: "CWE606_Unchecked_Loop_Condition__char_file_61b_badSource_label_", file: !1, line: 30)
!137 = !DILocation(line: 30, column: 5, scope: !33)
!138 = !DILocation(line: 36, column: 63, scope: !9)
!139 = !DILocation(line: 36, column: 61, scope: !9)
!140 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_61_bad_i_0", scope: !141, file: !1, line: 38, type: !4)
!141 = distinct !DILexicalBlock(scope: !9, file: !1, line: 37, column: 3)
!142 = !DILocation(line: 38, column: 9, scope: !141)
!143 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_61_bad_n_0", scope: !141, file: !1, line: 39, type: !4)
!144 = !DILocation(line: 39, column: 9, scope: !141)
!145 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_file_61_bad_intVariable_0", scope: !141, file: !1, line: 40, type: !4)
!146 = !DILocation(line: 40, column: 9, scope: !141)
!147 = !DILocation(line: 41, column: 16, scope: !148)
!148 = distinct !DILexicalBlock(scope: !141, file: !1, line: 41, column: 9)
!149 = !DILocation(line: 41, column: 9, scope: !148)
!150 = !DILocation(line: 41, column: 138, scope: !148)
!151 = !DILocation(line: 41, column: 9, scope: !141)
!152 = !DILocation(line: 43, column: 72, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !1, line: 42, column: 5)
!154 = !DILocation(line: 44, column: 7, scope: !153)
!155 = !DILocation(line: 44, column: 14, scope: !153)
!156 = !DILocation(line: 45, column: 20, scope: !153)
!157 = !DILocation(line: 45, column: 7, scope: !153)
!158 = !DILocation(line: 46, column: 5, scope: !153)
!159 = !DILocation(line: 48, column: 3, scope: !141)
!160 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_file_61_bad_label_", file: !1, line: 49)
!161 = !DILocation(line: 49, column: 3, scope: !9)
!162 = !DILocation(line: 54, column: 1, scope: !9)
