; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_34134CWE606_Unchecked_Loop_Condition__char_file_34155_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_34134CWE606_Unchecked_Loop_Condition__char_file_34155_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType = type { i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_34134CWE606_Unchecked_Loop_Condition__char_file_34155_1(i8* %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_myUnion_0 = alloca %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_pFile_0 = alloca %struct._IO_FILE*, align 8
  %_goodB2G_data_1 = alloca i8*, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %_goodB2G_myUnion_0, metadata !21, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !29, metadata !DIExpression()), !dbg !33
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !33
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !33
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !34
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !35
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !36, metadata !DIExpression()), !dbg !41
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !42
  %call = call i64 @strlen(i8* %1) #6, !dbg !43
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !41
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_goodB2G_pFile_0, metadata !44, metadata !DIExpression()), !dbg !102
  %2 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !103
  %sub = sub i64 100, %2, !dbg !105
  %cmp = icmp ugt i64 %sub, 1, !dbg !106
  br i1 %cmp, label %if.then, label %if.end11, !dbg !107

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !108
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !110
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !111
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !113
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !114

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !115
  %5 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !118
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !119
  %6 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !120
  %sub4 = sub i64 100, %6, !dbg !121
  %conv = trunc i64 %sub4 to i32, !dbg !122
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !123
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !124
  %cmp6 = icmp eq i8* %call5, null, !dbg !125
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !126

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !127
  %8 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !129
  %9 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !130
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !129
  store i8 0, i8* %arrayidx, align 1, !dbg !131
  br label %if.end, !dbg !132

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !133
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !134
  br label %if.end10, !dbg !135

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !136

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !137
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %_goodB2G_myUnion_0 to i8**, !dbg !138
  store i8* %11, i8** %unionFirst, align 8, !dbg !139
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_1, metadata !140, metadata !DIExpression()), !dbg !142
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %_goodB2G_myUnion_0 to i8**, !dbg !143
  %12 = load i8*, i8** %unionSecond, align 8, !dbg !143
  store i8* %12, i8** %_goodB2G_data_1, align 8, !dbg !142
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !144, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !147, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !149, metadata !DIExpression()), !dbg !150
  %13 = load i8*, i8** %_goodB2G_data_1, align 8, !dbg !151
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_goodB2G_n_0) #7, !dbg !153
  %cmp13 = icmp eq i32 %call12, 1, !dbg !154
  br i1 %cmp13, label %if.then15, label %if.end20, !dbg !155

if.then15:                                        ; preds = %if.end11
  %14 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !156
  %cmp16 = icmp slt i32 %14, 10000, !dbg !159
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !160

if.then18:                                        ; preds = %if.then15
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !161
  %15 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !163
  %16 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !164
  call void %15(i32 %16), !dbg !163
  %17 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !165
  call void @printIntLine(i32 %17), !dbg !166
  br label %if.end19, !dbg !167

if.end19:                                         ; preds = %if.then18, %if.then15
  br label %if.end20, !dbg !168

if.end20:                                         ; preds = %if.end19, %if.end11
  br label %goodB2G_label_, !dbg !169

