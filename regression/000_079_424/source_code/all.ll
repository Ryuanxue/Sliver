; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.10 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7.12 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10.13 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_66_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !59, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !64, metadata !DIExpression()), !dbg !68
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !68
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !68
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !69
  store i8* %arraydecay, i8** %data, align 8, !dbg !70
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !71, metadata !DIExpression()), !dbg !76
  %1 = load i8*, i8** %data, align 8, !dbg !77
  %call = call i64 @strlen(i8* %1) #7, !dbg !78
  store i64 %call, i64* %dataLen, align 8, !dbg !76
  %2 = load i64, i64* %dataLen, align 8, !dbg !79
  %sub = sub i64 100, %2, !dbg !81
  %cmp = icmp ugt i64 %sub, 1, !dbg !82
  br i1 %cmp, label %if.then, label %if.end18, !dbg !83

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !84
  %4 = load i64, i64* %dataLen, align 8, !dbg !87
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !88
  %5 = load i64, i64* %dataLen, align 8, !dbg !89
  %sub1 = sub i64 100, %5, !dbg !90
  %conv = trunc i64 %sub1 to i32, !dbg !91
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !92
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !93
  %cmp3 = icmp ne i8* %call2, null, !dbg !94
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !95

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !96
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !98
  store i64 %call6, i64* %dataLen, align 8, !dbg !99
  %8 = load i64, i64* %dataLen, align 8, !dbg !100
  %cmp7 = icmp ugt i64 %8, 0, !dbg !102
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !103

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !104
  %10 = load i64, i64* %dataLen, align 8, !dbg !105
  %sub9 = sub i64 %10, 1, !dbg !106
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !104
  %11 = load i8, i8* %arrayidx, align 1, !dbg !104
  %conv10 = sext i8 %11 to i32, !dbg !104
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !107
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !108

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !109
  %13 = load i64, i64* %dataLen, align 8, !dbg !111
  %sub14 = sub i64 %13, 1, !dbg !112
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !109
  store i8 0, i8* %arrayidx15, align 1, !dbg !113
  br label %if.end, !dbg !114

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !115

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !116
  %14 = load i8*, i8** %data, align 8, !dbg !118
  %15 = load i64, i64* %dataLen, align 8, !dbg !119
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !118
  store i8 0, i8* %arrayidx16, align 1, !dbg !120
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !121

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !122
  %arrayidx19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !123
  store i8* %16, i8** %arrayidx19, align 16, !dbg !124
  %arraydecay20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !125
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_66b_badSink(i8** %arraydecay20), !dbg !126
  ret void, !dbg !127
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !128 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !133, metadata !DIExpression()), !dbg !134
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !134
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !134
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !135
  store i8* %arraydecay, i8** %data, align 8, !dbg !136
  %1 = load i8*, i8** %data, align 8, !dbg !137
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !138
  %2 = load i8*, i8** %data, align 8, !dbg !139
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !140
  store i8* %2, i8** %arrayidx, align 16, !dbg !141
  %arraydecay1 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !142
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_66b_goodG2BSink(i8** %arraydecay1), !dbg !143
  ret void, !dbg !144
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !145 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !150, metadata !DIExpression()), !dbg !151
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !151
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !151
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !152
  store i8* %arraydecay, i8** %data, align 8, !dbg !153
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !154, metadata !DIExpression()), !dbg !156
  %1 = load i8*, i8** %data, align 8, !dbg !157
  %call = call i64 @strlen(i8* %1) #7, !dbg !158
  store i64 %call, i64* %dataLen, align 8, !dbg !156
  %2 = load i64, i64* %dataLen, align 8, !dbg !159
  %sub = sub i64 100, %2, !dbg !161
  %cmp = icmp ugt i64 %sub, 1, !dbg !162
  br i1 %cmp, label %if.then, label %if.end18, !dbg !163

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !164
  %4 = load i64, i64* %dataLen, align 8, !dbg !167
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !168
  %5 = load i64, i64* %dataLen, align 8, !dbg !169
  %sub1 = sub i64 100, %5, !dbg !170
  %conv = trunc i64 %sub1 to i32, !dbg !171
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !172
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !173
  %cmp3 = icmp ne i8* %call2, null, !dbg !174
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !175

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !176
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !178
  store i64 %call6, i64* %dataLen, align 8, !dbg !179
  %8 = load i64, i64* %dataLen, align 8, !dbg !180
  %cmp7 = icmp ugt i64 %8, 0, !dbg !182
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !183

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !184
  %10 = load i64, i64* %dataLen, align 8, !dbg !185
  %sub9 = sub i64 %10, 1, !dbg !186
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !184
  %11 = load i8, i8* %arrayidx, align 1, !dbg !184
  %conv10 = sext i8 %11 to i32, !dbg !184
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !187
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !188

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !189
  %13 = load i64, i64* %dataLen, align 8, !dbg !191
  %sub14 = sub i64 %13, 1, !dbg !192
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !189
  store i8 0, i8* %arrayidx15, align 1, !dbg !193
  br label %if.end, !dbg !194

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !195

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !196
  %14 = load i8*, i8** %data, align 8, !dbg !198
  %15 = load i64, i64* %dataLen, align 8, !dbg !199
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !198
  store i8 0, i8* %arrayidx16, align 1, !dbg !200
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !201

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !202
  %arrayidx19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !203
  store i8* %16, i8** %arrayidx19, align 16, !dbg !204
  %arraydecay20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !205
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_66b_goodB2GSink(i8** %arraydecay20), !dbg !206
  ret void, !dbg !207
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_66_good() #0 !dbg !208 {
entry:
  call void @goodG2B(), !dbg !209
  call void @goodB2G(), !dbg !210
  ret void, !dbg !211
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_66b_badSink(i8** %dataArray) #0 !dbg !212 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata i8** %data, metadata !217, metadata !DIExpression()), !dbg !218
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !219
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !219
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !219
  store i8* %1, i8** %data, align 8, !dbg !218
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !220
  %3 = load i8*, i8** %data, align 8, !dbg !221
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !222
  ret void, !dbg !223
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_66b_goodG2BSink(i8** %dataArray) #0 !dbg !224 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata i8** %data, metadata !227, metadata !DIExpression()), !dbg !228
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !229
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !229
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !229
  store i8* %1, i8** %data, align 8, !dbg !228
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !230
  %3 = load i8*, i8** %data, align 8, !dbg !231
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !232
  ret void, !dbg !233
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_66b_goodB2GSink(i8** %dataArray) #0 !dbg !234 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata i8** %data, metadata !237, metadata !DIExpression()), !dbg !238
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !239
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !239
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !239
  store i8* %1, i8** %data, align 8, !dbg !238
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !240
  %3 = load i8*, i8** %data, align 8, !dbg !241
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %3), !dbg !242
  ret void, !dbg !243
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !244 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !247, metadata !DIExpression()), !dbg !248
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !249
  %0 = load i8*, i8** %line.addr, align 8, !dbg !250
  %cmp = icmp ne i8* %0, null, !dbg !252
  br i1 %cmp, label %if.then, label %if.end, !dbg !253

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !254
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !256
  br label %if.end, !dbg !257

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !258
  ret void, !dbg !259
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !260 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !261, metadata !DIExpression()), !dbg !262
  %0 = load i8*, i8** %line.addr, align 8, !dbg !263
  %cmp = icmp ne i8* %0, null, !dbg !265
  br i1 %cmp, label %if.then, label %if.end, !dbg !266

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !267
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !269
  br label %if.end, !dbg !270

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !271
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !272 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !277, metadata !DIExpression()), !dbg !278
  %0 = load i32*, i32** %line.addr, align 8, !dbg !279
  %cmp = icmp ne i32* %0, null, !dbg !281
  br i1 %cmp, label %if.then, label %if.end, !dbg !282

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !283
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !285
  br label %if.end, !dbg !286

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !287
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !288 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !291, metadata !DIExpression()), !dbg !292
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !293
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !294
  ret void, !dbg !295
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !296 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !302
  %conv = sext i16 %0 to i32, !dbg !302
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !303
  ret void, !dbg !304
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !305 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !309, metadata !DIExpression()), !dbg !310
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !311
  %conv = fpext float %0 to double, !dbg !311
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !312
  ret void, !dbg !313
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !314 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !318, metadata !DIExpression()), !dbg !319
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !320
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.12, i64 0, i64 0), i64 %0), !dbg !321
  ret void, !dbg !322
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !323 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !332
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.12, i64 0, i64 0), i64 %0), !dbg !333
  ret void, !dbg !334
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !335 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !338, metadata !DIExpression()), !dbg !339
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !340
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !341
  ret void, !dbg !342
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !343 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !346, metadata !DIExpression()), !dbg !347
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !348
  %conv = sext i8 %0 to i32, !dbg !348
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !349
  ret void, !dbg !350
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !351 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !354, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !356, metadata !DIExpression()), !dbg !360
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !361
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !362
  store i32 %0, i32* %arrayidx, align 4, !dbg !363
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !364
  store i32 0, i32* %arrayidx1, align 4, !dbg !365
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !366
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.13, i64 0, i64 0), i32* %arraydecay), !dbg !367
  ret void, !dbg !368
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !369 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !374
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !375
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !377 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !380, metadata !DIExpression()), !dbg !381
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !382
  %conv = zext i8 %0 to i32, !dbg !382
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !383
  ret void, !dbg !384
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !385 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !389, metadata !DIExpression()), !dbg !390
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !391
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !392
  ret void, !dbg !393
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !394 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !404, metadata !DIExpression()), !dbg !405
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !406
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !407
  %1 = load i32, i32* %intOne, align 4, !dbg !407
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !408
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !409
  %3 = load i32, i32* %intTwo, align 4, !dbg !409
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !410
  ret void, !dbg !411
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !412 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !416, metadata !DIExpression()), !dbg !417
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !418, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.declare(metadata i64* %i, metadata !420, metadata !DIExpression()), !dbg !421
  store i64 0, i64* %i, align 8, !dbg !422
  br label %for.cond, !dbg !424

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !425
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !427
  %cmp = icmp ult i64 %0, %1, !dbg !428
  br i1 %cmp, label %for.body, label %for.end, !dbg !429

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !430
  %3 = load i64, i64* %i, align 8, !dbg !432
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !430
  %4 = load i8, i8* %arrayidx, align 1, !dbg !430
  %conv = zext i8 %4 to i32, !dbg !430
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !433
  br label %for.inc, !dbg !434

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !435
  %inc = add i64 %5, 1, !dbg !435
  store i64 %inc, i64* %i, align 8, !dbg !435
  br label %for.cond, !dbg !436, !llvm.loop !437

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !440
  ret void, !dbg !441
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !442 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !445, metadata !DIExpression()), !dbg !446
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !447, metadata !DIExpression()), !dbg !448
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !449, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !451, metadata !DIExpression()), !dbg !452
  store i64 0, i64* %numWritten, align 8, !dbg !452
  br label %while.cond, !dbg !453

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !454
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !455
  %cmp = icmp ult i64 %0, %1, !dbg !456
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !457

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !458
  %2 = load i16*, i16** %call, align 8, !dbg !458
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !458
  %4 = load i64, i64* %numWritten, align 8, !dbg !458
  %mul = mul i64 2, %4, !dbg !458
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !458
  %5 = load i8, i8* %arrayidx, align 1, !dbg !458
  %conv = sext i8 %5 to i32, !dbg !458
  %idxprom = sext i32 %conv to i64, !dbg !458
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !458
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !458
  %conv2 = zext i16 %6 to i32, !dbg !458
  %and = and i32 %conv2, 4096, !dbg !458
  %tobool = icmp ne i32 %and, 0, !dbg !458
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !459

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !460
  %7 = load i16*, i16** %call3, align 8, !dbg !460
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !460
  %9 = load i64, i64* %numWritten, align 8, !dbg !460
  %mul4 = mul i64 2, %9, !dbg !460
  %add = add i64 %mul4, 1, !dbg !460
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !460
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !460
  %conv6 = sext i8 %10 to i32, !dbg !460
  %idxprom7 = sext i32 %conv6 to i64, !dbg !460
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !460
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !460
  %conv9 = zext i16 %11 to i32, !dbg !460
  %and10 = and i32 %conv9, 4096, !dbg !460
  %tobool11 = icmp ne i32 %and10, 0, !dbg !459
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !461
  br i1 %12, label %while.body, label %while.end, !dbg !453

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !462, metadata !DIExpression()), !dbg !464
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !465
  %14 = load i64, i64* %numWritten, align 8, !dbg !466
  %mul12 = mul i64 2, %14, !dbg !467
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !465
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !468
  %15 = load i32, i32* %byte, align 4, !dbg !469
  %conv15 = trunc i32 %15 to i8, !dbg !470
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !471
  %17 = load i64, i64* %numWritten, align 8, !dbg !472
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !471
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !473
  %18 = load i64, i64* %numWritten, align 8, !dbg !474
  %inc = add i64 %18, 1, !dbg !474
  store i64 %inc, i64* %numWritten, align 8, !dbg !474
  br label %while.cond, !dbg !453, !llvm.loop !475

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !477
  ret i64 %19, !dbg !478
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !479 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !482, metadata !DIExpression()), !dbg !483
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !484, metadata !DIExpression()), !dbg !485
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !486, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !488, metadata !DIExpression()), !dbg !489
  store i64 0, i64* %numWritten, align 8, !dbg !489
  br label %while.cond, !dbg !490

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !491
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !492
  %cmp = icmp ult i64 %0, %1, !dbg !493
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !494

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !495
  %3 = load i64, i64* %numWritten, align 8, !dbg !496
  %mul = mul i64 2, %3, !dbg !497
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !495
  %4 = load i32, i32* %arrayidx, align 4, !dbg !495
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !498
  %tobool = icmp ne i32 %call, 0, !dbg !498
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !499

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !500
  %6 = load i64, i64* %numWritten, align 8, !dbg !501
  %mul1 = mul i64 2, %6, !dbg !502
  %add = add i64 %mul1, 1, !dbg !503
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !500
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !500
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !504
  %tobool4 = icmp ne i32 %call3, 0, !dbg !499
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !505
  br i1 %8, label %while.body, label %while.end, !dbg !490

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !506, metadata !DIExpression()), !dbg !508
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !509
  %10 = load i64, i64* %numWritten, align 8, !dbg !510
  %mul5 = mul i64 2, %10, !dbg !511
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !509
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !512
  %11 = load i32, i32* %byte, align 4, !dbg !513
  %conv = trunc i32 %11 to i8, !dbg !514
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !515
  %13 = load i64, i64* %numWritten, align 8, !dbg !516
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !515
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !517
  %14 = load i64, i64* %numWritten, align 8, !dbg !518
  %inc = add i64 %14, 1, !dbg !518
  store i64 %inc, i64* %numWritten, align 8, !dbg !518
  br label %while.cond, !dbg !490, !llvm.loop !519

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !521
  ret i64 %15, !dbg !522
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !523 {
entry:
  ret i32 1, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !527 {
entry:
  ret i32 0, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !529 {
entry:
  %call = call i32 @rand() #8, !dbg !530
  %rem = srem i32 %call, 2, !dbg !531
  ret i32 %rem, !dbg !532
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !533 {
entry:
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !535 {
entry:
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !537 {
entry:
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !539 {
entry:
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !541 {
entry:
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !543 {
entry:
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !545 {
entry:
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !547 {
entry:
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !549 {
entry:
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !551 {
entry:
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !553 {
entry:
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !555 {
entry:
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !557 {
entry:
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !559 {
entry:
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !561 {
entry:
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !563 {
entry:
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !565 {
entry:
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !567 {
entry:
  ret void, !dbg !568
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!44, !48, !2}
!llvm.ident = !{!50, !50, !50}
!llvm.module.flags = !{!51, !52, !53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_424/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_66a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_424/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_66b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_424/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_66_bad", scope: !45, file: !45, line: 29, type: !55, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 31, type: !42)
!58 = !DILocation(line: 31, column: 12, scope: !54)
!59 = !DILocalVariable(name: "dataArray", scope: !54, file: !45, line: 32, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 320, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 5)
!63 = !DILocation(line: 32, column: 12, scope: !54)
!64 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 33, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 100)
!68 = !DILocation(line: 33, column: 10, scope: !54)
!69 = !DILocation(line: 34, column: 12, scope: !54)
!70 = !DILocation(line: 34, column: 10, scope: !54)
!71 = !DILocalVariable(name: "dataLen", scope: !72, file: !45, line: 37, type: !73)
!72 = distinct !DILexicalBlock(scope: !54, file: !45, line: 35, column: 5)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 46, baseType: !75)
!74 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!75 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!76 = !DILocation(line: 37, column: 16, scope: !72)
!77 = !DILocation(line: 37, column: 33, scope: !72)
!78 = !DILocation(line: 37, column: 26, scope: !72)
!79 = !DILocation(line: 39, column: 17, scope: !80)
!80 = distinct !DILexicalBlock(scope: !72, file: !45, line: 39, column: 13)
!81 = !DILocation(line: 39, column: 16, scope: !80)
!82 = !DILocation(line: 39, column: 25, scope: !80)
!83 = !DILocation(line: 39, column: 13, scope: !72)
!84 = !DILocation(line: 42, column: 23, scope: !85)
!85 = distinct !DILexicalBlock(scope: !86, file: !45, line: 42, column: 17)
!86 = distinct !DILexicalBlock(scope: !80, file: !45, line: 40, column: 9)
!87 = !DILocation(line: 42, column: 28, scope: !85)
!88 = !DILocation(line: 42, column: 27, scope: !85)
!89 = !DILocation(line: 42, column: 47, scope: !85)
!90 = !DILocation(line: 42, column: 46, scope: !85)
!91 = !DILocation(line: 42, column: 37, scope: !85)
!92 = !DILocation(line: 42, column: 57, scope: !85)
!93 = !DILocation(line: 42, column: 17, scope: !85)
!94 = !DILocation(line: 42, column: 64, scope: !85)
!95 = !DILocation(line: 42, column: 17, scope: !86)
!96 = !DILocation(line: 46, column: 34, scope: !97)
!97 = distinct !DILexicalBlock(scope: !85, file: !45, line: 43, column: 13)
!98 = !DILocation(line: 46, column: 27, scope: !97)
!99 = !DILocation(line: 46, column: 25, scope: !97)
!100 = !DILocation(line: 47, column: 21, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !45, line: 47, column: 21)
!102 = !DILocation(line: 47, column: 29, scope: !101)
!103 = !DILocation(line: 47, column: 33, scope: !101)
!104 = !DILocation(line: 47, column: 36, scope: !101)
!105 = !DILocation(line: 47, column: 41, scope: !101)
!106 = !DILocation(line: 47, column: 48, scope: !101)
!107 = !DILocation(line: 47, column: 52, scope: !101)
!108 = !DILocation(line: 47, column: 21, scope: !97)
!109 = !DILocation(line: 49, column: 21, scope: !110)
!110 = distinct !DILexicalBlock(scope: !101, file: !45, line: 48, column: 17)
!111 = !DILocation(line: 49, column: 26, scope: !110)
!112 = !DILocation(line: 49, column: 33, scope: !110)
!113 = !DILocation(line: 49, column: 37, scope: !110)
!114 = !DILocation(line: 50, column: 17, scope: !110)
!115 = !DILocation(line: 51, column: 13, scope: !97)
!116 = !DILocation(line: 54, column: 17, scope: !117)
!117 = distinct !DILexicalBlock(scope: !85, file: !45, line: 53, column: 13)
!118 = !DILocation(line: 56, column: 17, scope: !117)
!119 = !DILocation(line: 56, column: 22, scope: !117)
!120 = !DILocation(line: 56, column: 31, scope: !117)
!121 = !DILocation(line: 58, column: 9, scope: !86)
!122 = !DILocation(line: 61, column: 20, scope: !54)
!123 = !DILocation(line: 61, column: 5, scope: !54)
!124 = !DILocation(line: 61, column: 18, scope: !54)
!125 = !DILocation(line: 62, column: 73, scope: !54)
!126 = !DILocation(line: 62, column: 5, scope: !54)
!127 = !DILocation(line: 63, column: 1, scope: !54)
!128 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 71, type: !55, scopeLine: 72, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!129 = !DILocalVariable(name: "data", scope: !128, file: !45, line: 73, type: !42)
!130 = !DILocation(line: 73, column: 12, scope: !128)
!131 = !DILocalVariable(name: "dataArray", scope: !128, file: !45, line: 74, type: !60)
!132 = !DILocation(line: 74, column: 12, scope: !128)
!133 = !DILocalVariable(name: "dataBuffer", scope: !128, file: !45, line: 75, type: !65)
!134 = !DILocation(line: 75, column: 10, scope: !128)
!135 = !DILocation(line: 76, column: 12, scope: !128)
!136 = !DILocation(line: 76, column: 10, scope: !128)
!137 = !DILocation(line: 78, column: 12, scope: !128)
!138 = !DILocation(line: 78, column: 5, scope: !128)
!139 = !DILocation(line: 79, column: 20, scope: !128)
!140 = !DILocation(line: 79, column: 5, scope: !128)
!141 = !DILocation(line: 79, column: 18, scope: !128)
!142 = !DILocation(line: 80, column: 77, scope: !128)
!143 = !DILocation(line: 80, column: 5, scope: !128)
!144 = !DILocation(line: 81, column: 1, scope: !128)
!145 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 85, type: !55, scopeLine: 86, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!146 = !DILocalVariable(name: "data", scope: !145, file: !45, line: 87, type: !42)
!147 = !DILocation(line: 87, column: 12, scope: !145)
!148 = !DILocalVariable(name: "dataArray", scope: !145, file: !45, line: 88, type: !60)
!149 = !DILocation(line: 88, column: 12, scope: !145)
!150 = !DILocalVariable(name: "dataBuffer", scope: !145, file: !45, line: 89, type: !65)
!151 = !DILocation(line: 89, column: 10, scope: !145)
!152 = !DILocation(line: 90, column: 12, scope: !145)
!153 = !DILocation(line: 90, column: 10, scope: !145)
!154 = !DILocalVariable(name: "dataLen", scope: !155, file: !45, line: 93, type: !73)
!155 = distinct !DILexicalBlock(scope: !145, file: !45, line: 91, column: 5)
!156 = !DILocation(line: 93, column: 16, scope: !155)
!157 = !DILocation(line: 93, column: 33, scope: !155)
!158 = !DILocation(line: 93, column: 26, scope: !155)
!159 = !DILocation(line: 95, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !155, file: !45, line: 95, column: 13)
!161 = !DILocation(line: 95, column: 16, scope: !160)
!162 = !DILocation(line: 95, column: 25, scope: !160)
!163 = !DILocation(line: 95, column: 13, scope: !155)
!164 = !DILocation(line: 98, column: 23, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !45, line: 98, column: 17)
!166 = distinct !DILexicalBlock(scope: !160, file: !45, line: 96, column: 9)
!167 = !DILocation(line: 98, column: 28, scope: !165)
!168 = !DILocation(line: 98, column: 27, scope: !165)
!169 = !DILocation(line: 98, column: 47, scope: !165)
!170 = !DILocation(line: 98, column: 46, scope: !165)
!171 = !DILocation(line: 98, column: 37, scope: !165)
!172 = !DILocation(line: 98, column: 57, scope: !165)
!173 = !DILocation(line: 98, column: 17, scope: !165)
!174 = !DILocation(line: 98, column: 64, scope: !165)
!175 = !DILocation(line: 98, column: 17, scope: !166)
!176 = !DILocation(line: 102, column: 34, scope: !177)
!177 = distinct !DILexicalBlock(scope: !165, file: !45, line: 99, column: 13)
!178 = !DILocation(line: 102, column: 27, scope: !177)
!179 = !DILocation(line: 102, column: 25, scope: !177)
!180 = !DILocation(line: 103, column: 21, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !45, line: 103, column: 21)
!182 = !DILocation(line: 103, column: 29, scope: !181)
!183 = !DILocation(line: 103, column: 33, scope: !181)
!184 = !DILocation(line: 103, column: 36, scope: !181)
!185 = !DILocation(line: 103, column: 41, scope: !181)
!186 = !DILocation(line: 103, column: 48, scope: !181)
!187 = !DILocation(line: 103, column: 52, scope: !181)
!188 = !DILocation(line: 103, column: 21, scope: !177)
!189 = !DILocation(line: 105, column: 21, scope: !190)
!190 = distinct !DILexicalBlock(scope: !181, file: !45, line: 104, column: 17)
!191 = !DILocation(line: 105, column: 26, scope: !190)
!192 = !DILocation(line: 105, column: 33, scope: !190)
!193 = !DILocation(line: 105, column: 37, scope: !190)
!194 = !DILocation(line: 106, column: 17, scope: !190)
!195 = !DILocation(line: 107, column: 13, scope: !177)
!196 = !DILocation(line: 110, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !165, file: !45, line: 109, column: 13)
!198 = !DILocation(line: 112, column: 17, scope: !197)
!199 = !DILocation(line: 112, column: 22, scope: !197)
!200 = !DILocation(line: 112, column: 31, scope: !197)
!201 = !DILocation(line: 114, column: 9, scope: !166)
!202 = !DILocation(line: 116, column: 20, scope: !145)
!203 = !DILocation(line: 116, column: 5, scope: !145)
!204 = !DILocation(line: 116, column: 18, scope: !145)
!205 = !DILocation(line: 117, column: 77, scope: !145)
!206 = !DILocation(line: 117, column: 5, scope: !145)
!207 = !DILocation(line: 118, column: 1, scope: !145)
!208 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_66_good", scope: !45, file: !45, line: 120, type: !55, scopeLine: 121, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!209 = !DILocation(line: 122, column: 5, scope: !208)
!210 = !DILocation(line: 123, column: 5, scope: !208)
!211 = !DILocation(line: 124, column: 1, scope: !208)
!212 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_66b_badSink", scope: !49, file: !49, line: 26, type: !213, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !41}
!215 = !DILocalVariable(name: "dataArray", arg: 1, scope: !212, file: !49, line: 26, type: !41)
!216 = !DILocation(line: 26, column: 81, scope: !212)
!217 = !DILocalVariable(name: "data", scope: !212, file: !49, line: 29, type: !42)
!218 = !DILocation(line: 29, column: 12, scope: !212)
!219 = !DILocation(line: 29, column: 19, scope: !212)
!220 = !DILocation(line: 31, column: 13, scope: !212)
!221 = !DILocation(line: 31, column: 21, scope: !212)
!222 = !DILocation(line: 31, column: 5, scope: !212)
!223 = !DILocation(line: 32, column: 1, scope: !212)
!224 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_66b_goodG2BSink", scope: !49, file: !49, line: 39, type: !213, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!225 = !DILocalVariable(name: "dataArray", arg: 1, scope: !224, file: !49, line: 39, type: !41)
!226 = !DILocation(line: 39, column: 85, scope: !224)
!227 = !DILocalVariable(name: "data", scope: !224, file: !49, line: 41, type: !42)
!228 = !DILocation(line: 41, column: 12, scope: !224)
!229 = !DILocation(line: 41, column: 19, scope: !224)
!230 = !DILocation(line: 43, column: 13, scope: !224)
!231 = !DILocation(line: 43, column: 21, scope: !224)
!232 = !DILocation(line: 43, column: 5, scope: !224)
!233 = !DILocation(line: 44, column: 1, scope: !224)
!234 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_66b_goodB2GSink", scope: !49, file: !49, line: 47, type: !213, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!235 = !DILocalVariable(name: "dataArray", arg: 1, scope: !234, file: !49, line: 47, type: !41)
!236 = !DILocation(line: 47, column: 85, scope: !234)
!237 = !DILocalVariable(name: "data", scope: !234, file: !49, line: 49, type: !42)
!238 = !DILocation(line: 49, column: 12, scope: !234)
!239 = !DILocation(line: 49, column: 19, scope: !234)
!240 = !DILocation(line: 51, column: 13, scope: !234)
!241 = !DILocation(line: 51, column: 29, scope: !234)
!242 = !DILocation(line: 51, column: 5, scope: !234)
!243 = !DILocation(line: 52, column: 1, scope: !234)
!244 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !245, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !42}
!247 = !DILocalVariable(name: "line", arg: 1, scope: !244, file: !3, line: 11, type: !42)
!248 = !DILocation(line: 11, column: 25, scope: !244)
!249 = !DILocation(line: 13, column: 1, scope: !244)
!250 = !DILocation(line: 14, column: 8, scope: !251)
!251 = distinct !DILexicalBlock(scope: !244, file: !3, line: 14, column: 8)
!252 = !DILocation(line: 14, column: 13, scope: !251)
!253 = !DILocation(line: 14, column: 8, scope: !244)
!254 = !DILocation(line: 16, column: 24, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !3, line: 15, column: 5)
!256 = !DILocation(line: 16, column: 9, scope: !255)
!257 = !DILocation(line: 17, column: 5, scope: !255)
!258 = !DILocation(line: 18, column: 5, scope: !244)
!259 = !DILocation(line: 19, column: 1, scope: !244)
!260 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !245, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!261 = !DILocalVariable(name: "line", arg: 1, scope: !260, file: !3, line: 20, type: !42)
!262 = !DILocation(line: 20, column: 29, scope: !260)
!263 = !DILocation(line: 22, column: 8, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !3, line: 22, column: 8)
!265 = !DILocation(line: 22, column: 13, scope: !264)
!266 = !DILocation(line: 22, column: 8, scope: !260)
!267 = !DILocation(line: 24, column: 24, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !3, line: 23, column: 5)
!269 = !DILocation(line: 24, column: 9, scope: !268)
!270 = !DILocation(line: 25, column: 5, scope: !268)
!271 = !DILocation(line: 26, column: 1, scope: !260)
!272 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !273, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !275}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !74, line: 74, baseType: !23)
!277 = !DILocalVariable(name: "line", arg: 1, scope: !272, file: !3, line: 27, type: !275)
!278 = !DILocation(line: 27, column: 29, scope: !272)
!279 = !DILocation(line: 29, column: 8, scope: !280)
!280 = distinct !DILexicalBlock(scope: !272, file: !3, line: 29, column: 8)
!281 = !DILocation(line: 29, column: 13, scope: !280)
!282 = !DILocation(line: 29, column: 8, scope: !272)
!283 = !DILocation(line: 31, column: 27, scope: !284)
!284 = distinct !DILexicalBlock(scope: !280, file: !3, line: 30, column: 5)
!285 = !DILocation(line: 31, column: 9, scope: !284)
!286 = !DILocation(line: 32, column: 5, scope: !284)
!287 = !DILocation(line: 33, column: 1, scope: !272)
!288 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !289, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !23}
!291 = !DILocalVariable(name: "intNumber", arg: 1, scope: !288, file: !3, line: 35, type: !23)
!292 = !DILocation(line: 35, column: 24, scope: !288)
!293 = !DILocation(line: 37, column: 20, scope: !288)
!294 = !DILocation(line: 37, column: 5, scope: !288)
!295 = !DILocation(line: 38, column: 1, scope: !288)
!296 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !297, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !299}
!299 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!300 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !296, file: !3, line: 40, type: !299)
!301 = !DILocation(line: 40, column: 28, scope: !296)
!302 = !DILocation(line: 42, column: 21, scope: !296)
!303 = !DILocation(line: 42, column: 5, scope: !296)
!304 = !DILocation(line: 43, column: 1, scope: !296)
!305 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !306, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !308}
!308 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!309 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !305, file: !3, line: 45, type: !308)
!310 = !DILocation(line: 45, column: 28, scope: !305)
!311 = !DILocation(line: 47, column: 20, scope: !305)
!312 = !DILocation(line: 47, column: 5, scope: !305)
!313 = !DILocation(line: 48, column: 1, scope: !305)
!314 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !315, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !317}
!317 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!318 = !DILocalVariable(name: "longNumber", arg: 1, scope: !314, file: !3, line: 50, type: !317)
!319 = !DILocation(line: 50, column: 26, scope: !314)
!320 = !DILocation(line: 52, column: 21, scope: !314)
!321 = !DILocation(line: 52, column: 5, scope: !314)
!322 = !DILocation(line: 53, column: 1, scope: !314)
!323 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !324, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !326}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !327, line: 27, baseType: !328)
!327 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !329, line: 44, baseType: !317)
!329 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!330 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !323, file: !3, line: 55, type: !326)
!331 = !DILocation(line: 55, column: 33, scope: !323)
!332 = !DILocation(line: 57, column: 29, scope: !323)
!333 = !DILocation(line: 57, column: 5, scope: !323)
!334 = !DILocation(line: 58, column: 1, scope: !323)
!335 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !336, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !73}
!338 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !335, file: !3, line: 60, type: !73)
!339 = !DILocation(line: 60, column: 29, scope: !335)
!340 = !DILocation(line: 62, column: 21, scope: !335)
!341 = !DILocation(line: 62, column: 5, scope: !335)
!342 = !DILocation(line: 63, column: 1, scope: !335)
!343 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !344, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !43}
!346 = !DILocalVariable(name: "charHex", arg: 1, scope: !343, file: !3, line: 65, type: !43)
!347 = !DILocation(line: 65, column: 29, scope: !343)
!348 = !DILocation(line: 67, column: 22, scope: !343)
!349 = !DILocation(line: 67, column: 5, scope: !343)
!350 = !DILocation(line: 68, column: 1, scope: !343)
!351 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !352, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !276}
!354 = !DILocalVariable(name: "wideChar", arg: 1, scope: !351, file: !3, line: 70, type: !276)
!355 = !DILocation(line: 70, column: 29, scope: !351)
!356 = !DILocalVariable(name: "s", scope: !351, file: !3, line: 74, type: !357)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 64, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 2)
!360 = !DILocation(line: 74, column: 13, scope: !351)
!361 = !DILocation(line: 75, column: 16, scope: !351)
!362 = !DILocation(line: 75, column: 9, scope: !351)
!363 = !DILocation(line: 75, column: 14, scope: !351)
!364 = !DILocation(line: 76, column: 9, scope: !351)
!365 = !DILocation(line: 76, column: 14, scope: !351)
!366 = !DILocation(line: 77, column: 21, scope: !351)
!367 = !DILocation(line: 77, column: 5, scope: !351)
!368 = !DILocation(line: 78, column: 1, scope: !351)
!369 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !370, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !7}
!372 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !369, file: !3, line: 80, type: !7)
!373 = !DILocation(line: 80, column: 33, scope: !369)
!374 = !DILocation(line: 82, column: 20, scope: !369)
!375 = !DILocation(line: 82, column: 5, scope: !369)
!376 = !DILocation(line: 83, column: 1, scope: !369)
!377 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !378, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !25}
!380 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !377, file: !3, line: 85, type: !25)
!381 = !DILocation(line: 85, column: 45, scope: !377)
!382 = !DILocation(line: 87, column: 22, scope: !377)
!383 = !DILocation(line: 87, column: 5, scope: !377)
!384 = !DILocation(line: 88, column: 1, scope: !377)
!385 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !386, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !388}
!388 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!389 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !385, file: !3, line: 90, type: !388)
!390 = !DILocation(line: 90, column: 29, scope: !385)
!391 = !DILocation(line: 92, column: 20, scope: !385)
!392 = !DILocation(line: 92, column: 5, scope: !385)
!393 = !DILocation(line: 93, column: 1, scope: !385)
!394 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !395, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !397}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !399, line: 100, baseType: !400)
!399 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_424/source_code")
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !399, line: 96, size: 64, elements: !401)
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !400, file: !399, line: 98, baseType: !23, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !400, file: !399, line: 99, baseType: !23, size: 32, offset: 32)
!404 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !394, file: !3, line: 95, type: !397)
!405 = !DILocation(line: 95, column: 40, scope: !394)
!406 = !DILocation(line: 97, column: 26, scope: !394)
!407 = !DILocation(line: 97, column: 47, scope: !394)
!408 = !DILocation(line: 97, column: 55, scope: !394)
!409 = !DILocation(line: 97, column: 76, scope: !394)
!410 = !DILocation(line: 97, column: 5, scope: !394)
!411 = !DILocation(line: 98, column: 1, scope: !394)
!412 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !413, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !415, !73}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!416 = !DILocalVariable(name: "bytes", arg: 1, scope: !412, file: !3, line: 100, type: !415)
!417 = !DILocation(line: 100, column: 38, scope: !412)
!418 = !DILocalVariable(name: "numBytes", arg: 2, scope: !412, file: !3, line: 100, type: !73)
!419 = !DILocation(line: 100, column: 52, scope: !412)
!420 = !DILocalVariable(name: "i", scope: !412, file: !3, line: 102, type: !73)
!421 = !DILocation(line: 102, column: 12, scope: !412)
!422 = !DILocation(line: 103, column: 12, scope: !423)
!423 = distinct !DILexicalBlock(scope: !412, file: !3, line: 103, column: 5)
!424 = !DILocation(line: 103, column: 10, scope: !423)
!425 = !DILocation(line: 103, column: 17, scope: !426)
!426 = distinct !DILexicalBlock(scope: !423, file: !3, line: 103, column: 5)
!427 = !DILocation(line: 103, column: 21, scope: !426)
!428 = !DILocation(line: 103, column: 19, scope: !426)
!429 = !DILocation(line: 103, column: 5, scope: !423)
!430 = !DILocation(line: 105, column: 24, scope: !431)
!431 = distinct !DILexicalBlock(scope: !426, file: !3, line: 104, column: 5)
!432 = !DILocation(line: 105, column: 30, scope: !431)
!433 = !DILocation(line: 105, column: 9, scope: !431)
!434 = !DILocation(line: 106, column: 5, scope: !431)
!435 = !DILocation(line: 103, column: 31, scope: !426)
!436 = !DILocation(line: 103, column: 5, scope: !426)
!437 = distinct !{!437, !429, !438, !439}
!438 = !DILocation(line: 106, column: 5, scope: !423)
!439 = !{!"llvm.loop.mustprogress"}
!440 = !DILocation(line: 107, column: 5, scope: !412)
!441 = !DILocation(line: 108, column: 1, scope: !412)
!442 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !443, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!443 = !DISubroutineType(types: !444)
!444 = !{!73, !415, !73, !42}
!445 = !DILocalVariable(name: "bytes", arg: 1, scope: !442, file: !3, line: 113, type: !415)
!446 = !DILocation(line: 113, column: 39, scope: !442)
!447 = !DILocalVariable(name: "numBytes", arg: 2, scope: !442, file: !3, line: 113, type: !73)
!448 = !DILocation(line: 113, column: 53, scope: !442)
!449 = !DILocalVariable(name: "hex", arg: 3, scope: !442, file: !3, line: 113, type: !42)
!450 = !DILocation(line: 113, column: 71, scope: !442)
!451 = !DILocalVariable(name: "numWritten", scope: !442, file: !3, line: 115, type: !73)
!452 = !DILocation(line: 115, column: 12, scope: !442)
!453 = !DILocation(line: 121, column: 5, scope: !442)
!454 = !DILocation(line: 121, column: 12, scope: !442)
!455 = !DILocation(line: 121, column: 25, scope: !442)
!456 = !DILocation(line: 121, column: 23, scope: !442)
!457 = !DILocation(line: 121, column: 34, scope: !442)
!458 = !DILocation(line: 121, column: 37, scope: !442)
!459 = !DILocation(line: 121, column: 67, scope: !442)
!460 = !DILocation(line: 121, column: 70, scope: !442)
!461 = !DILocation(line: 0, scope: !442)
!462 = !DILocalVariable(name: "byte", scope: !463, file: !3, line: 123, type: !23)
!463 = distinct !DILexicalBlock(scope: !442, file: !3, line: 122, column: 5)
!464 = !DILocation(line: 123, column: 13, scope: !463)
!465 = !DILocation(line: 124, column: 17, scope: !463)
!466 = !DILocation(line: 124, column: 25, scope: !463)
!467 = !DILocation(line: 124, column: 23, scope: !463)
!468 = !DILocation(line: 124, column: 9, scope: !463)
!469 = !DILocation(line: 125, column: 45, scope: !463)
!470 = !DILocation(line: 125, column: 29, scope: !463)
!471 = !DILocation(line: 125, column: 9, scope: !463)
!472 = !DILocation(line: 125, column: 15, scope: !463)
!473 = !DILocation(line: 125, column: 27, scope: !463)
!474 = !DILocation(line: 126, column: 9, scope: !463)
!475 = distinct !{!475, !453, !476, !439}
!476 = !DILocation(line: 127, column: 5, scope: !442)
!477 = !DILocation(line: 129, column: 12, scope: !442)
!478 = !DILocation(line: 129, column: 5, scope: !442)
!479 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !480, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!480 = !DISubroutineType(types: !481)
!481 = !{!73, !415, !73, !275}
!482 = !DILocalVariable(name: "bytes", arg: 1, scope: !479, file: !3, line: 135, type: !415)
!483 = !DILocation(line: 135, column: 41, scope: !479)
!484 = !DILocalVariable(name: "numBytes", arg: 2, scope: !479, file: !3, line: 135, type: !73)
!485 = !DILocation(line: 135, column: 55, scope: !479)
!486 = !DILocalVariable(name: "hex", arg: 3, scope: !479, file: !3, line: 135, type: !275)
!487 = !DILocation(line: 135, column: 76, scope: !479)
!488 = !DILocalVariable(name: "numWritten", scope: !479, file: !3, line: 137, type: !73)
!489 = !DILocation(line: 137, column: 12, scope: !479)
!490 = !DILocation(line: 143, column: 5, scope: !479)
!491 = !DILocation(line: 143, column: 12, scope: !479)
!492 = !DILocation(line: 143, column: 25, scope: !479)
!493 = !DILocation(line: 143, column: 23, scope: !479)
!494 = !DILocation(line: 143, column: 34, scope: !479)
!495 = !DILocation(line: 143, column: 47, scope: !479)
!496 = !DILocation(line: 143, column: 55, scope: !479)
!497 = !DILocation(line: 143, column: 53, scope: !479)
!498 = !DILocation(line: 143, column: 37, scope: !479)
!499 = !DILocation(line: 143, column: 68, scope: !479)
!500 = !DILocation(line: 143, column: 81, scope: !479)
!501 = !DILocation(line: 143, column: 89, scope: !479)
!502 = !DILocation(line: 143, column: 87, scope: !479)
!503 = !DILocation(line: 143, column: 100, scope: !479)
!504 = !DILocation(line: 143, column: 71, scope: !479)
!505 = !DILocation(line: 0, scope: !479)
!506 = !DILocalVariable(name: "byte", scope: !507, file: !3, line: 145, type: !23)
!507 = distinct !DILexicalBlock(scope: !479, file: !3, line: 144, column: 5)
!508 = !DILocation(line: 145, column: 13, scope: !507)
!509 = !DILocation(line: 146, column: 18, scope: !507)
!510 = !DILocation(line: 146, column: 26, scope: !507)
!511 = !DILocation(line: 146, column: 24, scope: !507)
!512 = !DILocation(line: 146, column: 9, scope: !507)
!513 = !DILocation(line: 147, column: 45, scope: !507)
!514 = !DILocation(line: 147, column: 29, scope: !507)
!515 = !DILocation(line: 147, column: 9, scope: !507)
!516 = !DILocation(line: 147, column: 15, scope: !507)
!517 = !DILocation(line: 147, column: 27, scope: !507)
!518 = !DILocation(line: 148, column: 9, scope: !507)
!519 = distinct !{!519, !490, !520, !439}
!520 = !DILocation(line: 149, column: 5, scope: !479)
!521 = !DILocation(line: 151, column: 12, scope: !479)
!522 = !DILocation(line: 151, column: 5, scope: !479)
!523 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !524, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!524 = !DISubroutineType(types: !525)
!525 = !{!23}
!526 = !DILocation(line: 158, column: 5, scope: !523)
!527 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !524, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!528 = !DILocation(line: 163, column: 5, scope: !527)
!529 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !524, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DILocation(line: 168, column: 13, scope: !529)
!531 = !DILocation(line: 168, column: 20, scope: !529)
!532 = !DILocation(line: 168, column: 5, scope: !529)
!533 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DILocation(line: 187, column: 16, scope: !533)
!535 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DILocation(line: 188, column: 16, scope: !535)
!537 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DILocation(line: 189, column: 16, scope: !537)
!539 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DILocation(line: 190, column: 16, scope: !539)
!541 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DILocation(line: 191, column: 16, scope: !541)
!543 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DILocation(line: 192, column: 16, scope: !543)
!545 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DILocation(line: 193, column: 16, scope: !545)
!547 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 194, column: 16, scope: !547)
!549 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DILocation(line: 195, column: 16, scope: !549)
!551 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DILocation(line: 198, column: 15, scope: !551)
!553 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DILocation(line: 199, column: 15, scope: !553)
!555 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DILocation(line: 200, column: 15, scope: !555)
!557 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 201, column: 15, scope: !557)
!559 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DILocation(line: 202, column: 15, scope: !559)
!561 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!562 = !DILocation(line: 203, column: 15, scope: !561)
!563 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DILocation(line: 204, column: 15, scope: !563)
!565 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DILocation(line: 205, column: 15, scope: !565)
!567 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DILocation(line: 206, column: 15, scope: !567)
