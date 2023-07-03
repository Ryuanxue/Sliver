; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_printf_1794CWE134_Uncontrolled_Format_String__char_file_printf_17127_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_printf_1794CWE134_Uncontrolled_Format_String__char_file_printf_17127_1.c"
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_1794CWE134_Uncontrolled_Format_String__char_file_printf_17127_1(i8* %_goodB2G_data_0, void (i8*)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_k_0 = alloca i32, align 4
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_pFile_0 = alloca %struct._IO_FILE*, align 8
  %_goodG2B_h_0 = alloca i32, align 4
  %_goodG2B_j_0 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !21, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_k_0, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !26, metadata !DIExpression()), !dbg !30
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !30
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !30
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !31
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !32
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !33
  br label %for.cond, !dbg !35

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !36
  %cmp = icmp slt i32 %1, 1, !dbg !38
  br i1 %cmp, label %for.body, label %for.end, !dbg !39

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !40, metadata !DIExpression()), !dbg !46
  %2 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !47
  %call = call i64 @strlen(i8* %2) #6, !dbg !48
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !46
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_goodB2G_pFile_0, metadata !49, metadata !DIExpression()), !dbg !107
  %3 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !108
  %sub = sub i64 100, %3, !dbg !110
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !111
  br i1 %cmp1, label %if.then, label %if.end12, !dbg !112

if.then:                                          ; preds = %for.body
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !113
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !115
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !116
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !118
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !119

if.then4:                                         ; preds = %if.then
  %5 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !120
  %6 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !123
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !124
  %7 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !125
  %sub5 = sub i64 100, %7, !dbg !126
  %conv = trunc i64 %sub5 to i32, !dbg !127
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !128
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !129
  %cmp7 = icmp eq i8* %call6, null, !dbg !130
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !131

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !132
  %9 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !134
  %10 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !135
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !134
  store i8 0, i8* %arrayidx, align 1, !dbg !136
  br label %if.end, !dbg !137

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !138
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !139
  br label %if.end11, !dbg !140

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end12, !dbg !141

if.end12:                                         ; preds = %if.end11, %for.body
  br label %for.inc, !dbg !142

for.inc:                                          ; preds = %if.end12
  %12 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !143
  %inc = add nsw i32 %12, 1, !dbg !143
  store i32 %inc, i32* %_goodB2G_i_0, align 4, !dbg !143
  br label %for.cond, !dbg !144, !llvm.loop !145

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %_goodB2G_k_0, align 4, !dbg !148
  br label %for.cond13, !dbg !150

for.cond13:                                       ; preds = %for.inc18, %for.end
  %13 = load i32, i32* %_goodB2G_k_0, align 4, !dbg !151
  %cmp14 = icmp slt i32 %13, 1, !dbg !153
  br i1 %cmp14, label %for.body16, label %for.end20, !dbg !154

for.body16:                                       ; preds = %for.cond13
  %14 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !155
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %14), !dbg !157
  br label %for.inc18, !dbg !158

for.inc18:                                        ; preds = %for.body16
  %15 = load i32, i32* %_goodB2G_k_0, align 4, !dbg !159
  %inc19 = add nsw i32 %15, 1, !dbg !159
  store i32 %inc19, i32* %_goodB2G_k_0, align 4, !dbg !159
  br label %for.cond13, !dbg !160, !llvm.loop !161

for.end20:                                        ; preds = %for.cond13
  br label %goodB2G_label_, !dbg !162

goodB2G_label_:                                   ; preds = %for.end20
  call void @llvm.dbg.label(metadata !163), !dbg !164
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_h_0, metadata !165, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_j_0, metadata !168, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !172, metadata !DIExpression()), !dbg !173
  %16 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !173
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 100, i1 false), !dbg !173
  %arraydecay21 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !174
  store i8* %arraydecay21, i8** %_goodG2B_data_0, align 8, !dbg !175
  store i32 0, i32* %_goodG2B_h_0, align 4, !dbg !176
  br label %for.cond22, !dbg !178

for.cond22:                                       ; preds = %for.inc27, %goodB2G_label_
  %17 = load i32, i32* %_goodG2B_h_0, align 4, !dbg !179
  %cmp23 = icmp slt i32 %17, 1, !dbg !181
  br i1 %cmp23, label %for.body25, label %for.end29, !dbg !182

