; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_vprintf_21.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_vprintf_21.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@badStatic = dso_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@goodB2G1Static = dso_local global i32 0, align 4, !dbg !9
@goodB2G2Static = dso_local global i32 0, align 4, !dbg !11
@goodG2BStatic = dso_local global i32 0, align 4, !dbg !13
@.str.3 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !19 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !24, metadata !DIExpression()), !dbg !25
  %0 = load i32, i32* @badStatic, align 4, !dbg !26
  %tobool = icmp ne i32 %0, 0, !dbg !26
  br i1 %tobool, label %if.then, label %if.end, !dbg !28

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !29, metadata !DIExpression()), !dbg !47
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !48
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !48
  call void @llvm.va_start(i8* %arraydecay1), !dbg !48
  %1 = load i8*, i8** %data.addr, align 8, !dbg !49
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !50
  %call = call i32 @vprintf(i8* %1, %struct.__va_list_tag* %arraydecay2), !dbg !51
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !52
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !52
  call void @llvm.va_end(i8* %arraydecay34), !dbg !52
  br label %if.end, !dbg !53

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !54
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_21_bad() #0 !dbg !55 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !60, metadata !DIExpression()), !dbg !64
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !64
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !64
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !65
  store i8* %arraydecay, i8** %data, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !72
  %1 = load i8*, i8** %data, align 8, !dbg !73
  %call = call i64 @strlen(i8* %1) #7, !dbg !74
  store i64 %call, i64* %dataLen, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !75, metadata !DIExpression()), !dbg !130
  %2 = load i64, i64* %dataLen, align 8, !dbg !131
  %sub = sub i64 100, %2, !dbg !133
  %cmp = icmp ugt i64 %sub, 1, !dbg !134
  br i1 %cmp, label %if.then, label %if.end11, !dbg !135

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !136
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !138
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !139
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !141
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !142

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !143
  %5 = load i64, i64* %dataLen, align 8, !dbg !146
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !147
  %6 = load i64, i64* %dataLen, align 8, !dbg !148
  %sub4 = sub i64 100, %6, !dbg !149
  %conv = trunc i64 %sub4 to i32, !dbg !150
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !151
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !152
  %cmp6 = icmp eq i8* %call5, null, !dbg !153
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !154

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !155
  %8 = load i8*, i8** %data, align 8, !dbg !157
  %9 = load i64, i64* %dataLen, align 8, !dbg !158
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !157
  store i8 0, i8* %arrayidx, align 1, !dbg !159
  br label %if.end, !dbg !160

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !161
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !162
  br label %if.end10, !dbg !163

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !164

