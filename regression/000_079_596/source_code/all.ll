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

@badStatic = dso_local global i32 0, align 4, !dbg !0
@goodB2G1Static = dso_local global i32 0, align 4, !dbg !9
@goodB2G2Static = dso_local global i32 0, align 4, !dbg !11
@goodG2BStatic = dso_local global i32 0, align 4, !dbg !13
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !15
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !40
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !42
@globalTrue = dso_local global i32 1, align 4, !dbg !44
@globalFalse = dso_local global i32 0, align 4, !dbg !46
@globalFive = dso_local global i32 5, align 4, !dbg !48
@globalArgc = dso_local global i32 0, align 4, !dbg !50
@globalArgv = dso_local global i8** null, align 8, !dbg !52
@.str.4 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.6 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.7 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
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
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !61 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !64, metadata !DIExpression()), !dbg !65
  %0 = load i32, i32* @badStatic, align 4, !dbg !66
  %tobool = icmp ne i32 %0, 0, !dbg !66
  br i1 %tobool, label %if.then, label %if.end, !dbg !68

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !69, metadata !DIExpression()), !dbg !86
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !87
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !87
  call void @llvm.va_start(i8* %arraydecay1), !dbg !87
  %1 = load i8*, i8** %data.addr, align 8, !dbg !88
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !89
  %call = call i32 @vprintf(i8* %1, %struct.__va_list_tag* %arraydecay2), !dbg !90
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !91
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !91
  call void @llvm.va_end(i8* %arraydecay34), !dbg !91
  br label %if.end, !dbg !92

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !93
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_21_bad() #0 !dbg !94 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !99, metadata !DIExpression()), !dbg !103
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !103
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !103
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !104
  store i8* %arraydecay, i8** %data, align 8, !dbg !105
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !106, metadata !DIExpression()), !dbg !111
  %1 = load i8*, i8** %data, align 8, !dbg !112
  %call = call i64 @strlen(i8* %1) #8, !dbg !113
  store i64 %call, i64* %dataLen, align 8, !dbg !111
  %2 = load i64, i64* %dataLen, align 8, !dbg !114
  %sub = sub i64 100, %2, !dbg !116
  %cmp = icmp ugt i64 %sub, 1, !dbg !117
  br i1 %cmp, label %if.then, label %if.end18, !dbg !118

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !119
  %4 = load i64, i64* %dataLen, align 8, !dbg !122
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !123
  %5 = load i64, i64* %dataLen, align 8, !dbg !124
  %sub1 = sub i64 100, %5, !dbg !125
  %conv = trunc i64 %sub1 to i32, !dbg !126
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !127
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !128
  %cmp3 = icmp ne i8* %call2, null, !dbg !129
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !130

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !131
  %call6 = call i64 @strlen(i8* %7) #8, !dbg !133
  store i64 %call6, i64* %dataLen, align 8, !dbg !134
  %8 = load i64, i64* %dataLen, align 8, !dbg !135
  %cmp7 = icmp ugt i64 %8, 0, !dbg !137
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !138

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !139
  %10 = load i64, i64* %dataLen, align 8, !dbg !140
  %sub9 = sub i64 %10, 1, !dbg !141
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !139
  %11 = load i8, i8* %arrayidx, align 1, !dbg !139
  %conv10 = sext i8 %11 to i32, !dbg !139
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !142
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !143

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !144
  %13 = load i64, i64* %dataLen, align 8, !dbg !146
  %sub14 = sub i64 %13, 1, !dbg !147
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !144
  store i8 0, i8* %arrayidx15, align 1, !dbg !148
  br label %if.end, !dbg !149

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !150

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !151
  %14 = load i8*, i8** %data, align 8, !dbg !153
  %15 = load i64, i64* %dataLen, align 8, !dbg !154
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !153
  store i8 0, i8* %arrayidx16, align 1, !dbg !155
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !156

if.end18:                                         ; preds = %if.end17, %entry
  store i32 1, i32* @badStatic, align 4, !dbg !157
  %16 = load i8*, i8** %data, align 8, !dbg !158
  %17 = load i8*, i8** %data, align 8, !dbg !159
  call void (i8*, ...) @badVaSink(i8* %16, i8* %17), !dbg !160
  ret void, !dbg !161
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1_vasink(i8* %data, ...) #0 !dbg !162 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !163, metadata !DIExpression()), !dbg !164
  %0 = load i32, i32* @goodB2G1Static, align 4, !dbg !165
  %tobool = icmp ne i32 %0, 0, !dbg !165
  br i1 %tobool, label %if.then, label %if.else, !dbg !167

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !168
  br label %if.end, !dbg !170

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !171, metadata !DIExpression()), !dbg !174
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !175
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !175
  call void @llvm.va_start(i8* %arraydecay1), !dbg !175
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !176
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !177
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !178
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !178
  call void @llvm.va_end(i8* %arraydecay34), !dbg !178
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !179
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !180 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !183, metadata !DIExpression()), !dbg !184
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !184
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !184
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !185
  store i8* %arraydecay, i8** %data, align 8, !dbg !186
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !187, metadata !DIExpression()), !dbg !189
  %1 = load i8*, i8** %data, align 8, !dbg !190
  %call = call i64 @strlen(i8* %1) #8, !dbg !191
  store i64 %call, i64* %dataLen, align 8, !dbg !189
  %2 = load i64, i64* %dataLen, align 8, !dbg !192
  %sub = sub i64 100, %2, !dbg !194
  %cmp = icmp ugt i64 %sub, 1, !dbg !195
  br i1 %cmp, label %if.then, label %if.end18, !dbg !196

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !197
  %4 = load i64, i64* %dataLen, align 8, !dbg !200
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !201
  %5 = load i64, i64* %dataLen, align 8, !dbg !202
  %sub1 = sub i64 100, %5, !dbg !203
  %conv = trunc i64 %sub1 to i32, !dbg !204
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !205
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !206
  %cmp3 = icmp ne i8* %call2, null, !dbg !207
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !208

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !209
  %call6 = call i64 @strlen(i8* %7) #8, !dbg !211
  store i64 %call6, i64* %dataLen, align 8, !dbg !212
  %8 = load i64, i64* %dataLen, align 8, !dbg !213
  %cmp7 = icmp ugt i64 %8, 0, !dbg !215
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !216

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !217
  %10 = load i64, i64* %dataLen, align 8, !dbg !218
  %sub9 = sub i64 %10, 1, !dbg !219
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !217
  %11 = load i8, i8* %arrayidx, align 1, !dbg !217
  %conv10 = sext i8 %11 to i32, !dbg !217
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !220
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !221

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !222
  %13 = load i64, i64* %dataLen, align 8, !dbg !224
  %sub14 = sub i64 %13, 1, !dbg !225
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !222
  store i8 0, i8* %arrayidx15, align 1, !dbg !226
  br label %if.end, !dbg !227

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !228

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !229
  %14 = load i8*, i8** %data, align 8, !dbg !231
  %15 = load i64, i64* %dataLen, align 8, !dbg !232
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !231
  store i8 0, i8* %arrayidx16, align 1, !dbg !233
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !234

