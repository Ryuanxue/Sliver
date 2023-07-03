; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_fprintf_67a.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_fprintf_67a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType = type { i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, metadata !17, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !24, metadata !DIExpression()), !dbg !28
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !28
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !28
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !29
  store i8* %arraydecay, i8** %data, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !31, metadata !DIExpression()), !dbg !36
  %1 = load i8*, i8** %data, align 8, !dbg !37
  %call = call i64 @strlen(i8* %1) #6, !dbg !38
  store i64 %call, i64* %dataLen, align 8, !dbg !36
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !39, metadata !DIExpression()), !dbg !96
  %2 = load i64, i64* %dataLen, align 8, !dbg !97
  %sub = sub i64 100, %2, !dbg !99
  %cmp = icmp ugt i64 %sub, 1, !dbg !100
  br i1 %cmp, label %if.then, label %if.end11, !dbg !101

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !102
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !104
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !105
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !107
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !108

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !109
  %5 = load i64, i64* %dataLen, align 8, !dbg !112
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !113
  %6 = load i64, i64* %dataLen, align 8, !dbg !114
  %sub4 = sub i64 100, %6, !dbg !115
  %conv = trunc i64 %sub4 to i32, !dbg !116
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !117
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !118
  %cmp6 = icmp eq i8* %call5, null, !dbg !119
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !120

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !121
  %8 = load i8*, i8** %data, align 8, !dbg !123
  %9 = load i64, i64* %dataLen, align 8, !dbg !124
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !123
  store i8 0, i8* %arrayidx, align 1, !dbg !125
  br label %if.end, !dbg !126

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !127
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !128
  br label %if.end10, !dbg !129

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !130

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !131
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !132
  store i8* %11, i8** %structFirst, align 8, !dbg !133
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !134
  %12 = load i8*, i8** %coerce.dive, align 8, !dbg !134
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_badSink(i8* %12), !dbg !134
  ret void, !dbg !135
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

declare dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_badSink(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !136 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !141, metadata !DIExpression()), !dbg !142
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !142
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !142
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !143
  store i8* %arraydecay, i8** %data, align 8, !dbg !144
  %1 = load i8*, i8** %data, align 8, !dbg !145
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !146
  %2 = load i8*, i8** %data, align 8, !dbg !147
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !148
  store i8* %2, i8** %structFirst, align 8, !dbg !149
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !150
  %3 = load i8*, i8** %coerce.dive, align 8, !dbg !150
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_goodG2BSink(i8* %3), !dbg !150
  ret void, !dbg !151
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

declare dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_goodG2BSink(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !152 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, metadata !155, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !157, metadata !DIExpression()), !dbg !158
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !158
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !158
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !159
  store i8* %arraydecay, i8** %data, align 8, !dbg !160
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !161, metadata !DIExpression()), !dbg !163
  %1 = load i8*, i8** %data, align 8, !dbg !164
  %call = call i64 @strlen(i8* %1) #6, !dbg !165
  store i64 %call, i64* %dataLen, align 8, !dbg !163
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !166, metadata !DIExpression()), !dbg !167
  %2 = load i64, i64* %dataLen, align 8, !dbg !168
  %sub = sub i64 100, %2, !dbg !170
  %cmp = icmp ugt i64 %sub, 1, !dbg !171
  br i1 %cmp, label %if.then, label %if.end11, !dbg !172

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !173
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !175
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !176
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !178
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !179

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !180
  %5 = load i64, i64* %dataLen, align 8, !dbg !183
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !184
  %6 = load i64, i64* %dataLen, align 8, !dbg !185
  %sub4 = sub i64 100, %6, !dbg !186
  %conv = trunc i64 %sub4 to i32, !dbg !187
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !188
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !189
  %cmp6 = icmp eq i8* %call5, null, !dbg !190
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !191

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !192
  %8 = load i8*, i8** %data, align 8, !dbg !194
  %9 = load i64, i64* %dataLen, align 8, !dbg !195
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !194
  store i8 0, i8* %arrayidx, align 1, !dbg !196
  br label %if.end, !dbg !197

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !198
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !199
  br label %if.end10, !dbg !200

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !201

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !202
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !203
  store i8* %11, i8** %structFirst, align 8, !dbg !204
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !205
  %12 = load i8*, i8** %coerce.dive, align 8, !dbg !205
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_goodB2GSink(i8* %12), !dbg !205
  ret void, !dbg !206
}

