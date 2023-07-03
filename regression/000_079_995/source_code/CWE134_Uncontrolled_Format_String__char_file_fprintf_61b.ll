; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_fprintf_61b.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_fprintf_61b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_badSource(i8* %data) #0 !dbg !10 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !17, metadata !DIExpression()), !dbg !22
  %0 = load i8*, i8** %data.addr, align 8, !dbg !23
  %call = call i64 @strlen(i8* %0) #5, !dbg !24
  store i64 %call, i64* %dataLen, align 8, !dbg !22
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !25, metadata !DIExpression()), !dbg !82
  %1 = load i64, i64* %dataLen, align 8, !dbg !83
  %sub = sub i64 100, %1, !dbg !85
  %cmp = icmp ugt i64 %sub, 1, !dbg !86
  br i1 %cmp, label %if.then, label %if.end11, !dbg !87

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !88
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !90
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !91
  %cmp2 = icmp ne %struct._IO_FILE* %2, null, !dbg !93
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !94

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data.addr, align 8, !dbg !95
  %4 = load i64, i64* %dataLen, align 8, !dbg !98
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !99
  %5 = load i64, i64* %dataLen, align 8, !dbg !100
  %sub4 = sub i64 100, %5, !dbg !101
  %conv = trunc i64 %sub4 to i32, !dbg !102
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !103
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !104
  %cmp6 = icmp eq i8* %call5, null, !dbg !105
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !106

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !107
  %7 = load i8*, i8** %data.addr, align 8, !dbg !109
  %8 = load i64, i64* %dataLen, align 8, !dbg !110
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !109
  store i8 0, i8* %arrayidx, align 1, !dbg !111
  br label %if.end, !dbg !112

if.end:                                           ; preds = %if.then8, %if.then3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !113
  %call9 = call i32 @fclose(%struct._IO_FILE* %9), !dbg !114
  br label %if.end10, !dbg !115

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !116

if.end11:                                         ; preds = %if.end10, %entry
  %10 = load i8*, i8** %data.addr, align 8, !dbg !117
  ret i8* %10, !dbg !118
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodG2BSource(i8* %data) #0 !dbg !119 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !120, metadata !DIExpression()), !dbg !121
  %0 = load i8*, i8** %data.addr, align 8, !dbg !122
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !123
  %1 = load i8*, i8** %data.addr, align 8, !dbg !124
  ret i8* %1, !dbg !125
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodB2GSource(i8* %data) #0 !dbg !126 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !129, metadata !DIExpression()), !dbg !131
  %0 = load i8*, i8** %data.addr, align 8, !dbg !132
  %call = call i64 @strlen(i8* %0) #5, !dbg !133
  store i64 %call, i64* %dataLen, align 8, !dbg !131
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !134, metadata !DIExpression()), !dbg !135
  %1 = load i64, i64* %dataLen, align 8, !dbg !136
  %sub = sub i64 100, %1, !dbg !138
  %cmp = icmp ugt i64 %sub, 1, !dbg !139
  br i1 %cmp, label %if.then, label %if.end11, !dbg !140

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !141
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !143
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !144
  %cmp2 = icmp ne %struct._IO_FILE* %2, null, !dbg !146
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !147

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data.addr, align 8, !dbg !148
  %4 = load i64, i64* %dataLen, align 8, !dbg !151
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !152
  %5 = load i64, i64* %dataLen, align 8, !dbg !153
  %sub4 = sub i64 100, %5, !dbg !154
  %conv = trunc i64 %sub4 to i32, !dbg !155
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !156
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !157
  %cmp6 = icmp eq i8* %call5, null, !dbg !158
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !159

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !160
  %7 = load i8*, i8** %data.addr, align 8, !dbg !162
  %8 = load i64, i64* %dataLen, align 8, !dbg !163
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !162
  store i8 0, i8* %arrayidx, align 1, !dbg !164
  br label %if.end, !dbg !165

if.end:                                           ; preds = %if.then8, %if.then3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !166
  %call9 = call i32 @fclose(%struct._IO_FILE* %9), !dbg !167
  br label %if.end10, !dbg !168

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !169

