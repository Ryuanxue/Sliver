; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_vprintf_32.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_vprintf_32.c"
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad() #0 !dbg !41 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %data13 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !46, metadata !DIExpression()), !dbg !48
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !48
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !49, metadata !DIExpression()), !dbg !50
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !50
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !51, metadata !DIExpression()), !dbg !55
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !55
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !55
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !56
  store i8* %arraydecay, i8** %data, align 8, !dbg !57
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !58, metadata !DIExpression()), !dbg !60
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !61
  %2 = load i8*, i8** %1, align 8, !dbg !62
  store i8* %2, i8** %data1, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !63, metadata !DIExpression()), !dbg !68
  %3 = load i8*, i8** %data1, align 8, !dbg !69
  %call = call i64 @strlen(i8* %3) #7, !dbg !70
  store i64 %call, i64* %dataLen, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !71, metadata !DIExpression()), !dbg !126
  %4 = load i64, i64* %dataLen, align 8, !dbg !127
  %sub = sub i64 100, %4, !dbg !129
  %cmp = icmp ugt i64 %sub, 1, !dbg !130
  br i1 %cmp, label %if.then, label %if.end12, !dbg !131

if.then:                                          ; preds = %entry
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !132
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !134
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !135
  %cmp3 = icmp ne %struct._IO_FILE* %5, null, !dbg !137
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !138

if.then4:                                         ; preds = %if.then
  %6 = load i8*, i8** %data1, align 8, !dbg !139
  %7 = load i64, i64* %dataLen, align 8, !dbg !142
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7, !dbg !143
  %8 = load i64, i64* %dataLen, align 8, !dbg !144
  %sub5 = sub i64 100, %8, !dbg !145
  %conv = trunc i64 %sub5 to i32, !dbg !146
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !147
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %9), !dbg !148
  %cmp7 = icmp eq i8* %call6, null, !dbg !149
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !150

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !151
  %10 = load i8*, i8** %data1, align 8, !dbg !153
  %11 = load i64, i64* %dataLen, align 8, !dbg !154
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !153
  store i8 0, i8* %arrayidx, align 1, !dbg !155
  br label %if.end, !dbg !156

if.end:                                           ; preds = %if.then9, %if.then4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !157
  %call10 = call i32 @fclose(%struct._IO_FILE* %12), !dbg !158
  br label %if.end11, !dbg !159

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end12, !dbg !160

