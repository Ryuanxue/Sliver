; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_vprintf_45.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_vprintf_45.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@CWE134_Uncontrolled_Format_String__char_file_vprintf_45_badData = dso_local global i8* null, align 8, !dbg !0
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@CWE134_Uncontrolled_Format_String__char_file_vprintf_45_goodG2BData = dso_local global i8* null, align 8, !dbg !9
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CWE134_Uncontrolled_Format_String__char_file_vprintf_45_goodB2GData = dso_local global i8* null, align 8, !dbg !13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !19 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !24, metadata !DIExpression()), !dbg !41
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !42
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !42
  call void @llvm.va_start(i8* %arraydecay1), !dbg !42
  %0 = load i8*, i8** %data.addr, align 8, !dbg !43
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !44
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !45
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !46
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !46
  call void @llvm.va_end(i8* %arraydecay34), !dbg !46
  ret void, !dbg !47
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink() #0 !dbg !48 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !51, metadata !DIExpression()), !dbg !52
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_file_vprintf_45_badData, align 8, !dbg !53
  store i8* %0, i8** %data, align 8, !dbg !52
  %1 = load i8*, i8** %data, align 8, !dbg !54
  %2 = load i8*, i8** %data, align 8, !dbg !55
  call void (i8*, ...) @badVaSink(i8* %1, i8* %2), !dbg !56
  ret void, !dbg !57
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_45_bad() #0 !dbg !58 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !61, metadata !DIExpression()), !dbg !65
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !65
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !65
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !66
  store i8* %arraydecay, i8** %data, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !68, metadata !DIExpression()), !dbg !73
  %1 = load i8*, i8** %data, align 8, !dbg !74
  %call = call i64 @strlen(i8* %1) #7, !dbg !75
  store i64 %call, i64* %dataLen, align 8, !dbg !73
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !76, metadata !DIExpression()), !dbg !131
  %2 = load i64, i64* %dataLen, align 8, !dbg !132
  %sub = sub i64 100, %2, !dbg !134
  %cmp = icmp ugt i64 %sub, 1, !dbg !135
  br i1 %cmp, label %if.then, label %if.end11, !dbg !136

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !137
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !139
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !140
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !142
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !143

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !144
  %5 = load i64, i64* %dataLen, align 8, !dbg !147
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !148
  %6 = load i64, i64* %dataLen, align 8, !dbg !149
  %sub4 = sub i64 100, %6, !dbg !150
  %conv = trunc i64 %sub4 to i32, !dbg !151
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !152
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !153
  %cmp6 = icmp eq i8* %call5, null, !dbg !154
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !155

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !156
  %8 = load i8*, i8** %data, align 8, !dbg !158
  %9 = load i64, i64* %dataLen, align 8, !dbg !159
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !158
  store i8 0, i8* %arrayidx, align 1, !dbg !160
  br label %if.end, !dbg !161

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !162
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !163
  br label %if.end10, !dbg !164

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !165

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !166
  store i8* %11, i8** @CWE134_Uncontrolled_Format_String__char_file_vprintf_45_badData, align 8, !dbg !167
  call void @badSink(), !dbg !168
  ret void, !dbg !169
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
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !170 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !173, metadata !DIExpression()), !dbg !175
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !176
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !176
  call void @llvm.va_start(i8* %arraydecay1), !dbg !176
  %0 = load i8*, i8** %data.addr, align 8, !dbg !177
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !178
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !179
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !180
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !180
  call void @llvm.va_end(i8* %arraydecay34), !dbg !180
  ret void, !dbg !181
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink() #0 !dbg !182 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !183, metadata !DIExpression()), !dbg !184
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_file_vprintf_45_goodG2BData, align 8, !dbg !185
  store i8* %0, i8** %data, align 8, !dbg !184
  %1 = load i8*, i8** %data, align 8, !dbg !186
  %2 = load i8*, i8** %data, align 8, !dbg !187
  call void (i8*, ...) @goodG2BVaSink(i8* %1, i8* %2), !dbg !188
  ret void, !dbg !189
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !190 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !193, metadata !DIExpression()), !dbg !194
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !194
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !194
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !195
  store i8* %arraydecay, i8** %data, align 8, !dbg !196
  %1 = load i8*, i8** %data, align 8, !dbg !197
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !198
  %2 = load i8*, i8** %data, align 8, !dbg !199
  store i8* %2, i8** @CWE134_Uncontrolled_Format_String__char_file_vprintf_45_goodG2BData, align 8, !dbg !200
  call void @goodG2BSink(), !dbg !201
  ret void, !dbg !202
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !203 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !206, metadata !DIExpression()), !dbg !208
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !209
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !209
  call void @llvm.va_start(i8* %arraydecay1), !dbg !209
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !210
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !211
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !212
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !212
  call void @llvm.va_end(i8* %arraydecay34), !dbg !212
  ret void, !dbg !213
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink() #0 !dbg !214 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !215, metadata !DIExpression()), !dbg !216
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_file_vprintf_45_goodB2GData, align 8, !dbg !217
  store i8* %0, i8** %data, align 8, !dbg !216
  %1 = load i8*, i8** %data, align 8, !dbg !218
  %2 = load i8*, i8** %data, align 8, !dbg !219
  call void (i8*, ...) @goodB2GVaSink(i8* %1, i8* %2), !dbg !220
  ret void, !dbg !221
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !222 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !223, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !225, metadata !DIExpression()), !dbg !226
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !226
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !226
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !227
  store i8* %arraydecay, i8** %data, align 8, !dbg !228
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !229, metadata !DIExpression()), !dbg !231
  %1 = load i8*, i8** %data, align 8, !dbg !232
  %call = call i64 @strlen(i8* %1) #7, !dbg !233
  store i64 %call, i64* %dataLen, align 8, !dbg !231
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !234, metadata !DIExpression()), !dbg !235
  %2 = load i64, i64* %dataLen, align 8, !dbg !236
  %sub = sub i64 100, %2, !dbg !238
  %cmp = icmp ugt i64 %sub, 1, !dbg !239
  br i1 %cmp, label %if.then, label %if.end11, !dbg !240

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !241
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !243
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !244
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !246
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !247

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !248
  %5 = load i64, i64* %dataLen, align 8, !dbg !251
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !252
  %6 = load i64, i64* %dataLen, align 8, !dbg !253
  %sub4 = sub i64 100, %6, !dbg !254
  %conv = trunc i64 %sub4 to i32, !dbg !255
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !256
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !257
  %cmp6 = icmp eq i8* %call5, null, !dbg !258
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !259

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !260
  %8 = load i8*, i8** %data, align 8, !dbg !262
  %9 = load i64, i64* %dataLen, align 8, !dbg !263
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !262
  store i8 0, i8* %arrayidx, align 1, !dbg !264
  br label %if.end, !dbg !265

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !266
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !267
  br label %if.end10, !dbg !268

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !269

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !270
  store i8* %11, i8** @CWE134_Uncontrolled_Format_String__char_file_vprintf_45_goodB2GData, align 8, !dbg !271
  call void @goodB2GSink(), !dbg !272
  ret void, !dbg !273
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_45_good() #0 !dbg !274 {
entry:
  call void @goodG2B(), !dbg !275
  call void @goodB2G(), !dbg !276
  ret void, !dbg !277
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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_45_badData", scope: !2, file: !3, line: 32, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_vprintf_45.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_182/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0, !9, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_45_goodG2BData", scope: !2, file: !3, line: 33, type: !11, isLocal: false, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_45_goodB2GData", scope: !2, file: !3, line: 34, type: !11, isLocal: false, isDefinition: true)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 12.0.0"}
!19 = distinct !DISubprogram(name: "badVaSink", scope: !3, file: !3, line: 38, type: !20, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !11, null}
!22 = !DILocalVariable(name: "data", arg: 1, scope: !19, file: !3, line: 38, type: !11)
!23 = !DILocation(line: 38, column: 23, scope: !19)
!24 = !DILocalVariable(name: "args", scope: !25, file: !3, line: 41, type: !26)
!25 = distinct !DILexicalBlock(scope: !19, file: !3, line: 40, column: 5)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !27, line: 52, baseType: !28)
!27 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !29, line: 32, baseType: !30)
!29 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 192, elements: !39)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !33)
!33 = !{!34, !36, !37, !38}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !32, file: !3, line: 41, baseType: !35, size: 32)
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !32, file: !3, line: 41, baseType: !35, size: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !32, file: !3, line: 41, baseType: !6, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !32, file: !3, line: 41, baseType: !6, size: 64, offset: 128)
!39 = !{!40}
!40 = !DISubrange(count: 1)
!41 = !DILocation(line: 41, column: 17, scope: !25)
!42 = !DILocation(line: 42, column: 9, scope: !25)
!43 = !DILocation(line: 44, column: 17, scope: !25)
!44 = !DILocation(line: 44, column: 23, scope: !25)
!45 = !DILocation(line: 44, column: 9, scope: !25)
!46 = !DILocation(line: 45, column: 9, scope: !25)
!47 = !DILocation(line: 47, column: 1, scope: !19)
!48 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 49, type: !49, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!49 = !DISubroutineType(types: !50)
!50 = !{null}
!51 = !DILocalVariable(name: "data", scope: !48, file: !3, line: 51, type: !11)
!52 = !DILocation(line: 51, column: 12, scope: !48)
!53 = !DILocation(line: 51, column: 19, scope: !48)
!54 = !DILocation(line: 52, column: 15, scope: !48)
!55 = !DILocation(line: 52, column: 21, scope: !48)
!56 = !DILocation(line: 52, column: 5, scope: !48)
!57 = !DILocation(line: 53, column: 1, scope: !48)
!58 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_45_bad", scope: !3, file: !3, line: 55, type: !49, scopeLine: 56, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!59 = !DILocalVariable(name: "data", scope: !58, file: !3, line: 57, type: !11)
!60 = !DILocation(line: 57, column: 12, scope: !58)
!61 = !DILocalVariable(name: "dataBuffer", scope: !58, file: !3, line: 58, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 800, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 100)
!65 = !DILocation(line: 58, column: 10, scope: !58)
!66 = !DILocation(line: 59, column: 12, scope: !58)
!67 = !DILocation(line: 59, column: 10, scope: !58)
!68 = !DILocalVariable(name: "dataLen", scope: !69, file: !3, line: 62, type: !70)
!69 = distinct !DILexicalBlock(scope: !58, file: !3, line: 60, column: 5)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DILocation(line: 62, column: 16, scope: !69)
!74 = !DILocation(line: 62, column: 33, scope: !69)
!75 = !DILocation(line: 62, column: 26, scope: !69)
!76 = !DILocalVariable(name: "pFile", scope: !69, file: !3, line: 63, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !80)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !98, !100, !101, !102, !106, !108, !110, !112, !115, !117, !120, !123, !124, !125, !126, !127}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !80, file: !81, line: 51, baseType: !7, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !80, file: !81, line: 54, baseType: !11, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !80, file: !81, line: 55, baseType: !11, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !80, file: !81, line: 56, baseType: !11, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !80, file: !81, line: 57, baseType: !11, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !80, file: !81, line: 58, baseType: !11, size: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !80, file: !81, line: 59, baseType: !11, size: 64, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !80, file: !81, line: 60, baseType: !11, size: 64, offset: 448)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !80, file: !81, line: 61, baseType: !11, size: 64, offset: 512)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !80, file: !81, line: 64, baseType: !11, size: 64, offset: 576)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !80, file: !81, line: 65, baseType: !11, size: 64, offset: 640)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !80, file: !81, line: 66, baseType: !11, size: 64, offset: 704)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !80, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !81, line: 36, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !80, file: !81, line: 70, baseType: !99, size: 64, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !80, file: !81, line: 72, baseType: !7, size: 32, offset: 896)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !80, file: !81, line: 73, baseType: !7, size: 32, offset: 928)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !80, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !104, line: 152, baseType: !105)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!105 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !80, file: !81, line: 77, baseType: !107, size: 16, offset: 1024)
!107 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !80, file: !81, line: 78, baseType: !109, size: 8, offset: 1040)
!109 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !80, file: !81, line: 79, baseType: !111, size: 8, offset: 1048)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8, elements: !39)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !80, file: !81, line: 81, baseType: !113, size: 64, offset: 1088)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !81, line: 43, baseType: null)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !80, file: !81, line: 89, baseType: !116, size: 64, offset: 1152)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !104, line: 153, baseType: !105)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !80, file: !81, line: 91, baseType: !118, size: 64, offset: 1216)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !81, line: 37, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !80, file: !81, line: 92, baseType: !121, size: 64, offset: 1280)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !81, line: 38, flags: DIFlagFwdDecl)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !80, file: !81, line: 93, baseType: !99, size: 64, offset: 1344)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !80, file: !81, line: 94, baseType: !6, size: 64, offset: 1408)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !80, file: !81, line: 95, baseType: !70, size: 64, offset: 1472)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !80, file: !81, line: 96, baseType: !7, size: 32, offset: 1536)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !80, file: !81, line: 98, baseType: !128, size: 160, offset: 1568)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 20)
!131 = !DILocation(line: 63, column: 16, scope: !69)
!132 = !DILocation(line: 65, column: 17, scope: !133)
!133 = distinct !DILexicalBlock(scope: !69, file: !3, line: 65, column: 13)
!134 = !DILocation(line: 65, column: 16, scope: !133)
!135 = !DILocation(line: 65, column: 25, scope: !133)
!136 = !DILocation(line: 65, column: 13, scope: !69)
!137 = !DILocation(line: 67, column: 21, scope: !138)
!138 = distinct !DILexicalBlock(scope: !133, file: !3, line: 66, column: 9)
!139 = !DILocation(line: 67, column: 19, scope: !138)
!140 = !DILocation(line: 68, column: 17, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !3, line: 68, column: 17)
!142 = !DILocation(line: 68, column: 23, scope: !141)
!143 = !DILocation(line: 68, column: 17, scope: !138)
!144 = !DILocation(line: 71, column: 27, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !3, line: 71, column: 21)
!146 = distinct !DILexicalBlock(scope: !141, file: !3, line: 69, column: 13)
!147 = !DILocation(line: 71, column: 32, scope: !145)
!148 = !DILocation(line: 71, column: 31, scope: !145)
!149 = !DILocation(line: 71, column: 51, scope: !145)
!150 = !DILocation(line: 71, column: 50, scope: !145)
!151 = !DILocation(line: 71, column: 41, scope: !145)
!152 = !DILocation(line: 71, column: 61, scope: !145)
!153 = !DILocation(line: 71, column: 21, scope: !145)
!154 = !DILocation(line: 71, column: 68, scope: !145)
!155 = !DILocation(line: 71, column: 21, scope: !146)
!156 = !DILocation(line: 73, column: 21, scope: !157)
!157 = distinct !DILexicalBlock(scope: !145, file: !3, line: 72, column: 17)
!158 = !DILocation(line: 75, column: 21, scope: !157)
!159 = !DILocation(line: 75, column: 26, scope: !157)
!160 = !DILocation(line: 75, column: 35, scope: !157)
!161 = !DILocation(line: 76, column: 17, scope: !157)
!162 = !DILocation(line: 77, column: 24, scope: !146)
!163 = !DILocation(line: 77, column: 17, scope: !146)
!164 = !DILocation(line: 78, column: 13, scope: !146)
!165 = !DILocation(line: 79, column: 9, scope: !138)
!166 = !DILocation(line: 81, column: 71, scope: !58)
!167 = !DILocation(line: 81, column: 69, scope: !58)
!168 = !DILocation(line: 82, column: 5, scope: !58)
!169 = !DILocation(line: 83, column: 1, scope: !58)
!170 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !3, file: !3, line: 90, type: !20, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!171 = !DILocalVariable(name: "data", arg: 1, scope: !170, file: !3, line: 90, type: !11)
!172 = !DILocation(line: 90, column: 27, scope: !170)
!173 = !DILocalVariable(name: "args", scope: !174, file: !3, line: 93, type: !26)
!174 = distinct !DILexicalBlock(scope: !170, file: !3, line: 92, column: 5)
!175 = !DILocation(line: 93, column: 17, scope: !174)
!176 = !DILocation(line: 94, column: 9, scope: !174)
!177 = !DILocation(line: 96, column: 17, scope: !174)
!178 = !DILocation(line: 96, column: 23, scope: !174)
!179 = !DILocation(line: 96, column: 9, scope: !174)
!180 = !DILocation(line: 97, column: 9, scope: !174)
!181 = !DILocation(line: 99, column: 1, scope: !170)
!182 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 101, type: !49, scopeLine: 102, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!183 = !DILocalVariable(name: "data", scope: !182, file: !3, line: 103, type: !11)
!184 = !DILocation(line: 103, column: 12, scope: !182)
!185 = !DILocation(line: 103, column: 19, scope: !182)
!186 = !DILocation(line: 104, column: 19, scope: !182)
!187 = !DILocation(line: 104, column: 25, scope: !182)
!188 = !DILocation(line: 104, column: 5, scope: !182)
!189 = !DILocation(line: 105, column: 1, scope: !182)
!190 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 107, type: !49, scopeLine: 108, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!191 = !DILocalVariable(name: "data", scope: !190, file: !3, line: 109, type: !11)
!192 = !DILocation(line: 109, column: 12, scope: !190)
!193 = !DILocalVariable(name: "dataBuffer", scope: !190, file: !3, line: 110, type: !62)
!194 = !DILocation(line: 110, column: 10, scope: !190)
!195 = !DILocation(line: 111, column: 12, scope: !190)
!196 = !DILocation(line: 111, column: 10, scope: !190)
!197 = !DILocation(line: 113, column: 12, scope: !190)
!198 = !DILocation(line: 113, column: 5, scope: !190)
!199 = !DILocation(line: 114, column: 75, scope: !190)
!200 = !DILocation(line: 114, column: 73, scope: !190)
!201 = !DILocation(line: 115, column: 5, scope: !190)
!202 = !DILocation(line: 116, column: 1, scope: !190)
!203 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !3, file: !3, line: 119, type: !20, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!204 = !DILocalVariable(name: "data", arg: 1, scope: !203, file: !3, line: 119, type: !11)
!205 = !DILocation(line: 119, column: 27, scope: !203)
!206 = !DILocalVariable(name: "args", scope: !207, file: !3, line: 122, type: !26)
!207 = distinct !DILexicalBlock(scope: !203, file: !3, line: 121, column: 5)
!208 = !DILocation(line: 122, column: 17, scope: !207)
!209 = !DILocation(line: 123, column: 9, scope: !207)
!210 = !DILocation(line: 125, column: 23, scope: !207)
!211 = !DILocation(line: 125, column: 9, scope: !207)
!212 = !DILocation(line: 126, column: 9, scope: !207)
!213 = !DILocation(line: 128, column: 1, scope: !203)
!214 = distinct !DISubprogram(name: "goodB2GSink", scope: !3, file: !3, line: 130, type: !49, scopeLine: 131, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!215 = !DILocalVariable(name: "data", scope: !214, file: !3, line: 132, type: !11)
!216 = !DILocation(line: 132, column: 12, scope: !214)
!217 = !DILocation(line: 132, column: 19, scope: !214)
!218 = !DILocation(line: 133, column: 19, scope: !214)
!219 = !DILocation(line: 133, column: 25, scope: !214)
!220 = !DILocation(line: 133, column: 5, scope: !214)
!221 = !DILocation(line: 134, column: 1, scope: !214)
!222 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 136, type: !49, scopeLine: 137, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!223 = !DILocalVariable(name: "data", scope: !222, file: !3, line: 138, type: !11)
!224 = !DILocation(line: 138, column: 12, scope: !222)
!225 = !DILocalVariable(name: "dataBuffer", scope: !222, file: !3, line: 139, type: !62)
!226 = !DILocation(line: 139, column: 10, scope: !222)
!227 = !DILocation(line: 140, column: 12, scope: !222)
!228 = !DILocation(line: 140, column: 10, scope: !222)
!229 = !DILocalVariable(name: "dataLen", scope: !230, file: !3, line: 143, type: !70)
!230 = distinct !DILexicalBlock(scope: !222, file: !3, line: 141, column: 5)
!231 = !DILocation(line: 143, column: 16, scope: !230)
!232 = !DILocation(line: 143, column: 33, scope: !230)
!233 = !DILocation(line: 143, column: 26, scope: !230)
!234 = !DILocalVariable(name: "pFile", scope: !230, file: !3, line: 144, type: !77)
!235 = !DILocation(line: 144, column: 16, scope: !230)
!236 = !DILocation(line: 146, column: 17, scope: !237)
!237 = distinct !DILexicalBlock(scope: !230, file: !3, line: 146, column: 13)
!238 = !DILocation(line: 146, column: 16, scope: !237)
!239 = !DILocation(line: 146, column: 25, scope: !237)
!240 = !DILocation(line: 146, column: 13, scope: !230)
!241 = !DILocation(line: 148, column: 21, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !3, line: 147, column: 9)
!243 = !DILocation(line: 148, column: 19, scope: !242)
!244 = !DILocation(line: 149, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !3, line: 149, column: 17)
!246 = !DILocation(line: 149, column: 23, scope: !245)
!247 = !DILocation(line: 149, column: 17, scope: !242)
!248 = !DILocation(line: 152, column: 27, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 152, column: 21)
!250 = distinct !DILexicalBlock(scope: !245, file: !3, line: 150, column: 13)
!251 = !DILocation(line: 152, column: 32, scope: !249)
!252 = !DILocation(line: 152, column: 31, scope: !249)
!253 = !DILocation(line: 152, column: 51, scope: !249)
!254 = !DILocation(line: 152, column: 50, scope: !249)
!255 = !DILocation(line: 152, column: 41, scope: !249)
!256 = !DILocation(line: 152, column: 61, scope: !249)
!257 = !DILocation(line: 152, column: 21, scope: !249)
!258 = !DILocation(line: 152, column: 68, scope: !249)
!259 = !DILocation(line: 152, column: 21, scope: !250)
!260 = !DILocation(line: 154, column: 21, scope: !261)
!261 = distinct !DILexicalBlock(scope: !249, file: !3, line: 153, column: 17)
!262 = !DILocation(line: 156, column: 21, scope: !261)
!263 = !DILocation(line: 156, column: 26, scope: !261)
!264 = !DILocation(line: 156, column: 35, scope: !261)
!265 = !DILocation(line: 157, column: 17, scope: !261)
!266 = !DILocation(line: 158, column: 24, scope: !250)
!267 = !DILocation(line: 158, column: 17, scope: !250)
!268 = !DILocation(line: 159, column: 13, scope: !250)
!269 = !DILocation(line: 160, column: 9, scope: !242)
!270 = !DILocation(line: 162, column: 75, scope: !222)
!271 = !DILocation(line: 162, column: 73, scope: !222)
!272 = !DILocation(line: 163, column: 5, scope: !222)
!273 = !DILocation(line: 164, column: 1, scope: !222)
!274 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_45_good", scope: !3, file: !3, line: 166, type: !49, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!275 = !DILocation(line: 168, column: 5, scope: !274)
!276 = !DILocation(line: 169, column: 5, scope: !274)
!277 = !DILocation(line: 170, column: 1, scope: !274)
