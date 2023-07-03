; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_fprintf_22a.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_fprintf_22a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@CWE134_Uncontrolled_Format_String__char_file_fprintf_22_badGlobal = dso_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G1Global = dso_local global i32 0, align 4, !dbg !9
@CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G2Global = dso_local global i32 0, align 4, !dbg !11
@CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodG2BGlobal = dso_local global i32 0, align 4, !dbg !13
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_bad() #0 !dbg !19 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !22, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !26, metadata !DIExpression()), !dbg !30
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !30
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !30
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !31
  store i8* %arraydecay, i8** %data, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !33, metadata !DIExpression()), !dbg !38
  %1 = load i8*, i8** %data, align 8, !dbg !39
  %call = call i64 @strlen(i8* %1) #6, !dbg !40
  store i64 %call, i64* %dataLen, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !41, metadata !DIExpression()), !dbg !98
  %2 = load i64, i64* %dataLen, align 8, !dbg !99
  %sub = sub i64 100, %2, !dbg !101
  %cmp = icmp ugt i64 %sub, 1, !dbg !102
  br i1 %cmp, label %if.then, label %if.end11, !dbg !103

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !104
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !106
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !107
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !109
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !110

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !111
  %5 = load i64, i64* %dataLen, align 8, !dbg !114
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !115
  %6 = load i64, i64* %dataLen, align 8, !dbg !116
  %sub4 = sub i64 100, %6, !dbg !117
  %conv = trunc i64 %sub4 to i32, !dbg !118
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !119
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !120
  %cmp6 = icmp eq i8* %call5, null, !dbg !121
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !122

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !123
  %8 = load i8*, i8** %data, align 8, !dbg !125
  %9 = load i64, i64* %dataLen, align 8, !dbg !126
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !125
  store i8 0, i8* %arrayidx, align 1, !dbg !127
  br label %if.end, !dbg !128

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !129
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !130
  br label %if.end10, !dbg !131

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !132

if.end11:                                         ; preds = %if.end10, %entry
  store i32 1, i32* @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_badGlobal, align 4, !dbg !133
  %11 = load i8*, i8** %data, align 8, !dbg !134
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_badSink(i8* %11), !dbg !135
  ret void, !dbg !136
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

declare dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_badSink(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !137 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !140, metadata !DIExpression()), !dbg !141
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !141
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !141
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !142
  store i8* %arraydecay, i8** %data, align 8, !dbg !143
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !144, metadata !DIExpression()), !dbg !146
  %1 = load i8*, i8** %data, align 8, !dbg !147
  %call = call i64 @strlen(i8* %1) #6, !dbg !148
  store i64 %call, i64* %dataLen, align 8, !dbg !146
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !149, metadata !DIExpression()), !dbg !150
  %2 = load i64, i64* %dataLen, align 8, !dbg !151
  %sub = sub i64 100, %2, !dbg !153
  %cmp = icmp ugt i64 %sub, 1, !dbg !154
  br i1 %cmp, label %if.then, label %if.end11, !dbg !155

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !156
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !158
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !159
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !161
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !162

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !163
  %5 = load i64, i64* %dataLen, align 8, !dbg !166
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !167
  %6 = load i64, i64* %dataLen, align 8, !dbg !168
  %sub4 = sub i64 100, %6, !dbg !169
  %conv = trunc i64 %sub4 to i32, !dbg !170
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !171
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !172
  %cmp6 = icmp eq i8* %call5, null, !dbg !173
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !174

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !175
  %8 = load i8*, i8** %data, align 8, !dbg !177
  %9 = load i64, i64* %dataLen, align 8, !dbg !178
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !177
  store i8 0, i8* %arrayidx, align 1, !dbg !179
  br label %if.end, !dbg !180

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !181
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !182
  br label %if.end10, !dbg !183

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !184

if.end11:                                         ; preds = %if.end10, %entry
  store i32 0, i32* @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G1Global, align 4, !dbg !185
  %11 = load i8*, i8** %data, align 8, !dbg !186
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G1Sink(i8* %11), !dbg !187
  ret void, !dbg !188
}

