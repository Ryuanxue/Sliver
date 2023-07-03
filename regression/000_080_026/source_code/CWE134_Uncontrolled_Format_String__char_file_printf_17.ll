; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_printf_17.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_printf_17.c"
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_17_bad() #0 !dbg !10 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i32* %i, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %j, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !17, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %data, align 8, !dbg !27
  store i32 0, i32* %i, align 4, !dbg !28
  br label %for.cond, !dbg !30

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !31
  %cmp = icmp slt i32 %1, 1, !dbg !33
  br i1 %cmp, label %for.body, label %for.end, !dbg !34

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !35, metadata !DIExpression()), !dbg !41
  %2 = load i8*, i8** %data, align 8, !dbg !42
  %call = call i64 @strlen(i8* %2) #6, !dbg !43
  store i64 %call, i64* %dataLen, align 8, !dbg !41
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !44, metadata !DIExpression()), !dbg !101
  %3 = load i64, i64* %dataLen, align 8, !dbg !102
  %sub = sub i64 100, %3, !dbg !104
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !105
  br i1 %cmp1, label %if.then, label %if.end12, !dbg !106

if.then:                                          ; preds = %for.body
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !107
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !109
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !110
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !112
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !113

if.then4:                                         ; preds = %if.then
  %5 = load i8*, i8** %data, align 8, !dbg !114
  %6 = load i64, i64* %dataLen, align 8, !dbg !117
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !118
  %7 = load i64, i64* %dataLen, align 8, !dbg !119
  %sub5 = sub i64 100, %7, !dbg !120
  %conv = trunc i64 %sub5 to i32, !dbg !121
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !122
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !123
  %cmp7 = icmp eq i8* %call6, null, !dbg !124
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !125

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !126
  %9 = load i8*, i8** %data, align 8, !dbg !128
  %10 = load i64, i64* %dataLen, align 8, !dbg !129
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !128
  store i8 0, i8* %arrayidx, align 1, !dbg !130
  br label %if.end, !dbg !131

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !132
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !133
  br label %if.end11, !dbg !134

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end12, !dbg !135

if.end12:                                         ; preds = %if.end11, %for.body
  br label %for.inc, !dbg !136

for.inc:                                          ; preds = %if.end12
  %12 = load i32, i32* %i, align 4, !dbg !137
  %inc = add nsw i32 %12, 1, !dbg !137
  store i32 %inc, i32* %i, align 4, !dbg !137
  br label %for.cond, !dbg !138, !llvm.loop !139

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !142
  br label %for.cond13, !dbg !144

for.cond13:                                       ; preds = %for.inc18, %for.end
  %13 = load i32, i32* %j, align 4, !dbg !145
  %cmp14 = icmp slt i32 %13, 1, !dbg !147
  br i1 %cmp14, label %for.body16, label %for.end20, !dbg !148

for.body16:                                       ; preds = %for.cond13
  %14 = load i8*, i8** %data, align 8, !dbg !149
  %call17 = call i32 (i8*, ...) @printf(i8* %14), !dbg !151
  br label %for.inc18, !dbg !152

for.inc18:                                        ; preds = %for.body16
  %15 = load i32, i32* %j, align 4, !dbg !153
  %inc19 = add nsw i32 %15, 1, !dbg !153
  store i32 %inc19, i32* %j, align 4, !dbg !153
  br label %for.cond13, !dbg !154, !llvm.loop !155

for.end20:                                        ; preds = %for.cond13
  ret void, !dbg !157
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
define dso_local void @goodB2G() #0 !dbg !158 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i32* %i, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %k, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata i8** %data, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !165, metadata !DIExpression()), !dbg !166
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !166
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !166
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !167
  store i8* %arraydecay, i8** %data, align 8, !dbg !168
  store i32 0, i32* %i, align 4, !dbg !169
  br label %for.cond, !dbg !171

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !172
  %cmp = icmp slt i32 %1, 1, !dbg !174
  br i1 %cmp, label %for.body, label %for.end, !dbg !175

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !176, metadata !DIExpression()), !dbg !179
  %2 = load i8*, i8** %data, align 8, !dbg !180
  %call = call i64 @strlen(i8* %2) #6, !dbg !181
  store i64 %call, i64* %dataLen, align 8, !dbg !179
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !182, metadata !DIExpression()), !dbg !183
  %3 = load i64, i64* %dataLen, align 8, !dbg !184
  %sub = sub i64 100, %3, !dbg !186
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !187
  br i1 %cmp1, label %if.then, label %if.end12, !dbg !188