goodB2G_label_:                                   ; preds = %if.end20
  call void @llvm.dbg.label(metadata !170), !dbg !171
  ret void, !dbg !172
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_34134CWE606_Unchecked_Loop_Condition__char_file_34155_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_097/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_34134CWE606_Unchecked_Loop_Condition__char_file_34155_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 111, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 135, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G_myUnion_0", scope: !9, file: !1, line: 5, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_file_34_unionType", file: !23, line: 9, baseType: !24)
!23 = !DIFile(filename: "../source_code/_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_097/code_gened")
!24 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !23, line: 5, size: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "unionFirst", scope: !24, file: !23, line: 7, baseType: !12, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "unionSecond", scope: !24, file: !23, line: 8, baseType: !12, size: 64)
!28 = !DILocation(line: 5, column: 59, scope: !9)
!29 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !9, file: !1, line: 6, type: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 100)
!33 = !DILocation(line: 6, column: 8, scope: !9)
!34 = !DILocation(line: 7, column: 21, scope: !9)
!35 = !DILocation(line: 7, column: 19, scope: !9)
!36 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !37, file: !1, line: 9, type: !38)
!37 = distinct !DILexicalBlock(scope: !9, file: !1, line: 8, column: 3)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 46, baseType: !40)
!39 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!40 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!41 = !DILocation(line: 9, column: 12, scope: !37)
!42 = !DILocation(line: 9, column: 40, scope: !37)
!43 = !DILocation(line: 9, column: 33, scope: !37)
!44 = !DILocalVariable(name: "_goodB2G_pFile_0", scope: !37, file: !1, line: 10, type: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !47, line: 7, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !49, line: 49, size: 1728, elements: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !66, !68, !69, !70, !74, !76, !78, !82, !85, !87, !90, !93, !94, !96, !97, !98}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !48, file: !49, line: 51, baseType: !4, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !48, file: !49, line: 54, baseType: !12, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !48, file: !49, line: 55, baseType: !12, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !48, file: !49, line: 56, baseType: !12, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !48, file: !49, line: 57, baseType: !12, size: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !48, file: !49, line: 58, baseType: !12, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !48, file: !49, line: 59, baseType: !12, size: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !48, file: !49, line: 60, baseType: !12, size: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !48, file: !49, line: 61, baseType: !12, size: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !48, file: !49, line: 64, baseType: !12, size: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !48, file: !49, line: 65, baseType: !12, size: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !48, file: !49, line: 66, baseType: !12, size: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !48, file: !49, line: 68, baseType: !64, size: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !49, line: 36, flags: DIFlagFwdDecl)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !48, file: !49, line: 70, baseType: !67, size: 64, offset: 832)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !48, file: !49, line: 72, baseType: !4, size: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !48, file: !49, line: 73, baseType: !4, size: 32, offset: 928)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !48, file: !49, line: 74, baseType: !71, size: 64, offset: 960)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !72, line: 152, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!73 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !48, file: !49, line: 77, baseType: !75, size: 16, offset: 1024)
!75 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !48, file: !49, line: 78, baseType: !77, size: 8, offset: 1040)
!77 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !48, file: !49, line: 79, baseType: !79, size: 8, offset: 1048)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 1)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !48, file: !49, line: 81, baseType: !83, size: 64, offset: 1088)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !49, line: 43, baseType: null)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !48, file: !49, line: 89, baseType: !86, size: 64, offset: 1152)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !72, line: 153, baseType: !73)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !48, file: !49, line: 91, baseType: !88, size: 64, offset: 1216)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !49, line: 37, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !48, file: !49, line: 92, baseType: !91, size: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !49, line: 38, flags: DIFlagFwdDecl)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !48, file: !49, line: 93, baseType: !67, size: 64, offset: 1344)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !48, file: !49, line: 94, baseType: !95, size: 64, offset: 1408)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !48, file: !49, line: 95, baseType: !38, size: 64, offset: 1472)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !48, file: !49, line: 96, baseType: !4, size: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !48, file: !49, line: 98, baseType: !99, size: 160, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DILocation(line: 10, column: 11, scope: !37)
!103 = !DILocation(line: 11, column: 16, scope: !104)
!104 = distinct !DILexicalBlock(scope: !37, file: !1, line: 11, column: 9)
!105 = !DILocation(line: 11, column: 14, scope: !104)
!106 = !DILocation(line: 11, column: 36, scope: !104)
!107 = !DILocation(line: 11, column: 9, scope: !37)
!108 = !DILocation(line: 13, column: 26, scope: !109)
!109 = distinct !DILexicalBlock(scope: !104, file: !1, line: 12, column: 5)
!110 = !DILocation(line: 13, column: 24, scope: !109)
!111 = !DILocation(line: 14, column: 11, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !1, line: 14, column: 11)
!113 = !DILocation(line: 14, column: 28, scope: !112)
!114 = !DILocation(line: 14, column: 11, scope: !109)
!115 = !DILocation(line: 16, column: 19, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !1, line: 16, column: 13)
!117 = distinct !DILexicalBlock(scope: !112, file: !1, line: 15, column: 7)
!118 = !DILocation(line: 16, column: 37, scope: !116)
!119 = !DILocation(line: 16, column: 35, scope: !116)
!120 = !DILocation(line: 16, column: 70, scope: !116)
!121 = !DILocation(line: 16, column: 68, scope: !116)
!122 = !DILocation(line: 16, column: 57, scope: !116)
!123 = !DILocation(line: 16, column: 91, scope: !116)
!124 = !DILocation(line: 16, column: 13, scope: !116)
!125 = !DILocation(line: 16, column: 109, scope: !116)
!126 = !DILocation(line: 16, column: 13, scope: !117)
!127 = !DILocation(line: 18, column: 11, scope: !128)
!128 = distinct !DILexicalBlock(scope: !116, file: !1, line: 17, column: 9)
!129 = !DILocation(line: 19, column: 11, scope: !128)
!130 = !DILocation(line: 19, column: 27, scope: !128)
!131 = !DILocation(line: 19, column: 47, scope: !128)
!132 = !DILocation(line: 20, column: 9, scope: !128)
!133 = !DILocation(line: 22, column: 16, scope: !117)
!134 = !DILocation(line: 22, column: 9, scope: !117)
!135 = !DILocation(line: 23, column: 7, scope: !117)
!136 = !DILocation(line: 25, column: 5, scope: !109)
!137 = !DILocation(line: 28, column: 35, scope: !9)
!138 = !DILocation(line: 28, column: 22, scope: !9)
!139 = !DILocation(line: 28, column: 33, scope: !9)
!140 = !DILocalVariable(name: "_goodB2G_data_1", scope: !141, file: !1, line: 30, type: !12)
!141 = distinct !DILexicalBlock(scope: !9, file: !1, line: 29, column: 3)
!142 = !DILocation(line: 30, column: 11, scope: !141)
!143 = !DILocation(line: 30, column: 48, scope: !141)
!144 = !DILocalVariable(name: "_goodB2G_i_0", scope: !145, file: !1, line: 32, type: !4)
!145 = distinct !DILexicalBlock(scope: !141, file: !1, line: 31, column: 5)
!146 = !DILocation(line: 32, column: 11, scope: !145)
!147 = !DILocalVariable(name: "_goodB2G_n_0", scope: !145, file: !1, line: 33, type: !4)
!148 = !DILocation(line: 33, column: 11, scope: !145)
!149 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !145, file: !1, line: 34, type: !4)
!150 = !DILocation(line: 34, column: 11, scope: !145)
!151 = !DILocation(line: 35, column: 18, scope: !152)
!152 = distinct !DILexicalBlock(scope: !145, file: !1, line: 35, column: 11)
!153 = !DILocation(line: 35, column: 11, scope: !152)
!154 = !DILocation(line: 35, column: 56, scope: !152)
!155 = !DILocation(line: 35, column: 11, scope: !145)
!156 = !DILocation(line: 37, column: 13, scope: !157)
!157 = distinct !DILexicalBlock(scope: !158, file: !1, line: 37, column: 13)
!158 = distinct !DILexicalBlock(scope: !152, file: !1, line: 36, column: 7)
!159 = !DILocation(line: 37, column: 26, scope: !157)
!160 = !DILocation(line: 37, column: 13, scope: !158)
!161 = !DILocation(line: 39, column: 34, scope: !162)
!162 = distinct !DILexicalBlock(scope: !157, file: !1, line: 38, column: 9)
!163 = !DILocation(line: 40, column: 11, scope: !162)
!164 = !DILocation(line: 40, column: 18, scope: !162)
!165 = !DILocation(line: 41, column: 24, scope: !162)
!166 = !DILocation(line: 41, column: 11, scope: !162)
!167 = !DILocation(line: 42, column: 9, scope: !162)
!168 = !DILocation(line: 44, column: 7, scope: !158)
!169 = !DILocation(line: 47, column: 3, scope: !141)
!170 = !DILabel(scope: !9, name: "goodB2G_label_", file: !1, line: 48)
!171 = !DILocation(line: 48, column: 3, scope: !9)
!172 = !DILocation(line: 53, column: 1, scope: !9)
