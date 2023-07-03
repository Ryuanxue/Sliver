; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_fprintf_63a.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_fprintf_63a.c"
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_63_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !17, metadata !DIExpression()), !dbg !21
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !21
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !21
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !22
  store i8* %arraydecay, i8** %data, align 8, !dbg !23
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !24, metadata !DIExpression()), !dbg !29
  %1 = load i8*, i8** %data, align 8, !dbg !30
  %call = call i64 @strlen(i8* %1) #6, !dbg !31
  store i64 %call, i64* %dataLen, align 8, !dbg !29
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !32, metadata !DIExpression()), !dbg !89
  %2 = load i64, i64* %dataLen, align 8, !dbg !90
  %sub = sub i64 100, %2, !dbg !92
  %cmp = icmp ugt i64 %sub, 1, !dbg !93
  br i1 %cmp, label %if.then, label %if.end11, !dbg !94

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !95
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !97
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !98
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !100
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !101

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !102
  %5 = load i64, i64* %dataLen, align 8, !dbg !105
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !106
  %6 = load i64, i64* %dataLen, align 8, !dbg !107
  %sub4 = sub i64 100, %6, !dbg !108
  %conv = trunc i64 %sub4 to i32, !dbg !109
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !110
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !111
  %cmp6 = icmp eq i8* %call5, null, !dbg !112
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !113

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !114
  %8 = load i8*, i8** %data, align 8, !dbg !116
  %9 = load i64, i64* %dataLen, align 8, !dbg !117
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !116
  store i8 0, i8* %arrayidx, align 1, !dbg !118
  br label %if.end, !dbg !119

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !120
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !121
  br label %if.end10, !dbg !122

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !123

if.end11:                                         ; preds = %if.end10, %entry
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_badSink(i8** %data), !dbg !124
  ret void, !dbg !125
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

declare dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_badSink(i8**) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !126 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !129, metadata !DIExpression()), !dbg !130
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !130
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !130
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !131
  store i8* %arraydecay, i8** %data, align 8, !dbg !132
  %1 = load i8*, i8** %data, align 8, !dbg !133
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !134
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_goodG2BSink(i8** %data), !dbg !135
  ret void, !dbg !136
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

declare dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_goodG2BSink(i8**) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !137 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !140, metadata !DIExpression()), !dbg !141
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !141
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !141
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !142
  store i8* %arraydecay, i8** %data, align 8, !dbg !143
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !144, metadata !DIExpression()), !dbg !146
  %1 = load i8*, i8** %data, align 8, !dbg !147
  %call = call i64 @strlen(i8* %1) #6, !dbg !148
  store i64 %call, i64* %dataLen, align 8, !dbg !146
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !149, metadata !DIExpression()), !dbg !150
  %2 = load i64, i64* %dataLen, align 8, !dbg !151
  %sub = sub i64 100, %2, !dbg !153
  %cmp = icmp ugt i64 %sub, 1, !dbg !154
  br i1 %cmp, label %if.then, label %if.end11, !dbg !155

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !156
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !158
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !159
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !161
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !162

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !163
  %5 = load i64, i64* %dataLen, align 8, !dbg !166
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !167
  %6 = load i64, i64* %dataLen, align 8, !dbg !168
  %sub4 = sub i64 100, %6, !dbg !169
  %conv = trunc i64 %sub4 to i32, !dbg !170
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !171
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !172
  %cmp6 = icmp eq i8* %call5, null, !dbg !173
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !174

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !175
  %8 = load i8*, i8** %data, align 8, !dbg !177
  %9 = load i64, i64* %dataLen, align 8, !dbg !178
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !177
  store i8 0, i8* %arrayidx, align 1, !dbg !179
  br label %if.end, !dbg !180

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !181
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !182
  br label %if.end10, !dbg !183

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !184

if.end11:                                         ; preds = %if.end10, %entry
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_goodB2GSink(i8** %data), !dbg !185
  ret void, !dbg !186
}

