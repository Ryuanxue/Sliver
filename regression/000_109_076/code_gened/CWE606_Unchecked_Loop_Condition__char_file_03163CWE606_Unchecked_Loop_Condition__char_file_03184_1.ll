; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_03163CWE606_Unchecked_Loop_Condition__char_file_03184_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_03163CWE606_Unchecked_Loop_Condition__char_file_03184_1.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_03163CWE606_Unchecked_Loop_Condition__char_file_03184_1(i8* %_goodB2G2_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G2_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G2_dataLen_0 = alloca i64, align 8
  %_goodB2G2_pFile_0 = alloca %struct._IO_FILE*, align 8
  %_goodB2G2_i_0 = alloca i32, align 4
  %_goodB2G2_n_0 = alloca i32, align 4
  %_goodB2G2_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G2_data_0, i8** %_goodB2G2_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G2_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %_goodB2G2_dataBuffer_0 to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G2_dataBuffer_0, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %_goodB2G2_data_0.addr, align 8, !dbg !27
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !28, metadata !DIExpression()), !dbg !35
  %1 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !36
  %call = call i64 @strlen(i8* %1) #6, !dbg !37
  store i64 %call, i64* %_goodB2G2_dataLen_0, align 8, !dbg !35
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_goodB2G2_pFile_0, metadata !38, metadata !DIExpression()), !dbg !96
  %2 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !97
  %sub = sub i64 100, %2, !dbg !99
  %cmp = icmp ugt i64 %sub, 1, !dbg !100
  br i1 %cmp, label %if.then, label %if.end11, !dbg !101

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !102
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %_goodB2G2_pFile_0, align 8, !dbg !104
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G2_pFile_0, align 8, !dbg !105
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !107
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !108

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !109
  %5 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !112
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !113
  %6 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !114
  %sub4 = sub i64 100, %6, !dbg !115
  %conv = trunc i64 %sub4 to i32, !dbg !116
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G2_pFile_0, align 8, !dbg !117
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !118
  %cmp6 = icmp eq i8* %call5, null, !dbg !119
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !120

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !121
  %8 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !123
  %9 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !124
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !123
  store i8 0, i8* %arrayidx, align 1, !dbg !125
  br label %if.end, !dbg !126

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G2_pFile_0, align 8, !dbg !127
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !128
  br label %if.end10, !dbg !129

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !130

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_i_0, metadata !131, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_n_0, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_intVariable_0, metadata !138, metadata !DIExpression()), !dbg !139
  %11 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !140
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_goodB2G2_n_0) #7, !dbg !142
  %cmp13 = icmp eq i32 %call12, 1, !dbg !143
  br i1 %cmp13, label %if.then15, label %if.end20, !dbg !144

if.then15:                                        ; preds = %if.end11
  %12 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !145
  %cmp16 = icmp slt i32 %12, 10000, !dbg !148
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !149

if.then18:                                        ; preds = %if.then15
  store i32 0, i32* %_goodB2G2_intVariable_0, align 4, !dbg !150
  %13 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !152
  %14 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !153
  call void %13(i32 %14), !dbg !152
  %15 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !154
  call void @printIntLine(i32 %15), !dbg !155
  br label %if.end19, !dbg !156

if.end19:                                         ; preds = %if.then18, %if.then15
  br label %if.end20, !dbg !157

if.end20:                                         ; preds = %if.end19, %if.end11
  br label %goodB2G2_label_, !dbg !158

