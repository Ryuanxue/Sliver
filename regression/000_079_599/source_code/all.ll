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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_32_bad() #0 !dbg !80 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %data20 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !85, metadata !DIExpression()), !dbg !86
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !86
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !87, metadata !DIExpression()), !dbg !88
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !88
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !89, metadata !DIExpression()), !dbg !93
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !93
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !93
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !94
  store i8* %arraydecay, i8** %data, align 8, !dbg !95
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !96, metadata !DIExpression()), !dbg !98
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !99
  %2 = load i8*, i8** %1, align 8, !dbg !100
  store i8* %2, i8** %data1, align 8, !dbg !98
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !101, metadata !DIExpression()), !dbg !106
  %3 = load i8*, i8** %data1, align 8, !dbg !107
  %call = call i64 @strlen(i8* %3) #8, !dbg !108
  store i64 %call, i64* %dataLen, align 8, !dbg !106
  %4 = load i64, i64* %dataLen, align 8, !dbg !109
  %sub = sub i64 100, %4, !dbg !111
  %cmp = icmp ugt i64 %sub, 1, !dbg !112
  br i1 %cmp, label %if.then, label %if.end19, !dbg !113

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %data1, align 8, !dbg !114
  %6 = load i64, i64* %dataLen, align 8, !dbg !117
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !118
  %7 = load i64, i64* %dataLen, align 8, !dbg !119
  %sub2 = sub i64 100, %7, !dbg !120
  %conv = trunc i64 %sub2 to i32, !dbg !121
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !122
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !123
  %cmp4 = icmp ne i8* %call3, null, !dbg !124
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !125

if.then6:                                         ; preds = %if.then
  %9 = load i8*, i8** %data1, align 8, !dbg !126
  %call7 = call i64 @strlen(i8* %9) #8, !dbg !128
  store i64 %call7, i64* %dataLen, align 8, !dbg !129
  %10 = load i64, i64* %dataLen, align 8, !dbg !130
  %cmp8 = icmp ugt i64 %10, 0, !dbg !132
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !133

land.lhs.true:                                    ; preds = %if.then6
  %11 = load i8*, i8** %data1, align 8, !dbg !134
  %12 = load i64, i64* %dataLen, align 8, !dbg !135
  %sub10 = sub i64 %12, 1, !dbg !136
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %sub10, !dbg !134
  %13 = load i8, i8* %arrayidx, align 1, !dbg !134
  %conv11 = sext i8 %13 to i32, !dbg !134
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !137
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !138

if.then14:                                        ; preds = %land.lhs.true
  %14 = load i8*, i8** %data1, align 8, !dbg !139
  %15 = load i64, i64* %dataLen, align 8, !dbg !141
  %sub15 = sub i64 %15, 1, !dbg !142
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %sub15, !dbg !139
  store i8 0, i8* %arrayidx16, align 1, !dbg !143
  br label %if.end, !dbg !144

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !145

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !146
  %16 = load i8*, i8** %data1, align 8, !dbg !148
  %17 = load i64, i64* %dataLen, align 8, !dbg !149
  %arrayidx17 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !148
  store i8 0, i8* %arrayidx17, align 1, !dbg !150
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !151

if.end19:                                         ; preds = %if.end18, %entry
  %18 = load i8*, i8** %data1, align 8, !dbg !152
  %19 = load i8**, i8*** %dataPtr1, align 8, !dbg !153
  store i8* %18, i8** %19, align 8, !dbg !154
  call void @llvm.dbg.declare(metadata i8** %data20, metadata !155, metadata !DIExpression()), !dbg !157
  %20 = load i8**, i8*** %dataPtr2, align 8, !dbg !158
  %21 = load i8*, i8** %20, align 8, !dbg !159
  store i8* %21, i8** %data20, align 8, !dbg !157
  %22 = load i8*, i8** %data20, align 8, !dbg !160
  %23 = load i8*, i8** %data20, align 8, !dbg !161
  call void (i8*, ...) @badVaSink(i8* %22, i8* %23), !dbg !162
  ret void, !dbg !163
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

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
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !179, metadata !DIExpression()), !dbg !180
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !180
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !181, metadata !DIExpression()), !dbg !182
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !182
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !183, metadata !DIExpression()), !dbg !184
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !184
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !184
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !185
  store i8* %arraydecay, i8** %data, align 8, !dbg !186
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !187, metadata !DIExpression()), !dbg !189
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !190
  %2 = load i8*, i8** %1, align 8, !dbg !191
  store i8* %2, i8** %data1, align 8, !dbg !189
  %3 = load i8*, i8** %data1, align 8, !dbg !192
  %call = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !193
  %4 = load i8*, i8** %data1, align 8, !dbg !194
  %5 = load i8**, i8*** %dataPtr1, align 8, !dbg !195
  store i8* %4, i8** %5, align 8, !dbg !196
  call void @llvm.dbg.declare(metadata i8** %data2, metadata !197, metadata !DIExpression()), !dbg !199
  %6 = load i8**, i8*** %dataPtr2, align 8, !dbg !200
  %7 = load i8*, i8** %6, align 8, !dbg !201
  store i8* %7, i8** %data2, align 8, !dbg !199
  %8 = load i8*, i8** %data2, align 8, !dbg !202
  %9 = load i8*, i8** %data2, align 8, !dbg !203
  call void (i8*, ...) @goodG2BVaSink(i8* %8, i8* %9), !dbg !204
  ret void, !dbg !205
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !206 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !207, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !209, metadata !DIExpression()), !dbg !211
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !212
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !212
  call void @llvm.va_start(i8* %arraydecay1), !dbg !212
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !213
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !214
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !215
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !215
  call void @llvm.va_end(i8* %arraydecay34), !dbg !215
  ret void, !dbg !216
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !217 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %data20 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !220, metadata !DIExpression()), !dbg !221
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !221
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !222, metadata !DIExpression()), !dbg !223
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !223
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !224, metadata !DIExpression()), !dbg !225
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !225
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !225
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !226
  store i8* %arraydecay, i8** %data, align 8, !dbg !227
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !228, metadata !DIExpression()), !dbg !230
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !231
  %2 = load i8*, i8** %1, align 8, !dbg !232
  store i8* %2, i8** %data1, align 8, !dbg !230
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !233, metadata !DIExpression()), !dbg !235
  %3 = load i8*, i8** %data1, align 8, !dbg !236
  %call = call i64 @strlen(i8* %3) #8, !dbg !237
  store i64 %call, i64* %dataLen, align 8, !dbg !235
  %4 = load i64, i64* %dataLen, align 8, !dbg !238
  %sub = sub i64 100, %4, !dbg !240
  %cmp = icmp ugt i64 %sub, 1, !dbg !241
  br i1 %cmp, label %if.then, label %if.end19, !dbg !242

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %data1, align 8, !dbg !243
  %6 = load i64, i64* %dataLen, align 8, !dbg !246
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !247
  %7 = load i64, i64* %dataLen, align 8, !dbg !248
  %sub2 = sub i64 100, %7, !dbg !249
  %conv = trunc i64 %sub2 to i32, !dbg !250
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !251
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !252
  %cmp4 = icmp ne i8* %call3, null, !dbg !253
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !254

