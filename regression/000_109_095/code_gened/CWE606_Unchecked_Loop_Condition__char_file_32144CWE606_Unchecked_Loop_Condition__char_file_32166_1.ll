; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_32144CWE606_Unchecked_Loop_Condition__char_file_32166_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_32144CWE606_Unchecked_Loop_Condition__char_file_32166_1.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_32144CWE606_Unchecked_Loop_Condition__char_file_32166_1(i8* %_goodB2G_data_1, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G_data_1.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i8*, align 8
  %_goodB2G_dataPtr1_0 = alloca i8**, align 8
  %_goodB2G_dataPtr2_0 = alloca i8**, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_pFile_0 = alloca %struct._IO_FILE*, align 8
  %_goodB2G_data_2 = alloca i8*, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_data_1, i8** %_goodB2G_data_1.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_1.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i8*** %_goodB2G_dataPtr1_0, metadata !23, metadata !DIExpression()), !dbg !25
  store i8** %_goodB2G_data_0, i8*** %_goodB2G_dataPtr1_0, align 8, !dbg !25
  call void @llvm.dbg.declare(metadata i8*** %_goodB2G_dataPtr2_0, metadata !26, metadata !DIExpression()), !dbg !27
  store i8** %_goodB2G_data_0, i8*** %_goodB2G_dataPtr2_0, align 8, !dbg !27
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !28, metadata !DIExpression()), !dbg !32
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !32
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !32
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !33
  store i8* %arraydecay, i8** %_goodB2G_data_0, align 8, !dbg !34
  %1 = load i8**, i8*** %_goodB2G_dataPtr1_0, align 8, !dbg !35
  %2 = load i8*, i8** %1, align 8, !dbg !37
  store i8* %2, i8** %_goodB2G_data_1.addr, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !39, metadata !DIExpression()), !dbg !44
  %3 = load i8*, i8** %_goodB2G_data_1.addr, align 8, !dbg !45
  %call = call i64 @strlen(i8* %3) #6, !dbg !46
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !44
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_goodB2G_pFile_0, metadata !47, metadata !DIExpression()), !dbg !105
  %4 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !106
  %sub = sub i64 100, %4, !dbg !108
  %cmp = icmp ugt i64 %sub, 1, !dbg !109
  br i1 %cmp, label %if.then, label %if.end11, !dbg !110

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !111
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !113
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !114
  %cmp2 = icmp ne %struct._IO_FILE* %5, null, !dbg !116
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !117

if.then3:                                         ; preds = %if.then
  %6 = load i8*, i8** %_goodB2G_data_1.addr, align 8, !dbg !118
  %7 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !121
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7, !dbg !122
  %8 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !123
  %sub4 = sub i64 100, %8, !dbg !124
  %conv = trunc i64 %sub4 to i32, !dbg !125
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !126
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %9), !dbg !127
  %cmp6 = icmp eq i8* %call5, null, !dbg !128
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !129

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !130
  %10 = load i8*, i8** %_goodB2G_data_1.addr, align 8, !dbg !132
  %11 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !133
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !132
  store i8 0, i8* %arrayidx, align 1, !dbg !134
  br label %if.end, !dbg !135

if.end:                                           ; preds = %if.then8, %if.then3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !136
  %call9 = call i32 @fclose(%struct._IO_FILE* %12), !dbg !137
  br label %if.end10, !dbg !138

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !139

if.end11:                                         ; preds = %if.end10, %entry
  %13 = load i8*, i8** %_goodB2G_data_1.addr, align 8, !dbg !140
  %14 = load i8**, i8*** %_goodB2G_dataPtr1_0, align 8, !dbg !141
  store i8* %13, i8** %14, align 8, !dbg !142
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_2, metadata !143, metadata !DIExpression()), !dbg !145
  %15 = load i8**, i8*** %_goodB2G_dataPtr2_0, align 8, !dbg !146
  %16 = load i8*, i8** %15, align 8, !dbg !147
  store i8* %16, i8** %_goodB2G_data_2, align 8, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !148, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !153, metadata !DIExpression()), !dbg !154
  %17 = load i8*, i8** %_goodB2G_data_2, align 8, !dbg !155
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_goodB2G_n_0) #7, !dbg !157
  %cmp13 = icmp eq i32 %call12, 1, !dbg !158
  br i1 %cmp13, label %if.then15, label %if.end20, !dbg !159

if.then15:                                        ; preds = %if.end11
  %18 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !160
  %cmp16 = icmp slt i32 %18, 10000, !dbg !163
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !164

if.then18:                                        ; preds = %if.then15
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !165
  %19 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !167
  %20 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !168
  call void %19(i32 %20), !dbg !167
  %21 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !169
  call void @printIntLine(i32 %21), !dbg !170
  br label %if.end19, !dbg !171

if.end19:                                         ; preds = %if.then18, %if.then15
  br label %if.end20, !dbg !172

if.end20:                                         ; preds = %if.end19, %if.end11
  br label %goodB2G_label_, !dbg !173

