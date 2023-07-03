; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_vprintf_42.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_vprintf_42.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @badSource(i8* %data) #0 !dbg !10 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !17, metadata !DIExpression()), !dbg !22
  %0 = load i8*, i8** %data.addr, align 8, !dbg !23
  %call = call i64 @strlen(i8* %0) #7, !dbg !24
  store i64 %call, i64* %dataLen, align 8, !dbg !22
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !25, metadata !DIExpression()), !dbg !82
  %1 = load i64, i64* %dataLen, align 8, !dbg !83
  %sub = sub i64 100, %1, !dbg !85
  %cmp = icmp ugt i64 %sub, 1, !dbg !86
  br i1 %cmp, label %if.then, label %if.end11, !dbg !87

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !88
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !90
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !91
  %cmp2 = icmp ne %struct._IO_FILE* %2, null, !dbg !93
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !94

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data.addr, align 8, !dbg !95
  %4 = load i64, i64* %dataLen, align 8, !dbg !98
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !99
  %5 = load i64, i64* %dataLen, align 8, !dbg !100
  %sub4 = sub i64 100, %5, !dbg !101
  %conv = trunc i64 %sub4 to i32, !dbg !102
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !103
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !104
  %cmp6 = icmp eq i8* %call5, null, !dbg !105
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !106

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !107
  %7 = load i8*, i8** %data.addr, align 8, !dbg !109
  %8 = load i64, i64* %dataLen, align 8, !dbg !110
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !109
  store i8 0, i8* %arrayidx, align 1, !dbg !111
  br label %if.end, !dbg !112

if.end:                                           ; preds = %if.then8, %if.then3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !113
  %call9 = call i32 @fclose(%struct._IO_FILE* %9), !dbg !114
  br label %if.end10, !dbg !115

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !116

if.end11:                                         ; preds = %if.end10, %entry
  %10 = load i8*, i8** %data.addr, align 8, !dbg !117
  ret i8* %10, !dbg !118
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !119 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !124, metadata !DIExpression()), !dbg !139
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !140
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !140
  call void @llvm.va_start(i8* %arraydecay1), !dbg !140
  %0 = load i8*, i8** %data.addr, align 8, !dbg !141
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !142
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !143
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !144
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !144
  call void @llvm.va_end(i8* %arraydecay34), !dbg !144
  ret void, !dbg !145
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #4

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_42_bad() #0 !dbg !146 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !151, metadata !DIExpression()), !dbg !155
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !155
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !155
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !156
  store i8* %arraydecay, i8** %data, align 8, !dbg !157
  %1 = load i8*, i8** %data, align 8, !dbg !158
  %call = call i8* @badSource(i8* %1), !dbg !159
  store i8* %call, i8** %data, align 8, !dbg !160
  %2 = load i8*, i8** %data, align 8, !dbg !161
  %3 = load i8*, i8** %data, align 8, !dbg !162
  call void (i8*, ...) @badVaSink(i8* %2, i8* %3), !dbg !163
  ret void, !dbg !164
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodG2BSource(i8* %data) #0 !dbg !165 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !166, metadata !DIExpression()), !dbg !167
  %0 = load i8*, i8** %data.addr, align 8, !dbg !168
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !169
  %1 = load i8*, i8** %data.addr, align 8, !dbg !170
  ret i8* %1, !dbg !171
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !172 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !175, metadata !DIExpression()), !dbg !177
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !178
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !178
  call void @llvm.va_start(i8* %arraydecay1), !dbg !178
  %0 = load i8*, i8** %data.addr, align 8, !dbg !179
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !180
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !181
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !182
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !182
  call void @llvm.va_end(i8* %arraydecay34), !dbg !182
  ret void, !dbg !183
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !184 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !187, metadata !DIExpression()), !dbg !188
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !188
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !188
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !189
  store i8* %arraydecay, i8** %data, align 8, !dbg !190
  %1 = load i8*, i8** %data, align 8, !dbg !191
  %call = call i8* @goodG2BSource(i8* %1), !dbg !192
  store i8* %call, i8** %data, align 8, !dbg !193
  %2 = load i8*, i8** %data, align 8, !dbg !194
  %3 = load i8*, i8** %data, align 8, !dbg !195
  call void (i8*, ...) @goodG2BVaSink(i8* %2, i8* %3), !dbg !196
  ret void, !dbg !197
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodB2GSource(i8* %data) #0 !dbg !198 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !199, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !201, metadata !DIExpression()), !dbg !203
  %0 = load i8*, i8** %data.addr, align 8, !dbg !204
  %call = call i64 @strlen(i8* %0) #7, !dbg !205
  store i64 %call, i64* %dataLen, align 8, !dbg !203
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !206, metadata !DIExpression()), !dbg !207
  %1 = load i64, i64* %dataLen, align 8, !dbg !208
  %sub = sub i64 100, %1, !dbg !210
  %cmp = icmp ugt i64 %sub, 1, !dbg !211
  br i1 %cmp, label %if.then, label %if.end11, !dbg !212

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !213
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !215
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !216
  %cmp2 = icmp ne %struct._IO_FILE* %2, null, !dbg !218
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !219

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data.addr, align 8, !dbg !220
  %4 = load i64, i64* %dataLen, align 8, !dbg !223
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !224
  %5 = load i64, i64* %dataLen, align 8, !dbg !225
  %sub4 = sub i64 100, %5, !dbg !226
  %conv = trunc i64 %sub4 to i32, !dbg !227
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !228
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !229
  %cmp6 = icmp eq i8* %call5, null, !dbg !230
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !231

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !232
  %7 = load i8*, i8** %data.addr, align 8, !dbg !234
  %8 = load i64, i64* %dataLen, align 8, !dbg !235
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !234
  store i8 0, i8* %arrayidx, align 1, !dbg !236
  br label %if.end, !dbg !237