if.then6:                                         ; preds = %if.then
  %9 = load i8*, i8** %data1, align 8, !dbg !255
  %call7 = call i64 @strlen(i8* %9) #8, !dbg !257
  store i64 %call7, i64* %dataLen, align 8, !dbg !258
  %10 = load i64, i64* %dataLen, align 8, !dbg !259
  %cmp8 = icmp ugt i64 %10, 0, !dbg !261
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !262

land.lhs.true:                                    ; preds = %if.then6
  %11 = load i8*, i8** %data1, align 8, !dbg !263
  %12 = load i64, i64* %dataLen, align 8, !dbg !264
  %sub10 = sub i64 %12, 1, !dbg !265
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %sub10, !dbg !263
  %13 = load i8, i8* %arrayidx, align 1, !dbg !263
  %conv11 = sext i8 %13 to i32, !dbg !263
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !266
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !267

if.then14:                                        ; preds = %land.lhs.true
  %14 = load i8*, i8** %data1, align 8, !dbg !268
  %15 = load i64, i64* %dataLen, align 8, !dbg !270
  %sub15 = sub i64 %15, 1, !dbg !271
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %sub15, !dbg !268
  store i8 0, i8* %arrayidx16, align 1, !dbg !272
  br label %if.end, !dbg !273

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !274

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !275
  %16 = load i8*, i8** %data1, align 8, !dbg !277
  %17 = load i64, i64* %dataLen, align 8, !dbg !278
  %arrayidx17 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !277
  store i8 0, i8* %arrayidx17, align 1, !dbg !279
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !280