declare dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G1Sink(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !189 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !192, metadata !DIExpression()), !dbg !193
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !193
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !193
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !194
  store i8* %arraydecay, i8** %data, align 8, !dbg !195
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !196, metadata !DIExpression()), !dbg !198
  %1 = load i8*, i8** %data, align 8, !dbg !199
  %call = call i64 @strlen(i8* %1) #6, !dbg !200
  store i64 %call, i64* %dataLen, align 8, !dbg !198
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !201, metadata !DIExpression()), !dbg !202
  %2 = load i64, i64* %dataLen, align 8, !dbg !203
  %sub = sub i64 100, %2, !dbg !205
  %cmp = icmp ugt i64 %sub, 1, !dbg !206
  br i1 %cmp, label %if.then, label %if.end11, !dbg !207

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !208
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !210
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !211
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !213
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !214

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !215
  %5 = load i64, i64* %dataLen, align 8, !dbg !218
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !219
  %6 = load i64, i64* %dataLen, align 8, !dbg !220
  %sub4 = sub i64 100, %6, !dbg !221
  %conv = trunc i64 %sub4 to i32, !dbg !222
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !223
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !224
  %cmp6 = icmp eq i8* %call5, null, !dbg !225
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !226

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !227
  %8 = load i8*, i8** %data, align 8, !dbg !229
  %9 = load i64, i64* %dataLen, align 8, !dbg !230
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !229
  store i8 0, i8* %arrayidx, align 1, !dbg !231
  br label %if.end, !dbg !232

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !233
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !234
  br label %if.end10, !dbg !235

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !236

if.end11:                                         ; preds = %if.end10, %entry
  store i32 1, i32* @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G2Global, align 4, !dbg !237
  %11 = load i8*, i8** %data, align 8, !dbg !238
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G2Sink(i8* %11), !dbg !239
  ret void, !dbg !240
}

