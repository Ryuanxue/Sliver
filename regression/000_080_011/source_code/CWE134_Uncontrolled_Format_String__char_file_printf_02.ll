; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_printf_02.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_printf_02.c"
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_02_bad() #0 !dbg !10 {
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
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !24, metadata !DIExpression()), !dbg !31
  %1 = load i8*, i8** %data, align 8, !dbg !32
  %call = call i64 @strlen(i8* %1) #6, !dbg !33
  store i64 %call, i64* %dataLen, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !34, metadata !DIExpression()), !dbg !91
  %2 = load i64, i64* %dataLen, align 8, !dbg !92
  %sub = sub i64 100, %2, !dbg !94
  %cmp = icmp ugt i64 %sub, 1, !dbg !95
  br i1 %cmp, label %if.then, label %if.end11, !dbg !96

if.then:                                          ; preds = %entry
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

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !126
  %call12 = call i32 (i8*, ...) @printf(i8* %11), !dbg !129
  ret void, !dbg !130
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
define dso_local void @goodB2G1() #0 !dbg !131 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !134, metadata !DIExpression()), !dbg !135
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !135
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !135
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !136
  store i8* %arraydecay, i8** %data, align 8, !dbg !137
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !138, metadata !DIExpression()), !dbg !142
  %1 = load i8*, i8** %data, align 8, !dbg !143
  %call = call i64 @strlen(i8* %1) #6, !dbg !144
  store i64 %call, i64* %dataLen, align 8, !dbg !142
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !145, metadata !DIExpression()), !dbg !146
  %2 = load i64, i64* %dataLen, align 8, !dbg !147
  %sub = sub i64 100, %2, !dbg !149
  %cmp = icmp ugt i64 %sub, 1, !dbg !150
  br i1 %cmp, label %if.then, label %if.end11, !dbg !151

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !152
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !154
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !155
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !157
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !158

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !159
  %5 = load i64, i64* %dataLen, align 8, !dbg !162
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !163
  %6 = load i64, i64* %dataLen, align 8, !dbg !164
  %sub4 = sub i64 100, %6, !dbg !165
  %conv = trunc i64 %sub4 to i32, !dbg !166
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !167
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !168
  %cmp6 = icmp eq i8* %call5, null, !dbg !169
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !170

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !171
  %8 = load i8*, i8** %data, align 8, !dbg !173
  %9 = load i64, i64* %dataLen, align 8, !dbg !174
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !173
  store i8 0, i8* %arrayidx, align 1, !dbg !175
  br label %if.end, !dbg !176

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !177
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !178
  br label %if.end10, !dbg !179

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !180

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !181
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %11), !dbg !184
  ret void, !dbg !185
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !186 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !189, metadata !DIExpression()), !dbg !190
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !190
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !190
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !191
  store i8* %arraydecay, i8** %data, align 8, !dbg !192
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !193, metadata !DIExpression()), !dbg !197
  %1 = load i8*, i8** %data, align 8, !dbg !198
  %call = call i64 @strlen(i8* %1) #6, !dbg !199
  store i64 %call, i64* %dataLen, align 8, !dbg !197
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !200, metadata !DIExpression()), !dbg !201
  %2 = load i64, i64* %dataLen, align 8, !dbg !202
  %sub = sub i64 100, %2, !dbg !204
  %cmp = icmp ugt i64 %sub, 1, !dbg !205
  br i1 %cmp, label %if.then, label %if.end11, !dbg !206

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !207
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !209
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !210
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !212
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !213

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !214
  %5 = load i64, i64* %dataLen, align 8, !dbg !217
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !218
  %6 = load i64, i64* %dataLen, align 8, !dbg !219
  %sub4 = sub i64 100, %6, !dbg !220
  %conv = trunc i64 %sub4 to i32, !dbg !221
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !222
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !223
  %cmp6 = icmp eq i8* %call5, null, !dbg !224
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !225

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !226
  %8 = load i8*, i8** %data, align 8, !dbg !228
  %9 = load i64, i64* %dataLen, align 8, !dbg !229
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !228
  store i8 0, i8* %arrayidx, align 1, !dbg !230
  br label %if.end, !dbg !231

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !232
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !233
  br label %if.end10, !dbg !234

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !235

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !236
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %11), !dbg !239
  ret void, !dbg !240
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !241 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !244, metadata !DIExpression()), !dbg !245
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !245
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !245
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !246
  store i8* %arraydecay, i8** %data, align 8, !dbg !247
  %1 = load i8*, i8** %data, align 8, !dbg !248
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !251
  %2 = load i8*, i8** %data, align 8, !dbg !252
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !255
  ret void, !dbg !256
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !257 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !260, metadata !DIExpression()), !dbg !261
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !261
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !261
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !262
  store i8* %arraydecay, i8** %data, align 8, !dbg !263
  %1 = load i8*, i8** %data, align 8, !dbg !264
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !267
  %2 = load i8*, i8** %data, align 8, !dbg !268
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !271
  ret void, !dbg !272
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_02_good() #0 !dbg !273 {
entry:
  call void @goodB2G1(), !dbg !274
  call void @goodB2G2(), !dbg !275
  call void @goodG2B1(), !dbg !276
  call void @goodG2B2(), !dbg !277
  ret void, !dbg !278
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_02.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_011/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_02_bad", scope: !1, file: !1, line: 33, type: !11, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!24 = !DILocalVariable(name: "dataLen", scope: !25, file: !1, line: 42, type: !28)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 40, column: 9)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 39, column: 5)
!27 = distinct !DILexicalBlock(scope: !10, file: !1, line: 38, column: 8)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DILocation(line: 42, column: 20, scope: !25)
!32 = !DILocation(line: 42, column: 37, scope: !25)
!33 = !DILocation(line: 42, column: 30, scope: !25)
!34 = !DILocalVariable(name: "pFile", scope: !25, file: !1, line: 43, type: !35)
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
!91 = !DILocation(line: 43, column: 20, scope: !25)
!92 = !DILocation(line: 45, column: 21, scope: !93)
!93 = distinct !DILexicalBlock(scope: !25, file: !1, line: 45, column: 17)
!94 = !DILocation(line: 45, column: 20, scope: !93)
!95 = !DILocation(line: 45, column: 29, scope: !93)
!96 = !DILocation(line: 45, column: 17, scope: !25)
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
!126 = !DILocation(line: 65, column: 16, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !1, line: 63, column: 5)
!128 = distinct !DILexicalBlock(scope: !10, file: !1, line: 62, column: 8)
!129 = !DILocation(line: 65, column: 9, scope: !127)
!130 = !DILocation(line: 67, column: 1, scope: !10)
!131 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 74, type: !11, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!132 = !DILocalVariable(name: "data", scope: !131, file: !1, line: 76, type: !14)
!133 = !DILocation(line: 76, column: 12, scope: !131)
!134 = !DILocalVariable(name: "dataBuffer", scope: !131, file: !1, line: 77, type: !18)
!135 = !DILocation(line: 77, column: 10, scope: !131)
!136 = !DILocation(line: 78, column: 12, scope: !131)
!137 = !DILocation(line: 78, column: 10, scope: !131)
!138 = !DILocalVariable(name: "dataLen", scope: !139, file: !1, line: 83, type: !28)
!139 = distinct !DILexicalBlock(scope: !140, file: !1, line: 81, column: 9)
!140 = distinct !DILexicalBlock(scope: !141, file: !1, line: 80, column: 5)
!141 = distinct !DILexicalBlock(scope: !131, file: !1, line: 79, column: 8)
!142 = !DILocation(line: 83, column: 20, scope: !139)
!143 = !DILocation(line: 83, column: 37, scope: !139)
!144 = !DILocation(line: 83, column: 30, scope: !139)
!145 = !DILocalVariable(name: "pFile", scope: !139, file: !1, line: 84, type: !35)
!146 = !DILocation(line: 84, column: 20, scope: !139)
!147 = !DILocation(line: 86, column: 21, scope: !148)
!148 = distinct !DILexicalBlock(scope: !139, file: !1, line: 86, column: 17)
!149 = !DILocation(line: 86, column: 20, scope: !148)
!150 = !DILocation(line: 86, column: 29, scope: !148)
!151 = !DILocation(line: 86, column: 17, scope: !139)
!152 = !DILocation(line: 88, column: 25, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !1, line: 87, column: 13)
!154 = !DILocation(line: 88, column: 23, scope: !153)
!155 = !DILocation(line: 89, column: 21, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !1, line: 89, column: 21)
!157 = !DILocation(line: 89, column: 27, scope: !156)
!158 = !DILocation(line: 89, column: 21, scope: !153)
!159 = !DILocation(line: 92, column: 31, scope: !160)
!160 = distinct !DILexicalBlock(scope: !161, file: !1, line: 92, column: 25)
!161 = distinct !DILexicalBlock(scope: !156, file: !1, line: 90, column: 17)
!162 = !DILocation(line: 92, column: 36, scope: !160)
!163 = !DILocation(line: 92, column: 35, scope: !160)
!164 = !DILocation(line: 92, column: 55, scope: !160)
!165 = !DILocation(line: 92, column: 54, scope: !160)
!166 = !DILocation(line: 92, column: 45, scope: !160)
!167 = !DILocation(line: 92, column: 65, scope: !160)
!168 = !DILocation(line: 92, column: 25, scope: !160)
!169 = !DILocation(line: 92, column: 72, scope: !160)
!170 = !DILocation(line: 92, column: 25, scope: !161)
!171 = !DILocation(line: 94, column: 25, scope: !172)
!172 = distinct !DILexicalBlock(scope: !160, file: !1, line: 93, column: 21)
!173 = !DILocation(line: 96, column: 25, scope: !172)
!174 = !DILocation(line: 96, column: 30, scope: !172)
!175 = !DILocation(line: 96, column: 39, scope: !172)
!176 = !DILocation(line: 97, column: 21, scope: !172)
!177 = !DILocation(line: 98, column: 28, scope: !161)
!178 = !DILocation(line: 98, column: 21, scope: !161)
!179 = !DILocation(line: 99, column: 17, scope: !161)
!180 = !DILocation(line: 100, column: 13, scope: !153)
!181 = !DILocation(line: 111, column: 24, scope: !182)
!182 = distinct !DILexicalBlock(scope: !183, file: !1, line: 109, column: 5)
!183 = distinct !DILexicalBlock(scope: !131, file: !1, line: 103, column: 8)
!184 = !DILocation(line: 111, column: 9, scope: !182)
!185 = !DILocation(line: 113, column: 1, scope: !131)
!186 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 116, type: !11, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!187 = !DILocalVariable(name: "data", scope: !186, file: !1, line: 118, type: !14)
!188 = !DILocation(line: 118, column: 12, scope: !186)
!189 = !DILocalVariable(name: "dataBuffer", scope: !186, file: !1, line: 119, type: !18)
!190 = !DILocation(line: 119, column: 10, scope: !186)
!191 = !DILocation(line: 120, column: 12, scope: !186)
!192 = !DILocation(line: 120, column: 10, scope: !186)
!193 = !DILocalVariable(name: "dataLen", scope: !194, file: !1, line: 125, type: !28)
!194 = distinct !DILexicalBlock(scope: !195, file: !1, line: 123, column: 9)
!195 = distinct !DILexicalBlock(scope: !196, file: !1, line: 122, column: 5)
!196 = distinct !DILexicalBlock(scope: !186, file: !1, line: 121, column: 8)
!197 = !DILocation(line: 125, column: 20, scope: !194)
!198 = !DILocation(line: 125, column: 37, scope: !194)
!199 = !DILocation(line: 125, column: 30, scope: !194)
!200 = !DILocalVariable(name: "pFile", scope: !194, file: !1, line: 126, type: !35)
!201 = !DILocation(line: 126, column: 20, scope: !194)
!202 = !DILocation(line: 128, column: 21, scope: !203)
!203 = distinct !DILexicalBlock(scope: !194, file: !1, line: 128, column: 17)
!204 = !DILocation(line: 128, column: 20, scope: !203)
!205 = !DILocation(line: 128, column: 29, scope: !203)
!206 = !DILocation(line: 128, column: 17, scope: !194)
!207 = !DILocation(line: 130, column: 25, scope: !208)
!208 = distinct !DILexicalBlock(scope: !203, file: !1, line: 129, column: 13)
!209 = !DILocation(line: 130, column: 23, scope: !208)
!210 = !DILocation(line: 131, column: 21, scope: !211)
!211 = distinct !DILexicalBlock(scope: !208, file: !1, line: 131, column: 21)
!212 = !DILocation(line: 131, column: 27, scope: !211)
!213 = !DILocation(line: 131, column: 21, scope: !208)
!214 = !DILocation(line: 134, column: 31, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !1, line: 134, column: 25)
!216 = distinct !DILexicalBlock(scope: !211, file: !1, line: 132, column: 17)
!217 = !DILocation(line: 134, column: 36, scope: !215)
!218 = !DILocation(line: 134, column: 35, scope: !215)
!219 = !DILocation(line: 134, column: 55, scope: !215)
!220 = !DILocation(line: 134, column: 54, scope: !215)
!221 = !DILocation(line: 134, column: 45, scope: !215)
!222 = !DILocation(line: 134, column: 65, scope: !215)
!223 = !DILocation(line: 134, column: 25, scope: !215)
!224 = !DILocation(line: 134, column: 72, scope: !215)
!225 = !DILocation(line: 134, column: 25, scope: !216)
!226 = !DILocation(line: 136, column: 25, scope: !227)
!227 = distinct !DILexicalBlock(scope: !215, file: !1, line: 135, column: 21)
!228 = !DILocation(line: 138, column: 25, scope: !227)
!229 = !DILocation(line: 138, column: 30, scope: !227)
!230 = !DILocation(line: 138, column: 39, scope: !227)
!231 = !DILocation(line: 139, column: 21, scope: !227)
!232 = !DILocation(line: 140, column: 28, scope: !216)
!233 = !DILocation(line: 140, column: 21, scope: !216)
!234 = !DILocation(line: 141, column: 17, scope: !216)
!235 = !DILocation(line: 142, column: 13, scope: !208)
!236 = !DILocation(line: 148, column: 24, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !1, line: 146, column: 5)
!238 = distinct !DILexicalBlock(scope: !186, file: !1, line: 145, column: 8)
!239 = !DILocation(line: 148, column: 9, scope: !237)
!240 = !DILocation(line: 150, column: 1, scope: !186)
!241 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 153, type: !11, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!242 = !DILocalVariable(name: "data", scope: !241, file: !1, line: 155, type: !14)
!243 = !DILocation(line: 155, column: 12, scope: !241)
!244 = !DILocalVariable(name: "dataBuffer", scope: !241, file: !1, line: 156, type: !18)
!245 = !DILocation(line: 156, column: 10, scope: !241)
!246 = !DILocation(line: 157, column: 12, scope: !241)
!247 = !DILocation(line: 157, column: 10, scope: !241)
!248 = !DILocation(line: 166, column: 16, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !1, line: 164, column: 5)
!250 = distinct !DILexicalBlock(scope: !241, file: !1, line: 158, column: 8)
!251 = !DILocation(line: 166, column: 9, scope: !249)
!252 = !DILocation(line: 171, column: 16, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !1, line: 169, column: 5)
!254 = distinct !DILexicalBlock(scope: !241, file: !1, line: 168, column: 8)
!255 = !DILocation(line: 171, column: 9, scope: !253)
!256 = !DILocation(line: 173, column: 1, scope: !241)
!257 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 176, type: !11, scopeLine: 177, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!258 = !DILocalVariable(name: "data", scope: !257, file: !1, line: 178, type: !14)
!259 = !DILocation(line: 178, column: 12, scope: !257)
!260 = !DILocalVariable(name: "dataBuffer", scope: !257, file: !1, line: 179, type: !18)
!261 = !DILocation(line: 179, column: 10, scope: !257)
!262 = !DILocation(line: 180, column: 12, scope: !257)
!263 = !DILocation(line: 180, column: 10, scope: !257)
!264 = !DILocation(line: 184, column: 16, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !1, line: 182, column: 5)
!266 = distinct !DILexicalBlock(scope: !257, file: !1, line: 181, column: 8)
!267 = !DILocation(line: 184, column: 9, scope: !265)
!268 = !DILocation(line: 189, column: 16, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !1, line: 187, column: 5)
!270 = distinct !DILexicalBlock(scope: !257, file: !1, line: 186, column: 8)
!271 = !DILocation(line: 189, column: 9, scope: !269)
!272 = !DILocation(line: 191, column: 1, scope: !257)
!273 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_02_good", scope: !1, file: !1, line: 193, type: !11, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!274 = !DILocation(line: 195, column: 5, scope: !273)
!275 = !DILocation(line: 196, column: 5, scope: !273)
!276 = !DILocation(line: 197, column: 5, scope: !273)
!277 = !DILocation(line: 198, column: 5, scope: !273)
!278 = !DILocation(line: 199, column: 1, scope: !273)
