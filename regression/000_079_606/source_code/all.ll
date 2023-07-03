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

@CWE134_Uncontrolled_Format_String__char_console_vprintf_45_badData = dso_local global i8* null, align 8, !dbg !0
@CWE134_Uncontrolled_Format_String__char_console_vprintf_45_goodG2BData = dso_local global i8* null, align 8, !dbg !9
@CWE134_Uncontrolled_Format_String__char_console_vprintf_45_goodB2GData = dso_local global i8* null, align 8, !dbg !13
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !15
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !40
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !42
@globalTrue = dso_local global i32 1, align 4, !dbg !44
@globalFalse = dso_local global i32 0, align 4, !dbg !46
@globalFive = dso_local global i32 5, align 4, !dbg !48
@globalArgc = dso_local global i32 0, align 4, !dbg !50
@globalArgv = dso_local global i8** null, align 8, !dbg !52
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
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !59 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !64, metadata !DIExpression()), !dbg !80
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !81
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !81
  call void @llvm.va_start(i8* %arraydecay1), !dbg !81
  %0 = load i8*, i8** %data.addr, align 8, !dbg !82
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !83
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !84
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !85
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !85
  call void @llvm.va_end(i8* %arraydecay34), !dbg !85
  ret void, !dbg !86
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink() #0 !dbg !87 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !90, metadata !DIExpression()), !dbg !91
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_console_vprintf_45_badData, align 8, !dbg !92
  store i8* %0, i8** %data, align 8, !dbg !91
  %1 = load i8*, i8** %data, align 8, !dbg !93
  %2 = load i8*, i8** %data, align 8, !dbg !94
  call void (i8*, ...) @badVaSink(i8* %1, i8* %2), !dbg !95
  ret void, !dbg !96
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_45_bad() #0 !dbg !97 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !98, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !100, metadata !DIExpression()), !dbg !104
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !104
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !104
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !105
  store i8* %arraydecay, i8** %data, align 8, !dbg !106
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !107, metadata !DIExpression()), !dbg !112
  %1 = load i8*, i8** %data, align 8, !dbg !113
  %call = call i64 @strlen(i8* %1) #8, !dbg !114
  store i64 %call, i64* %dataLen, align 8, !dbg !112
  %2 = load i64, i64* %dataLen, align 8, !dbg !115
  %sub = sub i64 100, %2, !dbg !117
  %cmp = icmp ugt i64 %sub, 1, !dbg !118
  br i1 %cmp, label %if.then, label %if.end18, !dbg !119

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !120
  %4 = load i64, i64* %dataLen, align 8, !dbg !123
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !124
  %5 = load i64, i64* %dataLen, align 8, !dbg !125
  %sub1 = sub i64 100, %5, !dbg !126
  %conv = trunc i64 %sub1 to i32, !dbg !127
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !128
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !129
  %cmp3 = icmp ne i8* %call2, null, !dbg !130
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !131

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !132
  %call6 = call i64 @strlen(i8* %7) #8, !dbg !134
  store i64 %call6, i64* %dataLen, align 8, !dbg !135
  %8 = load i64, i64* %dataLen, align 8, !dbg !136
  %cmp7 = icmp ugt i64 %8, 0, !dbg !138
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !139

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !140
  %10 = load i64, i64* %dataLen, align 8, !dbg !141
  %sub9 = sub i64 %10, 1, !dbg !142
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !140
  %11 = load i8, i8* %arrayidx, align 1, !dbg !140
  %conv10 = sext i8 %11 to i32, !dbg !140
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !143
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !144

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !145
  %13 = load i64, i64* %dataLen, align 8, !dbg !147
  %sub14 = sub i64 %13, 1, !dbg !148
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !145
  store i8 0, i8* %arrayidx15, align 1, !dbg !149
  br label %if.end, !dbg !150

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !151

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !152
  %14 = load i8*, i8** %data, align 8, !dbg !154
  %15 = load i64, i64* %dataLen, align 8, !dbg !155
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !154
  store i8 0, i8* %arrayidx16, align 1, !dbg !156
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !157

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !158
  store i8* %16, i8** @CWE134_Uncontrolled_Format_String__char_console_vprintf_45_badData, align 8, !dbg !159
  call void @badSink(), !dbg !160
  ret void, !dbg !161
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

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
define dso_local void @goodG2BSink() #0 !dbg !174 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !175, metadata !DIExpression()), !dbg !176
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_console_vprintf_45_goodG2BData, align 8, !dbg !177
  store i8* %0, i8** %data, align 8, !dbg !176
  %1 = load i8*, i8** %data, align 8, !dbg !178
  %2 = load i8*, i8** %data, align 8, !dbg !179
  call void (i8*, ...) @goodG2BVaSink(i8* %1, i8* %2), !dbg !180
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
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !190
  %2 = load i8*, i8** %data, align 8, !dbg !191
  store i8* %2, i8** @CWE134_Uncontrolled_Format_String__char_console_vprintf_45_goodG2BData, align 8, !dbg !192
  call void @goodG2BSink(), !dbg !193
  ret void, !dbg !194
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !195 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !198, metadata !DIExpression()), !dbg !200
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !201
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !201
  call void @llvm.va_start(i8* %arraydecay1), !dbg !201
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !202
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !203
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !204
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !204
  call void @llvm.va_end(i8* %arraydecay34), !dbg !204
  ret void, !dbg !205
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink() #0 !dbg !206 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !207, metadata !DIExpression()), !dbg !208
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_console_vprintf_45_goodB2GData, align 8, !dbg !209
  store i8* %0, i8** %data, align 8, !dbg !208
  %1 = load i8*, i8** %data, align 8, !dbg !210
  %2 = load i8*, i8** %data, align 8, !dbg !211
  call void (i8*, ...) @goodB2GVaSink(i8* %1, i8* %2), !dbg !212
  ret void, !dbg !213
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !214 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !217, metadata !DIExpression()), !dbg !218
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !218
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !218
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !219
  store i8* %arraydecay, i8** %data, align 8, !dbg !220
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !221, metadata !DIExpression()), !dbg !223
  %1 = load i8*, i8** %data, align 8, !dbg !224
  %call = call i64 @strlen(i8* %1) #8, !dbg !225
  store i64 %call, i64* %dataLen, align 8, !dbg !223
  %2 = load i64, i64* %dataLen, align 8, !dbg !226
  %sub = sub i64 100, %2, !dbg !228
  %cmp = icmp ugt i64 %sub, 1, !dbg !229
  br i1 %cmp, label %if.then, label %if.end18, !dbg !230

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !231
  %4 = load i64, i64* %dataLen, align 8, !dbg !234
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !235
  %5 = load i64, i64* %dataLen, align 8, !dbg !236
  %sub1 = sub i64 100, %5, !dbg !237
  %conv = trunc i64 %sub1 to i32, !dbg !238
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !239
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !240
  %cmp3 = icmp ne i8* %call2, null, !dbg !241
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !242

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !243
  %call6 = call i64 @strlen(i8* %7) #8, !dbg !245
  store i64 %call6, i64* %dataLen, align 8, !dbg !246
  %8 = load i64, i64* %dataLen, align 8, !dbg !247
  %cmp7 = icmp ugt i64 %8, 0, !dbg !249
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !250

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !251
  %10 = load i64, i64* %dataLen, align 8, !dbg !252
  %sub9 = sub i64 %10, 1, !dbg !253
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !251
  %11 = load i8, i8* %arrayidx, align 1, !dbg !251
  %conv10 = sext i8 %11 to i32, !dbg !251
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !254
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !255

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !256
  %13 = load i64, i64* %dataLen, align 8, !dbg !258
  %sub14 = sub i64 %13, 1, !dbg !259
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !256
  store i8 0, i8* %arrayidx15, align 1, !dbg !260
  br label %if.end, !dbg !261

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !262

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !263
  %14 = load i8*, i8** %data, align 8, !dbg !265
  %15 = load i64, i64* %dataLen, align 8, !dbg !266
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !265
  store i8 0, i8* %arrayidx16, align 1, !dbg !267
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !268

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !269
  store i8* %16, i8** @CWE134_Uncontrolled_Format_String__char_console_vprintf_45_goodB2GData, align 8, !dbg !270
  call void @goodB2GSink(), !dbg !271
  ret void, !dbg !272
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_45_good() #0 !dbg !273 {
entry:
  call void @goodG2B(), !dbg !274
  call void @goodB2G(), !dbg !275
  ret void, !dbg !276
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !277 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !280, metadata !DIExpression()), !dbg !281
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !282
  %0 = load i8*, i8** %line.addr, align 8, !dbg !283
  %cmp = icmp ne i8* %0, null, !dbg !285
  br i1 %cmp, label %if.then, label %if.end, !dbg !286

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !287
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !289
  br label %if.end, !dbg !290

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !291
  ret void, !dbg !292
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !293 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !294, metadata !DIExpression()), !dbg !295
  %0 = load i8*, i8** %line.addr, align 8, !dbg !296
  %cmp = icmp ne i8* %0, null, !dbg !298
  br i1 %cmp, label %if.then, label %if.end, !dbg !299

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !300
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !302
  br label %if.end, !dbg !303

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !304
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !305 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !310, metadata !DIExpression()), !dbg !311
  %0 = load i32*, i32** %line.addr, align 8, !dbg !312
  %cmp = icmp ne i32* %0, null, !dbg !314
  br i1 %cmp, label %if.then, label %if.end, !dbg !315

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !316
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !318
  br label %if.end, !dbg !319

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !320
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !321 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !324, metadata !DIExpression()), !dbg !325
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !326
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !327
  ret void, !dbg !328
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !329 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !335
  %conv = sext i16 %0 to i32, !dbg !335
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !336
  ret void, !dbg !337
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !338 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !344
  %conv = fpext float %0 to double, !dbg !344
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !345
  ret void, !dbg !346
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !347 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !351, metadata !DIExpression()), !dbg !352
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !353
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !354
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !356 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !363, metadata !DIExpression()), !dbg !364
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !365
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !368 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !371, metadata !DIExpression()), !dbg !372
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !373
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !374
  ret void, !dbg !375
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !376 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !379, metadata !DIExpression()), !dbg !380
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !381
  %conv = sext i8 %0 to i32, !dbg !381
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !382
  ret void, !dbg !383
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !384 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !387, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !389, metadata !DIExpression()), !dbg !393
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !394
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !395
  store i32 %0, i32* %arrayidx, align 4, !dbg !396
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !397
  store i32 0, i32* %arrayidx1, align 4, !dbg !398
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !399
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !400
  ret void, !dbg !401
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !402 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !405, metadata !DIExpression()), !dbg !406
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !407
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !408
  ret void, !dbg !409
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !410 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !413, metadata !DIExpression()), !dbg !414
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !415
  %conv = zext i8 %0 to i32, !dbg !415
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !416
  ret void, !dbg !417
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !418 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !422, metadata !DIExpression()), !dbg !423
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !424
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !425
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !427 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !437, metadata !DIExpression()), !dbg !438
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !439
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !440
  %1 = load i32, i32* %intOne, align 4, !dbg !440
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !441
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !442
  %3 = load i32, i32* %intTwo, align 4, !dbg !442
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !443
  ret void, !dbg !444
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !445 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !449, metadata !DIExpression()), !dbg !450
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !451, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.declare(metadata i64* %i, metadata !453, metadata !DIExpression()), !dbg !454
  store i64 0, i64* %i, align 8, !dbg !455
  br label %for.cond, !dbg !457

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !458
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !460
  %cmp = icmp ult i64 %0, %1, !dbg !461
  br i1 %cmp, label %for.body, label %for.end, !dbg !462

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !463
  %3 = load i64, i64* %i, align 8, !dbg !465
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !463
  %4 = load i8, i8* %arrayidx, align 1, !dbg !463
  %conv = zext i8 %4 to i32, !dbg !463
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !466
  br label %for.inc, !dbg !467

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !468
  %inc = add i64 %5, 1, !dbg !468
  store i64 %inc, i64* %i, align 8, !dbg !468
  br label %for.cond, !dbg !469, !llvm.loop !470

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !473
  ret void, !dbg !474
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !475 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !478, metadata !DIExpression()), !dbg !479
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !480, metadata !DIExpression()), !dbg !481
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !482, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !484, metadata !DIExpression()), !dbg !485
  store i64 0, i64* %numWritten, align 8, !dbg !485
  br label %while.cond, !dbg !486

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !487
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !488
  %cmp = icmp ult i64 %0, %1, !dbg !489
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !490

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #10, !dbg !491
  %2 = load i16*, i16** %call, align 8, !dbg !491
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !491
  %4 = load i64, i64* %numWritten, align 8, !dbg !491
  %mul = mul i64 2, %4, !dbg !491
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !491
  %5 = load i8, i8* %arrayidx, align 1, !dbg !491
  %conv = sext i8 %5 to i32, !dbg !491
  %idxprom = sext i32 %conv to i64, !dbg !491
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !491
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !491
  %conv2 = zext i16 %6 to i32, !dbg !491
  %and = and i32 %conv2, 4096, !dbg !491
  %tobool = icmp ne i32 %and, 0, !dbg !491
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !492

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #10, !dbg !493
  %7 = load i16*, i16** %call3, align 8, !dbg !493
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !493
  %9 = load i64, i64* %numWritten, align 8, !dbg !493
  %mul4 = mul i64 2, %9, !dbg !493
  %add = add i64 %mul4, 1, !dbg !493
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !493
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !493
  %conv6 = sext i8 %10 to i32, !dbg !493
  %idxprom7 = sext i32 %conv6 to i64, !dbg !493
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !493
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !493
  %conv9 = zext i16 %11 to i32, !dbg !493
  %and10 = and i32 %conv9, 4096, !dbg !493
  %tobool11 = icmp ne i32 %and10, 0, !dbg !492
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !494
  br i1 %12, label %while.body, label %while.end, !dbg !486

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !495, metadata !DIExpression()), !dbg !497
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !498
  %14 = load i64, i64* %numWritten, align 8, !dbg !499
  %mul12 = mul i64 2, %14, !dbg !500
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !498
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !501
  %15 = load i32, i32* %byte, align 4, !dbg !502
  %conv15 = trunc i32 %15 to i8, !dbg !503
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !504
  %17 = load i64, i64* %numWritten, align 8, !dbg !505
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !504
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !506
  %18 = load i64, i64* %numWritten, align 8, !dbg !507
  %inc = add i64 %18, 1, !dbg !507
  store i64 %inc, i64* %numWritten, align 8, !dbg !507
  br label %while.cond, !dbg !486, !llvm.loop !508

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !510
  ret i64 %19, !dbg !511
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !512 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !515, metadata !DIExpression()), !dbg !516
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !517, metadata !DIExpression()), !dbg !518
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !519, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !521, metadata !DIExpression()), !dbg !522
  store i64 0, i64* %numWritten, align 8, !dbg !522
  br label %while.cond, !dbg !523

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !524
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !525
  %cmp = icmp ult i64 %0, %1, !dbg !526
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !527

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !528
  %3 = load i64, i64* %numWritten, align 8, !dbg !529
  %mul = mul i64 2, %3, !dbg !530
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !528
  %4 = load i32, i32* %arrayidx, align 4, !dbg !528
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !531
  %tobool = icmp ne i32 %call, 0, !dbg !531
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !532

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !533
  %6 = load i64, i64* %numWritten, align 8, !dbg !534
  %mul1 = mul i64 2, %6, !dbg !535
  %add = add i64 %mul1, 1, !dbg !536
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !533
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !533
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !537
  %tobool4 = icmp ne i32 %call3, 0, !dbg !532
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !538
  br i1 %8, label %while.body, label %while.end, !dbg !523

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !539, metadata !DIExpression()), !dbg !541
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !542
  %10 = load i64, i64* %numWritten, align 8, !dbg !543
  %mul5 = mul i64 2, %10, !dbg !544
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !542
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !545
  %11 = load i32, i32* %byte, align 4, !dbg !546
  %conv = trunc i32 %11 to i8, !dbg !547
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !548
  %13 = load i64, i64* %numWritten, align 8, !dbg !549
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !548
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !550
  %14 = load i64, i64* %numWritten, align 8, !dbg !551
  %inc = add i64 %14, 1, !dbg !551
  store i64 %inc, i64* %numWritten, align 8, !dbg !551
  br label %while.cond, !dbg !523, !llvm.loop !552

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !554
  ret i64 %15, !dbg !555
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !556 {
entry:
  ret i32 1, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !560 {
entry:
  ret i32 0, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !562 {
entry:
  %call = call i32 @rand() #9, !dbg !563
  %rem = srem i32 %call, 2, !dbg !564
  ret i32 %rem, !dbg !565
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !566 {
entry:
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !568 {
entry:
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !570 {
entry:
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !572 {
entry:
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !574 {
entry:
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !576 {
entry:
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !578 {
entry:
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !580 {
entry:
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !582 {
entry:
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !584 {
entry:
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !586 {
entry:
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !588 {
entry:
  ret void, !dbg !589
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !590 {
entry:
  ret void, !dbg !591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !592 {
entry:
  ret void, !dbg !593
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !594 {
entry:
  ret void, !dbg !595
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !596 {
entry:
  ret void, !dbg !597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !598 {
entry:
  ret void, !dbg !599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !600 {
entry:
  ret void, !dbg !601
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

!llvm.dbg.cu = !{!2, !17}
!llvm.ident = !{!55, !55}
!llvm.module.flags = !{!56, !57, !58}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_45_badData", scope: !2, file: !3, line: 26, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_vprintf_45.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_606/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0, !9, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_45_goodG2BData", scope: !2, file: !3, line: 27, type: !11, isLocal: false, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_45_goodB2GData", scope: !2, file: !3, line: 28, type: !11, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !6, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_606/source_code")
!19 = !{!20}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 46, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!24 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!32 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!34 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!35 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!36 = !{!7, !6, !37, !38}
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!15, !40, !42, !44, !46, !48, !50, !52}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !17, file: !18, line: 175, type: !6, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !17, file: !18, line: 176, type: !6, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalTrue", scope: !17, file: !18, line: 181, type: !6, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalFalse", scope: !17, file: !18, line: 182, type: !6, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "globalFive", scope: !17, file: !18, line: 183, type: !6, isLocal: false, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "globalArgc", scope: !17, file: !18, line: 214, type: !6, isLocal: false, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "globalArgv", scope: !17, file: !18, line: 215, type: !54, isLocal: false, isDefinition: true)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!55 = !{!"clang version 12.0.0"}
!56 = !{i32 7, !"Dwarf Version", i32 4}
!57 = !{i32 2, !"Debug Info Version", i32 3}
!58 = !{i32 1, !"wchar_size", i32 4}
!59 = distinct !DISubprogram(name: "badVaSink", scope: !3, file: !3, line: 32, type: !60, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !11, null}
!62 = !DILocalVariable(name: "data", arg: 1, scope: !59, file: !3, line: 32, type: !11)
!63 = !DILocation(line: 32, column: 23, scope: !59)
!64 = !DILocalVariable(name: "args", scope: !65, file: !3, line: 35, type: !66)
!65 = distinct !DILexicalBlock(scope: !59, file: !3, line: 34, column: 5)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !67, line: 52, baseType: !68)
!67 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !69, line: 32, baseType: !70)
!69 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 192, elements: !78)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !72, file: !3, line: 35, baseType: !22, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !72, file: !3, line: 35, baseType: !22, size: 32, offset: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !72, file: !3, line: 35, baseType: !7, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !72, file: !3, line: 35, baseType: !7, size: 64, offset: 128)
!78 = !{!79}
!79 = !DISubrange(count: 1)
!80 = !DILocation(line: 35, column: 17, scope: !65)
!81 = !DILocation(line: 36, column: 9, scope: !65)
!82 = !DILocation(line: 38, column: 17, scope: !65)
!83 = !DILocation(line: 38, column: 23, scope: !65)
!84 = !DILocation(line: 38, column: 9, scope: !65)
!85 = !DILocation(line: 39, column: 9, scope: !65)
!86 = !DILocation(line: 41, column: 1, scope: !59)
!87 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 43, type: !88, scopeLine: 44, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!88 = !DISubroutineType(types: !89)
!89 = !{null}
!90 = !DILocalVariable(name: "data", scope: !87, file: !3, line: 45, type: !11)
!91 = !DILocation(line: 45, column: 12, scope: !87)
!92 = !DILocation(line: 45, column: 19, scope: !87)
!93 = !DILocation(line: 46, column: 15, scope: !87)
!94 = !DILocation(line: 46, column: 21, scope: !87)
!95 = !DILocation(line: 46, column: 5, scope: !87)
!96 = !DILocation(line: 47, column: 1, scope: !87)
!97 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_45_bad", scope: !3, file: !3, line: 49, type: !88, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!98 = !DILocalVariable(name: "data", scope: !97, file: !3, line: 51, type: !11)
!99 = !DILocation(line: 51, column: 12, scope: !97)
!100 = !DILocalVariable(name: "dataBuffer", scope: !97, file: !3, line: 52, type: !101)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 800, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 100)
!104 = !DILocation(line: 52, column: 10, scope: !97)
!105 = !DILocation(line: 53, column: 12, scope: !97)
!106 = !DILocation(line: 53, column: 10, scope: !97)
!107 = !DILocalVariable(name: "dataLen", scope: !108, file: !3, line: 56, type: !109)
!108 = distinct !DILexicalBlock(scope: !97, file: !3, line: 54, column: 5)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !110, line: 46, baseType: !111)
!110 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!111 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!112 = !DILocation(line: 56, column: 16, scope: !108)
!113 = !DILocation(line: 56, column: 33, scope: !108)
!114 = !DILocation(line: 56, column: 26, scope: !108)
!115 = !DILocation(line: 58, column: 17, scope: !116)
!116 = distinct !DILexicalBlock(scope: !108, file: !3, line: 58, column: 13)
!117 = !DILocation(line: 58, column: 16, scope: !116)
!118 = !DILocation(line: 58, column: 25, scope: !116)
!119 = !DILocation(line: 58, column: 13, scope: !108)
!120 = !DILocation(line: 61, column: 23, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 61, column: 17)
!122 = distinct !DILexicalBlock(scope: !116, file: !3, line: 59, column: 9)
!123 = !DILocation(line: 61, column: 28, scope: !121)
!124 = !DILocation(line: 61, column: 27, scope: !121)
!125 = !DILocation(line: 61, column: 47, scope: !121)
!126 = !DILocation(line: 61, column: 46, scope: !121)
!127 = !DILocation(line: 61, column: 37, scope: !121)
!128 = !DILocation(line: 61, column: 57, scope: !121)
!129 = !DILocation(line: 61, column: 17, scope: !121)
!130 = !DILocation(line: 61, column: 64, scope: !121)
!131 = !DILocation(line: 61, column: 17, scope: !122)
!132 = !DILocation(line: 65, column: 34, scope: !133)
!133 = distinct !DILexicalBlock(scope: !121, file: !3, line: 62, column: 13)
!134 = !DILocation(line: 65, column: 27, scope: !133)
!135 = !DILocation(line: 65, column: 25, scope: !133)
!136 = !DILocation(line: 66, column: 21, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !3, line: 66, column: 21)
!138 = !DILocation(line: 66, column: 29, scope: !137)
!139 = !DILocation(line: 66, column: 33, scope: !137)
!140 = !DILocation(line: 66, column: 36, scope: !137)
!141 = !DILocation(line: 66, column: 41, scope: !137)
!142 = !DILocation(line: 66, column: 48, scope: !137)
!143 = !DILocation(line: 66, column: 52, scope: !137)
!144 = !DILocation(line: 66, column: 21, scope: !133)
!145 = !DILocation(line: 68, column: 21, scope: !146)
!146 = distinct !DILexicalBlock(scope: !137, file: !3, line: 67, column: 17)
!147 = !DILocation(line: 68, column: 26, scope: !146)
!148 = !DILocation(line: 68, column: 33, scope: !146)
!149 = !DILocation(line: 68, column: 37, scope: !146)
!150 = !DILocation(line: 69, column: 17, scope: !146)
!151 = !DILocation(line: 70, column: 13, scope: !133)
!152 = !DILocation(line: 73, column: 17, scope: !153)
!153 = distinct !DILexicalBlock(scope: !121, file: !3, line: 72, column: 13)
!154 = !DILocation(line: 75, column: 17, scope: !153)
!155 = !DILocation(line: 75, column: 22, scope: !153)
!156 = !DILocation(line: 75, column: 31, scope: !153)
!157 = !DILocation(line: 77, column: 9, scope: !122)
!158 = !DILocation(line: 79, column: 74, scope: !97)
!159 = !DILocation(line: 79, column: 72, scope: !97)
!160 = !DILocation(line: 80, column: 5, scope: !97)
!161 = !DILocation(line: 81, column: 1, scope: !97)
!162 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !3, file: !3, line: 88, type: !60, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!163 = !DILocalVariable(name: "data", arg: 1, scope: !162, file: !3, line: 88, type: !11)
!164 = !DILocation(line: 88, column: 27, scope: !162)
!165 = !DILocalVariable(name: "args", scope: !166, file: !3, line: 91, type: !66)
!166 = distinct !DILexicalBlock(scope: !162, file: !3, line: 90, column: 5)
!167 = !DILocation(line: 91, column: 17, scope: !166)
!168 = !DILocation(line: 92, column: 9, scope: !166)
!169 = !DILocation(line: 94, column: 17, scope: !166)
!170 = !DILocation(line: 94, column: 23, scope: !166)
!171 = !DILocation(line: 94, column: 9, scope: !166)
!172 = !DILocation(line: 95, column: 9, scope: !166)
!173 = !DILocation(line: 97, column: 1, scope: !162)
!174 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 99, type: !88, scopeLine: 100, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!175 = !DILocalVariable(name: "data", scope: !174, file: !3, line: 101, type: !11)
!176 = !DILocation(line: 101, column: 12, scope: !174)
!177 = !DILocation(line: 101, column: 19, scope: !174)
!178 = !DILocation(line: 102, column: 19, scope: !174)
!179 = !DILocation(line: 102, column: 25, scope: !174)
!180 = !DILocation(line: 102, column: 5, scope: !174)
!181 = !DILocation(line: 103, column: 1, scope: !174)
!182 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 105, type: !88, scopeLine: 106, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!183 = !DILocalVariable(name: "data", scope: !182, file: !3, line: 107, type: !11)
!184 = !DILocation(line: 107, column: 12, scope: !182)
!185 = !DILocalVariable(name: "dataBuffer", scope: !182, file: !3, line: 108, type: !101)
!186 = !DILocation(line: 108, column: 10, scope: !182)
!187 = !DILocation(line: 109, column: 12, scope: !182)
!188 = !DILocation(line: 109, column: 10, scope: !182)
!189 = !DILocation(line: 111, column: 12, scope: !182)
!190 = !DILocation(line: 111, column: 5, scope: !182)
!191 = !DILocation(line: 112, column: 78, scope: !182)
!192 = !DILocation(line: 112, column: 76, scope: !182)
!193 = !DILocation(line: 113, column: 5, scope: !182)
!194 = !DILocation(line: 114, column: 1, scope: !182)
!195 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !3, file: !3, line: 117, type: !60, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!196 = !DILocalVariable(name: "data", arg: 1, scope: !195, file: !3, line: 117, type: !11)
!197 = !DILocation(line: 117, column: 27, scope: !195)
!198 = !DILocalVariable(name: "args", scope: !199, file: !3, line: 120, type: !66)
!199 = distinct !DILexicalBlock(scope: !195, file: !3, line: 119, column: 5)
!200 = !DILocation(line: 120, column: 17, scope: !199)
!201 = !DILocation(line: 121, column: 9, scope: !199)
!202 = !DILocation(line: 123, column: 23, scope: !199)
!203 = !DILocation(line: 123, column: 9, scope: !199)
!204 = !DILocation(line: 124, column: 9, scope: !199)
!205 = !DILocation(line: 126, column: 1, scope: !195)
!206 = distinct !DISubprogram(name: "goodB2GSink", scope: !3, file: !3, line: 128, type: !88, scopeLine: 129, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!207 = !DILocalVariable(name: "data", scope: !206, file: !3, line: 130, type: !11)
!208 = !DILocation(line: 130, column: 12, scope: !206)
!209 = !DILocation(line: 130, column: 19, scope: !206)
!210 = !DILocation(line: 131, column: 19, scope: !206)
!211 = !DILocation(line: 131, column: 25, scope: !206)
!212 = !DILocation(line: 131, column: 5, scope: !206)
!213 = !DILocation(line: 132, column: 1, scope: !206)
!214 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 134, type: !88, scopeLine: 135, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!215 = !DILocalVariable(name: "data", scope: !214, file: !3, line: 136, type: !11)
!216 = !DILocation(line: 136, column: 12, scope: !214)
!217 = !DILocalVariable(name: "dataBuffer", scope: !214, file: !3, line: 137, type: !101)
!218 = !DILocation(line: 137, column: 10, scope: !214)
!219 = !DILocation(line: 138, column: 12, scope: !214)
!220 = !DILocation(line: 138, column: 10, scope: !214)
!221 = !DILocalVariable(name: "dataLen", scope: !222, file: !3, line: 141, type: !109)
!222 = distinct !DILexicalBlock(scope: !214, file: !3, line: 139, column: 5)
!223 = !DILocation(line: 141, column: 16, scope: !222)
!224 = !DILocation(line: 141, column: 33, scope: !222)
!225 = !DILocation(line: 141, column: 26, scope: !222)
!226 = !DILocation(line: 143, column: 17, scope: !227)
!227 = distinct !DILexicalBlock(scope: !222, file: !3, line: 143, column: 13)
!228 = !DILocation(line: 143, column: 16, scope: !227)
!229 = !DILocation(line: 143, column: 25, scope: !227)
!230 = !DILocation(line: 143, column: 13, scope: !222)
!231 = !DILocation(line: 146, column: 23, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !3, line: 146, column: 17)
!233 = distinct !DILexicalBlock(scope: !227, file: !3, line: 144, column: 9)
!234 = !DILocation(line: 146, column: 28, scope: !232)
!235 = !DILocation(line: 146, column: 27, scope: !232)
!236 = !DILocation(line: 146, column: 47, scope: !232)
!237 = !DILocation(line: 146, column: 46, scope: !232)
!238 = !DILocation(line: 146, column: 37, scope: !232)
!239 = !DILocation(line: 146, column: 57, scope: !232)
!240 = !DILocation(line: 146, column: 17, scope: !232)
!241 = !DILocation(line: 146, column: 64, scope: !232)
!242 = !DILocation(line: 146, column: 17, scope: !233)
!243 = !DILocation(line: 150, column: 34, scope: !244)
!244 = distinct !DILexicalBlock(scope: !232, file: !3, line: 147, column: 13)
!245 = !DILocation(line: 150, column: 27, scope: !244)
!246 = !DILocation(line: 150, column: 25, scope: !244)
!247 = !DILocation(line: 151, column: 21, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !3, line: 151, column: 21)
!249 = !DILocation(line: 151, column: 29, scope: !248)
!250 = !DILocation(line: 151, column: 33, scope: !248)
!251 = !DILocation(line: 151, column: 36, scope: !248)
!252 = !DILocation(line: 151, column: 41, scope: !248)
!253 = !DILocation(line: 151, column: 48, scope: !248)
!254 = !DILocation(line: 151, column: 52, scope: !248)
!255 = !DILocation(line: 151, column: 21, scope: !244)
!256 = !DILocation(line: 153, column: 21, scope: !257)
!257 = distinct !DILexicalBlock(scope: !248, file: !3, line: 152, column: 17)
!258 = !DILocation(line: 153, column: 26, scope: !257)
!259 = !DILocation(line: 153, column: 33, scope: !257)
!260 = !DILocation(line: 153, column: 37, scope: !257)
!261 = !DILocation(line: 154, column: 17, scope: !257)
!262 = !DILocation(line: 155, column: 13, scope: !244)
!263 = !DILocation(line: 158, column: 17, scope: !264)
!264 = distinct !DILexicalBlock(scope: !232, file: !3, line: 157, column: 13)
!265 = !DILocation(line: 160, column: 17, scope: !264)
!266 = !DILocation(line: 160, column: 22, scope: !264)
!267 = !DILocation(line: 160, column: 31, scope: !264)
!268 = !DILocation(line: 162, column: 9, scope: !233)
!269 = !DILocation(line: 164, column: 78, scope: !214)
!270 = !DILocation(line: 164, column: 76, scope: !214)
!271 = !DILocation(line: 165, column: 5, scope: !214)
!272 = !DILocation(line: 166, column: 1, scope: !214)
!273 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_45_good", scope: !3, file: !3, line: 168, type: !88, scopeLine: 169, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!274 = !DILocation(line: 170, column: 5, scope: !273)
!275 = !DILocation(line: 171, column: 5, scope: !273)
!276 = !DILocation(line: 172, column: 1, scope: !273)
!277 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !278, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !11}
!280 = !DILocalVariable(name: "line", arg: 1, scope: !277, file: !18, line: 11, type: !11)
!281 = !DILocation(line: 11, column: 25, scope: !277)
!282 = !DILocation(line: 13, column: 1, scope: !277)
!283 = !DILocation(line: 14, column: 8, scope: !284)
!284 = distinct !DILexicalBlock(scope: !277, file: !18, line: 14, column: 8)
!285 = !DILocation(line: 14, column: 13, scope: !284)
!286 = !DILocation(line: 14, column: 8, scope: !277)
!287 = !DILocation(line: 16, column: 24, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !18, line: 15, column: 5)
!289 = !DILocation(line: 16, column: 9, scope: !288)
!290 = !DILocation(line: 17, column: 5, scope: !288)
!291 = !DILocation(line: 18, column: 5, scope: !277)
!292 = !DILocation(line: 19, column: 1, scope: !277)
!293 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !278, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!294 = !DILocalVariable(name: "line", arg: 1, scope: !293, file: !18, line: 20, type: !11)
!295 = !DILocation(line: 20, column: 29, scope: !293)
!296 = !DILocation(line: 22, column: 8, scope: !297)
!297 = distinct !DILexicalBlock(scope: !293, file: !18, line: 22, column: 8)
!298 = !DILocation(line: 22, column: 13, scope: !297)
!299 = !DILocation(line: 22, column: 8, scope: !293)
!300 = !DILocation(line: 24, column: 24, scope: !301)
!301 = distinct !DILexicalBlock(scope: !297, file: !18, line: 23, column: 5)
!302 = !DILocation(line: 24, column: 9, scope: !301)
!303 = !DILocation(line: 25, column: 5, scope: !301)
!304 = !DILocation(line: 26, column: 1, scope: !293)
!305 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !306, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !308}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !110, line: 74, baseType: !6)
!310 = !DILocalVariable(name: "line", arg: 1, scope: !305, file: !18, line: 27, type: !308)
!311 = !DILocation(line: 27, column: 29, scope: !305)
!312 = !DILocation(line: 29, column: 8, scope: !313)
!313 = distinct !DILexicalBlock(scope: !305, file: !18, line: 29, column: 8)
!314 = !DILocation(line: 29, column: 13, scope: !313)
!315 = !DILocation(line: 29, column: 8, scope: !305)
!316 = !DILocation(line: 31, column: 27, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !18, line: 30, column: 5)
!318 = !DILocation(line: 31, column: 9, scope: !317)
!319 = !DILocation(line: 32, column: 5, scope: !317)
!320 = !DILocation(line: 33, column: 1, scope: !305)
!321 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !322, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !6}
!324 = !DILocalVariable(name: "intNumber", arg: 1, scope: !321, file: !18, line: 35, type: !6)
!325 = !DILocation(line: 35, column: 24, scope: !321)
!326 = !DILocation(line: 37, column: 20, scope: !321)
!327 = !DILocation(line: 37, column: 5, scope: !321)
!328 = !DILocation(line: 38, column: 1, scope: !321)
!329 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !330, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !332}
!332 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!333 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !329, file: !18, line: 40, type: !332)
!334 = !DILocation(line: 40, column: 28, scope: !329)
!335 = !DILocation(line: 42, column: 21, scope: !329)
!336 = !DILocation(line: 42, column: 5, scope: !329)
!337 = !DILocation(line: 43, column: 1, scope: !329)
!338 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !339, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !341}
!341 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!342 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !338, file: !18, line: 45, type: !341)
!343 = !DILocation(line: 45, column: 28, scope: !338)
!344 = !DILocation(line: 47, column: 20, scope: !338)
!345 = !DILocation(line: 47, column: 5, scope: !338)
!346 = !DILocation(line: 48, column: 1, scope: !338)
!347 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !348, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !350}
!350 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!351 = !DILocalVariable(name: "longNumber", arg: 1, scope: !347, file: !18, line: 50, type: !350)
!352 = !DILocation(line: 50, column: 26, scope: !347)
!353 = !DILocation(line: 52, column: 21, scope: !347)
!354 = !DILocation(line: 52, column: 5, scope: !347)
!355 = !DILocation(line: 53, column: 1, scope: !347)
!356 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !357, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !359}
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !360, line: 27, baseType: !361)
!360 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !362, line: 44, baseType: !350)
!362 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!363 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !356, file: !18, line: 55, type: !359)
!364 = !DILocation(line: 55, column: 33, scope: !356)
!365 = !DILocation(line: 57, column: 29, scope: !356)
!366 = !DILocation(line: 57, column: 5, scope: !356)
!367 = !DILocation(line: 58, column: 1, scope: !356)
!368 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !369, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !109}
!371 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !368, file: !18, line: 60, type: !109)
!372 = !DILocation(line: 60, column: 29, scope: !368)
!373 = !DILocation(line: 62, column: 21, scope: !368)
!374 = !DILocation(line: 62, column: 5, scope: !368)
!375 = !DILocation(line: 63, column: 1, scope: !368)
!376 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !377, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !12}
!379 = !DILocalVariable(name: "charHex", arg: 1, scope: !376, file: !18, line: 65, type: !12)
!380 = !DILocation(line: 65, column: 29, scope: !376)
!381 = !DILocation(line: 67, column: 22, scope: !376)
!382 = !DILocation(line: 67, column: 5, scope: !376)
!383 = !DILocation(line: 68, column: 1, scope: !376)
!384 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !385, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !309}
!387 = !DILocalVariable(name: "wideChar", arg: 1, scope: !384, file: !18, line: 70, type: !309)
!388 = !DILocation(line: 70, column: 29, scope: !384)
!389 = !DILocalVariable(name: "s", scope: !384, file: !18, line: 74, type: !390)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 64, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 2)
!393 = !DILocation(line: 74, column: 13, scope: !384)
!394 = !DILocation(line: 75, column: 16, scope: !384)
!395 = !DILocation(line: 75, column: 9, scope: !384)
!396 = !DILocation(line: 75, column: 14, scope: !384)
!397 = !DILocation(line: 76, column: 9, scope: !384)
!398 = !DILocation(line: 76, column: 14, scope: !384)
!399 = !DILocation(line: 77, column: 21, scope: !384)
!400 = !DILocation(line: 77, column: 5, scope: !384)
!401 = !DILocation(line: 78, column: 1, scope: !384)
!402 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !403, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !22}
!405 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !402, file: !18, line: 80, type: !22)
!406 = !DILocation(line: 80, column: 33, scope: !402)
!407 = !DILocation(line: 82, column: 20, scope: !402)
!408 = !DILocation(line: 82, column: 5, scope: !402)
!409 = !DILocation(line: 83, column: 1, scope: !402)
!410 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !411, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !38}
!413 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !410, file: !18, line: 85, type: !38)
!414 = !DILocation(line: 85, column: 45, scope: !410)
!415 = !DILocation(line: 87, column: 22, scope: !410)
!416 = !DILocation(line: 87, column: 5, scope: !410)
!417 = !DILocation(line: 88, column: 1, scope: !410)
!418 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !419, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !421}
!421 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!422 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !418, file: !18, line: 90, type: !421)
!423 = !DILocation(line: 90, column: 29, scope: !418)
!424 = !DILocation(line: 92, column: 20, scope: !418)
!425 = !DILocation(line: 92, column: 5, scope: !418)
!426 = !DILocation(line: 93, column: 1, scope: !418)
!427 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !428, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !432, line: 100, baseType: !433)
!432 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_606/source_code")
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !432, line: 96, size: 64, elements: !434)
!434 = !{!435, !436}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !433, file: !432, line: 98, baseType: !6, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !433, file: !432, line: 99, baseType: !6, size: 32, offset: 32)
!437 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !427, file: !18, line: 95, type: !430)
!438 = !DILocation(line: 95, column: 40, scope: !427)
!439 = !DILocation(line: 97, column: 26, scope: !427)
!440 = !DILocation(line: 97, column: 47, scope: !427)
!441 = !DILocation(line: 97, column: 55, scope: !427)
!442 = !DILocation(line: 97, column: 76, scope: !427)
!443 = !DILocation(line: 97, column: 5, scope: !427)
!444 = !DILocation(line: 98, column: 1, scope: !427)
!445 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !446, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !448, !109}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!449 = !DILocalVariable(name: "bytes", arg: 1, scope: !445, file: !18, line: 100, type: !448)
!450 = !DILocation(line: 100, column: 38, scope: !445)
!451 = !DILocalVariable(name: "numBytes", arg: 2, scope: !445, file: !18, line: 100, type: !109)
!452 = !DILocation(line: 100, column: 52, scope: !445)
!453 = !DILocalVariable(name: "i", scope: !445, file: !18, line: 102, type: !109)
!454 = !DILocation(line: 102, column: 12, scope: !445)
!455 = !DILocation(line: 103, column: 12, scope: !456)
!456 = distinct !DILexicalBlock(scope: !445, file: !18, line: 103, column: 5)
!457 = !DILocation(line: 103, column: 10, scope: !456)
!458 = !DILocation(line: 103, column: 17, scope: !459)
!459 = distinct !DILexicalBlock(scope: !456, file: !18, line: 103, column: 5)
!460 = !DILocation(line: 103, column: 21, scope: !459)
!461 = !DILocation(line: 103, column: 19, scope: !459)
!462 = !DILocation(line: 103, column: 5, scope: !456)
!463 = !DILocation(line: 105, column: 24, scope: !464)
!464 = distinct !DILexicalBlock(scope: !459, file: !18, line: 104, column: 5)
!465 = !DILocation(line: 105, column: 30, scope: !464)
!466 = !DILocation(line: 105, column: 9, scope: !464)
!467 = !DILocation(line: 106, column: 5, scope: !464)
!468 = !DILocation(line: 103, column: 31, scope: !459)
!469 = !DILocation(line: 103, column: 5, scope: !459)
!470 = distinct !{!470, !462, !471, !472}
!471 = !DILocation(line: 106, column: 5, scope: !456)
!472 = !{!"llvm.loop.mustprogress"}
!473 = !DILocation(line: 107, column: 5, scope: !445)
!474 = !DILocation(line: 108, column: 1, scope: !445)
!475 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !476, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!476 = !DISubroutineType(types: !477)
!477 = !{!109, !448, !109, !11}
!478 = !DILocalVariable(name: "bytes", arg: 1, scope: !475, file: !18, line: 113, type: !448)
!479 = !DILocation(line: 113, column: 39, scope: !475)
!480 = !DILocalVariable(name: "numBytes", arg: 2, scope: !475, file: !18, line: 113, type: !109)
!481 = !DILocation(line: 113, column: 53, scope: !475)
!482 = !DILocalVariable(name: "hex", arg: 3, scope: !475, file: !18, line: 113, type: !11)
!483 = !DILocation(line: 113, column: 71, scope: !475)
!484 = !DILocalVariable(name: "numWritten", scope: !475, file: !18, line: 115, type: !109)
!485 = !DILocation(line: 115, column: 12, scope: !475)
!486 = !DILocation(line: 121, column: 5, scope: !475)
!487 = !DILocation(line: 121, column: 12, scope: !475)
!488 = !DILocation(line: 121, column: 25, scope: !475)
!489 = !DILocation(line: 121, column: 23, scope: !475)
!490 = !DILocation(line: 121, column: 34, scope: !475)
!491 = !DILocation(line: 121, column: 37, scope: !475)
!492 = !DILocation(line: 121, column: 67, scope: !475)
!493 = !DILocation(line: 121, column: 70, scope: !475)
!494 = !DILocation(line: 0, scope: !475)
!495 = !DILocalVariable(name: "byte", scope: !496, file: !18, line: 123, type: !6)
!496 = distinct !DILexicalBlock(scope: !475, file: !18, line: 122, column: 5)
!497 = !DILocation(line: 123, column: 13, scope: !496)
!498 = !DILocation(line: 124, column: 17, scope: !496)
!499 = !DILocation(line: 124, column: 25, scope: !496)
!500 = !DILocation(line: 124, column: 23, scope: !496)
!501 = !DILocation(line: 124, column: 9, scope: !496)
!502 = !DILocation(line: 125, column: 45, scope: !496)
!503 = !DILocation(line: 125, column: 29, scope: !496)
!504 = !DILocation(line: 125, column: 9, scope: !496)
!505 = !DILocation(line: 125, column: 15, scope: !496)
!506 = !DILocation(line: 125, column: 27, scope: !496)
!507 = !DILocation(line: 126, column: 9, scope: !496)
!508 = distinct !{!508, !486, !509, !472}
!509 = !DILocation(line: 127, column: 5, scope: !475)
!510 = !DILocation(line: 129, column: 12, scope: !475)
!511 = !DILocation(line: 129, column: 5, scope: !475)
!512 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !513, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!513 = !DISubroutineType(types: !514)
!514 = !{!109, !448, !109, !308}
!515 = !DILocalVariable(name: "bytes", arg: 1, scope: !512, file: !18, line: 135, type: !448)
!516 = !DILocation(line: 135, column: 41, scope: !512)
!517 = !DILocalVariable(name: "numBytes", arg: 2, scope: !512, file: !18, line: 135, type: !109)
!518 = !DILocation(line: 135, column: 55, scope: !512)
!519 = !DILocalVariable(name: "hex", arg: 3, scope: !512, file: !18, line: 135, type: !308)
!520 = !DILocation(line: 135, column: 76, scope: !512)
!521 = !DILocalVariable(name: "numWritten", scope: !512, file: !18, line: 137, type: !109)
!522 = !DILocation(line: 137, column: 12, scope: !512)
!523 = !DILocation(line: 143, column: 5, scope: !512)
!524 = !DILocation(line: 143, column: 12, scope: !512)
!525 = !DILocation(line: 143, column: 25, scope: !512)
!526 = !DILocation(line: 143, column: 23, scope: !512)
!527 = !DILocation(line: 143, column: 34, scope: !512)
!528 = !DILocation(line: 143, column: 47, scope: !512)
!529 = !DILocation(line: 143, column: 55, scope: !512)
!530 = !DILocation(line: 143, column: 53, scope: !512)
!531 = !DILocation(line: 143, column: 37, scope: !512)
!532 = !DILocation(line: 143, column: 68, scope: !512)
!533 = !DILocation(line: 143, column: 81, scope: !512)
!534 = !DILocation(line: 143, column: 89, scope: !512)
!535 = !DILocation(line: 143, column: 87, scope: !512)
!536 = !DILocation(line: 143, column: 100, scope: !512)
!537 = !DILocation(line: 143, column: 71, scope: !512)
!538 = !DILocation(line: 0, scope: !512)
!539 = !DILocalVariable(name: "byte", scope: !540, file: !18, line: 145, type: !6)
!540 = distinct !DILexicalBlock(scope: !512, file: !18, line: 144, column: 5)
!541 = !DILocation(line: 145, column: 13, scope: !540)
!542 = !DILocation(line: 146, column: 18, scope: !540)
!543 = !DILocation(line: 146, column: 26, scope: !540)
!544 = !DILocation(line: 146, column: 24, scope: !540)
!545 = !DILocation(line: 146, column: 9, scope: !540)
!546 = !DILocation(line: 147, column: 45, scope: !540)
!547 = !DILocation(line: 147, column: 29, scope: !540)
!548 = !DILocation(line: 147, column: 9, scope: !540)
!549 = !DILocation(line: 147, column: 15, scope: !540)
!550 = !DILocation(line: 147, column: 27, scope: !540)
!551 = !DILocation(line: 148, column: 9, scope: !540)
!552 = distinct !{!552, !523, !553, !472}
!553 = !DILocation(line: 149, column: 5, scope: !512)
!554 = !DILocation(line: 151, column: 12, scope: !512)
!555 = !DILocation(line: 151, column: 5, scope: !512)
!556 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !557, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!557 = !DISubroutineType(types: !558)
!558 = !{!6}
!559 = !DILocation(line: 158, column: 5, scope: !556)
!560 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !557, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!561 = !DILocation(line: 163, column: 5, scope: !560)
!562 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !557, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!563 = !DILocation(line: 168, column: 13, scope: !562)
!564 = !DILocation(line: 168, column: 20, scope: !562)
!565 = !DILocation(line: 168, column: 5, scope: !562)
!566 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !88, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!567 = !DILocation(line: 187, column: 16, scope: !566)
!568 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !88, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!569 = !DILocation(line: 188, column: 16, scope: !568)
!570 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !88, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!571 = !DILocation(line: 189, column: 16, scope: !570)
!572 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !88, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!573 = !DILocation(line: 190, column: 16, scope: !572)
!574 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !88, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!575 = !DILocation(line: 191, column: 16, scope: !574)
!576 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !88, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!577 = !DILocation(line: 192, column: 16, scope: !576)
!578 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !88, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!579 = !DILocation(line: 193, column: 16, scope: !578)
!580 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !88, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!581 = !DILocation(line: 194, column: 16, scope: !580)
!582 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !88, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!583 = !DILocation(line: 195, column: 16, scope: !582)
!584 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !88, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!585 = !DILocation(line: 198, column: 15, scope: !584)
!586 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !88, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!587 = !DILocation(line: 199, column: 15, scope: !586)
!588 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !88, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!589 = !DILocation(line: 200, column: 15, scope: !588)
!590 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !88, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!591 = !DILocation(line: 201, column: 15, scope: !590)
!592 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !88, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!593 = !DILocation(line: 202, column: 15, scope: !592)
!594 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !88, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!595 = !DILocation(line: 203, column: 15, scope: !594)
!596 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !88, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!597 = !DILocation(line: 204, column: 15, scope: !596)
!598 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !88, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!599 = !DILocation(line: 205, column: 15, scope: !598)
!600 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !88, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!601 = !DILocation(line: 206, column: 15, scope: !600)