if.then:                                          ; preds = %for.body
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !189
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !191
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !192
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !194
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !195

if.then4:                                         ; preds = %if.then
  %5 = load i8*, i8** %data, align 8, !dbg !196
  %6 = load i64, i64* %dataLen, align 8, !dbg !199
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !200
  %7 = load i64, i64* %dataLen, align 8, !dbg !201
  %sub5 = sub i64 100, %7, !dbg !202
  %conv = trunc i64 %sub5 to i32, !dbg !203
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !204
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !205
  %cmp7 = icmp eq i8* %call6, null, !dbg !206
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !207

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !208
  %9 = load i8*, i8** %data, align 8, !dbg !210
  %10 = load i64, i64* %dataLen, align 8, !dbg !211
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !210
  store i8 0, i8* %arrayidx, align 1, !dbg !212
  br label %if.end, !dbg !213

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !214
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !215
  br label %if.end11, !dbg !216

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end12, !dbg !217

if.end12:                                         ; preds = %if.end11, %for.body
  br label %for.inc, !dbg !218

for.inc:                                          ; preds = %if.end12
  %12 = load i32, i32* %i, align 4, !dbg !219
  %inc = add nsw i32 %12, 1, !dbg !219
  store i32 %inc, i32* %i, align 4, !dbg !219
  br label %for.cond, !dbg !220, !llvm.loop !221

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !223
  br label %for.cond13, !dbg !225

for.cond13:                                       ; preds = %for.inc18, %for.end
  %13 = load i32, i32* %k, align 4, !dbg !226
  %cmp14 = icmp slt i32 %13, 1, !dbg !228
  br i1 %cmp14, label %for.body16, label %for.end20, !dbg !229

for.body16:                                       ; preds = %for.cond13
  %14 = load i8*, i8** %data, align 8, !dbg !230
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %14), !dbg !232
  br label %for.inc18, !dbg !233

for.inc18:                                        ; preds = %for.body16
  %15 = load i32, i32* %k, align 4, !dbg !234
  %inc19 = add nsw i32 %15, 1, !dbg !234
  store i32 %inc19, i32* %k, align 4, !dbg !234
  br label %for.cond13, !dbg !235, !llvm.loop !236

for.end20:                                        ; preds = %for.cond13
  ret void, !dbg !238
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !239 {
entry:
  %h = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i32* %h, metadata !240, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i32* %j, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata i8** %data, metadata !244, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !246, metadata !DIExpression()), !dbg !247
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !247
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !247
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !248
  store i8* %arraydecay, i8** %data, align 8, !dbg !249
  store i32 0, i32* %h, align 4, !dbg !250
  br label %for.cond, !dbg !252

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %h, align 4, !dbg !253
  %cmp = icmp slt i32 %1, 1, !dbg !255
  br i1 %cmp, label %for.body, label %for.end, !dbg !256

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %data, align 8, !dbg !257
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !259
  br label %for.inc, !dbg !260

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %h, align 4, !dbg !261
  %inc = add nsw i32 %3, 1, !dbg !261
  store i32 %inc, i32* %h, align 4, !dbg !261
  br label %for.cond, !dbg !262, !llvm.loop !263

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !265
  br label %for.cond1, !dbg !267

for.cond1:                                        ; preds = %for.inc5, %for.end
  %4 = load i32, i32* %j, align 4, !dbg !268
  %cmp2 = icmp slt i32 %4, 1, !dbg !270
  br i1 %cmp2, label %for.body3, label %for.end7, !dbg !271

for.body3:                                        ; preds = %for.cond1
  %5 = load i8*, i8** %data, align 8, !dbg !272
  %call4 = call i32 (i8*, ...) @printf(i8* %5), !dbg !274
  br label %for.inc5, !dbg !275

for.inc5:                                         ; preds = %for.body3
  %6 = load i32, i32* %j, align 4, !dbg !276
  %inc6 = add nsw i32 %6, 1, !dbg !276
  store i32 %inc6, i32* %j, align 4, !dbg !276
  br label %for.cond1, !dbg !277, !llvm.loop !278

