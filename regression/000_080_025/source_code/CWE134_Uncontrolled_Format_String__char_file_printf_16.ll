; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_printf_16.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_printf_16.c"
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_16_bad() #0 !dbg !10 {
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
  br label %while.body, !dbg !24

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !25, metadata !DIExpression()), !dbg !31
  %1 = load i8*, i8** %data, align 8, !dbg !32
  %call = call i64 @strlen(i8* %1) #6, !dbg !33
  store i64 %call, i64* %dataLen, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !34, metadata !DIExpression()), !dbg !91
  %2 = load i64, i64* %dataLen, align 8, !dbg !92
  %sub = sub i64 100, %2, !dbg !94
  %cmp = icmp ugt i64 %sub, 1, !dbg !95
  br i1 %cmp, label %if.then, label %if.end11, !dbg !96

if.then:                                          ; preds = %while.body
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !97
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !99
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !100
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !102
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !103

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !104
  %5 = load i64, i64* %dataLen, align 8, !dbg !107
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !108
  %6 = load i64, i64* %dataLen, align 8, !dbg !109
  %sub4 = sub i64 100, %6, !dbg !110
  %conv = trunc i64 %sub4 to i32, !dbg !111
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !112
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !113
  %cmp6 = icmp eq i8* %call5, null, !dbg !114
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !115

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !116
  %8 = load i8*, i8** %data, align 8, !dbg !118
  %9 = load i64, i64* %dataLen, align 8, !dbg !119
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !118
  store i8 0, i8* %arrayidx, align 1, !dbg !120
  br label %if.end, !dbg !121

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !122
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !123
  br label %if.end10, !dbg !124

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !125

if.end11:                                         ; preds = %if.end10, %while.body
  br label %while.end, !dbg !126

while.end:                                        ; preds = %if.end11
  br label %while.body12, !dbg !127

while.body12:                                     ; preds = %while.end
  %11 = load i8*, i8** %data, align 8, !dbg !128
  %call13 = call i32 (i8*, ...) @printf(i8* %11), !dbg !130
  br label %while.end14, !dbg !131

while.end14:                                      ; preds = %while.body12
  ret void, !dbg !132
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
  br label %while.body, !dbg !140

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !141, metadata !DIExpression()), !dbg !144
  %1 = load i8*, i8** %data, align 8, !dbg !145
  %call = call i64 @strlen(i8* %1) #6, !dbg !146
  store i64 %call, i64* %dataLen, align 8, !dbg !144
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !147, metadata !DIExpression()), !dbg !148
  %2 = load i64, i64* %dataLen, align 8, !dbg !149
  %sub = sub i64 100, %2, !dbg !151
  %cmp = icmp ugt i64 %sub, 1, !dbg !152
  br i1 %cmp, label %if.then, label %if.end11, !dbg !153

if.then:                                          ; preds = %while.body
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !154
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !156
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !157
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !159
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !160

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !161
  %5 = load i64, i64* %dataLen, align 8, !dbg !164
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !165
  %6 = load i64, i64* %dataLen, align 8, !dbg !166
  %sub4 = sub i64 100, %6, !dbg !167
  %conv = trunc i64 %sub4 to i32, !dbg !168
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !169
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !170
  %cmp6 = icmp eq i8* %call5, null, !dbg !171
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !172

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !173
  %8 = load i8*, i8** %data, align 8, !dbg !175
  %9 = load i64, i64* %dataLen, align 8, !dbg !176
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !175
  store i8 0, i8* %arrayidx, align 1, !dbg !177
  br label %if.end, !dbg !178

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !179
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !180
  br label %if.end10, !dbg !181

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !182

if.end11:                                         ; preds = %if.end10, %while.body
  br label %while.end, !dbg !183

while.end:                                        ; preds = %if.end11
  br label %while.body12, !dbg !184

while.body12:                                     ; preds = %while.end
  %11 = load i8*, i8** %data, align 8, !dbg !185
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %11), !dbg !187
  br label %while.end14, !dbg !188

while.end14:                                      ; preds = %while.body12
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
  br label %while.body, !dbg !197