if.end11:                                         ; preds = %if.end10, %entry
  store i32 1, i32* @badStatic, align 4, !dbg !165
  %11 = load i8*, i8** %data, align 8, !dbg !166
  %12 = load i8*, i8** %data, align 8, !dbg !167
  call void (i8*, ...) @badVaSink(i8* %11, i8* %12), !dbg !168
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
define dso_local void @goodB2G1_vasink(i8* %data, ...) #0 !dbg !170 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !171, metadata !DIExpression()), !dbg !172
  %0 = load i32, i32* @goodB2G1Static, align 4, !dbg !173
  %tobool = icmp ne i32 %0, 0, !dbg !173
  br i1 %tobool, label %if.then, label %if.else, !dbg !175

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !176
  br label %if.end, !dbg !178

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !179, metadata !DIExpression()), !dbg !182
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !183
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !183
  call void @llvm.va_start(i8* %arraydecay1), !dbg !183
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !184
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !185
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !186
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !186
  call void @llvm.va_end(i8* %arraydecay34), !dbg !186
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !187
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !188 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !191, metadata !DIExpression()), !dbg !192
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !192
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !192
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !193
  store i8* %arraydecay, i8** %data, align 8, !dbg !194
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !195, metadata !DIExpression()), !dbg !197
  %1 = load i8*, i8** %data, align 8, !dbg !198
  %call = call i64 @strlen(i8* %1) #7, !dbg !199
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
  store i32 0, i32* @goodB2G1Static, align 4, !dbg !236
  %11 = load i8*, i8** %data, align 8, !dbg !237
  %12 = load i8*, i8** %data, align 8, !dbg !238
  call void (i8*, ...) @goodB2G1_vasink(i8* %11, i8* %12), !dbg !239
  ret void, !dbg !240
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2_vasink(i8* %data, ...) #0 !dbg !241 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !242, metadata !DIExpression()), !dbg !243
  %0 = load i32, i32* @goodB2G2Static, align 4, !dbg !244
  %tobool = icmp ne i32 %0, 0, !dbg !244
  br i1 %tobool, label %if.then, label %if.end, !dbg !246

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !247, metadata !DIExpression()), !dbg !250
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !251
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !251
  call void @llvm.va_start(i8* %arraydecay1), !dbg !251
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !252
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !253
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !254
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !254
  call void @llvm.va_end(i8* %arraydecay34), !dbg !254
  br label %if.end, !dbg !255

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !256
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !257 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !260, metadata !DIExpression()), !dbg !261
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !261
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !261
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !262
  store i8* %arraydecay, i8** %data, align 8, !dbg !263
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !264, metadata !DIExpression()), !dbg !266
  %1 = load i8*, i8** %data, align 8, !dbg !267
  %call = call i64 @strlen(i8* %1) #7, !dbg !268
  store i64 %call, i64* %dataLen, align 8, !dbg !266
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !269, metadata !DIExpression()), !dbg !270
  %2 = load i64, i64* %dataLen, align 8, !dbg !271
  %sub = sub i64 100, %2, !dbg !273
  %cmp = icmp ugt i64 %sub, 1, !dbg !274
  br i1 %cmp, label %if.then, label %if.end11, !dbg !275

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !276
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !278
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !279
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !281
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !282

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !283
  %5 = load i64, i64* %dataLen, align 8, !dbg !286
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !287
  %6 = load i64, i64* %dataLen, align 8, !dbg !288
  %sub4 = sub i64 100, %6, !dbg !289
  %conv = trunc i64 %sub4 to i32, !dbg !290
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !291
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !292
  %cmp6 = icmp eq i8* %call5, null, !dbg !293
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !294

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !295
  %8 = load i8*, i8** %data, align 8, !dbg !297
  %9 = load i64, i64* %dataLen, align 8, !dbg !298
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !297
  store i8 0, i8* %arrayidx, align 1, !dbg !299
  br label %if.end, !dbg !300

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !301
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !302
  br label %if.end10, !dbg !303

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !304

