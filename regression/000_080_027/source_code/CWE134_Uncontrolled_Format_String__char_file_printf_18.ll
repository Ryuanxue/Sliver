; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_printf_18.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_printf_18.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_18_bad() #0 !dbg !10 {
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
  br label %source, !dbg !24

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !25), !dbg !26
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !27, metadata !DIExpression()), !dbg !32
  %1 = load i8*, i8** %data, align 8, !dbg !33
  %call = call i64 @strlen(i8* %1) #6, !dbg !34
  store i64 %call, i64* %dataLen, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !35, metadata !DIExpression()), !dbg !92
  %2 = load i64, i64* %dataLen, align 8, !dbg !93
  %sub = sub i64 100, %2, !dbg !95
  %cmp = icmp ugt i64 %sub, 1, !dbg !96
  br i1 %cmp, label %if.then, label %if.end11, !dbg !97

if.then:                                          ; preds = %source
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !98
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !100
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !101
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !103
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !104

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !105
  %5 = load i64, i64* %dataLen, align 8, !dbg !108
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !109
  %6 = load i64, i64* %dataLen, align 8, !dbg !110
  %sub4 = sub i64 100, %6, !dbg !111
  %conv = trunc i64 %sub4 to i32, !dbg !112
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !113
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !114
  %cmp6 = icmp eq i8* %call5, null, !dbg !115
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !116

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !117
  %8 = load i8*, i8** %data, align 8, !dbg !119
  %9 = load i64, i64* %dataLen, align 8, !dbg !120
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !119
  store i8 0, i8* %arrayidx, align 1, !dbg !121
  br label %if.end, !dbg !122

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !123
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !124
  br label %if.end10, !dbg !125

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !126

if.end11:                                         ; preds = %if.end10, %source
  br label %sink, !dbg !127

sink:                                             ; preds = %if.end11
  call void @llvm.dbg.label(metadata !128), !dbg !129
  %11 = load i8*, i8** %data, align 8, !dbg !130
  %call12 = call i32 (i8*, ...) @printf(i8* %11), !dbg !131
  ret void, !dbg !132
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #4

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !133 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !136, metadata !DIExpression()), !dbg !137
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !137
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !137
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !138
  store i8* %arraydecay, i8** %data, align 8, !dbg !139
  br label %source, !dbg !140

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !141), !dbg !142
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !143, metadata !DIExpression()), !dbg !145
  %1 = load i8*, i8** %data, align 8, !dbg !146
  %call = call i64 @strlen(i8* %1) #6, !dbg !147
  store i64 %call, i64* %dataLen, align 8, !dbg !145
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !148, metadata !DIExpression()), !dbg !149
  %2 = load i64, i64* %dataLen, align 8, !dbg !150
  %sub = sub i64 100, %2, !dbg !152
  %cmp = icmp ugt i64 %sub, 1, !dbg !153
  br i1 %cmp, label %if.then, label %if.end11, !dbg !154

if.then:                                          ; preds = %source
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !155
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !157
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !158
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !160
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !161

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !162
  %5 = load i64, i64* %dataLen, align 8, !dbg !165
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !166
  %6 = load i64, i64* %dataLen, align 8, !dbg !167
  %sub4 = sub i64 100, %6, !dbg !168
  %conv = trunc i64 %sub4 to i32, !dbg !169
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !170
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !171
  %cmp6 = icmp eq i8* %call5, null, !dbg !172
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !173

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !174
  %8 = load i8*, i8** %data, align 8, !dbg !176
  %9 = load i64, i64* %dataLen, align 8, !dbg !177
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !176
  store i8 0, i8* %arrayidx, align 1, !dbg !178
  br label %if.end, !dbg !179

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !180
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !181
  br label %if.end10, !dbg !182

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !183

if.end11:                                         ; preds = %if.end10, %source
  br label %sink, !dbg !184

sink:                                             ; preds = %if.end11
  call void @llvm.dbg.label(metadata !185), !dbg !186
  %11 = load i8*, i8** %data, align 8, !dbg !187
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %11), !dbg !188
  ret void, !dbg !189
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !190 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !193, metadata !DIExpression()), !dbg !194
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !194
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !194
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !195
  store i8* %arraydecay, i8** %data, align 8, !dbg !196
  br label %source, !dbg !197

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !198), !dbg !199
  %1 = load i8*, i8** %data, align 8, !dbg !200
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !201
  br label %sink, !dbg !202