while.body:                                       ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !198
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !200
  br label %while.end, !dbg !201

while.end:                                        ; preds = %while.body
  br label %while.body1, !dbg !202

while.body1:                                      ; preds = %while.end
  %2 = load i8*, i8** %data, align 8, !dbg !203
  %call2 = call i32 (i8*, ...) @printf(i8* %2), !dbg !205
  br label %while.end3, !dbg !206

while.end3:                                       ; preds = %while.body1
  ret void, !dbg !207
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_16_good() #0 !dbg !208 {
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_16.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_025/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_16_bad", scope: !1, file: !1, line: 33, type: !11, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!25 = !DILocalVariable(name: "dataLen", scope: !26, file: !1, line: 42, type: !28)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 40, column: 9)
!27 = distinct !DILexicalBlock(scope: !10, file: !1, line: 39, column: 5)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DILocation(line: 42, column: 20, scope: !26)
!32 = !DILocation(line: 42, column: 37, scope: !26)
!33 = !DILocation(line: 42, column: 30, scope: !26)
!34 = !DILocalVariable(name: "pFile", scope: !26, file: !1, line: 43, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !37, line: 7, baseType: !38)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !39, line: 49, size: 1728, elements: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !56, !58, !59, !60, !64, !66, !68, !72, !75, !77, !80, !83, !84, !85, !86, !87}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !38, file: !39, line: 51, baseType: !5, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !38, file: !39, line: 54, baseType: !14, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !38, file: !39, line: 55, baseType: !14, size: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !38, file: !39, line: 56, baseType: !14, size: 64, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !38, file: !39, line: 57, baseType: !14, size: 64, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !38, file: !39, line: 58, baseType: !14, size: 64, offset: 320)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !38, file: !39, line: 59, baseType: !14, size: 64, offset: 384)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !38, file: !39, line: 60, baseType: !14, size: 64, offset: 448)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !38, file: !39, line: 61, baseType: !14, size: 64, offset: 512)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !38, file: !39, line: 64, baseType: !14, size: 64, offset: 576)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !38, file: !39, line: 65, baseType: !14, size: 64, offset: 640)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !38, file: !39, line: 66, baseType: !14, size: 64, offset: 704)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !38, file: !39, line: 68, baseType: !54, size: 64, offset: 768)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !39, line: 36, flags: DIFlagFwdDecl)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !38, file: !39, line: 70, baseType: !57, size: 64, offset: 832)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !38, file: !39, line: 72, baseType: !5, size: 32, offset: 896)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !38, file: !39, line: 73, baseType: !5, size: 32, offset: 928)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !38, file: !39, line: 74, baseType: !61, size: 64, offset: 960)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !62, line: 152, baseType: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!63 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !38, file: !39, line: 77, baseType: !65, size: 16, offset: 1024)
!65 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !38, file: !39, line: 78, baseType: !67, size: 8, offset: 1040)
!67 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !38, file: !39, line: 79, baseType: !69, size: 8, offset: 1048)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 1)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !38, file: !39, line: 81, baseType: !73, size: 64, offset: 1088)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !39, line: 43, baseType: null)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !38, file: !39, line: 89, baseType: !76, size: 64, offset: 1152)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !62, line: 153, baseType: !63)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !38, file: !39, line: 91, baseType: !78, size: 64, offset: 1216)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !39, line: 37, flags: DIFlagFwdDecl)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !38, file: !39, line: 92, baseType: !81, size: 64, offset: 1280)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !39, line: 38, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !38, file: !39, line: 93, baseType: !57, size: 64, offset: 1344)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !38, file: !39, line: 94, baseType: !4, size: 64, offset: 1408)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !38, file: !39, line: 95, baseType: !28, size: 64, offset: 1472)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !38, file: !39, line: 96, baseType: !5, size: 32, offset: 1536)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !38, file: !39, line: 98, baseType: !88, size: 160, offset: 1568)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 20)
!91 = !DILocation(line: 43, column: 20, scope: !26)
!92 = !DILocation(line: 45, column: 21, scope: !93)
!93 = distinct !DILexicalBlock(scope: !26, file: !1, line: 45, column: 17)
!94 = !DILocation(line: 45, column: 20, scope: !93)
!95 = !DILocation(line: 45, column: 29, scope: !93)
!96 = !DILocation(line: 45, column: 17, scope: !26)
!97 = !DILocation(line: 47, column: 25, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 46, column: 13)
!99 = !DILocation(line: 47, column: 23, scope: !98)
!100 = !DILocation(line: 48, column: 21, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !1, line: 48, column: 21)
!102 = !DILocation(line: 48, column: 27, scope: !101)
!103 = !DILocation(line: 48, column: 21, scope: !98)
!104 = !DILocation(line: 51, column: 31, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 51, column: 25)
!106 = distinct !DILexicalBlock(scope: !101, file: !1, line: 49, column: 17)
!107 = !DILocation(line: 51, column: 36, scope: !105)
!108 = !DILocation(line: 51, column: 35, scope: !105)
!109 = !DILocation(line: 51, column: 55, scope: !105)
!110 = !DILocation(line: 51, column: 54, scope: !105)
!111 = !DILocation(line: 51, column: 45, scope: !105)
!112 = !DILocation(line: 51, column: 65, scope: !105)
!113 = !DILocation(line: 51, column: 25, scope: !105)
!114 = !DILocation(line: 51, column: 72, scope: !105)
!115 = !DILocation(line: 51, column: 25, scope: !106)
!116 = !DILocation(line: 53, column: 25, scope: !117)
!117 = distinct !DILexicalBlock(scope: !105, file: !1, line: 52, column: 21)
!118 = !DILocation(line: 55, column: 25, scope: !117)
!119 = !DILocation(line: 55, column: 30, scope: !117)
!120 = !DILocation(line: 55, column: 39, scope: !117)
!121 = !DILocation(line: 56, column: 21, scope: !117)
!122 = !DILocation(line: 57, column: 28, scope: !106)
!123 = !DILocation(line: 57, column: 21, scope: !106)
!124 = !DILocation(line: 58, column: 17, scope: !106)
!125 = !DILocation(line: 59, column: 13, scope: !98)
!126 = !DILocation(line: 61, column: 9, scope: !27)
!127 = !DILocation(line: 63, column: 5, scope: !10)
!128 = !DILocation(line: 66, column: 16, scope: !129)
!129 = distinct !DILexicalBlock(scope: !10, file: !1, line: 64, column: 5)
!130 = !DILocation(line: 66, column: 9, scope: !129)
!131 = !DILocation(line: 67, column: 9, scope: !129)
!132 = !DILocation(line: 69, column: 1, scope: !10)
!133 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 76, type: !11, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!134 = !DILocalVariable(name: "data", scope: !133, file: !1, line: 78, type: !14)
!135 = !DILocation(line: 78, column: 12, scope: !133)
!136 = !DILocalVariable(name: "dataBuffer", scope: !133, file: !1, line: 79, type: !18)
!137 = !DILocation(line: 79, column: 10, scope: !133)
!138 = !DILocation(line: 80, column: 12, scope: !133)
!139 = !DILocation(line: 80, column: 10, scope: !133)
!140 = !DILocation(line: 81, column: 5, scope: !133)
!141 = !DILocalVariable(name: "dataLen", scope: !142, file: !1, line: 85, type: !28)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 83, column: 9)
!143 = distinct !DILexicalBlock(scope: !133, file: !1, line: 82, column: 5)
!144 = !DILocation(line: 85, column: 20, scope: !142)
!145 = !DILocation(line: 85, column: 37, scope: !142)
!146 = !DILocation(line: 85, column: 30, scope: !142)
!147 = !DILocalVariable(name: "pFile", scope: !142, file: !1, line: 86, type: !35)
!148 = !DILocation(line: 86, column: 20, scope: !142)
!149 = !DILocation(line: 88, column: 21, scope: !150)
!150 = distinct !DILexicalBlock(scope: !142, file: !1, line: 88, column: 17)
!151 = !DILocation(line: 88, column: 20, scope: !150)
!152 = !DILocation(line: 88, column: 29, scope: !150)
!153 = !DILocation(line: 88, column: 17, scope: !142)
!154 = !DILocation(line: 90, column: 25, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !1, line: 89, column: 13)
!156 = !DILocation(line: 90, column: 23, scope: !155)
!157 = !DILocation(line: 91, column: 21, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !1, line: 91, column: 21)
!159 = !DILocation(line: 91, column: 27, scope: !158)
!160 = !DILocation(line: 91, column: 21, scope: !155)
!161 = !DILocation(line: 94, column: 31, scope: !162)
!162 = distinct !DILexicalBlock(scope: !163, file: !1, line: 94, column: 25)
!163 = distinct !DILexicalBlock(scope: !158, file: !1, line: 92, column: 17)
!164 = !DILocation(line: 94, column: 36, scope: !162)
!165 = !DILocation(line: 94, column: 35, scope: !162)
!166 = !DILocation(line: 94, column: 55, scope: !162)
!167 = !DILocation(line: 94, column: 54, scope: !162)
!168 = !DILocation(line: 94, column: 45, scope: !162)
!169 = !DILocation(line: 94, column: 65, scope: !162)
!170 = !DILocation(line: 94, column: 25, scope: !162)
!171 = !DILocation(line: 94, column: 72, scope: !162)
!172 = !DILocation(line: 94, column: 25, scope: !163)
!173 = !DILocation(line: 96, column: 25, scope: !174)
!174 = distinct !DILexicalBlock(scope: !162, file: !1, line: 95, column: 21)
!175 = !DILocation(line: 98, column: 25, scope: !174)
!176 = !DILocation(line: 98, column: 30, scope: !174)
!177 = !DILocation(line: 98, column: 39, scope: !174)
!178 = !DILocation(line: 99, column: 21, scope: !174)
!179 = !DILocation(line: 100, column: 28, scope: !163)
!180 = !DILocation(line: 100, column: 21, scope: !163)
!181 = !DILocation(line: 101, column: 17, scope: !163)
!182 = !DILocation(line: 102, column: 13, scope: !155)
!183 = !DILocation(line: 104, column: 9, scope: !143)
!184 = !DILocation(line: 106, column: 5, scope: !133)
!185 = !DILocation(line: 109, column: 24, scope: !186)
!186 = distinct !DILexicalBlock(scope: !133, file: !1, line: 107, column: 5)
!187 = !DILocation(line: 109, column: 9, scope: !186)
!188 = !DILocation(line: 110, column: 9, scope: !186)
!189 = !DILocation(line: 112, column: 1, scope: !133)
!190 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 115, type: !11, scopeLine: 116, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!191 = !DILocalVariable(name: "data", scope: !190, file: !1, line: 117, type: !14)
!192 = !DILocation(line: 117, column: 12, scope: !190)
!193 = !DILocalVariable(name: "dataBuffer", scope: !190, file: !1, line: 118, type: !18)
!194 = !DILocation(line: 118, column: 10, scope: !190)
!195 = !DILocation(line: 119, column: 12, scope: !190)
!196 = !DILocation(line: 119, column: 10, scope: !190)
!197 = !DILocation(line: 120, column: 5, scope: !190)
!198 = !DILocation(line: 123, column: 16, scope: !199)
!199 = distinct !DILexicalBlock(scope: !190, file: !1, line: 121, column: 5)
!200 = !DILocation(line: 123, column: 9, scope: !199)
!201 = !DILocation(line: 124, column: 9, scope: !199)
!202 = !DILocation(line: 126, column: 5, scope: !190)
!203 = !DILocation(line: 129, column: 16, scope: !204)
!204 = distinct !DILexicalBlock(scope: !190, file: !1, line: 127, column: 5)
!205 = !DILocation(line: 129, column: 9, scope: !204)
!206 = !DILocation(line: 130, column: 9, scope: !204)
!207 = !DILocation(line: 132, column: 1, scope: !190)
!208 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_16_good", scope: !1, file: !1, line: 134, type: !11, scopeLine: 135, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!209 = !DILocation(line: 136, column: 5, scope: !208)
!210 = !DILocation(line: 137, column: 5, scope: !208)
!211 = !DILocation(line: 138, column: 1, scope: !208)
