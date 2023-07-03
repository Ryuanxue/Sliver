; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_66a.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_66a.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_66_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !17, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %data, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !29, metadata !DIExpression()), !dbg !34
  %1 = load i8*, i8** %data, align 8, !dbg !35
  %call = call i64 @strlen(i8* %1) #6, !dbg !36
  store i64 %call, i64* %dataLen, align 8, !dbg !34
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !37, metadata !DIExpression()), !dbg !94
  %2 = load i64, i64* %dataLen, align 8, !dbg !95
  %sub = sub i64 100, %2, !dbg !97
  %cmp = icmp ugt i64 %sub, 1, !dbg !98
  br i1 %cmp, label %if.then, label %if.end11, !dbg !99

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !100
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !102
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !103
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !105
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !106

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !107
  %5 = load i64, i64* %dataLen, align 8, !dbg !110
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !111
  %6 = load i64, i64* %dataLen, align 8, !dbg !112
  %sub4 = sub i64 100, %6, !dbg !113
  %conv = trunc i64 %sub4 to i32, !dbg !114
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !115
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !116
  %cmp6 = icmp eq i8* %call5, null, !dbg !117
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !118

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !119
  %8 = load i8*, i8** %data, align 8, !dbg !121
  %9 = load i64, i64* %dataLen, align 8, !dbg !122
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !121
  store i8 0, i8* %arrayidx, align 1, !dbg !123
  br label %if.end, !dbg !124

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !125
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !126
  br label %if.end10, !dbg !127

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !128

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !129
  %arrayidx12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !130
  store i8* %11, i8** %arrayidx12, align 16, !dbg !131
  %arraydecay13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !132
  call void @CWE606_Unchecked_Loop_Condition__char_file_66b_badSink(i8** %arraydecay13), !dbg !133
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

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_file_66b_badSink(i8**) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !135 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !140, metadata !DIExpression()), !dbg !141
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !141
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !141
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !142
  store i8* %arraydecay, i8** %data, align 8, !dbg !143
  %1 = load i8*, i8** %data, align 8, !dbg !144
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !145
  %2 = load i8*, i8** %data, align 8, !dbg !146
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !147
  store i8* %2, i8** %arrayidx, align 16, !dbg !148
  %arraydecay1 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !149
  call void @CWE606_Unchecked_Loop_Condition__char_file_66b_goodG2BSink(i8** %arraydecay1), !dbg !150
  ret void, !dbg !151
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_file_66b_goodG2BSink(i8**) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !152 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !155, metadata !DIExpression()), !dbg !156
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
  %arrayidx12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !203
  store i8* %11, i8** %arrayidx12, align 16, !dbg !204
  %arraydecay13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !205
  call void @CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink(i8** %arraydecay13), !dbg !206
  ret void, !dbg !207
}

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink(i8**) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_66_good() #0 !dbg !208 {
entry:
  call void @goodG2B(), !dbg !209
  call void @goodB2G(), !dbg !210
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_66a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_112/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_66_bad", scope: !1, file: !1, line: 37, type: !11, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 39, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 39, column: 12, scope: !10)
!17 = !DILocalVariable(name: "dataArray", scope: !10, file: !1, line: 40, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 320, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 5)
!21 = !DILocation(line: 40, column: 12, scope: !10)
!22 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 41, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 41, column: 10, scope: !10)
!27 = !DILocation(line: 42, column: 12, scope: !10)
!28 = !DILocation(line: 42, column: 10, scope: !10)
!29 = !DILocalVariable(name: "dataLen", scope: !30, file: !1, line: 45, type: !31)
!30 = distinct !DILexicalBlock(scope: !10, file: !1, line: 43, column: 5)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 45, column: 16, scope: !30)
!35 = !DILocation(line: 45, column: 33, scope: !30)
!36 = !DILocation(line: 45, column: 26, scope: !30)
!37 = !DILocalVariable(name: "pFile", scope: !30, file: !1, line: 46, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !40, line: 7, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 49, size: 1728, elements: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !59, !61, !62, !63, !67, !69, !71, !75, !78, !80, !83, !86, !87, !88, !89, !90}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !41, file: !42, line: 51, baseType: !5, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !41, file: !42, line: 54, baseType: !14, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !41, file: !42, line: 55, baseType: !14, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !41, file: !42, line: 56, baseType: !14, size: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !41, file: !42, line: 57, baseType: !14, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !41, file: !42, line: 58, baseType: !14, size: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !41, file: !42, line: 59, baseType: !14, size: 64, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !41, file: !42, line: 60, baseType: !14, size: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !41, file: !42, line: 61, baseType: !14, size: 64, offset: 512)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !41, file: !42, line: 64, baseType: !14, size: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !41, file: !42, line: 65, baseType: !14, size: 64, offset: 640)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !41, file: !42, line: 66, baseType: !14, size: 64, offset: 704)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !41, file: !42, line: 68, baseType: !57, size: 64, offset: 768)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !42, line: 36, flags: DIFlagFwdDecl)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !41, file: !42, line: 70, baseType: !60, size: 64, offset: 832)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !41, file: !42, line: 72, baseType: !5, size: 32, offset: 896)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !41, file: !42, line: 73, baseType: !5, size: 32, offset: 928)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !41, file: !42, line: 74, baseType: !64, size: 64, offset: 960)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !65, line: 152, baseType: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!66 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !41, file: !42, line: 77, baseType: !68, size: 16, offset: 1024)
!68 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !41, file: !42, line: 78, baseType: !70, size: 8, offset: 1040)
!70 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !41, file: !42, line: 79, baseType: !72, size: 8, offset: 1048)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 1)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !41, file: !42, line: 81, baseType: !76, size: 64, offset: 1088)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !42, line: 43, baseType: null)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !41, file: !42, line: 89, baseType: !79, size: 64, offset: 1152)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !65, line: 153, baseType: !66)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !41, file: !42, line: 91, baseType: !81, size: 64, offset: 1216)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !42, line: 37, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !41, file: !42, line: 92, baseType: !84, size: 64, offset: 1280)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !42, line: 38, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !41, file: !42, line: 93, baseType: !60, size: 64, offset: 1344)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !41, file: !42, line: 94, baseType: !4, size: 64, offset: 1408)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !41, file: !42, line: 95, baseType: !31, size: 64, offset: 1472)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !41, file: !42, line: 96, baseType: !5, size: 32, offset: 1536)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !41, file: !42, line: 98, baseType: !91, size: 160, offset: 1568)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 20)
!94 = !DILocation(line: 46, column: 16, scope: !30)
!95 = !DILocation(line: 48, column: 17, scope: !96)
!96 = distinct !DILexicalBlock(scope: !30, file: !1, line: 48, column: 13)
!97 = !DILocation(line: 48, column: 16, scope: !96)
!98 = !DILocation(line: 48, column: 25, scope: !96)
!99 = !DILocation(line: 48, column: 13, scope: !30)
!100 = !DILocation(line: 50, column: 21, scope: !101)
!101 = distinct !DILexicalBlock(scope: !96, file: !1, line: 49, column: 9)
!102 = !DILocation(line: 50, column: 19, scope: !101)
!103 = !DILocation(line: 51, column: 17, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !1, line: 51, column: 17)
!105 = !DILocation(line: 51, column: 23, scope: !104)
!106 = !DILocation(line: 51, column: 17, scope: !101)
!107 = !DILocation(line: 54, column: 27, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !1, line: 54, column: 21)
!109 = distinct !DILexicalBlock(scope: !104, file: !1, line: 52, column: 13)
!110 = !DILocation(line: 54, column: 32, scope: !108)
!111 = !DILocation(line: 54, column: 31, scope: !108)
!112 = !DILocation(line: 54, column: 51, scope: !108)
!113 = !DILocation(line: 54, column: 50, scope: !108)
!114 = !DILocation(line: 54, column: 41, scope: !108)
!115 = !DILocation(line: 54, column: 61, scope: !108)
!116 = !DILocation(line: 54, column: 21, scope: !108)
!117 = !DILocation(line: 54, column: 68, scope: !108)
!118 = !DILocation(line: 54, column: 21, scope: !109)
!119 = !DILocation(line: 56, column: 21, scope: !120)
!120 = distinct !DILexicalBlock(scope: !108, file: !1, line: 55, column: 17)
!121 = !DILocation(line: 58, column: 21, scope: !120)
!122 = !DILocation(line: 58, column: 26, scope: !120)
!123 = !DILocation(line: 58, column: 35, scope: !120)
!124 = !DILocation(line: 59, column: 17, scope: !120)
!125 = !DILocation(line: 60, column: 24, scope: !109)
!126 = !DILocation(line: 60, column: 17, scope: !109)
!127 = !DILocation(line: 61, column: 13, scope: !109)
!128 = !DILocation(line: 62, column: 9, scope: !101)
!129 = !DILocation(line: 65, column: 20, scope: !10)
!130 = !DILocation(line: 65, column: 5, scope: !10)
!131 = !DILocation(line: 65, column: 18, scope: !10)
!132 = !DILocation(line: 66, column: 60, scope: !10)
!133 = !DILocation(line: 66, column: 5, scope: !10)
!134 = !DILocation(line: 67, column: 1, scope: !10)
!135 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 75, type: !11, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!136 = !DILocalVariable(name: "data", scope: !135, file: !1, line: 77, type: !14)
!137 = !DILocation(line: 77, column: 12, scope: !135)
!138 = !DILocalVariable(name: "dataArray", scope: !135, file: !1, line: 78, type: !18)
!139 = !DILocation(line: 78, column: 12, scope: !135)
!140 = !DILocalVariable(name: "dataBuffer", scope: !135, file: !1, line: 79, type: !23)
!141 = !DILocation(line: 79, column: 10, scope: !135)
!142 = !DILocation(line: 80, column: 12, scope: !135)
!143 = !DILocation(line: 80, column: 10, scope: !135)
!144 = !DILocation(line: 82, column: 12, scope: !135)
!145 = !DILocation(line: 82, column: 5, scope: !135)
!146 = !DILocation(line: 83, column: 20, scope: !135)
!147 = !DILocation(line: 83, column: 5, scope: !135)
!148 = !DILocation(line: 83, column: 18, scope: !135)
!149 = !DILocation(line: 84, column: 64, scope: !135)
!150 = !DILocation(line: 84, column: 5, scope: !135)
!151 = !DILocation(line: 85, column: 1, scope: !135)
!152 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 89, type: !11, scopeLine: 90, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!153 = !DILocalVariable(name: "data", scope: !152, file: !1, line: 91, type: !14)
!154 = !DILocation(line: 91, column: 12, scope: !152)
!155 = !DILocalVariable(name: "dataArray", scope: !152, file: !1, line: 92, type: !18)
!156 = !DILocation(line: 92, column: 12, scope: !152)
!157 = !DILocalVariable(name: "dataBuffer", scope: !152, file: !1, line: 93, type: !23)
!158 = !DILocation(line: 93, column: 10, scope: !152)
!159 = !DILocation(line: 94, column: 12, scope: !152)
!160 = !DILocation(line: 94, column: 10, scope: !152)
!161 = !DILocalVariable(name: "dataLen", scope: !162, file: !1, line: 97, type: !31)
!162 = distinct !DILexicalBlock(scope: !152, file: !1, line: 95, column: 5)
!163 = !DILocation(line: 97, column: 16, scope: !162)
!164 = !DILocation(line: 97, column: 33, scope: !162)
!165 = !DILocation(line: 97, column: 26, scope: !162)
!166 = !DILocalVariable(name: "pFile", scope: !162, file: !1, line: 98, type: !38)
!167 = !DILocation(line: 98, column: 16, scope: !162)
!168 = !DILocation(line: 100, column: 17, scope: !169)
!169 = distinct !DILexicalBlock(scope: !162, file: !1, line: 100, column: 13)
!170 = !DILocation(line: 100, column: 16, scope: !169)
!171 = !DILocation(line: 100, column: 25, scope: !169)
!172 = !DILocation(line: 100, column: 13, scope: !162)
!173 = !DILocation(line: 102, column: 21, scope: !174)
!174 = distinct !DILexicalBlock(scope: !169, file: !1, line: 101, column: 9)
!175 = !DILocation(line: 102, column: 19, scope: !174)
!176 = !DILocation(line: 103, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !1, line: 103, column: 17)
!178 = !DILocation(line: 103, column: 23, scope: !177)
!179 = !DILocation(line: 103, column: 17, scope: !174)
!180 = !DILocation(line: 106, column: 27, scope: !181)
!181 = distinct !DILexicalBlock(scope: !182, file: !1, line: 106, column: 21)
!182 = distinct !DILexicalBlock(scope: !177, file: !1, line: 104, column: 13)
!183 = !DILocation(line: 106, column: 32, scope: !181)
!184 = !DILocation(line: 106, column: 31, scope: !181)
!185 = !DILocation(line: 106, column: 51, scope: !181)
!186 = !DILocation(line: 106, column: 50, scope: !181)
!187 = !DILocation(line: 106, column: 41, scope: !181)
!188 = !DILocation(line: 106, column: 61, scope: !181)
!189 = !DILocation(line: 106, column: 21, scope: !181)
!190 = !DILocation(line: 106, column: 68, scope: !181)
!191 = !DILocation(line: 106, column: 21, scope: !182)
!192 = !DILocation(line: 108, column: 21, scope: !193)
!193 = distinct !DILexicalBlock(scope: !181, file: !1, line: 107, column: 17)
!194 = !DILocation(line: 110, column: 21, scope: !193)
!195 = !DILocation(line: 110, column: 26, scope: !193)
!196 = !DILocation(line: 110, column: 35, scope: !193)
!197 = !DILocation(line: 111, column: 17, scope: !193)
!198 = !DILocation(line: 112, column: 24, scope: !182)
!199 = !DILocation(line: 112, column: 17, scope: !182)
!200 = !DILocation(line: 113, column: 13, scope: !182)
!201 = !DILocation(line: 114, column: 9, scope: !174)
!202 = !DILocation(line: 116, column: 20, scope: !152)
!203 = !DILocation(line: 116, column: 5, scope: !152)
!204 = !DILocation(line: 116, column: 18, scope: !152)
!205 = !DILocation(line: 117, column: 64, scope: !152)
!206 = !DILocation(line: 117, column: 5, scope: !152)
!207 = !DILocation(line: 118, column: 1, scope: !152)
!208 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_66_good", scope: !1, file: !1, line: 120, type: !11, scopeLine: 121, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!209 = !DILocation(line: 122, column: 5, scope: !208)
!210 = !DILocation(line: 123, column: 5, scope: !208)
!211 = !DILocation(line: 124, column: 1, scope: !208)