if.end18:                                         ; preds = %if.end17, %entry
  store i32 0, i32* @goodB2G1Static, align 4, !dbg !235
  %16 = load i8*, i8** %data, align 8, !dbg !236
  %17 = load i8*, i8** %data, align 8, !dbg !237
  call void (i8*, ...) @goodB2G1_vasink(i8* %16, i8* %17), !dbg !238
  ret void, !dbg !239
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2_vasink(i8* %data, ...) #0 !dbg !240 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !241, metadata !DIExpression()), !dbg !242
  %0 = load i32, i32* @goodB2G2Static, align 4, !dbg !243
  %tobool = icmp ne i32 %0, 0, !dbg !243
  br i1 %tobool, label %if.then, label %if.end, !dbg !245

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !246, metadata !DIExpression()), !dbg !249
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !250
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !250
  call void @llvm.va_start(i8* %arraydecay1), !dbg !250
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !251
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !252
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !253
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !253
  call void @llvm.va_end(i8* %arraydecay34), !dbg !253
  br label %if.end, !dbg !254

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !255
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !256 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !259, metadata !DIExpression()), !dbg !260
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !260
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !260
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !261
  store i8* %arraydecay, i8** %data, align 8, !dbg !262
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !263, metadata !DIExpression()), !dbg !265
  %1 = load i8*, i8** %data, align 8, !dbg !266
  %call = call i64 @strlen(i8* %1) #8, !dbg !267
  store i64 %call, i64* %dataLen, align 8, !dbg !265
  %2 = load i64, i64* %dataLen, align 8, !dbg !268
  %sub = sub i64 100, %2, !dbg !270
  %cmp = icmp ugt i64 %sub, 1, !dbg !271
  br i1 %cmp, label %if.then, label %if.end18, !dbg !272

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !273
  %4 = load i64, i64* %dataLen, align 8, !dbg !276
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !277
  %5 = load i64, i64* %dataLen, align 8, !dbg !278
  %sub1 = sub i64 100, %5, !dbg !279
  %conv = trunc i64 %sub1 to i32, !dbg !280
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !281
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !282
  %cmp3 = icmp ne i8* %call2, null, !dbg !283
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !284

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !285
  %call6 = call i64 @strlen(i8* %7) #8, !dbg !287
  store i64 %call6, i64* %dataLen, align 8, !dbg !288
  %8 = load i64, i64* %dataLen, align 8, !dbg !289
  %cmp7 = icmp ugt i64 %8, 0, !dbg !291
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !292

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !293
  %10 = load i64, i64* %dataLen, align 8, !dbg !294
  %sub9 = sub i64 %10, 1, !dbg !295
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !293
  %11 = load i8, i8* %arrayidx, align 1, !dbg !293
  %conv10 = sext i8 %11 to i32, !dbg !293
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !296
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !297

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !298
  %13 = load i64, i64* %dataLen, align 8, !dbg !300
  %sub14 = sub i64 %13, 1, !dbg !301
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !298
  store i8 0, i8* %arrayidx15, align 1, !dbg !302
  br label %if.end, !dbg !303

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !304

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !305
  %14 = load i8*, i8** %data, align 8, !dbg !307
  %15 = load i64, i64* %dataLen, align 8, !dbg !308
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !307
  store i8 0, i8* %arrayidx16, align 1, !dbg !309
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !310