if.end19:                                         ; preds = %if.end18, %entry
  %18 = load i8*, i8** %data1, align 8, !dbg !281
  %19 = load i8**, i8*** %dataPtr1, align 8, !dbg !282
  store i8* %18, i8** %19, align 8, !dbg !283
  call void @llvm.dbg.declare(metadata i8** %data20, metadata !284, metadata !DIExpression()), !dbg !286
  %20 = load i8**, i8*** %dataPtr2, align 8, !dbg !287
  %21 = load i8*, i8** %20, align 8, !dbg !288
  store i8* %21, i8** %data20, align 8, !dbg !286
  %22 = load i8*, i8** %data20, align 8, !dbg !289
  %23 = load i8*, i8** %data20, align 8, !dbg !290
  call void (i8*, ...) @goodB2GVaSink(i8* %22, i8* %23), !dbg !291
  ret void, !dbg !292
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_32_good() #0 !dbg !293 {
entry:
  call void @goodG2B(), !dbg !294
  call void @goodB2G(), !dbg !295
  ret void, !dbg !296
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !297 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !300, metadata !DIExpression()), !dbg !301
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !302
  %0 = load i8*, i8** %line.addr, align 8, !dbg !303
  %cmp = icmp ne i8* %0, null, !dbg !305
  br i1 %cmp, label %if.then, label %if.end, !dbg !306

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !307
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !309
  br label %if.end, !dbg !310

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !311
  ret void, !dbg !312
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !313 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !314, metadata !DIExpression()), !dbg !315
  %0 = load i8*, i8** %line.addr, align 8, !dbg !316
  %cmp = icmp ne i8* %0, null, !dbg !318
  br i1 %cmp, label %if.then, label %if.end, !dbg !319

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !320
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !322
  br label %if.end, !dbg !323

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !324
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !325 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = load i32*, i32** %line.addr, align 8, !dbg !332
  %cmp = icmp ne i32* %0, null, !dbg !334
  br i1 %cmp, label %if.then, label %if.end, !dbg !335

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !336
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !338
  br label %if.end, !dbg !339

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !340
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !341 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !344, metadata !DIExpression()), !dbg !345
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !346
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !347
  ret void, !dbg !348
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !349 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !353, metadata !DIExpression()), !dbg !354
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !355
  %conv = sext i16 %0 to i32, !dbg !355
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !356
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !358 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !362, metadata !DIExpression()), !dbg !363
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !364
  %conv = fpext float %0 to double, !dbg !364
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !365
  ret void, !dbg !366
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !367 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !371, metadata !DIExpression()), !dbg !372
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !373
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !374
  ret void, !dbg !375
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !376 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !386
  ret void, !dbg !387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !388 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !393
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !394
  ret void, !dbg !395
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !396 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !399, metadata !DIExpression()), !dbg !400
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !401
  %conv = sext i8 %0 to i32, !dbg !401
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !402
  ret void, !dbg !403
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !404 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !407, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !409, metadata !DIExpression()), !dbg !413
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !414
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !415
  store i32 %0, i32* %arrayidx, align 4, !dbg !416
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !417
  store i32 0, i32* %arrayidx1, align 4, !dbg !418
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !419
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !420
  ret void, !dbg !421
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !422 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !425, metadata !DIExpression()), !dbg !426
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !427
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !428
  ret void, !dbg !429
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !430 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !433, metadata !DIExpression()), !dbg !434
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !435
  %conv = zext i8 %0 to i32, !dbg !435
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !436
  ret void, !dbg !437
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !438 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !442, metadata !DIExpression()), !dbg !443
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !444
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !447 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !457, metadata !DIExpression()), !dbg !458
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !459
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !460
  %1 = load i32, i32* %intOne, align 4, !dbg !460
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !461
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !462
  %3 = load i32, i32* %intTwo, align 4, !dbg !462
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !463
  ret void, !dbg !464
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !465 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !469, metadata !DIExpression()), !dbg !470
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !471, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.declare(metadata i64* %i, metadata !473, metadata !DIExpression()), !dbg !474
  store i64 0, i64* %i, align 8, !dbg !475
  br label %for.cond, !dbg !477

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !478
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !480
  %cmp = icmp ult i64 %0, %1, !dbg !481
  br i1 %cmp, label %for.body, label %for.end, !dbg !482

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !483
  %3 = load i64, i64* %i, align 8, !dbg !485
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !483
  %4 = load i8, i8* %arrayidx, align 1, !dbg !483
  %conv = zext i8 %4 to i32, !dbg !483
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !486
  br label %for.inc, !dbg !487

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !488
  %inc = add i64 %5, 1, !dbg !488
  store i64 %inc, i64* %i, align 8, !dbg !488
  br label %for.cond, !dbg !489, !llvm.loop !490

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !493
  ret void, !dbg !494
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !495 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !498, metadata !DIExpression()), !dbg !499
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !500, metadata !DIExpression()), !dbg !501
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !502, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !504, metadata !DIExpression()), !dbg !505
  store i64 0, i64* %numWritten, align 8, !dbg !505
  br label %while.cond, !dbg !506

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !507
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !508
  %cmp = icmp ult i64 %0, %1, !dbg !509
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !510

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #10, !dbg !511
  %2 = load i16*, i16** %call, align 8, !dbg !511
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !511
  %4 = load i64, i64* %numWritten, align 8, !dbg !511
  %mul = mul i64 2, %4, !dbg !511
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !511
  %5 = load i8, i8* %arrayidx, align 1, !dbg !511
  %conv = sext i8 %5 to i32, !dbg !511
  %idxprom = sext i32 %conv to i64, !dbg !511
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !511
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !511
  %conv2 = zext i16 %6 to i32, !dbg !511
  %and = and i32 %conv2, 4096, !dbg !511
  %tobool = icmp ne i32 %and, 0, !dbg !511
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !512

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #10, !dbg !513
  %7 = load i16*, i16** %call3, align 8, !dbg !513
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !513
  %9 = load i64, i64* %numWritten, align 8, !dbg !513
  %mul4 = mul i64 2, %9, !dbg !513
  %add = add i64 %mul4, 1, !dbg !513
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !513
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !513
  %conv6 = sext i8 %10 to i32, !dbg !513
  %idxprom7 = sext i32 %conv6 to i64, !dbg !513
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !513
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !513
  %conv9 = zext i16 %11 to i32, !dbg !513
  %and10 = and i32 %conv9, 4096, !dbg !513
  %tobool11 = icmp ne i32 %and10, 0, !dbg !512
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !514
  br i1 %12, label %while.body, label %while.end, !dbg !506

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !515, metadata !DIExpression()), !dbg !517
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !518
  %14 = load i64, i64* %numWritten, align 8, !dbg !519
  %mul12 = mul i64 2, %14, !dbg !520
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !518
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !521
  %15 = load i32, i32* %byte, align 4, !dbg !522
  %conv15 = trunc i32 %15 to i8, !dbg !523
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !524
  %17 = load i64, i64* %numWritten, align 8, !dbg !525
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !524
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !526
  %18 = load i64, i64* %numWritten, align 8, !dbg !527
  %inc = add i64 %18, 1, !dbg !527
  store i64 %inc, i64* %numWritten, align 8, !dbg !527
  br label %while.cond, !dbg !506, !llvm.loop !528

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !530
  ret i64 %19, !dbg !531
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !532 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !535, metadata !DIExpression()), !dbg !536
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !537, metadata !DIExpression()), !dbg !538
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !539, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !541, metadata !DIExpression()), !dbg !542
  store i64 0, i64* %numWritten, align 8, !dbg !542
  br label %while.cond, !dbg !543

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !544
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !545
  %cmp = icmp ult i64 %0, %1, !dbg !546
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !547

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !548
  %3 = load i64, i64* %numWritten, align 8, !dbg !549
  %mul = mul i64 2, %3, !dbg !550
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !548
  %4 = load i32, i32* %arrayidx, align 4, !dbg !548
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !551
  %tobool = icmp ne i32 %call, 0, !dbg !551
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !552

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !553
  %6 = load i64, i64* %numWritten, align 8, !dbg !554
  %mul1 = mul i64 2, %6, !dbg !555
  %add = add i64 %mul1, 1, !dbg !556
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !553
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !553
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !557
  %tobool4 = icmp ne i32 %call3, 0, !dbg !552
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !558
  br i1 %8, label %while.body, label %while.end, !dbg !543

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !559, metadata !DIExpression()), !dbg !561
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !562
  %10 = load i64, i64* %numWritten, align 8, !dbg !563
  %mul5 = mul i64 2, %10, !dbg !564
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !562
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !565
  %11 = load i32, i32* %byte, align 4, !dbg !566
  %conv = trunc i32 %11 to i8, !dbg !567
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !568
  %13 = load i64, i64* %numWritten, align 8, !dbg !569
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !568
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !570
  %14 = load i64, i64* %numWritten, align 8, !dbg !571
  %inc = add i64 %14, 1, !dbg !571
  store i64 %inc, i64* %numWritten, align 8, !dbg !571
  br label %while.cond, !dbg !543, !llvm.loop !572

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !574
  ret i64 %15, !dbg !575
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !576 {
entry:
  ret i32 1, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !580 {
entry:
  ret i32 0, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !582 {
entry:
  %call = call i32 @rand() #9, !dbg !583
  %rem = srem i32 %call, 2, !dbg !584
  ret i32 %rem, !dbg !585
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !586 {
entry:
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !588 {
entry:
  ret void, !dbg !589
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !590 {
entry:
  ret void, !dbg !591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !592 {
entry:
  ret void, !dbg !593
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !594 {
entry:
  ret void, !dbg !595
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !596 {
entry:
  ret void, !dbg !597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !598 {
entry:
  ret void, !dbg !599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !600 {
entry:
  ret void, !dbg !601
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !602 {
entry:
  ret void, !dbg !603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !604 {
entry:
  ret void, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !606 {
entry:
  ret void, !dbg !607
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !608 {
entry:
  ret void, !dbg !609
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !610 {
entry:
  ret void, !dbg !611
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !612 {
entry:
  ret void, !dbg !613
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !614 {
entry:
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !616 {
entry:
  ret void, !dbg !617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !618 {
entry:
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !620 {
entry:
  ret void, !dbg !621
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_599/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_vprintf_32.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_599/source_code")
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
!80 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_32_bad", scope: !45, file: !45, line: 39, type: !81, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!81 = !DISubroutineType(types: !82)
!82 = !{null}
!83 = !DILocalVariable(name: "data", scope: !80, file: !45, line: 41, type: !42)
!84 = !DILocation(line: 41, column: 12, scope: !80)
!85 = !DILocalVariable(name: "dataPtr1", scope: !80, file: !45, line: 42, type: !41)
!86 = !DILocation(line: 42, column: 13, scope: !80)
!87 = !DILocalVariable(name: "dataPtr2", scope: !80, file: !45, line: 43, type: !41)
!88 = !DILocation(line: 43, column: 13, scope: !80)
!89 = !DILocalVariable(name: "dataBuffer", scope: !80, file: !45, line: 44, type: !90)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 100)
!93 = !DILocation(line: 44, column: 10, scope: !80)
!94 = !DILocation(line: 45, column: 12, scope: !80)
!95 = !DILocation(line: 45, column: 10, scope: !80)
!96 = !DILocalVariable(name: "data", scope: !97, file: !45, line: 47, type: !42)
!97 = distinct !DILexicalBlock(scope: !80, file: !45, line: 46, column: 5)
!98 = !DILocation(line: 47, column: 16, scope: !97)
!99 = !DILocation(line: 47, column: 24, scope: !97)
!100 = !DILocation(line: 47, column: 23, scope: !97)
!101 = !DILocalVariable(name: "dataLen", scope: !102, file: !45, line: 50, type: !103)
!102 = distinct !DILexicalBlock(scope: !97, file: !45, line: 48, column: 9)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 46, baseType: !105)
!104 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!105 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!106 = !DILocation(line: 50, column: 20, scope: !102)
!107 = !DILocation(line: 50, column: 37, scope: !102)
!108 = !DILocation(line: 50, column: 30, scope: !102)
!109 = !DILocation(line: 52, column: 21, scope: !110)
!110 = distinct !DILexicalBlock(scope: !102, file: !45, line: 52, column: 17)
!111 = !DILocation(line: 52, column: 20, scope: !110)
!112 = !DILocation(line: 52, column: 29, scope: !110)
!113 = !DILocation(line: 52, column: 17, scope: !102)
!114 = !DILocation(line: 55, column: 27, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !45, line: 55, column: 21)
!116 = distinct !DILexicalBlock(scope: !110, file: !45, line: 53, column: 13)
!117 = !DILocation(line: 55, column: 32, scope: !115)
!118 = !DILocation(line: 55, column: 31, scope: !115)
!119 = !DILocation(line: 55, column: 51, scope: !115)
!120 = !DILocation(line: 55, column: 50, scope: !115)
!121 = !DILocation(line: 55, column: 41, scope: !115)
!122 = !DILocation(line: 55, column: 61, scope: !115)
!123 = !DILocation(line: 55, column: 21, scope: !115)
!124 = !DILocation(line: 55, column: 68, scope: !115)
!125 = !DILocation(line: 55, column: 21, scope: !116)
!126 = !DILocation(line: 59, column: 38, scope: !127)
!127 = distinct !DILexicalBlock(scope: !115, file: !45, line: 56, column: 17)
!128 = !DILocation(line: 59, column: 31, scope: !127)
!129 = !DILocation(line: 59, column: 29, scope: !127)
!130 = !DILocation(line: 60, column: 25, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !45, line: 60, column: 25)
!132 = !DILocation(line: 60, column: 33, scope: !131)
!133 = !DILocation(line: 60, column: 37, scope: !131)
!134 = !DILocation(line: 60, column: 40, scope: !131)
!135 = !DILocation(line: 60, column: 45, scope: !131)
!136 = !DILocation(line: 60, column: 52, scope: !131)
!137 = !DILocation(line: 60, column: 56, scope: !131)
!138 = !DILocation(line: 60, column: 25, scope: !127)
!139 = !DILocation(line: 62, column: 25, scope: !140)
!140 = distinct !DILexicalBlock(scope: !131, file: !45, line: 61, column: 21)
!141 = !DILocation(line: 62, column: 30, scope: !140)
!142 = !DILocation(line: 62, column: 37, scope: !140)
!143 = !DILocation(line: 62, column: 41, scope: !140)
!144 = !DILocation(line: 63, column: 21, scope: !140)
!145 = !DILocation(line: 64, column: 17, scope: !127)
!146 = !DILocation(line: 67, column: 21, scope: !147)
!147 = distinct !DILexicalBlock(scope: !115, file: !45, line: 66, column: 17)
!148 = !DILocation(line: 69, column: 21, scope: !147)
!149 = !DILocation(line: 69, column: 26, scope: !147)
!150 = !DILocation(line: 69, column: 35, scope: !147)
!151 = !DILocation(line: 71, column: 13, scope: !116)
!152 = !DILocation(line: 73, column: 21, scope: !97)
!153 = !DILocation(line: 73, column: 10, scope: !97)
!154 = !DILocation(line: 73, column: 19, scope: !97)
!155 = !DILocalVariable(name: "data", scope: !156, file: !45, line: 76, type: !42)
!156 = distinct !DILexicalBlock(scope: !80, file: !45, line: 75, column: 5)
!157 = !DILocation(line: 76, column: 16, scope: !156)
!158 = !DILocation(line: 76, column: 24, scope: !156)
!159 = !DILocation(line: 76, column: 23, scope: !156)
!160 = !DILocation(line: 77, column: 19, scope: !156)
!161 = !DILocation(line: 77, column: 25, scope: !156)
!162 = !DILocation(line: 77, column: 9, scope: !156)
!163 = !DILocation(line: 79, column: 1, scope: !80)
!164 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !45, file: !45, line: 86, type: !53, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!165 = !DILocalVariable(name: "data", arg: 1, scope: !164, file: !45, line: 86, type: !42)
!166 = !DILocation(line: 86, column: 27, scope: !164)
!167 = !DILocalVariable(name: "args", scope: !168, file: !45, line: 89, type: !59)
!168 = distinct !DILexicalBlock(scope: !164, file: !45, line: 88, column: 5)
!169 = !DILocation(line: 89, column: 17, scope: !168)
!170 = !DILocation(line: 90, column: 9, scope: !168)
!171 = !DILocation(line: 92, column: 17, scope: !168)
!172 = !DILocation(line: 92, column: 23, scope: !168)
!173 = !DILocation(line: 92, column: 9, scope: !168)
!174 = !DILocation(line: 93, column: 9, scope: !168)
!175 = !DILocation(line: 95, column: 1, scope: !164)
!176 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 97, type: !81, scopeLine: 98, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!177 = !DILocalVariable(name: "data", scope: !176, file: !45, line: 99, type: !42)
!178 = !DILocation(line: 99, column: 12, scope: !176)
!179 = !DILocalVariable(name: "dataPtr1", scope: !176, file: !45, line: 100, type: !41)
!180 = !DILocation(line: 100, column: 13, scope: !176)
!181 = !DILocalVariable(name: "dataPtr2", scope: !176, file: !45, line: 101, type: !41)
!182 = !DILocation(line: 101, column: 13, scope: !176)
!183 = !DILocalVariable(name: "dataBuffer", scope: !176, file: !45, line: 102, type: !90)
!184 = !DILocation(line: 102, column: 10, scope: !176)
!185 = !DILocation(line: 103, column: 12, scope: !176)
!186 = !DILocation(line: 103, column: 10, scope: !176)
!187 = !DILocalVariable(name: "data", scope: !188, file: !45, line: 105, type: !42)
!188 = distinct !DILexicalBlock(scope: !176, file: !45, line: 104, column: 5)
!189 = !DILocation(line: 105, column: 16, scope: !188)
!190 = !DILocation(line: 105, column: 24, scope: !188)
!191 = !DILocation(line: 105, column: 23, scope: !188)
!192 = !DILocation(line: 107, column: 16, scope: !188)
!193 = !DILocation(line: 107, column: 9, scope: !188)
!194 = !DILocation(line: 108, column: 21, scope: !188)
!195 = !DILocation(line: 108, column: 10, scope: !188)
!196 = !DILocation(line: 108, column: 19, scope: !188)
!197 = !DILocalVariable(name: "data", scope: !198, file: !45, line: 111, type: !42)
!198 = distinct !DILexicalBlock(scope: !176, file: !45, line: 110, column: 5)
!199 = !DILocation(line: 111, column: 16, scope: !198)
!200 = !DILocation(line: 111, column: 24, scope: !198)
!201 = !DILocation(line: 111, column: 23, scope: !198)
!202 = !DILocation(line: 112, column: 23, scope: !198)
!203 = !DILocation(line: 112, column: 29, scope: !198)
!204 = !DILocation(line: 112, column: 9, scope: !198)
!205 = !DILocation(line: 114, column: 1, scope: !176)
!206 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !45, file: !45, line: 117, type: !53, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!207 = !DILocalVariable(name: "data", arg: 1, scope: !206, file: !45, line: 117, type: !42)
!208 = !DILocation(line: 117, column: 27, scope: !206)
!209 = !DILocalVariable(name: "args", scope: !210, file: !45, line: 120, type: !59)
!210 = distinct !DILexicalBlock(scope: !206, file: !45, line: 119, column: 5)
!211 = !DILocation(line: 120, column: 17, scope: !210)
!212 = !DILocation(line: 121, column: 9, scope: !210)
!213 = !DILocation(line: 123, column: 23, scope: !210)
!214 = !DILocation(line: 123, column: 9, scope: !210)
!215 = !DILocation(line: 124, column: 9, scope: !210)
!216 = !DILocation(line: 126, column: 1, scope: !206)
!217 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 128, type: !81, scopeLine: 129, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!218 = !DILocalVariable(name: "data", scope: !217, file: !45, line: 130, type: !42)
!219 = !DILocation(line: 130, column: 12, scope: !217)
!220 = !DILocalVariable(name: "dataPtr1", scope: !217, file: !45, line: 131, type: !41)
!221 = !DILocation(line: 131, column: 13, scope: !217)
!222 = !DILocalVariable(name: "dataPtr2", scope: !217, file: !45, line: 132, type: !41)
!223 = !DILocation(line: 132, column: 13, scope: !217)
!224 = !DILocalVariable(name: "dataBuffer", scope: !217, file: !45, line: 133, type: !90)
!225 = !DILocation(line: 133, column: 10, scope: !217)
!226 = !DILocation(line: 134, column: 12, scope: !217)
!227 = !DILocation(line: 134, column: 10, scope: !217)
!228 = !DILocalVariable(name: "data", scope: !229, file: !45, line: 136, type: !42)
!229 = distinct !DILexicalBlock(scope: !217, file: !45, line: 135, column: 5)
!230 = !DILocation(line: 136, column: 16, scope: !229)
!231 = !DILocation(line: 136, column: 24, scope: !229)
!232 = !DILocation(line: 136, column: 23, scope: !229)
!233 = !DILocalVariable(name: "dataLen", scope: !234, file: !45, line: 139, type: !103)
!234 = distinct !DILexicalBlock(scope: !229, file: !45, line: 137, column: 9)
!235 = !DILocation(line: 139, column: 20, scope: !234)
!236 = !DILocation(line: 139, column: 37, scope: !234)
!237 = !DILocation(line: 139, column: 30, scope: !234)
!238 = !DILocation(line: 141, column: 21, scope: !239)
!239 = distinct !DILexicalBlock(scope: !234, file: !45, line: 141, column: 17)
!240 = !DILocation(line: 141, column: 20, scope: !239)
!241 = !DILocation(line: 141, column: 29, scope: !239)
!242 = !DILocation(line: 141, column: 17, scope: !234)
!243 = !DILocation(line: 144, column: 27, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !45, line: 144, column: 21)
!245 = distinct !DILexicalBlock(scope: !239, file: !45, line: 142, column: 13)
!246 = !DILocation(line: 144, column: 32, scope: !244)
!247 = !DILocation(line: 144, column: 31, scope: !244)
!248 = !DILocation(line: 144, column: 51, scope: !244)
!249 = !DILocation(line: 144, column: 50, scope: !244)
!250 = !DILocation(line: 144, column: 41, scope: !244)
!251 = !DILocation(line: 144, column: 61, scope: !244)
!252 = !DILocation(line: 144, column: 21, scope: !244)
!253 = !DILocation(line: 144, column: 68, scope: !244)
!254 = !DILocation(line: 144, column: 21, scope: !245)
!255 = !DILocation(line: 148, column: 38, scope: !256)
!256 = distinct !DILexicalBlock(scope: !244, file: !45, line: 145, column: 17)
!257 = !DILocation(line: 148, column: 31, scope: !256)
!258 = !DILocation(line: 148, column: 29, scope: !256)
!259 = !DILocation(line: 149, column: 25, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !45, line: 149, column: 25)
!261 = !DILocation(line: 149, column: 33, scope: !260)
!262 = !DILocation(line: 149, column: 37, scope: !260)
!263 = !DILocation(line: 149, column: 40, scope: !260)
!264 = !DILocation(line: 149, column: 45, scope: !260)
!265 = !DILocation(line: 149, column: 52, scope: !260)
!266 = !DILocation(line: 149, column: 56, scope: !260)
!267 = !DILocation(line: 149, column: 25, scope: !256)
!268 = !DILocation(line: 151, column: 25, scope: !269)
!269 = distinct !DILexicalBlock(scope: !260, file: !45, line: 150, column: 21)
!270 = !DILocation(line: 151, column: 30, scope: !269)
!271 = !DILocation(line: 151, column: 37, scope: !269)
!272 = !DILocation(line: 151, column: 41, scope: !269)
!273 = !DILocation(line: 152, column: 21, scope: !269)
!274 = !DILocation(line: 153, column: 17, scope: !256)
!275 = !DILocation(line: 156, column: 21, scope: !276)
!276 = distinct !DILexicalBlock(scope: !244, file: !45, line: 155, column: 17)
!277 = !DILocation(line: 158, column: 21, scope: !276)
!278 = !DILocation(line: 158, column: 26, scope: !276)
!279 = !DILocation(line: 158, column: 35, scope: !276)
!280 = !DILocation(line: 160, column: 13, scope: !245)
!281 = !DILocation(line: 162, column: 21, scope: !229)
!282 = !DILocation(line: 162, column: 10, scope: !229)
!283 = !DILocation(line: 162, column: 19, scope: !229)
!284 = !DILocalVariable(name: "data", scope: !285, file: !45, line: 165, type: !42)
!285 = distinct !DILexicalBlock(scope: !217, file: !45, line: 164, column: 5)
!286 = !DILocation(line: 165, column: 16, scope: !285)
!287 = !DILocation(line: 165, column: 24, scope: !285)
!288 = !DILocation(line: 165, column: 23, scope: !285)
!289 = !DILocation(line: 166, column: 23, scope: !285)
!290 = !DILocation(line: 166, column: 29, scope: !285)
!291 = !DILocation(line: 166, column: 9, scope: !285)
!292 = !DILocation(line: 168, column: 1, scope: !217)
!293 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_32_good", scope: !45, file: !45, line: 170, type: !81, scopeLine: 171, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!294 = !DILocation(line: 172, column: 5, scope: !293)
!295 = !DILocation(line: 173, column: 5, scope: !293)
!296 = !DILocation(line: 174, column: 1, scope: !293)
!297 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !298, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !42}
!300 = !DILocalVariable(name: "line", arg: 1, scope: !297, file: !3, line: 11, type: !42)
!301 = !DILocation(line: 11, column: 25, scope: !297)
!302 = !DILocation(line: 13, column: 1, scope: !297)
!303 = !DILocation(line: 14, column: 8, scope: !304)
!304 = distinct !DILexicalBlock(scope: !297, file: !3, line: 14, column: 8)
!305 = !DILocation(line: 14, column: 13, scope: !304)
!306 = !DILocation(line: 14, column: 8, scope: !297)
!307 = !DILocation(line: 16, column: 24, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !3, line: 15, column: 5)
!309 = !DILocation(line: 16, column: 9, scope: !308)
!310 = !DILocation(line: 17, column: 5, scope: !308)
!311 = !DILocation(line: 18, column: 5, scope: !297)
!312 = !DILocation(line: 19, column: 1, scope: !297)
!313 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !298, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!314 = !DILocalVariable(name: "line", arg: 1, scope: !313, file: !3, line: 20, type: !42)
!315 = !DILocation(line: 20, column: 29, scope: !313)
!316 = !DILocation(line: 22, column: 8, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !3, line: 22, column: 8)
!318 = !DILocation(line: 22, column: 13, scope: !317)
!319 = !DILocation(line: 22, column: 8, scope: !313)
!320 = !DILocation(line: 24, column: 24, scope: !321)
!321 = distinct !DILexicalBlock(scope: !317, file: !3, line: 23, column: 5)
!322 = !DILocation(line: 24, column: 9, scope: !321)
!323 = !DILocation(line: 25, column: 5, scope: !321)
!324 = !DILocation(line: 26, column: 1, scope: !313)
!325 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !326, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !104, line: 74, baseType: !23)
!330 = !DILocalVariable(name: "line", arg: 1, scope: !325, file: !3, line: 27, type: !328)
!331 = !DILocation(line: 27, column: 29, scope: !325)
!332 = !DILocation(line: 29, column: 8, scope: !333)
!333 = distinct !DILexicalBlock(scope: !325, file: !3, line: 29, column: 8)
!334 = !DILocation(line: 29, column: 13, scope: !333)
!335 = !DILocation(line: 29, column: 8, scope: !325)
!336 = !DILocation(line: 31, column: 27, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !3, line: 30, column: 5)
!338 = !DILocation(line: 31, column: 9, scope: !337)
!339 = !DILocation(line: 32, column: 5, scope: !337)
!340 = !DILocation(line: 33, column: 1, scope: !325)
!341 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !342, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !23}
!344 = !DILocalVariable(name: "intNumber", arg: 1, scope: !341, file: !3, line: 35, type: !23)
!345 = !DILocation(line: 35, column: 24, scope: !341)
!346 = !DILocation(line: 37, column: 20, scope: !341)
!347 = !DILocation(line: 37, column: 5, scope: !341)
!348 = !DILocation(line: 38, column: 1, scope: !341)
!349 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !350, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !352}
!352 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!353 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !349, file: !3, line: 40, type: !352)
!354 = !DILocation(line: 40, column: 28, scope: !349)
!355 = !DILocation(line: 42, column: 21, scope: !349)
!356 = !DILocation(line: 42, column: 5, scope: !349)
!357 = !DILocation(line: 43, column: 1, scope: !349)
!358 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !359, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !361}
!361 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!362 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !358, file: !3, line: 45, type: !361)
!363 = !DILocation(line: 45, column: 28, scope: !358)
!364 = !DILocation(line: 47, column: 20, scope: !358)
!365 = !DILocation(line: 47, column: 5, scope: !358)
!366 = !DILocation(line: 48, column: 1, scope: !358)
!367 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !368, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !370}
!370 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!371 = !DILocalVariable(name: "longNumber", arg: 1, scope: !367, file: !3, line: 50, type: !370)
!372 = !DILocation(line: 50, column: 26, scope: !367)
!373 = !DILocation(line: 52, column: 21, scope: !367)
!374 = !DILocation(line: 52, column: 5, scope: !367)
!375 = !DILocation(line: 53, column: 1, scope: !367)
!376 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !377, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !380, line: 27, baseType: !381)
!380 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !382, line: 44, baseType: !370)
!382 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!383 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !376, file: !3, line: 55, type: !379)
!384 = !DILocation(line: 55, column: 33, scope: !376)
!385 = !DILocation(line: 57, column: 29, scope: !376)
!386 = !DILocation(line: 57, column: 5, scope: !376)
!387 = !DILocation(line: 58, column: 1, scope: !376)
!388 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !389, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !103}
!391 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !388, file: !3, line: 60, type: !103)
!392 = !DILocation(line: 60, column: 29, scope: !388)
!393 = !DILocation(line: 62, column: 21, scope: !388)
!394 = !DILocation(line: 62, column: 5, scope: !388)
!395 = !DILocation(line: 63, column: 1, scope: !388)
!396 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !397, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !43}
!399 = !DILocalVariable(name: "charHex", arg: 1, scope: !396, file: !3, line: 65, type: !43)
!400 = !DILocation(line: 65, column: 29, scope: !396)
!401 = !DILocation(line: 67, column: 22, scope: !396)
!402 = !DILocation(line: 67, column: 5, scope: !396)
!403 = !DILocation(line: 68, column: 1, scope: !396)
!404 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !405, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !329}
!407 = !DILocalVariable(name: "wideChar", arg: 1, scope: !404, file: !3, line: 70, type: !329)
!408 = !DILocation(line: 70, column: 29, scope: !404)
!409 = !DILocalVariable(name: "s", scope: !404, file: !3, line: 74, type: !410)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 64, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 2)
!413 = !DILocation(line: 74, column: 13, scope: !404)
!414 = !DILocation(line: 75, column: 16, scope: !404)
!415 = !DILocation(line: 75, column: 9, scope: !404)
!416 = !DILocation(line: 75, column: 14, scope: !404)
!417 = !DILocation(line: 76, column: 9, scope: !404)
!418 = !DILocation(line: 76, column: 14, scope: !404)
!419 = !DILocation(line: 77, column: 21, scope: !404)
!420 = !DILocation(line: 77, column: 5, scope: !404)
!421 = !DILocation(line: 78, column: 1, scope: !404)
!422 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !423, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !7}
!425 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !422, file: !3, line: 80, type: !7)
!426 = !DILocation(line: 80, column: 33, scope: !422)
!427 = !DILocation(line: 82, column: 20, scope: !422)
!428 = !DILocation(line: 82, column: 5, scope: !422)
!429 = !DILocation(line: 83, column: 1, scope: !422)
!430 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !431, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !25}
!433 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !430, file: !3, line: 85, type: !25)
!434 = !DILocation(line: 85, column: 45, scope: !430)
!435 = !DILocation(line: 87, column: 22, scope: !430)
!436 = !DILocation(line: 87, column: 5, scope: !430)
!437 = !DILocation(line: 88, column: 1, scope: !430)
!438 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !439, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !441}
!441 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!442 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !438, file: !3, line: 90, type: !441)
!443 = !DILocation(line: 90, column: 29, scope: !438)
!444 = !DILocation(line: 92, column: 20, scope: !438)
!445 = !DILocation(line: 92, column: 5, scope: !438)
!446 = !DILocation(line: 93, column: 1, scope: !438)
!447 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !448, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !452, line: 100, baseType: !453)
!452 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_599/source_code")
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !452, line: 96, size: 64, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !453, file: !452, line: 98, baseType: !23, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !453, file: !452, line: 99, baseType: !23, size: 32, offset: 32)
!457 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !447, file: !3, line: 95, type: !450)
!458 = !DILocation(line: 95, column: 40, scope: !447)
!459 = !DILocation(line: 97, column: 26, scope: !447)
!460 = !DILocation(line: 97, column: 47, scope: !447)
!461 = !DILocation(line: 97, column: 55, scope: !447)
!462 = !DILocation(line: 97, column: 76, scope: !447)
!463 = !DILocation(line: 97, column: 5, scope: !447)
!464 = !DILocation(line: 98, column: 1, scope: !447)
!465 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !466, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !468, !103}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!469 = !DILocalVariable(name: "bytes", arg: 1, scope: !465, file: !3, line: 100, type: !468)
!470 = !DILocation(line: 100, column: 38, scope: !465)
!471 = !DILocalVariable(name: "numBytes", arg: 2, scope: !465, file: !3, line: 100, type: !103)
!472 = !DILocation(line: 100, column: 52, scope: !465)
!473 = !DILocalVariable(name: "i", scope: !465, file: !3, line: 102, type: !103)
!474 = !DILocation(line: 102, column: 12, scope: !465)
!475 = !DILocation(line: 103, column: 12, scope: !476)
!476 = distinct !DILexicalBlock(scope: !465, file: !3, line: 103, column: 5)
!477 = !DILocation(line: 103, column: 10, scope: !476)
!478 = !DILocation(line: 103, column: 17, scope: !479)
!479 = distinct !DILexicalBlock(scope: !476, file: !3, line: 103, column: 5)
!480 = !DILocation(line: 103, column: 21, scope: !479)
!481 = !DILocation(line: 103, column: 19, scope: !479)
!482 = !DILocation(line: 103, column: 5, scope: !476)
!483 = !DILocation(line: 105, column: 24, scope: !484)
!484 = distinct !DILexicalBlock(scope: !479, file: !3, line: 104, column: 5)
!485 = !DILocation(line: 105, column: 30, scope: !484)
!486 = !DILocation(line: 105, column: 9, scope: !484)
!487 = !DILocation(line: 106, column: 5, scope: !484)
!488 = !DILocation(line: 103, column: 31, scope: !479)
!489 = !DILocation(line: 103, column: 5, scope: !479)
!490 = distinct !{!490, !482, !491, !492}
!491 = !DILocation(line: 106, column: 5, scope: !476)
!492 = !{!"llvm.loop.mustprogress"}
!493 = !DILocation(line: 107, column: 5, scope: !465)
!494 = !DILocation(line: 108, column: 1, scope: !465)
!495 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !496, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!496 = !DISubroutineType(types: !497)
!497 = !{!103, !468, !103, !42}
!498 = !DILocalVariable(name: "bytes", arg: 1, scope: !495, file: !3, line: 113, type: !468)
!499 = !DILocation(line: 113, column: 39, scope: !495)
!500 = !DILocalVariable(name: "numBytes", arg: 2, scope: !495, file: !3, line: 113, type: !103)
!501 = !DILocation(line: 113, column: 53, scope: !495)
!502 = !DILocalVariable(name: "hex", arg: 3, scope: !495, file: !3, line: 113, type: !42)
!503 = !DILocation(line: 113, column: 71, scope: !495)
!504 = !DILocalVariable(name: "numWritten", scope: !495, file: !3, line: 115, type: !103)
!505 = !DILocation(line: 115, column: 12, scope: !495)
!506 = !DILocation(line: 121, column: 5, scope: !495)
!507 = !DILocation(line: 121, column: 12, scope: !495)
!508 = !DILocation(line: 121, column: 25, scope: !495)
!509 = !DILocation(line: 121, column: 23, scope: !495)
!510 = !DILocation(line: 121, column: 34, scope: !495)
!511 = !DILocation(line: 121, column: 37, scope: !495)
!512 = !DILocation(line: 121, column: 67, scope: !495)
!513 = !DILocation(line: 121, column: 70, scope: !495)
!514 = !DILocation(line: 0, scope: !495)
!515 = !DILocalVariable(name: "byte", scope: !516, file: !3, line: 123, type: !23)
!516 = distinct !DILexicalBlock(scope: !495, file: !3, line: 122, column: 5)
!517 = !DILocation(line: 123, column: 13, scope: !516)
!518 = !DILocation(line: 124, column: 17, scope: !516)
!519 = !DILocation(line: 124, column: 25, scope: !516)
!520 = !DILocation(line: 124, column: 23, scope: !516)
!521 = !DILocation(line: 124, column: 9, scope: !516)
!522 = !DILocation(line: 125, column: 45, scope: !516)
!523 = !DILocation(line: 125, column: 29, scope: !516)
!524 = !DILocation(line: 125, column: 9, scope: !516)
!525 = !DILocation(line: 125, column: 15, scope: !516)
!526 = !DILocation(line: 125, column: 27, scope: !516)
!527 = !DILocation(line: 126, column: 9, scope: !516)
!528 = distinct !{!528, !506, !529, !492}
!529 = !DILocation(line: 127, column: 5, scope: !495)
!530 = !DILocation(line: 129, column: 12, scope: !495)
!531 = !DILocation(line: 129, column: 5, scope: !495)
!532 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !533, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!533 = !DISubroutineType(types: !534)
!534 = !{!103, !468, !103, !328}
!535 = !DILocalVariable(name: "bytes", arg: 1, scope: !532, file: !3, line: 135, type: !468)
!536 = !DILocation(line: 135, column: 41, scope: !532)
!537 = !DILocalVariable(name: "numBytes", arg: 2, scope: !532, file: !3, line: 135, type: !103)
!538 = !DILocation(line: 135, column: 55, scope: !532)
!539 = !DILocalVariable(name: "hex", arg: 3, scope: !532, file: !3, line: 135, type: !328)
!540 = !DILocation(line: 135, column: 76, scope: !532)
!541 = !DILocalVariable(name: "numWritten", scope: !532, file: !3, line: 137, type: !103)
!542 = !DILocation(line: 137, column: 12, scope: !532)
!543 = !DILocation(line: 143, column: 5, scope: !532)
!544 = !DILocation(line: 143, column: 12, scope: !532)
!545 = !DILocation(line: 143, column: 25, scope: !532)
!546 = !DILocation(line: 143, column: 23, scope: !532)
!547 = !DILocation(line: 143, column: 34, scope: !532)
!548 = !DILocation(line: 143, column: 47, scope: !532)
!549 = !DILocation(line: 143, column: 55, scope: !532)
!550 = !DILocation(line: 143, column: 53, scope: !532)
!551 = !DILocation(line: 143, column: 37, scope: !532)
!552 = !DILocation(line: 143, column: 68, scope: !532)
!553 = !DILocation(line: 143, column: 81, scope: !532)
!554 = !DILocation(line: 143, column: 89, scope: !532)
!555 = !DILocation(line: 143, column: 87, scope: !532)
!556 = !DILocation(line: 143, column: 100, scope: !532)
!557 = !DILocation(line: 143, column: 71, scope: !532)
!558 = !DILocation(line: 0, scope: !532)
!559 = !DILocalVariable(name: "byte", scope: !560, file: !3, line: 145, type: !23)
!560 = distinct !DILexicalBlock(scope: !532, file: !3, line: 144, column: 5)
!561 = !DILocation(line: 145, column: 13, scope: !560)
!562 = !DILocation(line: 146, column: 18, scope: !560)
!563 = !DILocation(line: 146, column: 26, scope: !560)
!564 = !DILocation(line: 146, column: 24, scope: !560)
!565 = !DILocation(line: 146, column: 9, scope: !560)
!566 = !DILocation(line: 147, column: 45, scope: !560)
!567 = !DILocation(line: 147, column: 29, scope: !560)
!568 = !DILocation(line: 147, column: 9, scope: !560)
!569 = !DILocation(line: 147, column: 15, scope: !560)
!570 = !DILocation(line: 147, column: 27, scope: !560)
!571 = !DILocation(line: 148, column: 9, scope: !560)
!572 = distinct !{!572, !543, !573, !492}
!573 = !DILocation(line: 149, column: 5, scope: !532)
!574 = !DILocation(line: 151, column: 12, scope: !532)
!575 = !DILocation(line: 151, column: 5, scope: !532)
!576 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !577, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!577 = !DISubroutineType(types: !578)
!578 = !{!23}
!579 = !DILocation(line: 158, column: 5, scope: !576)
!580 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !577, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!581 = !DILocation(line: 163, column: 5, scope: !580)
!582 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !577, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!583 = !DILocation(line: 168, column: 13, scope: !582)
!584 = !DILocation(line: 168, column: 20, scope: !582)
!585 = !DILocation(line: 168, column: 5, scope: !582)
!586 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !81, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!587 = !DILocation(line: 187, column: 16, scope: !586)
!588 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !81, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!589 = !DILocation(line: 188, column: 16, scope: !588)
!590 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !81, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!591 = !DILocation(line: 189, column: 16, scope: !590)
!592 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !81, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!593 = !DILocation(line: 190, column: 16, scope: !592)
!594 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !81, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!595 = !DILocation(line: 191, column: 16, scope: !594)
!596 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !81, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!597 = !DILocation(line: 192, column: 16, scope: !596)
!598 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !81, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!599 = !DILocation(line: 193, column: 16, scope: !598)
!600 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !81, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!601 = !DILocation(line: 194, column: 16, scope: !600)
!602 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !81, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!603 = !DILocation(line: 195, column: 16, scope: !602)
!604 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !81, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!605 = !DILocation(line: 198, column: 15, scope: !604)
!606 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !81, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!607 = !DILocation(line: 199, column: 15, scope: !606)
!608 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !81, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!609 = !DILocation(line: 200, column: 15, scope: !608)
!610 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !81, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!611 = !DILocation(line: 201, column: 15, scope: !610)
!612 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !81, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!613 = !DILocation(line: 202, column: 15, scope: !612)
!614 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !81, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!615 = !DILocation(line: 203, column: 15, scope: !614)
!616 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !81, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!617 = !DILocation(line: 204, column: 15, scope: !616)
!618 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !81, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!619 = !DILocation(line: 205, column: 15, scope: !618)
!620 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !81, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!621 = !DILocation(line: 206, column: 15, scope: !620)