sink:                                             ; preds = %source
  call void @llvm.dbg.label(metadata !203), !dbg !204
  %2 = load i8*, i8** %data, align 8, !dbg !205
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !206
  ret void, !dbg !207
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_18_good() #0 !dbg !208 {
entry:
  call void @goodB2G(), !dbg !209
  call void @goodG2B(), !dbg !210
  ret void, !dbg !211
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_18.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_027/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_18_bad", scope: !1, file: !1, line: 33, type: !11, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 35, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 35, column: 12, scope: !10)
!17 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 36, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 100)
!21 = !DILocation(line: 36, column: 10, scope: !10)
!22 = !DILocation(line: 37, column: 12, scope: !10)
!23 = !DILocation(line: 37, column: 10, scope: !10)
!24 = !DILocation(line: 38, column: 5, scope: !10)
!25 = !DILabel(scope: !10, name: "source", file: !1, line: 39)
!26 = !DILocation(line: 39, column: 1, scope: !10)
!27 = !DILocalVariable(name: "dataLen", scope: !28, file: !1, line: 42, type: !29)
!28 = distinct !DILexicalBlock(scope: !10, file: !1, line: 40, column: 5)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 46, baseType: !31)
!30 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!31 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !DILocation(line: 42, column: 16, scope: !28)
!33 = !DILocation(line: 42, column: 33, scope: !28)
!34 = !DILocation(line: 42, column: 26, scope: !28)
!35 = !DILocalVariable(name: "pFile", scope: !28, file: !1, line: 43, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !38, line: 7, baseType: !39)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !40, line: 49, size: 1728, elements: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !57, !59, !60, !61, !65, !67, !69, !73, !76, !78, !81, !84, !85, !86, !87, !88}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !39, file: !40, line: 51, baseType: !5, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !39, file: !40, line: 54, baseType: !14, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !39, file: !40, line: 55, baseType: !14, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !39, file: !40, line: 56, baseType: !14, size: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !39, file: !40, line: 57, baseType: !14, size: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !39, file: !40, line: 58, baseType: !14, size: 64, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !39, file: !40, line: 59, baseType: !14, size: 64, offset: 384)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !39, file: !40, line: 60, baseType: !14, size: 64, offset: 448)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !39, file: !40, line: 61, baseType: !14, size: 64, offset: 512)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !39, file: !40, line: 64, baseType: !14, size: 64, offset: 576)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !39, file: !40, line: 65, baseType: !14, size: 64, offset: 640)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !39, file: !40, line: 66, baseType: !14, size: 64, offset: 704)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !39, file: !40, line: 68, baseType: !55, size: 64, offset: 768)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !40, line: 36, flags: DIFlagFwdDecl)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !39, file: !40, line: 70, baseType: !58, size: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !39, file: !40, line: 72, baseType: !5, size: 32, offset: 896)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !39, file: !40, line: 73, baseType: !5, size: 32, offset: 928)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !39, file: !40, line: 74, baseType: !62, size: 64, offset: 960)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !63, line: 152, baseType: !64)
!63 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!64 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !39, file: !40, line: 77, baseType: !66, size: 16, offset: 1024)
!66 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !39, file: !40, line: 78, baseType: !68, size: 8, offset: 1040)
!68 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !39, file: !40, line: 79, baseType: !70, size: 8, offset: 1048)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !39, file: !40, line: 81, baseType: !74, size: 64, offset: 1088)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !40, line: 43, baseType: null)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !39, file: !40, line: 89, baseType: !77, size: 64, offset: 1152)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !63, line: 153, baseType: !64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !39, file: !40, line: 91, baseType: !79, size: 64, offset: 1216)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !40, line: 37, flags: DIFlagFwdDecl)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !39, file: !40, line: 92, baseType: !82, size: 64, offset: 1280)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !40, line: 38, flags: DIFlagFwdDecl)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !39, file: !40, line: 93, baseType: !58, size: 64, offset: 1344)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !39, file: !40, line: 94, baseType: !4, size: 64, offset: 1408)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !39, file: !40, line: 95, baseType: !29, size: 64, offset: 1472)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !39, file: !40, line: 96, baseType: !5, size: 32, offset: 1536)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !39, file: !40, line: 98, baseType: !89, size: 160, offset: 1568)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 20)
!92 = !DILocation(line: 43, column: 16, scope: !28)
!93 = !DILocation(line: 45, column: 17, scope: !94)
!94 = distinct !DILexicalBlock(scope: !28, file: !1, line: 45, column: 13)
!95 = !DILocation(line: 45, column: 16, scope: !94)
!96 = !DILocation(line: 45, column: 25, scope: !94)
!97 = !DILocation(line: 45, column: 13, scope: !28)
!98 = !DILocation(line: 47, column: 21, scope: !99)
!99 = distinct !DILexicalBlock(scope: !94, file: !1, line: 46, column: 9)
!100 = !DILocation(line: 47, column: 19, scope: !99)
!101 = !DILocation(line: 48, column: 17, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !1, line: 48, column: 17)
!103 = !DILocation(line: 48, column: 23, scope: !102)
!104 = !DILocation(line: 48, column: 17, scope: !99)
!105 = !DILocation(line: 51, column: 27, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !1, line: 51, column: 21)
!107 = distinct !DILexicalBlock(scope: !102, file: !1, line: 49, column: 13)
!108 = !DILocation(line: 51, column: 32, scope: !106)
!109 = !DILocation(line: 51, column: 31, scope: !106)
!110 = !DILocation(line: 51, column: 51, scope: !106)
!111 = !DILocation(line: 51, column: 50, scope: !106)
!112 = !DILocation(line: 51, column: 41, scope: !106)
!113 = !DILocation(line: 51, column: 61, scope: !106)
!114 = !DILocation(line: 51, column: 21, scope: !106)
!115 = !DILocation(line: 51, column: 68, scope: !106)
!116 = !DILocation(line: 51, column: 21, scope: !107)
!117 = !DILocation(line: 53, column: 21, scope: !118)
!118 = distinct !DILexicalBlock(scope: !106, file: !1, line: 52, column: 17)
!119 = !DILocation(line: 55, column: 21, scope: !118)
!120 = !DILocation(line: 55, column: 26, scope: !118)
!121 = !DILocation(line: 55, column: 35, scope: !118)
!122 = !DILocation(line: 56, column: 17, scope: !118)
!123 = !DILocation(line: 57, column: 24, scope: !107)
!124 = !DILocation(line: 57, column: 17, scope: !107)
!125 = !DILocation(line: 58, column: 13, scope: !107)
!126 = !DILocation(line: 59, column: 9, scope: !99)
!127 = !DILocation(line: 61, column: 5, scope: !10)
!128 = !DILabel(scope: !10, name: "sink", file: !1, line: 62)
!129 = !DILocation(line: 62, column: 1, scope: !10)
!130 = !DILocation(line: 64, column: 12, scope: !10)
!131 = !DILocation(line: 64, column: 5, scope: !10)
!132 = !DILocation(line: 65, column: 1, scope: !10)
!133 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 72, type: !11, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!134 = !DILocalVariable(name: "data", scope: !133, file: !1, line: 74, type: !14)
!135 = !DILocation(line: 74, column: 12, scope: !133)
!136 = !DILocalVariable(name: "dataBuffer", scope: !133, file: !1, line: 75, type: !18)
!137 = !DILocation(line: 75, column: 10, scope: !133)
!138 = !DILocation(line: 76, column: 12, scope: !133)
!139 = !DILocation(line: 76, column: 10, scope: !133)
!140 = !DILocation(line: 77, column: 5, scope: !133)
!141 = !DILabel(scope: !133, name: "source", file: !1, line: 78)
!142 = !DILocation(line: 78, column: 1, scope: !133)
!143 = !DILocalVariable(name: "dataLen", scope: !144, file: !1, line: 81, type: !29)
!144 = distinct !DILexicalBlock(scope: !133, file: !1, line: 79, column: 5)
!145 = !DILocation(line: 81, column: 16, scope: !144)
!146 = !DILocation(line: 81, column: 33, scope: !144)
!147 = !DILocation(line: 81, column: 26, scope: !144)
!148 = !DILocalVariable(name: "pFile", scope: !144, file: !1, line: 82, type: !36)
!149 = !DILocation(line: 82, column: 16, scope: !144)
!150 = !DILocation(line: 84, column: 17, scope: !151)
!151 = distinct !DILexicalBlock(scope: !144, file: !1, line: 84, column: 13)
!152 = !DILocation(line: 84, column: 16, scope: !151)
!153 = !DILocation(line: 84, column: 25, scope: !151)
!154 = !DILocation(line: 84, column: 13, scope: !144)
!155 = !DILocation(line: 86, column: 21, scope: !156)
!156 = distinct !DILexicalBlock(scope: !151, file: !1, line: 85, column: 9)
!157 = !DILocation(line: 86, column: 19, scope: !156)
!158 = !DILocation(line: 87, column: 17, scope: !159)
!159 = distinct !DILexicalBlock(scope: !156, file: !1, line: 87, column: 17)
!160 = !DILocation(line: 87, column: 23, scope: !159)
!161 = !DILocation(line: 87, column: 17, scope: !156)
!162 = !DILocation(line: 90, column: 27, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !1, line: 90, column: 21)
!164 = distinct !DILexicalBlock(scope: !159, file: !1, line: 88, column: 13)
!165 = !DILocation(line: 90, column: 32, scope: !163)
!166 = !DILocation(line: 90, column: 31, scope: !163)
!167 = !DILocation(line: 90, column: 51, scope: !163)
!168 = !DILocation(line: 90, column: 50, scope: !163)
!169 = !DILocation(line: 90, column: 41, scope: !163)
!170 = !DILocation(line: 90, column: 61, scope: !163)
!171 = !DILocation(line: 90, column: 21, scope: !163)
!172 = !DILocation(line: 90, column: 68, scope: !163)
!173 = !DILocation(line: 90, column: 21, scope: !164)
!174 = !DILocation(line: 92, column: 21, scope: !175)
!175 = distinct !DILexicalBlock(scope: !163, file: !1, line: 91, column: 17)
!176 = !DILocation(line: 94, column: 21, scope: !175)
!177 = !DILocation(line: 94, column: 26, scope: !175)
!178 = !DILocation(line: 94, column: 35, scope: !175)
!179 = !DILocation(line: 95, column: 17, scope: !175)
!180 = !DILocation(line: 96, column: 24, scope: !164)
!181 = !DILocation(line: 96, column: 17, scope: !164)
!182 = !DILocation(line: 97, column: 13, scope: !164)
!183 = !DILocation(line: 98, column: 9, scope: !156)
!184 = !DILocation(line: 100, column: 5, scope: !133)
!185 = !DILabel(scope: !133, name: "sink", file: !1, line: 101)
!186 = !DILocation(line: 101, column: 1, scope: !133)
!187 = !DILocation(line: 103, column: 20, scope: !133)
!188 = !DILocation(line: 103, column: 5, scope: !133)
!189 = !DILocation(line: 104, column: 1, scope: !133)
!190 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 107, type: !11, scopeLine: 108, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!191 = !DILocalVariable(name: "data", scope: !190, file: !1, line: 109, type: !14)
!192 = !DILocation(line: 109, column: 12, scope: !190)
!193 = !DILocalVariable(name: "dataBuffer", scope: !190, file: !1, line: 110, type: !18)
!194 = !DILocation(line: 110, column: 10, scope: !190)
!195 = !DILocation(line: 111, column: 12, scope: !190)
!196 = !DILocation(line: 111, column: 10, scope: !190)
!197 = !DILocation(line: 112, column: 5, scope: !190)
!198 = !DILabel(scope: !190, name: "source", file: !1, line: 113)
!199 = !DILocation(line: 113, column: 1, scope: !190)
!200 = !DILocation(line: 115, column: 12, scope: !190)
!201 = !DILocation(line: 115, column: 5, scope: !190)
!202 = !DILocation(line: 116, column: 5, scope: !190)
!203 = !DILabel(scope: !190, name: "sink", file: !1, line: 117)
!204 = !DILocation(line: 117, column: 1, scope: !190)
!205 = !DILocation(line: 119, column: 12, scope: !190)
!206 = !DILocation(line: 119, column: 5, scope: !190)
!207 = !DILocation(line: 120, column: 1, scope: !190)
!208 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_18_good", scope: !1, file: !1, line: 122, type: !11, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!209 = !DILocation(line: 124, column: 5, scope: !208)
!210 = !DILocation(line: 125, column: 5, scope: !208)
!211 = !DILocation(line: 126, column: 1, scope: !208)
