; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._twoIntsStruct = type { i32, i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.3 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.5 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.6 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !52 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !57, metadata !DIExpression()), !dbg !73
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !74
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !74
  call void @llvm.va_start(i8* %arraydecay1), !dbg !74
  %0 = load i8*, i8** %data.addr, align 8, !dbg !75
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !76
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !77
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !78
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !78
  call void @llvm.va_end(i8* %arraydecay34), !dbg !78
  ret void, !dbg !79
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_31_bad() #0 !dbg !80 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %dataCopy = alloca i8*, align 8
  %data19 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !85, metadata !DIExpression()), !dbg !89
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !89
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !89
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !90
  store i8* %arraydecay, i8** %data, align 8, !dbg !91
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !92, metadata !DIExpression()), !dbg !97
  %1 = load i8*, i8** %data, align 8, !dbg !98
  %call = call i64 @strlen(i8* %1) #8, !dbg !99
  store i64 %call, i64* %dataLen, align 8, !dbg !97
  %2 = load i64, i64* %dataLen, align 8, !dbg !100
  %sub = sub i64 100, %2, !dbg !102
  %cmp = icmp ugt i64 %sub, 1, !dbg !103
  br i1 %cmp, label %if.then, label %if.end18, !dbg !104

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !105
  %4 = load i64, i64* %dataLen, align 8, !dbg !108
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !109
  %5 = load i64, i64* %dataLen, align 8, !dbg !110
  %sub1 = sub i64 100, %5, !dbg !111
  %conv = trunc i64 %sub1 to i32, !dbg !112
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !113
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !114
  %cmp3 = icmp ne i8* %call2, null, !dbg !115
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !116

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !117
  %call6 = call i64 @strlen(i8* %7) #8, !dbg !119
  store i64 %call6, i64* %dataLen, align 8, !dbg !120
  %8 = load i64, i64* %dataLen, align 8, !dbg !121
  %cmp7 = icmp ugt i64 %8, 0, !dbg !123
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !124

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !125
  %10 = load i64, i64* %dataLen, align 8, !dbg !126
  %sub9 = sub i64 %10, 1, !dbg !127
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !125
  %11 = load i8, i8* %arrayidx, align 1, !dbg !125
  %conv10 = sext i8 %11 to i32, !dbg !125
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !128
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !129

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !130
  %13 = load i64, i64* %dataLen, align 8, !dbg !132
  %sub14 = sub i64 %13, 1, !dbg !133
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !130
  store i8 0, i8* %arrayidx15, align 1, !dbg !134
  br label %if.end, !dbg !135

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !136

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !137
  %14 = load i8*, i8** %data, align 8, !dbg !139
  %15 = load i64, i64* %dataLen, align 8, !dbg !140
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !139
  store i8 0, i8* %arrayidx16, align 1, !dbg !141
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !142

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !143, metadata !DIExpression()), !dbg !145
  %16 = load i8*, i8** %data, align 8, !dbg !146
  store i8* %16, i8** %dataCopy, align 8, !dbg !145
  call void @llvm.dbg.declare(metadata i8** %data19, metadata !147, metadata !DIExpression()), !dbg !148
  %17 = load i8*, i8** %dataCopy, align 8, !dbg !149
  store i8* %17, i8** %data19, align 8, !dbg !148
  %18 = load i8*, i8** %data19, align 8, !dbg !150
  %19 = load i8*, i8** %data19, align 8, !dbg !151
  call void (i8*, ...) @badVaSink(i8* %18, i8* %19), !dbg !152
  ret void, !dbg !153
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !154 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !155, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !157, metadata !DIExpression()), !dbg !159
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !160
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !160
  call void @llvm.va_start(i8* %arraydecay1), !dbg !160
  %0 = load i8*, i8** %data.addr, align 8, !dbg !161
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !162
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !163
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !164
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !164
  call void @llvm.va_end(i8* %arraydecay34), !dbg !164
  ret void, !dbg !165
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !166 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataCopy = alloca i8*, align 8
  %data1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !167, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !169, metadata !DIExpression()), !dbg !170
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !170
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !170
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !171
  store i8* %arraydecay, i8** %data, align 8, !dbg !172
  %1 = load i8*, i8** %data, align 8, !dbg !173
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !174
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !175, metadata !DIExpression()), !dbg !177
  %2 = load i8*, i8** %data, align 8, !dbg !178
  store i8* %2, i8** %dataCopy, align 8, !dbg !177
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !179, metadata !DIExpression()), !dbg !180
  %3 = load i8*, i8** %dataCopy, align 8, !dbg !181
  store i8* %3, i8** %data1, align 8, !dbg !180
  %4 = load i8*, i8** %data1, align 8, !dbg !182
  %5 = load i8*, i8** %data1, align 8, !dbg !183
  call void (i8*, ...) @goodG2BVaSink(i8* %4, i8* %5), !dbg !184
  ret void, !dbg !185
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !186 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !189, metadata !DIExpression()), !dbg !191
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !192
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !192
  call void @llvm.va_start(i8* %arraydecay1), !dbg !192
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !193
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !194
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !195
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !195
  call void @llvm.va_end(i8* %arraydecay34), !dbg !195
  ret void, !dbg !196
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !197 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %dataCopy = alloca i8*, align 8
  %data19 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !200, metadata !DIExpression()), !dbg !201
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !201
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !201
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !202
  store i8* %arraydecay, i8** %data, align 8, !dbg !203
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !204, metadata !DIExpression()), !dbg !206
  %1 = load i8*, i8** %data, align 8, !dbg !207
  %call = call i64 @strlen(i8* %1) #8, !dbg !208
  store i64 %call, i64* %dataLen, align 8, !dbg !206
  %2 = load i64, i64* %dataLen, align 8, !dbg !209
  %sub = sub i64 100, %2, !dbg !211
  %cmp = icmp ugt i64 %sub, 1, !dbg !212
  br i1 %cmp, label %if.then, label %if.end18, !dbg !213

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !214
  %4 = load i64, i64* %dataLen, align 8, !dbg !217
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !218
  %5 = load i64, i64* %dataLen, align 8, !dbg !219
  %sub1 = sub i64 100, %5, !dbg !220
  %conv = trunc i64 %sub1 to i32, !dbg !221
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !222
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !223
  %cmp3 = icmp ne i8* %call2, null, !dbg !224
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !225

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !226
  %call6 = call i64 @strlen(i8* %7) #8, !dbg !228
  store i64 %call6, i64* %dataLen, align 8, !dbg !229
  %8 = load i64, i64* %dataLen, align 8, !dbg !230
  %cmp7 = icmp ugt i64 %8, 0, !dbg !232
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !233

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !234
  %10 = load i64, i64* %dataLen, align 8, !dbg !235
  %sub9 = sub i64 %10, 1, !dbg !236
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !234
  %11 = load i8, i8* %arrayidx, align 1, !dbg !234
  %conv10 = sext i8 %11 to i32, !dbg !234
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !237
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !238

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !239
  %13 = load i64, i64* %dataLen, align 8, !dbg !241
  %sub14 = sub i64 %13, 1, !dbg !242
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !239
  store i8 0, i8* %arrayidx15, align 1, !dbg !243
  br label %if.end, !dbg !244

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !245

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !246
  %14 = load i8*, i8** %data, align 8, !dbg !248
  %15 = load i64, i64* %dataLen, align 8, !dbg !249
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !248
  store i8 0, i8* %arrayidx16, align 1, !dbg !250
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !251

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !252, metadata !DIExpression()), !dbg !254
  %16 = load i8*, i8** %data, align 8, !dbg !255
  store i8* %16, i8** %dataCopy, align 8, !dbg !254
  call void @llvm.dbg.declare(metadata i8** %data19, metadata !256, metadata !DIExpression()), !dbg !257
  %17 = load i8*, i8** %dataCopy, align 8, !dbg !258
  store i8* %17, i8** %data19, align 8, !dbg !257
  %18 = load i8*, i8** %data19, align 8, !dbg !259
  %19 = load i8*, i8** %data19, align 8, !dbg !260
  call void (i8*, ...) @goodB2GVaSink(i8* %18, i8* %19), !dbg !261
  ret void, !dbg !262
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_31_good() #0 !dbg !263 {
entry:
  call void @goodG2B(), !dbg !264
  call void @goodB2G(), !dbg !265
  ret void, !dbg !266
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !267 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !270, metadata !DIExpression()), !dbg !271
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !272
  %0 = load i8*, i8** %line.addr, align 8, !dbg !273
  %cmp = icmp ne i8* %0, null, !dbg !275
  br i1 %cmp, label %if.then, label %if.end, !dbg !276

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !277
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !279
  br label %if.end, !dbg !280

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !281
  ret void, !dbg !282
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !283 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !284, metadata !DIExpression()), !dbg !285
  %0 = load i8*, i8** %line.addr, align 8, !dbg !286
  %cmp = icmp ne i8* %0, null, !dbg !288
  br i1 %cmp, label %if.then, label %if.end, !dbg !289

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !290
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !292
  br label %if.end, !dbg !293

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !294
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !295 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = load i32*, i32** %line.addr, align 8, !dbg !302
  %cmp = icmp ne i32* %0, null, !dbg !304
  br i1 %cmp, label %if.then, label %if.end, !dbg !305

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !306
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !308
  br label %if.end, !dbg !309

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !310
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !311 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !314, metadata !DIExpression()), !dbg !315
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !316
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !317
  ret void, !dbg !318
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !319 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !323, metadata !DIExpression()), !dbg !324
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !325
  %conv = sext i16 %0 to i32, !dbg !325
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !326
  ret void, !dbg !327
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !328 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !332, metadata !DIExpression()), !dbg !333
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !334
  %conv = fpext float %0 to double, !dbg !334
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !335
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !337 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !341, metadata !DIExpression()), !dbg !342
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !343
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !344
  ret void, !dbg !345
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !346 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !353, metadata !DIExpression()), !dbg !354
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !355
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !356
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !358 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !361, metadata !DIExpression()), !dbg !362
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !363
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !364
  ret void, !dbg !365
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !366 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !371
  %conv = sext i8 %0 to i32, !dbg !371
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !372
  ret void, !dbg !373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !374 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !377, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !379, metadata !DIExpression()), !dbg !383
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !384
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !385
  store i32 %0, i32* %arrayidx, align 4, !dbg !386
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !387
  store i32 0, i32* %arrayidx1, align 4, !dbg !388
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !389
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !390
  ret void, !dbg !391
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !392 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !395, metadata !DIExpression()), !dbg !396
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !397
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !398
  ret void, !dbg !399
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !400 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !405
  %conv = zext i8 %0 to i32, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !408 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !412, metadata !DIExpression()), !dbg !413
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !414
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !415
  ret void, !dbg !416
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !417 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !427, metadata !DIExpression()), !dbg !428
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !429
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !430
  %1 = load i32, i32* %intOne, align 4, !dbg !430
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !431
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !432
  %3 = load i32, i32* %intTwo, align 4, !dbg !432
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !433
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !435 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !439, metadata !DIExpression()), !dbg !440
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !441, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.declare(metadata i64* %i, metadata !443, metadata !DIExpression()), !dbg !444
  store i64 0, i64* %i, align 8, !dbg !445
  br label %for.cond, !dbg !447

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !448
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !450
  %cmp = icmp ult i64 %0, %1, !dbg !451
  br i1 %cmp, label %for.body, label %for.end, !dbg !452

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !453
  %3 = load i64, i64* %i, align 8, !dbg !455
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !453
  %4 = load i8, i8* %arrayidx, align 1, !dbg !453
  %conv = zext i8 %4 to i32, !dbg !453
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !456
  br label %for.inc, !dbg !457

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !458
  %inc = add i64 %5, 1, !dbg !458
  store i64 %inc, i64* %i, align 8, !dbg !458
  br label %for.cond, !dbg !459, !llvm.loop !460

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !463
  ret void, !dbg !464
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !465 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !468, metadata !DIExpression()), !dbg !469
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !470, metadata !DIExpression()), !dbg !471
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !472, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !474, metadata !DIExpression()), !dbg !475
  store i64 0, i64* %numWritten, align 8, !dbg !475
  br label %while.cond, !dbg !476

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !477
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !478
  %cmp = icmp ult i64 %0, %1, !dbg !479
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !480

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #10, !dbg !481
  %2 = load i16*, i16** %call, align 8, !dbg !481
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !481
  %4 = load i64, i64* %numWritten, align 8, !dbg !481
  %mul = mul i64 2, %4, !dbg !481
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !481
  %5 = load i8, i8* %arrayidx, align 1, !dbg !481
  %conv = sext i8 %5 to i32, !dbg !481
  %idxprom = sext i32 %conv to i64, !dbg !481
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !481
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !481
  %conv2 = zext i16 %6 to i32, !dbg !481
  %and = and i32 %conv2, 4096, !dbg !481
  %tobool = icmp ne i32 %and, 0, !dbg !481
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !482

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #10, !dbg !483
  %7 = load i16*, i16** %call3, align 8, !dbg !483
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !483
  %9 = load i64, i64* %numWritten, align 8, !dbg !483
  %mul4 = mul i64 2, %9, !dbg !483
  %add = add i64 %mul4, 1, !dbg !483
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !483
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !483
  %conv6 = sext i8 %10 to i32, !dbg !483
  %idxprom7 = sext i32 %conv6 to i64, !dbg !483
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !483
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !483
  %conv9 = zext i16 %11 to i32, !dbg !483
  %and10 = and i32 %conv9, 4096, !dbg !483
  %tobool11 = icmp ne i32 %and10, 0, !dbg !482
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !484
  br i1 %12, label %while.body, label %while.end, !dbg !476

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !485, metadata !DIExpression()), !dbg !487
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !488
  %14 = load i64, i64* %numWritten, align 8, !dbg !489
  %mul12 = mul i64 2, %14, !dbg !490
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !488
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !491
  %15 = load i32, i32* %byte, align 4, !dbg !492
  %conv15 = trunc i32 %15 to i8, !dbg !493
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !494
  %17 = load i64, i64* %numWritten, align 8, !dbg !495
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !494
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !496
  %18 = load i64, i64* %numWritten, align 8, !dbg !497
  %inc = add i64 %18, 1, !dbg !497
  store i64 %inc, i64* %numWritten, align 8, !dbg !497
  br label %while.cond, !dbg !476, !llvm.loop !498

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !500
  ret i64 %19, !dbg !501
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !502 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !505, metadata !DIExpression()), !dbg !506
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !507, metadata !DIExpression()), !dbg !508
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !509, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !511, metadata !DIExpression()), !dbg !512
  store i64 0, i64* %numWritten, align 8, !dbg !512
  br label %while.cond, !dbg !513

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !514
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !515
  %cmp = icmp ult i64 %0, %1, !dbg !516
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !517

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !518
  %3 = load i64, i64* %numWritten, align 8, !dbg !519
  %mul = mul i64 2, %3, !dbg !520
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !518
  %4 = load i32, i32* %arrayidx, align 4, !dbg !518
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !521
  %tobool = icmp ne i32 %call, 0, !dbg !521
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !522

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !523
  %6 = load i64, i64* %numWritten, align 8, !dbg !524
  %mul1 = mul i64 2, %6, !dbg !525
  %add = add i64 %mul1, 1, !dbg !526
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !523
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !523
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !527
  %tobool4 = icmp ne i32 %call3, 0, !dbg !522
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !528
  br i1 %8, label %while.body, label %while.end, !dbg !513

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !529, metadata !DIExpression()), !dbg !531
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !532
  %10 = load i64, i64* %numWritten, align 8, !dbg !533
  %mul5 = mul i64 2, %10, !dbg !534
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !532
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !535
  %11 = load i32, i32* %byte, align 4, !dbg !536
  %conv = trunc i32 %11 to i8, !dbg !537
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !538
  %13 = load i64, i64* %numWritten, align 8, !dbg !539
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !538
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !540
  %14 = load i64, i64* %numWritten, align 8, !dbg !541
  %inc = add i64 %14, 1, !dbg !541
  store i64 %inc, i64* %numWritten, align 8, !dbg !541
  br label %while.cond, !dbg !513, !llvm.loop !542

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !544
  ret i64 %15, !dbg !545
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !546 {
entry:
  ret i32 1, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !550 {
entry:
  ret i32 0, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !552 {
entry:
  %call = call i32 @rand() #9, !dbg !553
  %rem = srem i32 %call, 2, !dbg !554
  ret i32 %rem, !dbg !555
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !556 {
entry:
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !558 {
entry:
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !560 {
entry:
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !562 {
entry:
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !564 {
entry:
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !566 {
entry:
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !568 {
entry:
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !570 {
entry:
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !572 {
entry:
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !574 {
entry:
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !576 {
entry:
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !578 {
entry:
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !580 {
entry:
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !582 {
entry:
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !584 {
entry:
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !586 {
entry:
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !588 {
entry:
  ret void, !dbg !589
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !590 {
entry:
  ret void, !dbg !591
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_598/source_code")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!10 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!14 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!15 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!17 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!21 = !{!22, !23, !24, !25}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !{!0, !27, !29, !31, !33, !35, !37, !39}
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !2, file: !3, line: 175, type: !23, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !2, file: !3, line: 176, type: !23, isLocal: false, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "globalTrue", scope: !2, file: !3, line: 181, type: !23, isLocal: false, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "globalFalse", scope: !2, file: !3, line: 182, type: !23, isLocal: false, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "globalFive", scope: !2, file: !3, line: 183, type: !23, isLocal: false, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "globalArgc", scope: !2, file: !3, line: 214, type: !23, isLocal: false, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "globalArgv", scope: !2, file: !3, line: 215, type: !41, isLocal: false, isDefinition: true)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !47, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_vprintf_31.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_598/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "badVaSink", scope: !45, file: !45, line: 28, type: !53, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !42, null}
!55 = !DILocalVariable(name: "data", arg: 1, scope: !52, file: !45, line: 28, type: !42)
!56 = !DILocation(line: 28, column: 23, scope: !52)
!57 = !DILocalVariable(name: "args", scope: !58, file: !45, line: 31, type: !59)
!58 = distinct !DILexicalBlock(scope: !52, file: !45, line: 30, column: 5)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !60, line: 52, baseType: !61)
!60 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !62, line: 32, baseType: !63)
!62 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !45, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 192, elements: !71)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !66)
!66 = !{!67, !68, !69, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !65, file: !45, line: 31, baseType: !7, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !65, file: !45, line: 31, baseType: !7, size: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !65, file: !45, line: 31, baseType: !22, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !65, file: !45, line: 31, baseType: !22, size: 64, offset: 128)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DILocation(line: 31, column: 17, scope: !58)
!74 = !DILocation(line: 32, column: 9, scope: !58)
!75 = !DILocation(line: 34, column: 17, scope: !58)
!76 = !DILocation(line: 34, column: 23, scope: !58)
!77 = !DILocation(line: 34, column: 9, scope: !58)
!78 = !DILocation(line: 35, column: 9, scope: !58)
!79 = !DILocation(line: 37, column: 1, scope: !52)
!80 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_31_bad", scope: !45, file: !45, line: 39, type: !81, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!81 = !DISubroutineType(types: !82)
!82 = !{null}
!83 = !DILocalVariable(name: "data", scope: !80, file: !45, line: 41, type: !42)
!84 = !DILocation(line: 41, column: 12, scope: !80)
!85 = !DILocalVariable(name: "dataBuffer", scope: !80, file: !45, line: 42, type: !86)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 100)
!89 = !DILocation(line: 42, column: 10, scope: !80)
!90 = !DILocation(line: 43, column: 12, scope: !80)
!91 = !DILocation(line: 43, column: 10, scope: !80)
!92 = !DILocalVariable(name: "dataLen", scope: !93, file: !45, line: 46, type: !94)
!93 = distinct !DILexicalBlock(scope: !80, file: !45, line: 44, column: 5)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 46, baseType: !96)
!95 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!96 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!97 = !DILocation(line: 46, column: 16, scope: !93)
!98 = !DILocation(line: 46, column: 33, scope: !93)
!99 = !DILocation(line: 46, column: 26, scope: !93)
!100 = !DILocation(line: 48, column: 17, scope: !101)
!101 = distinct !DILexicalBlock(scope: !93, file: !45, line: 48, column: 13)
!102 = !DILocation(line: 48, column: 16, scope: !101)
!103 = !DILocation(line: 48, column: 25, scope: !101)
!104 = !DILocation(line: 48, column: 13, scope: !93)
!105 = !DILocation(line: 51, column: 23, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !45, line: 51, column: 17)
!107 = distinct !DILexicalBlock(scope: !101, file: !45, line: 49, column: 9)
!108 = !DILocation(line: 51, column: 28, scope: !106)
!109 = !DILocation(line: 51, column: 27, scope: !106)
!110 = !DILocation(line: 51, column: 47, scope: !106)
!111 = !DILocation(line: 51, column: 46, scope: !106)
!112 = !DILocation(line: 51, column: 37, scope: !106)
!113 = !DILocation(line: 51, column: 57, scope: !106)
!114 = !DILocation(line: 51, column: 17, scope: !106)
!115 = !DILocation(line: 51, column: 64, scope: !106)
!116 = !DILocation(line: 51, column: 17, scope: !107)
!117 = !DILocation(line: 55, column: 34, scope: !118)
!118 = distinct !DILexicalBlock(scope: !106, file: !45, line: 52, column: 13)
!119 = !DILocation(line: 55, column: 27, scope: !118)
!120 = !DILocation(line: 55, column: 25, scope: !118)
!121 = !DILocation(line: 56, column: 21, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !45, line: 56, column: 21)
!123 = !DILocation(line: 56, column: 29, scope: !122)
!124 = !DILocation(line: 56, column: 33, scope: !122)
!125 = !DILocation(line: 56, column: 36, scope: !122)
!126 = !DILocation(line: 56, column: 41, scope: !122)
!127 = !DILocation(line: 56, column: 48, scope: !122)
!128 = !DILocation(line: 56, column: 52, scope: !122)
!129 = !DILocation(line: 56, column: 21, scope: !118)
!130 = !DILocation(line: 58, column: 21, scope: !131)
!131 = distinct !DILexicalBlock(scope: !122, file: !45, line: 57, column: 17)
!132 = !DILocation(line: 58, column: 26, scope: !131)
!133 = !DILocation(line: 58, column: 33, scope: !131)
!134 = !DILocation(line: 58, column: 37, scope: !131)
!135 = !DILocation(line: 59, column: 17, scope: !131)
!136 = !DILocation(line: 60, column: 13, scope: !118)
!137 = !DILocation(line: 63, column: 17, scope: !138)
!138 = distinct !DILexicalBlock(scope: !106, file: !45, line: 62, column: 13)
!139 = !DILocation(line: 65, column: 17, scope: !138)
!140 = !DILocation(line: 65, column: 22, scope: !138)
!141 = !DILocation(line: 65, column: 31, scope: !138)
!142 = !DILocation(line: 67, column: 9, scope: !107)
!143 = !DILocalVariable(name: "dataCopy", scope: !144, file: !45, line: 70, type: !42)
!144 = distinct !DILexicalBlock(scope: !80, file: !45, line: 69, column: 5)
!145 = !DILocation(line: 70, column: 16, scope: !144)
!146 = !DILocation(line: 70, column: 27, scope: !144)
!147 = !DILocalVariable(name: "data", scope: !144, file: !45, line: 71, type: !42)
!148 = !DILocation(line: 71, column: 16, scope: !144)
!149 = !DILocation(line: 71, column: 23, scope: !144)
!150 = !DILocation(line: 72, column: 19, scope: !144)
!151 = !DILocation(line: 72, column: 25, scope: !144)
!152 = !DILocation(line: 72, column: 9, scope: !144)
!153 = !DILocation(line: 74, column: 1, scope: !80)
!154 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !45, file: !45, line: 81, type: !53, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!155 = !DILocalVariable(name: "data", arg: 1, scope: !154, file: !45, line: 81, type: !42)
!156 = !DILocation(line: 81, column: 27, scope: !154)
!157 = !DILocalVariable(name: "args", scope: !158, file: !45, line: 84, type: !59)
!158 = distinct !DILexicalBlock(scope: !154, file: !45, line: 83, column: 5)
!159 = !DILocation(line: 84, column: 17, scope: !158)
!160 = !DILocation(line: 85, column: 9, scope: !158)
!161 = !DILocation(line: 87, column: 17, scope: !158)
!162 = !DILocation(line: 87, column: 23, scope: !158)
!163 = !DILocation(line: 87, column: 9, scope: !158)
!164 = !DILocation(line: 88, column: 9, scope: !158)
!165 = !DILocation(line: 90, column: 1, scope: !154)
!166 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 92, type: !81, scopeLine: 93, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!167 = !DILocalVariable(name: "data", scope: !166, file: !45, line: 94, type: !42)
!168 = !DILocation(line: 94, column: 12, scope: !166)
!169 = !DILocalVariable(name: "dataBuffer", scope: !166, file: !45, line: 95, type: !86)
!170 = !DILocation(line: 95, column: 10, scope: !166)
!171 = !DILocation(line: 96, column: 12, scope: !166)
!172 = !DILocation(line: 96, column: 10, scope: !166)
!173 = !DILocation(line: 98, column: 12, scope: !166)
!174 = !DILocation(line: 98, column: 5, scope: !166)
!175 = !DILocalVariable(name: "dataCopy", scope: !176, file: !45, line: 100, type: !42)
!176 = distinct !DILexicalBlock(scope: !166, file: !45, line: 99, column: 5)
!177 = !DILocation(line: 100, column: 16, scope: !176)
!178 = !DILocation(line: 100, column: 27, scope: !176)
!179 = !DILocalVariable(name: "data", scope: !176, file: !45, line: 101, type: !42)
!180 = !DILocation(line: 101, column: 16, scope: !176)
!181 = !DILocation(line: 101, column: 23, scope: !176)
!182 = !DILocation(line: 102, column: 23, scope: !176)
!183 = !DILocation(line: 102, column: 29, scope: !176)
!184 = !DILocation(line: 102, column: 9, scope: !176)
!185 = !DILocation(line: 104, column: 1, scope: !166)
!186 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !45, file: !45, line: 107, type: !53, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!187 = !DILocalVariable(name: "data", arg: 1, scope: !186, file: !45, line: 107, type: !42)
!188 = !DILocation(line: 107, column: 27, scope: !186)
!189 = !DILocalVariable(name: "args", scope: !190, file: !45, line: 110, type: !59)
!190 = distinct !DILexicalBlock(scope: !186, file: !45, line: 109, column: 5)
!191 = !DILocation(line: 110, column: 17, scope: !190)
!192 = !DILocation(line: 111, column: 9, scope: !190)
!193 = !DILocation(line: 113, column: 23, scope: !190)
!194 = !DILocation(line: 113, column: 9, scope: !190)
!195 = !DILocation(line: 114, column: 9, scope: !190)
!196 = !DILocation(line: 116, column: 1, scope: !186)
!197 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 118, type: !81, scopeLine: 119, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!198 = !DILocalVariable(name: "data", scope: !197, file: !45, line: 120, type: !42)
!199 = !DILocation(line: 120, column: 12, scope: !197)
!200 = !DILocalVariable(name: "dataBuffer", scope: !197, file: !45, line: 121, type: !86)
!201 = !DILocation(line: 121, column: 10, scope: !197)
!202 = !DILocation(line: 122, column: 12, scope: !197)
!203 = !DILocation(line: 122, column: 10, scope: !197)
!204 = !DILocalVariable(name: "dataLen", scope: !205, file: !45, line: 125, type: !94)
!205 = distinct !DILexicalBlock(scope: !197, file: !45, line: 123, column: 5)
!206 = !DILocation(line: 125, column: 16, scope: !205)
!207 = !DILocation(line: 125, column: 33, scope: !205)
!208 = !DILocation(line: 125, column: 26, scope: !205)
!209 = !DILocation(line: 127, column: 17, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !45, line: 127, column: 13)
!211 = !DILocation(line: 127, column: 16, scope: !210)
!212 = !DILocation(line: 127, column: 25, scope: !210)
!213 = !DILocation(line: 127, column: 13, scope: !205)
!214 = !DILocation(line: 130, column: 23, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !45, line: 130, column: 17)
!216 = distinct !DILexicalBlock(scope: !210, file: !45, line: 128, column: 9)
!217 = !DILocation(line: 130, column: 28, scope: !215)
!218 = !DILocation(line: 130, column: 27, scope: !215)
!219 = !DILocation(line: 130, column: 47, scope: !215)
!220 = !DILocation(line: 130, column: 46, scope: !215)
!221 = !DILocation(line: 130, column: 37, scope: !215)
!222 = !DILocation(line: 130, column: 57, scope: !215)
!223 = !DILocation(line: 130, column: 17, scope: !215)
!224 = !DILocation(line: 130, column: 64, scope: !215)
!225 = !DILocation(line: 130, column: 17, scope: !216)
!226 = !DILocation(line: 134, column: 34, scope: !227)
!227 = distinct !DILexicalBlock(scope: !215, file: !45, line: 131, column: 13)
!228 = !DILocation(line: 134, column: 27, scope: !227)
!229 = !DILocation(line: 134, column: 25, scope: !227)
!230 = !DILocation(line: 135, column: 21, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !45, line: 135, column: 21)
!232 = !DILocation(line: 135, column: 29, scope: !231)
!233 = !DILocation(line: 135, column: 33, scope: !231)
!234 = !DILocation(line: 135, column: 36, scope: !231)
!235 = !DILocation(line: 135, column: 41, scope: !231)
!236 = !DILocation(line: 135, column: 48, scope: !231)
!237 = !DILocation(line: 135, column: 52, scope: !231)
!238 = !DILocation(line: 135, column: 21, scope: !227)
!239 = !DILocation(line: 137, column: 21, scope: !240)
!240 = distinct !DILexicalBlock(scope: !231, file: !45, line: 136, column: 17)
!241 = !DILocation(line: 137, column: 26, scope: !240)
!242 = !DILocation(line: 137, column: 33, scope: !240)
!243 = !DILocation(line: 137, column: 37, scope: !240)
!244 = !DILocation(line: 138, column: 17, scope: !240)
!245 = !DILocation(line: 139, column: 13, scope: !227)
!246 = !DILocation(line: 142, column: 17, scope: !247)
!247 = distinct !DILexicalBlock(scope: !215, file: !45, line: 141, column: 13)
!248 = !DILocation(line: 144, column: 17, scope: !247)
!249 = !DILocation(line: 144, column: 22, scope: !247)
!250 = !DILocation(line: 144, column: 31, scope: !247)
!251 = !DILocation(line: 146, column: 9, scope: !216)
!252 = !DILocalVariable(name: "dataCopy", scope: !253, file: !45, line: 149, type: !42)
!253 = distinct !DILexicalBlock(scope: !197, file: !45, line: 148, column: 5)
!254 = !DILocation(line: 149, column: 16, scope: !253)
!255 = !DILocation(line: 149, column: 27, scope: !253)
!256 = !DILocalVariable(name: "data", scope: !253, file: !45, line: 150, type: !42)
!257 = !DILocation(line: 150, column: 16, scope: !253)
!258 = !DILocation(line: 150, column: 23, scope: !253)
!259 = !DILocation(line: 151, column: 23, scope: !253)
!260 = !DILocation(line: 151, column: 29, scope: !253)
!261 = !DILocation(line: 151, column: 9, scope: !253)
!262 = !DILocation(line: 153, column: 1, scope: !197)
!263 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_31_good", scope: !45, file: !45, line: 155, type: !81, scopeLine: 156, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!264 = !DILocation(line: 157, column: 5, scope: !263)
!265 = !DILocation(line: 158, column: 5, scope: !263)
!266 = !DILocation(line: 159, column: 1, scope: !263)
!267 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !268, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !42}
!270 = !DILocalVariable(name: "line", arg: 1, scope: !267, file: !3, line: 11, type: !42)
!271 = !DILocation(line: 11, column: 25, scope: !267)
!272 = !DILocation(line: 13, column: 1, scope: !267)
!273 = !DILocation(line: 14, column: 8, scope: !274)
!274 = distinct !DILexicalBlock(scope: !267, file: !3, line: 14, column: 8)
!275 = !DILocation(line: 14, column: 13, scope: !274)
!276 = !DILocation(line: 14, column: 8, scope: !267)
!277 = !DILocation(line: 16, column: 24, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !3, line: 15, column: 5)
!279 = !DILocation(line: 16, column: 9, scope: !278)
!280 = !DILocation(line: 17, column: 5, scope: !278)
!281 = !DILocation(line: 18, column: 5, scope: !267)
!282 = !DILocation(line: 19, column: 1, scope: !267)
!283 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !268, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!284 = !DILocalVariable(name: "line", arg: 1, scope: !283, file: !3, line: 20, type: !42)
!285 = !DILocation(line: 20, column: 29, scope: !283)
!286 = !DILocation(line: 22, column: 8, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !3, line: 22, column: 8)
!288 = !DILocation(line: 22, column: 13, scope: !287)
!289 = !DILocation(line: 22, column: 8, scope: !283)
!290 = !DILocation(line: 24, column: 24, scope: !291)
!291 = distinct !DILexicalBlock(scope: !287, file: !3, line: 23, column: 5)
!292 = !DILocation(line: 24, column: 9, scope: !291)
!293 = !DILocation(line: 25, column: 5, scope: !291)
!294 = !DILocation(line: 26, column: 1, scope: !283)
!295 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !296, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 74, baseType: !23)
!300 = !DILocalVariable(name: "line", arg: 1, scope: !295, file: !3, line: 27, type: !298)
!301 = !DILocation(line: 27, column: 29, scope: !295)
!302 = !DILocation(line: 29, column: 8, scope: !303)
!303 = distinct !DILexicalBlock(scope: !295, file: !3, line: 29, column: 8)
!304 = !DILocation(line: 29, column: 13, scope: !303)
!305 = !DILocation(line: 29, column: 8, scope: !295)
!306 = !DILocation(line: 31, column: 27, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !3, line: 30, column: 5)
!308 = !DILocation(line: 31, column: 9, scope: !307)
!309 = !DILocation(line: 32, column: 5, scope: !307)
!310 = !DILocation(line: 33, column: 1, scope: !295)
!311 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !312, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !23}
!314 = !DILocalVariable(name: "intNumber", arg: 1, scope: !311, file: !3, line: 35, type: !23)
!315 = !DILocation(line: 35, column: 24, scope: !311)
!316 = !DILocation(line: 37, column: 20, scope: !311)
!317 = !DILocation(line: 37, column: 5, scope: !311)
!318 = !DILocation(line: 38, column: 1, scope: !311)
!319 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !320, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !322}
!322 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!323 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !319, file: !3, line: 40, type: !322)
!324 = !DILocation(line: 40, column: 28, scope: !319)
!325 = !DILocation(line: 42, column: 21, scope: !319)
!326 = !DILocation(line: 42, column: 5, scope: !319)
!327 = !DILocation(line: 43, column: 1, scope: !319)
!328 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !329, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !331}
!331 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!332 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !328, file: !3, line: 45, type: !331)
!333 = !DILocation(line: 45, column: 28, scope: !328)
!334 = !DILocation(line: 47, column: 20, scope: !328)
!335 = !DILocation(line: 47, column: 5, scope: !328)
!336 = !DILocation(line: 48, column: 1, scope: !328)
!337 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !338, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !340}
!340 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!341 = !DILocalVariable(name: "longNumber", arg: 1, scope: !337, file: !3, line: 50, type: !340)
!342 = !DILocation(line: 50, column: 26, scope: !337)
!343 = !DILocation(line: 52, column: 21, scope: !337)
!344 = !DILocation(line: 52, column: 5, scope: !337)
!345 = !DILocation(line: 53, column: 1, scope: !337)
!346 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !347, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !349}
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !350, line: 27, baseType: !351)
!350 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !352, line: 44, baseType: !340)
!352 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!353 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !346, file: !3, line: 55, type: !349)
!354 = !DILocation(line: 55, column: 33, scope: !346)
!355 = !DILocation(line: 57, column: 29, scope: !346)
!356 = !DILocation(line: 57, column: 5, scope: !346)
!357 = !DILocation(line: 58, column: 1, scope: !346)
!358 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !359, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !94}
!361 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !358, file: !3, line: 60, type: !94)
!362 = !DILocation(line: 60, column: 29, scope: !358)
!363 = !DILocation(line: 62, column: 21, scope: !358)
!364 = !DILocation(line: 62, column: 5, scope: !358)
!365 = !DILocation(line: 63, column: 1, scope: !358)
!366 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !367, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !43}
!369 = !DILocalVariable(name: "charHex", arg: 1, scope: !366, file: !3, line: 65, type: !43)
!370 = !DILocation(line: 65, column: 29, scope: !366)
!371 = !DILocation(line: 67, column: 22, scope: !366)
!372 = !DILocation(line: 67, column: 5, scope: !366)
!373 = !DILocation(line: 68, column: 1, scope: !366)
!374 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !375, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !299}
!377 = !DILocalVariable(name: "wideChar", arg: 1, scope: !374, file: !3, line: 70, type: !299)
!378 = !DILocation(line: 70, column: 29, scope: !374)
!379 = !DILocalVariable(name: "s", scope: !374, file: !3, line: 74, type: !380)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 64, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 2)
!383 = !DILocation(line: 74, column: 13, scope: !374)
!384 = !DILocation(line: 75, column: 16, scope: !374)
!385 = !DILocation(line: 75, column: 9, scope: !374)
!386 = !DILocation(line: 75, column: 14, scope: !374)
!387 = !DILocation(line: 76, column: 9, scope: !374)
!388 = !DILocation(line: 76, column: 14, scope: !374)
!389 = !DILocation(line: 77, column: 21, scope: !374)
!390 = !DILocation(line: 77, column: 5, scope: !374)
!391 = !DILocation(line: 78, column: 1, scope: !374)
!392 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !393, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !7}
!395 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !392, file: !3, line: 80, type: !7)
!396 = !DILocation(line: 80, column: 33, scope: !392)
!397 = !DILocation(line: 82, column: 20, scope: !392)
!398 = !DILocation(line: 82, column: 5, scope: !392)
!399 = !DILocation(line: 83, column: 1, scope: !392)
!400 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !401, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !25}
!403 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !400, file: !3, line: 85, type: !25)
!404 = !DILocation(line: 85, column: 45, scope: !400)
!405 = !DILocation(line: 87, column: 22, scope: !400)
!406 = !DILocation(line: 87, column: 5, scope: !400)
!407 = !DILocation(line: 88, column: 1, scope: !400)
!408 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !409, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !411}
!411 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!412 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !408, file: !3, line: 90, type: !411)
!413 = !DILocation(line: 90, column: 29, scope: !408)
!414 = !DILocation(line: 92, column: 20, scope: !408)
!415 = !DILocation(line: 92, column: 5, scope: !408)
!416 = !DILocation(line: 93, column: 1, scope: !408)
!417 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !418, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !422, line: 100, baseType: !423)
!422 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_598/source_code")
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !422, line: 96, size: 64, elements: !424)
!424 = !{!425, !426}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !423, file: !422, line: 98, baseType: !23, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !423, file: !422, line: 99, baseType: !23, size: 32, offset: 32)
!427 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !417, file: !3, line: 95, type: !420)
!428 = !DILocation(line: 95, column: 40, scope: !417)
!429 = !DILocation(line: 97, column: 26, scope: !417)
!430 = !DILocation(line: 97, column: 47, scope: !417)
!431 = !DILocation(line: 97, column: 55, scope: !417)
!432 = !DILocation(line: 97, column: 76, scope: !417)
!433 = !DILocation(line: 97, column: 5, scope: !417)
!434 = !DILocation(line: 98, column: 1, scope: !417)
!435 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !436, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !438, !94}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!439 = !DILocalVariable(name: "bytes", arg: 1, scope: !435, file: !3, line: 100, type: !438)
!440 = !DILocation(line: 100, column: 38, scope: !435)
!441 = !DILocalVariable(name: "numBytes", arg: 2, scope: !435, file: !3, line: 100, type: !94)
!442 = !DILocation(line: 100, column: 52, scope: !435)
!443 = !DILocalVariable(name: "i", scope: !435, file: !3, line: 102, type: !94)
!444 = !DILocation(line: 102, column: 12, scope: !435)
!445 = !DILocation(line: 103, column: 12, scope: !446)
!446 = distinct !DILexicalBlock(scope: !435, file: !3, line: 103, column: 5)
!447 = !DILocation(line: 103, column: 10, scope: !446)
!448 = !DILocation(line: 103, column: 17, scope: !449)
!449 = distinct !DILexicalBlock(scope: !446, file: !3, line: 103, column: 5)
!450 = !DILocation(line: 103, column: 21, scope: !449)
!451 = !DILocation(line: 103, column: 19, scope: !449)
!452 = !DILocation(line: 103, column: 5, scope: !446)
!453 = !DILocation(line: 105, column: 24, scope: !454)
!454 = distinct !DILexicalBlock(scope: !449, file: !3, line: 104, column: 5)
!455 = !DILocation(line: 105, column: 30, scope: !454)
!456 = !DILocation(line: 105, column: 9, scope: !454)
!457 = !DILocation(line: 106, column: 5, scope: !454)
!458 = !DILocation(line: 103, column: 31, scope: !449)
!459 = !DILocation(line: 103, column: 5, scope: !449)
!460 = distinct !{!460, !452, !461, !462}
!461 = !DILocation(line: 106, column: 5, scope: !446)
!462 = !{!"llvm.loop.mustprogress"}
!463 = !DILocation(line: 107, column: 5, scope: !435)
!464 = !DILocation(line: 108, column: 1, scope: !435)
!465 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !466, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!466 = !DISubroutineType(types: !467)
!467 = !{!94, !438, !94, !42}
!468 = !DILocalVariable(name: "bytes", arg: 1, scope: !465, file: !3, line: 113, type: !438)
!469 = !DILocation(line: 113, column: 39, scope: !465)
!470 = !DILocalVariable(name: "numBytes", arg: 2, scope: !465, file: !3, line: 113, type: !94)
!471 = !DILocation(line: 113, column: 53, scope: !465)
!472 = !DILocalVariable(name: "hex", arg: 3, scope: !465, file: !3, line: 113, type: !42)
!473 = !DILocation(line: 113, column: 71, scope: !465)
!474 = !DILocalVariable(name: "numWritten", scope: !465, file: !3, line: 115, type: !94)
!475 = !DILocation(line: 115, column: 12, scope: !465)
!476 = !DILocation(line: 121, column: 5, scope: !465)
!477 = !DILocation(line: 121, column: 12, scope: !465)
!478 = !DILocation(line: 121, column: 25, scope: !465)
!479 = !DILocation(line: 121, column: 23, scope: !465)
!480 = !DILocation(line: 121, column: 34, scope: !465)
!481 = !DILocation(line: 121, column: 37, scope: !465)
!482 = !DILocation(line: 121, column: 67, scope: !465)
!483 = !DILocation(line: 121, column: 70, scope: !465)
!484 = !DILocation(line: 0, scope: !465)
!485 = !DILocalVariable(name: "byte", scope: !486, file: !3, line: 123, type: !23)
!486 = distinct !DILexicalBlock(scope: !465, file: !3, line: 122, column: 5)
!487 = !DILocation(line: 123, column: 13, scope: !486)
!488 = !DILocation(line: 124, column: 17, scope: !486)
!489 = !DILocation(line: 124, column: 25, scope: !486)
!490 = !DILocation(line: 124, column: 23, scope: !486)
!491 = !DILocation(line: 124, column: 9, scope: !486)
!492 = !DILocation(line: 125, column: 45, scope: !486)
!493 = !DILocation(line: 125, column: 29, scope: !486)
!494 = !DILocation(line: 125, column: 9, scope: !486)
!495 = !DILocation(line: 125, column: 15, scope: !486)
!496 = !DILocation(line: 125, column: 27, scope: !486)
!497 = !DILocation(line: 126, column: 9, scope: !486)
!498 = distinct !{!498, !476, !499, !462}
!499 = !DILocation(line: 127, column: 5, scope: !465)
!500 = !DILocation(line: 129, column: 12, scope: !465)
!501 = !DILocation(line: 129, column: 5, scope: !465)
!502 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !503, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!503 = !DISubroutineType(types: !504)
!504 = !{!94, !438, !94, !298}
!505 = !DILocalVariable(name: "bytes", arg: 1, scope: !502, file: !3, line: 135, type: !438)
!506 = !DILocation(line: 135, column: 41, scope: !502)
!507 = !DILocalVariable(name: "numBytes", arg: 2, scope: !502, file: !3, line: 135, type: !94)
!508 = !DILocation(line: 135, column: 55, scope: !502)
!509 = !DILocalVariable(name: "hex", arg: 3, scope: !502, file: !3, line: 135, type: !298)
!510 = !DILocation(line: 135, column: 76, scope: !502)
!511 = !DILocalVariable(name: "numWritten", scope: !502, file: !3, line: 137, type: !94)
!512 = !DILocation(line: 137, column: 12, scope: !502)
!513 = !DILocation(line: 143, column: 5, scope: !502)
!514 = !DILocation(line: 143, column: 12, scope: !502)
!515 = !DILocation(line: 143, column: 25, scope: !502)
!516 = !DILocation(line: 143, column: 23, scope: !502)
!517 = !DILocation(line: 143, column: 34, scope: !502)
!518 = !DILocation(line: 143, column: 47, scope: !502)
!519 = !DILocation(line: 143, column: 55, scope: !502)
!520 = !DILocation(line: 143, column: 53, scope: !502)
!521 = !DILocation(line: 143, column: 37, scope: !502)
!522 = !DILocation(line: 143, column: 68, scope: !502)
!523 = !DILocation(line: 143, column: 81, scope: !502)
!524 = !DILocation(line: 143, column: 89, scope: !502)
!525 = !DILocation(line: 143, column: 87, scope: !502)
!526 = !DILocation(line: 143, column: 100, scope: !502)
!527 = !DILocation(line: 143, column: 71, scope: !502)
!528 = !DILocation(line: 0, scope: !502)
!529 = !DILocalVariable(name: "byte", scope: !530, file: !3, line: 145, type: !23)
!530 = distinct !DILexicalBlock(scope: !502, file: !3, line: 144, column: 5)
!531 = !DILocation(line: 145, column: 13, scope: !530)
!532 = !DILocation(line: 146, column: 18, scope: !530)
!533 = !DILocation(line: 146, column: 26, scope: !530)
!534 = !DILocation(line: 146, column: 24, scope: !530)
!535 = !DILocation(line: 146, column: 9, scope: !530)
!536 = !DILocation(line: 147, column: 45, scope: !530)
!537 = !DILocation(line: 147, column: 29, scope: !530)
!538 = !DILocation(line: 147, column: 9, scope: !530)
!539 = !DILocation(line: 147, column: 15, scope: !530)
!540 = !DILocation(line: 147, column: 27, scope: !530)
!541 = !DILocation(line: 148, column: 9, scope: !530)
!542 = distinct !{!542, !513, !543, !462}
!543 = !DILocation(line: 149, column: 5, scope: !502)
!544 = !DILocation(line: 151, column: 12, scope: !502)
!545 = !DILocation(line: 151, column: 5, scope: !502)
!546 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !547, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DISubroutineType(types: !548)
!548 = !{!23}
!549 = !DILocation(line: 158, column: 5, scope: !546)
!550 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !547, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!551 = !DILocation(line: 163, column: 5, scope: !550)
!552 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !547, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!553 = !DILocation(line: 168, column: 13, scope: !552)
!554 = !DILocation(line: 168, column: 20, scope: !552)
!555 = !DILocation(line: 168, column: 5, scope: !552)
!556 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !81, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!557 = !DILocation(line: 187, column: 16, scope: !556)
!558 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !81, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!559 = !DILocation(line: 188, column: 16, scope: !558)
!560 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !81, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!561 = !DILocation(line: 189, column: 16, scope: !560)
!562 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !81, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!563 = !DILocation(line: 190, column: 16, scope: !562)
!564 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !81, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!565 = !DILocation(line: 191, column: 16, scope: !564)
!566 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !81, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DILocation(line: 192, column: 16, scope: !566)
!568 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !81, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!569 = !DILocation(line: 193, column: 16, scope: !568)
!570 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !81, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!571 = !DILocation(line: 194, column: 16, scope: !570)
!572 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !81, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!573 = !DILocation(line: 195, column: 16, scope: !572)
!574 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !81, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!575 = !DILocation(line: 198, column: 15, scope: !574)
!576 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !81, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!577 = !DILocation(line: 199, column: 15, scope: !576)
!578 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !81, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!579 = !DILocation(line: 200, column: 15, scope: !578)
!580 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !81, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!581 = !DILocation(line: 201, column: 15, scope: !580)
!582 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !81, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!583 = !DILocation(line: 202, column: 15, scope: !582)
!584 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !81, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!585 = !DILocation(line: 203, column: 15, scope: !584)
!586 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !81, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!587 = !DILocation(line: 204, column: 15, scope: !586)
!588 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !81, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!589 = !DILocation(line: 205, column: 15, scope: !588)
!590 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !81, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!591 = !DILocation(line: 206, column: 15, scope: !590)
