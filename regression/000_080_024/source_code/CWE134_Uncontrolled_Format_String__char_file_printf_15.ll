; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_printf_15.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_printf_15.c"
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_15_bad() #0 !dbg !10 {
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
  %call12 = call i32 (i8*, ...) @printf(i8* %11), !dbg !125
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

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !127 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !130, metadata !DIExpression()), !dbg !131
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !131
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !131
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !132
  store i8* %arraydecay, i8** %data, align 8, !dbg !133
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !134, metadata !DIExpression()), !dbg !136
  %1 = load i8*, i8** %data, align 8, !dbg !137
  %call = call i64 @strlen(i8* %1) #6, !dbg !138
  store i64 %call, i64* %dataLen, align 8, !dbg !136
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !139, metadata !DIExpression()), !dbg !140
  %2 = load i64, i64* %dataLen, align 8, !dbg !141
  %sub = sub i64 100, %2, !dbg !143
  %cmp = icmp ugt i64 %sub, 1, !dbg !144
  br i1 %cmp, label %if.then, label %if.end11, !dbg !145

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !146
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !148
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !149
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !151
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !152

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !153
  %5 = load i64, i64* %dataLen, align 8, !dbg !156
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !157
  %6 = load i64, i64* %dataLen, align 8, !dbg !158
  %sub4 = sub i64 100, %6, !dbg !159
  %conv = trunc i64 %sub4 to i32, !dbg !160
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !161
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !162
  %cmp6 = icmp eq i8* %call5, null, !dbg !163
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !164

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !165
  %8 = load i8*, i8** %data, align 8, !dbg !167
  %9 = load i64, i64* %dataLen, align 8, !dbg !168
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !167
  store i8 0, i8* %arrayidx, align 1, !dbg !169
  br label %if.end, !dbg !170

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !171
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !172
  br label %if.end10, !dbg !173

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !174

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !175
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %11), !dbg !176
  ret void, !dbg !177
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !178 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !181, metadata !DIExpression()), !dbg !182
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !182
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !182
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !183
  store i8* %arraydecay, i8** %data, align 8, !dbg !184
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !185, metadata !DIExpression()), !dbg !187
  %1 = load i8*, i8** %data, align 8, !dbg !188
  %call = call i64 @strlen(i8* %1) #6, !dbg !189
  store i64 %call, i64* %dataLen, align 8, !dbg !187
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !190, metadata !DIExpression()), !dbg !191
  %2 = load i64, i64* %dataLen, align 8, !dbg !192
  %sub = sub i64 100, %2, !dbg !194
  %cmp = icmp ugt i64 %sub, 1, !dbg !195
  br i1 %cmp, label %if.then, label %if.end11, !dbg !196

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !197
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !199
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !200
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !202
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !203

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !204
  %5 = load i64, i64* %dataLen, align 8, !dbg !207
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !208
  %6 = load i64, i64* %dataLen, align 8, !dbg !209
  %sub4 = sub i64 100, %6, !dbg !210
  %conv = trunc i64 %sub4 to i32, !dbg !211
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !212
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !213
  %cmp6 = icmp eq i8* %call5, null, !dbg !214
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !215

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !216
  %8 = load i8*, i8** %data, align 8, !dbg !218
  %9 = load i64, i64* %dataLen, align 8, !dbg !219
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !218
  store i8 0, i8* %arrayidx, align 1, !dbg !220
  br label %if.end, !dbg !221

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !222
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !223
  br label %if.end10, !dbg !224

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !225

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !226
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %11), !dbg !227
  ret void, !dbg !228
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !229 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !232, metadata !DIExpression()), !dbg !233
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !233
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !233
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !234
  store i8* %arraydecay, i8** %data, align 8, !dbg !235
  %1 = load i8*, i8** %data, align 8, !dbg !236
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !237
  %2 = load i8*, i8** %data, align 8, !dbg !238
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !239
  ret void, !dbg !240
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !241 {
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
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !249
  %2 = load i8*, i8** %data, align 8, !dbg !250
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !251
  ret void, !dbg !252
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_15_good() #0 !dbg !253 {
entry:
  call void @goodB2G1(), !dbg !254
  call void @goodB2G2(), !dbg !255
  call void @goodG2B1(), !dbg !256
  call void @goodG2B2(), !dbg !257
  ret void, !dbg !258
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_15.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_024/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_15_bad", scope: !1, file: !1, line: 33, type: !11, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!24 = !DILocalVariable(name: "dataLen", scope: !25, file: !1, line: 43, type: !26)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 41, column: 5)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DILocation(line: 43, column: 16, scope: !25)
!30 = !DILocation(line: 43, column: 33, scope: !25)
!31 = !DILocation(line: 43, column: 26, scope: !25)
!32 = !DILocalVariable(name: "pFile", scope: !25, file: !1, line: 44, type: !33)
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
!89 = !DILocation(line: 44, column: 16, scope: !25)
!90 = !DILocation(line: 46, column: 17, scope: !91)
!91 = distinct !DILexicalBlock(scope: !25, file: !1, line: 46, column: 13)
!92 = !DILocation(line: 46, column: 16, scope: !91)
!93 = !DILocation(line: 46, column: 25, scope: !91)
!94 = !DILocation(line: 46, column: 13, scope: !25)
!95 = !DILocation(line: 48, column: 21, scope: !96)
!96 = distinct !DILexicalBlock(scope: !91, file: !1, line: 47, column: 9)
!97 = !DILocation(line: 48, column: 19, scope: !96)
!98 = !DILocation(line: 49, column: 17, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !1, line: 49, column: 17)
!100 = !DILocation(line: 49, column: 23, scope: !99)
!101 = !DILocation(line: 49, column: 17, scope: !96)
!102 = !DILocation(line: 52, column: 27, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !1, line: 52, column: 21)
!104 = distinct !DILexicalBlock(scope: !99, file: !1, line: 50, column: 13)
!105 = !DILocation(line: 52, column: 32, scope: !103)
!106 = !DILocation(line: 52, column: 31, scope: !103)
!107 = !DILocation(line: 52, column: 51, scope: !103)
!108 = !DILocation(line: 52, column: 50, scope: !103)
!109 = !DILocation(line: 52, column: 41, scope: !103)
!110 = !DILocation(line: 52, column: 61, scope: !103)
!111 = !DILocation(line: 52, column: 21, scope: !103)
!112 = !DILocation(line: 52, column: 68, scope: !103)
!113 = !DILocation(line: 52, column: 21, scope: !104)
!114 = !DILocation(line: 54, column: 21, scope: !115)
!115 = distinct !DILexicalBlock(scope: !103, file: !1, line: 53, column: 17)
!116 = !DILocation(line: 56, column: 21, scope: !115)
!117 = !DILocation(line: 56, column: 26, scope: !115)
!118 = !DILocation(line: 56, column: 35, scope: !115)
!119 = !DILocation(line: 57, column: 17, scope: !115)
!120 = !DILocation(line: 58, column: 24, scope: !104)
!121 = !DILocation(line: 58, column: 17, scope: !104)
!122 = !DILocation(line: 59, column: 13, scope: !104)
!123 = !DILocation(line: 60, column: 9, scope: !96)
!124 = !DILocation(line: 72, column: 16, scope: !10)
!125 = !DILocation(line: 72, column: 9, scope: !10)
!126 = !DILocation(line: 79, column: 1, scope: !10)
!127 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 86, type: !11, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!128 = !DILocalVariable(name: "data", scope: !127, file: !1, line: 88, type: !14)
!129 = !DILocation(line: 88, column: 12, scope: !127)
!130 = !DILocalVariable(name: "dataBuffer", scope: !127, file: !1, line: 89, type: !18)
!131 = !DILocation(line: 89, column: 10, scope: !127)
!132 = !DILocation(line: 90, column: 12, scope: !127)
!133 = !DILocation(line: 90, column: 10, scope: !127)
!134 = !DILocalVariable(name: "dataLen", scope: !135, file: !1, line: 96, type: !26)
!135 = distinct !DILexicalBlock(scope: !127, file: !1, line: 94, column: 5)
!136 = !DILocation(line: 96, column: 16, scope: !135)
!137 = !DILocation(line: 96, column: 33, scope: !135)
!138 = !DILocation(line: 96, column: 26, scope: !135)
!139 = !DILocalVariable(name: "pFile", scope: !135, file: !1, line: 97, type: !33)
!140 = !DILocation(line: 97, column: 16, scope: !135)
!141 = !DILocation(line: 99, column: 17, scope: !142)
!142 = distinct !DILexicalBlock(scope: !135, file: !1, line: 99, column: 13)
!143 = !DILocation(line: 99, column: 16, scope: !142)
!144 = !DILocation(line: 99, column: 25, scope: !142)
!145 = !DILocation(line: 99, column: 13, scope: !135)
!146 = !DILocation(line: 101, column: 21, scope: !147)
!147 = distinct !DILexicalBlock(scope: !142, file: !1, line: 100, column: 9)
!148 = !DILocation(line: 101, column: 19, scope: !147)
!149 = !DILocation(line: 102, column: 17, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !1, line: 102, column: 17)
!151 = !DILocation(line: 102, column: 23, scope: !150)
!152 = !DILocation(line: 102, column: 17, scope: !147)
!153 = !DILocation(line: 105, column: 27, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !1, line: 105, column: 21)
!155 = distinct !DILexicalBlock(scope: !150, file: !1, line: 103, column: 13)
!156 = !DILocation(line: 105, column: 32, scope: !154)
!157 = !DILocation(line: 105, column: 31, scope: !154)
!158 = !DILocation(line: 105, column: 51, scope: !154)
!159 = !DILocation(line: 105, column: 50, scope: !154)
!160 = !DILocation(line: 105, column: 41, scope: !154)
!161 = !DILocation(line: 105, column: 61, scope: !154)
!162 = !DILocation(line: 105, column: 21, scope: !154)
!163 = !DILocation(line: 105, column: 68, scope: !154)
!164 = !DILocation(line: 105, column: 21, scope: !155)
!165 = !DILocation(line: 107, column: 21, scope: !166)
!166 = distinct !DILexicalBlock(scope: !154, file: !1, line: 106, column: 17)
!167 = !DILocation(line: 109, column: 21, scope: !166)
!168 = !DILocation(line: 109, column: 26, scope: !166)
!169 = !DILocation(line: 109, column: 35, scope: !166)
!170 = !DILocation(line: 110, column: 17, scope: !166)
!171 = !DILocation(line: 111, column: 24, scope: !155)
!172 = !DILocation(line: 111, column: 17, scope: !155)
!173 = !DILocation(line: 112, column: 13, scope: !155)
!174 = !DILocation(line: 113, column: 9, scope: !147)
!175 = !DILocation(line: 129, column: 24, scope: !127)
!176 = !DILocation(line: 129, column: 9, scope: !127)
!177 = !DILocation(line: 132, column: 1, scope: !127)
!178 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 135, type: !11, scopeLine: 136, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!179 = !DILocalVariable(name: "data", scope: !178, file: !1, line: 137, type: !14)
!180 = !DILocation(line: 137, column: 12, scope: !178)
!181 = !DILocalVariable(name: "dataBuffer", scope: !178, file: !1, line: 138, type: !18)
!182 = !DILocation(line: 138, column: 10, scope: !178)
!183 = !DILocation(line: 139, column: 12, scope: !178)
!184 = !DILocation(line: 139, column: 10, scope: !178)
!185 = !DILocalVariable(name: "dataLen", scope: !186, file: !1, line: 145, type: !26)
!186 = distinct !DILexicalBlock(scope: !178, file: !1, line: 143, column: 5)
!187 = !DILocation(line: 145, column: 16, scope: !186)
!188 = !DILocation(line: 145, column: 33, scope: !186)
!189 = !DILocation(line: 145, column: 26, scope: !186)
!190 = !DILocalVariable(name: "pFile", scope: !186, file: !1, line: 146, type: !33)
!191 = !DILocation(line: 146, column: 16, scope: !186)
!192 = !DILocation(line: 148, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !186, file: !1, line: 148, column: 13)
!194 = !DILocation(line: 148, column: 16, scope: !193)
!195 = !DILocation(line: 148, column: 25, scope: !193)
!196 = !DILocation(line: 148, column: 13, scope: !186)
!197 = !DILocation(line: 150, column: 21, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !1, line: 149, column: 9)
!199 = !DILocation(line: 150, column: 19, scope: !198)
!200 = !DILocation(line: 151, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !1, line: 151, column: 17)
!202 = !DILocation(line: 151, column: 23, scope: !201)
!203 = !DILocation(line: 151, column: 17, scope: !198)
!204 = !DILocation(line: 154, column: 27, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 154, column: 21)
!206 = distinct !DILexicalBlock(scope: !201, file: !1, line: 152, column: 13)
!207 = !DILocation(line: 154, column: 32, scope: !205)
!208 = !DILocation(line: 154, column: 31, scope: !205)
!209 = !DILocation(line: 154, column: 51, scope: !205)
!210 = !DILocation(line: 154, column: 50, scope: !205)
!211 = !DILocation(line: 154, column: 41, scope: !205)
!212 = !DILocation(line: 154, column: 61, scope: !205)
!213 = !DILocation(line: 154, column: 21, scope: !205)
!214 = !DILocation(line: 154, column: 68, scope: !205)
!215 = !DILocation(line: 154, column: 21, scope: !206)
!216 = !DILocation(line: 156, column: 21, scope: !217)
!217 = distinct !DILexicalBlock(scope: !205, file: !1, line: 155, column: 17)
!218 = !DILocation(line: 158, column: 21, scope: !217)
!219 = !DILocation(line: 158, column: 26, scope: !217)
!220 = !DILocation(line: 158, column: 35, scope: !217)
!221 = !DILocation(line: 159, column: 17, scope: !217)
!222 = !DILocation(line: 160, column: 24, scope: !206)
!223 = !DILocation(line: 160, column: 17, scope: !206)
!224 = !DILocation(line: 161, column: 13, scope: !206)
!225 = !DILocation(line: 162, column: 9, scope: !198)
!226 = !DILocation(line: 174, column: 24, scope: !178)
!227 = !DILocation(line: 174, column: 9, scope: !178)
!228 = !DILocation(line: 181, column: 1, scope: !178)
!229 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 184, type: !11, scopeLine: 185, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!230 = !DILocalVariable(name: "data", scope: !229, file: !1, line: 186, type: !14)
!231 = !DILocation(line: 186, column: 12, scope: !229)
!232 = !DILocalVariable(name: "dataBuffer", scope: !229, file: !1, line: 187, type: !18)
!233 = !DILocation(line: 187, column: 10, scope: !229)
!234 = !DILocation(line: 188, column: 12, scope: !229)
!235 = !DILocation(line: 188, column: 10, scope: !229)
!236 = !DILocation(line: 197, column: 16, scope: !229)
!237 = !DILocation(line: 197, column: 9, scope: !229)
!238 = !DILocation(line: 204, column: 16, scope: !229)
!239 = !DILocation(line: 204, column: 9, scope: !229)
!240 = !DILocation(line: 211, column: 1, scope: !229)
!241 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 214, type: !11, scopeLine: 215, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!242 = !DILocalVariable(name: "data", scope: !241, file: !1, line: 216, type: !14)
!243 = !DILocation(line: 216, column: 12, scope: !241)
!244 = !DILocalVariable(name: "dataBuffer", scope: !241, file: !1, line: 217, type: !18)
!245 = !DILocation(line: 217, column: 10, scope: !241)
!246 = !DILocation(line: 218, column: 12, scope: !241)
!247 = !DILocation(line: 218, column: 10, scope: !241)
!248 = !DILocation(line: 223, column: 16, scope: !241)
!249 = !DILocation(line: 223, column: 9, scope: !241)
!250 = !DILocation(line: 234, column: 16, scope: !241)
!251 = !DILocation(line: 234, column: 9, scope: !241)
!252 = !DILocation(line: 241, column: 1, scope: !241)
!253 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_15_good", scope: !1, file: !1, line: 243, type: !11, scopeLine: 244, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!254 = !DILocation(line: 245, column: 5, scope: !253)
!255 = !DILocation(line: 246, column: 5, scope: !253)
!256 = !DILocation(line: 247, column: 5, scope: !253)
!257 = !DILocation(line: 248, column: 5, scope: !253)
!258 = !DILocation(line: 249, column: 1, scope: !253)
