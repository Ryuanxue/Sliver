; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_15119CWE606_Unchecked_Loop_Condition__char_file_15150_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_15119CWE606_Unchecked_Loop_Condition__char_file_15150_1.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_15119CWE606_Unchecked_Loop_Condition__char_file_15150_1(i8* %_goodB2G1_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G1_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G1_dataLen_0 = alloca i64, align 8
  %_goodB2G1_pFile_0 = alloca %struct._IO_FILE*, align 8
  %_goodB2G1_i_0 = alloca i32, align 4
  %_goodB2G1_n_0 = alloca i32, align 4
  %_goodB2G1_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G1_data_0, i8** %_goodB2G1_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G1_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %_goodB2G1_dataBuffer_0 to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G1_dataBuffer_0, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %_goodB2G1_data_0.addr, align 8, !dbg !27
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !28, metadata !DIExpression()), !dbg !33
  %1 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !34
  %call = call i64 @strlen(i8* %1) #6, !dbg !35
  store i64 %call, i64* %_goodB2G1_dataLen_0, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_goodB2G1_pFile_0, metadata !36, metadata !DIExpression()), !dbg !94
  %2 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !95
  %sub = sub i64 100, %2, !dbg !97
  %cmp = icmp ugt i64 %sub, 1, !dbg !98
  br i1 %cmp, label %if.then, label %if.end11, !dbg !99

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !100
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %_goodB2G1_pFile_0, align 8, !dbg !102
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G1_pFile_0, align 8, !dbg !103
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !105
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !106

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !107
  %5 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !110
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !111
  %6 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !112
  %sub4 = sub i64 100, %6, !dbg !113
  %conv = trunc i64 %sub4 to i32, !dbg !114
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G1_pFile_0, align 8, !dbg !115
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !116
  %cmp6 = icmp eq i8* %call5, null, !dbg !117
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !118

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !119
  %8 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !121
  %9 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !122
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !121
  store i8 0, i8* %arrayidx, align 1, !dbg !123
  br label %if.end, !dbg !124

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G1_pFile_0, align 8, !dbg !125
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !126
  br label %if.end10, !dbg !127

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !128

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !129, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_n_0, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_intVariable_0, metadata !134, metadata !DIExpression()), !dbg !135
  %11 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !136
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_goodB2G1_n_0) #7, !dbg !138
  %cmp13 = icmp eq i32 %call12, 1, !dbg !139
  br i1 %cmp13, label %if.then15, label %if.end20, !dbg !140

if.then15:                                        ; preds = %if.end11
  %12 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !141
  %cmp16 = icmp slt i32 %12, 10000, !dbg !144
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !145

if.then18:                                        ; preds = %if.then15
  store i32 0, i32* %_goodB2G1_intVariable_0, align 4, !dbg !146
  %13 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !148
  %14 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !149
  call void %13(i32 %14), !dbg !148
  %15 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !150
  call void @printIntLine(i32 %15), !dbg !151
  br label %if.end19, !dbg !152

if.end19:                                         ; preds = %if.then18, %if.then15
  br label %if.end20, !dbg !153

if.end20:                                         ; preds = %if.end19, %if.end11
  br label %goodB2G1_label_, !dbg !154

