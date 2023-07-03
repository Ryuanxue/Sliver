; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_vprintf_41.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_vprintf_41.c"
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
define dso_local void @badSink(i8* %data) #0 !dbg !41 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !44, metadata !DIExpression()), !dbg !45
  %0 = load i8*, i8** %data.addr, align 8, !dbg !46
  %1 = load i8*, i8** %data.addr, align 8, !dbg !47
  call void (i8*, ...) @badVaSink(i8* %0, i8* %1), !dbg !48
  ret void, !dbg !49
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_41_bad() #0 !dbg !50 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !55, metadata !DIExpression()), !dbg !59
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !59
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !59
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !60
  store i8* %arraydecay, i8** %data, align 8, !dbg !61
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !62, metadata !DIExpression()), !dbg !67
  %1 = load i8*, i8** %data, align 8, !dbg !68
  %call = call i64 @strlen(i8* %1) #7, !dbg !69
  store i64 %call, i64* %dataLen, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !70, metadata !DIExpression()), !dbg !125
  %2 = load i64, i64* %dataLen, align 8, !dbg !126
  %sub = sub i64 100, %2, !dbg !128
  %cmp = icmp ugt i64 %sub, 1, !dbg !129
  br i1 %cmp, label %if.then, label %if.end11, !dbg !130

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !131
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !133
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !134
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !136
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !137

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !138
  %5 = load i64, i64* %dataLen, align 8, !dbg !141
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !142
  %6 = load i64, i64* %dataLen, align 8, !dbg !143
  %sub4 = sub i64 100, %6, !dbg !144
  %conv = trunc i64 %sub4 to i32, !dbg !145
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !146
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !147
  %cmp6 = icmp eq i8* %call5, null, !dbg !148
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !149

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !150
  %8 = load i8*, i8** %data, align 8, !dbg !152
  %9 = load i64, i64* %dataLen, align 8, !dbg !153
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !152
  store i8 0, i8* %arrayidx, align 1, !dbg !154
  br label %if.end, !dbg !155

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !156
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !157
  br label %if.end10, !dbg !158

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !159

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !160
  call void @badSink(i8* %11), !dbg !161
  ret void, !dbg !162
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
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !163 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !166, metadata !DIExpression()), !dbg !168
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !169
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !169
  call void @llvm.va_start(i8* %arraydecay1), !dbg !169
  %0 = load i8*, i8** %data.addr, align 8, !dbg !170
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !171
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !172
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !173
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !173
  call void @llvm.va_end(i8* %arraydecay34), !dbg !173
  ret void, !dbg !174
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !175 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !176, metadata !DIExpression()), !dbg !177
  %0 = load i8*, i8** %data.addr, align 8, !dbg !178
  %1 = load i8*, i8** %data.addr, align 8, !dbg !179
  call void (i8*, ...) @goodG2BVaSink(i8* %0, i8* %1), !dbg !180
  ret void, !dbg !181
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !182 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !185, metadata !DIExpression()), !dbg !186
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !186
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !186
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !187
  store i8* %arraydecay, i8** %data, align 8, !dbg !188
  %1 = load i8*, i8** %data, align 8, !dbg !189
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !190
  %2 = load i8*, i8** %data, align 8, !dbg !191
  call void @goodG2BSink(i8* %2), !dbg !192
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
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !205 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !206, metadata !DIExpression()), !dbg !207
  %0 = load i8*, i8** %data.addr, align 8, !dbg !208
  %1 = load i8*, i8** %data.addr, align 8, !dbg !209
  call void (i8*, ...) @goodB2GVaSink(i8* %0, i8* %1), !dbg !210
  ret void, !dbg !211
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !212 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !215, metadata !DIExpression()), !dbg !216
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !216
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !216
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !217
  store i8* %arraydecay, i8** %data, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !219, metadata !DIExpression()), !dbg !221
  %1 = load i8*, i8** %data, align 8, !dbg !222
  %call = call i64 @strlen(i8* %1) #7, !dbg !223
  store i64 %call, i64* %dataLen, align 8, !dbg !221
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !224, metadata !DIExpression()), !dbg !225
  %2 = load i64, i64* %dataLen, align 8, !dbg !226
  %sub = sub i64 100, %2, !dbg !228
  %cmp = icmp ugt i64 %sub, 1, !dbg !229
  br i1 %cmp, label %if.then, label %if.end11, !dbg !230

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !231
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !233
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !234
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !236
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !237

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !238
  %5 = load i64, i64* %dataLen, align 8, !dbg !241
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !242
  %6 = load i64, i64* %dataLen, align 8, !dbg !243
  %sub4 = sub i64 100, %6, !dbg !244
  %conv = trunc i64 %sub4 to i32, !dbg !245
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !246
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !247
  %cmp6 = icmp eq i8* %call5, null, !dbg !248
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !249

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !250
  %8 = load i8*, i8** %data, align 8, !dbg !252
  %9 = load i64, i64* %dataLen, align 8, !dbg !253
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !252
  store i8 0, i8* %arrayidx, align 1, !dbg !254
  br label %if.end, !dbg !255

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !256
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !257
  br label %if.end10, !dbg !258

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !259

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !260
  call void @goodB2GSink(i8* %11), !dbg !261
  ret void, !dbg !262
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_41_good() #0 !dbg !263 {
entry:
  call void @goodG2B(), !dbg !264
  call void @goodB2G(), !dbg !265
  ret void, !dbg !266
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_vprintf_41.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_178/source_code")
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
!41 = distinct !DISubprogram(name: "badSink", scope: !1, file: !1, line: 45, type: !42, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !13}
!44 = !DILocalVariable(name: "data", arg: 1, scope: !41, file: !1, line: 45, type: !13)
!45 = !DILocation(line: 45, column: 21, scope: !41)
!46 = !DILocation(line: 47, column: 15, scope: !41)
!47 = !DILocation(line: 47, column: 21, scope: !41)
!48 = !DILocation(line: 47, column: 5, scope: !41)
!49 = !DILocation(line: 48, column: 1, scope: !41)
!50 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_41_bad", scope: !1, file: !1, line: 50, type: !51, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!51 = !DISubroutineType(types: !52)
!52 = !{null}
!53 = !DILocalVariable(name: "data", scope: !50, file: !1, line: 52, type: !13)
!54 = !DILocation(line: 52, column: 12, scope: !50)
!55 = !DILocalVariable(name: "dataBuffer", scope: !50, file: !1, line: 53, type: !56)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 100)
!59 = !DILocation(line: 53, column: 10, scope: !50)
!60 = !DILocation(line: 54, column: 12, scope: !50)
!61 = !DILocation(line: 54, column: 10, scope: !50)
!62 = !DILocalVariable(name: "dataLen", scope: !63, file: !1, line: 57, type: !64)
!63 = distinct !DILexicalBlock(scope: !50, file: !1, line: 55, column: 5)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 46, baseType: !66)
!65 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!66 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!67 = !DILocation(line: 57, column: 16, scope: !63)
!68 = !DILocation(line: 57, column: 33, scope: !63)
!69 = !DILocation(line: 57, column: 26, scope: !63)
!70 = !DILocalVariable(name: "pFile", scope: !63, file: !1, line: 58, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !74)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !76)
!75 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !92, !94, !95, !96, !100, !102, !104, !106, !109, !111, !114, !117, !118, !119, !120, !121}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !74, file: !75, line: 51, baseType: !5, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !74, file: !75, line: 54, baseType: !13, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !74, file: !75, line: 55, baseType: !13, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !74, file: !75, line: 56, baseType: !13, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !74, file: !75, line: 57, baseType: !13, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !74, file: !75, line: 58, baseType: !13, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !74, file: !75, line: 59, baseType: !13, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !74, file: !75, line: 60, baseType: !13, size: 64, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !74, file: !75, line: 61, baseType: !13, size: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !74, file: !75, line: 64, baseType: !13, size: 64, offset: 576)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !74, file: !75, line: 65, baseType: !13, size: 64, offset: 640)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !74, file: !75, line: 66, baseType: !13, size: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !74, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !75, line: 36, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !74, file: !75, line: 70, baseType: !93, size: 64, offset: 832)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !74, file: !75, line: 72, baseType: !5, size: 32, offset: 896)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !74, file: !75, line: 73, baseType: !5, size: 32, offset: 928)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !74, file: !75, line: 74, baseType: !97, size: 64, offset: 960)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !98, line: 152, baseType: !99)
!98 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!99 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !74, file: !75, line: 77, baseType: !101, size: 16, offset: 1024)
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !74, file: !75, line: 78, baseType: !103, size: 8, offset: 1040)
!103 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !74, file: !75, line: 79, baseType: !105, size: 8, offset: 1048)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !74, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !75, line: 43, baseType: null)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !74, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !98, line: 153, baseType: !99)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !74, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !75, line: 37, flags: DIFlagFwdDecl)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !74, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !75, line: 38, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !74, file: !75, line: 93, baseType: !93, size: 64, offset: 1344)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !74, file: !75, line: 94, baseType: !4, size: 64, offset: 1408)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !74, file: !75, line: 95, baseType: !64, size: 64, offset: 1472)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !74, file: !75, line: 96, baseType: !5, size: 32, offset: 1536)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !74, file: !75, line: 98, baseType: !122, size: 160, offset: 1568)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 20)
!125 = !DILocation(line: 58, column: 16, scope: !63)
!126 = !DILocation(line: 60, column: 17, scope: !127)
!127 = distinct !DILexicalBlock(scope: !63, file: !1, line: 60, column: 13)
!128 = !DILocation(line: 60, column: 16, scope: !127)
!129 = !DILocation(line: 60, column: 25, scope: !127)
!130 = !DILocation(line: 60, column: 13, scope: !63)
!131 = !DILocation(line: 62, column: 21, scope: !132)
!132 = distinct !DILexicalBlock(scope: !127, file: !1, line: 61, column: 9)
!133 = !DILocation(line: 62, column: 19, scope: !132)
!134 = !DILocation(line: 63, column: 17, scope: !135)
!135 = distinct !DILexicalBlock(scope: !132, file: !1, line: 63, column: 17)
!136 = !DILocation(line: 63, column: 23, scope: !135)
!137 = !DILocation(line: 63, column: 17, scope: !132)
!138 = !DILocation(line: 66, column: 27, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !1, line: 66, column: 21)
!140 = distinct !DILexicalBlock(scope: !135, file: !1, line: 64, column: 13)
!141 = !DILocation(line: 66, column: 32, scope: !139)
!142 = !DILocation(line: 66, column: 31, scope: !139)
!143 = !DILocation(line: 66, column: 51, scope: !139)
!144 = !DILocation(line: 66, column: 50, scope: !139)
!145 = !DILocation(line: 66, column: 41, scope: !139)
!146 = !DILocation(line: 66, column: 61, scope: !139)
!147 = !DILocation(line: 66, column: 21, scope: !139)
!148 = !DILocation(line: 66, column: 68, scope: !139)
!149 = !DILocation(line: 66, column: 21, scope: !140)
!150 = !DILocation(line: 68, column: 21, scope: !151)
!151 = distinct !DILexicalBlock(scope: !139, file: !1, line: 67, column: 17)
!152 = !DILocation(line: 70, column: 21, scope: !151)
!153 = !DILocation(line: 70, column: 26, scope: !151)
!154 = !DILocation(line: 70, column: 35, scope: !151)
!155 = !DILocation(line: 71, column: 17, scope: !151)
!156 = !DILocation(line: 72, column: 24, scope: !140)
!157 = !DILocation(line: 72, column: 17, scope: !140)
!158 = !DILocation(line: 73, column: 13, scope: !140)
!159 = !DILocation(line: 74, column: 9, scope: !132)
!160 = !DILocation(line: 76, column: 13, scope: !50)
!161 = !DILocation(line: 76, column: 5, scope: !50)
!162 = !DILocation(line: 77, column: 1, scope: !50)
!163 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !1, file: !1, line: 84, type: !11, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!164 = !DILocalVariable(name: "data", arg: 1, scope: !163, file: !1, line: 84, type: !13)
!165 = !DILocation(line: 84, column: 27, scope: !163)
!166 = !DILocalVariable(name: "args", scope: !167, file: !1, line: 87, type: !19)
!167 = distinct !DILexicalBlock(scope: !163, file: !1, line: 86, column: 5)
!168 = !DILocation(line: 87, column: 17, scope: !167)
!169 = !DILocation(line: 88, column: 9, scope: !167)
!170 = !DILocation(line: 90, column: 17, scope: !167)
!171 = !DILocation(line: 90, column: 23, scope: !167)
!172 = !DILocation(line: 90, column: 9, scope: !167)
!173 = !DILocation(line: 91, column: 9, scope: !167)
!174 = !DILocation(line: 93, column: 1, scope: !163)
!175 = distinct !DISubprogram(name: "goodG2BSink", scope: !1, file: !1, line: 95, type: !42, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!176 = !DILocalVariable(name: "data", arg: 1, scope: !175, file: !1, line: 95, type: !13)
!177 = !DILocation(line: 95, column: 25, scope: !175)
!178 = !DILocation(line: 97, column: 19, scope: !175)
!179 = !DILocation(line: 97, column: 25, scope: !175)
!180 = !DILocation(line: 97, column: 5, scope: !175)
!181 = !DILocation(line: 98, column: 1, scope: !175)
!182 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 100, type: !51, scopeLine: 101, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!183 = !DILocalVariable(name: "data", scope: !182, file: !1, line: 102, type: !13)
!184 = !DILocation(line: 102, column: 12, scope: !182)
!185 = !DILocalVariable(name: "dataBuffer", scope: !182, file: !1, line: 103, type: !56)
!186 = !DILocation(line: 103, column: 10, scope: !182)
!187 = !DILocation(line: 104, column: 12, scope: !182)
!188 = !DILocation(line: 104, column: 10, scope: !182)
!189 = !DILocation(line: 106, column: 12, scope: !182)
!190 = !DILocation(line: 106, column: 5, scope: !182)
!191 = !DILocation(line: 107, column: 17, scope: !182)
!192 = !DILocation(line: 107, column: 5, scope: !182)
!193 = !DILocation(line: 108, column: 1, scope: !182)
!194 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !1, file: !1, line: 111, type: !11, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!195 = !DILocalVariable(name: "data", arg: 1, scope: !194, file: !1, line: 111, type: !13)
!196 = !DILocation(line: 111, column: 27, scope: !194)
!197 = !DILocalVariable(name: "args", scope: !198, file: !1, line: 114, type: !19)
!198 = distinct !DILexicalBlock(scope: !194, file: !1, line: 113, column: 5)
!199 = !DILocation(line: 114, column: 17, scope: !198)
!200 = !DILocation(line: 115, column: 9, scope: !198)
!201 = !DILocation(line: 117, column: 23, scope: !198)
!202 = !DILocation(line: 117, column: 9, scope: !198)
!203 = !DILocation(line: 118, column: 9, scope: !198)
!204 = !DILocation(line: 120, column: 1, scope: !194)
!205 = distinct !DISubprogram(name: "goodB2GSink", scope: !1, file: !1, line: 122, type: !42, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!206 = !DILocalVariable(name: "data", arg: 1, scope: !205, file: !1, line: 122, type: !13)
!207 = !DILocation(line: 122, column: 25, scope: !205)
!208 = !DILocation(line: 124, column: 19, scope: !205)
!209 = !DILocation(line: 124, column: 25, scope: !205)
!210 = !DILocation(line: 124, column: 5, scope: !205)
!211 = !DILocation(line: 125, column: 1, scope: !205)
!212 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 127, type: !51, scopeLine: 128, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!213 = !DILocalVariable(name: "data", scope: !212, file: !1, line: 129, type: !13)
!214 = !DILocation(line: 129, column: 12, scope: !212)
!215 = !DILocalVariable(name: "dataBuffer", scope: !212, file: !1, line: 130, type: !56)
!216 = !DILocation(line: 130, column: 10, scope: !212)
!217 = !DILocation(line: 131, column: 12, scope: !212)
!218 = !DILocation(line: 131, column: 10, scope: !212)
!219 = !DILocalVariable(name: "dataLen", scope: !220, file: !1, line: 134, type: !64)
!220 = distinct !DILexicalBlock(scope: !212, file: !1, line: 132, column: 5)
!221 = !DILocation(line: 134, column: 16, scope: !220)
!222 = !DILocation(line: 134, column: 33, scope: !220)
!223 = !DILocation(line: 134, column: 26, scope: !220)
!224 = !DILocalVariable(name: "pFile", scope: !220, file: !1, line: 135, type: !71)
!225 = !DILocation(line: 135, column: 16, scope: !220)
!226 = !DILocation(line: 137, column: 17, scope: !227)
!227 = distinct !DILexicalBlock(scope: !220, file: !1, line: 137, column: 13)
!228 = !DILocation(line: 137, column: 16, scope: !227)
!229 = !DILocation(line: 137, column: 25, scope: !227)
!230 = !DILocation(line: 137, column: 13, scope: !220)
!231 = !DILocation(line: 139, column: 21, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !1, line: 138, column: 9)
!233 = !DILocation(line: 139, column: 19, scope: !232)
!234 = !DILocation(line: 140, column: 17, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !1, line: 140, column: 17)
!236 = !DILocation(line: 140, column: 23, scope: !235)
!237 = !DILocation(line: 140, column: 17, scope: !232)
!238 = !DILocation(line: 143, column: 27, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !1, line: 143, column: 21)
!240 = distinct !DILexicalBlock(scope: !235, file: !1, line: 141, column: 13)
!241 = !DILocation(line: 143, column: 32, scope: !239)
!242 = !DILocation(line: 143, column: 31, scope: !239)
!243 = !DILocation(line: 143, column: 51, scope: !239)
!244 = !DILocation(line: 143, column: 50, scope: !239)
!245 = !DILocation(line: 143, column: 41, scope: !239)
!246 = !DILocation(line: 143, column: 61, scope: !239)
!247 = !DILocation(line: 143, column: 21, scope: !239)
!248 = !DILocation(line: 143, column: 68, scope: !239)
!249 = !DILocation(line: 143, column: 21, scope: !240)
!250 = !DILocation(line: 145, column: 21, scope: !251)
!251 = distinct !DILexicalBlock(scope: !239, file: !1, line: 144, column: 17)
!252 = !DILocation(line: 147, column: 21, scope: !251)
!253 = !DILocation(line: 147, column: 26, scope: !251)
!254 = !DILocation(line: 147, column: 35, scope: !251)
!255 = !DILocation(line: 148, column: 17, scope: !251)
!256 = !DILocation(line: 149, column: 24, scope: !240)
!257 = !DILocation(line: 149, column: 17, scope: !240)
!258 = !DILocation(line: 150, column: 13, scope: !240)
!259 = !DILocation(line: 151, column: 9, scope: !232)
!260 = !DILocation(line: 153, column: 17, scope: !212)
!261 = !DILocation(line: 153, column: 5, scope: !212)
!262 = !DILocation(line: 154, column: 1, scope: !212)
!263 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_41_good", scope: !1, file: !1, line: 156, type: !51, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!264 = !DILocation(line: 158, column: 5, scope: !263)
!265 = !DILocation(line: 159, column: 5, scope: !263)
!266 = !DILocation(line: 160, column: 1, scope: !263)