if.end:                                           ; preds = %if.then8, %if.then3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !238
  %call9 = call i32 @fclose(%struct._IO_FILE* %9), !dbg !239
  br label %if.end10, !dbg !240

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !241

if.end11:                                         ; preds = %if.end10, %entry
  %10 = load i8*, i8** %data.addr, align 8, !dbg !242
  ret i8* %10, !dbg !243
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !244 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !247, metadata !DIExpression()), !dbg !249
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !250
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !250
  call void @llvm.va_start(i8* %arraydecay1), !dbg !250
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !251
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !252
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !253
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !253
  call void @llvm.va_end(i8* %arraydecay34), !dbg !253
  ret void, !dbg !254
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !255 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !256, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !258, metadata !DIExpression()), !dbg !259
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !259
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !259
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !260
  store i8* %arraydecay, i8** %data, align 8, !dbg !261
  %1 = load i8*, i8** %data, align 8, !dbg !262
  %call = call i8* @goodB2GSource(i8* %1), !dbg !263
  store i8* %call, i8** %data, align 8, !dbg !264
  %2 = load i8*, i8** %data, align 8, !dbg !265
  %3 = load i8*, i8** %data, align 8, !dbg !266
  call void (i8*, ...) @goodB2GVaSink(i8* %2, i8* %3), !dbg !267
  ret void, !dbg !268
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_42_good() #0 !dbg !269 {
entry:
  call void @goodG2B(), !dbg !270
  call void @goodB2G(), !dbg !271
  ret void, !dbg !272
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_vprintf_42.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_179/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "badSource", scope: !1, file: !1, line: 34, type: !11, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "data", arg: 1, scope: !10, file: !1, line: 34, type: !13)
!16 = !DILocation(line: 34, column: 25, scope: !10)
!17 = !DILocalVariable(name: "dataLen", scope: !18, file: !1, line: 38, type: !19)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 36, column: 5)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 46, baseType: !21)
!20 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!21 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !DILocation(line: 38, column: 16, scope: !18)
!23 = !DILocation(line: 38, column: 33, scope: !18)
!24 = !DILocation(line: 38, column: 26, scope: !18)
!25 = !DILocalVariable(name: "pFile", scope: !18, file: !1, line: 39, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !28, line: 7, baseType: !29)
!28 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !30, line: 49, size: 1728, elements: !31)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !47, !49, !50, !51, !55, !57, !59, !63, !66, !68, !71, !74, !75, !76, !77, !78}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !29, file: !30, line: 51, baseType: !5, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !29, file: !30, line: 54, baseType: !13, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !29, file: !30, line: 55, baseType: !13, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !29, file: !30, line: 56, baseType: !13, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !29, file: !30, line: 57, baseType: !13, size: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !29, file: !30, line: 58, baseType: !13, size: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !29, file: !30, line: 59, baseType: !13, size: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !29, file: !30, line: 60, baseType: !13, size: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !29, file: !30, line: 61, baseType: !13, size: 64, offset: 512)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !29, file: !30, line: 64, baseType: !13, size: 64, offset: 576)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !29, file: !30, line: 65, baseType: !13, size: 64, offset: 640)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !29, file: !30, line: 66, baseType: !13, size: 64, offset: 704)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !29, file: !30, line: 68, baseType: !45, size: 64, offset: 768)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !30, line: 36, flags: DIFlagFwdDecl)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !29, file: !30, line: 70, baseType: !48, size: 64, offset: 832)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !29, file: !30, line: 72, baseType: !5, size: 32, offset: 896)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !29, file: !30, line: 73, baseType: !5, size: 32, offset: 928)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !29, file: !30, line: 74, baseType: !52, size: 64, offset: 960)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !53, line: 152, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!54 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !29, file: !30, line: 77, baseType: !56, size: 16, offset: 1024)
!56 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !29, file: !30, line: 78, baseType: !58, size: 8, offset: 1040)
!58 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !29, file: !30, line: 79, baseType: !60, size: 8, offset: 1048)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 1)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !29, file: !30, line: 81, baseType: !64, size: 64, offset: 1088)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !30, line: 43, baseType: null)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !29, file: !30, line: 89, baseType: !67, size: 64, offset: 1152)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !53, line: 153, baseType: !54)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !29, file: !30, line: 91, baseType: !69, size: 64, offset: 1216)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !30, line: 37, flags: DIFlagFwdDecl)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !29, file: !30, line: 92, baseType: !72, size: 64, offset: 1280)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !30, line: 38, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !29, file: !30, line: 93, baseType: !48, size: 64, offset: 1344)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !29, file: !30, line: 94, baseType: !4, size: 64, offset: 1408)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !29, file: !30, line: 95, baseType: !19, size: 64, offset: 1472)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !29, file: !30, line: 96, baseType: !5, size: 32, offset: 1536)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !29, file: !30, line: 98, baseType: !79, size: 160, offset: 1568)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 20)
!82 = !DILocation(line: 39, column: 16, scope: !18)
!83 = !DILocation(line: 41, column: 17, scope: !84)
!84 = distinct !DILexicalBlock(scope: !18, file: !1, line: 41, column: 13)
!85 = !DILocation(line: 41, column: 16, scope: !84)
!86 = !DILocation(line: 41, column: 25, scope: !84)
!87 = !DILocation(line: 41, column: 13, scope: !18)
!88 = !DILocation(line: 43, column: 21, scope: !89)
!89 = distinct !DILexicalBlock(scope: !84, file: !1, line: 42, column: 9)
!90 = !DILocation(line: 43, column: 19, scope: !89)
!91 = !DILocation(line: 44, column: 17, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !1, line: 44, column: 17)
!93 = !DILocation(line: 44, column: 23, scope: !92)
!94 = !DILocation(line: 44, column: 17, scope: !89)
!95 = !DILocation(line: 47, column: 27, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 47, column: 21)
!97 = distinct !DILexicalBlock(scope: !92, file: !1, line: 45, column: 13)
!98 = !DILocation(line: 47, column: 32, scope: !96)
!99 = !DILocation(line: 47, column: 31, scope: !96)
!100 = !DILocation(line: 47, column: 51, scope: !96)
!101 = !DILocation(line: 47, column: 50, scope: !96)
!102 = !DILocation(line: 47, column: 41, scope: !96)
!103 = !DILocation(line: 47, column: 61, scope: !96)
!104 = !DILocation(line: 47, column: 21, scope: !96)
!105 = !DILocation(line: 47, column: 68, scope: !96)
!106 = !DILocation(line: 47, column: 21, scope: !97)
!107 = !DILocation(line: 49, column: 21, scope: !108)
!108 = distinct !DILexicalBlock(scope: !96, file: !1, line: 48, column: 17)
!109 = !DILocation(line: 51, column: 21, scope: !108)
!110 = !DILocation(line: 51, column: 26, scope: !108)
!111 = !DILocation(line: 51, column: 35, scope: !108)
!112 = !DILocation(line: 52, column: 17, scope: !108)
!113 = !DILocation(line: 53, column: 24, scope: !97)
!114 = !DILocation(line: 53, column: 17, scope: !97)
!115 = !DILocation(line: 54, column: 13, scope: !97)
!116 = !DILocation(line: 55, column: 9, scope: !89)
!117 = !DILocation(line: 57, column: 12, scope: !10)
!118 = !DILocation(line: 57, column: 5, scope: !10)
!119 = distinct !DISubprogram(name: "badVaSink", scope: !1, file: !1, line: 60, type: !120, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !13, null}
!122 = !DILocalVariable(name: "data", arg: 1, scope: !119, file: !1, line: 60, type: !13)
!123 = !DILocation(line: 60, column: 23, scope: !119)
!124 = !DILocalVariable(name: "args", scope: !125, file: !1, line: 63, type: !126)
!125 = distinct !DILexicalBlock(scope: !119, file: !1, line: 62, column: 5)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !127, line: 52, baseType: !128)
!127 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !129, line: 32, baseType: !130)
!129 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, baseType: !131)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 192, elements: !61)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !133)
!133 = !{!134, !136, !137, !138}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !132, file: !1, line: 63, baseType: !135, size: 32)
!135 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !132, file: !1, line: 63, baseType: !135, size: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !132, file: !1, line: 63, baseType: !4, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !132, file: !1, line: 63, baseType: !4, size: 64, offset: 128)
!139 = !DILocation(line: 63, column: 17, scope: !125)
!140 = !DILocation(line: 64, column: 9, scope: !125)
!141 = !DILocation(line: 66, column: 17, scope: !125)
!142 = !DILocation(line: 66, column: 23, scope: !125)
!143 = !DILocation(line: 66, column: 9, scope: !125)
!144 = !DILocation(line: 67, column: 9, scope: !125)
!145 = !DILocation(line: 69, column: 1, scope: !119)
!146 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_42_bad", scope: !1, file: !1, line: 71, type: !147, scopeLine: 72, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!147 = !DISubroutineType(types: !148)
!148 = !{null}
!149 = !DILocalVariable(name: "data", scope: !146, file: !1, line: 73, type: !13)
!150 = !DILocation(line: 73, column: 12, scope: !146)
!151 = !DILocalVariable(name: "dataBuffer", scope: !146, file: !1, line: 74, type: !152)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 100)
!155 = !DILocation(line: 74, column: 10, scope: !146)
!156 = !DILocation(line: 75, column: 12, scope: !146)
!157 = !DILocation(line: 75, column: 10, scope: !146)
!158 = !DILocation(line: 76, column: 22, scope: !146)
!159 = !DILocation(line: 76, column: 12, scope: !146)
!160 = !DILocation(line: 76, column: 10, scope: !146)
!161 = !DILocation(line: 77, column: 15, scope: !146)
!162 = !DILocation(line: 77, column: 21, scope: !146)
!163 = !DILocation(line: 77, column: 5, scope: !146)
!164 = !DILocation(line: 78, column: 1, scope: !146)
!165 = distinct !DISubprogram(name: "goodG2BSource", scope: !1, file: !1, line: 85, type: !11, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!166 = !DILocalVariable(name: "data", arg: 1, scope: !165, file: !1, line: 85, type: !13)
!167 = !DILocation(line: 85, column: 29, scope: !165)
!168 = !DILocation(line: 88, column: 12, scope: !165)
!169 = !DILocation(line: 88, column: 5, scope: !165)
!170 = !DILocation(line: 89, column: 12, scope: !165)
!171 = !DILocation(line: 89, column: 5, scope: !165)
!172 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !1, file: !1, line: 92, type: !120, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!173 = !DILocalVariable(name: "data", arg: 1, scope: !172, file: !1, line: 92, type: !13)
!174 = !DILocation(line: 92, column: 27, scope: !172)
!175 = !DILocalVariable(name: "args", scope: !176, file: !1, line: 95, type: !126)
!176 = distinct !DILexicalBlock(scope: !172, file: !1, line: 94, column: 5)
!177 = !DILocation(line: 95, column: 17, scope: !176)
!178 = !DILocation(line: 96, column: 9, scope: !176)
!179 = !DILocation(line: 98, column: 17, scope: !176)
!180 = !DILocation(line: 98, column: 23, scope: !176)
!181 = !DILocation(line: 98, column: 9, scope: !176)
!182 = !DILocation(line: 99, column: 9, scope: !176)
!183 = !DILocation(line: 101, column: 1, scope: !172)
!184 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 103, type: !147, scopeLine: 104, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!185 = !DILocalVariable(name: "data", scope: !184, file: !1, line: 105, type: !13)
!186 = !DILocation(line: 105, column: 12, scope: !184)
!187 = !DILocalVariable(name: "dataBuffer", scope: !184, file: !1, line: 106, type: !152)
!188 = !DILocation(line: 106, column: 10, scope: !184)
!189 = !DILocation(line: 107, column: 12, scope: !184)
!190 = !DILocation(line: 107, column: 10, scope: !184)
!191 = !DILocation(line: 108, column: 26, scope: !184)
!192 = !DILocation(line: 108, column: 12, scope: !184)
!193 = !DILocation(line: 108, column: 10, scope: !184)
!194 = !DILocation(line: 109, column: 19, scope: !184)
!195 = !DILocation(line: 109, column: 25, scope: !184)
!196 = !DILocation(line: 109, column: 5, scope: !184)
!197 = !DILocation(line: 110, column: 1, scope: !184)
!198 = distinct !DISubprogram(name: "goodB2GSource", scope: !1, file: !1, line: 113, type: !11, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!199 = !DILocalVariable(name: "data", arg: 1, scope: !198, file: !1, line: 113, type: !13)
!200 = !DILocation(line: 113, column: 29, scope: !198)
!201 = !DILocalVariable(name: "dataLen", scope: !202, file: !1, line: 117, type: !19)
!202 = distinct !DILexicalBlock(scope: !198, file: !1, line: 115, column: 5)
!203 = !DILocation(line: 117, column: 16, scope: !202)
!204 = !DILocation(line: 117, column: 33, scope: !202)
!205 = !DILocation(line: 117, column: 26, scope: !202)
!206 = !DILocalVariable(name: "pFile", scope: !202, file: !1, line: 118, type: !26)
!207 = !DILocation(line: 118, column: 16, scope: !202)
!208 = !DILocation(line: 120, column: 17, scope: !209)
!209 = distinct !DILexicalBlock(scope: !202, file: !1, line: 120, column: 13)
!210 = !DILocation(line: 120, column: 16, scope: !209)
!211 = !DILocation(line: 120, column: 25, scope: !209)
!212 = !DILocation(line: 120, column: 13, scope: !202)
!213 = !DILocation(line: 122, column: 21, scope: !214)
!214 = distinct !DILexicalBlock(scope: !209, file: !1, line: 121, column: 9)
!215 = !DILocation(line: 122, column: 19, scope: !214)
!216 = !DILocation(line: 123, column: 17, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !1, line: 123, column: 17)
!218 = !DILocation(line: 123, column: 23, scope: !217)
!219 = !DILocation(line: 123, column: 17, scope: !214)
!220 = !DILocation(line: 126, column: 27, scope: !221)
!221 = distinct !DILexicalBlock(scope: !222, file: !1, line: 126, column: 21)
!222 = distinct !DILexicalBlock(scope: !217, file: !1, line: 124, column: 13)
!223 = !DILocation(line: 126, column: 32, scope: !221)
!224 = !DILocation(line: 126, column: 31, scope: !221)
!225 = !DILocation(line: 126, column: 51, scope: !221)
!226 = !DILocation(line: 126, column: 50, scope: !221)
!227 = !DILocation(line: 126, column: 41, scope: !221)
!228 = !DILocation(line: 126, column: 61, scope: !221)
!229 = !DILocation(line: 126, column: 21, scope: !221)
!230 = !DILocation(line: 126, column: 68, scope: !221)
!231 = !DILocation(line: 126, column: 21, scope: !222)
!232 = !DILocation(line: 128, column: 21, scope: !233)
!233 = distinct !DILexicalBlock(scope: !221, file: !1, line: 127, column: 17)
!234 = !DILocation(line: 130, column: 21, scope: !233)
!235 = !DILocation(line: 130, column: 26, scope: !233)
!236 = !DILocation(line: 130, column: 35, scope: !233)
!237 = !DILocation(line: 131, column: 17, scope: !233)
!238 = !DILocation(line: 132, column: 24, scope: !222)
!239 = !DILocation(line: 132, column: 17, scope: !222)
!240 = !DILocation(line: 133, column: 13, scope: !222)
!241 = !DILocation(line: 134, column: 9, scope: !214)
!242 = !DILocation(line: 136, column: 12, scope: !198)
!243 = !DILocation(line: 136, column: 5, scope: !198)
!244 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !1, file: !1, line: 139, type: !120, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!245 = !DILocalVariable(name: "data", arg: 1, scope: !244, file: !1, line: 139, type: !13)
!246 = !DILocation(line: 139, column: 27, scope: !244)
!247 = !DILocalVariable(name: "args", scope: !248, file: !1, line: 142, type: !126)
!248 = distinct !DILexicalBlock(scope: !244, file: !1, line: 141, column: 5)
!249 = !DILocation(line: 142, column: 17, scope: !248)
!250 = !DILocation(line: 143, column: 9, scope: !248)
!251 = !DILocation(line: 145, column: 23, scope: !248)
!252 = !DILocation(line: 145, column: 9, scope: !248)
!253 = !DILocation(line: 146, column: 9, scope: !248)
!254 = !DILocation(line: 148, column: 1, scope: !244)
!255 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 150, type: !147, scopeLine: 151, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!256 = !DILocalVariable(name: "data", scope: !255, file: !1, line: 152, type: !13)
!257 = !DILocation(line: 152, column: 12, scope: !255)
!258 = !DILocalVariable(name: "dataBuffer", scope: !255, file: !1, line: 153, type: !152)
!259 = !DILocation(line: 153, column: 10, scope: !255)
!260 = !DILocation(line: 154, column: 12, scope: !255)
!261 = !DILocation(line: 154, column: 10, scope: !255)
!262 = !DILocation(line: 155, column: 26, scope: !255)
!263 = !DILocation(line: 155, column: 12, scope: !255)
!264 = !DILocation(line: 155, column: 10, scope: !255)
!265 = !DILocation(line: 156, column: 19, scope: !255)
!266 = !DILocation(line: 156, column: 25, scope: !255)
!267 = !DILocation(line: 156, column: 5, scope: !255)
!268 = !DILocation(line: 157, column: 1, scope: !255)
!269 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_42_good", scope: !1, file: !1, line: 159, type: !147, scopeLine: 160, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!270 = !DILocation(line: 161, column: 5, scope: !269)
!271 = !DILocation(line: 162, column: 5, scope: !269)
!272 = !DILocation(line: 163, column: 1, scope: !269)
