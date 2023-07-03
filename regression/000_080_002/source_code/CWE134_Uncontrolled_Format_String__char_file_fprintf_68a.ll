; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_fprintf_68a.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_fprintf_68a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@CWE134_Uncontrolled_Format_String__char_file_fprintf_68_badData = dso_local global i8* null, align 8, !dbg !0
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodG2BData = dso_local global i8* null, align 8, !dbg !9
@CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodB2GData = dso_local global i8* null, align 8, !dbg !13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_68_bad() #0 !dbg !19 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !22, metadata !DIExpression()), !dbg !23
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
  store i8* %11, i8** @CWE134_Uncontrolled_Format_String__char_file_fprintf_68_badData, align 8, !dbg !132
  call void (...) @CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_badSink(), !dbg !133
  ret void, !dbg !134
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

declare dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_badSink(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !135 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !138, metadata !DIExpression()), !dbg !139
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !139
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !139
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !140
  store i8* %arraydecay, i8** %data, align 8, !dbg !141
  %1 = load i8*, i8** %data, align 8, !dbg !142
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !143
  %2 = load i8*, i8** %data, align 8, !dbg !144
  store i8* %2, i8** @CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodG2BData, align 8, !dbg !145
  call void (...) @CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_goodG2BSink(), !dbg !146
  ret void, !dbg !147
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

declare dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_goodG2BSink(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !148 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !151, metadata !DIExpression()), !dbg !152
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !152
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !152
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !153
  store i8* %arraydecay, i8** %data, align 8, !dbg !154
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !155, metadata !DIExpression()), !dbg !157
  %1 = load i8*, i8** %data, align 8, !dbg !158
  %call = call i64 @strlen(i8* %1) #6, !dbg !159
  store i64 %call, i64* %dataLen, align 8, !dbg !157
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !160, metadata !DIExpression()), !dbg !161
  %2 = load i64, i64* %dataLen, align 8, !dbg !162
  %sub = sub i64 100, %2, !dbg !164
  %cmp = icmp ugt i64 %sub, 1, !dbg !165
  br i1 %cmp, label %if.then, label %if.end11, !dbg !166

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !167
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !169
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !170
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !172
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !173

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !174
  %5 = load i64, i64* %dataLen, align 8, !dbg !177
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !178
  %6 = load i64, i64* %dataLen, align 8, !dbg !179
  %sub4 = sub i64 100, %6, !dbg !180
  %conv = trunc i64 %sub4 to i32, !dbg !181
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !182
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !183
  %cmp6 = icmp eq i8* %call5, null, !dbg !184
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !185

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !186
  %8 = load i8*, i8** %data, align 8, !dbg !188
  %9 = load i64, i64* %dataLen, align 8, !dbg !189
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !188
  store i8 0, i8* %arrayidx, align 1, !dbg !190
  br label %if.end, !dbg !191

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !192
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !193
  br label %if.end10, !dbg !194

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !195

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !196
  store i8* %11, i8** @CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodB2GData, align 8, !dbg !197
  call void (...) @CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_goodB2GSink(), !dbg !198
  ret void, !dbg !199
}