goodB2G1_label_:                                  ; preds = %if.end20
  call void @llvm.dbg.label(metadata !155), !dbg !156
  ret void, !dbg !157
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_15119CWE606_Unchecked_Loop_Condition__char_file_15150_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_088/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_15119CWE606_Unchecked_Loop_Condition__char_file_15150_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G1_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 111, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 136, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !9, file: !1, line: 5, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 5, column: 8, scope: !9)
!26 = !DILocation(line: 6, column: 22, scope: !9)
!27 = !DILocation(line: 6, column: 20, scope: !9)
!28 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !29, file: !1, line: 11, type: !30)
!29 = distinct !DILexicalBlock(scope: !9, file: !1, line: 10, column: 5)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DILocation(line: 11, column: 14, scope: !29)
!34 = !DILocation(line: 11, column: 43, scope: !29)
!35 = !DILocation(line: 11, column: 36, scope: !29)
!36 = !DILocalVariable(name: "_goodB2G1_pFile_0", scope: !29, file: !1, line: 12, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !39, line: 7, baseType: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !41, line: 49, size: 1728, elements: !42)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !58, !60, !61, !62, !66, !68, !70, !74, !77, !79, !82, !85, !86, !88, !89, !90}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !40, file: !41, line: 51, baseType: !4, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !40, file: !41, line: 54, baseType: !12, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !40, file: !41, line: 55, baseType: !12, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !40, file: !41, line: 56, baseType: !12, size: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !40, file: !41, line: 57, baseType: !12, size: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !40, file: !41, line: 58, baseType: !12, size: 64, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !40, file: !41, line: 59, baseType: !12, size: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !40, file: !41, line: 60, baseType: !12, size: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !40, file: !41, line: 61, baseType: !12, size: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !40, file: !41, line: 64, baseType: !12, size: 64, offset: 576)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !40, file: !41, line: 65, baseType: !12, size: 64, offset: 640)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !40, file: !41, line: 66, baseType: !12, size: 64, offset: 704)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !40, file: !41, line: 68, baseType: !56, size: 64, offset: 768)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !41, line: 36, flags: DIFlagFwdDecl)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !40, file: !41, line: 70, baseType: !59, size: 64, offset: 832)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !40, file: !41, line: 72, baseType: !4, size: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !40, file: !41, line: 73, baseType: !4, size: 32, offset: 928)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !40, file: !41, line: 74, baseType: !63, size: 64, offset: 960)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !64, line: 152, baseType: !65)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!65 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !40, file: !41, line: 77, baseType: !67, size: 16, offset: 1024)
!67 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !40, file: !41, line: 78, baseType: !69, size: 8, offset: 1040)
!69 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !40, file: !41, line: 79, baseType: !71, size: 8, offset: 1048)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 1)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !40, file: !41, line: 81, baseType: !75, size: 64, offset: 1088)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !41, line: 43, baseType: null)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !40, file: !41, line: 89, baseType: !78, size: 64, offset: 1152)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !64, line: 153, baseType: !65)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !40, file: !41, line: 91, baseType: !80, size: 64, offset: 1216)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !41, line: 37, flags: DIFlagFwdDecl)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !40, file: !41, line: 92, baseType: !83, size: 64, offset: 1280)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !41, line: 38, flags: DIFlagFwdDecl)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !40, file: !41, line: 93, baseType: !59, size: 64, offset: 1344)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !40, file: !41, line: 94, baseType: !87, size: 64, offset: 1408)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !40, file: !41, line: 95, baseType: !30, size: 64, offset: 1472)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !40, file: !41, line: 96, baseType: !4, size: 32, offset: 1536)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !40, file: !41, line: 98, baseType: !91, size: 160, offset: 1568)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 20)
!94 = !DILocation(line: 12, column: 13, scope: !29)
!95 = !DILocation(line: 13, column: 18, scope: !96)
!96 = distinct !DILexicalBlock(scope: !29, file: !1, line: 13, column: 11)
!97 = !DILocation(line: 13, column: 16, scope: !96)
!98 = !DILocation(line: 13, column: 39, scope: !96)
!99 = !DILocation(line: 13, column: 11, scope: !29)
!100 = !DILocation(line: 15, column: 29, scope: !101)
!101 = distinct !DILexicalBlock(scope: !96, file: !1, line: 14, column: 7)
!102 = !DILocation(line: 15, column: 27, scope: !101)
!103 = !DILocation(line: 16, column: 13, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !1, line: 16, column: 13)
!105 = !DILocation(line: 16, column: 31, scope: !104)
!106 = !DILocation(line: 16, column: 13, scope: !101)
!107 = !DILocation(line: 18, column: 21, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !1, line: 18, column: 15)
!109 = distinct !DILexicalBlock(scope: !104, file: !1, line: 17, column: 9)
!110 = !DILocation(line: 18, column: 40, scope: !108)
!111 = !DILocation(line: 18, column: 38, scope: !108)
!112 = !DILocation(line: 18, column: 74, scope: !108)
!113 = !DILocation(line: 18, column: 72, scope: !108)
!114 = !DILocation(line: 18, column: 61, scope: !108)
!115 = !DILocation(line: 18, column: 96, scope: !108)
!116 = !DILocation(line: 18, column: 15, scope: !108)
!117 = !DILocation(line: 18, column: 115, scope: !108)
!118 = !DILocation(line: 18, column: 15, scope: !109)
!119 = !DILocation(line: 20, column: 13, scope: !120)
!120 = distinct !DILexicalBlock(scope: !108, file: !1, line: 19, column: 11)
!121 = !DILocation(line: 21, column: 13, scope: !120)
!122 = !DILocation(line: 21, column: 30, scope: !120)
!123 = !DILocation(line: 21, column: 51, scope: !120)
!124 = !DILocation(line: 22, column: 11, scope: !120)
!125 = !DILocation(line: 24, column: 18, scope: !109)
!126 = !DILocation(line: 24, column: 11, scope: !109)
!127 = !DILocation(line: 25, column: 9, scope: !109)
!128 = !DILocation(line: 27, column: 7, scope: !101)
!129 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !130, file: !1, line: 46, type: !4)
!130 = distinct !DILexicalBlock(scope: !9, file: !1, line: 45, column: 5)
!131 = !DILocation(line: 46, column: 11, scope: !130)
!132 = !DILocalVariable(name: "_goodB2G1_n_0", scope: !130, file: !1, line: 47, type: !4)
!133 = !DILocation(line: 47, column: 11, scope: !130)
!134 = !DILocalVariable(name: "_goodB2G1_intVariable_0", scope: !130, file: !1, line: 48, type: !4)
!135 = !DILocation(line: 48, column: 11, scope: !130)
!136 = !DILocation(line: 49, column: 18, scope: !137)
!137 = distinct !DILexicalBlock(scope: !130, file: !1, line: 49, column: 11)
!138 = !DILocation(line: 49, column: 11, scope: !137)
!139 = !DILocation(line: 49, column: 58, scope: !137)
!140 = !DILocation(line: 49, column: 11, scope: !130)
!141 = !DILocation(line: 51, column: 13, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 51, column: 13)
!143 = distinct !DILexicalBlock(scope: !137, file: !1, line: 50, column: 7)
!144 = !DILocation(line: 51, column: 27, scope: !142)
!145 = !DILocation(line: 51, column: 13, scope: !143)
!146 = !DILocation(line: 53, column: 35, scope: !147)
!147 = distinct !DILexicalBlock(scope: !142, file: !1, line: 52, column: 9)
!148 = !DILocation(line: 54, column: 11, scope: !147)
!149 = !DILocation(line: 54, column: 18, scope: !147)
!150 = !DILocation(line: 55, column: 24, scope: !147)
!151 = !DILocation(line: 55, column: 11, scope: !147)
!152 = !DILocation(line: 56, column: 9, scope: !147)
!153 = !DILocation(line: 58, column: 7, scope: !143)
!154 = !DILocation(line: 60, column: 5, scope: !130)
!155 = !DILabel(scope: !9, name: "goodB2G1_label_", file: !1, line: 65)
!156 = !DILocation(line: 65, column: 3, scope: !9)
!157 = !DILocation(line: 70, column: 1, scope: !9)