if.end12:                                         ; preds = %if.end11, %entry
  %13 = load i8*, i8** %data1, align 8, !dbg !161
  %14 = load i8**, i8*** %dataPtr1, align 8, !dbg !162
  store i8* %13, i8** %14, align 8, !dbg !163
  call void @llvm.dbg.declare(metadata i8** %data13, metadata !164, metadata !DIExpression()), !dbg !166
  %15 = load i8**, i8*** %dataPtr2, align 8, !dbg !167
  %16 = load i8*, i8** %15, align 8, !dbg !168
  store i8* %16, i8** %data13, align 8, !dbg !166
  %17 = load i8*, i8** %data13, align 8, !dbg !169
  %18 = load i8*, i8** %data13, align 8, !dbg !170
  call void (i8*, ...) @badVaSink(i8* %17, i8* %18), !dbg !171
  ret void, !dbg !172
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
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !173 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !176, metadata !DIExpression()), !dbg !178
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !179
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !179
  call void @llvm.va_start(i8* %arraydecay1), !dbg !179
  %0 = load i8*, i8** %data.addr, align 8, !dbg !180
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !181
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !182
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !183
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !183
  call void @llvm.va_end(i8* %arraydecay34), !dbg !183
  ret void, !dbg !184
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !185 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !188, metadata !DIExpression()), !dbg !189
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !189
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !190, metadata !DIExpression()), !dbg !191
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !191
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !192, metadata !DIExpression()), !dbg !193
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !193
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !193
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !194
  store i8* %arraydecay, i8** %data, align 8, !dbg !195
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !196, metadata !DIExpression()), !dbg !198
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !199
  %2 = load i8*, i8** %1, align 8, !dbg !200
  store i8* %2, i8** %data1, align 8, !dbg !198
  %3 = load i8*, i8** %data1, align 8, !dbg !201
  %call = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !202
  %4 = load i8*, i8** %data1, align 8, !dbg !203
  %5 = load i8**, i8*** %dataPtr1, align 8, !dbg !204
  store i8* %4, i8** %5, align 8, !dbg !205
  call void @llvm.dbg.declare(metadata i8** %data2, metadata !206, metadata !DIExpression()), !dbg !208
  %6 = load i8**, i8*** %dataPtr2, align 8, !dbg !209
  %7 = load i8*, i8** %6, align 8, !dbg !210
  store i8* %7, i8** %data2, align 8, !dbg !208
  %8 = load i8*, i8** %data2, align 8, !dbg !211
  %9 = load i8*, i8** %data2, align 8, !dbg !212
  call void (i8*, ...) @goodG2BVaSink(i8* %8, i8* %9), !dbg !213
  ret void, !dbg !214
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !215 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !218, metadata !DIExpression()), !dbg !220
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !221
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !221
  call void @llvm.va_start(i8* %arraydecay1), !dbg !221
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !222
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !223
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !224
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !224
  call void @llvm.va_end(i8* %arraydecay34), !dbg !224
  ret void, !dbg !225
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !226 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %data13 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !229, metadata !DIExpression()), !dbg !230
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !230
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !231, metadata !DIExpression()), !dbg !232
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !232
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !233, metadata !DIExpression()), !dbg !234
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !234
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !234
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !235
  store i8* %arraydecay, i8** %data, align 8, !dbg !236
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !237, metadata !DIExpression()), !dbg !239
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !240
  %2 = load i8*, i8** %1, align 8, !dbg !241
  store i8* %2, i8** %data1, align 8, !dbg !239
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !242, metadata !DIExpression()), !dbg !244
  %3 = load i8*, i8** %data1, align 8, !dbg !245
  %call = call i64 @strlen(i8* %3) #7, !dbg !246
  store i64 %call, i64* %dataLen, align 8, !dbg !244
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !247, metadata !DIExpression()), !dbg !248
  %4 = load i64, i64* %dataLen, align 8, !dbg !249
  %sub = sub i64 100, %4, !dbg !251
  %cmp = icmp ugt i64 %sub, 1, !dbg !252
  br i1 %cmp, label %if.then, label %if.end12, !dbg !253

if.then:                                          ; preds = %entry
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !254
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !256
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !257
  %cmp3 = icmp ne %struct._IO_FILE* %5, null, !dbg !259
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !260

if.then4:                                         ; preds = %if.then
  %6 = load i8*, i8** %data1, align 8, !dbg !261
  %7 = load i64, i64* %dataLen, align 8, !dbg !264
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7, !dbg !265
  %8 = load i64, i64* %dataLen, align 8, !dbg !266
  %sub5 = sub i64 100, %8, !dbg !267
  %conv = trunc i64 %sub5 to i32, !dbg !268
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !269
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %9), !dbg !270
  %cmp7 = icmp eq i8* %call6, null, !dbg !271
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !272

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !273
  %10 = load i8*, i8** %data1, align 8, !dbg !275
  %11 = load i64, i64* %dataLen, align 8, !dbg !276
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !275
  store i8 0, i8* %arrayidx, align 1, !dbg !277
  br label %if.end, !dbg !278

if.end:                                           ; preds = %if.then9, %if.then4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !279
  %call10 = call i32 @fclose(%struct._IO_FILE* %12), !dbg !280
  br label %if.end11, !dbg !281

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end12, !dbg !282

