; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_vprintf_31.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_vprintf_31.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !10 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !17, metadata !DIExpression()), !dbg !34
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !35
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !35
  call void @llvm.va_start(i8* %arraydecay1), !dbg !35
  %0 = load i8*, i8** %data.addr, align 8, !dbg !36
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !37
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !38
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !39
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !39
  call void @llvm.va_end(i8* %arraydecay34), !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad() #0 !dbg !41 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %dataCopy = alloca i8*, align 8
  %data12 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !46, metadata !DIExpression()), !dbg !50
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !50
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !50
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !51
  store i8* %arraydecay, i8** %data, align 8, !dbg !52
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !53, metadata !DIExpression()), !dbg !58
  %1 = load i8*, i8** %data, align 8, !dbg !59
  %call = call i64 @strlen(i8* %1) #7, !dbg !60
  store i64 %call, i64* %dataLen, align 8, !dbg !58
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !61, metadata !DIExpression()), !dbg !116
  %2 = load i64, i64* %dataLen, align 8, !dbg !117
  %sub = sub i64 100, %2, !dbg !119
  %cmp = icmp ugt i64 %sub, 1, !dbg !120
  br i1 %cmp, label %if.then, label %if.end11, !dbg !121

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !122
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !124
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !125
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !127
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !128

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !129
  %5 = load i64, i64* %dataLen, align 8, !dbg !132
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !133
  %6 = load i64, i64* %dataLen, align 8, !dbg !134
  %sub4 = sub i64 100, %6, !dbg !135
  %conv = trunc i64 %sub4 to i32, !dbg !136
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !137
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !138
  %cmp6 = icmp eq i8* %call5, null, !dbg !139
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !140

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !141
  %8 = load i8*, i8** %data, align 8, !dbg !143
  %9 = load i64, i64* %dataLen, align 8, !dbg !144
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !143
  store i8 0, i8* %arrayidx, align 1, !dbg !145
  br label %if.end, !dbg !146

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !147
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !148
  br label %if.end10, !dbg !149

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !150

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !151, metadata !DIExpression()), !dbg !153
  %11 = load i8*, i8** %data, align 8, !dbg !154
  store i8* %11, i8** %dataCopy, align 8, !dbg !153
  call void @llvm.dbg.declare(metadata i8** %data12, metadata !155, metadata !DIExpression()), !dbg !156
  %12 = load i8*, i8** %dataCopy, align 8, !dbg !157
  store i8* %12, i8** %data12, align 8, !dbg !156
  %13 = load i8*, i8** %data12, align 8, !dbg !158
  %14 = load i8*, i8** %data12, align 8, !dbg !159
  call void (i8*, ...) @badVaSink(i8* %13, i8* %14), !dbg !160
  ret void, !dbg !161
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !162 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !165, metadata !DIExpression()), !dbg !167
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !168
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !168
  call void @llvm.va_start(i8* %arraydecay1), !dbg !168
  %0 = load i8*, i8** %data.addr, align 8, !dbg !169
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !170
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !171
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !172
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !172
  call void @llvm.va_end(i8* %arraydecay34), !dbg !172
  ret void, !dbg !173
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !174 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataCopy = alloca i8*, align 8
  %data1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !177, metadata !DIExpression()), !dbg !178
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !178
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !178
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !179
  store i8* %arraydecay, i8** %data, align 8, !dbg !180
  %1 = load i8*, i8** %data, align 8, !dbg !181
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !182
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !183, metadata !DIExpression()), !dbg !185
  %2 = load i8*, i8** %data, align 8, !dbg !186
  store i8* %2, i8** %dataCopy, align 8, !dbg !185
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !187, metadata !DIExpression()), !dbg !188
  %3 = load i8*, i8** %dataCopy, align 8, !dbg !189
  store i8* %3, i8** %data1, align 8, !dbg !188
  %4 = load i8*, i8** %data1, align 8, !dbg !190
  %5 = load i8*, i8** %data1, align 8, !dbg !191
  call void (i8*, ...) @goodG2BVaSink(i8* %4, i8* %5), !dbg !192
  ret void, !dbg !193
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !194 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !197, metadata !DIExpression()), !dbg !199
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !200
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !200
  call void @llvm.va_start(i8* %arraydecay1), !dbg !200
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !201
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !202
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !203
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !203
  call void @llvm.va_end(i8* %arraydecay34), !dbg !203
  ret void, !dbg !204
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !205 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %dataCopy = alloca i8*, align 8
  %data12 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !208, metadata !DIExpression()), !dbg !209
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !209
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !209
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !210
  store i8* %arraydecay, i8** %data, align 8, !dbg !211
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !212, metadata !DIExpression()), !dbg !214
  %1 = load i8*, i8** %data, align 8, !dbg !215
  %call = call i64 @strlen(i8* %1) #7, !dbg !216
  store i64 %call, i64* %dataLen, align 8, !dbg !214
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !217, metadata !DIExpression()), !dbg !218
  %2 = load i64, i64* %dataLen, align 8, !dbg !219
  %sub = sub i64 100, %2, !dbg !221
  %cmp = icmp ugt i64 %sub, 1, !dbg !222
  br i1 %cmp, label %if.then, label %if.end11, !dbg !223

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !224
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !226
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !227
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !229
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !230

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !231
  %5 = load i64, i64* %dataLen, align 8, !dbg !234
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !235
  %6 = load i64, i64* %dataLen, align 8, !dbg !236
  %sub4 = sub i64 100, %6, !dbg !237
  %conv = trunc i64 %sub4 to i32, !dbg !238
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !239
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !240
  %cmp6 = icmp eq i8* %call5, null, !dbg !241
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !242

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !243
  %8 = load i8*, i8** %data, align 8, !dbg !245
  %9 = load i64, i64* %dataLen, align 8, !dbg !246
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !245
  store i8 0, i8* %arrayidx, align 1, !dbg !247
  br label %if.end, !dbg !248

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !249
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !250
  br label %if.end10, !dbg !251

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !252

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !253, metadata !DIExpression()), !dbg !255
  %11 = load i8*, i8** %data, align 8, !dbg !256
  store i8* %11, i8** %dataCopy, align 8, !dbg !255
  call void @llvm.dbg.declare(metadata i8** %data12, metadata !257, metadata !DIExpression()), !dbg !258
  %12 = load i8*, i8** %dataCopy, align 8, !dbg !259
  store i8* %12, i8** %data12, align 8, !dbg !258
  %13 = load i8*, i8** %data12, align 8, !dbg !260
  %14 = load i8*, i8** %data12, align 8, !dbg !261
  call void (i8*, ...) @goodB2GVaSink(i8* %13, i8* %14), !dbg !262
  ret void, !dbg !263
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_31_good() #0 !dbg !264 {
entry:
  call void @goodG2B(), !dbg !265
  call void @goodB2G(), !dbg !266
  ret void, !dbg !267
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_vprintf_31.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_174/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "badVaSink", scope: !1, file: !1, line: 34, type: !11, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, null}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "data", arg: 1, scope: !10, file: !1, line: 34, type: !13)
!16 = !DILocation(line: 34, column: 23, scope: !10)
!17 = !DILocalVariable(name: "args", scope: !18, file: !1, line: 37, type: !19)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 36, column: 5)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !20, line: 52, baseType: !21)
!20 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !22, line: 32, baseType: !23)
!22 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 192, elements: !32)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !26)
!26 = !{!27, !29, !30, !31}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !25, file: !1, line: 37, baseType: !28, size: 32)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !25, file: !1, line: 37, baseType: !28, size: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !25, file: !1, line: 37, baseType: !4, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !25, file: !1, line: 37, baseType: !4, size: 64, offset: 128)
!32 = !{!33}
!33 = !DISubrange(count: 1)
!34 = !DILocation(line: 37, column: 17, scope: !18)
!35 = !DILocation(line: 38, column: 9, scope: !18)
!36 = !DILocation(line: 40, column: 17, scope: !18)
!37 = !DILocation(line: 40, column: 23, scope: !18)
!38 = !DILocation(line: 40, column: 9, scope: !18)
!39 = !DILocation(line: 41, column: 9, scope: !18)
!40 = !DILocation(line: 43, column: 1, scope: !10)
!41 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad", scope: !1, file: !1, line: 45, type: !42, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{null}
!44 = !DILocalVariable(name: "data", scope: !41, file: !1, line: 47, type: !13)
!45 = !DILocation(line: 47, column: 12, scope: !41)
!46 = !DILocalVariable(name: "dataBuffer", scope: !41, file: !1, line: 48, type: !47)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 100)
!50 = !DILocation(line: 48, column: 10, scope: !41)
!51 = !DILocation(line: 49, column: 12, scope: !41)
!52 = !DILocation(line: 49, column: 10, scope: !41)
!53 = !DILocalVariable(name: "dataLen", scope: !54, file: !1, line: 52, type: !55)
!54 = distinct !DILexicalBlock(scope: !41, file: !1, line: 50, column: 5)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 46, baseType: !57)
!56 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!57 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!58 = !DILocation(line: 52, column: 16, scope: !54)
!59 = !DILocation(line: 52, column: 33, scope: !54)
!60 = !DILocation(line: 52, column: 26, scope: !54)
!61 = !DILocalVariable(name: "pFile", scope: !54, file: !1, line: 53, type: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !64, line: 7, baseType: !65)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !66, line: 49, size: 1728, elements: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !83, !85, !86, !87, !91, !93, !95, !97, !100, !102, !105, !108, !109, !110, !111, !112}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !65, file: !66, line: 51, baseType: !5, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !65, file: !66, line: 54, baseType: !13, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !65, file: !66, line: 55, baseType: !13, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !65, file: !66, line: 56, baseType: !13, size: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !65, file: !66, line: 57, baseType: !13, size: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !65, file: !66, line: 58, baseType: !13, size: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !65, file: !66, line: 59, baseType: !13, size: 64, offset: 384)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !65, file: !66, line: 60, baseType: !13, size: 64, offset: 448)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !65, file: !66, line: 61, baseType: !13, size: 64, offset: 512)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !65, file: !66, line: 64, baseType: !13, size: 64, offset: 576)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !65, file: !66, line: 65, baseType: !13, size: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !65, file: !66, line: 66, baseType: !13, size: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !65, file: !66, line: 68, baseType: !81, size: 64, offset: 768)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !66, line: 36, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !65, file: !66, line: 70, baseType: !84, size: 64, offset: 832)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !65, file: !66, line: 72, baseType: !5, size: 32, offset: 896)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !65, file: !66, line: 73, baseType: !5, size: 32, offset: 928)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !65, file: !66, line: 74, baseType: !88, size: 64, offset: 960)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !89, line: 152, baseType: !90)
!89 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!90 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !65, file: !66, line: 77, baseType: !92, size: 16, offset: 1024)
!92 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !65, file: !66, line: 78, baseType: !94, size: 8, offset: 1040)
!94 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !65, file: !66, line: 79, baseType: !96, size: 8, offset: 1048)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !65, file: !66, line: 81, baseType: !98, size: 64, offset: 1088)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !66, line: 43, baseType: null)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !65, file: !66, line: 89, baseType: !101, size: 64, offset: 1152)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !89, line: 153, baseType: !90)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !65, file: !66, line: 91, baseType: !103, size: 64, offset: 1216)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !66, line: 37, flags: DIFlagFwdDecl)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !65, file: !66, line: 92, baseType: !106, size: 64, offset: 1280)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !66, line: 38, flags: DIFlagFwdDecl)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !65, file: !66, line: 93, baseType: !84, size: 64, offset: 1344)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !65, file: !66, line: 94, baseType: !4, size: 64, offset: 1408)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !65, file: !66, line: 95, baseType: !55, size: 64, offset: 1472)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !65, file: !66, line: 96, baseType: !5, size: 32, offset: 1536)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !65, file: !66, line: 98, baseType: !113, size: 160, offset: 1568)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 20)
!116 = !DILocation(line: 53, column: 16, scope: !54)
!117 = !DILocation(line: 55, column: 17, scope: !118)
!118 = distinct !DILexicalBlock(scope: !54, file: !1, line: 55, column: 13)
!119 = !DILocation(line: 55, column: 16, scope: !118)
!120 = !DILocation(line: 55, column: 25, scope: !118)
!121 = !DILocation(line: 55, column: 13, scope: !54)
!122 = !DILocation(line: 57, column: 21, scope: !123)
!123 = distinct !DILexicalBlock(scope: !118, file: !1, line: 56, column: 9)
!124 = !DILocation(line: 57, column: 19, scope: !123)
!125 = !DILocation(line: 58, column: 17, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !1, line: 58, column: 17)
!127 = !DILocation(line: 58, column: 23, scope: !126)
!128 = !DILocation(line: 58, column: 17, scope: !123)
!129 = !DILocation(line: 61, column: 27, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !1, line: 61, column: 21)
!131 = distinct !DILexicalBlock(scope: !126, file: !1, line: 59, column: 13)
!132 = !DILocation(line: 61, column: 32, scope: !130)
!133 = !DILocation(line: 61, column: 31, scope: !130)
!134 = !DILocation(line: 61, column: 51, scope: !130)
!135 = !DILocation(line: 61, column: 50, scope: !130)
!136 = !DILocation(line: 61, column: 41, scope: !130)
!137 = !DILocation(line: 61, column: 61, scope: !130)
!138 = !DILocation(line: 61, column: 21, scope: !130)
!139 = !DILocation(line: 61, column: 68, scope: !130)
!140 = !DILocation(line: 61, column: 21, scope: !131)
!141 = !DILocation(line: 63, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !130, file: !1, line: 62, column: 17)
!143 = !DILocation(line: 65, column: 21, scope: !142)
!144 = !DILocation(line: 65, column: 26, scope: !142)
!145 = !DILocation(line: 65, column: 35, scope: !142)
!146 = !DILocation(line: 66, column: 17, scope: !142)
!147 = !DILocation(line: 67, column: 24, scope: !131)
!148 = !DILocation(line: 67, column: 17, scope: !131)
!149 = !DILocation(line: 68, column: 13, scope: !131)
!150 = !DILocation(line: 69, column: 9, scope: !123)
!151 = !DILocalVariable(name: "dataCopy", scope: !152, file: !1, line: 72, type: !13)
!152 = distinct !DILexicalBlock(scope: !41, file: !1, line: 71, column: 5)
!153 = !DILocation(line: 72, column: 16, scope: !152)
!154 = !DILocation(line: 72, column: 27, scope: !152)
!155 = !DILocalVariable(name: "data", scope: !152, file: !1, line: 73, type: !13)
!156 = !DILocation(line: 73, column: 16, scope: !152)
!157 = !DILocation(line: 73, column: 23, scope: !152)
!158 = !DILocation(line: 74, column: 19, scope: !152)
!159 = !DILocation(line: 74, column: 25, scope: !152)
!160 = !DILocation(line: 74, column: 9, scope: !152)
!161 = !DILocation(line: 76, column: 1, scope: !41)
!162 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !1, file: !1, line: 83, type: !11, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!163 = !DILocalVariable(name: "data", arg: 1, scope: !162, file: !1, line: 83, type: !13)
!164 = !DILocation(line: 83, column: 27, scope: !162)
!165 = !DILocalVariable(name: "args", scope: !166, file: !1, line: 86, type: !19)
!166 = distinct !DILexicalBlock(scope: !162, file: !1, line: 85, column: 5)
!167 = !DILocation(line: 86, column: 17, scope: !166)
!168 = !DILocation(line: 87, column: 9, scope: !166)
!169 = !DILocation(line: 89, column: 17, scope: !166)
!170 = !DILocation(line: 89, column: 23, scope: !166)
!171 = !DILocation(line: 89, column: 9, scope: !166)
!172 = !DILocation(line: 90, column: 9, scope: !166)
!173 = !DILocation(line: 92, column: 1, scope: !162)
!174 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 94, type: !42, scopeLine: 95, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!175 = !DILocalVariable(name: "data", scope: !174, file: !1, line: 96, type: !13)
!176 = !DILocation(line: 96, column: 12, scope: !174)
!177 = !DILocalVariable(name: "dataBuffer", scope: !174, file: !1, line: 97, type: !47)
!178 = !DILocation(line: 97, column: 10, scope: !174)
!179 = !DILocation(line: 98, column: 12, scope: !174)
!180 = !DILocation(line: 98, column: 10, scope: !174)
!181 = !DILocation(line: 100, column: 12, scope: !174)
!182 = !DILocation(line: 100, column: 5, scope: !174)
!183 = !DILocalVariable(name: "dataCopy", scope: !184, file: !1, line: 102, type: !13)
!184 = distinct !DILexicalBlock(scope: !174, file: !1, line: 101, column: 5)
!185 = !DILocation(line: 102, column: 16, scope: !184)
!186 = !DILocation(line: 102, column: 27, scope: !184)
!187 = !DILocalVariable(name: "data", scope: !184, file: !1, line: 103, type: !13)
!188 = !DILocation(line: 103, column: 16, scope: !184)
!189 = !DILocation(line: 103, column: 23, scope: !184)
!190 = !DILocation(line: 104, column: 23, scope: !184)
!191 = !DILocation(line: 104, column: 29, scope: !184)
!192 = !DILocation(line: 104, column: 9, scope: !184)
!193 = !DILocation(line: 106, column: 1, scope: !174)
!194 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !1, file: !1, line: 109, type: !11, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!195 = !DILocalVariable(name: "data", arg: 1, scope: !194, file: !1, line: 109, type: !13)
!196 = !DILocation(line: 109, column: 27, scope: !194)
!197 = !DILocalVariable(name: "args", scope: !198, file: !1, line: 112, type: !19)
!198 = distinct !DILexicalBlock(scope: !194, file: !1, line: 111, column: 5)
!199 = !DILocation(line: 112, column: 17, scope: !198)
!200 = !DILocation(line: 113, column: 9, scope: !198)
!201 = !DILocation(line: 115, column: 23, scope: !198)
!202 = !DILocation(line: 115, column: 9, scope: !198)
!203 = !DILocation(line: 116, column: 9, scope: !198)
!204 = !DILocation(line: 118, column: 1, scope: !194)
!205 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 120, type: !42, scopeLine: 121, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!206 = !DILocalVariable(name: "data", scope: !205, file: !1, line: 122, type: !13)
!207 = !DILocation(line: 122, column: 12, scope: !205)
!208 = !DILocalVariable(name: "dataBuffer", scope: !205, file: !1, line: 123, type: !47)
!209 = !DILocation(line: 123, column: 10, scope: !205)
!210 = !DILocation(line: 124, column: 12, scope: !205)
!211 = !DILocation(line: 124, column: 10, scope: !205)
!212 = !DILocalVariable(name: "dataLen", scope: !213, file: !1, line: 127, type: !55)
!213 = distinct !DILexicalBlock(scope: !205, file: !1, line: 125, column: 5)
!214 = !DILocation(line: 127, column: 16, scope: !213)
!215 = !DILocation(line: 127, column: 33, scope: !213)
!216 = !DILocation(line: 127, column: 26, scope: !213)
!217 = !DILocalVariable(name: "pFile", scope: !213, file: !1, line: 128, type: !62)
!218 = !DILocation(line: 128, column: 16, scope: !213)
!219 = !DILocation(line: 130, column: 17, scope: !220)
!220 = distinct !DILexicalBlock(scope: !213, file: !1, line: 130, column: 13)
!221 = !DILocation(line: 130, column: 16, scope: !220)
!222 = !DILocation(line: 130, column: 25, scope: !220)
!223 = !DILocation(line: 130, column: 13, scope: !213)
!224 = !DILocation(line: 132, column: 21, scope: !225)
!225 = distinct !DILexicalBlock(scope: !220, file: !1, line: 131, column: 9)
!226 = !DILocation(line: 132, column: 19, scope: !225)
!227 = !DILocation(line: 133, column: 17, scope: !228)
!228 = distinct !DILexicalBlock(scope: !225, file: !1, line: 133, column: 17)
!229 = !DILocation(line: 133, column: 23, scope: !228)
!230 = !DILocation(line: 133, column: 17, scope: !225)
!231 = !DILocation(line: 136, column: 27, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !1, line: 136, column: 21)
!233 = distinct !DILexicalBlock(scope: !228, file: !1, line: 134, column: 13)
!234 = !DILocation(line: 136, column: 32, scope: !232)
!235 = !DILocation(line: 136, column: 31, scope: !232)
!236 = !DILocation(line: 136, column: 51, scope: !232)
!237 = !DILocation(line: 136, column: 50, scope: !232)
!238 = !DILocation(line: 136, column: 41, scope: !232)
!239 = !DILocation(line: 136, column: 61, scope: !232)
!240 = !DILocation(line: 136, column: 21, scope: !232)
!241 = !DILocation(line: 136, column: 68, scope: !232)
!242 = !DILocation(line: 136, column: 21, scope: !233)
!243 = !DILocation(line: 138, column: 21, scope: !244)
!244 = distinct !DILexicalBlock(scope: !232, file: !1, line: 137, column: 17)
!245 = !DILocation(line: 140, column: 21, scope: !244)
!246 = !DILocation(line: 140, column: 26, scope: !244)
!247 = !DILocation(line: 140, column: 35, scope: !244)
!248 = !DILocation(line: 141, column: 17, scope: !244)
!249 = !DILocation(line: 142, column: 24, scope: !233)
!250 = !DILocation(line: 142, column: 17, scope: !233)
!251 = !DILocation(line: 143, column: 13, scope: !233)
!252 = !DILocation(line: 144, column: 9, scope: !225)
!253 = !DILocalVariable(name: "dataCopy", scope: !254, file: !1, line: 147, type: !13)
!254 = distinct !DILexicalBlock(scope: !205, file: !1, line: 146, column: 5)
!255 = !DILocation(line: 147, column: 16, scope: !254)
!256 = !DILocation(line: 147, column: 27, scope: !254)
!257 = !DILocalVariable(name: "data", scope: !254, file: !1, line: 148, type: !13)
!258 = !DILocation(line: 148, column: 16, scope: !254)
!259 = !DILocation(line: 148, column: 23, scope: !254)
!260 = !DILocation(line: 149, column: 23, scope: !254)
!261 = !DILocation(line: 149, column: 29, scope: !254)
!262 = !DILocation(line: 149, column: 9, scope: !254)
!263 = !DILocation(line: 151, column: 1, scope: !205)
!264 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_31_good", scope: !1, file: !1, line: 153, type: !42, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!265 = !DILocation(line: 155, column: 5, scope: !264)
!266 = !DILocation(line: 156, column: 5, scope: !264)
!267 = !DILocation(line: 157, column: 1, scope: !264)