declare dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G2Sink(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !241 {
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
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !249
  store i32 1, i32* @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodG2BGlobal, align 4, !dbg !250
  %2 = load i8*, i8** %data, align 8, !dbg !251
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodG2BSink(i8* %2), !dbg !252
  ret void, !dbg !253
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

declare dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodG2BSink(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_good() #0 !dbg !254 {
entry:
  call void @goodB2G1(), !dbg !255
  call void @goodB2G2(), !dbg !256
  call void @goodG2B(), !dbg !257
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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22_badGlobal", scope: !2, file: !3, line: 34, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_981/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0, !9, !11, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G1Global", scope: !2, file: !3, line: 72, type: !7, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G2Global", scope: !2, file: !3, line: 73, type: !7, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodG2BGlobal", scope: !2, file: !3, line: 74, type: !7, isLocal: false, isDefinition: true)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 12.0.0"}
!19 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22_bad", scope: !3, file: !3, line: 37, type: !20, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null}
!22 = !DILocalVariable(name: "data", scope: !19, file: !3, line: 39, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DILocation(line: 39, column: 12, scope: !19)
!26 = !DILocalVariable(name: "dataBuffer", scope: !19, file: !3, line: 40, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 800, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 100)
!30 = !DILocation(line: 40, column: 10, scope: !19)
!31 = !DILocation(line: 41, column: 12, scope: !19)
!32 = !DILocation(line: 41, column: 10, scope: !19)
!33 = !DILocalVariable(name: "dataLen", scope: !34, file: !3, line: 44, type: !35)
!34 = distinct !DILexicalBlock(scope: !19, file: !3, line: 42, column: 5)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 44, column: 16, scope: !34)
!39 = !DILocation(line: 44, column: 33, scope: !34)
!40 = !DILocation(line: 44, column: 26, scope: !34)
!41 = !DILocalVariable(name: "pFile", scope: !34, file: !3, line: 45, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !44, line: 7, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !63, !65, !66, !67, !71, !73, !75, !79, !82, !84, !87, !90, !91, !92, !93, !94}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !45, file: !46, line: 51, baseType: !7, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !45, file: !46, line: 54, baseType: !23, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !45, file: !46, line: 55, baseType: !23, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !45, file: !46, line: 56, baseType: !23, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !45, file: !46, line: 57, baseType: !23, size: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !45, file: !46, line: 58, baseType: !23, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !45, file: !46, line: 59, baseType: !23, size: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !45, file: !46, line: 60, baseType: !23, size: 64, offset: 448)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !45, file: !46, line: 61, baseType: !23, size: 64, offset: 512)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !45, file: !46, line: 64, baseType: !23, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !45, file: !46, line: 65, baseType: !23, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !45, file: !46, line: 66, baseType: !23, size: 64, offset: 704)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !45, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !46, line: 36, flags: DIFlagFwdDecl)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !45, file: !46, line: 70, baseType: !64, size: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !45, file: !46, line: 72, baseType: !7, size: 32, offset: 896)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !45, file: !46, line: 73, baseType: !7, size: 32, offset: 928)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !45, file: !46, line: 74, baseType: !68, size: 64, offset: 960)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !69, line: 152, baseType: !70)
!69 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!70 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !45, file: !46, line: 77, baseType: !72, size: 16, offset: 1024)
!72 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !45, file: !46, line: 78, baseType: !74, size: 8, offset: 1040)
!74 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !45, file: !46, line: 79, baseType: !76, size: 8, offset: 1048)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 8, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 1)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !45, file: !46, line: 81, baseType: !80, size: 64, offset: 1088)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !46, line: 43, baseType: null)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !45, file: !46, line: 89, baseType: !83, size: 64, offset: 1152)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !69, line: 153, baseType: !70)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !45, file: !46, line: 91, baseType: !85, size: 64, offset: 1216)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !46, line: 37, flags: DIFlagFwdDecl)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !45, file: !46, line: 92, baseType: !88, size: 64, offset: 1280)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !46, line: 38, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !45, file: !46, line: 93, baseType: !64, size: 64, offset: 1344)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !45, file: !46, line: 94, baseType: !6, size: 64, offset: 1408)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !45, file: !46, line: 95, baseType: !35, size: 64, offset: 1472)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !45, file: !46, line: 96, baseType: !7, size: 32, offset: 1536)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !45, file: !46, line: 98, baseType: !95, size: 160, offset: 1568)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 160, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 20)
!98 = !DILocation(line: 45, column: 16, scope: !34)
!99 = !DILocation(line: 47, column: 17, scope: !100)
!100 = distinct !DILexicalBlock(scope: !34, file: !3, line: 47, column: 13)
!101 = !DILocation(line: 47, column: 16, scope: !100)
!102 = !DILocation(line: 47, column: 25, scope: !100)
!103 = !DILocation(line: 47, column: 13, scope: !34)
!104 = !DILocation(line: 49, column: 21, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !3, line: 48, column: 9)
!106 = !DILocation(line: 49, column: 19, scope: !105)
!107 = !DILocation(line: 50, column: 17, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !3, line: 50, column: 17)
!109 = !DILocation(line: 50, column: 23, scope: !108)
!110 = !DILocation(line: 50, column: 17, scope: !105)
!111 = !DILocation(line: 53, column: 27, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !3, line: 53, column: 21)
!113 = distinct !DILexicalBlock(scope: !108, file: !3, line: 51, column: 13)
!114 = !DILocation(line: 53, column: 32, scope: !112)
!115 = !DILocation(line: 53, column: 31, scope: !112)
!116 = !DILocation(line: 53, column: 51, scope: !112)
!117 = !DILocation(line: 53, column: 50, scope: !112)
!118 = !DILocation(line: 53, column: 41, scope: !112)
!119 = !DILocation(line: 53, column: 61, scope: !112)
!120 = !DILocation(line: 53, column: 21, scope: !112)
!121 = !DILocation(line: 53, column: 68, scope: !112)
!122 = !DILocation(line: 53, column: 21, scope: !113)
!123 = !DILocation(line: 55, column: 21, scope: !124)
!124 = distinct !DILexicalBlock(scope: !112, file: !3, line: 54, column: 17)
!125 = !DILocation(line: 57, column: 21, scope: !124)
!126 = !DILocation(line: 57, column: 26, scope: !124)
!127 = !DILocation(line: 57, column: 35, scope: !124)
!128 = !DILocation(line: 58, column: 17, scope: !124)
!129 = !DILocation(line: 59, column: 24, scope: !113)
!130 = !DILocation(line: 59, column: 17, scope: !113)
!131 = !DILocation(line: 60, column: 13, scope: !113)
!132 = !DILocation(line: 61, column: 9, scope: !105)
!133 = !DILocation(line: 63, column: 71, scope: !19)
!134 = !DILocation(line: 64, column: 69, scope: !19)
!135 = !DILocation(line: 64, column: 5, scope: !19)
!136 = !DILocation(line: 65, column: 1, scope: !19)
!137 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 78, type: !20, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!138 = !DILocalVariable(name: "data", scope: !137, file: !3, line: 80, type: !23)
!139 = !DILocation(line: 80, column: 12, scope: !137)
!140 = !DILocalVariable(name: "dataBuffer", scope: !137, file: !3, line: 81, type: !27)
!141 = !DILocation(line: 81, column: 10, scope: !137)
!142 = !DILocation(line: 82, column: 12, scope: !137)
!143 = !DILocation(line: 82, column: 10, scope: !137)
!144 = !DILocalVariable(name: "dataLen", scope: !145, file: !3, line: 85, type: !35)
!145 = distinct !DILexicalBlock(scope: !137, file: !3, line: 83, column: 5)
!146 = !DILocation(line: 85, column: 16, scope: !145)
!147 = !DILocation(line: 85, column: 33, scope: !145)
!148 = !DILocation(line: 85, column: 26, scope: !145)
!149 = !DILocalVariable(name: "pFile", scope: !145, file: !3, line: 86, type: !42)
!150 = !DILocation(line: 86, column: 16, scope: !145)
!151 = !DILocation(line: 88, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !145, file: !3, line: 88, column: 13)
!153 = !DILocation(line: 88, column: 16, scope: !152)
!154 = !DILocation(line: 88, column: 25, scope: !152)
!155 = !DILocation(line: 88, column: 13, scope: !145)
!156 = !DILocation(line: 90, column: 21, scope: !157)
!157 = distinct !DILexicalBlock(scope: !152, file: !3, line: 89, column: 9)
!158 = !DILocation(line: 90, column: 19, scope: !157)
!159 = !DILocation(line: 91, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !3, line: 91, column: 17)
!161 = !DILocation(line: 91, column: 23, scope: !160)
!162 = !DILocation(line: 91, column: 17, scope: !157)
!163 = !DILocation(line: 94, column: 27, scope: !164)
!164 = distinct !DILexicalBlock(scope: !165, file: !3, line: 94, column: 21)
!165 = distinct !DILexicalBlock(scope: !160, file: !3, line: 92, column: 13)
!166 = !DILocation(line: 94, column: 32, scope: !164)
!167 = !DILocation(line: 94, column: 31, scope: !164)
!168 = !DILocation(line: 94, column: 51, scope: !164)
!169 = !DILocation(line: 94, column: 50, scope: !164)
!170 = !DILocation(line: 94, column: 41, scope: !164)
!171 = !DILocation(line: 94, column: 61, scope: !164)
!172 = !DILocation(line: 94, column: 21, scope: !164)
!173 = !DILocation(line: 94, column: 68, scope: !164)
!174 = !DILocation(line: 94, column: 21, scope: !165)
!175 = !DILocation(line: 96, column: 21, scope: !176)
!176 = distinct !DILexicalBlock(scope: !164, file: !3, line: 95, column: 17)
!177 = !DILocation(line: 98, column: 21, scope: !176)
!178 = !DILocation(line: 98, column: 26, scope: !176)
!179 = !DILocation(line: 98, column: 35, scope: !176)
!180 = !DILocation(line: 99, column: 17, scope: !176)
!181 = !DILocation(line: 100, column: 24, scope: !165)
!182 = !DILocation(line: 100, column: 17, scope: !165)
!183 = !DILocation(line: 101, column: 13, scope: !165)
!184 = !DILocation(line: 102, column: 9, scope: !157)
!185 = !DILocation(line: 104, column: 76, scope: !137)
!186 = !DILocation(line: 105, column: 74, scope: !137)
!187 = !DILocation(line: 105, column: 5, scope: !137)
!188 = !DILocation(line: 106, column: 1, scope: !137)
!189 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 110, type: !20, scopeLine: 111, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!190 = !DILocalVariable(name: "data", scope: !189, file: !3, line: 112, type: !23)
!191 = !DILocation(line: 112, column: 12, scope: !189)
!192 = !DILocalVariable(name: "dataBuffer", scope: !189, file: !3, line: 113, type: !27)
!193 = !DILocation(line: 113, column: 10, scope: !189)
!194 = !DILocation(line: 114, column: 12, scope: !189)
!195 = !DILocation(line: 114, column: 10, scope: !189)
!196 = !DILocalVariable(name: "dataLen", scope: !197, file: !3, line: 117, type: !35)
!197 = distinct !DILexicalBlock(scope: !189, file: !3, line: 115, column: 5)
!198 = !DILocation(line: 117, column: 16, scope: !197)
!199 = !DILocation(line: 117, column: 33, scope: !197)
!200 = !DILocation(line: 117, column: 26, scope: !197)
!201 = !DILocalVariable(name: "pFile", scope: !197, file: !3, line: 118, type: !42)
!202 = !DILocation(line: 118, column: 16, scope: !197)
!203 = !DILocation(line: 120, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !197, file: !3, line: 120, column: 13)
!205 = !DILocation(line: 120, column: 16, scope: !204)
!206 = !DILocation(line: 120, column: 25, scope: !204)
!207 = !DILocation(line: 120, column: 13, scope: !197)
!208 = !DILocation(line: 122, column: 21, scope: !209)
!209 = distinct !DILexicalBlock(scope: !204, file: !3, line: 121, column: 9)
!210 = !DILocation(line: 122, column: 19, scope: !209)
!211 = !DILocation(line: 123, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !3, line: 123, column: 17)
!213 = !DILocation(line: 123, column: 23, scope: !212)
!214 = !DILocation(line: 123, column: 17, scope: !209)
!215 = !DILocation(line: 126, column: 27, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !3, line: 126, column: 21)
!217 = distinct !DILexicalBlock(scope: !212, file: !3, line: 124, column: 13)
!218 = !DILocation(line: 126, column: 32, scope: !216)
!219 = !DILocation(line: 126, column: 31, scope: !216)
!220 = !DILocation(line: 126, column: 51, scope: !216)
!221 = !DILocation(line: 126, column: 50, scope: !216)
!222 = !DILocation(line: 126, column: 41, scope: !216)
!223 = !DILocation(line: 126, column: 61, scope: !216)
!224 = !DILocation(line: 126, column: 21, scope: !216)
!225 = !DILocation(line: 126, column: 68, scope: !216)
!226 = !DILocation(line: 126, column: 21, scope: !217)
!227 = !DILocation(line: 128, column: 21, scope: !228)
!228 = distinct !DILexicalBlock(scope: !216, file: !3, line: 127, column: 17)
!229 = !DILocation(line: 130, column: 21, scope: !228)
!230 = !DILocation(line: 130, column: 26, scope: !228)
!231 = !DILocation(line: 130, column: 35, scope: !228)
!232 = !DILocation(line: 131, column: 17, scope: !228)
!233 = !DILocation(line: 132, column: 24, scope: !217)
!234 = !DILocation(line: 132, column: 17, scope: !217)
!235 = !DILocation(line: 133, column: 13, scope: !217)
!236 = !DILocation(line: 134, column: 9, scope: !209)
!237 = !DILocation(line: 136, column: 76, scope: !189)
!238 = !DILocation(line: 137, column: 74, scope: !189)
!239 = !DILocation(line: 137, column: 5, scope: !189)
!240 = !DILocation(line: 138, column: 1, scope: !189)
!241 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 142, type: !20, scopeLine: 143, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!242 = !DILocalVariable(name: "data", scope: !241, file: !3, line: 144, type: !23)
!243 = !DILocation(line: 144, column: 12, scope: !241)
!244 = !DILocalVariable(name: "dataBuffer", scope: !241, file: !3, line: 145, type: !27)
!245 = !DILocation(line: 145, column: 10, scope: !241)
!246 = !DILocation(line: 146, column: 12, scope: !241)
!247 = !DILocation(line: 146, column: 10, scope: !241)
!248 = !DILocation(line: 148, column: 12, scope: !241)
!249 = !DILocation(line: 148, column: 5, scope: !241)
!250 = !DILocation(line: 149, column: 75, scope: !241)
!251 = !DILocation(line: 150, column: 73, scope: !241)
!252 = !DILocation(line: 150, column: 5, scope: !241)
!253 = !DILocation(line: 151, column: 1, scope: !241)
!254 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22_good", scope: !3, file: !3, line: 153, type: !20, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!255 = !DILocation(line: 155, column: 5, scope: !254)
!256 = !DILocation(line: 156, column: 5, scope: !254)
!257 = !DILocation(line: 157, column: 5, scope: !254)
!258 = !DILocation(line: 158, column: 1, scope: !254)