for.body25:                                       ; preds = %for.cond22
  %18 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !183
  %call26 = call i8* @strcpy(i8* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !185
  br label %for.inc27, !dbg !186

for.inc27:                                        ; preds = %for.body25
  %19 = load i32, i32* %_goodG2B_h_0, align 4, !dbg !187
  %inc28 = add nsw i32 %19, 1, !dbg !187
  store i32 %inc28, i32* %_goodG2B_h_0, align 4, !dbg !187
  br label %for.cond22, !dbg !188, !llvm.loop !189

for.end29:                                        ; preds = %for.cond22
  store i32 0, i32* %_goodG2B_j_0, align 4, !dbg !191
  br label %for.cond30, !dbg !193

for.cond30:                                       ; preds = %for.inc34, %for.end29
  %20 = load i32, i32* %_goodG2B_j_0, align 4, !dbg !194
  %cmp31 = icmp slt i32 %20, 1, !dbg !196
  br i1 %cmp31, label %for.body33, label %for.end36, !dbg !197

for.body33:                                       ; preds = %for.cond30
  %21 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !198
  %22 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !200
  call void %21(i8* %22), !dbg !198
  br label %for.inc34, !dbg !201

for.inc34:                                        ; preds = %for.body33
  %23 = load i32, i32* %_goodG2B_j_0, align 4, !dbg !202
  %inc35 = add nsw i32 %23, 1, !dbg !202
  store i32 %inc35, i32* %_goodG2B_j_0, align 4, !dbg !202
  br label %for.cond30, !dbg !203, !llvm.loop !204

for.end36:                                        ; preds = %for.cond30
  br label %goodG2B_label_, !dbg !205

goodG2B_label_:                                   ; preds = %for.end36
  call void @llvm.dbg.label(metadata !206), !dbg !207
  br label %CWE134_Uncontrolled_Format_String__char_file_printf_17_good_label_, !dbg !208

CWE134_Uncontrolled_Format_String__char_file_printf_17_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !209), !dbg !210
  ret void, !dbg !211
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_1794CWE134_Uncontrolled_Format_String__char_file_printf_17127_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_026/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_1794CWE134_Uncontrolled_Format_String__char_file_printf_17127_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !12}
!17 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 128, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 152, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G_i_0", scope: !22, file: !1, line: 6, type: !4)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 5, column: 3)
!23 = !DILocation(line: 6, column: 9, scope: !22)
!24 = !DILocalVariable(name: "_goodB2G_k_0", scope: !22, file: !1, line: 7, type: !4)
!25 = !DILocation(line: 7, column: 9, scope: !22)
!26 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !22, file: !1, line: 8, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 100)
!30 = !DILocation(line: 8, column: 10, scope: !22)
!31 = !DILocation(line: 9, column: 23, scope: !22)
!32 = !DILocation(line: 9, column: 21, scope: !22)
!33 = !DILocation(line: 10, column: 23, scope: !34)
!34 = distinct !DILexicalBlock(scope: !22, file: !1, line: 10, column: 5)
!35 = !DILocation(line: 10, column: 10, scope: !34)
!36 = !DILocation(line: 10, column: 28, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !1, line: 10, column: 5)
!38 = !DILocation(line: 10, column: 41, scope: !37)
!39 = !DILocation(line: 10, column: 5, scope: !34)
!40 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !41, file: !1, line: 13, type: !43)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 12, column: 7)
!42 = distinct !DILexicalBlock(scope: !37, file: !1, line: 11, column: 5)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 46, baseType: !45)
!44 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!45 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!46 = !DILocation(line: 13, column: 16, scope: !41)
!47 = !DILocation(line: 13, column: 44, scope: !41)
!48 = !DILocation(line: 13, column: 37, scope: !41)
!49 = !DILocalVariable(name: "_goodB2G_pFile_0", scope: !41, file: !1, line: 14, type: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !52, line: 7, baseType: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !54, line: 49, size: 1728, elements: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !71, !73, !74, !75, !79, !81, !83, !87, !90, !92, !95, !98, !99, !101, !102, !103}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !53, file: !54, line: 51, baseType: !4, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !53, file: !54, line: 54, baseType: !12, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !53, file: !54, line: 55, baseType: !12, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !53, file: !54, line: 56, baseType: !12, size: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !53, file: !54, line: 57, baseType: !12, size: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !53, file: !54, line: 58, baseType: !12, size: 64, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !53, file: !54, line: 59, baseType: !12, size: 64, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !53, file: !54, line: 60, baseType: !12, size: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !53, file: !54, line: 61, baseType: !12, size: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !53, file: !54, line: 64, baseType: !12, size: 64, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !53, file: !54, line: 65, baseType: !12, size: 64, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !53, file: !54, line: 66, baseType: !12, size: 64, offset: 704)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !53, file: !54, line: 68, baseType: !69, size: 64, offset: 768)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !54, line: 36, flags: DIFlagFwdDecl)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !53, file: !54, line: 70, baseType: !72, size: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !53, file: !54, line: 72, baseType: !4, size: 32, offset: 896)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !53, file: !54, line: 73, baseType: !4, size: 32, offset: 928)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !53, file: !54, line: 74, baseType: !76, size: 64, offset: 960)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !77, line: 152, baseType: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!78 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !53, file: !54, line: 77, baseType: !80, size: 16, offset: 1024)
!80 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !53, file: !54, line: 78, baseType: !82, size: 8, offset: 1040)
!82 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !53, file: !54, line: 79, baseType: !84, size: 8, offset: 1048)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 1)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !53, file: !54, line: 81, baseType: !88, size: 64, offset: 1088)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !54, line: 43, baseType: null)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !53, file: !54, line: 89, baseType: !91, size: 64, offset: 1152)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !77, line: 153, baseType: !78)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !53, file: !54, line: 91, baseType: !93, size: 64, offset: 1216)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !54, line: 37, flags: DIFlagFwdDecl)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !53, file: !54, line: 92, baseType: !96, size: 64, offset: 1280)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !54, line: 38, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !53, file: !54, line: 93, baseType: !72, size: 64, offset: 1344)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !53, file: !54, line: 94, baseType: !100, size: 64, offset: 1408)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !53, file: !54, line: 95, baseType: !43, size: 64, offset: 1472)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !53, file: !54, line: 96, baseType: !4, size: 32, offset: 1536)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !53, file: !54, line: 98, baseType: !104, size: 160, offset: 1568)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 20)
!107 = !DILocation(line: 14, column: 15, scope: !41)
!108 = !DILocation(line: 15, column: 20, scope: !109)
!109 = distinct !DILexicalBlock(scope: !41, file: !1, line: 15, column: 13)
!110 = !DILocation(line: 15, column: 18, scope: !109)
!111 = !DILocation(line: 15, column: 40, scope: !109)
!112 = !DILocation(line: 15, column: 13, scope: !41)
!113 = !DILocation(line: 17, column: 30, scope: !114)
!114 = distinct !DILexicalBlock(scope: !109, file: !1, line: 16, column: 9)
!115 = !DILocation(line: 17, column: 28, scope: !114)
!116 = !DILocation(line: 18, column: 15, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !1, line: 18, column: 15)
!118 = !DILocation(line: 18, column: 32, scope: !117)
!119 = !DILocation(line: 18, column: 15, scope: !114)
!120 = !DILocation(line: 20, column: 23, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !1, line: 20, column: 17)
!122 = distinct !DILexicalBlock(scope: !117, file: !1, line: 19, column: 11)
!123 = !DILocation(line: 20, column: 41, scope: !121)
!124 = !DILocation(line: 20, column: 39, scope: !121)
!125 = !DILocation(line: 20, column: 74, scope: !121)
!126 = !DILocation(line: 20, column: 72, scope: !121)
!127 = !DILocation(line: 20, column: 61, scope: !121)
!128 = !DILocation(line: 20, column: 95, scope: !121)
!129 = !DILocation(line: 20, column: 17, scope: !121)
!130 = !DILocation(line: 20, column: 113, scope: !121)
!131 = !DILocation(line: 20, column: 17, scope: !122)
!132 = !DILocation(line: 22, column: 15, scope: !133)
!133 = distinct !DILexicalBlock(scope: !121, file: !1, line: 21, column: 13)
!134 = !DILocation(line: 23, column: 15, scope: !133)
!135 = !DILocation(line: 23, column: 31, scope: !133)
!136 = !DILocation(line: 23, column: 51, scope: !133)
!137 = !DILocation(line: 24, column: 13, scope: !133)
!138 = !DILocation(line: 26, column: 20, scope: !122)
!139 = !DILocation(line: 26, column: 13, scope: !122)
!140 = !DILocation(line: 27, column: 11, scope: !122)
!141 = !DILocation(line: 29, column: 9, scope: !114)
!142 = !DILocation(line: 32, column: 5, scope: !42)
!143 = !DILocation(line: 10, column: 58, scope: !37)
!144 = !DILocation(line: 10, column: 5, scope: !37)
!145 = distinct !{!145, !39, !146, !147}
!146 = !DILocation(line: 32, column: 5, scope: !34)
!147 = !{!"llvm.loop.mustprogress"}
!148 = !DILocation(line: 34, column: 23, scope: !149)
!149 = distinct !DILexicalBlock(scope: !22, file: !1, line: 34, column: 5)
!150 = !DILocation(line: 34, column: 10, scope: !149)
!151 = !DILocation(line: 34, column: 28, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !1, line: 34, column: 5)
!153 = !DILocation(line: 34, column: 41, scope: !152)
!154 = !DILocation(line: 34, column: 5, scope: !149)
!155 = !DILocation(line: 36, column: 22, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !1, line: 35, column: 5)
!157 = !DILocation(line: 36, column: 7, scope: !156)
!158 = !DILocation(line: 37, column: 5, scope: !156)
!159 = !DILocation(line: 34, column: 58, scope: !152)
!160 = !DILocation(line: 34, column: 5, scope: !152)
!161 = distinct !{!161, !154, !162, !147}
!162 = !DILocation(line: 37, column: 5, scope: !149)
!163 = !DILabel(scope: !22, name: "goodB2G_label_", file: !1, line: 39)
!164 = !DILocation(line: 39, column: 5, scope: !22)
!165 = !DILocalVariable(name: "_goodG2B_h_0", scope: !166, file: !1, line: 46, type: !4)
!166 = distinct !DILexicalBlock(scope: !9, file: !1, line: 45, column: 3)
!167 = !DILocation(line: 46, column: 9, scope: !166)
!168 = !DILocalVariable(name: "_goodG2B_j_0", scope: !166, file: !1, line: 47, type: !4)
!169 = !DILocation(line: 47, column: 9, scope: !166)
!170 = !DILocalVariable(name: "_goodG2B_data_0", scope: !166, file: !1, line: 48, type: !12)
!171 = !DILocation(line: 48, column: 11, scope: !166)
!172 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !166, file: !1, line: 49, type: !27)
!173 = !DILocation(line: 49, column: 10, scope: !166)
!174 = !DILocation(line: 50, column: 23, scope: !166)
!175 = !DILocation(line: 50, column: 21, scope: !166)
!176 = !DILocation(line: 51, column: 23, scope: !177)
!177 = distinct !DILexicalBlock(scope: !166, file: !1, line: 51, column: 5)
!178 = !DILocation(line: 51, column: 10, scope: !177)
!179 = !DILocation(line: 51, column: 28, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !1, line: 51, column: 5)
!181 = !DILocation(line: 51, column: 41, scope: !180)
!182 = !DILocation(line: 51, column: 5, scope: !177)
!183 = !DILocation(line: 53, column: 14, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !1, line: 52, column: 5)
!185 = !DILocation(line: 53, column: 7, scope: !184)
!186 = !DILocation(line: 54, column: 5, scope: !184)
!187 = !DILocation(line: 51, column: 58, scope: !180)
!188 = !DILocation(line: 51, column: 5, scope: !180)
!189 = distinct !{!189, !182, !190, !147}
!190 = !DILocation(line: 54, column: 5, scope: !177)
!191 = !DILocation(line: 56, column: 23, scope: !192)
!192 = distinct !DILexicalBlock(scope: !166, file: !1, line: 56, column: 5)
!193 = !DILocation(line: 56, column: 10, scope: !192)
!194 = !DILocation(line: 56, column: 28, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !1, line: 56, column: 5)
!196 = !DILocation(line: 56, column: 41, scope: !195)
!197 = !DILocation(line: 56, column: 5, scope: !192)
!198 = !DILocation(line: 58, column: 7, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 57, column: 5)
!200 = !DILocation(line: 58, column: 14, scope: !199)
!201 = !DILocation(line: 59, column: 5, scope: !199)
!202 = !DILocation(line: 56, column: 58, scope: !195)
!203 = !DILocation(line: 56, column: 5, scope: !195)
!204 = distinct !{!204, !197, !205, !147}
!205 = !DILocation(line: 59, column: 5, scope: !192)
!206 = !DILabel(scope: !166, name: "goodG2B_label_", file: !1, line: 61)
!207 = !DILocation(line: 61, column: 5, scope: !166)
!208 = !DILocation(line: 66, column: 3, scope: !166)
!209 = !DILabel(scope: !9, name: "CWE134_Uncontrolled_Format_String__char_file_printf_17_good_label_", file: !1, line: 67)
!210 = !DILocation(line: 67, column: 3, scope: !9)
!211 = !DILocation(line: 72, column: 1, scope: !9)
