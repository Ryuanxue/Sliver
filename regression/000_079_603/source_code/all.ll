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
define dso_local i8* @badSource(i8* %data) #0 !dbg !52 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !57, metadata !DIExpression()), !dbg !62
  %0 = load i8*, i8** %data.addr, align 8, !dbg !63
  %call = call i64 @strlen(i8* %0) #8, !dbg !64
  store i64 %call, i64* %dataLen, align 8, !dbg !62
  %1 = load i64, i64* %dataLen, align 8, !dbg !65
  %sub = sub i64 100, %1, !dbg !67
  %cmp = icmp ugt i64 %sub, 1, !dbg !68
  br i1 %cmp, label %if.then, label %if.end18, !dbg !69

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !70
  %3 = load i64, i64* %dataLen, align 8, !dbg !73
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !74
  %4 = load i64, i64* %dataLen, align 8, !dbg !75
  %sub1 = sub i64 100, %4, !dbg !76
  %conv = trunc i64 %sub1 to i32, !dbg !77
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !78
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %5), !dbg !79
  %cmp3 = icmp ne i8* %call2, null, !dbg !80
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !81

if.then5:                                         ; preds = %if.then
  %6 = load i8*, i8** %data.addr, align 8, !dbg !82
  %call6 = call i64 @strlen(i8* %6) #8, !dbg !84
  store i64 %call6, i64* %dataLen, align 8, !dbg !85
  %7 = load i64, i64* %dataLen, align 8, !dbg !86
  %cmp7 = icmp ugt i64 %7, 0, !dbg !88
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !89

land.lhs.true:                                    ; preds = %if.then5
  %8 = load i8*, i8** %data.addr, align 8, !dbg !90
  %9 = load i64, i64* %dataLen, align 8, !dbg !91
  %sub9 = sub i64 %9, 1, !dbg !92
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %sub9, !dbg !90
  %10 = load i8, i8* %arrayidx, align 1, !dbg !90
  %conv10 = sext i8 %10 to i32, !dbg !90
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !93
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !94

if.then13:                                        ; preds = %land.lhs.true
  %11 = load i8*, i8** %data.addr, align 8, !dbg !95
  %12 = load i64, i64* %dataLen, align 8, !dbg !97
  %sub14 = sub i64 %12, 1, !dbg !98
  %arrayidx15 = getelementptr inbounds i8, i8* %11, i64 %sub14, !dbg !95
  store i8 0, i8* %arrayidx15, align 1, !dbg !99
  br label %if.end, !dbg !100

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !101

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !102
  %13 = load i8*, i8** %data.addr, align 8, !dbg !104
  %14 = load i64, i64* %dataLen, align 8, !dbg !105
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %14, !dbg !104
  store i8 0, i8* %arrayidx16, align 1, !dbg !106
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !107

if.end18:                                         ; preds = %if.end17, %entry
  %15 = load i8*, i8** %data.addr, align 8, !dbg !108
  ret i8* %15, !dbg !109
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !110 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !115, metadata !DIExpression()), !dbg !131
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !132
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !132
  call void @llvm.va_start(i8* %arraydecay1), !dbg !132
  %0 = load i8*, i8** %data.addr, align 8, !dbg !133
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !134
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !135
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !136
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !136
  call void @llvm.va_end(i8* %arraydecay34), !dbg !136
  ret void, !dbg !137
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #4

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_42_bad() #0 !dbg !138 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !143, metadata !DIExpression()), !dbg !147
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !147
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !147
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !148
  store i8* %arraydecay, i8** %data, align 8, !dbg !149
  %1 = load i8*, i8** %data, align 8, !dbg !150
  %call = call i8* @badSource(i8* %1), !dbg !151
  store i8* %call, i8** %data, align 8, !dbg !152
  %2 = load i8*, i8** %data, align 8, !dbg !153
  %3 = load i8*, i8** %data, align 8, !dbg !154
  call void (i8*, ...) @badVaSink(i8* %2, i8* %3), !dbg !155
  ret void, !dbg !156
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodG2BSource(i8* %data) #0 !dbg !157 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !158, metadata !DIExpression()), !dbg !159
  %0 = load i8*, i8** %data.addr, align 8, !dbg !160
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !161
  %1 = load i8*, i8** %data.addr, align 8, !dbg !162
  ret i8* %1, !dbg !163
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !164 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !167, metadata !DIExpression()), !dbg !169
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !170
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !170
  call void @llvm.va_start(i8* %arraydecay1), !dbg !170
  %0 = load i8*, i8** %data.addr, align 8, !dbg !171
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !172
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !173
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !174
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !174
  call void @llvm.va_end(i8* %arraydecay34), !dbg !174
  ret void, !dbg !175
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !176 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !179, metadata !DIExpression()), !dbg !180
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !180
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !180
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !181
  store i8* %arraydecay, i8** %data, align 8, !dbg !182
  %1 = load i8*, i8** %data, align 8, !dbg !183
  %call = call i8* @goodG2BSource(i8* %1), !dbg !184
  store i8* %call, i8** %data, align 8, !dbg !185
  %2 = load i8*, i8** %data, align 8, !dbg !186
  %3 = load i8*, i8** %data, align 8, !dbg !187
  call void (i8*, ...) @goodG2BVaSink(i8* %2, i8* %3), !dbg !188
  ret void, !dbg !189
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodB2GSource(i8* %data) #0 !dbg !190 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !193, metadata !DIExpression()), !dbg !195
  %0 = load i8*, i8** %data.addr, align 8, !dbg !196
  %call = call i64 @strlen(i8* %0) #8, !dbg !197
  store i64 %call, i64* %dataLen, align 8, !dbg !195
  %1 = load i64, i64* %dataLen, align 8, !dbg !198
  %sub = sub i64 100, %1, !dbg !200
  %cmp = icmp ugt i64 %sub, 1, !dbg !201
  br i1 %cmp, label %if.then, label %if.end18, !dbg !202

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !203
  %3 = load i64, i64* %dataLen, align 8, !dbg !206
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !207
  %4 = load i64, i64* %dataLen, align 8, !dbg !208
  %sub1 = sub i64 100, %4, !dbg !209
  %conv = trunc i64 %sub1 to i32, !dbg !210
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !211
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %5), !dbg !212
  %cmp3 = icmp ne i8* %call2, null, !dbg !213
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !214