goodB2G2_label_:                                  ; preds = %if.end20
  call void @llvm.dbg.label(metadata !159), !dbg !160
  ret void, !dbg !161
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_03163CWE606_Unchecked_Loop_Condition__char_file_03184_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_076/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_03163CWE606_Unchecked_Loop_Condition__char_file_03184_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G2_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 111, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 136, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G2_dataBuffer_0", scope: !9, file: !1, line: 5, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 5, column: 8, scope: !9)
!26 = !DILocation(line: 6, column: 22, scope: !9)
!27 = !DILocation(line: 6, column: 20, scope: !9)
!28 = !DILocalVariable(name: "_goodB2G2_dataLen_0", scope: !29, file: !1, line: 10, type: !32)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 9, column: 5)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 8, column: 3)
!31 = distinct !DILexicalBlock(scope: !9, file: !1, line: 7, column: 7)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 46, baseType: !34)
!33 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!34 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!35 = !DILocation(line: 10, column: 14, scope: !29)
!36 = !DILocation(line: 10, column: 43, scope: !29)
!37 = !DILocation(line: 10, column: 36, scope: !29)
!38 = !DILocalVariable(name: "_goodB2G2_pFile_0", scope: !29, file: !1, line: 11, type: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !41, line: 7, baseType: !42)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !43, line: 49, size: 1728, elements: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !60, !62, !63, !64, !68, !70, !72, !76, !79, !81, !84, !87, !88, !90, !91, !92}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !42, file: !43, line: 51, baseType: !4, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !42, file: !43, line: 54, baseType: !12, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !42, file: !43, line: 55, baseType: !12, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !42, file: !43, line: 56, baseType: !12, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !42, file: !43, line: 57, baseType: !12, size: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !42, file: !43, line: 58, baseType: !12, size: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !42, file: !43, line: 59, baseType: !12, size: 64, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !42, file: !43, line: 60, baseType: !12, size: 64, offset: 448)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !42, file: !43, line: 61, baseType: !12, size: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !42, file: !43, line: 64, baseType: !12, size: 64, offset: 576)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !42, file: !43, line: 65, baseType: !12, size: 64, offset: 640)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !42, file: !43, line: 66, baseType: !12, size: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !42, file: !43, line: 68, baseType: !58, size: 64, offset: 768)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !43, line: 36, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !42, file: !43, line: 70, baseType: !61, size: 64, offset: 832)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !42, file: !43, line: 72, baseType: !4, size: 32, offset: 896)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !42, file: !43, line: 73, baseType: !4, size: 32, offset: 928)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !42, file: !43, line: 74, baseType: !65, size: 64, offset: 960)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !66, line: 152, baseType: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!67 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !42, file: !43, line: 77, baseType: !69, size: 16, offset: 1024)
!69 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !42, file: !43, line: 78, baseType: !71, size: 8, offset: 1040)
!71 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !42, file: !43, line: 79, baseType: !73, size: 8, offset: 1048)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 1)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !42, file: !43, line: 81, baseType: !77, size: 64, offset: 1088)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !43, line: 43, baseType: null)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !42, file: !43, line: 89, baseType: !80, size: 64, offset: 1152)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !66, line: 153, baseType: !67)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !42, file: !43, line: 91, baseType: !82, size: 64, offset: 1216)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !43, line: 37, flags: DIFlagFwdDecl)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !42, file: !43, line: 92, baseType: !85, size: 64, offset: 1280)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !43, line: 38, flags: DIFlagFwdDecl)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !42, file: !43, line: 93, baseType: !61, size: 64, offset: 1344)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !42, file: !43, line: 94, baseType: !89, size: 64, offset: 1408)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !42, file: !43, line: 95, baseType: !32, size: 64, offset: 1472)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !42, file: !43, line: 96, baseType: !4, size: 32, offset: 1536)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !42, file: !43, line: 98, baseType: !93, size: 160, offset: 1568)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 20)
!96 = !DILocation(line: 11, column: 13, scope: !29)
!97 = !DILocation(line: 12, column: 18, scope: !98)
!98 = distinct !DILexicalBlock(scope: !29, file: !1, line: 12, column: 11)
!99 = !DILocation(line: 12, column: 16, scope: !98)
!100 = !DILocation(line: 12, column: 39, scope: !98)
!101 = !DILocation(line: 12, column: 11, scope: !29)
!102 = !DILocation(line: 14, column: 29, scope: !103)
!103 = distinct !DILexicalBlock(scope: !98, file: !1, line: 13, column: 7)
!104 = !DILocation(line: 14, column: 27, scope: !103)
!105 = !DILocation(line: 15, column: 13, scope: !106)
!106 = distinct !DILexicalBlock(scope: !103, file: !1, line: 15, column: 13)
!107 = !DILocation(line: 15, column: 31, scope: !106)
!108 = !DILocation(line: 15, column: 13, scope: !103)
!109 = !DILocation(line: 17, column: 21, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !1, line: 17, column: 15)
!111 = distinct !DILexicalBlock(scope: !106, file: !1, line: 16, column: 9)
!112 = !DILocation(line: 17, column: 40, scope: !110)
!113 = !DILocation(line: 17, column: 38, scope: !110)
!114 = !DILocation(line: 17, column: 74, scope: !110)
!115 = !DILocation(line: 17, column: 72, scope: !110)
!116 = !DILocation(line: 17, column: 61, scope: !110)
!117 = !DILocation(line: 17, column: 96, scope: !110)
!118 = !DILocation(line: 17, column: 15, scope: !110)
!119 = !DILocation(line: 17, column: 115, scope: !110)
!120 = !DILocation(line: 17, column: 15, scope: !111)
!121 = !DILocation(line: 19, column: 13, scope: !122)
!122 = distinct !DILexicalBlock(scope: !110, file: !1, line: 18, column: 11)
!123 = !DILocation(line: 20, column: 13, scope: !122)
!124 = !DILocation(line: 20, column: 30, scope: !122)
!125 = !DILocation(line: 20, column: 51, scope: !122)
!126 = !DILocation(line: 21, column: 11, scope: !122)
!127 = !DILocation(line: 23, column: 18, scope: !111)
!128 = !DILocation(line: 23, column: 11, scope: !111)
!129 = !DILocation(line: 24, column: 9, scope: !111)
!130 = !DILocation(line: 26, column: 7, scope: !103)
!131 = !DILocalVariable(name: "_goodB2G2_i_0", scope: !132, file: !1, line: 34, type: !4)
!132 = distinct !DILexicalBlock(scope: !133, file: !1, line: 33, column: 5)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 32, column: 3)
!134 = distinct !DILexicalBlock(scope: !9, file: !1, line: 31, column: 7)
!135 = !DILocation(line: 34, column: 11, scope: !132)
!136 = !DILocalVariable(name: "_goodB2G2_n_0", scope: !132, file: !1, line: 35, type: !4)
!137 = !DILocation(line: 35, column: 11, scope: !132)
!138 = !DILocalVariable(name: "_goodB2G2_intVariable_0", scope: !132, file: !1, line: 36, type: !4)
!139 = !DILocation(line: 36, column: 11, scope: !132)
!140 = !DILocation(line: 37, column: 18, scope: !141)
!141 = distinct !DILexicalBlock(scope: !132, file: !1, line: 37, column: 11)
!142 = !DILocation(line: 37, column: 11, scope: !141)
!143 = !DILocation(line: 37, column: 58, scope: !141)
!144 = !DILocation(line: 37, column: 11, scope: !132)
!145 = !DILocation(line: 39, column: 13, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !1, line: 39, column: 13)
!147 = distinct !DILexicalBlock(scope: !141, file: !1, line: 38, column: 7)
!148 = !DILocation(line: 39, column: 27, scope: !146)
!149 = !DILocation(line: 39, column: 13, scope: !147)
!150 = !DILocation(line: 41, column: 35, scope: !151)
!151 = distinct !DILexicalBlock(scope: !146, file: !1, line: 40, column: 9)
!152 = !DILocation(line: 42, column: 11, scope: !151)
!153 = !DILocation(line: 42, column: 18, scope: !151)
!154 = !DILocation(line: 43, column: 24, scope: !151)
!155 = !DILocation(line: 43, column: 11, scope: !151)
!156 = !DILocation(line: 44, column: 9, scope: !151)
!157 = !DILocation(line: 46, column: 7, scope: !147)
!158 = !DILocation(line: 31, column: 12, scope: !134)
!159 = !DILabel(scope: !9, name: "goodB2G2_label_", file: !1, line: 51)
!160 = !DILocation(line: 51, column: 3, scope: !9)
!161 = !DILocation(line: 56, column: 1, scope: !9)