if.end18:                                         ; preds = %if.end17, %entry
  store i32 1, i32* @goodB2G2Static, align 4, !dbg !311
  %16 = load i8*, i8** %data, align 8, !dbg !312
  %17 = load i8*, i8** %data, align 8, !dbg !313
  call void (i8*, ...) @goodB2G2_vasink(i8* %16, i8* %17), !dbg !314
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !316 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !317, metadata !DIExpression()), !dbg !318
  %0 = load i32, i32* @goodG2BStatic, align 4, !dbg !319
  %tobool = icmp ne i32 %0, 0, !dbg !319
  br i1 %tobool, label %if.then, label %if.end, !dbg !321

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !322, metadata !DIExpression()), !dbg !325
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !326
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !326
  call void @llvm.va_start(i8* %arraydecay1), !dbg !326
  %1 = load i8*, i8** %data.addr, align 8, !dbg !327
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !328
  %call = call i32 @vprintf(i8* %1, %struct.__va_list_tag* %arraydecay2), !dbg !329
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !330
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !330
  call void @llvm.va_end(i8* %arraydecay34), !dbg !330
  br label %if.end, !dbg !331

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !332
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !333 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !334, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !336, metadata !DIExpression()), !dbg !337
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !337
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !337
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !338
  store i8* %arraydecay, i8** %data, align 8, !dbg !339
  %1 = load i8*, i8** %data, align 8, !dbg !340
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !341
  store i32 1, i32* @goodG2BStatic, align 4, !dbg !342
  %2 = load i8*, i8** %data, align 8, !dbg !343
  %3 = load i8*, i8** %data, align 8, !dbg !344
  call void (i8*, ...) @goodG2BVaSink(i8* %2, i8* %3), !dbg !345
  ret void, !dbg !346
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_21_good() #0 !dbg !347 {
entry:
  call void @goodB2G1(), !dbg !348
  call void @goodB2G2(), !dbg !349
  call void @goodG2B(), !dbg !350
  ret void, !dbg !351
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !352 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !355, metadata !DIExpression()), !dbg !356
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !357
  %0 = load i8*, i8** %line.addr, align 8, !dbg !358
  %cmp = icmp ne i8* %0, null, !dbg !360
  br i1 %cmp, label %if.then, label %if.end, !dbg !361

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !362
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !364
  br label %if.end, !dbg !365

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !366
  ret void, !dbg !367
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !368 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load i8*, i8** %line.addr, align 8, !dbg !371
  %cmp = icmp ne i8* %0, null, !dbg !373
  br i1 %cmp, label %if.then, label %if.end, !dbg !374

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !375
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !377
  br label %if.end, !dbg !378

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !379
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !380 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load i32*, i32** %line.addr, align 8, !dbg !387
  %cmp = icmp ne i32* %0, null, !dbg !389
  br i1 %cmp, label %if.then, label %if.end, !dbg !390

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !391
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !393
  br label %if.end, !dbg !394

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !395
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !396 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !399, metadata !DIExpression()), !dbg !400
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !401
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.8, i64 0, i64 0), i32 %0), !dbg !402
  ret void, !dbg !403
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !404 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !408, metadata !DIExpression()), !dbg !409
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !410
  %conv = sext i16 %0 to i32, !dbg !410
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !411
  ret void, !dbg !412
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !413 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !417, metadata !DIExpression()), !dbg !418
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !419
  %conv = fpext float %0 to double, !dbg !419
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !420
  ret void, !dbg !421
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !422 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !426, metadata !DIExpression()), !dbg !427
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !428
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !429
  ret void, !dbg !430
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !431 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !438, metadata !DIExpression()), !dbg !439
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !440
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !441
  ret void, !dbg !442
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !443 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !446, metadata !DIExpression()), !dbg !447
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !448
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !449
  ret void, !dbg !450
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !451 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !454, metadata !DIExpression()), !dbg !455
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !456
  %conv = sext i8 %0 to i32, !dbg !456
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !457
  ret void, !dbg !458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !459 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !462, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !464, metadata !DIExpression()), !dbg !468
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !469
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !470
  store i32 %0, i32* %arrayidx, align 4, !dbg !471
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !472
  store i32 0, i32* %arrayidx1, align 4, !dbg !473
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !474
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !475
  ret void, !dbg !476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !477 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !480, metadata !DIExpression()), !dbg !481
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !482
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !483
  ret void, !dbg !484
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !485 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !488, metadata !DIExpression()), !dbg !489
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !490
  %conv = zext i8 %0 to i32, !dbg !490
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !491
  ret void, !dbg !492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !493 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !497, metadata !DIExpression()), !dbg !498
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !499
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !500
  ret void, !dbg !501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !502 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !512, metadata !DIExpression()), !dbg !513
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !514
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !515
  %1 = load i32, i32* %intOne, align 4, !dbg !515
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !516
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !517
  %3 = load i32, i32* %intTwo, align 4, !dbg !517
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !518
  ret void, !dbg !519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !520 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !524, metadata !DIExpression()), !dbg !525
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !526, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.declare(metadata i64* %i, metadata !528, metadata !DIExpression()), !dbg !529
  store i64 0, i64* %i, align 8, !dbg !530
  br label %for.cond, !dbg !532

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !533
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !535
  %cmp = icmp ult i64 %0, %1, !dbg !536
  br i1 %cmp, label %for.body, label %for.end, !dbg !537

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !538
  %3 = load i64, i64* %i, align 8, !dbg !540
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !538
  %4 = load i8, i8* %arrayidx, align 1, !dbg !538
  %conv = zext i8 %4 to i32, !dbg !538
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !541
  br label %for.inc, !dbg !542

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !543
  %inc = add i64 %5, 1, !dbg !543
  store i64 %inc, i64* %i, align 8, !dbg !543
  br label %for.cond, !dbg !544, !llvm.loop !545

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !548
  ret void, !dbg !549
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !550 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !553, metadata !DIExpression()), !dbg !554
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !555, metadata !DIExpression()), !dbg !556
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !557, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !559, metadata !DIExpression()), !dbg !560
  store i64 0, i64* %numWritten, align 8, !dbg !560
  br label %while.cond, !dbg !561

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !562
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !563
  %cmp = icmp ult i64 %0, %1, !dbg !564
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !565

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #10, !dbg !566
  %2 = load i16*, i16** %call, align 8, !dbg !566
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !566
  %4 = load i64, i64* %numWritten, align 8, !dbg !566
  %mul = mul i64 2, %4, !dbg !566
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !566
  %5 = load i8, i8* %arrayidx, align 1, !dbg !566
  %conv = sext i8 %5 to i32, !dbg !566
  %idxprom = sext i32 %conv to i64, !dbg !566
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !566
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !566
  %conv2 = zext i16 %6 to i32, !dbg !566
  %and = and i32 %conv2, 4096, !dbg !566
  %tobool = icmp ne i32 %and, 0, !dbg !566
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !567

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #10, !dbg !568
  %7 = load i16*, i16** %call3, align 8, !dbg !568
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !568
  %9 = load i64, i64* %numWritten, align 8, !dbg !568
  %mul4 = mul i64 2, %9, !dbg !568
  %add = add i64 %mul4, 1, !dbg !568
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !568
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !568
  %conv6 = sext i8 %10 to i32, !dbg !568
  %idxprom7 = sext i32 %conv6 to i64, !dbg !568
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !568
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !568
  %conv9 = zext i16 %11 to i32, !dbg !568
  %and10 = and i32 %conv9, 4096, !dbg !568
  %tobool11 = icmp ne i32 %and10, 0, !dbg !567
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !569
  br i1 %12, label %while.body, label %while.end, !dbg !561

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !570, metadata !DIExpression()), !dbg !572
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !573
  %14 = load i64, i64* %numWritten, align 8, !dbg !574
  %mul12 = mul i64 2, %14, !dbg !575
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !573
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !576
  %15 = load i32, i32* %byte, align 4, !dbg !577
  %conv15 = trunc i32 %15 to i8, !dbg !578
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !579
  %17 = load i64, i64* %numWritten, align 8, !dbg !580
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !579
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !581
  %18 = load i64, i64* %numWritten, align 8, !dbg !582
  %inc = add i64 %18, 1, !dbg !582
  store i64 %inc, i64* %numWritten, align 8, !dbg !582
  br label %while.cond, !dbg !561, !llvm.loop !583

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !585
  ret i64 %19, !dbg !586
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !587 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !590, metadata !DIExpression()), !dbg !591
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !592, metadata !DIExpression()), !dbg !593
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !594, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !596, metadata !DIExpression()), !dbg !597
  store i64 0, i64* %numWritten, align 8, !dbg !597
  br label %while.cond, !dbg !598

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !599
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !600
  %cmp = icmp ult i64 %0, %1, !dbg !601
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !602

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !603
  %3 = load i64, i64* %numWritten, align 8, !dbg !604
  %mul = mul i64 2, %3, !dbg !605
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !603
  %4 = load i32, i32* %arrayidx, align 4, !dbg !603
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !606
  %tobool = icmp ne i32 %call, 0, !dbg !606
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !607

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !608
  %6 = load i64, i64* %numWritten, align 8, !dbg !609
  %mul1 = mul i64 2, %6, !dbg !610
  %add = add i64 %mul1, 1, !dbg !611
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !608
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !608
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !612
  %tobool4 = icmp ne i32 %call3, 0, !dbg !607
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !613
  br i1 %8, label %while.body, label %while.end, !dbg !598

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !614, metadata !DIExpression()), !dbg !616
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !617
  %10 = load i64, i64* %numWritten, align 8, !dbg !618
  %mul5 = mul i64 2, %10, !dbg !619
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !617
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !620
  %11 = load i32, i32* %byte, align 4, !dbg !621
  %conv = trunc i32 %11 to i8, !dbg !622
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !623
  %13 = load i64, i64* %numWritten, align 8, !dbg !624
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !623
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !625
  %14 = load i64, i64* %numWritten, align 8, !dbg !626
  %inc = add i64 %14, 1, !dbg !626
  store i64 %inc, i64* %numWritten, align 8, !dbg !626
  br label %while.cond, !dbg !598, !llvm.loop !627

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !629
  ret i64 %15, !dbg !630
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !631 {
entry:
  ret i32 1, !dbg !634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !635 {
entry:
  ret i32 0, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !637 {
entry:
  %call = call i32 @rand() #9, !dbg !638
  %rem = srem i32 %call, 2, !dbg !639
  ret i32 %rem, !dbg !640
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !641 {
entry:
  ret void, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !643 {
entry:
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !645 {
entry:
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !647 {
entry:
  ret void, !dbg !648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !649 {
entry:
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !651 {
entry:
  ret void, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !653 {
entry:
  ret void, !dbg !654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !655 {
entry:
  ret void, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !657 {
entry:
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !659 {
entry:
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !661 {
entry:
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !663 {
entry:
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !665 {
entry:
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !671 {
entry:
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !673 {
entry:
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !675 {
entry:
  ret void, !dbg !676
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
!llvm.ident = !{!57, !57}
!llvm.module.flags = !{!58, !59, !60}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "badStatic", scope: !2, file: !3, line: 29, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_vprintf_21.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_596/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0, !9, !11, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "goodB2G1Static", scope: !2, file: !3, line: 84, type: !6, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "goodB2G2Static", scope: !2, file: !3, line: 85, type: !6, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "goodG2BStatic", scope: !2, file: !3, line: 86, type: !6, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !6, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_596/source_code")
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
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = !{!"clang version 12.0.0"}
!58 = !{i32 7, !"Dwarf Version", i32 4}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = distinct !DISubprogram(name: "badVaSink", scope: !3, file: !3, line: 31, type: !62, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !55, null}
!64 = !DILocalVariable(name: "data", arg: 1, scope: !61, file: !3, line: 31, type: !55)
!65 = !DILocation(line: 31, column: 23, scope: !61)
!66 = !DILocation(line: 33, column: 8, scope: !67)
!67 = distinct !DILexicalBlock(scope: !61, file: !3, line: 33, column: 8)
!68 = !DILocation(line: 33, column: 8, scope: !61)
!69 = !DILocalVariable(name: "args", scope: !70, file: !3, line: 36, type: !72)
!70 = distinct !DILexicalBlock(scope: !71, file: !3, line: 35, column: 9)
!71 = distinct !DILexicalBlock(scope: !67, file: !3, line: 34, column: 5)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !73, line: 52, baseType: !74)
!73 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !75, line: 32, baseType: !76)
!75 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !77)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 192, elements: !84)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !79)
!79 = !{!80, !81, !82, !83}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !78, file: !3, line: 36, baseType: !22, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !78, file: !3, line: 36, baseType: !22, size: 32, offset: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !78, file: !3, line: 36, baseType: !7, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !78, file: !3, line: 36, baseType: !7, size: 64, offset: 128)
!84 = !{!85}
!85 = !DISubrange(count: 1)
!86 = !DILocation(line: 36, column: 21, scope: !70)
!87 = !DILocation(line: 37, column: 13, scope: !70)
!88 = !DILocation(line: 39, column: 21, scope: !70)
!89 = !DILocation(line: 39, column: 27, scope: !70)
!90 = !DILocation(line: 39, column: 13, scope: !70)
!91 = !DILocation(line: 40, column: 13, scope: !70)
!92 = !DILocation(line: 42, column: 5, scope: !71)
!93 = !DILocation(line: 43, column: 1, scope: !61)
!94 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_21_bad", scope: !3, file: !3, line: 45, type: !95, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DILocalVariable(name: "data", scope: !94, file: !3, line: 47, type: !55)
!98 = !DILocation(line: 47, column: 12, scope: !94)
!99 = !DILocalVariable(name: "dataBuffer", scope: !94, file: !3, line: 48, type: !100)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 100)
!103 = !DILocation(line: 48, column: 10, scope: !94)
!104 = !DILocation(line: 49, column: 12, scope: !94)
!105 = !DILocation(line: 49, column: 10, scope: !94)
!106 = !DILocalVariable(name: "dataLen", scope: !107, file: !3, line: 52, type: !108)
!107 = distinct !DILexicalBlock(scope: !94, file: !3, line: 50, column: 5)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 46, baseType: !110)
!109 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!110 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!111 = !DILocation(line: 52, column: 16, scope: !107)
!112 = !DILocation(line: 52, column: 33, scope: !107)
!113 = !DILocation(line: 52, column: 26, scope: !107)
!114 = !DILocation(line: 54, column: 17, scope: !115)
!115 = distinct !DILexicalBlock(scope: !107, file: !3, line: 54, column: 13)
!116 = !DILocation(line: 54, column: 16, scope: !115)
!117 = !DILocation(line: 54, column: 25, scope: !115)
!118 = !DILocation(line: 54, column: 13, scope: !107)
!119 = !DILocation(line: 57, column: 23, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !3, line: 57, column: 17)
!121 = distinct !DILexicalBlock(scope: !115, file: !3, line: 55, column: 9)
!122 = !DILocation(line: 57, column: 28, scope: !120)
!123 = !DILocation(line: 57, column: 27, scope: !120)
!124 = !DILocation(line: 57, column: 47, scope: !120)
!125 = !DILocation(line: 57, column: 46, scope: !120)
!126 = !DILocation(line: 57, column: 37, scope: !120)
!127 = !DILocation(line: 57, column: 57, scope: !120)
!128 = !DILocation(line: 57, column: 17, scope: !120)
!129 = !DILocation(line: 57, column: 64, scope: !120)
!130 = !DILocation(line: 57, column: 17, scope: !121)
!131 = !DILocation(line: 61, column: 34, scope: !132)
!132 = distinct !DILexicalBlock(scope: !120, file: !3, line: 58, column: 13)
!133 = !DILocation(line: 61, column: 27, scope: !132)
!134 = !DILocation(line: 61, column: 25, scope: !132)
!135 = !DILocation(line: 62, column: 21, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !3, line: 62, column: 21)
!137 = !DILocation(line: 62, column: 29, scope: !136)
!138 = !DILocation(line: 62, column: 33, scope: !136)
!139 = !DILocation(line: 62, column: 36, scope: !136)
!140 = !DILocation(line: 62, column: 41, scope: !136)
!141 = !DILocation(line: 62, column: 48, scope: !136)
!142 = !DILocation(line: 62, column: 52, scope: !136)
!143 = !DILocation(line: 62, column: 21, scope: !132)
!144 = !DILocation(line: 64, column: 21, scope: !145)
!145 = distinct !DILexicalBlock(scope: !136, file: !3, line: 63, column: 17)
!146 = !DILocation(line: 64, column: 26, scope: !145)
!147 = !DILocation(line: 64, column: 33, scope: !145)
!148 = !DILocation(line: 64, column: 37, scope: !145)
!149 = !DILocation(line: 65, column: 17, scope: !145)
!150 = !DILocation(line: 66, column: 13, scope: !132)
!151 = !DILocation(line: 69, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !120, file: !3, line: 68, column: 13)
!153 = !DILocation(line: 71, column: 17, scope: !152)
!154 = !DILocation(line: 71, column: 22, scope: !152)
!155 = !DILocation(line: 71, column: 31, scope: !152)
!156 = !DILocation(line: 73, column: 9, scope: !121)
!157 = !DILocation(line: 75, column: 15, scope: !94)
!158 = !DILocation(line: 76, column: 15, scope: !94)
!159 = !DILocation(line: 76, column: 21, scope: !94)
!160 = !DILocation(line: 76, column: 5, scope: !94)
!161 = !DILocation(line: 77, column: 1, scope: !94)
!162 = distinct !DISubprogram(name: "goodB2G1_vasink", scope: !3, file: !3, line: 89, type: !62, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!163 = !DILocalVariable(name: "data", arg: 1, scope: !162, file: !3, line: 89, type: !55)
!164 = !DILocation(line: 89, column: 29, scope: !162)
!165 = !DILocation(line: 91, column: 8, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !3, line: 91, column: 8)
!167 = !DILocation(line: 91, column: 8, scope: !162)
!168 = !DILocation(line: 94, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !3, line: 92, column: 5)
!170 = !DILocation(line: 95, column: 5, scope: !169)
!171 = !DILocalVariable(name: "args", scope: !172, file: !3, line: 99, type: !72)
!172 = distinct !DILexicalBlock(scope: !173, file: !3, line: 98, column: 9)
!173 = distinct !DILexicalBlock(scope: !166, file: !3, line: 97, column: 5)
!174 = !DILocation(line: 99, column: 21, scope: !172)
!175 = !DILocation(line: 100, column: 13, scope: !172)
!176 = !DILocation(line: 102, column: 27, scope: !172)
!177 = !DILocation(line: 102, column: 13, scope: !172)
!178 = !DILocation(line: 103, column: 13, scope: !172)
!179 = !DILocation(line: 106, column: 1, scope: !162)
!180 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 108, type: !95, scopeLine: 109, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!181 = !DILocalVariable(name: "data", scope: !180, file: !3, line: 110, type: !55)
!182 = !DILocation(line: 110, column: 12, scope: !180)
!183 = !DILocalVariable(name: "dataBuffer", scope: !180, file: !3, line: 111, type: !100)
!184 = !DILocation(line: 111, column: 10, scope: !180)
!185 = !DILocation(line: 112, column: 12, scope: !180)
!186 = !DILocation(line: 112, column: 10, scope: !180)
!187 = !DILocalVariable(name: "dataLen", scope: !188, file: !3, line: 115, type: !108)
!188 = distinct !DILexicalBlock(scope: !180, file: !3, line: 113, column: 5)
!189 = !DILocation(line: 115, column: 16, scope: !188)
!190 = !DILocation(line: 115, column: 33, scope: !188)
!191 = !DILocation(line: 115, column: 26, scope: !188)
!192 = !DILocation(line: 117, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !188, file: !3, line: 117, column: 13)
!194 = !DILocation(line: 117, column: 16, scope: !193)
!195 = !DILocation(line: 117, column: 25, scope: !193)
!196 = !DILocation(line: 117, column: 13, scope: !188)
!197 = !DILocation(line: 120, column: 23, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !3, line: 120, column: 17)
!199 = distinct !DILexicalBlock(scope: !193, file: !3, line: 118, column: 9)
!200 = !DILocation(line: 120, column: 28, scope: !198)
!201 = !DILocation(line: 120, column: 27, scope: !198)
!202 = !DILocation(line: 120, column: 47, scope: !198)
!203 = !DILocation(line: 120, column: 46, scope: !198)
!204 = !DILocation(line: 120, column: 37, scope: !198)
!205 = !DILocation(line: 120, column: 57, scope: !198)
!206 = !DILocation(line: 120, column: 17, scope: !198)
!207 = !DILocation(line: 120, column: 64, scope: !198)
!208 = !DILocation(line: 120, column: 17, scope: !199)
!209 = !DILocation(line: 124, column: 34, scope: !210)
!210 = distinct !DILexicalBlock(scope: !198, file: !3, line: 121, column: 13)
!211 = !DILocation(line: 124, column: 27, scope: !210)
!212 = !DILocation(line: 124, column: 25, scope: !210)
!213 = !DILocation(line: 125, column: 21, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !3, line: 125, column: 21)
!215 = !DILocation(line: 125, column: 29, scope: !214)
!216 = !DILocation(line: 125, column: 33, scope: !214)
!217 = !DILocation(line: 125, column: 36, scope: !214)
!218 = !DILocation(line: 125, column: 41, scope: !214)
!219 = !DILocation(line: 125, column: 48, scope: !214)
!220 = !DILocation(line: 125, column: 52, scope: !214)
!221 = !DILocation(line: 125, column: 21, scope: !210)
!222 = !DILocation(line: 127, column: 21, scope: !223)
!223 = distinct !DILexicalBlock(scope: !214, file: !3, line: 126, column: 17)
!224 = !DILocation(line: 127, column: 26, scope: !223)
!225 = !DILocation(line: 127, column: 33, scope: !223)
!226 = !DILocation(line: 127, column: 37, scope: !223)
!227 = !DILocation(line: 128, column: 17, scope: !223)
!228 = !DILocation(line: 129, column: 13, scope: !210)
!229 = !DILocation(line: 132, column: 17, scope: !230)
!230 = distinct !DILexicalBlock(scope: !198, file: !3, line: 131, column: 13)
!231 = !DILocation(line: 134, column: 17, scope: !230)
!232 = !DILocation(line: 134, column: 22, scope: !230)
!233 = !DILocation(line: 134, column: 31, scope: !230)
!234 = !DILocation(line: 136, column: 9, scope: !199)
!235 = !DILocation(line: 138, column: 20, scope: !180)
!236 = !DILocation(line: 139, column: 21, scope: !180)
!237 = !DILocation(line: 139, column: 27, scope: !180)
!238 = !DILocation(line: 139, column: 5, scope: !180)
!239 = !DILocation(line: 140, column: 1, scope: !180)
!240 = distinct !DISubprogram(name: "goodB2G2_vasink", scope: !3, file: !3, line: 143, type: !62, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!241 = !DILocalVariable(name: "data", arg: 1, scope: !240, file: !3, line: 143, type: !55)
!242 = !DILocation(line: 143, column: 29, scope: !240)
!243 = !DILocation(line: 145, column: 8, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !3, line: 145, column: 8)
!245 = !DILocation(line: 145, column: 8, scope: !240)
!246 = !DILocalVariable(name: "args", scope: !247, file: !3, line: 148, type: !72)
!247 = distinct !DILexicalBlock(scope: !248, file: !3, line: 147, column: 9)
!248 = distinct !DILexicalBlock(scope: !244, file: !3, line: 146, column: 5)
!249 = !DILocation(line: 148, column: 21, scope: !247)
!250 = !DILocation(line: 149, column: 13, scope: !247)
!251 = !DILocation(line: 151, column: 27, scope: !247)
!252 = !DILocation(line: 151, column: 13, scope: !247)
!253 = !DILocation(line: 152, column: 13, scope: !247)
!254 = !DILocation(line: 154, column: 5, scope: !248)
!255 = !DILocation(line: 155, column: 1, scope: !240)
!256 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 157, type: !95, scopeLine: 158, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!257 = !DILocalVariable(name: "data", scope: !256, file: !3, line: 159, type: !55)
!258 = !DILocation(line: 159, column: 12, scope: !256)
!259 = !DILocalVariable(name: "dataBuffer", scope: !256, file: !3, line: 160, type: !100)
!260 = !DILocation(line: 160, column: 10, scope: !256)
!261 = !DILocation(line: 161, column: 12, scope: !256)
!262 = !DILocation(line: 161, column: 10, scope: !256)
!263 = !DILocalVariable(name: "dataLen", scope: !264, file: !3, line: 164, type: !108)
!264 = distinct !DILexicalBlock(scope: !256, file: !3, line: 162, column: 5)
!265 = !DILocation(line: 164, column: 16, scope: !264)
!266 = !DILocation(line: 164, column: 33, scope: !264)
!267 = !DILocation(line: 164, column: 26, scope: !264)
!268 = !DILocation(line: 166, column: 17, scope: !269)
!269 = distinct !DILexicalBlock(scope: !264, file: !3, line: 166, column: 13)
!270 = !DILocation(line: 166, column: 16, scope: !269)
!271 = !DILocation(line: 166, column: 25, scope: !269)
!272 = !DILocation(line: 166, column: 13, scope: !264)
!273 = !DILocation(line: 169, column: 23, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !3, line: 169, column: 17)
!275 = distinct !DILexicalBlock(scope: !269, file: !3, line: 167, column: 9)
!276 = !DILocation(line: 169, column: 28, scope: !274)
!277 = !DILocation(line: 169, column: 27, scope: !274)
!278 = !DILocation(line: 169, column: 47, scope: !274)
!279 = !DILocation(line: 169, column: 46, scope: !274)
!280 = !DILocation(line: 169, column: 37, scope: !274)
!281 = !DILocation(line: 169, column: 57, scope: !274)
!282 = !DILocation(line: 169, column: 17, scope: !274)
!283 = !DILocation(line: 169, column: 64, scope: !274)
!284 = !DILocation(line: 169, column: 17, scope: !275)
!285 = !DILocation(line: 173, column: 34, scope: !286)
!286 = distinct !DILexicalBlock(scope: !274, file: !3, line: 170, column: 13)
!287 = !DILocation(line: 173, column: 27, scope: !286)
!288 = !DILocation(line: 173, column: 25, scope: !286)
!289 = !DILocation(line: 174, column: 21, scope: !290)
!290 = distinct !DILexicalBlock(scope: !286, file: !3, line: 174, column: 21)
!291 = !DILocation(line: 174, column: 29, scope: !290)
!292 = !DILocation(line: 174, column: 33, scope: !290)
!293 = !DILocation(line: 174, column: 36, scope: !290)
!294 = !DILocation(line: 174, column: 41, scope: !290)
!295 = !DILocation(line: 174, column: 48, scope: !290)
!296 = !DILocation(line: 174, column: 52, scope: !290)
!297 = !DILocation(line: 174, column: 21, scope: !286)
!298 = !DILocation(line: 176, column: 21, scope: !299)
!299 = distinct !DILexicalBlock(scope: !290, file: !3, line: 175, column: 17)
!300 = !DILocation(line: 176, column: 26, scope: !299)
!301 = !DILocation(line: 176, column: 33, scope: !299)
!302 = !DILocation(line: 176, column: 37, scope: !299)
!303 = !DILocation(line: 177, column: 17, scope: !299)
!304 = !DILocation(line: 178, column: 13, scope: !286)
!305 = !DILocation(line: 181, column: 17, scope: !306)
!306 = distinct !DILexicalBlock(scope: !274, file: !3, line: 180, column: 13)
!307 = !DILocation(line: 183, column: 17, scope: !306)
!308 = !DILocation(line: 183, column: 22, scope: !306)
!309 = !DILocation(line: 183, column: 31, scope: !306)
!310 = !DILocation(line: 185, column: 9, scope: !275)
!311 = !DILocation(line: 187, column: 20, scope: !256)
!312 = !DILocation(line: 188, column: 21, scope: !256)
!313 = !DILocation(line: 188, column: 27, scope: !256)
!314 = !DILocation(line: 188, column: 5, scope: !256)
!315 = !DILocation(line: 189, column: 1, scope: !256)
!316 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !3, file: !3, line: 192, type: !62, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!317 = !DILocalVariable(name: "data", arg: 1, scope: !316, file: !3, line: 192, type: !55)
!318 = !DILocation(line: 192, column: 27, scope: !316)
!319 = !DILocation(line: 194, column: 8, scope: !320)
!320 = distinct !DILexicalBlock(scope: !316, file: !3, line: 194, column: 8)
!321 = !DILocation(line: 194, column: 8, scope: !316)
!322 = !DILocalVariable(name: "args", scope: !323, file: !3, line: 197, type: !72)
!323 = distinct !DILexicalBlock(scope: !324, file: !3, line: 196, column: 9)
!324 = distinct !DILexicalBlock(scope: !320, file: !3, line: 195, column: 5)
!325 = !DILocation(line: 197, column: 21, scope: !323)
!326 = !DILocation(line: 198, column: 13, scope: !323)
!327 = !DILocation(line: 200, column: 21, scope: !323)
!328 = !DILocation(line: 200, column: 27, scope: !323)
!329 = !DILocation(line: 200, column: 13, scope: !323)
!330 = !DILocation(line: 201, column: 13, scope: !323)
!331 = !DILocation(line: 203, column: 5, scope: !324)
!332 = !DILocation(line: 204, column: 1, scope: !316)
!333 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 206, type: !95, scopeLine: 207, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!334 = !DILocalVariable(name: "data", scope: !333, file: !3, line: 208, type: !55)
!335 = !DILocation(line: 208, column: 12, scope: !333)
!336 = !DILocalVariable(name: "dataBuffer", scope: !333, file: !3, line: 209, type: !100)
!337 = !DILocation(line: 209, column: 10, scope: !333)
!338 = !DILocation(line: 210, column: 12, scope: !333)
!339 = !DILocation(line: 210, column: 10, scope: !333)
!340 = !DILocation(line: 212, column: 12, scope: !333)
!341 = !DILocation(line: 212, column: 5, scope: !333)
!342 = !DILocation(line: 213, column: 19, scope: !333)
!343 = !DILocation(line: 214, column: 19, scope: !333)
!344 = !DILocation(line: 214, column: 25, scope: !333)
!345 = !DILocation(line: 214, column: 5, scope: !333)
!346 = !DILocation(line: 215, column: 1, scope: !333)
!347 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_21_good", scope: !3, file: !3, line: 217, type: !95, scopeLine: 218, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!348 = !DILocation(line: 219, column: 5, scope: !347)
!349 = !DILocation(line: 220, column: 5, scope: !347)
!350 = !DILocation(line: 221, column: 5, scope: !347)
!351 = !DILocation(line: 222, column: 1, scope: !347)
!352 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !353, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !55}
!355 = !DILocalVariable(name: "line", arg: 1, scope: !352, file: !18, line: 11, type: !55)
!356 = !DILocation(line: 11, column: 25, scope: !352)
!357 = !DILocation(line: 13, column: 1, scope: !352)
!358 = !DILocation(line: 14, column: 8, scope: !359)
!359 = distinct !DILexicalBlock(scope: !352, file: !18, line: 14, column: 8)
!360 = !DILocation(line: 14, column: 13, scope: !359)
!361 = !DILocation(line: 14, column: 8, scope: !352)
!362 = !DILocation(line: 16, column: 24, scope: !363)
!363 = distinct !DILexicalBlock(scope: !359, file: !18, line: 15, column: 5)
!364 = !DILocation(line: 16, column: 9, scope: !363)
!365 = !DILocation(line: 17, column: 5, scope: !363)
!366 = !DILocation(line: 18, column: 5, scope: !352)
!367 = !DILocation(line: 19, column: 1, scope: !352)
!368 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !353, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!369 = !DILocalVariable(name: "line", arg: 1, scope: !368, file: !18, line: 20, type: !55)
!370 = !DILocation(line: 20, column: 29, scope: !368)
!371 = !DILocation(line: 22, column: 8, scope: !372)
!372 = distinct !DILexicalBlock(scope: !368, file: !18, line: 22, column: 8)
!373 = !DILocation(line: 22, column: 13, scope: !372)
!374 = !DILocation(line: 22, column: 8, scope: !368)
!375 = !DILocation(line: 24, column: 24, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !18, line: 23, column: 5)
!377 = !DILocation(line: 24, column: 9, scope: !376)
!378 = !DILocation(line: 25, column: 5, scope: !376)
!379 = !DILocation(line: 26, column: 1, scope: !368)
!380 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !381, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !383}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !109, line: 74, baseType: !6)
!385 = !DILocalVariable(name: "line", arg: 1, scope: !380, file: !18, line: 27, type: !383)
!386 = !DILocation(line: 27, column: 29, scope: !380)
!387 = !DILocation(line: 29, column: 8, scope: !388)
!388 = distinct !DILexicalBlock(scope: !380, file: !18, line: 29, column: 8)
!389 = !DILocation(line: 29, column: 13, scope: !388)
!390 = !DILocation(line: 29, column: 8, scope: !380)
!391 = !DILocation(line: 31, column: 27, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !18, line: 30, column: 5)
!393 = !DILocation(line: 31, column: 9, scope: !392)
!394 = !DILocation(line: 32, column: 5, scope: !392)
!395 = !DILocation(line: 33, column: 1, scope: !380)
!396 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !397, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !6}
!399 = !DILocalVariable(name: "intNumber", arg: 1, scope: !396, file: !18, line: 35, type: !6)
!400 = !DILocation(line: 35, column: 24, scope: !396)
!401 = !DILocation(line: 37, column: 20, scope: !396)
!402 = !DILocation(line: 37, column: 5, scope: !396)
!403 = !DILocation(line: 38, column: 1, scope: !396)
!404 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !405, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !407}
!407 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!408 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !404, file: !18, line: 40, type: !407)
!409 = !DILocation(line: 40, column: 28, scope: !404)
!410 = !DILocation(line: 42, column: 21, scope: !404)
!411 = !DILocation(line: 42, column: 5, scope: !404)
!412 = !DILocation(line: 43, column: 1, scope: !404)
!413 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !414, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !416}
!416 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!417 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !413, file: !18, line: 45, type: !416)
!418 = !DILocation(line: 45, column: 28, scope: !413)
!419 = !DILocation(line: 47, column: 20, scope: !413)
!420 = !DILocation(line: 47, column: 5, scope: !413)
!421 = !DILocation(line: 48, column: 1, scope: !413)
!422 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !423, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !425}
!425 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!426 = !DILocalVariable(name: "longNumber", arg: 1, scope: !422, file: !18, line: 50, type: !425)
!427 = !DILocation(line: 50, column: 26, scope: !422)
!428 = !DILocation(line: 52, column: 21, scope: !422)
!429 = !DILocation(line: 52, column: 5, scope: !422)
!430 = !DILocation(line: 53, column: 1, scope: !422)
!431 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !432, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !434}
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !435, line: 27, baseType: !436)
!435 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !437, line: 44, baseType: !425)
!437 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!438 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !431, file: !18, line: 55, type: !434)
!439 = !DILocation(line: 55, column: 33, scope: !431)
!440 = !DILocation(line: 57, column: 29, scope: !431)
!441 = !DILocation(line: 57, column: 5, scope: !431)
!442 = !DILocation(line: 58, column: 1, scope: !431)
!443 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !444, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !108}
!446 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !443, file: !18, line: 60, type: !108)
!447 = !DILocation(line: 60, column: 29, scope: !443)
!448 = !DILocation(line: 62, column: 21, scope: !443)
!449 = !DILocation(line: 62, column: 5, scope: !443)
!450 = !DILocation(line: 63, column: 1, scope: !443)
!451 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !452, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !56}
!454 = !DILocalVariable(name: "charHex", arg: 1, scope: !451, file: !18, line: 65, type: !56)
!455 = !DILocation(line: 65, column: 29, scope: !451)
!456 = !DILocation(line: 67, column: 22, scope: !451)
!457 = !DILocation(line: 67, column: 5, scope: !451)
!458 = !DILocation(line: 68, column: 1, scope: !451)
!459 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !460, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !384}
!462 = !DILocalVariable(name: "wideChar", arg: 1, scope: !459, file: !18, line: 70, type: !384)
!463 = !DILocation(line: 70, column: 29, scope: !459)
!464 = !DILocalVariable(name: "s", scope: !459, file: !18, line: 74, type: !465)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 64, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 2)
!468 = !DILocation(line: 74, column: 13, scope: !459)
!469 = !DILocation(line: 75, column: 16, scope: !459)
!470 = !DILocation(line: 75, column: 9, scope: !459)
!471 = !DILocation(line: 75, column: 14, scope: !459)
!472 = !DILocation(line: 76, column: 9, scope: !459)
!473 = !DILocation(line: 76, column: 14, scope: !459)
!474 = !DILocation(line: 77, column: 21, scope: !459)
!475 = !DILocation(line: 77, column: 5, scope: !459)
!476 = !DILocation(line: 78, column: 1, scope: !459)
!477 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !478, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !22}
!480 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !477, file: !18, line: 80, type: !22)
!481 = !DILocation(line: 80, column: 33, scope: !477)
!482 = !DILocation(line: 82, column: 20, scope: !477)
!483 = !DILocation(line: 82, column: 5, scope: !477)
!484 = !DILocation(line: 83, column: 1, scope: !477)
!485 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !486, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !38}
!488 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !485, file: !18, line: 85, type: !38)
!489 = !DILocation(line: 85, column: 45, scope: !485)
!490 = !DILocation(line: 87, column: 22, scope: !485)
!491 = !DILocation(line: 87, column: 5, scope: !485)
!492 = !DILocation(line: 88, column: 1, scope: !485)
!493 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !494, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !496}
!496 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!497 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !493, file: !18, line: 90, type: !496)
!498 = !DILocation(line: 90, column: 29, scope: !493)
!499 = !DILocation(line: 92, column: 20, scope: !493)
!500 = !DILocation(line: 92, column: 5, scope: !493)
!501 = !DILocation(line: 93, column: 1, scope: !493)
!502 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !503, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !505}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !507, line: 100, baseType: !508)
!507 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_596/source_code")
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !507, line: 96, size: 64, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !508, file: !507, line: 98, baseType: !6, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !508, file: !507, line: 99, baseType: !6, size: 32, offset: 32)
!512 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !502, file: !18, line: 95, type: !505)
!513 = !DILocation(line: 95, column: 40, scope: !502)
!514 = !DILocation(line: 97, column: 26, scope: !502)
!515 = !DILocation(line: 97, column: 47, scope: !502)
!516 = !DILocation(line: 97, column: 55, scope: !502)
!517 = !DILocation(line: 97, column: 76, scope: !502)
!518 = !DILocation(line: 97, column: 5, scope: !502)
!519 = !DILocation(line: 98, column: 1, scope: !502)
!520 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !521, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !523, !108}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!524 = !DILocalVariable(name: "bytes", arg: 1, scope: !520, file: !18, line: 100, type: !523)
!525 = !DILocation(line: 100, column: 38, scope: !520)
!526 = !DILocalVariable(name: "numBytes", arg: 2, scope: !520, file: !18, line: 100, type: !108)
!527 = !DILocation(line: 100, column: 52, scope: !520)
!528 = !DILocalVariable(name: "i", scope: !520, file: !18, line: 102, type: !108)
!529 = !DILocation(line: 102, column: 12, scope: !520)
!530 = !DILocation(line: 103, column: 12, scope: !531)
!531 = distinct !DILexicalBlock(scope: !520, file: !18, line: 103, column: 5)
!532 = !DILocation(line: 103, column: 10, scope: !531)
!533 = !DILocation(line: 103, column: 17, scope: !534)
!534 = distinct !DILexicalBlock(scope: !531, file: !18, line: 103, column: 5)
!535 = !DILocation(line: 103, column: 21, scope: !534)
!536 = !DILocation(line: 103, column: 19, scope: !534)
!537 = !DILocation(line: 103, column: 5, scope: !531)
!538 = !DILocation(line: 105, column: 24, scope: !539)
!539 = distinct !DILexicalBlock(scope: !534, file: !18, line: 104, column: 5)
!540 = !DILocation(line: 105, column: 30, scope: !539)
!541 = !DILocation(line: 105, column: 9, scope: !539)
!542 = !DILocation(line: 106, column: 5, scope: !539)
!543 = !DILocation(line: 103, column: 31, scope: !534)
!544 = !DILocation(line: 103, column: 5, scope: !534)
!545 = distinct !{!545, !537, !546, !547}
!546 = !DILocation(line: 106, column: 5, scope: !531)
!547 = !{!"llvm.loop.mustprogress"}
!548 = !DILocation(line: 107, column: 5, scope: !520)
!549 = !DILocation(line: 108, column: 1, scope: !520)
!550 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !551, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!551 = !DISubroutineType(types: !552)
!552 = !{!108, !523, !108, !55}
!553 = !DILocalVariable(name: "bytes", arg: 1, scope: !550, file: !18, line: 113, type: !523)
!554 = !DILocation(line: 113, column: 39, scope: !550)
!555 = !DILocalVariable(name: "numBytes", arg: 2, scope: !550, file: !18, line: 113, type: !108)
!556 = !DILocation(line: 113, column: 53, scope: !550)
!557 = !DILocalVariable(name: "hex", arg: 3, scope: !550, file: !18, line: 113, type: !55)
!558 = !DILocation(line: 113, column: 71, scope: !550)
!559 = !DILocalVariable(name: "numWritten", scope: !550, file: !18, line: 115, type: !108)
!560 = !DILocation(line: 115, column: 12, scope: !550)
!561 = !DILocation(line: 121, column: 5, scope: !550)
!562 = !DILocation(line: 121, column: 12, scope: !550)
!563 = !DILocation(line: 121, column: 25, scope: !550)
!564 = !DILocation(line: 121, column: 23, scope: !550)
!565 = !DILocation(line: 121, column: 34, scope: !550)
!566 = !DILocation(line: 121, column: 37, scope: !550)
!567 = !DILocation(line: 121, column: 67, scope: !550)
!568 = !DILocation(line: 121, column: 70, scope: !550)
!569 = !DILocation(line: 0, scope: !550)
!570 = !DILocalVariable(name: "byte", scope: !571, file: !18, line: 123, type: !6)
!571 = distinct !DILexicalBlock(scope: !550, file: !18, line: 122, column: 5)
!572 = !DILocation(line: 123, column: 13, scope: !571)
!573 = !DILocation(line: 124, column: 17, scope: !571)
!574 = !DILocation(line: 124, column: 25, scope: !571)
!575 = !DILocation(line: 124, column: 23, scope: !571)
!576 = !DILocation(line: 124, column: 9, scope: !571)
!577 = !DILocation(line: 125, column: 45, scope: !571)
!578 = !DILocation(line: 125, column: 29, scope: !571)
!579 = !DILocation(line: 125, column: 9, scope: !571)
!580 = !DILocation(line: 125, column: 15, scope: !571)
!581 = !DILocation(line: 125, column: 27, scope: !571)
!582 = !DILocation(line: 126, column: 9, scope: !571)
!583 = distinct !{!583, !561, !584, !547}
!584 = !DILocation(line: 127, column: 5, scope: !550)
!585 = !DILocation(line: 129, column: 12, scope: !550)
!586 = !DILocation(line: 129, column: 5, scope: !550)
!587 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !588, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!588 = !DISubroutineType(types: !589)
!589 = !{!108, !523, !108, !383}
!590 = !DILocalVariable(name: "bytes", arg: 1, scope: !587, file: !18, line: 135, type: !523)
!591 = !DILocation(line: 135, column: 41, scope: !587)
!592 = !DILocalVariable(name: "numBytes", arg: 2, scope: !587, file: !18, line: 135, type: !108)
!593 = !DILocation(line: 135, column: 55, scope: !587)
!594 = !DILocalVariable(name: "hex", arg: 3, scope: !587, file: !18, line: 135, type: !383)
!595 = !DILocation(line: 135, column: 76, scope: !587)
!596 = !DILocalVariable(name: "numWritten", scope: !587, file: !18, line: 137, type: !108)
!597 = !DILocation(line: 137, column: 12, scope: !587)
!598 = !DILocation(line: 143, column: 5, scope: !587)
!599 = !DILocation(line: 143, column: 12, scope: !587)
!600 = !DILocation(line: 143, column: 25, scope: !587)
!601 = !DILocation(line: 143, column: 23, scope: !587)
!602 = !DILocation(line: 143, column: 34, scope: !587)
!603 = !DILocation(line: 143, column: 47, scope: !587)
!604 = !DILocation(line: 143, column: 55, scope: !587)
!605 = !DILocation(line: 143, column: 53, scope: !587)
!606 = !DILocation(line: 143, column: 37, scope: !587)
!607 = !DILocation(line: 143, column: 68, scope: !587)
!608 = !DILocation(line: 143, column: 81, scope: !587)
!609 = !DILocation(line: 143, column: 89, scope: !587)
!610 = !DILocation(line: 143, column: 87, scope: !587)
!611 = !DILocation(line: 143, column: 100, scope: !587)
!612 = !DILocation(line: 143, column: 71, scope: !587)
!613 = !DILocation(line: 0, scope: !587)
!614 = !DILocalVariable(name: "byte", scope: !615, file: !18, line: 145, type: !6)
!615 = distinct !DILexicalBlock(scope: !587, file: !18, line: 144, column: 5)
!616 = !DILocation(line: 145, column: 13, scope: !615)
!617 = !DILocation(line: 146, column: 18, scope: !615)
!618 = !DILocation(line: 146, column: 26, scope: !615)
!619 = !DILocation(line: 146, column: 24, scope: !615)
!620 = !DILocation(line: 146, column: 9, scope: !615)
!621 = !DILocation(line: 147, column: 45, scope: !615)
!622 = !DILocation(line: 147, column: 29, scope: !615)
!623 = !DILocation(line: 147, column: 9, scope: !615)
!624 = !DILocation(line: 147, column: 15, scope: !615)
!625 = !DILocation(line: 147, column: 27, scope: !615)
!626 = !DILocation(line: 148, column: 9, scope: !615)
!627 = distinct !{!627, !598, !628, !547}
!628 = !DILocation(line: 149, column: 5, scope: !587)
!629 = !DILocation(line: 151, column: 12, scope: !587)
!630 = !DILocation(line: 151, column: 5, scope: !587)
!631 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !632, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!632 = !DISubroutineType(types: !633)
!633 = !{!6}
!634 = !DILocation(line: 158, column: 5, scope: !631)
!635 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !632, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!636 = !DILocation(line: 163, column: 5, scope: !635)
!637 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !632, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!638 = !DILocation(line: 168, column: 13, scope: !637)
!639 = !DILocation(line: 168, column: 20, scope: !637)
!640 = !DILocation(line: 168, column: 5, scope: !637)
!641 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !95, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!642 = !DILocation(line: 187, column: 16, scope: !641)
!643 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !95, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!644 = !DILocation(line: 188, column: 16, scope: !643)
!645 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !95, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!646 = !DILocation(line: 189, column: 16, scope: !645)
!647 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !95, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!648 = !DILocation(line: 190, column: 16, scope: !647)
!649 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !95, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!650 = !DILocation(line: 191, column: 16, scope: !649)
!651 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !95, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!652 = !DILocation(line: 192, column: 16, scope: !651)
!653 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !95, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!654 = !DILocation(line: 193, column: 16, scope: !653)
!655 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !95, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!656 = !DILocation(line: 194, column: 16, scope: !655)
!657 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !95, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!658 = !DILocation(line: 195, column: 16, scope: !657)
!659 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !95, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!660 = !DILocation(line: 198, column: 15, scope: !659)
!661 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !95, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!662 = !DILocation(line: 199, column: 15, scope: !661)
!663 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !95, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!664 = !DILocation(line: 200, column: 15, scope: !663)
!665 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !95, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!666 = !DILocation(line: 201, column: 15, scope: !665)
!667 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !95, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!668 = !DILocation(line: 202, column: 15, scope: !667)
!669 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !95, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!670 = !DILocation(line: 203, column: 15, scope: !669)
!671 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !95, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!672 = !DILocation(line: 204, column: 15, scope: !671)
!673 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !95, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!674 = !DILocation(line: 205, column: 15, scope: !673)
!675 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !95, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!676 = !DILocation(line: 206, column: 15, scope: !675)