if.then5:                                         ; preds = %if.then
  %6 = load i8*, i8** %data.addr, align 8, !dbg !215
  %call6 = call i64 @strlen(i8* %6) #8, !dbg !217
  store i64 %call6, i64* %dataLen, align 8, !dbg !218
  %7 = load i64, i64* %dataLen, align 8, !dbg !219
  %cmp7 = icmp ugt i64 %7, 0, !dbg !221
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !222

land.lhs.true:                                    ; preds = %if.then5
  %8 = load i8*, i8** %data.addr, align 8, !dbg !223
  %9 = load i64, i64* %dataLen, align 8, !dbg !224
  %sub9 = sub i64 %9, 1, !dbg !225
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %sub9, !dbg !223
  %10 = load i8, i8* %arrayidx, align 1, !dbg !223
  %conv10 = sext i8 %10 to i32, !dbg !223
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !226
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !227

if.then13:                                        ; preds = %land.lhs.true
  %11 = load i8*, i8** %data.addr, align 8, !dbg !228
  %12 = load i64, i64* %dataLen, align 8, !dbg !230
  %sub14 = sub i64 %12, 1, !dbg !231
  %arrayidx15 = getelementptr inbounds i8, i8* %11, i64 %sub14, !dbg !228
  store i8 0, i8* %arrayidx15, align 1, !dbg !232
  br label %if.end, !dbg !233

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !234

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !235
  %13 = load i8*, i8** %data.addr, align 8, !dbg !237
  %14 = load i64, i64* %dataLen, align 8, !dbg !238
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %14, !dbg !237
  store i8 0, i8* %arrayidx16, align 1, !dbg !239
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !240