goodB2G_label_:                                   ; preds = %if.end20
  call void @llvm.dbg.label(metadata !174), !dbg !175
  ret void, !dbg !176
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_32144CWE606_Unchecked_Loop_Condition__char_file_32166_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_095/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_32144CWE606_Unchecked_Loop_Condition__char_file_32166_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G_data_1", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 111, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 135, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G_data_0", scope: !9, file: !1, line: 5, type: !12)
!22 = !DILocation(line: 5, column: 9, scope: !9)
!23 = !DILocalVariable(name: "_goodB2G_dataPtr1_0", scope: !9, file: !1, line: 6, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!25 = !DILocation(line: 6, column: 10, scope: !9)
!26 = !DILocalVariable(name: "_goodB2G_dataPtr2_0", scope: !9, file: !1, line: 7, type: !24)
!27 = !DILocation(line: 7, column: 10, scope: !9)
!28 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !9, file: !1, line: 8, type: !29)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 100)
!32 = !DILocation(line: 8, column: 8, scope: !9)
!33 = !DILocation(line: 9, column: 21, scope: !9)
!34 = !DILocation(line: 9, column: 19, scope: !9)
!35 = !DILocation(line: 11, column: 24, scope: !36)
!36 = distinct !DILexicalBlock(scope: !9, file: !1, line: 10, column: 3)
!37 = !DILocation(line: 11, column: 23, scope: !36)
!38 = !DILocation(line: 11, column: 21, scope: !36)
!39 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !40, file: !1, line: 13, type: !41)
!40 = distinct !DILexicalBlock(scope: !36, file: !1, line: 12, column: 5)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 46, baseType: !43)
!42 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!43 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!44 = !DILocation(line: 13, column: 14, scope: !40)
!45 = !DILocation(line: 13, column: 42, scope: !40)
!46 = !DILocation(line: 13, column: 35, scope: !40)
!47 = !DILocalVariable(name: "_goodB2G_pFile_0", scope: !40, file: !1, line: 14, type: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !50, line: 7, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !52, line: 49, size: 1728, elements: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !69, !71, !72, !73, !77, !79, !81, !85, !88, !90, !93, !96, !97, !99, !100, !101}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !51, file: !52, line: 51, baseType: !4, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !51, file: !52, line: 54, baseType: !12, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !51, file: !52, line: 55, baseType: !12, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !51, file: !52, line: 56, baseType: !12, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !51, file: !52, line: 57, baseType: !12, size: 64, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !51, file: !52, line: 58, baseType: !12, size: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !51, file: !52, line: 59, baseType: !12, size: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !51, file: !52, line: 60, baseType: !12, size: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !51, file: !52, line: 61, baseType: !12, size: 64, offset: 512)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !51, file: !52, line: 64, baseType: !12, size: 64, offset: 576)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !51, file: !52, line: 65, baseType: !12, size: 64, offset: 640)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !51, file: !52, line: 66, baseType: !12, size: 64, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !51, file: !52, line: 68, baseType: !67, size: 64, offset: 768)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !52, line: 36, flags: DIFlagFwdDecl)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !51, file: !52, line: 70, baseType: !70, size: 64, offset: 832)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !51, file: !52, line: 72, baseType: !4, size: 32, offset: 896)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !51, file: !52, line: 73, baseType: !4, size: 32, offset: 928)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !51, file: !52, line: 74, baseType: !74, size: 64, offset: 960)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !75, line: 152, baseType: !76)
!75 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!76 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !51, file: !52, line: 77, baseType: !78, size: 16, offset: 1024)
!78 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !51, file: !52, line: 78, baseType: !80, size: 8, offset: 1040)
!80 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !51, file: !52, line: 79, baseType: !82, size: 8, offset: 1048)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 1)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !51, file: !52, line: 81, baseType: !86, size: 64, offset: 1088)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !52, line: 43, baseType: null)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !51, file: !52, line: 89, baseType: !89, size: 64, offset: 1152)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !75, line: 153, baseType: !76)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !51, file: !52, line: 91, baseType: !91, size: 64, offset: 1216)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !52, line: 37, flags: DIFlagFwdDecl)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !51, file: !52, line: 92, baseType: !94, size: 64, offset: 1280)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !52, line: 38, flags: DIFlagFwdDecl)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !51, file: !52, line: 93, baseType: !70, size: 64, offset: 1344)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !51, file: !52, line: 94, baseType: !98, size: 64, offset: 1408)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !51, file: !52, line: 95, baseType: !41, size: 64, offset: 1472)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !51, file: !52, line: 96, baseType: !4, size: 32, offset: 1536)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !51, file: !52, line: 98, baseType: !102, size: 160, offset: 1568)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 20)
!105 = !DILocation(line: 14, column: 13, scope: !40)
!106 = !DILocation(line: 15, column: 18, scope: !107)
!107 = distinct !DILexicalBlock(scope: !40, file: !1, line: 15, column: 11)
!108 = !DILocation(line: 15, column: 16, scope: !107)
!109 = !DILocation(line: 15, column: 38, scope: !107)
!110 = !DILocation(line: 15, column: 11, scope: !40)
!111 = !DILocation(line: 17, column: 28, scope: !112)
!112 = distinct !DILexicalBlock(scope: !107, file: !1, line: 16, column: 7)
!113 = !DILocation(line: 17, column: 26, scope: !112)
!114 = !DILocation(line: 18, column: 13, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 18, column: 13)
!116 = !DILocation(line: 18, column: 30, scope: !115)
!117 = !DILocation(line: 18, column: 13, scope: !112)
!118 = !DILocation(line: 20, column: 21, scope: !119)
!119 = distinct !DILexicalBlock(scope: !120, file: !1, line: 20, column: 15)
!120 = distinct !DILexicalBlock(scope: !115, file: !1, line: 19, column: 9)
!121 = !DILocation(line: 20, column: 39, scope: !119)
!122 = !DILocation(line: 20, column: 37, scope: !119)
!123 = !DILocation(line: 20, column: 72, scope: !119)
!124 = !DILocation(line: 20, column: 70, scope: !119)
!125 = !DILocation(line: 20, column: 59, scope: !119)
!126 = !DILocation(line: 20, column: 93, scope: !119)
!127 = !DILocation(line: 20, column: 15, scope: !119)
!128 = !DILocation(line: 20, column: 111, scope: !119)
!129 = !DILocation(line: 20, column: 15, scope: !120)
!130 = !DILocation(line: 22, column: 13, scope: !131)
!131 = distinct !DILexicalBlock(scope: !119, file: !1, line: 21, column: 11)
!132 = !DILocation(line: 23, column: 13, scope: !131)
!133 = !DILocation(line: 23, column: 29, scope: !131)
!134 = !DILocation(line: 23, column: 49, scope: !131)
!135 = !DILocation(line: 24, column: 11, scope: !131)
!136 = !DILocation(line: 26, column: 18, scope: !120)
!137 = !DILocation(line: 26, column: 11, scope: !120)
!138 = !DILocation(line: 27, column: 9, scope: !120)
!139 = !DILocation(line: 29, column: 7, scope: !112)
!140 = !DILocation(line: 32, column: 28, scope: !36)
!141 = !DILocation(line: 32, column: 6, scope: !36)
!142 = !DILocation(line: 32, column: 26, scope: !36)
!143 = !DILocalVariable(name: "_goodB2G_data_2", scope: !144, file: !1, line: 35, type: !12)
!144 = distinct !DILexicalBlock(scope: !9, file: !1, line: 34, column: 3)
!145 = !DILocation(line: 35, column: 11, scope: !144)
!146 = !DILocation(line: 35, column: 30, scope: !144)
!147 = !DILocation(line: 35, column: 29, scope: !144)
!148 = !DILocalVariable(name: "_goodB2G_i_0", scope: !149, file: !1, line: 37, type: !4)
!149 = distinct !DILexicalBlock(scope: !144, file: !1, line: 36, column: 5)
!150 = !DILocation(line: 37, column: 11, scope: !149)
!151 = !DILocalVariable(name: "_goodB2G_n_0", scope: !149, file: !1, line: 38, type: !4)
!152 = !DILocation(line: 38, column: 11, scope: !149)
!153 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !149, file: !1, line: 39, type: !4)
!154 = !DILocation(line: 39, column: 11, scope: !149)
!155 = !DILocation(line: 40, column: 18, scope: !156)
!156 = distinct !DILexicalBlock(scope: !149, file: !1, line: 40, column: 11)
!157 = !DILocation(line: 40, column: 11, scope: !156)
!158 = !DILocation(line: 40, column: 56, scope: !156)
!159 = !DILocation(line: 40, column: 11, scope: !149)
!160 = !DILocation(line: 42, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !1, line: 42, column: 13)
!162 = distinct !DILexicalBlock(scope: !156, file: !1, line: 41, column: 7)
!163 = !DILocation(line: 42, column: 26, scope: !161)
!164 = !DILocation(line: 42, column: 13, scope: !162)
!165 = !DILocation(line: 44, column: 34, scope: !166)
!166 = distinct !DILexicalBlock(scope: !161, file: !1, line: 43, column: 9)
!167 = !DILocation(line: 45, column: 11, scope: !166)
!168 = !DILocation(line: 45, column: 18, scope: !166)
!169 = !DILocation(line: 46, column: 24, scope: !166)
!170 = !DILocation(line: 46, column: 11, scope: !166)
!171 = !DILocation(line: 47, column: 9, scope: !166)
!172 = !DILocation(line: 49, column: 7, scope: !162)
!173 = !DILocation(line: 52, column: 3, scope: !144)
!174 = !DILabel(scope: !9, name: "goodB2G_label_", file: !1, line: 53)
!175 = !DILocation(line: 53, column: 3, scope: !9)
!176 = !DILocation(line: 58, column: 1, scope: !9)