for.end7:                                         ; preds = %for.cond1
  ret void, !dbg !280
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_17_good() #0 !dbg !281 {
entry:
  call void @goodB2G(), !dbg !282
  call void @goodG2B(), !dbg !283
  ret void, !dbg !284
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_17.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_026/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_17_bad", scope: !1, file: !1, line: 33, type: !11, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 35, type: !5)
!14 = !DILocation(line: 35, column: 9, scope: !10)
!15 = !DILocalVariable(name: "j", scope: !10, file: !1, line: 35, type: !5)
!16 = !DILocation(line: 35, column: 11, scope: !10)
!17 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 36, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DILocation(line: 36, column: 12, scope: !10)
!21 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 37, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 37, column: 10, scope: !10)
!26 = !DILocation(line: 38, column: 12, scope: !10)
!27 = !DILocation(line: 38, column: 10, scope: !10)
!28 = !DILocation(line: 39, column: 11, scope: !29)
!29 = distinct !DILexicalBlock(scope: !10, file: !1, line: 39, column: 5)
!30 = !DILocation(line: 39, column: 9, scope: !29)
!31 = !DILocation(line: 39, column: 16, scope: !32)
!32 = distinct !DILexicalBlock(scope: !29, file: !1, line: 39, column: 5)
!33 = !DILocation(line: 39, column: 18, scope: !32)
!34 = !DILocation(line: 39, column: 5, scope: !29)
!35 = !DILocalVariable(name: "dataLen", scope: !36, file: !1, line: 43, type: !38)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 41, column: 9)
!37 = distinct !DILexicalBlock(scope: !32, file: !1, line: 40, column: 5)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 46, baseType: !40)
!39 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!40 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!41 = !DILocation(line: 43, column: 20, scope: !36)
!42 = !DILocation(line: 43, column: 37, scope: !36)
!43 = !DILocation(line: 43, column: 30, scope: !36)
!44 = !DILocalVariable(name: "pFile", scope: !36, file: !1, line: 44, type: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !47, line: 7, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !49, line: 49, size: 1728, elements: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !66, !68, !69, !70, !74, !76, !78, !82, !85, !87, !90, !93, !94, !95, !96, !97}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !48, file: !49, line: 51, baseType: !5, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !48, file: !49, line: 54, baseType: !18, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !48, file: !49, line: 55, baseType: !18, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !48, file: !49, line: 56, baseType: !18, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !48, file: !49, line: 57, baseType: !18, size: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !48, file: !49, line: 58, baseType: !18, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !48, file: !49, line: 59, baseType: !18, size: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !48, file: !49, line: 60, baseType: !18, size: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !48, file: !49, line: 61, baseType: !18, size: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !48, file: !49, line: 64, baseType: !18, size: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !48, file: !49, line: 65, baseType: !18, size: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !48, file: !49, line: 66, baseType: !18, size: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !48, file: !49, line: 68, baseType: !64, size: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !49, line: 36, flags: DIFlagFwdDecl)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !48, file: !49, line: 70, baseType: !67, size: 64, offset: 832)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !48, file: !49, line: 72, baseType: !5, size: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !48, file: !49, line: 73, baseType: !5, size: 32, offset: 928)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !48, file: !49, line: 74, baseType: !71, size: 64, offset: 960)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !72, line: 152, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!73 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !48, file: !49, line: 77, baseType: !75, size: 16, offset: 1024)
!75 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !48, file: !49, line: 78, baseType: !77, size: 8, offset: 1040)
!77 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !48, file: !49, line: 79, baseType: !79, size: 8, offset: 1048)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 1)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !48, file: !49, line: 81, baseType: !83, size: 64, offset: 1088)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !49, line: 43, baseType: null)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !48, file: !49, line: 89, baseType: !86, size: 64, offset: 1152)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !72, line: 153, baseType: !73)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !48, file: !49, line: 91, baseType: !88, size: 64, offset: 1216)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !49, line: 37, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !48, file: !49, line: 92, baseType: !91, size: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !49, line: 38, flags: DIFlagFwdDecl)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !48, file: !49, line: 93, baseType: !67, size: 64, offset: 1344)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !48, file: !49, line: 94, baseType: !4, size: 64, offset: 1408)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !48, file: !49, line: 95, baseType: !38, size: 64, offset: 1472)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !48, file: !49, line: 96, baseType: !5, size: 32, offset: 1536)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !48, file: !49, line: 98, baseType: !98, size: 160, offset: 1568)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 20)
!101 = !DILocation(line: 44, column: 20, scope: !36)
!102 = !DILocation(line: 46, column: 21, scope: !103)
!103 = distinct !DILexicalBlock(scope: !36, file: !1, line: 46, column: 17)
!104 = !DILocation(line: 46, column: 20, scope: !103)
!105 = !DILocation(line: 46, column: 29, scope: !103)
!106 = !DILocation(line: 46, column: 17, scope: !36)
!107 = !DILocation(line: 48, column: 25, scope: !108)
!108 = distinct !DILexicalBlock(scope: !103, file: !1, line: 47, column: 13)
!109 = !DILocation(line: 48, column: 23, scope: !108)
!110 = !DILocation(line: 49, column: 21, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !1, line: 49, column: 21)
!112 = !DILocation(line: 49, column: 27, scope: !111)
!113 = !DILocation(line: 49, column: 21, scope: !108)
!114 = !DILocation(line: 52, column: 31, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !1, line: 52, column: 25)
!116 = distinct !DILexicalBlock(scope: !111, file: !1, line: 50, column: 17)
!117 = !DILocation(line: 52, column: 36, scope: !115)
!118 = !DILocation(line: 52, column: 35, scope: !115)
!119 = !DILocation(line: 52, column: 55, scope: !115)
!120 = !DILocation(line: 52, column: 54, scope: !115)
!121 = !DILocation(line: 52, column: 45, scope: !115)
!122 = !DILocation(line: 52, column: 65, scope: !115)
!123 = !DILocation(line: 52, column: 25, scope: !115)
!124 = !DILocation(line: 52, column: 72, scope: !115)
!125 = !DILocation(line: 52, column: 25, scope: !116)
!126 = !DILocation(line: 54, column: 25, scope: !127)
!127 = distinct !DILexicalBlock(scope: !115, file: !1, line: 53, column: 21)
!128 = !DILocation(line: 56, column: 25, scope: !127)
!129 = !DILocation(line: 56, column: 30, scope: !127)
!130 = !DILocation(line: 56, column: 39, scope: !127)
!131 = !DILocation(line: 57, column: 21, scope: !127)
!132 = !DILocation(line: 58, column: 28, scope: !116)
!133 = !DILocation(line: 58, column: 21, scope: !116)
!134 = !DILocation(line: 59, column: 17, scope: !116)
!135 = !DILocation(line: 60, column: 13, scope: !108)
!136 = !DILocation(line: 62, column: 5, scope: !37)
!137 = !DILocation(line: 39, column: 24, scope: !32)
!138 = !DILocation(line: 39, column: 5, scope: !32)
!139 = distinct !{!139, !34, !140, !141}
!140 = !DILocation(line: 62, column: 5, scope: !29)
!141 = !{!"llvm.loop.mustprogress"}
!142 = !DILocation(line: 63, column: 11, scope: !143)
!143 = distinct !DILexicalBlock(scope: !10, file: !1, line: 63, column: 5)
!144 = !DILocation(line: 63, column: 9, scope: !143)
!145 = !DILocation(line: 63, column: 16, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !1, line: 63, column: 5)
!147 = !DILocation(line: 63, column: 18, scope: !146)
!148 = !DILocation(line: 63, column: 5, scope: !143)
!149 = !DILocation(line: 66, column: 16, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !1, line: 64, column: 5)
!151 = !DILocation(line: 66, column: 9, scope: !150)
!152 = !DILocation(line: 67, column: 5, scope: !150)
!153 = !DILocation(line: 63, column: 24, scope: !146)
!154 = !DILocation(line: 63, column: 5, scope: !146)
!155 = distinct !{!155, !148, !156, !141}
!156 = !DILocation(line: 67, column: 5, scope: !143)
!157 = !DILocation(line: 68, column: 1, scope: !10)
!158 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 75, type: !11, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!159 = !DILocalVariable(name: "i", scope: !158, file: !1, line: 77, type: !5)
!160 = !DILocation(line: 77, column: 9, scope: !158)
!161 = !DILocalVariable(name: "k", scope: !158, file: !1, line: 77, type: !5)
!162 = !DILocation(line: 77, column: 11, scope: !158)
!163 = !DILocalVariable(name: "data", scope: !158, file: !1, line: 78, type: !18)
!164 = !DILocation(line: 78, column: 12, scope: !158)
!165 = !DILocalVariable(name: "dataBuffer", scope: !158, file: !1, line: 79, type: !22)
!166 = !DILocation(line: 79, column: 10, scope: !158)
!167 = !DILocation(line: 80, column: 12, scope: !158)
!168 = !DILocation(line: 80, column: 10, scope: !158)
!169 = !DILocation(line: 81, column: 11, scope: !170)
!170 = distinct !DILexicalBlock(scope: !158, file: !1, line: 81, column: 5)
!171 = !DILocation(line: 81, column: 9, scope: !170)
!172 = !DILocation(line: 81, column: 16, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !1, line: 81, column: 5)
!174 = !DILocation(line: 81, column: 18, scope: !173)
!175 = !DILocation(line: 81, column: 5, scope: !170)
!176 = !DILocalVariable(name: "dataLen", scope: !177, file: !1, line: 85, type: !38)
!177 = distinct !DILexicalBlock(scope: !178, file: !1, line: 83, column: 9)
!178 = distinct !DILexicalBlock(scope: !173, file: !1, line: 82, column: 5)
!179 = !DILocation(line: 85, column: 20, scope: !177)
!180 = !DILocation(line: 85, column: 37, scope: !177)
!181 = !DILocation(line: 85, column: 30, scope: !177)
!182 = !DILocalVariable(name: "pFile", scope: !177, file: !1, line: 86, type: !45)
!183 = !DILocation(line: 86, column: 20, scope: !177)
!184 = !DILocation(line: 88, column: 21, scope: !185)
!185 = distinct !DILexicalBlock(scope: !177, file: !1, line: 88, column: 17)
!186 = !DILocation(line: 88, column: 20, scope: !185)
!187 = !DILocation(line: 88, column: 29, scope: !185)
!188 = !DILocation(line: 88, column: 17, scope: !177)
!189 = !DILocation(line: 90, column: 25, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !1, line: 89, column: 13)
!191 = !DILocation(line: 90, column: 23, scope: !190)
!192 = !DILocation(line: 91, column: 21, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !1, line: 91, column: 21)
!194 = !DILocation(line: 91, column: 27, scope: !193)
!195 = !DILocation(line: 91, column: 21, scope: !190)
!196 = !DILocation(line: 94, column: 31, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !1, line: 94, column: 25)
!198 = distinct !DILexicalBlock(scope: !193, file: !1, line: 92, column: 17)
!199 = !DILocation(line: 94, column: 36, scope: !197)
!200 = !DILocation(line: 94, column: 35, scope: !197)
!201 = !DILocation(line: 94, column: 55, scope: !197)
!202 = !DILocation(line: 94, column: 54, scope: !197)
!203 = !DILocation(line: 94, column: 45, scope: !197)
!204 = !DILocation(line: 94, column: 65, scope: !197)
!205 = !DILocation(line: 94, column: 25, scope: !197)
!206 = !DILocation(line: 94, column: 72, scope: !197)
!207 = !DILocation(line: 94, column: 25, scope: !198)
!208 = !DILocation(line: 96, column: 25, scope: !209)
!209 = distinct !DILexicalBlock(scope: !197, file: !1, line: 95, column: 21)
!210 = !DILocation(line: 98, column: 25, scope: !209)
!211 = !DILocation(line: 98, column: 30, scope: !209)
!212 = !DILocation(line: 98, column: 39, scope: !209)
!213 = !DILocation(line: 99, column: 21, scope: !209)
!214 = !DILocation(line: 100, column: 28, scope: !198)
!215 = !DILocation(line: 100, column: 21, scope: !198)
!216 = !DILocation(line: 101, column: 17, scope: !198)
!217 = !DILocation(line: 102, column: 13, scope: !190)
!218 = !DILocation(line: 104, column: 5, scope: !178)
!219 = !DILocation(line: 81, column: 24, scope: !173)
!220 = !DILocation(line: 81, column: 5, scope: !173)
!221 = distinct !{!221, !175, !222, !141}
!222 = !DILocation(line: 104, column: 5, scope: !170)
!223 = !DILocation(line: 105, column: 11, scope: !224)
!224 = distinct !DILexicalBlock(scope: !158, file: !1, line: 105, column: 5)
!225 = !DILocation(line: 105, column: 9, scope: !224)
!226 = !DILocation(line: 105, column: 16, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !1, line: 105, column: 5)
!228 = !DILocation(line: 105, column: 18, scope: !227)
!229 = !DILocation(line: 105, column: 5, scope: !224)
!230 = !DILocation(line: 108, column: 24, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !1, line: 106, column: 5)
!232 = !DILocation(line: 108, column: 9, scope: !231)
!233 = !DILocation(line: 109, column: 5, scope: !231)
!234 = !DILocation(line: 105, column: 24, scope: !227)
!235 = !DILocation(line: 105, column: 5, scope: !227)
!236 = distinct !{!236, !229, !237, !141}
!237 = !DILocation(line: 109, column: 5, scope: !224)
!238 = !DILocation(line: 110, column: 1, scope: !158)
!239 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 113, type: !11, scopeLine: 114, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!240 = !DILocalVariable(name: "h", scope: !239, file: !1, line: 115, type: !5)
!241 = !DILocation(line: 115, column: 9, scope: !239)
!242 = !DILocalVariable(name: "j", scope: !239, file: !1, line: 115, type: !5)
!243 = !DILocation(line: 115, column: 11, scope: !239)
!244 = !DILocalVariable(name: "data", scope: !239, file: !1, line: 116, type: !18)
!245 = !DILocation(line: 116, column: 12, scope: !239)
!246 = !DILocalVariable(name: "dataBuffer", scope: !239, file: !1, line: 117, type: !22)
!247 = !DILocation(line: 117, column: 10, scope: !239)
!248 = !DILocation(line: 118, column: 12, scope: !239)
!249 = !DILocation(line: 118, column: 10, scope: !239)
!250 = !DILocation(line: 119, column: 11, scope: !251)
!251 = distinct !DILexicalBlock(scope: !239, file: !1, line: 119, column: 5)
!252 = !DILocation(line: 119, column: 9, scope: !251)
!253 = !DILocation(line: 119, column: 16, scope: !254)
!254 = distinct !DILexicalBlock(scope: !251, file: !1, line: 119, column: 5)
!255 = !DILocation(line: 119, column: 18, scope: !254)
!256 = !DILocation(line: 119, column: 5, scope: !251)
!257 = !DILocation(line: 122, column: 16, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !1, line: 120, column: 5)
!259 = !DILocation(line: 122, column: 9, scope: !258)
!260 = !DILocation(line: 123, column: 5, scope: !258)
!261 = !DILocation(line: 119, column: 24, scope: !254)
!262 = !DILocation(line: 119, column: 5, scope: !254)
!263 = distinct !{!263, !256, !264, !141}
!264 = !DILocation(line: 123, column: 5, scope: !251)
!265 = !DILocation(line: 124, column: 11, scope: !266)
!266 = distinct !DILexicalBlock(scope: !239, file: !1, line: 124, column: 5)
!267 = !DILocation(line: 124, column: 9, scope: !266)
!268 = !DILocation(line: 124, column: 16, scope: !269)
!269 = distinct !DILexicalBlock(scope: !266, file: !1, line: 124, column: 5)
!270 = !DILocation(line: 124, column: 18, scope: !269)
!271 = !DILocation(line: 124, column: 5, scope: !266)
!272 = !DILocation(line: 127, column: 16, scope: !273)
!273 = distinct !DILexicalBlock(scope: !269, file: !1, line: 125, column: 5)
!274 = !DILocation(line: 127, column: 9, scope: !273)
!275 = !DILocation(line: 128, column: 5, scope: !273)
!276 = !DILocation(line: 124, column: 24, scope: !269)
!277 = !DILocation(line: 124, column: 5, scope: !269)
!278 = distinct !{!278, !271, !279, !141}
!279 = !DILocation(line: 128, column: 5, scope: !266)
!280 = !DILocation(line: 129, column: 1, scope: !239)
!281 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_17_good", scope: !1, file: !1, line: 131, type: !11, scopeLine: 132, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!282 = !DILocation(line: 133, column: 5, scope: !281)
!283 = !DILocation(line: 134, column: 5, scope: !281)
!284 = !DILocation(line: 135, column: 1, scope: !281)