if.end11:                                         ; preds = %if.end10, %entry
  %10 = load i8*, i8** %data.addr, align 8, !dbg !170
  ret i8* %10, !dbg !171
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_61b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_995/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_badSource", scope: !1, file: !1, line: 32, type: !11, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "data", arg: 1, scope: !10, file: !1, line: 32, type: !13)
!16 = !DILocation(line: 32, column: 82, scope: !10)
!17 = !DILocalVariable(name: "dataLen", scope: !18, file: !1, line: 36, type: !19)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 34, column: 5)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 46, baseType: !21)
!20 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!21 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !DILocation(line: 36, column: 16, scope: !18)
!23 = !DILocation(line: 36, column: 33, scope: !18)
!24 = !DILocation(line: 36, column: 26, scope: !18)
!25 = !DILocalVariable(name: "pFile", scope: !18, file: !1, line: 37, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !28, line: 7, baseType: !29)
!28 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !30, line: 49, size: 1728, elements: !31)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !47, !49, !50, !51, !55, !57, !59, !63, !66, !68, !71, !74, !75, !76, !77, !78}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !29, file: !30, line: 51, baseType: !5, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !29, file: !30, line: 54, baseType: !13, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !29, file: !30, line: 55, baseType: !13, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !29, file: !30, line: 56, baseType: !13, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !29, file: !30, line: 57, baseType: !13, size: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !29, file: !30, line: 58, baseType: !13, size: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !29, file: !30, line: 59, baseType: !13, size: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !29, file: !30, line: 60, baseType: !13, size: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !29, file: !30, line: 61, baseType: !13, size: 64, offset: 512)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !29, file: !30, line: 64, baseType: !13, size: 64, offset: 576)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !29, file: !30, line: 65, baseType: !13, size: 64, offset: 640)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !29, file: !30, line: 66, baseType: !13, size: 64, offset: 704)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !29, file: !30, line: 68, baseType: !45, size: 64, offset: 768)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !30, line: 36, flags: DIFlagFwdDecl)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !29, file: !30, line: 70, baseType: !48, size: 64, offset: 832)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !29, file: !30, line: 72, baseType: !5, size: 32, offset: 896)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !29, file: !30, line: 73, baseType: !5, size: 32, offset: 928)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !29, file: !30, line: 74, baseType: !52, size: 64, offset: 960)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !53, line: 152, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!54 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !29, file: !30, line: 77, baseType: !56, size: 16, offset: 1024)
!56 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !29, file: !30, line: 78, baseType: !58, size: 8, offset: 1040)
!58 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !29, file: !30, line: 79, baseType: !60, size: 8, offset: 1048)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 1)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !29, file: !30, line: 81, baseType: !64, size: 64, offset: 1088)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !30, line: 43, baseType: null)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !29, file: !30, line: 89, baseType: !67, size: 64, offset: 1152)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !53, line: 153, baseType: !54)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !29, file: !30, line: 91, baseType: !69, size: 64, offset: 1216)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !30, line: 37, flags: DIFlagFwdDecl)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !29, file: !30, line: 92, baseType: !72, size: 64, offset: 1280)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !30, line: 38, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !29, file: !30, line: 93, baseType: !48, size: 64, offset: 1344)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !29, file: !30, line: 94, baseType: !4, size: 64, offset: 1408)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !29, file: !30, line: 95, baseType: !19, size: 64, offset: 1472)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !29, file: !30, line: 96, baseType: !5, size: 32, offset: 1536)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !29, file: !30, line: 98, baseType: !79, size: 160, offset: 1568)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 20)
!82 = !DILocation(line: 37, column: 16, scope: !18)
!83 = !DILocation(line: 39, column: 17, scope: !84)
!84 = distinct !DILexicalBlock(scope: !18, file: !1, line: 39, column: 13)
!85 = !DILocation(line: 39, column: 16, scope: !84)
!86 = !DILocation(line: 39, column: 25, scope: !84)
!87 = !DILocation(line: 39, column: 13, scope: !18)
!88 = !DILocation(line: 41, column: 21, scope: !89)
!89 = distinct !DILexicalBlock(scope: !84, file: !1, line: 40, column: 9)
!90 = !DILocation(line: 41, column: 19, scope: !89)
!91 = !DILocation(line: 42, column: 17, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !1, line: 42, column: 17)
!93 = !DILocation(line: 42, column: 23, scope: !92)
!94 = !DILocation(line: 42, column: 17, scope: !89)
!95 = !DILocation(line: 45, column: 27, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 45, column: 21)
!97 = distinct !DILexicalBlock(scope: !92, file: !1, line: 43, column: 13)
!98 = !DILocation(line: 45, column: 32, scope: !96)
!99 = !DILocation(line: 45, column: 31, scope: !96)
!100 = !DILocation(line: 45, column: 51, scope: !96)
!101 = !DILocation(line: 45, column: 50, scope: !96)
!102 = !DILocation(line: 45, column: 41, scope: !96)
!103 = !DILocation(line: 45, column: 61, scope: !96)
!104 = !DILocation(line: 45, column: 21, scope: !96)
!105 = !DILocation(line: 45, column: 68, scope: !96)
!106 = !DILocation(line: 45, column: 21, scope: !97)
!107 = !DILocation(line: 47, column: 21, scope: !108)
!108 = distinct !DILexicalBlock(scope: !96, file: !1, line: 46, column: 17)
!109 = !DILocation(line: 49, column: 21, scope: !108)
!110 = !DILocation(line: 49, column: 26, scope: !108)
!111 = !DILocation(line: 49, column: 35, scope: !108)
!112 = !DILocation(line: 50, column: 17, scope: !108)
!113 = !DILocation(line: 51, column: 24, scope: !97)
!114 = !DILocation(line: 51, column: 17, scope: !97)
!115 = !DILocation(line: 52, column: 13, scope: !97)
!116 = !DILocation(line: 53, column: 9, scope: !89)
!117 = !DILocation(line: 55, column: 12, scope: !10)
!118 = !DILocation(line: 55, column: 5, scope: !10)
!119 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodG2BSource", scope: !1, file: !1, line: 63, type: !11, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!120 = !DILocalVariable(name: "data", arg: 1, scope: !119, file: !1, line: 63, type: !13)
!121 = !DILocation(line: 63, column: 86, scope: !119)
!122 = !DILocation(line: 66, column: 12, scope: !119)
!123 = !DILocation(line: 66, column: 5, scope: !119)
!124 = !DILocation(line: 67, column: 12, scope: !119)
!125 = !DILocation(line: 67, column: 5, scope: !119)
!126 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodB2GSource", scope: !1, file: !1, line: 71, type: !11, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!127 = !DILocalVariable(name: "data", arg: 1, scope: !126, file: !1, line: 71, type: !13)
!128 = !DILocation(line: 71, column: 86, scope: !126)
!129 = !DILocalVariable(name: "dataLen", scope: !130, file: !1, line: 75, type: !19)
!130 = distinct !DILexicalBlock(scope: !126, file: !1, line: 73, column: 5)
!131 = !DILocation(line: 75, column: 16, scope: !130)
!132 = !DILocation(line: 75, column: 33, scope: !130)
!133 = !DILocation(line: 75, column: 26, scope: !130)
!134 = !DILocalVariable(name: "pFile", scope: !130, file: !1, line: 76, type: !26)
!135 = !DILocation(line: 76, column: 16, scope: !130)
!136 = !DILocation(line: 78, column: 17, scope: !137)
!137 = distinct !DILexicalBlock(scope: !130, file: !1, line: 78, column: 13)
!138 = !DILocation(line: 78, column: 16, scope: !137)
!139 = !DILocation(line: 78, column: 25, scope: !137)
!140 = !DILocation(line: 78, column: 13, scope: !130)
!141 = !DILocation(line: 80, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !1, line: 79, column: 9)
!143 = !DILocation(line: 80, column: 19, scope: !142)
!144 = !DILocation(line: 81, column: 17, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !1, line: 81, column: 17)
!146 = !DILocation(line: 81, column: 23, scope: !145)
!147 = !DILocation(line: 81, column: 17, scope: !142)
!148 = !DILocation(line: 84, column: 27, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !1, line: 84, column: 21)
!150 = distinct !DILexicalBlock(scope: !145, file: !1, line: 82, column: 13)
!151 = !DILocation(line: 84, column: 32, scope: !149)
!152 = !DILocation(line: 84, column: 31, scope: !149)
!153 = !DILocation(line: 84, column: 51, scope: !149)
!154 = !DILocation(line: 84, column: 50, scope: !149)
!155 = !DILocation(line: 84, column: 41, scope: !149)
!156 = !DILocation(line: 84, column: 61, scope: !149)
!157 = !DILocation(line: 84, column: 21, scope: !149)
!158 = !DILocation(line: 84, column: 68, scope: !149)
!159 = !DILocation(line: 84, column: 21, scope: !150)
!160 = !DILocation(line: 86, column: 21, scope: !161)
!161 = distinct !DILexicalBlock(scope: !149, file: !1, line: 85, column: 17)
!162 = !DILocation(line: 88, column: 21, scope: !161)
!163 = !DILocation(line: 88, column: 26, scope: !161)
!164 = !DILocation(line: 88, column: 35, scope: !161)
!165 = !DILocation(line: 89, column: 17, scope: !161)
!166 = !DILocation(line: 90, column: 24, scope: !150)
!167 = !DILocation(line: 90, column: 17, scope: !150)
!168 = !DILocation(line: 91, column: 13, scope: !150)
!169 = !DILocation(line: 92, column: 9, scope: !142)
!170 = !DILocation(line: 94, column: 12, scope: !126)
!171 = !DILocation(line: 94, column: 5, scope: !126)