if.end11:                                         ; preds = %if.end10, %entry
  store i32 1, i32* @goodB2G2Static, align 4, !dbg !305
  %11 = load i8*, i8** %data, align 8, !dbg !306
  %12 = load i8*, i8** %data, align 8, !dbg !307
  call void (i8*, ...) @goodB2G2_vasink(i8* %11, i8* %12), !dbg !308
  ret void, !dbg !309
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !310 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !311, metadata !DIExpression()), !dbg !312
  %0 = load i32, i32* @goodG2BStatic, align 4, !dbg !313
  %tobool = icmp ne i32 %0, 0, !dbg !313
  br i1 %tobool, label %if.then, label %if.end, !dbg !315

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !316, metadata !DIExpression()), !dbg !319
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !320
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !320
  call void @llvm.va_start(i8* %arraydecay1), !dbg !320
  %1 = load i8*, i8** %data.addr, align 8, !dbg !321
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !322
  %call = call i32 @vprintf(i8* %1, %struct.__va_list_tag* %arraydecay2), !dbg !323
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !324
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !324
  call void @llvm.va_end(i8* %arraydecay34), !dbg !324
  br label %if.end, !dbg !325

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !326
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !327 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !328, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !331
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !331
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !332
  store i8* %arraydecay, i8** %data, align 8, !dbg !333
  %1 = load i8*, i8** %data, align 8, !dbg !334
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !335
  store i32 1, i32* @goodG2BStatic, align 4, !dbg !336
  %2 = load i8*, i8** %data, align 8, !dbg !337
  %3 = load i8*, i8** %data, align 8, !dbg !338
  call void (i8*, ...) @goodG2BVaSink(i8* %2, i8* %3), !dbg !339
  ret void, !dbg !340
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_21_good() #0 !dbg !341 {
entry:
  call void @goodB2G1(), !dbg !342
  call void @goodB2G2(), !dbg !343
  call void @goodG2B(), !dbg !344
  ret void, !dbg !345
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
!1 = distinct !DIGlobalVariable(name: "badStatic", scope: !2, file: !3, line: 35, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_vprintf_21.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_172/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0, !9, !11, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "goodB2G1Static", scope: !2, file: !3, line: 86, type: !7, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "goodB2G2Static", scope: !2, file: !3, line: 87, type: !7, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "goodG2BStatic", scope: !2, file: !3, line: 88, type: !7, isLocal: false, isDefinition: true)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 12.0.0"}
!19 = distinct !DISubprogram(name: "badVaSink", scope: !3, file: !3, line: 37, type: !20, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22, null}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DILocalVariable(name: "data", arg: 1, scope: !19, file: !3, line: 37, type: !22)
!25 = !DILocation(line: 37, column: 23, scope: !19)
!26 = !DILocation(line: 39, column: 8, scope: !27)
!27 = distinct !DILexicalBlock(scope: !19, file: !3, line: 39, column: 8)
!28 = !DILocation(line: 39, column: 8, scope: !19)
!29 = !DILocalVariable(name: "args", scope: !30, file: !3, line: 42, type: !32)
!30 = distinct !DILexicalBlock(scope: !31, file: !3, line: 41, column: 9)
!31 = distinct !DILexicalBlock(scope: !27, file: !3, line: 40, column: 5)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !33, line: 52, baseType: !34)
!33 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !35, line: 32, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !37)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 192, elements: !45)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !39)
!39 = !{!40, !42, !43, !44}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !38, file: !3, line: 42, baseType: !41, size: 32)
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !38, file: !3, line: 42, baseType: !41, size: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !38, file: !3, line: 42, baseType: !6, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !38, file: !3, line: 42, baseType: !6, size: 64, offset: 128)
!45 = !{!46}
!46 = !DISubrange(count: 1)
!47 = !DILocation(line: 42, column: 21, scope: !30)
!48 = !DILocation(line: 43, column: 13, scope: !30)
!49 = !DILocation(line: 45, column: 21, scope: !30)
!50 = !DILocation(line: 45, column: 27, scope: !30)
!51 = !DILocation(line: 45, column: 13, scope: !30)
!52 = !DILocation(line: 46, column: 13, scope: !30)
!53 = !DILocation(line: 48, column: 5, scope: !31)
!54 = !DILocation(line: 49, column: 1, scope: !19)
!55 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_21_bad", scope: !3, file: !3, line: 51, type: !56, scopeLine: 52, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!56 = !DISubroutineType(types: !57)
!57 = !{null}
!58 = !DILocalVariable(name: "data", scope: !55, file: !3, line: 53, type: !22)
!59 = !DILocation(line: 53, column: 12, scope: !55)
!60 = !DILocalVariable(name: "dataBuffer", scope: !55, file: !3, line: 54, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 800, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 100)
!64 = !DILocation(line: 54, column: 10, scope: !55)
!65 = !DILocation(line: 55, column: 12, scope: !55)
!66 = !DILocation(line: 55, column: 10, scope: !55)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !3, line: 58, type: !69)
!68 = distinct !DILexicalBlock(scope: !55, file: !3, line: 56, column: 5)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!71 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DILocation(line: 58, column: 16, scope: !68)
!73 = !DILocation(line: 58, column: 33, scope: !68)
!74 = !DILocation(line: 58, column: 26, scope: !68)
!75 = !DILocalVariable(name: "pFile", scope: !68, file: !3, line: 59, type: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !78, line: 7, baseType: !79)
!78 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !80, line: 49, size: 1728, elements: !81)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !97, !99, !100, !101, !105, !107, !109, !111, !114, !116, !119, !122, !123, !124, !125, !126}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !79, file: !80, line: 51, baseType: !7, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !79, file: !80, line: 54, baseType: !22, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !79, file: !80, line: 55, baseType: !22, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !79, file: !80, line: 56, baseType: !22, size: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !79, file: !80, line: 57, baseType: !22, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !79, file: !80, line: 58, baseType: !22, size: 64, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !79, file: !80, line: 59, baseType: !22, size: 64, offset: 384)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !79, file: !80, line: 60, baseType: !22, size: 64, offset: 448)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !79, file: !80, line: 61, baseType: !22, size: 64, offset: 512)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !79, file: !80, line: 64, baseType: !22, size: 64, offset: 576)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !79, file: !80, line: 65, baseType: !22, size: 64, offset: 640)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !79, file: !80, line: 66, baseType: !22, size: 64, offset: 704)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !79, file: !80, line: 68, baseType: !95, size: 64, offset: 768)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !80, line: 36, flags: DIFlagFwdDecl)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !79, file: !80, line: 70, baseType: !98, size: 64, offset: 832)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !79, file: !80, line: 72, baseType: !7, size: 32, offset: 896)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !79, file: !80, line: 73, baseType: !7, size: 32, offset: 928)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !79, file: !80, line: 74, baseType: !102, size: 64, offset: 960)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !103, line: 152, baseType: !104)
!103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!104 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !79, file: !80, line: 77, baseType: !106, size: 16, offset: 1024)
!106 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !79, file: !80, line: 78, baseType: !108, size: 8, offset: 1040)
!108 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !79, file: !80, line: 79, baseType: !110, size: 8, offset: 1048)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !45)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !79, file: !80, line: 81, baseType: !112, size: 64, offset: 1088)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !80, line: 43, baseType: null)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !79, file: !80, line: 89, baseType: !115, size: 64, offset: 1152)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !103, line: 153, baseType: !104)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !79, file: !80, line: 91, baseType: !117, size: 64, offset: 1216)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !80, line: 37, flags: DIFlagFwdDecl)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !79, file: !80, line: 92, baseType: !120, size: 64, offset: 1280)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !80, line: 38, flags: DIFlagFwdDecl)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !79, file: !80, line: 93, baseType: !98, size: 64, offset: 1344)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !79, file: !80, line: 94, baseType: !6, size: 64, offset: 1408)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !79, file: !80, line: 95, baseType: !69, size: 64, offset: 1472)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !79, file: !80, line: 96, baseType: !7, size: 32, offset: 1536)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !79, file: !80, line: 98, baseType: !127, size: 160, offset: 1568)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 20)
!130 = !DILocation(line: 59, column: 16, scope: !68)
!131 = !DILocation(line: 61, column: 17, scope: !132)
!132 = distinct !DILexicalBlock(scope: !68, file: !3, line: 61, column: 13)
!133 = !DILocation(line: 61, column: 16, scope: !132)
!134 = !DILocation(line: 61, column: 25, scope: !132)
!135 = !DILocation(line: 61, column: 13, scope: !68)
!136 = !DILocation(line: 63, column: 21, scope: !137)
!137 = distinct !DILexicalBlock(scope: !132, file: !3, line: 62, column: 9)
!138 = !DILocation(line: 63, column: 19, scope: !137)
!139 = !DILocation(line: 64, column: 17, scope: !140)
!140 = distinct !DILexicalBlock(scope: !137, file: !3, line: 64, column: 17)
!141 = !DILocation(line: 64, column: 23, scope: !140)
!142 = !DILocation(line: 64, column: 17, scope: !137)
!143 = !DILocation(line: 67, column: 27, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !3, line: 67, column: 21)
!145 = distinct !DILexicalBlock(scope: !140, file: !3, line: 65, column: 13)
!146 = !DILocation(line: 67, column: 32, scope: !144)
!147 = !DILocation(line: 67, column: 31, scope: !144)
!148 = !DILocation(line: 67, column: 51, scope: !144)
!149 = !DILocation(line: 67, column: 50, scope: !144)
!150 = !DILocation(line: 67, column: 41, scope: !144)
!151 = !DILocation(line: 67, column: 61, scope: !144)
!152 = !DILocation(line: 67, column: 21, scope: !144)
!153 = !DILocation(line: 67, column: 68, scope: !144)
!154 = !DILocation(line: 67, column: 21, scope: !145)
!155 = !DILocation(line: 69, column: 21, scope: !156)
!156 = distinct !DILexicalBlock(scope: !144, file: !3, line: 68, column: 17)
!157 = !DILocation(line: 71, column: 21, scope: !156)
!158 = !DILocation(line: 71, column: 26, scope: !156)
!159 = !DILocation(line: 71, column: 35, scope: !156)
!160 = !DILocation(line: 72, column: 17, scope: !156)
!161 = !DILocation(line: 73, column: 24, scope: !145)
!162 = !DILocation(line: 73, column: 17, scope: !145)
!163 = !DILocation(line: 74, column: 13, scope: !145)
!164 = !DILocation(line: 75, column: 9, scope: !137)
!165 = !DILocation(line: 77, column: 15, scope: !55)
!166 = !DILocation(line: 78, column: 15, scope: !55)
!167 = !DILocation(line: 78, column: 21, scope: !55)
!168 = !DILocation(line: 78, column: 5, scope: !55)
!169 = !DILocation(line: 79, column: 1, scope: !55)
!170 = distinct !DISubprogram(name: "goodB2G1_vasink", scope: !3, file: !3, line: 91, type: !20, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!171 = !DILocalVariable(name: "data", arg: 1, scope: !170, file: !3, line: 91, type: !22)
!172 = !DILocation(line: 91, column: 29, scope: !170)
!173 = !DILocation(line: 93, column: 8, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !3, line: 93, column: 8)
!175 = !DILocation(line: 93, column: 8, scope: !170)
!176 = !DILocation(line: 96, column: 9, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !3, line: 94, column: 5)
!178 = !DILocation(line: 97, column: 5, scope: !177)
!179 = !DILocalVariable(name: "args", scope: !180, file: !3, line: 101, type: !32)
!180 = distinct !DILexicalBlock(scope: !181, file: !3, line: 100, column: 9)
!181 = distinct !DILexicalBlock(scope: !174, file: !3, line: 99, column: 5)
!182 = !DILocation(line: 101, column: 21, scope: !180)
!183 = !DILocation(line: 102, column: 13, scope: !180)
!184 = !DILocation(line: 104, column: 27, scope: !180)
!185 = !DILocation(line: 104, column: 13, scope: !180)
!186 = !DILocation(line: 105, column: 13, scope: !180)
!187 = !DILocation(line: 108, column: 1, scope: !170)
!188 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 110, type: !56, scopeLine: 111, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!189 = !DILocalVariable(name: "data", scope: !188, file: !3, line: 112, type: !22)
!190 = !DILocation(line: 112, column: 12, scope: !188)
!191 = !DILocalVariable(name: "dataBuffer", scope: !188, file: !3, line: 113, type: !61)
!192 = !DILocation(line: 113, column: 10, scope: !188)
!193 = !DILocation(line: 114, column: 12, scope: !188)
!194 = !DILocation(line: 114, column: 10, scope: !188)
!195 = !DILocalVariable(name: "dataLen", scope: !196, file: !3, line: 117, type: !69)
!196 = distinct !DILexicalBlock(scope: !188, file: !3, line: 115, column: 5)
!197 = !DILocation(line: 117, column: 16, scope: !196)
!198 = !DILocation(line: 117, column: 33, scope: !196)
!199 = !DILocation(line: 117, column: 26, scope: !196)
!200 = !DILocalVariable(name: "pFile", scope: !196, file: !3, line: 118, type: !76)
!201 = !DILocation(line: 118, column: 16, scope: !196)
!202 = !DILocation(line: 120, column: 17, scope: !203)
!203 = distinct !DILexicalBlock(scope: !196, file: !3, line: 120, column: 13)
!204 = !DILocation(line: 120, column: 16, scope: !203)
!205 = !DILocation(line: 120, column: 25, scope: !203)
!206 = !DILocation(line: 120, column: 13, scope: !196)
!207 = !DILocation(line: 122, column: 21, scope: !208)
!208 = distinct !DILexicalBlock(scope: !203, file: !3, line: 121, column: 9)
!209 = !DILocation(line: 122, column: 19, scope: !208)
!210 = !DILocation(line: 123, column: 17, scope: !211)
!211 = distinct !DILexicalBlock(scope: !208, file: !3, line: 123, column: 17)
!212 = !DILocation(line: 123, column: 23, scope: !211)
!213 = !DILocation(line: 123, column: 17, scope: !208)
!214 = !DILocation(line: 126, column: 27, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !3, line: 126, column: 21)
!216 = distinct !DILexicalBlock(scope: !211, file: !3, line: 124, column: 13)
!217 = !DILocation(line: 126, column: 32, scope: !215)
!218 = !DILocation(line: 126, column: 31, scope: !215)
!219 = !DILocation(line: 126, column: 51, scope: !215)
!220 = !DILocation(line: 126, column: 50, scope: !215)
!221 = !DILocation(line: 126, column: 41, scope: !215)
!222 = !DILocation(line: 126, column: 61, scope: !215)
!223 = !DILocation(line: 126, column: 21, scope: !215)
!224 = !DILocation(line: 126, column: 68, scope: !215)
!225 = !DILocation(line: 126, column: 21, scope: !216)
!226 = !DILocation(line: 128, column: 21, scope: !227)
!227 = distinct !DILexicalBlock(scope: !215, file: !3, line: 127, column: 17)
!228 = !DILocation(line: 130, column: 21, scope: !227)
!229 = !DILocation(line: 130, column: 26, scope: !227)
!230 = !DILocation(line: 130, column: 35, scope: !227)
!231 = !DILocation(line: 131, column: 17, scope: !227)
!232 = !DILocation(line: 132, column: 24, scope: !216)
!233 = !DILocation(line: 132, column: 17, scope: !216)
!234 = !DILocation(line: 133, column: 13, scope: !216)
!235 = !DILocation(line: 134, column: 9, scope: !208)
!236 = !DILocation(line: 136, column: 20, scope: !188)
!237 = !DILocation(line: 137, column: 21, scope: !188)
!238 = !DILocation(line: 137, column: 27, scope: !188)
!239 = !DILocation(line: 137, column: 5, scope: !188)
!240 = !DILocation(line: 138, column: 1, scope: !188)
!241 = distinct !DISubprogram(name: "goodB2G2_vasink", scope: !3, file: !3, line: 141, type: !20, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!242 = !DILocalVariable(name: "data", arg: 1, scope: !241, file: !3, line: 141, type: !22)
!243 = !DILocation(line: 141, column: 29, scope: !241)
!244 = !DILocation(line: 143, column: 8, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !3, line: 143, column: 8)
!246 = !DILocation(line: 143, column: 8, scope: !241)
!247 = !DILocalVariable(name: "args", scope: !248, file: !3, line: 146, type: !32)
!248 = distinct !DILexicalBlock(scope: !249, file: !3, line: 145, column: 9)
!249 = distinct !DILexicalBlock(scope: !245, file: !3, line: 144, column: 5)
!250 = !DILocation(line: 146, column: 21, scope: !248)
!251 = !DILocation(line: 147, column: 13, scope: !248)
!252 = !DILocation(line: 149, column: 27, scope: !248)
!253 = !DILocation(line: 149, column: 13, scope: !248)
!254 = !DILocation(line: 150, column: 13, scope: !248)
!255 = !DILocation(line: 152, column: 5, scope: !249)
!256 = !DILocation(line: 153, column: 1, scope: !241)
!257 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 155, type: !56, scopeLine: 156, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!258 = !DILocalVariable(name: "data", scope: !257, file: !3, line: 157, type: !22)
!259 = !DILocation(line: 157, column: 12, scope: !257)
!260 = !DILocalVariable(name: "dataBuffer", scope: !257, file: !3, line: 158, type: !61)
!261 = !DILocation(line: 158, column: 10, scope: !257)
!262 = !DILocation(line: 159, column: 12, scope: !257)
!263 = !DILocation(line: 159, column: 10, scope: !257)
!264 = !DILocalVariable(name: "dataLen", scope: !265, file: !3, line: 162, type: !69)
!265 = distinct !DILexicalBlock(scope: !257, file: !3, line: 160, column: 5)
!266 = !DILocation(line: 162, column: 16, scope: !265)
!267 = !DILocation(line: 162, column: 33, scope: !265)
!268 = !DILocation(line: 162, column: 26, scope: !265)
!269 = !DILocalVariable(name: "pFile", scope: !265, file: !3, line: 163, type: !76)
!270 = !DILocation(line: 163, column: 16, scope: !265)
!271 = !DILocation(line: 165, column: 17, scope: !272)
!272 = distinct !DILexicalBlock(scope: !265, file: !3, line: 165, column: 13)
!273 = !DILocation(line: 165, column: 16, scope: !272)
!274 = !DILocation(line: 165, column: 25, scope: !272)
!275 = !DILocation(line: 165, column: 13, scope: !265)
!276 = !DILocation(line: 167, column: 21, scope: !277)
!277 = distinct !DILexicalBlock(scope: !272, file: !3, line: 166, column: 9)
!278 = !DILocation(line: 167, column: 19, scope: !277)
!279 = !DILocation(line: 168, column: 17, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !3, line: 168, column: 17)
!281 = !DILocation(line: 168, column: 23, scope: !280)
!282 = !DILocation(line: 168, column: 17, scope: !277)
!283 = !DILocation(line: 171, column: 27, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !3, line: 171, column: 21)
!285 = distinct !DILexicalBlock(scope: !280, file: !3, line: 169, column: 13)
!286 = !DILocation(line: 171, column: 32, scope: !284)
!287 = !DILocation(line: 171, column: 31, scope: !284)
!288 = !DILocation(line: 171, column: 51, scope: !284)
!289 = !DILocation(line: 171, column: 50, scope: !284)
!290 = !DILocation(line: 171, column: 41, scope: !284)
!291 = !DILocation(line: 171, column: 61, scope: !284)
!292 = !DILocation(line: 171, column: 21, scope: !284)
!293 = !DILocation(line: 171, column: 68, scope: !284)
!294 = !DILocation(line: 171, column: 21, scope: !285)
!295 = !DILocation(line: 173, column: 21, scope: !296)
!296 = distinct !DILexicalBlock(scope: !284, file: !3, line: 172, column: 17)
!297 = !DILocation(line: 175, column: 21, scope: !296)
!298 = !DILocation(line: 175, column: 26, scope: !296)
!299 = !DILocation(line: 175, column: 35, scope: !296)
!300 = !DILocation(line: 176, column: 17, scope: !296)
!301 = !DILocation(line: 177, column: 24, scope: !285)
!302 = !DILocation(line: 177, column: 17, scope: !285)
!303 = !DILocation(line: 178, column: 13, scope: !285)
!304 = !DILocation(line: 179, column: 9, scope: !277)
!305 = !DILocation(line: 181, column: 20, scope: !257)
!306 = !DILocation(line: 182, column: 21, scope: !257)
!307 = !DILocation(line: 182, column: 27, scope: !257)
!308 = !DILocation(line: 182, column: 5, scope: !257)
!309 = !DILocation(line: 183, column: 1, scope: !257)
!310 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !3, file: !3, line: 186, type: !20, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!311 = !DILocalVariable(name: "data", arg: 1, scope: !310, file: !3, line: 186, type: !22)
!312 = !DILocation(line: 186, column: 27, scope: !310)
!313 = !DILocation(line: 188, column: 8, scope: !314)
!314 = distinct !DILexicalBlock(scope: !310, file: !3, line: 188, column: 8)
!315 = !DILocation(line: 188, column: 8, scope: !310)
!316 = !DILocalVariable(name: "args", scope: !317, file: !3, line: 191, type: !32)
!317 = distinct !DILexicalBlock(scope: !318, file: !3, line: 190, column: 9)
!318 = distinct !DILexicalBlock(scope: !314, file: !3, line: 189, column: 5)
!319 = !DILocation(line: 191, column: 21, scope: !317)
!320 = !DILocation(line: 192, column: 13, scope: !317)
!321 = !DILocation(line: 194, column: 21, scope: !317)
!322 = !DILocation(line: 194, column: 27, scope: !317)
!323 = !DILocation(line: 194, column: 13, scope: !317)
!324 = !DILocation(line: 195, column: 13, scope: !317)
!325 = !DILocation(line: 197, column: 5, scope: !318)
!326 = !DILocation(line: 198, column: 1, scope: !310)
!327 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 200, type: !56, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!328 = !DILocalVariable(name: "data", scope: !327, file: !3, line: 202, type: !22)
!329 = !DILocation(line: 202, column: 12, scope: !327)
!330 = !DILocalVariable(name: "dataBuffer", scope: !327, file: !3, line: 203, type: !61)
!331 = !DILocation(line: 203, column: 10, scope: !327)
!332 = !DILocation(line: 204, column: 12, scope: !327)
!333 = !DILocation(line: 204, column: 10, scope: !327)
!334 = !DILocation(line: 206, column: 12, scope: !327)
!335 = !DILocation(line: 206, column: 5, scope: !327)
!336 = !DILocation(line: 207, column: 19, scope: !327)
!337 = !DILocation(line: 208, column: 19, scope: !327)
!338 = !DILocation(line: 208, column: 25, scope: !327)
!339 = !DILocation(line: 208, column: 5, scope: !327)
!340 = !DILocation(line: 209, column: 1, scope: !327)
!341 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_21_good", scope: !3, file: !3, line: 211, type: !56, scopeLine: 212, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!342 = !DILocation(line: 213, column: 5, scope: !341)
!343 = !DILocation(line: 214, column: 5, scope: !341)
!344 = !DILocation(line: 215, column: 5, scope: !341)
!345 = !DILocation(line: 216, column: 1, scope: !341)
