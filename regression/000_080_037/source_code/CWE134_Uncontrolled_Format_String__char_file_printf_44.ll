; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_printf_44.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_printf_44.c"
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
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink(i8* %data) #0 !dbg !10 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !15, metadata !DIExpression()), !dbg !16
  %0 = load i8*, i8** %data.addr, align 8, !dbg !17
  %call = call i32 (i8*, ...) @printf(i8* %0), !dbg !18
  ret void, !dbg !19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_44_bad() #0 !dbg !20 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !25, metadata !DIExpression()), !dbg !27
  store void (i8*)* @badSink, void (i8*)** %funcPtr, align 8, !dbg !27
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !28, metadata !DIExpression()), !dbg !32
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !32
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !32
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !33
  store i8* %arraydecay, i8** %data, align 8, !dbg !34
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !35, metadata !DIExpression()), !dbg !40
  %1 = load i8*, i8** %data, align 8, !dbg !41
  %call = call i64 @strlen(i8* %1) #6, !dbg !42
  store i64 %call, i64* %dataLen, align 8, !dbg !40
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !43, metadata !DIExpression()), !dbg !100
  %2 = load i64, i64* %dataLen, align 8, !dbg !101
  %sub = sub i64 100, %2, !dbg !103
  %cmp = icmp ugt i64 %sub, 1, !dbg !104
  br i1 %cmp, label %if.then, label %if.end11, !dbg !105

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !106
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !108
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !109
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !111
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !112

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !113
  %5 = load i64, i64* %dataLen, align 8, !dbg !116
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !117
  %6 = load i64, i64* %dataLen, align 8, !dbg !118
  %sub4 = sub i64 100, %6, !dbg !119
  %conv = trunc i64 %sub4 to i32, !dbg !120
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !121
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !122
  %cmp6 = icmp eq i8* %call5, null, !dbg !123
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !124

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !125
  %8 = load i8*, i8** %data, align 8, !dbg !127
  %9 = load i64, i64* %dataLen, align 8, !dbg !128
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !127
  store i8 0, i8* %arrayidx, align 1, !dbg !129
  br label %if.end, !dbg !130

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !131
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !132
  br label %if.end10, !dbg !133

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !134

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !135
  %12 = load i8*, i8** %data, align 8, !dbg !136
  call void %11(i8* %12), !dbg !135
  ret void, !dbg !137
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare dso_local void @printLine(i8*) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !138 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !139, metadata !DIExpression()), !dbg !140
  %0 = load i8*, i8** %data.addr, align 8, !dbg !141
  %call = call i32 (i8*, ...) @printf(i8* %0), !dbg !142
  ret void, !dbg !143
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !144 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !147, metadata !DIExpression()), !dbg !148
  store void (i8*)* @goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !148
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !150
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !150
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !151
  store i8* %arraydecay, i8** %data, align 8, !dbg !152
  %1 = load i8*, i8** %data, align 8, !dbg !153
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !154
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !155
  %3 = load i8*, i8** %data, align 8, !dbg !156
  call void %2(i8* %3), !dbg !155
  ret void, !dbg !157
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !158 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !159, metadata !DIExpression()), !dbg !160
  %0 = load i8*, i8** %data.addr, align 8, !dbg !161
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %0), !dbg !162
  ret void, !dbg !163
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !164 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !167, metadata !DIExpression()), !dbg !168
  store void (i8*)* @goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !168
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !169, metadata !DIExpression()), !dbg !170
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !170
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !170
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !171
  store i8* %arraydecay, i8** %data, align 8, !dbg !172
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !173, metadata !DIExpression()), !dbg !175
  %1 = load i8*, i8** %data, align 8, !dbg !176
  %call = call i64 @strlen(i8* %1) #6, !dbg !177
  store i64 %call, i64* %dataLen, align 8, !dbg !175
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !178, metadata !DIExpression()), !dbg !179
  %2 = load i64, i64* %dataLen, align 8, !dbg !180
  %sub = sub i64 100, %2, !dbg !182
  %cmp = icmp ugt i64 %sub, 1, !dbg !183
  br i1 %cmp, label %if.then, label %if.end11, !dbg !184

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !185
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !187
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !188
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !190
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !191

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !192
  %5 = load i64, i64* %dataLen, align 8, !dbg !195
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !196
  %6 = load i64, i64* %dataLen, align 8, !dbg !197
  %sub4 = sub i64 100, %6, !dbg !198
  %conv = trunc i64 %sub4 to i32, !dbg !199
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !200
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !201
  %cmp6 = icmp eq i8* %call5, null, !dbg !202
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !203

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !204
  %8 = load i8*, i8** %data, align 8, !dbg !206
  %9 = load i64, i64* %dataLen, align 8, !dbg !207
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !206
  store i8 0, i8* %arrayidx, align 1, !dbg !208
  br label %if.end, !dbg !209

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !210
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !211
  br label %if.end10, !dbg !212

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !213

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !214
  %12 = load i8*, i8** %data, align 8, !dbg !215
  call void %11(i8* %12), !dbg !214
  ret void, !dbg !216
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_44_good() #0 !dbg !217 {
entry:
  call void @goodG2B(), !dbg !218
  call void @goodB2G(), !dbg !219
  ret void, !dbg !220
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_44.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_037/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "badSink", scope: !1, file: !1, line: 33, type: !11, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "data", arg: 1, scope: !10, file: !1, line: 33, type: !13)
!16 = !DILocation(line: 33, column: 21, scope: !10)
!17 = !DILocation(line: 36, column: 12, scope: !10)
!18 = !DILocation(line: 36, column: 5, scope: !10)
!19 = !DILocation(line: 37, column: 1, scope: !10)
!20 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_44_bad", scope: !1, file: !1, line: 39, type: !21, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!21 = !DISubroutineType(types: !22)
!22 = !{null}
!23 = !DILocalVariable(name: "data", scope: !20, file: !1, line: 41, type: !13)
!24 = !DILocation(line: 41, column: 12, scope: !20)
!25 = !DILocalVariable(name: "funcPtr", scope: !20, file: !1, line: 43, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!27 = !DILocation(line: 43, column: 12, scope: !20)
!28 = !DILocalVariable(name: "dataBuffer", scope: !20, file: !1, line: 44, type: !29)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 100)
!32 = !DILocation(line: 44, column: 10, scope: !20)
!33 = !DILocation(line: 45, column: 12, scope: !20)
!34 = !DILocation(line: 45, column: 10, scope: !20)
!35 = !DILocalVariable(name: "dataLen", scope: !36, file: !1, line: 48, type: !37)
!36 = distinct !DILexicalBlock(scope: !20, file: !1, line: 46, column: 5)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 46, baseType: !39)
!38 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!39 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!40 = !DILocation(line: 48, column: 16, scope: !36)
!41 = !DILocation(line: 48, column: 33, scope: !36)
!42 = !DILocation(line: 48, column: 26, scope: !36)
!43 = !DILocalVariable(name: "pFile", scope: !36, file: !1, line: 49, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !46, line: 7, baseType: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 49, size: 1728, elements: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !65, !67, !68, !69, !73, !75, !77, !81, !84, !86, !89, !92, !93, !94, !95, !96}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !48, line: 51, baseType: !5, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !47, file: !48, line: 54, baseType: !13, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !47, file: !48, line: 55, baseType: !13, size: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !47, file: !48, line: 56, baseType: !13, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !47, file: !48, line: 57, baseType: !13, size: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !47, file: !48, line: 58, baseType: !13, size: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !47, file: !48, line: 59, baseType: !13, size: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !47, file: !48, line: 60, baseType: !13, size: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !47, file: !48, line: 61, baseType: !13, size: 64, offset: 512)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !47, file: !48, line: 64, baseType: !13, size: 64, offset: 576)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !47, file: !48, line: 65, baseType: !13, size: 64, offset: 640)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !47, file: !48, line: 66, baseType: !13, size: 64, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !47, file: !48, line: 68, baseType: !63, size: 64, offset: 768)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !48, line: 36, flags: DIFlagFwdDecl)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !47, file: !48, line: 70, baseType: !66, size: 64, offset: 832)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !47, file: !48, line: 72, baseType: !5, size: 32, offset: 896)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !48, line: 73, baseType: !5, size: 32, offset: 928)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !47, file: !48, line: 74, baseType: !70, size: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !71, line: 152, baseType: !72)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!72 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !47, file: !48, line: 77, baseType: !74, size: 16, offset: 1024)
!74 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !47, file: !48, line: 78, baseType: !76, size: 8, offset: 1040)
!76 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !47, file: !48, line: 79, baseType: !78, size: 8, offset: 1048)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 1)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !48, line: 81, baseType: !82, size: 64, offset: 1088)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !48, line: 43, baseType: null)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !48, line: 89, baseType: !85, size: 64, offset: 1152)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !71, line: 153, baseType: !72)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !47, file: !48, line: 91, baseType: !87, size: 64, offset: 1216)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !48, line: 37, flags: DIFlagFwdDecl)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !47, file: !48, line: 92, baseType: !90, size: 64, offset: 1280)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !48, line: 38, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !47, file: !48, line: 93, baseType: !66, size: 64, offset: 1344)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !47, file: !48, line: 94, baseType: !4, size: 64, offset: 1408)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !47, file: !48, line: 95, baseType: !37, size: 64, offset: 1472)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !47, file: !48, line: 96, baseType: !5, size: 32, offset: 1536)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !47, file: !48, line: 98, baseType: !97, size: 160, offset: 1568)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 20)
!100 = !DILocation(line: 49, column: 16, scope: !36)
!101 = !DILocation(line: 51, column: 17, scope: !102)
!102 = distinct !DILexicalBlock(scope: !36, file: !1, line: 51, column: 13)
!103 = !DILocation(line: 51, column: 16, scope: !102)
!104 = !DILocation(line: 51, column: 25, scope: !102)
!105 = !DILocation(line: 51, column: 13, scope: !36)
!106 = !DILocation(line: 53, column: 21, scope: !107)
!107 = distinct !DILexicalBlock(scope: !102, file: !1, line: 52, column: 9)
!108 = !DILocation(line: 53, column: 19, scope: !107)
!109 = !DILocation(line: 54, column: 17, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !1, line: 54, column: 17)
!111 = !DILocation(line: 54, column: 23, scope: !110)
!112 = !DILocation(line: 54, column: 17, scope: !107)
!113 = !DILocation(line: 57, column: 27, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !1, line: 57, column: 21)
!115 = distinct !DILexicalBlock(scope: !110, file: !1, line: 55, column: 13)
!116 = !DILocation(line: 57, column: 32, scope: !114)
!117 = !DILocation(line: 57, column: 31, scope: !114)
!118 = !DILocation(line: 57, column: 51, scope: !114)
!119 = !DILocation(line: 57, column: 50, scope: !114)
!120 = !DILocation(line: 57, column: 41, scope: !114)
!121 = !DILocation(line: 57, column: 61, scope: !114)
!122 = !DILocation(line: 57, column: 21, scope: !114)
!123 = !DILocation(line: 57, column: 68, scope: !114)
!124 = !DILocation(line: 57, column: 21, scope: !115)
!125 = !DILocation(line: 59, column: 21, scope: !126)
!126 = distinct !DILexicalBlock(scope: !114, file: !1, line: 58, column: 17)
!127 = !DILocation(line: 61, column: 21, scope: !126)
!128 = !DILocation(line: 61, column: 26, scope: !126)
!129 = !DILocation(line: 61, column: 35, scope: !126)
!130 = !DILocation(line: 62, column: 17, scope: !126)
!131 = !DILocation(line: 63, column: 24, scope: !115)
!132 = !DILocation(line: 63, column: 17, scope: !115)
!133 = !DILocation(line: 64, column: 13, scope: !115)
!134 = !DILocation(line: 65, column: 9, scope: !107)
!135 = !DILocation(line: 68, column: 5, scope: !20)
!136 = !DILocation(line: 68, column: 13, scope: !20)
!137 = !DILocation(line: 69, column: 1, scope: !20)
!138 = distinct !DISubprogram(name: "goodG2BSink", scope: !1, file: !1, line: 76, type: !11, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!139 = !DILocalVariable(name: "data", arg: 1, scope: !138, file: !1, line: 76, type: !13)
!140 = !DILocation(line: 76, column: 25, scope: !138)
!141 = !DILocation(line: 79, column: 12, scope: !138)
!142 = !DILocation(line: 79, column: 5, scope: !138)
!143 = !DILocation(line: 80, column: 1, scope: !138)
!144 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 82, type: !21, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!145 = !DILocalVariable(name: "data", scope: !144, file: !1, line: 84, type: !13)
!146 = !DILocation(line: 84, column: 12, scope: !144)
!147 = !DILocalVariable(name: "funcPtr", scope: !144, file: !1, line: 85, type: !26)
!148 = !DILocation(line: 85, column: 12, scope: !144)
!149 = !DILocalVariable(name: "dataBuffer", scope: !144, file: !1, line: 86, type: !29)
!150 = !DILocation(line: 86, column: 10, scope: !144)
!151 = !DILocation(line: 87, column: 12, scope: !144)
!152 = !DILocation(line: 87, column: 10, scope: !144)
!153 = !DILocation(line: 89, column: 12, scope: !144)
!154 = !DILocation(line: 89, column: 5, scope: !144)
!155 = !DILocation(line: 90, column: 5, scope: !144)
!156 = !DILocation(line: 90, column: 13, scope: !144)
!157 = !DILocation(line: 91, column: 1, scope: !144)
!158 = distinct !DISubprogram(name: "goodB2GSink", scope: !1, file: !1, line: 94, type: !11, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!159 = !DILocalVariable(name: "data", arg: 1, scope: !158, file: !1, line: 94, type: !13)
!160 = !DILocation(line: 94, column: 25, scope: !158)
!161 = !DILocation(line: 97, column: 20, scope: !158)
!162 = !DILocation(line: 97, column: 5, scope: !158)
!163 = !DILocation(line: 98, column: 1, scope: !158)
!164 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 100, type: !21, scopeLine: 101, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!165 = !DILocalVariable(name: "data", scope: !164, file: !1, line: 102, type: !13)
!166 = !DILocation(line: 102, column: 12, scope: !164)
!167 = !DILocalVariable(name: "funcPtr", scope: !164, file: !1, line: 103, type: !26)
!168 = !DILocation(line: 103, column: 12, scope: !164)
!169 = !DILocalVariable(name: "dataBuffer", scope: !164, file: !1, line: 104, type: !29)
!170 = !DILocation(line: 104, column: 10, scope: !164)
!171 = !DILocation(line: 105, column: 12, scope: !164)
!172 = !DILocation(line: 105, column: 10, scope: !164)
!173 = !DILocalVariable(name: "dataLen", scope: !174, file: !1, line: 108, type: !37)
!174 = distinct !DILexicalBlock(scope: !164, file: !1, line: 106, column: 5)
!175 = !DILocation(line: 108, column: 16, scope: !174)
!176 = !DILocation(line: 108, column: 33, scope: !174)
!177 = !DILocation(line: 108, column: 26, scope: !174)
!178 = !DILocalVariable(name: "pFile", scope: !174, file: !1, line: 109, type: !44)
!179 = !DILocation(line: 109, column: 16, scope: !174)
!180 = !DILocation(line: 111, column: 17, scope: !181)
!181 = distinct !DILexicalBlock(scope: !174, file: !1, line: 111, column: 13)
!182 = !DILocation(line: 111, column: 16, scope: !181)
!183 = !DILocation(line: 111, column: 25, scope: !181)
!184 = !DILocation(line: 111, column: 13, scope: !174)
!185 = !DILocation(line: 113, column: 21, scope: !186)
!186 = distinct !DILexicalBlock(scope: !181, file: !1, line: 112, column: 9)
!187 = !DILocation(line: 113, column: 19, scope: !186)
!188 = !DILocation(line: 114, column: 17, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !1, line: 114, column: 17)
!190 = !DILocation(line: 114, column: 23, scope: !189)
!191 = !DILocation(line: 114, column: 17, scope: !186)
!192 = !DILocation(line: 117, column: 27, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !1, line: 117, column: 21)
!194 = distinct !DILexicalBlock(scope: !189, file: !1, line: 115, column: 13)
!195 = !DILocation(line: 117, column: 32, scope: !193)
!196 = !DILocation(line: 117, column: 31, scope: !193)
!197 = !DILocation(line: 117, column: 51, scope: !193)
!198 = !DILocation(line: 117, column: 50, scope: !193)
!199 = !DILocation(line: 117, column: 41, scope: !193)
!200 = !DILocation(line: 117, column: 61, scope: !193)
!201 = !DILocation(line: 117, column: 21, scope: !193)
!202 = !DILocation(line: 117, column: 68, scope: !193)
!203 = !DILocation(line: 117, column: 21, scope: !194)
!204 = !DILocation(line: 119, column: 21, scope: !205)
!205 = distinct !DILexicalBlock(scope: !193, file: !1, line: 118, column: 17)
!206 = !DILocation(line: 121, column: 21, scope: !205)
!207 = !DILocation(line: 121, column: 26, scope: !205)
!208 = !DILocation(line: 121, column: 35, scope: !205)
!209 = !DILocation(line: 122, column: 17, scope: !205)
!210 = !DILocation(line: 123, column: 24, scope: !194)
!211 = !DILocation(line: 123, column: 17, scope: !194)
!212 = !DILocation(line: 124, column: 13, scope: !194)
!213 = !DILocation(line: 125, column: 9, scope: !186)
!214 = !DILocation(line: 127, column: 5, scope: !164)
!215 = !DILocation(line: 127, column: 13, scope: !164)
!216 = !DILocation(line: 128, column: 1, scope: !164)
!217 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_44_good", scope: !1, file: !1, line: 130, type: !21, scopeLine: 131, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!218 = !DILocation(line: 132, column: 5, scope: !217)
!219 = !DILocation(line: 133, column: 5, scope: !217)
!220 = !DILocation(line: 134, column: 1, scope: !217)