if.end18:                                         ; preds = %if.end17, %entry
  %15 = load i8*, i8** %data.addr, align 8, !dbg !241
  ret i8* %15, !dbg !242
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !243 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !244, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !246, metadata !DIExpression()), !dbg !248
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !249
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !249
  call void @llvm.va_start(i8* %arraydecay1), !dbg !249
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !250
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !251
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !252
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !252
  call void @llvm.va_end(i8* %arraydecay34), !dbg !252
  ret void, !dbg !253
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !254 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !255, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !257, metadata !DIExpression()), !dbg !258
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !258
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !258
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !259
  store i8* %arraydecay, i8** %data, align 8, !dbg !260
  %1 = load i8*, i8** %data, align 8, !dbg !261
  %call = call i8* @goodB2GSource(i8* %1), !dbg !262
  store i8* %call, i8** %data, align 8, !dbg !263
  %2 = load i8*, i8** %data, align 8, !dbg !264
  %3 = load i8*, i8** %data, align 8, !dbg !265
  call void (i8*, ...) @goodB2GVaSink(i8* %2, i8* %3), !dbg !266
  ret void, !dbg !267
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_42_good() #0 !dbg !268 {
entry:
  call void @goodG2B(), !dbg !269
  call void @goodB2G(), !dbg !270
  ret void, !dbg !271
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !272 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !275, metadata !DIExpression()), !dbg !276
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !277
  %0 = load i8*, i8** %line.addr, align 8, !dbg !278
  %cmp = icmp ne i8* %0, null, !dbg !280
  br i1 %cmp, label %if.then, label %if.end, !dbg !281

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !282
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !284
  br label %if.end, !dbg !285

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !286
  ret void, !dbg !287
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !288 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !289, metadata !DIExpression()), !dbg !290
  %0 = load i8*, i8** %line.addr, align 8, !dbg !291
  %cmp = icmp ne i8* %0, null, !dbg !293
  br i1 %cmp, label %if.then, label %if.end, !dbg !294

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !295
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !297
  br label %if.end, !dbg !298

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !299
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !300 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !305, metadata !DIExpression()), !dbg !306
  %0 = load i32*, i32** %line.addr, align 8, !dbg !307
  %cmp = icmp ne i32* %0, null, !dbg !309
  br i1 %cmp, label %if.then, label %if.end, !dbg !310

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !311
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !313
  br label %if.end, !dbg !314

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !315
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !316 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !319, metadata !DIExpression()), !dbg !320
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !321
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !322
  ret void, !dbg !323
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !324 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !328, metadata !DIExpression()), !dbg !329
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !330
  %conv = sext i16 %0 to i32, !dbg !330
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !331
  ret void, !dbg !332
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !333 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !337, metadata !DIExpression()), !dbg !338
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !339
  %conv = fpext float %0 to double, !dbg !339
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !340
  ret void, !dbg !341
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !342 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !346, metadata !DIExpression()), !dbg !347
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !348
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !349
  ret void, !dbg !350
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !351 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !358, metadata !DIExpression()), !dbg !359
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !360
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !361
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !363 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !366, metadata !DIExpression()), !dbg !367
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !368
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !369
  ret void, !dbg !370
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !371 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !374, metadata !DIExpression()), !dbg !375
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !376
  %conv = sext i8 %0 to i32, !dbg !376
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !377
  ret void, !dbg !378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !379 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !382, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !384, metadata !DIExpression()), !dbg !388
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !389
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !390
  store i32 %0, i32* %arrayidx, align 4, !dbg !391
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !392
  store i32 0, i32* %arrayidx1, align 4, !dbg !393
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !394
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !395
  ret void, !dbg !396
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !397 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !400, metadata !DIExpression()), !dbg !401
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !402
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !403
  ret void, !dbg !404
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !405 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !408, metadata !DIExpression()), !dbg !409
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !410
  %conv = zext i8 %0 to i32, !dbg !410
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !411
  ret void, !dbg !412
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !413 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !417, metadata !DIExpression()), !dbg !418
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !419
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !420
  ret void, !dbg !421
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !422 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !432, metadata !DIExpression()), !dbg !433
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !434
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !435
  %1 = load i32, i32* %intOne, align 4, !dbg !435
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !436
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !437
  %3 = load i32, i32* %intTwo, align 4, !dbg !437
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !438
  ret void, !dbg !439
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !440 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !444, metadata !DIExpression()), !dbg !445
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !446, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.declare(metadata i64* %i, metadata !448, metadata !DIExpression()), !dbg !449
  store i64 0, i64* %i, align 8, !dbg !450
  br label %for.cond, !dbg !452

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !453
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !455
  %cmp = icmp ult i64 %0, %1, !dbg !456
  br i1 %cmp, label %for.body, label %for.end, !dbg !457

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !458
  %3 = load i64, i64* %i, align 8, !dbg !460
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !458
  %4 = load i8, i8* %arrayidx, align 1, !dbg !458
  %conv = zext i8 %4 to i32, !dbg !458
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !461
  br label %for.inc, !dbg !462

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !463
  %inc = add i64 %5, 1, !dbg !463
  store i64 %inc, i64* %i, align 8, !dbg !463
  br label %for.cond, !dbg !464, !llvm.loop !465

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !468
  ret void, !dbg !469
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !470 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !473, metadata !DIExpression()), !dbg !474
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !475, metadata !DIExpression()), !dbg !476
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !477, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !479, metadata !DIExpression()), !dbg !480
  store i64 0, i64* %numWritten, align 8, !dbg !480
  br label %while.cond, !dbg !481

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !482
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !483
  %cmp = icmp ult i64 %0, %1, !dbg !484
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !485

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #10, !dbg !486
  %2 = load i16*, i16** %call, align 8, !dbg !486
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !486
  %4 = load i64, i64* %numWritten, align 8, !dbg !486
  %mul = mul i64 2, %4, !dbg !486
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !486
  %5 = load i8, i8* %arrayidx, align 1, !dbg !486
  %conv = sext i8 %5 to i32, !dbg !486
  %idxprom = sext i32 %conv to i64, !dbg !486
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !486
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !486
  %conv2 = zext i16 %6 to i32, !dbg !486
  %and = and i32 %conv2, 4096, !dbg !486
  %tobool = icmp ne i32 %and, 0, !dbg !486
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !487

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #10, !dbg !488
  %7 = load i16*, i16** %call3, align 8, !dbg !488
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !488
  %9 = load i64, i64* %numWritten, align 8, !dbg !488
  %mul4 = mul i64 2, %9, !dbg !488
  %add = add i64 %mul4, 1, !dbg !488
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !488
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !488
  %conv6 = sext i8 %10 to i32, !dbg !488
  %idxprom7 = sext i32 %conv6 to i64, !dbg !488
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !488
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !488
  %conv9 = zext i16 %11 to i32, !dbg !488
  %and10 = and i32 %conv9, 4096, !dbg !488
  %tobool11 = icmp ne i32 %and10, 0, !dbg !487
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !489
  br i1 %12, label %while.body, label %while.end, !dbg !481

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !490, metadata !DIExpression()), !dbg !492
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !493
  %14 = load i64, i64* %numWritten, align 8, !dbg !494
  %mul12 = mul i64 2, %14, !dbg !495
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !493
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !496
  %15 = load i32, i32* %byte, align 4, !dbg !497
  %conv15 = trunc i32 %15 to i8, !dbg !498
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !499
  %17 = load i64, i64* %numWritten, align 8, !dbg !500
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !499
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !501
  %18 = load i64, i64* %numWritten, align 8, !dbg !502
  %inc = add i64 %18, 1, !dbg !502
  store i64 %inc, i64* %numWritten, align 8, !dbg !502
  br label %while.cond, !dbg !481, !llvm.loop !503

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !505
  ret i64 %19, !dbg !506
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !507 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !510, metadata !DIExpression()), !dbg !511
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !512, metadata !DIExpression()), !dbg !513
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !514, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !516, metadata !DIExpression()), !dbg !517
  store i64 0, i64* %numWritten, align 8, !dbg !517
  br label %while.cond, !dbg !518

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !519
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !520
  %cmp = icmp ult i64 %0, %1, !dbg !521
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !522

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !523
  %3 = load i64, i64* %numWritten, align 8, !dbg !524
  %mul = mul i64 2, %3, !dbg !525
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !523
  %4 = load i32, i32* %arrayidx, align 4, !dbg !523
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !526
  %tobool = icmp ne i32 %call, 0, !dbg !526
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !527

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !528
  %6 = load i64, i64* %numWritten, align 8, !dbg !529
  %mul1 = mul i64 2, %6, !dbg !530
  %add = add i64 %mul1, 1, !dbg !531
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !528
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !528
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !532
  %tobool4 = icmp ne i32 %call3, 0, !dbg !527
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !533
  br i1 %8, label %while.body, label %while.end, !dbg !518

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !534, metadata !DIExpression()), !dbg !536
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !537
  %10 = load i64, i64* %numWritten, align 8, !dbg !538
  %mul5 = mul i64 2, %10, !dbg !539
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !537
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !540
  %11 = load i32, i32* %byte, align 4, !dbg !541
  %conv = trunc i32 %11 to i8, !dbg !542
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !543
  %13 = load i64, i64* %numWritten, align 8, !dbg !544
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !543
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !545
  %14 = load i64, i64* %numWritten, align 8, !dbg !546
  %inc = add i64 %14, 1, !dbg !546
  store i64 %inc, i64* %numWritten, align 8, !dbg !546
  br label %while.cond, !dbg !518, !llvm.loop !547

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !549
  ret i64 %15, !dbg !550
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !551 {
entry:
  ret i32 1, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !555 {
entry:
  ret i32 0, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !557 {
entry:
  %call = call i32 @rand() #9, !dbg !558
  %rem = srem i32 %call, 2, !dbg !559
  ret i32 %rem, !dbg !560
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !561 {
entry:
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !563 {
entry:
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !565 {
entry:
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !567 {
entry:
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !569 {
entry:
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !571 {
entry:
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !573 {
entry:
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !575 {
entry:
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !577 {
entry:
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !579 {
entry:
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !581 {
entry:
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !583 {
entry:
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !585 {
entry:
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !587 {
entry:
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !589 {
entry:
  ret void, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !591 {
entry:
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !593 {
entry:
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !595 {
entry:
  ret void, !dbg !596
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nosync nounwind willreturn writeonly }
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_603/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_vprintf_42.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_603/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "badSource", scope: !45, file: !45, line: 28, type: !53, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{!42, !42}
!55 = !DILocalVariable(name: "data", arg: 1, scope: !52, file: !45, line: 28, type: !42)
!56 = !DILocation(line: 28, column: 25, scope: !52)
!57 = !DILocalVariable(name: "dataLen", scope: !58, file: !45, line: 32, type: !59)
!58 = distinct !DILexicalBlock(scope: !52, file: !45, line: 30, column: 5)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !60, line: 46, baseType: !61)
!60 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!61 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!62 = !DILocation(line: 32, column: 16, scope: !58)
!63 = !DILocation(line: 32, column: 33, scope: !58)
!64 = !DILocation(line: 32, column: 26, scope: !58)
!65 = !DILocation(line: 34, column: 17, scope: !66)
!66 = distinct !DILexicalBlock(scope: !58, file: !45, line: 34, column: 13)
!67 = !DILocation(line: 34, column: 16, scope: !66)
!68 = !DILocation(line: 34, column: 25, scope: !66)
!69 = !DILocation(line: 34, column: 13, scope: !58)
!70 = !DILocation(line: 37, column: 23, scope: !71)
!71 = distinct !DILexicalBlock(scope: !72, file: !45, line: 37, column: 17)
!72 = distinct !DILexicalBlock(scope: !66, file: !45, line: 35, column: 9)
!73 = !DILocation(line: 37, column: 28, scope: !71)
!74 = !DILocation(line: 37, column: 27, scope: !71)
!75 = !DILocation(line: 37, column: 47, scope: !71)
!76 = !DILocation(line: 37, column: 46, scope: !71)
!77 = !DILocation(line: 37, column: 37, scope: !71)
!78 = !DILocation(line: 37, column: 57, scope: !71)
!79 = !DILocation(line: 37, column: 17, scope: !71)
!80 = !DILocation(line: 37, column: 64, scope: !71)
!81 = !DILocation(line: 37, column: 17, scope: !72)
!82 = !DILocation(line: 41, column: 34, scope: !83)
!83 = distinct !DILexicalBlock(scope: !71, file: !45, line: 38, column: 13)
!84 = !DILocation(line: 41, column: 27, scope: !83)
!85 = !DILocation(line: 41, column: 25, scope: !83)
!86 = !DILocation(line: 42, column: 21, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !45, line: 42, column: 21)
!88 = !DILocation(line: 42, column: 29, scope: !87)
!89 = !DILocation(line: 42, column: 33, scope: !87)
!90 = !DILocation(line: 42, column: 36, scope: !87)
!91 = !DILocation(line: 42, column: 41, scope: !87)
!92 = !DILocation(line: 42, column: 48, scope: !87)
!93 = !DILocation(line: 42, column: 52, scope: !87)
!94 = !DILocation(line: 42, column: 21, scope: !83)
!95 = !DILocation(line: 44, column: 21, scope: !96)
!96 = distinct !DILexicalBlock(scope: !87, file: !45, line: 43, column: 17)
!97 = !DILocation(line: 44, column: 26, scope: !96)
!98 = !DILocation(line: 44, column: 33, scope: !96)
!99 = !DILocation(line: 44, column: 37, scope: !96)
!100 = !DILocation(line: 45, column: 17, scope: !96)
!101 = !DILocation(line: 46, column: 13, scope: !83)
!102 = !DILocation(line: 49, column: 17, scope: !103)
!103 = distinct !DILexicalBlock(scope: !71, file: !45, line: 48, column: 13)
!104 = !DILocation(line: 51, column: 17, scope: !103)
!105 = !DILocation(line: 51, column: 22, scope: !103)
!106 = !DILocation(line: 51, column: 31, scope: !103)
!107 = !DILocation(line: 53, column: 9, scope: !72)
!108 = !DILocation(line: 55, column: 12, scope: !52)
!109 = !DILocation(line: 55, column: 5, scope: !52)
!110 = distinct !DISubprogram(name: "badVaSink", scope: !45, file: !45, line: 58, type: !111, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !42, null}
!113 = !DILocalVariable(name: "data", arg: 1, scope: !110, file: !45, line: 58, type: !42)
!114 = !DILocation(line: 58, column: 23, scope: !110)
!115 = !DILocalVariable(name: "args", scope: !116, file: !45, line: 61, type: !117)
!116 = distinct !DILexicalBlock(scope: !110, file: !45, line: 60, column: 5)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !118, line: 52, baseType: !119)
!118 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !120, line: 32, baseType: !121)
!120 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !45, baseType: !122)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 192, elements: !129)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !124)
!124 = !{!125, !126, !127, !128}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !123, file: !45, line: 61, baseType: !7, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !123, file: !45, line: 61, baseType: !7, size: 32, offset: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !123, file: !45, line: 61, baseType: !22, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !123, file: !45, line: 61, baseType: !22, size: 64, offset: 128)
!129 = !{!130}
!130 = !DISubrange(count: 1)
!131 = !DILocation(line: 61, column: 17, scope: !116)
!132 = !DILocation(line: 62, column: 9, scope: !116)
!133 = !DILocation(line: 64, column: 17, scope: !116)
!134 = !DILocation(line: 64, column: 23, scope: !116)
!135 = !DILocation(line: 64, column: 9, scope: !116)
!136 = !DILocation(line: 65, column: 9, scope: !116)
!137 = !DILocation(line: 67, column: 1, scope: !110)
!138 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_42_bad", scope: !45, file: !45, line: 69, type: !139, scopeLine: 70, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!139 = !DISubroutineType(types: !140)
!140 = !{null}
!141 = !DILocalVariable(name: "data", scope: !138, file: !45, line: 71, type: !42)
!142 = !DILocation(line: 71, column: 12, scope: !138)
!143 = !DILocalVariable(name: "dataBuffer", scope: !138, file: !45, line: 72, type: !144)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 100)
!147 = !DILocation(line: 72, column: 10, scope: !138)
!148 = !DILocation(line: 73, column: 12, scope: !138)
!149 = !DILocation(line: 73, column: 10, scope: !138)
!150 = !DILocation(line: 74, column: 22, scope: !138)
!151 = !DILocation(line: 74, column: 12, scope: !138)
!152 = !DILocation(line: 74, column: 10, scope: !138)
!153 = !DILocation(line: 75, column: 15, scope: !138)
!154 = !DILocation(line: 75, column: 21, scope: !138)
!155 = !DILocation(line: 75, column: 5, scope: !138)
!156 = !DILocation(line: 76, column: 1, scope: !138)
!157 = distinct !DISubprogram(name: "goodG2BSource", scope: !45, file: !45, line: 83, type: !53, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!158 = !DILocalVariable(name: "data", arg: 1, scope: !157, file: !45, line: 83, type: !42)
!159 = !DILocation(line: 83, column: 29, scope: !157)
!160 = !DILocation(line: 86, column: 12, scope: !157)
!161 = !DILocation(line: 86, column: 5, scope: !157)
!162 = !DILocation(line: 87, column: 12, scope: !157)
!163 = !DILocation(line: 87, column: 5, scope: !157)
!164 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !45, file: !45, line: 90, type: !111, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!165 = !DILocalVariable(name: "data", arg: 1, scope: !164, file: !45, line: 90, type: !42)
!166 = !DILocation(line: 90, column: 27, scope: !164)
!167 = !DILocalVariable(name: "args", scope: !168, file: !45, line: 93, type: !117)
!168 = distinct !DILexicalBlock(scope: !164, file: !45, line: 92, column: 5)
!169 = !DILocation(line: 93, column: 17, scope: !168)
!170 = !DILocation(line: 94, column: 9, scope: !168)
!171 = !DILocation(line: 96, column: 17, scope: !168)
!172 = !DILocation(line: 96, column: 23, scope: !168)
!173 = !DILocation(line: 96, column: 9, scope: !168)
!174 = !DILocation(line: 97, column: 9, scope: !168)
!175 = !DILocation(line: 99, column: 1, scope: !164)
!176 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 101, type: !139, scopeLine: 102, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!177 = !DILocalVariable(name: "data", scope: !176, file: !45, line: 103, type: !42)
!178 = !DILocation(line: 103, column: 12, scope: !176)
!179 = !DILocalVariable(name: "dataBuffer", scope: !176, file: !45, line: 104, type: !144)
!180 = !DILocation(line: 104, column: 10, scope: !176)
!181 = !DILocation(line: 105, column: 12, scope: !176)
!182 = !DILocation(line: 105, column: 10, scope: !176)
!183 = !DILocation(line: 106, column: 26, scope: !176)
!184 = !DILocation(line: 106, column: 12, scope: !176)
!185 = !DILocation(line: 106, column: 10, scope: !176)
!186 = !DILocation(line: 107, column: 19, scope: !176)
!187 = !DILocation(line: 107, column: 25, scope: !176)
!188 = !DILocation(line: 107, column: 5, scope: !176)
!189 = !DILocation(line: 108, column: 1, scope: !176)
!190 = distinct !DISubprogram(name: "goodB2GSource", scope: !45, file: !45, line: 111, type: !53, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!191 = !DILocalVariable(name: "data", arg: 1, scope: !190, file: !45, line: 111, type: !42)
!192 = !DILocation(line: 111, column: 29, scope: !190)
!193 = !DILocalVariable(name: "dataLen", scope: !194, file: !45, line: 115, type: !59)
!194 = distinct !DILexicalBlock(scope: !190, file: !45, line: 113, column: 5)
!195 = !DILocation(line: 115, column: 16, scope: !194)
!196 = !DILocation(line: 115, column: 33, scope: !194)
!197 = !DILocation(line: 115, column: 26, scope: !194)
!198 = !DILocation(line: 117, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !194, file: !45, line: 117, column: 13)
!200 = !DILocation(line: 117, column: 16, scope: !199)
!201 = !DILocation(line: 117, column: 25, scope: !199)
!202 = !DILocation(line: 117, column: 13, scope: !194)
!203 = !DILocation(line: 120, column: 23, scope: !204)
!204 = distinct !DILexicalBlock(scope: !205, file: !45, line: 120, column: 17)
!205 = distinct !DILexicalBlock(scope: !199, file: !45, line: 118, column: 9)
!206 = !DILocation(line: 120, column: 28, scope: !204)
!207 = !DILocation(line: 120, column: 27, scope: !204)
!208 = !DILocation(line: 120, column: 47, scope: !204)
!209 = !DILocation(line: 120, column: 46, scope: !204)
!210 = !DILocation(line: 120, column: 37, scope: !204)
!211 = !DILocation(line: 120, column: 57, scope: !204)
!212 = !DILocation(line: 120, column: 17, scope: !204)
!213 = !DILocation(line: 120, column: 64, scope: !204)
!214 = !DILocation(line: 120, column: 17, scope: !205)
!215 = !DILocation(line: 124, column: 34, scope: !216)
!216 = distinct !DILexicalBlock(scope: !204, file: !45, line: 121, column: 13)
!217 = !DILocation(line: 124, column: 27, scope: !216)
!218 = !DILocation(line: 124, column: 25, scope: !216)
!219 = !DILocation(line: 125, column: 21, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !45, line: 125, column: 21)
!221 = !DILocation(line: 125, column: 29, scope: !220)
!222 = !DILocation(line: 125, column: 33, scope: !220)
!223 = !DILocation(line: 125, column: 36, scope: !220)
!224 = !DILocation(line: 125, column: 41, scope: !220)
!225 = !DILocation(line: 125, column: 48, scope: !220)
!226 = !DILocation(line: 125, column: 52, scope: !220)
!227 = !DILocation(line: 125, column: 21, scope: !216)
!228 = !DILocation(line: 127, column: 21, scope: !229)
!229 = distinct !DILexicalBlock(scope: !220, file: !45, line: 126, column: 17)
!230 = !DILocation(line: 127, column: 26, scope: !229)
!231 = !DILocation(line: 127, column: 33, scope: !229)
!232 = !DILocation(line: 127, column: 37, scope: !229)
!233 = !DILocation(line: 128, column: 17, scope: !229)
!234 = !DILocation(line: 129, column: 13, scope: !216)
!235 = !DILocation(line: 132, column: 17, scope: !236)
!236 = distinct !DILexicalBlock(scope: !204, file: !45, line: 131, column: 13)
!237 = !DILocation(line: 134, column: 17, scope: !236)
!238 = !DILocation(line: 134, column: 22, scope: !236)
!239 = !DILocation(line: 134, column: 31, scope: !236)
!240 = !DILocation(line: 136, column: 9, scope: !205)
!241 = !DILocation(line: 138, column: 12, scope: !190)
!242 = !DILocation(line: 138, column: 5, scope: !190)
!243 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !45, file: !45, line: 141, type: !111, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!244 = !DILocalVariable(name: "data", arg: 1, scope: !243, file: !45, line: 141, type: !42)
!245 = !DILocation(line: 141, column: 27, scope: !243)
!246 = !DILocalVariable(name: "args", scope: !247, file: !45, line: 144, type: !117)
!247 = distinct !DILexicalBlock(scope: !243, file: !45, line: 143, column: 5)
!248 = !DILocation(line: 144, column: 17, scope: !247)
!249 = !DILocation(line: 145, column: 9, scope: !247)
!250 = !DILocation(line: 147, column: 23, scope: !247)
!251 = !DILocation(line: 147, column: 9, scope: !247)
!252 = !DILocation(line: 148, column: 9, scope: !247)
!253 = !DILocation(line: 150, column: 1, scope: !243)
!254 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 152, type: !139, scopeLine: 153, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!255 = !DILocalVariable(name: "data", scope: !254, file: !45, line: 154, type: !42)
!256 = !DILocation(line: 154, column: 12, scope: !254)
!257 = !DILocalVariable(name: "dataBuffer", scope: !254, file: !45, line: 155, type: !144)
!258 = !DILocation(line: 155, column: 10, scope: !254)
!259 = !DILocation(line: 156, column: 12, scope: !254)
!260 = !DILocation(line: 156, column: 10, scope: !254)
!261 = !DILocation(line: 157, column: 26, scope: !254)
!262 = !DILocation(line: 157, column: 12, scope: !254)
!263 = !DILocation(line: 157, column: 10, scope: !254)
!264 = !DILocation(line: 158, column: 19, scope: !254)
!265 = !DILocation(line: 158, column: 25, scope: !254)
!266 = !DILocation(line: 158, column: 5, scope: !254)
!267 = !DILocation(line: 159, column: 1, scope: !254)
!268 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_42_good", scope: !45, file: !45, line: 161, type: !139, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!269 = !DILocation(line: 163, column: 5, scope: !268)
!270 = !DILocation(line: 164, column: 5, scope: !268)
!271 = !DILocation(line: 165, column: 1, scope: !268)
!272 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !273, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !42}
!275 = !DILocalVariable(name: "line", arg: 1, scope: !272, file: !3, line: 11, type: !42)
!276 = !DILocation(line: 11, column: 25, scope: !272)
!277 = !DILocation(line: 13, column: 1, scope: !272)
!278 = !DILocation(line: 14, column: 8, scope: !279)
!279 = distinct !DILexicalBlock(scope: !272, file: !3, line: 14, column: 8)
!280 = !DILocation(line: 14, column: 13, scope: !279)
!281 = !DILocation(line: 14, column: 8, scope: !272)
!282 = !DILocation(line: 16, column: 24, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !3, line: 15, column: 5)
!284 = !DILocation(line: 16, column: 9, scope: !283)
!285 = !DILocation(line: 17, column: 5, scope: !283)
!286 = !DILocation(line: 18, column: 5, scope: !272)
!287 = !DILocation(line: 19, column: 1, scope: !272)
!288 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !273, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!289 = !DILocalVariable(name: "line", arg: 1, scope: !288, file: !3, line: 20, type: !42)
!290 = !DILocation(line: 20, column: 29, scope: !288)
!291 = !DILocation(line: 22, column: 8, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !3, line: 22, column: 8)
!293 = !DILocation(line: 22, column: 13, scope: !292)
!294 = !DILocation(line: 22, column: 8, scope: !288)
!295 = !DILocation(line: 24, column: 24, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !3, line: 23, column: 5)
!297 = !DILocation(line: 24, column: 9, scope: !296)
!298 = !DILocation(line: 25, column: 5, scope: !296)
!299 = !DILocation(line: 26, column: 1, scope: !288)
!300 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !301, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !60, line: 74, baseType: !23)
!305 = !DILocalVariable(name: "line", arg: 1, scope: !300, file: !3, line: 27, type: !303)
!306 = !DILocation(line: 27, column: 29, scope: !300)
!307 = !DILocation(line: 29, column: 8, scope: !308)
!308 = distinct !DILexicalBlock(scope: !300, file: !3, line: 29, column: 8)
!309 = !DILocation(line: 29, column: 13, scope: !308)
!310 = !DILocation(line: 29, column: 8, scope: !300)
!311 = !DILocation(line: 31, column: 27, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !3, line: 30, column: 5)
!313 = !DILocation(line: 31, column: 9, scope: !312)
!314 = !DILocation(line: 32, column: 5, scope: !312)
!315 = !DILocation(line: 33, column: 1, scope: !300)
!316 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !317, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !23}
!319 = !DILocalVariable(name: "intNumber", arg: 1, scope: !316, file: !3, line: 35, type: !23)
!320 = !DILocation(line: 35, column: 24, scope: !316)
!321 = !DILocation(line: 37, column: 20, scope: !316)
!322 = !DILocation(line: 37, column: 5, scope: !316)
!323 = !DILocation(line: 38, column: 1, scope: !316)
!324 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !325, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !327}
!327 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!328 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !324, file: !3, line: 40, type: !327)
!329 = !DILocation(line: 40, column: 28, scope: !324)
!330 = !DILocation(line: 42, column: 21, scope: !324)
!331 = !DILocation(line: 42, column: 5, scope: !324)
!332 = !DILocation(line: 43, column: 1, scope: !324)
!333 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !334, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !336}
!336 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!337 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !333, file: !3, line: 45, type: !336)
!338 = !DILocation(line: 45, column: 28, scope: !333)
!339 = !DILocation(line: 47, column: 20, scope: !333)
!340 = !DILocation(line: 47, column: 5, scope: !333)
!341 = !DILocation(line: 48, column: 1, scope: !333)
!342 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !343, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !345}
!345 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!346 = !DILocalVariable(name: "longNumber", arg: 1, scope: !342, file: !3, line: 50, type: !345)
!347 = !DILocation(line: 50, column: 26, scope: !342)
!348 = !DILocation(line: 52, column: 21, scope: !342)
!349 = !DILocation(line: 52, column: 5, scope: !342)
!350 = !DILocation(line: 53, column: 1, scope: !342)
!351 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !352, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !354}
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !355, line: 27, baseType: !356)
!355 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !357, line: 44, baseType: !345)
!357 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!358 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !351, file: !3, line: 55, type: !354)
!359 = !DILocation(line: 55, column: 33, scope: !351)
!360 = !DILocation(line: 57, column: 29, scope: !351)
!361 = !DILocation(line: 57, column: 5, scope: !351)
!362 = !DILocation(line: 58, column: 1, scope: !351)
!363 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !364, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !59}
!366 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !363, file: !3, line: 60, type: !59)
!367 = !DILocation(line: 60, column: 29, scope: !363)
!368 = !DILocation(line: 62, column: 21, scope: !363)
!369 = !DILocation(line: 62, column: 5, scope: !363)
!370 = !DILocation(line: 63, column: 1, scope: !363)
!371 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !372, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !43}
!374 = !DILocalVariable(name: "charHex", arg: 1, scope: !371, file: !3, line: 65, type: !43)
!375 = !DILocation(line: 65, column: 29, scope: !371)
!376 = !DILocation(line: 67, column: 22, scope: !371)
!377 = !DILocation(line: 67, column: 5, scope: !371)
!378 = !DILocation(line: 68, column: 1, scope: !371)
!379 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !380, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !304}
!382 = !DILocalVariable(name: "wideChar", arg: 1, scope: !379, file: !3, line: 70, type: !304)
!383 = !DILocation(line: 70, column: 29, scope: !379)
!384 = !DILocalVariable(name: "s", scope: !379, file: !3, line: 74, type: !385)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 64, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 2)
!388 = !DILocation(line: 74, column: 13, scope: !379)
!389 = !DILocation(line: 75, column: 16, scope: !379)
!390 = !DILocation(line: 75, column: 9, scope: !379)
!391 = !DILocation(line: 75, column: 14, scope: !379)
!392 = !DILocation(line: 76, column: 9, scope: !379)
!393 = !DILocation(line: 76, column: 14, scope: !379)
!394 = !DILocation(line: 77, column: 21, scope: !379)
!395 = !DILocation(line: 77, column: 5, scope: !379)
!396 = !DILocation(line: 78, column: 1, scope: !379)
!397 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !398, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !7}
!400 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !397, file: !3, line: 80, type: !7)
!401 = !DILocation(line: 80, column: 33, scope: !397)
!402 = !DILocation(line: 82, column: 20, scope: !397)
!403 = !DILocation(line: 82, column: 5, scope: !397)
!404 = !DILocation(line: 83, column: 1, scope: !397)
!405 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !406, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !25}
!408 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !405, file: !3, line: 85, type: !25)
!409 = !DILocation(line: 85, column: 45, scope: !405)
!410 = !DILocation(line: 87, column: 22, scope: !405)
!411 = !DILocation(line: 87, column: 5, scope: !405)
!412 = !DILocation(line: 88, column: 1, scope: !405)
!413 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !414, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !416}
!416 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!417 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !413, file: !3, line: 90, type: !416)
!418 = !DILocation(line: 90, column: 29, scope: !413)
!419 = !DILocation(line: 92, column: 20, scope: !413)
!420 = !DILocation(line: 92, column: 5, scope: !413)
!421 = !DILocation(line: 93, column: 1, scope: !413)
!422 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !423, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !427, line: 100, baseType: !428)
!427 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_603/source_code")
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !427, line: 96, size: 64, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !428, file: !427, line: 98, baseType: !23, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !428, file: !427, line: 99, baseType: !23, size: 32, offset: 32)
!432 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !422, file: !3, line: 95, type: !425)
!433 = !DILocation(line: 95, column: 40, scope: !422)
!434 = !DILocation(line: 97, column: 26, scope: !422)
!435 = !DILocation(line: 97, column: 47, scope: !422)
!436 = !DILocation(line: 97, column: 55, scope: !422)
!437 = !DILocation(line: 97, column: 76, scope: !422)
!438 = !DILocation(line: 97, column: 5, scope: !422)
!439 = !DILocation(line: 98, column: 1, scope: !422)
!440 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !441, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !443, !59}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!444 = !DILocalVariable(name: "bytes", arg: 1, scope: !440, file: !3, line: 100, type: !443)
!445 = !DILocation(line: 100, column: 38, scope: !440)
!446 = !DILocalVariable(name: "numBytes", arg: 2, scope: !440, file: !3, line: 100, type: !59)
!447 = !DILocation(line: 100, column: 52, scope: !440)
!448 = !DILocalVariable(name: "i", scope: !440, file: !3, line: 102, type: !59)
!449 = !DILocation(line: 102, column: 12, scope: !440)
!450 = !DILocation(line: 103, column: 12, scope: !451)
!451 = distinct !DILexicalBlock(scope: !440, file: !3, line: 103, column: 5)
!452 = !DILocation(line: 103, column: 10, scope: !451)
!453 = !DILocation(line: 103, column: 17, scope: !454)
!454 = distinct !DILexicalBlock(scope: !451, file: !3, line: 103, column: 5)
!455 = !DILocation(line: 103, column: 21, scope: !454)
!456 = !DILocation(line: 103, column: 19, scope: !454)
!457 = !DILocation(line: 103, column: 5, scope: !451)
!458 = !DILocation(line: 105, column: 24, scope: !459)
!459 = distinct !DILexicalBlock(scope: !454, file: !3, line: 104, column: 5)
!460 = !DILocation(line: 105, column: 30, scope: !459)
!461 = !DILocation(line: 105, column: 9, scope: !459)
!462 = !DILocation(line: 106, column: 5, scope: !459)
!463 = !DILocation(line: 103, column: 31, scope: !454)
!464 = !DILocation(line: 103, column: 5, scope: !454)
!465 = distinct !{!465, !457, !466, !467}
!466 = !DILocation(line: 106, column: 5, scope: !451)
!467 = !{!"llvm.loop.mustprogress"}
!468 = !DILocation(line: 107, column: 5, scope: !440)
!469 = !DILocation(line: 108, column: 1, scope: !440)
!470 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !471, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!471 = !DISubroutineType(types: !472)
!472 = !{!59, !443, !59, !42}
!473 = !DILocalVariable(name: "bytes", arg: 1, scope: !470, file: !3, line: 113, type: !443)
!474 = !DILocation(line: 113, column: 39, scope: !470)
!475 = !DILocalVariable(name: "numBytes", arg: 2, scope: !470, file: !3, line: 113, type: !59)
!476 = !DILocation(line: 113, column: 53, scope: !470)
!477 = !DILocalVariable(name: "hex", arg: 3, scope: !470, file: !3, line: 113, type: !42)
!478 = !DILocation(line: 113, column: 71, scope: !470)
!479 = !DILocalVariable(name: "numWritten", scope: !470, file: !3, line: 115, type: !59)
!480 = !DILocation(line: 115, column: 12, scope: !470)
!481 = !DILocation(line: 121, column: 5, scope: !470)
!482 = !DILocation(line: 121, column: 12, scope: !470)
!483 = !DILocation(line: 121, column: 25, scope: !470)
!484 = !DILocation(line: 121, column: 23, scope: !470)
!485 = !DILocation(line: 121, column: 34, scope: !470)
!486 = !DILocation(line: 121, column: 37, scope: !470)
!487 = !DILocation(line: 121, column: 67, scope: !470)
!488 = !DILocation(line: 121, column: 70, scope: !470)
!489 = !DILocation(line: 0, scope: !470)
!490 = !DILocalVariable(name: "byte", scope: !491, file: !3, line: 123, type: !23)
!491 = distinct !DILexicalBlock(scope: !470, file: !3, line: 122, column: 5)
!492 = !DILocation(line: 123, column: 13, scope: !491)
!493 = !DILocation(line: 124, column: 17, scope: !491)
!494 = !DILocation(line: 124, column: 25, scope: !491)
!495 = !DILocation(line: 124, column: 23, scope: !491)
!496 = !DILocation(line: 124, column: 9, scope: !491)
!497 = !DILocation(line: 125, column: 45, scope: !491)
!498 = !DILocation(line: 125, column: 29, scope: !491)
!499 = !DILocation(line: 125, column: 9, scope: !491)
!500 = !DILocation(line: 125, column: 15, scope: !491)
!501 = !DILocation(line: 125, column: 27, scope: !491)
!502 = !DILocation(line: 126, column: 9, scope: !491)
!503 = distinct !{!503, !481, !504, !467}
!504 = !DILocation(line: 127, column: 5, scope: !470)
!505 = !DILocation(line: 129, column: 12, scope: !470)
!506 = !DILocation(line: 129, column: 5, scope: !470)
!507 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !508, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!508 = !DISubroutineType(types: !509)
!509 = !{!59, !443, !59, !303}
!510 = !DILocalVariable(name: "bytes", arg: 1, scope: !507, file: !3, line: 135, type: !443)
!511 = !DILocation(line: 135, column: 41, scope: !507)
!512 = !DILocalVariable(name: "numBytes", arg: 2, scope: !507, file: !3, line: 135, type: !59)
!513 = !DILocation(line: 135, column: 55, scope: !507)
!514 = !DILocalVariable(name: "hex", arg: 3, scope: !507, file: !3, line: 135, type: !303)
!515 = !DILocation(line: 135, column: 76, scope: !507)
!516 = !DILocalVariable(name: "numWritten", scope: !507, file: !3, line: 137, type: !59)
!517 = !DILocation(line: 137, column: 12, scope: !507)
!518 = !DILocation(line: 143, column: 5, scope: !507)
!519 = !DILocation(line: 143, column: 12, scope: !507)
!520 = !DILocation(line: 143, column: 25, scope: !507)
!521 = !DILocation(line: 143, column: 23, scope: !507)
!522 = !DILocation(line: 143, column: 34, scope: !507)
!523 = !DILocation(line: 143, column: 47, scope: !507)
!524 = !DILocation(line: 143, column: 55, scope: !507)
!525 = !DILocation(line: 143, column: 53, scope: !507)
!526 = !DILocation(line: 143, column: 37, scope: !507)
!527 = !DILocation(line: 143, column: 68, scope: !507)
!528 = !DILocation(line: 143, column: 81, scope: !507)
!529 = !DILocation(line: 143, column: 89, scope: !507)
!530 = !DILocation(line: 143, column: 87, scope: !507)
!531 = !DILocation(line: 143, column: 100, scope: !507)
!532 = !DILocation(line: 143, column: 71, scope: !507)
!533 = !DILocation(line: 0, scope: !507)
!534 = !DILocalVariable(name: "byte", scope: !535, file: !3, line: 145, type: !23)
!535 = distinct !DILexicalBlock(scope: !507, file: !3, line: 144, column: 5)
!536 = !DILocation(line: 145, column: 13, scope: !535)
!537 = !DILocation(line: 146, column: 18, scope: !535)
!538 = !DILocation(line: 146, column: 26, scope: !535)
!539 = !DILocation(line: 146, column: 24, scope: !535)
!540 = !DILocation(line: 146, column: 9, scope: !535)
!541 = !DILocation(line: 147, column: 45, scope: !535)
!542 = !DILocation(line: 147, column: 29, scope: !535)
!543 = !DILocation(line: 147, column: 9, scope: !535)
!544 = !DILocation(line: 147, column: 15, scope: !535)
!545 = !DILocation(line: 147, column: 27, scope: !535)
!546 = !DILocation(line: 148, column: 9, scope: !535)
!547 = distinct !{!547, !518, !548, !467}
!548 = !DILocation(line: 149, column: 5, scope: !507)
!549 = !DILocation(line: 151, column: 12, scope: !507)
!550 = !DILocation(line: 151, column: 5, scope: !507)
!551 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !552, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DISubroutineType(types: !553)
!553 = !{!23}
!554 = !DILocation(line: 158, column: 5, scope: !551)
!555 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !552, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DILocation(line: 163, column: 5, scope: !555)
!557 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !552, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 168, column: 13, scope: !557)
!559 = !DILocation(line: 168, column: 20, scope: !557)
!560 = !DILocation(line: 168, column: 5, scope: !557)
!561 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !139, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!562 = !DILocation(line: 187, column: 16, scope: !561)
!563 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !139, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DILocation(line: 188, column: 16, scope: !563)
!565 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !139, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DILocation(line: 189, column: 16, scope: !565)
!567 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !139, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DILocation(line: 190, column: 16, scope: !567)
!569 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !139, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!570 = !DILocation(line: 191, column: 16, scope: !569)
!571 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !139, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DILocation(line: 192, column: 16, scope: !571)
!573 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !139, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DILocation(line: 193, column: 16, scope: !573)
!575 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !139, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DILocation(line: 194, column: 16, scope: !575)
!577 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !139, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 195, column: 16, scope: !577)
!579 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !139, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 198, column: 15, scope: !579)
!581 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !139, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!582 = !DILocation(line: 199, column: 15, scope: !581)
!583 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !139, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DILocation(line: 200, column: 15, scope: !583)
!585 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !139, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DILocation(line: 201, column: 15, scope: !585)
!587 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !139, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DILocation(line: 202, column: 15, scope: !587)
!589 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !139, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DILocation(line: 203, column: 15, scope: !589)
!591 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !139, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!592 = !DILocation(line: 204, column: 15, scope: !591)
!593 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !139, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DILocation(line: 205, column: 15, scope: !593)
!595 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !139, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DILocation(line: 206, column: 15, scope: !595)
