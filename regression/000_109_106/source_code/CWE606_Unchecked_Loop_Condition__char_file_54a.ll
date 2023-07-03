; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_54a.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_54a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_54_bad() #0 !dbg !10 {
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
  %11 = load i8*, i8** %data, align 8, !dbg !124
  call void @CWE606_Unchecked_Loop_Condition__char_file_54b_badSink(i8* %11), !dbg !125
  ret void, !dbg !126
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

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_file_54b_badSink(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !127 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !130, metadata !DIExpression()), !dbg !131
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !131
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !131
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !132
  store i8* %arraydecay, i8** %data, align 8, !dbg !133
  %1 = load i8*, i8** %data, align 8, !dbg !134
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !135
  %2 = load i8*, i8** %data, align 8, !dbg !136
  call void @CWE606_Unchecked_Loop_Condition__char_file_54b_goodG2BSink(i8* %2), !dbg !137
  ret void, !dbg !138
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_file_54b_goodG2BSink(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !139 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !142, metadata !DIExpression()), !dbg !143
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !143
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !143
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !144
  store i8* %arraydecay, i8** %data, align 8, !dbg !145
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !146, metadata !DIExpression()), !dbg !148
  %1 = load i8*, i8** %data, align 8, !dbg !149
  %call = call i64 @strlen(i8* %1) #6, !dbg !150
  store i64 %call, i64* %dataLen, align 8, !dbg !148
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !151, metadata !DIExpression()), !dbg !152
  %2 = load i64, i64* %dataLen, align 8, !dbg !153
  %sub = sub i64 100, %2, !dbg !155
  %cmp = icmp ugt i64 %sub, 1, !dbg !156
  br i1 %cmp, label %if.then, label %if.end11, !dbg !157

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !158
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !160
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !161
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !163
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !164

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !165
  %5 = load i64, i64* %dataLen, align 8, !dbg !168
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !169
  %6 = load i64, i64* %dataLen, align 8, !dbg !170
  %sub4 = sub i64 100, %6, !dbg !171
  %conv = trunc i64 %sub4 to i32, !dbg !172
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !173
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !174
  %cmp6 = icmp eq i8* %call5, null, !dbg !175
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !176

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !177
  %8 = load i8*, i8** %data, align 8, !dbg !179
  %9 = load i64, i64* %dataLen, align 8, !dbg !180
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !179
  store i8 0, i8* %arrayidx, align 1, !dbg !181
  br label %if.end, !dbg !182

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !183
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !184
  br label %if.end10, !dbg !185

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !186

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !187
  call void @CWE606_Unchecked_Loop_Condition__char_file_54b_goodB2GSink(i8* %11), !dbg !188
  ret void, !dbg !189
}

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_file_54b_goodB2GSink(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_54_good() #0 !dbg !190 {
entry:
  call void @goodG2B(), !dbg !191
  call void @goodB2G(), !dbg !192
  ret void, !dbg !193
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_54a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_106/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_54_bad", scope: !1, file: !1, line: 37, type: !11, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 39, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 39, column: 12, scope: !10)
!17 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 40, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 100)
!21 = !DILocation(line: 40, column: 10, scope: !10)
!22 = !DILocation(line: 41, column: 12, scope: !10)
!23 = !DILocation(line: 41, column: 10, scope: !10)
!24 = !DILocalVariable(name: "dataLen", scope: !25, file: !1, line: 44, type: !26)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 42, column: 5)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DILocation(line: 44, column: 16, scope: !25)
!30 = !DILocation(line: 44, column: 33, scope: !25)
!31 = !DILocation(line: 44, column: 26, scope: !25)
!32 = !DILocalVariable(name: "pFile", scope: !25, file: !1, line: 45, type: !33)
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
!89 = !DILocation(line: 45, column: 16, scope: !25)
!90 = !DILocation(line: 47, column: 17, scope: !91)
!91 = distinct !DILexicalBlock(scope: !25, file: !1, line: 47, column: 13)
!92 = !DILocation(line: 47, column: 16, scope: !91)
!93 = !DILocation(line: 47, column: 25, scope: !91)
!94 = !DILocation(line: 47, column: 13, scope: !25)
!95 = !DILocation(line: 49, column: 21, scope: !96)
!96 = distinct !DILexicalBlock(scope: !91, file: !1, line: 48, column: 9)
!97 = !DILocation(line: 49, column: 19, scope: !96)
!98 = !DILocation(line: 50, column: 17, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !1, line: 50, column: 17)
!100 = !DILocation(line: 50, column: 23, scope: !99)
!101 = !DILocation(line: 50, column: 17, scope: !96)
!102 = !DILocation(line: 53, column: 27, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !1, line: 53, column: 21)
!104 = distinct !DILexicalBlock(scope: !99, file: !1, line: 51, column: 13)
!105 = !DILocation(line: 53, column: 32, scope: !103)
!106 = !DILocation(line: 53, column: 31, scope: !103)
!107 = !DILocation(line: 53, column: 51, scope: !103)
!108 = !DILocation(line: 53, column: 50, scope: !103)
!109 = !DILocation(line: 53, column: 41, scope: !103)
!110 = !DILocation(line: 53, column: 61, scope: !103)
!111 = !DILocation(line: 53, column: 21, scope: !103)
!112 = !DILocation(line: 53, column: 68, scope: !103)
!113 = !DILocation(line: 53, column: 21, scope: !104)
!114 = !DILocation(line: 55, column: 21, scope: !115)
!115 = distinct !DILexicalBlock(scope: !103, file: !1, line: 54, column: 17)
!116 = !DILocation(line: 57, column: 21, scope: !115)
!117 = !DILocation(line: 57, column: 26, scope: !115)
!118 = !DILocation(line: 57, column: 35, scope: !115)
!119 = !DILocation(line: 58, column: 17, scope: !115)
!120 = !DILocation(line: 59, column: 24, scope: !104)
!121 = !DILocation(line: 59, column: 17, scope: !104)
!122 = !DILocation(line: 60, column: 13, scope: !104)
!123 = !DILocation(line: 61, column: 9, scope: !96)
!124 = !DILocation(line: 63, column: 60, scope: !10)
!125 = !DILocation(line: 63, column: 5, scope: !10)
!126 = !DILocation(line: 64, column: 1, scope: !10)
!127 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 72, type: !11, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!128 = !DILocalVariable(name: "data", scope: !127, file: !1, line: 74, type: !14)
!129 = !DILocation(line: 74, column: 12, scope: !127)
!130 = !DILocalVariable(name: "dataBuffer", scope: !127, file: !1, line: 75, type: !18)
!131 = !DILocation(line: 75, column: 10, scope: !127)
!132 = !DILocation(line: 76, column: 12, scope: !127)
!133 = !DILocation(line: 76, column: 10, scope: !127)
!134 = !DILocation(line: 78, column: 12, scope: !127)
!135 = !DILocation(line: 78, column: 5, scope: !127)
!136 = !DILocation(line: 79, column: 64, scope: !127)
!137 = !DILocation(line: 79, column: 5, scope: !127)
!138 = !DILocation(line: 80, column: 1, scope: !127)
!139 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 84, type: !11, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!140 = !DILocalVariable(name: "data", scope: !139, file: !1, line: 86, type: !14)
!141 = !DILocation(line: 86, column: 12, scope: !139)
!142 = !DILocalVariable(name: "dataBuffer", scope: !139, file: !1, line: 87, type: !18)
!143 = !DILocation(line: 87, column: 10, scope: !139)
!144 = !DILocation(line: 88, column: 12, scope: !139)
!145 = !DILocation(line: 88, column: 10, scope: !139)
!146 = !DILocalVariable(name: "dataLen", scope: !147, file: !1, line: 91, type: !26)
!147 = distinct !DILexicalBlock(scope: !139, file: !1, line: 89, column: 5)
!148 = !DILocation(line: 91, column: 16, scope: !147)
!149 = !DILocation(line: 91, column: 33, scope: !147)
!150 = !DILocation(line: 91, column: 26, scope: !147)
!151 = !DILocalVariable(name: "pFile", scope: !147, file: !1, line: 92, type: !33)
!152 = !DILocation(line: 92, column: 16, scope: !147)
!153 = !DILocation(line: 94, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !147, file: !1, line: 94, column: 13)
!155 = !DILocation(line: 94, column: 16, scope: !154)
!156 = !DILocation(line: 94, column: 25, scope: !154)
!157 = !DILocation(line: 94, column: 13, scope: !147)
!158 = !DILocation(line: 96, column: 21, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !1, line: 95, column: 9)
!160 = !DILocation(line: 96, column: 19, scope: !159)
!161 = !DILocation(line: 97, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !1, line: 97, column: 17)
!163 = !DILocation(line: 97, column: 23, scope: !162)
!164 = !DILocation(line: 97, column: 17, scope: !159)
!165 = !DILocation(line: 100, column: 27, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 100, column: 21)
!167 = distinct !DILexicalBlock(scope: !162, file: !1, line: 98, column: 13)
!168 = !DILocation(line: 100, column: 32, scope: !166)
!169 = !DILocation(line: 100, column: 31, scope: !166)
!170 = !DILocation(line: 100, column: 51, scope: !166)
!171 = !DILocation(line: 100, column: 50, scope: !166)
!172 = !DILocation(line: 100, column: 41, scope: !166)
!173 = !DILocation(line: 100, column: 61, scope: !166)
!174 = !DILocation(line: 100, column: 21, scope: !166)
!175 = !DILocation(line: 100, column: 68, scope: !166)
!176 = !DILocation(line: 100, column: 21, scope: !167)
!177 = !DILocation(line: 102, column: 21, scope: !178)
!178 = distinct !DILexicalBlock(scope: !166, file: !1, line: 101, column: 17)
!179 = !DILocation(line: 104, column: 21, scope: !178)
!180 = !DILocation(line: 104, column: 26, scope: !178)
!181 = !DILocation(line: 104, column: 35, scope: !178)
!182 = !DILocation(line: 105, column: 17, scope: !178)
!183 = !DILocation(line: 106, column: 24, scope: !167)
!184 = !DILocation(line: 106, column: 17, scope: !167)
!185 = !DILocation(line: 107, column: 13, scope: !167)
!186 = !DILocation(line: 108, column: 9, scope: !159)
!187 = !DILocation(line: 110, column: 64, scope: !139)
!188 = !DILocation(line: 110, column: 5, scope: !139)
!189 = !DILocation(line: 111, column: 1, scope: !139)
!190 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_54_good", scope: !1, file: !1, line: 113, type: !11, scopeLine: 114, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!191 = !DILocation(line: 115, column: 5, scope: !190)
!192 = !DILocation(line: 116, column: 5, scope: !190)
!193 = !DILocation(line: 117, column: 1, scope: !190)