declare dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_goodB2GSink(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_67_good() #0 !dbg !207 {
entry:
  call void @goodG2B(), !dbg !208
  call void @goodB2G(), !dbg !209
  ret void, !dbg !210
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_67a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_001/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad", scope: !1, file: !1, line: 36, type: !11, scopeLine: 37, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 38, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 38, column: 12, scope: !10)
!17 = !DILocalVariable(name: "myStruct", scope: !10, file: !1, line: 39, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType", file: !19, line: 8, baseType: !20)
!19 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_001/source_code")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType", file: !19, line: 5, size: 64, elements: !21)
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !20, file: !19, line: 7, baseType: !14, size: 64)
!23 = !DILocation(line: 39, column: 72, scope: !10)
!24 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 40, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 100)
!28 = !DILocation(line: 40, column: 10, scope: !10)
!29 = !DILocation(line: 41, column: 12, scope: !10)
!30 = !DILocation(line: 41, column: 10, scope: !10)
!31 = !DILocalVariable(name: "dataLen", scope: !32, file: !1, line: 44, type: !33)
!32 = distinct !DILexicalBlock(scope: !10, file: !1, line: 42, column: 5)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocation(line: 44, column: 16, scope: !32)
!37 = !DILocation(line: 44, column: 33, scope: !32)
!38 = !DILocation(line: 44, column: 26, scope: !32)
!39 = !DILocalVariable(name: "pFile", scope: !32, file: !1, line: 45, type: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !42, line: 7, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !44, line: 49, size: 1728, elements: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !61, !63, !64, !65, !69, !71, !73, !77, !80, !82, !85, !88, !89, !90, !91, !92}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !43, file: !44, line: 51, baseType: !5, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !43, file: !44, line: 54, baseType: !14, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !43, file: !44, line: 55, baseType: !14, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !43, file: !44, line: 56, baseType: !14, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !43, file: !44, line: 57, baseType: !14, size: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !43, file: !44, line: 58, baseType: !14, size: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !43, file: !44, line: 59, baseType: !14, size: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !43, file: !44, line: 60, baseType: !14, size: 64, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !43, file: !44, line: 61, baseType: !14, size: 64, offset: 512)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !43, file: !44, line: 64, baseType: !14, size: 64, offset: 576)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !43, file: !44, line: 65, baseType: !14, size: 64, offset: 640)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !43, file: !44, line: 66, baseType: !14, size: 64, offset: 704)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !43, file: !44, line: 68, baseType: !59, size: 64, offset: 768)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !44, line: 36, flags: DIFlagFwdDecl)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !43, file: !44, line: 70, baseType: !62, size: 64, offset: 832)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !43, file: !44, line: 72, baseType: !5, size: 32, offset: 896)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !43, file: !44, line: 73, baseType: !5, size: 32, offset: 928)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !43, file: !44, line: 74, baseType: !66, size: 64, offset: 960)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !67, line: 152, baseType: !68)
!67 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!68 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !43, file: !44, line: 77, baseType: !70, size: 16, offset: 1024)
!70 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !43, file: !44, line: 78, baseType: !72, size: 8, offset: 1040)
!72 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !43, file: !44, line: 79, baseType: !74, size: 8, offset: 1048)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !43, file: !44, line: 81, baseType: !78, size: 64, offset: 1088)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !44, line: 43, baseType: null)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !43, file: !44, line: 89, baseType: !81, size: 64, offset: 1152)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !67, line: 153, baseType: !68)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !43, file: !44, line: 91, baseType: !83, size: 64, offset: 1216)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !44, line: 37, flags: DIFlagFwdDecl)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !43, file: !44, line: 92, baseType: !86, size: 64, offset: 1280)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !44, line: 38, flags: DIFlagFwdDecl)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !43, file: !44, line: 93, baseType: !62, size: 64, offset: 1344)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !43, file: !44, line: 94, baseType: !4, size: 64, offset: 1408)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !43, file: !44, line: 95, baseType: !33, size: 64, offset: 1472)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !43, file: !44, line: 96, baseType: !5, size: 32, offset: 1536)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !43, file: !44, line: 98, baseType: !93, size: 160, offset: 1568)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 20)
!96 = !DILocation(line: 45, column: 16, scope: !32)
!97 = !DILocation(line: 47, column: 17, scope: !98)
!98 = distinct !DILexicalBlock(scope: !32, file: !1, line: 47, column: 13)
!99 = !DILocation(line: 47, column: 16, scope: !98)
!100 = !DILocation(line: 47, column: 25, scope: !98)
!101 = !DILocation(line: 47, column: 13, scope: !32)
!102 = !DILocation(line: 49, column: 21, scope: !103)
!103 = distinct !DILexicalBlock(scope: !98, file: !1, line: 48, column: 9)
!104 = !DILocation(line: 49, column: 19, scope: !103)
!105 = !DILocation(line: 50, column: 17, scope: !106)
!106 = distinct !DILexicalBlock(scope: !103, file: !1, line: 50, column: 17)
!107 = !DILocation(line: 50, column: 23, scope: !106)
!108 = !DILocation(line: 50, column: 17, scope: !103)
!109 = !DILocation(line: 53, column: 27, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !1, line: 53, column: 21)
!111 = distinct !DILexicalBlock(scope: !106, file: !1, line: 51, column: 13)
!112 = !DILocation(line: 53, column: 32, scope: !110)
!113 = !DILocation(line: 53, column: 31, scope: !110)
!114 = !DILocation(line: 53, column: 51, scope: !110)
!115 = !DILocation(line: 53, column: 50, scope: !110)
!116 = !DILocation(line: 53, column: 41, scope: !110)
!117 = !DILocation(line: 53, column: 61, scope: !110)
!118 = !DILocation(line: 53, column: 21, scope: !110)
!119 = !DILocation(line: 53, column: 68, scope: !110)
!120 = !DILocation(line: 53, column: 21, scope: !111)
!121 = !DILocation(line: 55, column: 21, scope: !122)
!122 = distinct !DILexicalBlock(scope: !110, file: !1, line: 54, column: 17)
!123 = !DILocation(line: 57, column: 21, scope: !122)
!124 = !DILocation(line: 57, column: 26, scope: !122)
!125 = !DILocation(line: 57, column: 35, scope: !122)
!126 = !DILocation(line: 58, column: 17, scope: !122)
!127 = !DILocation(line: 59, column: 24, scope: !111)
!128 = !DILocation(line: 59, column: 17, scope: !111)
!129 = !DILocation(line: 60, column: 13, scope: !111)
!130 = !DILocation(line: 61, column: 9, scope: !103)
!131 = !DILocation(line: 63, column: 28, scope: !10)
!132 = !DILocation(line: 63, column: 14, scope: !10)
!133 = !DILocation(line: 63, column: 26, scope: !10)
!134 = !DILocation(line: 64, column: 5, scope: !10)
!135 = !DILocation(line: 65, column: 1, scope: !10)
!136 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 73, type: !11, scopeLine: 74, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!137 = !DILocalVariable(name: "data", scope: !136, file: !1, line: 75, type: !14)
!138 = !DILocation(line: 75, column: 12, scope: !136)
!139 = !DILocalVariable(name: "myStruct", scope: !136, file: !1, line: 76, type: !18)
!140 = !DILocation(line: 76, column: 72, scope: !136)
!141 = !DILocalVariable(name: "dataBuffer", scope: !136, file: !1, line: 77, type: !25)
!142 = !DILocation(line: 77, column: 10, scope: !136)
!143 = !DILocation(line: 78, column: 12, scope: !136)
!144 = !DILocation(line: 78, column: 10, scope: !136)
!145 = !DILocation(line: 80, column: 12, scope: !136)
!146 = !DILocation(line: 80, column: 5, scope: !136)
!147 = !DILocation(line: 81, column: 28, scope: !136)
!148 = !DILocation(line: 81, column: 14, scope: !136)
!149 = !DILocation(line: 81, column: 26, scope: !136)
!150 = !DILocation(line: 82, column: 5, scope: !136)
!151 = !DILocation(line: 83, column: 1, scope: !136)
!152 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 87, type: !11, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!153 = !DILocalVariable(name: "data", scope: !152, file: !1, line: 89, type: !14)
!154 = !DILocation(line: 89, column: 12, scope: !152)
!155 = !DILocalVariable(name: "myStruct", scope: !152, file: !1, line: 90, type: !18)
!156 = !DILocation(line: 90, column: 72, scope: !152)
!157 = !DILocalVariable(name: "dataBuffer", scope: !152, file: !1, line: 91, type: !25)
!158 = !DILocation(line: 91, column: 10, scope: !152)
!159 = !DILocation(line: 92, column: 12, scope: !152)
!160 = !DILocation(line: 92, column: 10, scope: !152)
!161 = !DILocalVariable(name: "dataLen", scope: !162, file: !1, line: 95, type: !33)
!162 = distinct !DILexicalBlock(scope: !152, file: !1, line: 93, column: 5)
!163 = !DILocation(line: 95, column: 16, scope: !162)
!164 = !DILocation(line: 95, column: 33, scope: !162)
!165 = !DILocation(line: 95, column: 26, scope: !162)
!166 = !DILocalVariable(name: "pFile", scope: !162, file: !1, line: 96, type: !40)
!167 = !DILocation(line: 96, column: 16, scope: !162)
!168 = !DILocation(line: 98, column: 17, scope: !169)
!169 = distinct !DILexicalBlock(scope: !162, file: !1, line: 98, column: 13)
!170 = !DILocation(line: 98, column: 16, scope: !169)
!171 = !DILocation(line: 98, column: 25, scope: !169)
!172 = !DILocation(line: 98, column: 13, scope: !162)
!173 = !DILocation(line: 100, column: 21, scope: !174)
!174 = distinct !DILexicalBlock(scope: !169, file: !1, line: 99, column: 9)
!175 = !DILocation(line: 100, column: 19, scope: !174)
!176 = !DILocation(line: 101, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !1, line: 101, column: 17)
!178 = !DILocation(line: 101, column: 23, scope: !177)
!179 = !DILocation(line: 101, column: 17, scope: !174)
!180 = !DILocation(line: 104, column: 27, scope: !181)
!181 = distinct !DILexicalBlock(scope: !182, file: !1, line: 104, column: 21)
!182 = distinct !DILexicalBlock(scope: !177, file: !1, line: 102, column: 13)
!183 = !DILocation(line: 104, column: 32, scope: !181)
!184 = !DILocation(line: 104, column: 31, scope: !181)
!185 = !DILocation(line: 104, column: 51, scope: !181)
!186 = !DILocation(line: 104, column: 50, scope: !181)
!187 = !DILocation(line: 104, column: 41, scope: !181)
!188 = !DILocation(line: 104, column: 61, scope: !181)
!189 = !DILocation(line: 104, column: 21, scope: !181)
!190 = !DILocation(line: 104, column: 68, scope: !181)
!191 = !DILocation(line: 104, column: 21, scope: !182)
!192 = !DILocation(line: 106, column: 21, scope: !193)
!193 = distinct !DILexicalBlock(scope: !181, file: !1, line: 105, column: 17)
!194 = !DILocation(line: 108, column: 21, scope: !193)
!195 = !DILocation(line: 108, column: 26, scope: !193)
!196 = !DILocation(line: 108, column: 35, scope: !193)
!197 = !DILocation(line: 109, column: 17, scope: !193)
!198 = !DILocation(line: 110, column: 24, scope: !182)
!199 = !DILocation(line: 110, column: 17, scope: !182)
!200 = !DILocation(line: 111, column: 13, scope: !182)
!201 = !DILocation(line: 112, column: 9, scope: !174)
!202 = !DILocation(line: 114, column: 28, scope: !152)
!203 = !DILocation(line: 114, column: 14, scope: !152)
!204 = !DILocation(line: 114, column: 26, scope: !152)
!205 = !DILocation(line: 115, column: 5, scope: !152)
!206 = !DILocation(line: 116, column: 1, scope: !152)
!207 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_67_good", scope: !1, file: !1, line: 118, type: !11, scopeLine: 119, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!208 = !DILocation(line: 120, column: 5, scope: !207)
!209 = !DILocation(line: 121, column: 5, scope: !207)
!210 = !DILocation(line: 122, column: 1, scope: !207)