declare dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_goodB2GSink(i8**) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_63_good() #0 !dbg !187 {
entry:
  call void @goodG2B(), !dbg !188
  call void @goodB2G(), !dbg !189
  ret void, !dbg !190
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_63a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_997/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_63_bad", scope: !1, file: !1, line: 35, type: !11, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 37, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 37, column: 12, scope: !10)
!17 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 38, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 100)
!21 = !DILocation(line: 38, column: 10, scope: !10)
!22 = !DILocation(line: 39, column: 12, scope: !10)
!23 = !DILocation(line: 39, column: 10, scope: !10)
!24 = !DILocalVariable(name: "dataLen", scope: !25, file: !1, line: 42, type: !26)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 40, column: 5)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DILocation(line: 42, column: 16, scope: !25)
!30 = !DILocation(line: 42, column: 33, scope: !25)
!31 = !DILocation(line: 42, column: 26, scope: !25)
!32 = !DILocalVariable(name: "pFile", scope: !25, file: !1, line: 43, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !35, line: 7, baseType: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !37, line: 49, size: 1728, elements: !38)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !54, !56, !57, !58, !62, !64, !66, !70, !73, !75, !78, !81, !82, !83, !84, !85}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !36, file: !37, line: 51, baseType: !5, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !36, file: !37, line: 54, baseType: !14, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !36, file: !37, line: 55, baseType: !14, size: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !36, file: !37, line: 56, baseType: !14, size: 64, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !36, file: !37, line: 57, baseType: !14, size: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !36, file: !37, line: 58, baseType: !14, size: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !36, file: !37, line: 59, baseType: !14, size: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !36, file: !37, line: 60, baseType: !14, size: 64, offset: 448)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !36, file: !37, line: 61, baseType: !14, size: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !36, file: !37, line: 64, baseType: !14, size: 64, offset: 576)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !36, file: !37, line: 65, baseType: !14, size: 64, offset: 640)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !36, file: !37, line: 66, baseType: !14, size: 64, offset: 704)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !36, file: !37, line: 68, baseType: !52, size: 64, offset: 768)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !37, line: 36, flags: DIFlagFwdDecl)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !36, file: !37, line: 70, baseType: !55, size: 64, offset: 832)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !36, file: !37, line: 72, baseType: !5, size: 32, offset: 896)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !36, file: !37, line: 73, baseType: !5, size: 32, offset: 928)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !36, file: !37, line: 74, baseType: !59, size: 64, offset: 960)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !60, line: 152, baseType: !61)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!61 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !36, file: !37, line: 77, baseType: !63, size: 16, offset: 1024)
!63 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !36, file: !37, line: 78, baseType: !65, size: 8, offset: 1040)
!65 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !36, file: !37, line: 79, baseType: !67, size: 8, offset: 1048)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 1)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !36, file: !37, line: 81, baseType: !71, size: 64, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !37, line: 43, baseType: null)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !36, file: !37, line: 89, baseType: !74, size: 64, offset: 1152)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !60, line: 153, baseType: !61)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !36, file: !37, line: 91, baseType: !76, size: 64, offset: 1216)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !37, line: 37, flags: DIFlagFwdDecl)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !36, file: !37, line: 92, baseType: !79, size: 64, offset: 1280)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !37, line: 38, flags: DIFlagFwdDecl)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !36, file: !37, line: 93, baseType: !55, size: 64, offset: 1344)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !36, file: !37, line: 94, baseType: !4, size: 64, offset: 1408)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !36, file: !37, line: 95, baseType: !26, size: 64, offset: 1472)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !36, file: !37, line: 96, baseType: !5, size: 32, offset: 1536)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !36, file: !37, line: 98, baseType: !86, size: 160, offset: 1568)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 20)
!89 = !DILocation(line: 43, column: 16, scope: !25)
!90 = !DILocation(line: 45, column: 17, scope: !91)
!91 = distinct !DILexicalBlock(scope: !25, file: !1, line: 45, column: 13)
!92 = !DILocation(line: 45, column: 16, scope: !91)
!93 = !DILocation(line: 45, column: 25, scope: !91)
!94 = !DILocation(line: 45, column: 13, scope: !25)
!95 = !DILocation(line: 47, column: 21, scope: !96)
!96 = distinct !DILexicalBlock(scope: !91, file: !1, line: 46, column: 9)
!97 = !DILocation(line: 47, column: 19, scope: !96)
!98 = !DILocation(line: 48, column: 17, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !1, line: 48, column: 17)
!100 = !DILocation(line: 48, column: 23, scope: !99)
!101 = !DILocation(line: 48, column: 17, scope: !96)
!102 = !DILocation(line: 51, column: 27, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !1, line: 51, column: 21)
!104 = distinct !DILexicalBlock(scope: !99, file: !1, line: 49, column: 13)
!105 = !DILocation(line: 51, column: 32, scope: !103)
!106 = !DILocation(line: 51, column: 31, scope: !103)
!107 = !DILocation(line: 51, column: 51, scope: !103)
!108 = !DILocation(line: 51, column: 50, scope: !103)
!109 = !DILocation(line: 51, column: 41, scope: !103)
!110 = !DILocation(line: 51, column: 61, scope: !103)
!111 = !DILocation(line: 51, column: 21, scope: !103)
!112 = !DILocation(line: 51, column: 68, scope: !103)
!113 = !DILocation(line: 51, column: 21, scope: !104)
!114 = !DILocation(line: 53, column: 21, scope: !115)
!115 = distinct !DILexicalBlock(scope: !103, file: !1, line: 52, column: 17)
!116 = !DILocation(line: 55, column: 21, scope: !115)
!117 = !DILocation(line: 55, column: 26, scope: !115)
!118 = !DILocation(line: 55, column: 35, scope: !115)
!119 = !DILocation(line: 56, column: 17, scope: !115)
!120 = !DILocation(line: 57, column: 24, scope: !104)
!121 = !DILocation(line: 57, column: 17, scope: !104)
!122 = !DILocation(line: 58, column: 13, scope: !104)
!123 = !DILocation(line: 59, column: 9, scope: !96)
!124 = !DILocation(line: 61, column: 5, scope: !10)
!125 = !DILocation(line: 62, column: 1, scope: !10)
!126 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 70, type: !11, scopeLine: 71, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!127 = !DILocalVariable(name: "data", scope: !126, file: !1, line: 72, type: !14)
!128 = !DILocation(line: 72, column: 12, scope: !126)
!129 = !DILocalVariable(name: "dataBuffer", scope: !126, file: !1, line: 73, type: !18)
!130 = !DILocation(line: 73, column: 10, scope: !126)
!131 = !DILocation(line: 74, column: 12, scope: !126)
!132 = !DILocation(line: 74, column: 10, scope: !126)
!133 = !DILocation(line: 76, column: 12, scope: !126)
!134 = !DILocation(line: 76, column: 5, scope: !126)
!135 = !DILocation(line: 77, column: 5, scope: !126)
!136 = !DILocation(line: 78, column: 1, scope: !126)
!137 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 82, type: !11, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!138 = !DILocalVariable(name: "data", scope: !137, file: !1, line: 84, type: !14)
!139 = !DILocation(line: 84, column: 12, scope: !137)
!140 = !DILocalVariable(name: "dataBuffer", scope: !137, file: !1, line: 85, type: !18)
!141 = !DILocation(line: 85, column: 10, scope: !137)
!142 = !DILocation(line: 86, column: 12, scope: !137)
!143 = !DILocation(line: 86, column: 10, scope: !137)
!144 = !DILocalVariable(name: "dataLen", scope: !145, file: !1, line: 89, type: !26)
!145 = distinct !DILexicalBlock(scope: !137, file: !1, line: 87, column: 5)
!146 = !DILocation(line: 89, column: 16, scope: !145)
!147 = !DILocation(line: 89, column: 33, scope: !145)
!148 = !DILocation(line: 89, column: 26, scope: !145)
!149 = !DILocalVariable(name: "pFile", scope: !145, file: !1, line: 90, type: !33)
!150 = !DILocation(line: 90, column: 16, scope: !145)
!151 = !DILocation(line: 92, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !145, file: !1, line: 92, column: 13)
!153 = !DILocation(line: 92, column: 16, scope: !152)
!154 = !DILocation(line: 92, column: 25, scope: !152)
!155 = !DILocation(line: 92, column: 13, scope: !145)
!156 = !DILocation(line: 94, column: 21, scope: !157)
!157 = distinct !DILexicalBlock(scope: !152, file: !1, line: 93, column: 9)
!158 = !DILocation(line: 94, column: 19, scope: !157)
!159 = !DILocation(line: 95, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !1, line: 95, column: 17)
!161 = !DILocation(line: 95, column: 23, scope: !160)
!162 = !DILocation(line: 95, column: 17, scope: !157)
!163 = !DILocation(line: 98, column: 27, scope: !164)
!164 = distinct !DILexicalBlock(scope: !165, file: !1, line: 98, column: 21)
!165 = distinct !DILexicalBlock(scope: !160, file: !1, line: 96, column: 13)
!166 = !DILocation(line: 98, column: 32, scope: !164)
!167 = !DILocation(line: 98, column: 31, scope: !164)
!168 = !DILocation(line: 98, column: 51, scope: !164)
!169 = !DILocation(line: 98, column: 50, scope: !164)
!170 = !DILocation(line: 98, column: 41, scope: !164)
!171 = !DILocation(line: 98, column: 61, scope: !164)
!172 = !DILocation(line: 98, column: 21, scope: !164)
!173 = !DILocation(line: 98, column: 68, scope: !164)
!174 = !DILocation(line: 98, column: 21, scope: !165)
!175 = !DILocation(line: 100, column: 21, scope: !176)
!176 = distinct !DILexicalBlock(scope: !164, file: !1, line: 99, column: 17)
!177 = !DILocation(line: 102, column: 21, scope: !176)
!178 = !DILocation(line: 102, column: 26, scope: !176)
!179 = !DILocation(line: 102, column: 35, scope: !176)
!180 = !DILocation(line: 103, column: 17, scope: !176)
!181 = !DILocation(line: 104, column: 24, scope: !165)
!182 = !DILocation(line: 104, column: 17, scope: !165)
!183 = !DILocation(line: 105, column: 13, scope: !165)
!184 = !DILocation(line: 106, column: 9, scope: !157)
!185 = !DILocation(line: 108, column: 5, scope: !137)
!186 = !DILocation(line: 109, column: 1, scope: !137)
!187 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_63_good", scope: !1, file: !1, line: 111, type: !11, scopeLine: 112, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!188 = !DILocation(line: 113, column: 5, scope: !187)
!189 = !DILocation(line: 114, column: 5, scope: !187)
!190 = !DILocation(line: 115, column: 1, scope: !187)