if.end12:                                         ; preds = %if.end11, %entry
  %13 = load i8*, i8** %data1, align 8, !dbg !283
  %14 = load i8**, i8*** %dataPtr1, align 8, !dbg !284
  store i8* %13, i8** %14, align 8, !dbg !285
  call void @llvm.dbg.declare(metadata i8** %data13, metadata !286, metadata !DIExpression()), !dbg !288
  %15 = load i8**, i8*** %dataPtr2, align 8, !dbg !289
  %16 = load i8*, i8** %15, align 8, !dbg !290
  store i8* %16, i8** %data13, align 8, !dbg !288
  %17 = load i8*, i8** %data13, align 8, !dbg !291
  %18 = load i8*, i8** %data13, align 8, !dbg !292
  call void (i8*, ...) @goodB2GVaSink(i8* %17, i8* %18), !dbg !293
  ret void, !dbg !294
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_32_good() #0 !dbg !295 {
entry:
  call void @goodG2B(), !dbg !296
  call void @goodB2G(), !dbg !297
  ret void, !dbg !298
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_vprintf_32.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_175/source_code")
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
!41 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad", scope: !1, file: !1, line: 45, type: !42, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{null}
!44 = !DILocalVariable(name: "data", scope: !41, file: !1, line: 47, type: !13)
!45 = !DILocation(line: 47, column: 12, scope: !41)
!46 = !DILocalVariable(name: "dataPtr1", scope: !41, file: !1, line: 48, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!48 = !DILocation(line: 48, column: 13, scope: !41)
!49 = !DILocalVariable(name: "dataPtr2", scope: !41, file: !1, line: 49, type: !47)
!50 = !DILocation(line: 49, column: 13, scope: !41)
!51 = !DILocalVariable(name: "dataBuffer", scope: !41, file: !1, line: 50, type: !52)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 100)
!55 = !DILocation(line: 50, column: 10, scope: !41)
!56 = !DILocation(line: 51, column: 12, scope: !41)
!57 = !DILocation(line: 51, column: 10, scope: !41)
!58 = !DILocalVariable(name: "data", scope: !59, file: !1, line: 53, type: !13)
!59 = distinct !DILexicalBlock(scope: !41, file: !1, line: 52, column: 5)
!60 = !DILocation(line: 53, column: 16, scope: !59)
!61 = !DILocation(line: 53, column: 24, scope: !59)
!62 = !DILocation(line: 53, column: 23, scope: !59)
!63 = !DILocalVariable(name: "dataLen", scope: !64, file: !1, line: 56, type: !65)
!64 = distinct !DILexicalBlock(scope: !59, file: !1, line: 54, column: 9)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !66, line: 46, baseType: !67)
!66 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!67 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!68 = !DILocation(line: 56, column: 20, scope: !64)
!69 = !DILocation(line: 56, column: 37, scope: !64)
!70 = !DILocation(line: 56, column: 30, scope: !64)
!71 = !DILocalVariable(name: "pFile", scope: !64, file: !1, line: 57, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !74, line: 7, baseType: !75)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !76, line: 49, size: 1728, elements: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !93, !95, !96, !97, !101, !103, !105, !107, !110, !112, !115, !118, !119, !120, !121, !122}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !75, file: !76, line: 51, baseType: !5, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !75, file: !76, line: 54, baseType: !13, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !75, file: !76, line: 55, baseType: !13, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !75, file: !76, line: 56, baseType: !13, size: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !75, file: !76, line: 57, baseType: !13, size: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !75, file: !76, line: 58, baseType: !13, size: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !75, file: !76, line: 59, baseType: !13, size: 64, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !75, file: !76, line: 60, baseType: !13, size: 64, offset: 448)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !75, file: !76, line: 61, baseType: !13, size: 64, offset: 512)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !75, file: !76, line: 64, baseType: !13, size: 64, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !75, file: !76, line: 65, baseType: !13, size: 64, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !75, file: !76, line: 66, baseType: !13, size: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !75, file: !76, line: 68, baseType: !91, size: 64, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !76, line: 36, flags: DIFlagFwdDecl)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !75, file: !76, line: 70, baseType: !94, size: 64, offset: 832)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !75, file: !76, line: 72, baseType: !5, size: 32, offset: 896)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !75, file: !76, line: 73, baseType: !5, size: 32, offset: 928)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !75, file: !76, line: 74, baseType: !98, size: 64, offset: 960)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !99, line: 152, baseType: !100)
!99 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!100 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !75, file: !76, line: 77, baseType: !102, size: 16, offset: 1024)
!102 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !75, file: !76, line: 78, baseType: !104, size: 8, offset: 1040)
!104 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !75, file: !76, line: 79, baseType: !106, size: 8, offset: 1048)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !75, file: !76, line: 81, baseType: !108, size: 64, offset: 1088)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !76, line: 43, baseType: null)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !75, file: !76, line: 89, baseType: !111, size: 64, offset: 1152)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !99, line: 153, baseType: !100)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !75, file: !76, line: 91, baseType: !113, size: 64, offset: 1216)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !76, line: 37, flags: DIFlagFwdDecl)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !75, file: !76, line: 92, baseType: !116, size: 64, offset: 1280)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !76, line: 38, flags: DIFlagFwdDecl)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !75, file: !76, line: 93, baseType: !94, size: 64, offset: 1344)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !75, file: !76, line: 94, baseType: !4, size: 64, offset: 1408)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !75, file: !76, line: 95, baseType: !65, size: 64, offset: 1472)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !75, file: !76, line: 96, baseType: !5, size: 32, offset: 1536)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !75, file: !76, line: 98, baseType: !123, size: 160, offset: 1568)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 20)
!126 = !DILocation(line: 57, column: 20, scope: !64)
!127 = !DILocation(line: 59, column: 21, scope: !128)
!128 = distinct !DILexicalBlock(scope: !64, file: !1, line: 59, column: 17)
!129 = !DILocation(line: 59, column: 20, scope: !128)
!130 = !DILocation(line: 59, column: 29, scope: !128)
!131 = !DILocation(line: 59, column: 17, scope: !64)
!132 = !DILocation(line: 61, column: 25, scope: !133)
!133 = distinct !DILexicalBlock(scope: !128, file: !1, line: 60, column: 13)
!134 = !DILocation(line: 61, column: 23, scope: !133)
!135 = !DILocation(line: 62, column: 21, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !1, line: 62, column: 21)
!137 = !DILocation(line: 62, column: 27, scope: !136)
!138 = !DILocation(line: 62, column: 21, scope: !133)
!139 = !DILocation(line: 65, column: 31, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !1, line: 65, column: 25)
!141 = distinct !DILexicalBlock(scope: !136, file: !1, line: 63, column: 17)
!142 = !DILocation(line: 65, column: 36, scope: !140)
!143 = !DILocation(line: 65, column: 35, scope: !140)
!144 = !DILocation(line: 65, column: 55, scope: !140)
!145 = !DILocation(line: 65, column: 54, scope: !140)
!146 = !DILocation(line: 65, column: 45, scope: !140)
!147 = !DILocation(line: 65, column: 65, scope: !140)
!148 = !DILocation(line: 65, column: 25, scope: !140)
!149 = !DILocation(line: 65, column: 72, scope: !140)
!150 = !DILocation(line: 65, column: 25, scope: !141)
!151 = !DILocation(line: 67, column: 25, scope: !152)
!152 = distinct !DILexicalBlock(scope: !140, file: !1, line: 66, column: 21)
!153 = !DILocation(line: 69, column: 25, scope: !152)
!154 = !DILocation(line: 69, column: 30, scope: !152)
!155 = !DILocation(line: 69, column: 39, scope: !152)
!156 = !DILocation(line: 70, column: 21, scope: !152)
!157 = !DILocation(line: 71, column: 28, scope: !141)
!158 = !DILocation(line: 71, column: 21, scope: !141)
!159 = !DILocation(line: 72, column: 17, scope: !141)
!160 = !DILocation(line: 73, column: 13, scope: !133)
!161 = !DILocation(line: 75, column: 21, scope: !59)
!162 = !DILocation(line: 75, column: 10, scope: !59)
!163 = !DILocation(line: 75, column: 19, scope: !59)
!164 = !DILocalVariable(name: "data", scope: !165, file: !1, line: 78, type: !13)
!165 = distinct !DILexicalBlock(scope: !41, file: !1, line: 77, column: 5)
!166 = !DILocation(line: 78, column: 16, scope: !165)
!167 = !DILocation(line: 78, column: 24, scope: !165)
!168 = !DILocation(line: 78, column: 23, scope: !165)
!169 = !DILocation(line: 79, column: 19, scope: !165)
!170 = !DILocation(line: 79, column: 25, scope: !165)
!171 = !DILocation(line: 79, column: 9, scope: !165)
!172 = !DILocation(line: 81, column: 1, scope: !41)
!173 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !1, file: !1, line: 88, type: !11, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!174 = !DILocalVariable(name: "data", arg: 1, scope: !173, file: !1, line: 88, type: !13)
!175 = !DILocation(line: 88, column: 27, scope: !173)
!176 = !DILocalVariable(name: "args", scope: !177, file: !1, line: 91, type: !19)
!177 = distinct !DILexicalBlock(scope: !173, file: !1, line: 90, column: 5)
!178 = !DILocation(line: 91, column: 17, scope: !177)
!179 = !DILocation(line: 92, column: 9, scope: !177)
!180 = !DILocation(line: 94, column: 17, scope: !177)
!181 = !DILocation(line: 94, column: 23, scope: !177)
!182 = !DILocation(line: 94, column: 9, scope: !177)
!183 = !DILocation(line: 95, column: 9, scope: !177)
!184 = !DILocation(line: 97, column: 1, scope: !173)
!185 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 99, type: !42, scopeLine: 100, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!186 = !DILocalVariable(name: "data", scope: !185, file: !1, line: 101, type: !13)
!187 = !DILocation(line: 101, column: 12, scope: !185)
!188 = !DILocalVariable(name: "dataPtr1", scope: !185, file: !1, line: 102, type: !47)
!189 = !DILocation(line: 102, column: 13, scope: !185)
!190 = !DILocalVariable(name: "dataPtr2", scope: !185, file: !1, line: 103, type: !47)
!191 = !DILocation(line: 103, column: 13, scope: !185)
!192 = !DILocalVariable(name: "dataBuffer", scope: !185, file: !1, line: 104, type: !52)
!193 = !DILocation(line: 104, column: 10, scope: !185)
!194 = !DILocation(line: 105, column: 12, scope: !185)
!195 = !DILocation(line: 105, column: 10, scope: !185)
!196 = !DILocalVariable(name: "data", scope: !197, file: !1, line: 107, type: !13)
!197 = distinct !DILexicalBlock(scope: !185, file: !1, line: 106, column: 5)
!198 = !DILocation(line: 107, column: 16, scope: !197)
!199 = !DILocation(line: 107, column: 24, scope: !197)
!200 = !DILocation(line: 107, column: 23, scope: !197)
!201 = !DILocation(line: 109, column: 16, scope: !197)
!202 = !DILocation(line: 109, column: 9, scope: !197)
!203 = !DILocation(line: 110, column: 21, scope: !197)
!204 = !DILocation(line: 110, column: 10, scope: !197)
!205 = !DILocation(line: 110, column: 19, scope: !197)
!206 = !DILocalVariable(name: "data", scope: !207, file: !1, line: 113, type: !13)
!207 = distinct !DILexicalBlock(scope: !185, file: !1, line: 112, column: 5)
!208 = !DILocation(line: 113, column: 16, scope: !207)
!209 = !DILocation(line: 113, column: 24, scope: !207)
!210 = !DILocation(line: 113, column: 23, scope: !207)
!211 = !DILocation(line: 114, column: 23, scope: !207)
!212 = !DILocation(line: 114, column: 29, scope: !207)
!213 = !DILocation(line: 114, column: 9, scope: !207)
!214 = !DILocation(line: 116, column: 1, scope: !185)
!215 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !1, file: !1, line: 119, type: !11, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!216 = !DILocalVariable(name: "data", arg: 1, scope: !215, file: !1, line: 119, type: !13)
!217 = !DILocation(line: 119, column: 27, scope: !215)
!218 = !DILocalVariable(name: "args", scope: !219, file: !1, line: 122, type: !19)
!219 = distinct !DILexicalBlock(scope: !215, file: !1, line: 121, column: 5)
!220 = !DILocation(line: 122, column: 17, scope: !219)
!221 = !DILocation(line: 123, column: 9, scope: !219)
!222 = !DILocation(line: 125, column: 23, scope: !219)
!223 = !DILocation(line: 125, column: 9, scope: !219)
!224 = !DILocation(line: 126, column: 9, scope: !219)
!225 = !DILocation(line: 128, column: 1, scope: !215)
!226 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 130, type: !42, scopeLine: 131, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!227 = !DILocalVariable(name: "data", scope: !226, file: !1, line: 132, type: !13)
!228 = !DILocation(line: 132, column: 12, scope: !226)
!229 = !DILocalVariable(name: "dataPtr1", scope: !226, file: !1, line: 133, type: !47)
!230 = !DILocation(line: 133, column: 13, scope: !226)
!231 = !DILocalVariable(name: "dataPtr2", scope: !226, file: !1, line: 134, type: !47)
!232 = !DILocation(line: 134, column: 13, scope: !226)
!233 = !DILocalVariable(name: "dataBuffer", scope: !226, file: !1, line: 135, type: !52)
!234 = !DILocation(line: 135, column: 10, scope: !226)
!235 = !DILocation(line: 136, column: 12, scope: !226)
!236 = !DILocation(line: 136, column: 10, scope: !226)
!237 = !DILocalVariable(name: "data", scope: !238, file: !1, line: 138, type: !13)
!238 = distinct !DILexicalBlock(scope: !226, file: !1, line: 137, column: 5)
!239 = !DILocation(line: 138, column: 16, scope: !238)
!240 = !DILocation(line: 138, column: 24, scope: !238)
!241 = !DILocation(line: 138, column: 23, scope: !238)
!242 = !DILocalVariable(name: "dataLen", scope: !243, file: !1, line: 141, type: !65)
!243 = distinct !DILexicalBlock(scope: !238, file: !1, line: 139, column: 9)
!244 = !DILocation(line: 141, column: 20, scope: !243)
!245 = !DILocation(line: 141, column: 37, scope: !243)
!246 = !DILocation(line: 141, column: 30, scope: !243)
!247 = !DILocalVariable(name: "pFile", scope: !243, file: !1, line: 142, type: !72)
!248 = !DILocation(line: 142, column: 20, scope: !243)
!249 = !DILocation(line: 144, column: 21, scope: !250)
!250 = distinct !DILexicalBlock(scope: !243, file: !1, line: 144, column: 17)
!251 = !DILocation(line: 144, column: 20, scope: !250)
!252 = !DILocation(line: 144, column: 29, scope: !250)
!253 = !DILocation(line: 144, column: 17, scope: !243)
!254 = !DILocation(line: 146, column: 25, scope: !255)
!255 = distinct !DILexicalBlock(scope: !250, file: !1, line: 145, column: 13)
!256 = !DILocation(line: 146, column: 23, scope: !255)
!257 = !DILocation(line: 147, column: 21, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !1, line: 147, column: 21)
!259 = !DILocation(line: 147, column: 27, scope: !258)
!260 = !DILocation(line: 147, column: 21, scope: !255)
!261 = !DILocation(line: 150, column: 31, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !1, line: 150, column: 25)
!263 = distinct !DILexicalBlock(scope: !258, file: !1, line: 148, column: 17)
!264 = !DILocation(line: 150, column: 36, scope: !262)
!265 = !DILocation(line: 150, column: 35, scope: !262)
!266 = !DILocation(line: 150, column: 55, scope: !262)
!267 = !DILocation(line: 150, column: 54, scope: !262)
!268 = !DILocation(line: 150, column: 45, scope: !262)
!269 = !DILocation(line: 150, column: 65, scope: !262)
!270 = !DILocation(line: 150, column: 25, scope: !262)
!271 = !DILocation(line: 150, column: 72, scope: !262)
!272 = !DILocation(line: 150, column: 25, scope: !263)
!273 = !DILocation(line: 152, column: 25, scope: !274)
!274 = distinct !DILexicalBlock(scope: !262, file: !1, line: 151, column: 21)
!275 = !DILocation(line: 154, column: 25, scope: !274)
!276 = !DILocation(line: 154, column: 30, scope: !274)
!277 = !DILocation(line: 154, column: 39, scope: !274)
!278 = !DILocation(line: 155, column: 21, scope: !274)
!279 = !DILocation(line: 156, column: 28, scope: !263)
!280 = !DILocation(line: 156, column: 21, scope: !263)
!281 = !DILocation(line: 157, column: 17, scope: !263)
!282 = !DILocation(line: 158, column: 13, scope: !255)
!283 = !DILocation(line: 160, column: 21, scope: !238)
!284 = !DILocation(line: 160, column: 10, scope: !238)
!285 = !DILocation(line: 160, column: 19, scope: !238)
!286 = !DILocalVariable(name: "data", scope: !287, file: !1, line: 163, type: !13)
!287 = distinct !DILexicalBlock(scope: !226, file: !1, line: 162, column: 5)
!288 = !DILocation(line: 163, column: 16, scope: !287)
!289 = !DILocation(line: 163, column: 24, scope: !287)
!290 = !DILocation(line: 163, column: 23, scope: !287)
!291 = !DILocation(line: 164, column: 23, scope: !287)
!292 = !DILocation(line: 164, column: 29, scope: !287)
!293 = !DILocation(line: 164, column: 9, scope: !287)
!294 = !DILocation(line: 166, column: 1, scope: !226)
!295 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_32_good", scope: !1, file: !1, line: 168, type: !42, scopeLine: 169, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!296 = !DILocation(line: 170, column: 5, scope: !295)
!297 = !DILocation(line: 171, column: 5, scope: !295)
!298 = !DILocation(line: 172, column: 1, scope: !295)