declare dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_goodB2GSink(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_68_good() #0 !dbg !200 {
entry:
  call void @goodG2B(), !dbg !201
  call void @goodB2G(), !dbg !202
  ret void, !dbg !203
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_68_badData", scope: !2, file: !3, line: 31, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_68a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_002/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0, !9, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodG2BData", scope: !2, file: !3, line: 32, type: !11, isLocal: false, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodB2GData", scope: !2, file: !3, line: 33, type: !11, isLocal: false, isDefinition: true)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 12.0.0"}
!19 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_68_bad", scope: !3, file: !3, line: 39, type: !20, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null}
!22 = !DILocalVariable(name: "data", scope: !19, file: !3, line: 41, type: !11)
!23 = !DILocation(line: 41, column: 12, scope: !19)
!24 = !DILocalVariable(name: "dataBuffer", scope: !19, file: !3, line: 42, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 800, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 100)
!28 = !DILocation(line: 42, column: 10, scope: !19)
!29 = !DILocation(line: 43, column: 12, scope: !19)
!30 = !DILocation(line: 43, column: 10, scope: !19)
!31 = !DILocalVariable(name: "dataLen", scope: !32, file: !3, line: 46, type: !33)
!32 = distinct !DILexicalBlock(scope: !19, file: !3, line: 44, column: 5)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocation(line: 46, column: 16, scope: !32)
!37 = !DILocation(line: 46, column: 33, scope: !32)
!38 = !DILocation(line: 46, column: 26, scope: !32)
!39 = !DILocalVariable(name: "pFile", scope: !32, file: !3, line: 47, type: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !42, line: 7, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !44, line: 49, size: 1728, elements: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !61, !63, !64, !65, !69, !71, !73, !77, !80, !82, !85, !88, !89, !90, !91, !92}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !43, file: !44, line: 51, baseType: !7, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !43, file: !44, line: 54, baseType: !11, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !43, file: !44, line: 55, baseType: !11, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !43, file: !44, line: 56, baseType: !11, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !43, file: !44, line: 57, baseType: !11, size: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !43, file: !44, line: 58, baseType: !11, size: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !43, file: !44, line: 59, baseType: !11, size: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !43, file: !44, line: 60, baseType: !11, size: 64, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !43, file: !44, line: 61, baseType: !11, size: 64, offset: 512)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !43, file: !44, line: 64, baseType: !11, size: 64, offset: 576)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !43, file: !44, line: 65, baseType: !11, size: 64, offset: 640)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !43, file: !44, line: 66, baseType: !11, size: 64, offset: 704)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !43, file: !44, line: 68, baseType: !59, size: 64, offset: 768)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !44, line: 36, flags: DIFlagFwdDecl)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !43, file: !44, line: 70, baseType: !62, size: 64, offset: 832)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !43, file: !44, line: 72, baseType: !7, size: 32, offset: 896)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !43, file: !44, line: 73, baseType: !7, size: 32, offset: 928)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !43, file: !44, line: 74, baseType: !66, size: 64, offset: 960)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !67, line: 152, baseType: !68)
!67 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!68 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !43, file: !44, line: 77, baseType: !70, size: 16, offset: 1024)
!70 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !43, file: !44, line: 78, baseType: !72, size: 8, offset: 1040)
!72 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !43, file: !44, line: 79, baseType: !74, size: 8, offset: 1048)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8, elements: !75)
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
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !43, file: !44, line: 94, baseType: !6, size: 64, offset: 1408)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !43, file: !44, line: 95, baseType: !33, size: 64, offset: 1472)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !43, file: !44, line: 96, baseType: !7, size: 32, offset: 1536)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !43, file: !44, line: 98, baseType: !93, size: 160, offset: 1568)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 20)
!96 = !DILocation(line: 47, column: 16, scope: !32)
!97 = !DILocation(line: 49, column: 17, scope: !98)
!98 = distinct !DILexicalBlock(scope: !32, file: !3, line: 49, column: 13)
!99 = !DILocation(line: 49, column: 16, scope: !98)
!100 = !DILocation(line: 49, column: 25, scope: !98)
!101 = !DILocation(line: 49, column: 13, scope: !32)
!102 = !DILocation(line: 51, column: 21, scope: !103)
!103 = distinct !DILexicalBlock(scope: !98, file: !3, line: 50, column: 9)
!104 = !DILocation(line: 51, column: 19, scope: !103)
!105 = !DILocation(line: 52, column: 17, scope: !106)
!106 = distinct !DILexicalBlock(scope: !103, file: !3, line: 52, column: 17)
!107 = !DILocation(line: 52, column: 23, scope: !106)
!108 = !DILocation(line: 52, column: 17, scope: !103)
!109 = !DILocation(line: 55, column: 27, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !3, line: 55, column: 21)
!111 = distinct !DILexicalBlock(scope: !106, file: !3, line: 53, column: 13)
!112 = !DILocation(line: 55, column: 32, scope: !110)
!113 = !DILocation(line: 55, column: 31, scope: !110)
!114 = !DILocation(line: 55, column: 51, scope: !110)
!115 = !DILocation(line: 55, column: 50, scope: !110)
!116 = !DILocation(line: 55, column: 41, scope: !110)
!117 = !DILocation(line: 55, column: 61, scope: !110)
!118 = !DILocation(line: 55, column: 21, scope: !110)
!119 = !DILocation(line: 55, column: 68, scope: !110)
!120 = !DILocation(line: 55, column: 21, scope: !111)
!121 = !DILocation(line: 57, column: 21, scope: !122)
!122 = distinct !DILexicalBlock(scope: !110, file: !3, line: 56, column: 17)
!123 = !DILocation(line: 59, column: 21, scope: !122)
!124 = !DILocation(line: 59, column: 26, scope: !122)
!125 = !DILocation(line: 59, column: 35, scope: !122)
!126 = !DILocation(line: 60, column: 17, scope: !122)
!127 = !DILocation(line: 61, column: 24, scope: !111)
!128 = !DILocation(line: 61, column: 17, scope: !111)
!129 = !DILocation(line: 62, column: 13, scope: !111)
!130 = !DILocation(line: 63, column: 9, scope: !103)
!131 = !DILocation(line: 65, column: 71, scope: !19)
!132 = !DILocation(line: 65, column: 69, scope: !19)
!133 = !DILocation(line: 66, column: 5, scope: !19)
!134 = !DILocation(line: 67, column: 1, scope: !19)
!135 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 76, type: !20, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!136 = !DILocalVariable(name: "data", scope: !135, file: !3, line: 78, type: !11)
!137 = !DILocation(line: 78, column: 12, scope: !135)
!138 = !DILocalVariable(name: "dataBuffer", scope: !135, file: !3, line: 79, type: !25)
!139 = !DILocation(line: 79, column: 10, scope: !135)
!140 = !DILocation(line: 80, column: 12, scope: !135)
!141 = !DILocation(line: 80, column: 10, scope: !135)
!142 = !DILocation(line: 82, column: 12, scope: !135)
!143 = !DILocation(line: 82, column: 5, scope: !135)
!144 = !DILocation(line: 83, column: 75, scope: !135)
!145 = !DILocation(line: 83, column: 73, scope: !135)
!146 = !DILocation(line: 84, column: 5, scope: !135)
!147 = !DILocation(line: 85, column: 1, scope: !135)
!148 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 88, type: !20, scopeLine: 89, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!149 = !DILocalVariable(name: "data", scope: !148, file: !3, line: 90, type: !11)
!150 = !DILocation(line: 90, column: 12, scope: !148)
!151 = !DILocalVariable(name: "dataBuffer", scope: !148, file: !3, line: 91, type: !25)
!152 = !DILocation(line: 91, column: 10, scope: !148)
!153 = !DILocation(line: 92, column: 12, scope: !148)
!154 = !DILocation(line: 92, column: 10, scope: !148)
!155 = !DILocalVariable(name: "dataLen", scope: !156, file: !3, line: 95, type: !33)
!156 = distinct !DILexicalBlock(scope: !148, file: !3, line: 93, column: 5)
!157 = !DILocation(line: 95, column: 16, scope: !156)
!158 = !DILocation(line: 95, column: 33, scope: !156)
!159 = !DILocation(line: 95, column: 26, scope: !156)
!160 = !DILocalVariable(name: "pFile", scope: !156, file: !3, line: 96, type: !40)
!161 = !DILocation(line: 96, column: 16, scope: !156)
!162 = !DILocation(line: 98, column: 17, scope: !163)
!163 = distinct !DILexicalBlock(scope: !156, file: !3, line: 98, column: 13)
!164 = !DILocation(line: 98, column: 16, scope: !163)
!165 = !DILocation(line: 98, column: 25, scope: !163)
!166 = !DILocation(line: 98, column: 13, scope: !156)
!167 = !DILocation(line: 100, column: 21, scope: !168)
!168 = distinct !DILexicalBlock(scope: !163, file: !3, line: 99, column: 9)
!169 = !DILocation(line: 100, column: 19, scope: !168)
!170 = !DILocation(line: 101, column: 17, scope: !171)
!171 = distinct !DILexicalBlock(scope: !168, file: !3, line: 101, column: 17)
!172 = !DILocation(line: 101, column: 23, scope: !171)
!173 = !DILocation(line: 101, column: 17, scope: !168)
!174 = !DILocation(line: 104, column: 27, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !3, line: 104, column: 21)
!176 = distinct !DILexicalBlock(scope: !171, file: !3, line: 102, column: 13)
!177 = !DILocation(line: 104, column: 32, scope: !175)
!178 = !DILocation(line: 104, column: 31, scope: !175)
!179 = !DILocation(line: 104, column: 51, scope: !175)
!180 = !DILocation(line: 104, column: 50, scope: !175)
!181 = !DILocation(line: 104, column: 41, scope: !175)
!182 = !DILocation(line: 104, column: 61, scope: !175)
!183 = !DILocation(line: 104, column: 21, scope: !175)
!184 = !DILocation(line: 104, column: 68, scope: !175)
!185 = !DILocation(line: 104, column: 21, scope: !176)
!186 = !DILocation(line: 106, column: 21, scope: !187)
!187 = distinct !DILexicalBlock(scope: !175, file: !3, line: 105, column: 17)
!188 = !DILocation(line: 108, column: 21, scope: !187)
!189 = !DILocation(line: 108, column: 26, scope: !187)
!190 = !DILocation(line: 108, column: 35, scope: !187)
!191 = !DILocation(line: 109, column: 17, scope: !187)
!192 = !DILocation(line: 110, column: 24, scope: !176)
!193 = !DILocation(line: 110, column: 17, scope: !176)
!194 = !DILocation(line: 111, column: 13, scope: !176)
!195 = !DILocation(line: 112, column: 9, scope: !168)
!196 = !DILocation(line: 114, column: 75, scope: !148)
!197 = !DILocation(line: 114, column: 73, scope: !148)
!198 = !DILocation(line: 115, column: 5, scope: !148)
!199 = !DILocation(line: 116, column: 1, scope: !148)
!200 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_68_good", scope: !3, file: !3, line: 118, type: !20, scopeLine: 119, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!201 = !DILocation(line: 120, column: 5, scope: !200)
!202 = !DILocation(line: 121, column: 5, scope: !200)
!203 = !DILocation(line: 122, column: 1, scope: !200)
