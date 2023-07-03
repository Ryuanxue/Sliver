; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType = type { i8* }
%struct._twoIntsStruct = type { i32, i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
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
@.str.3.12 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10.15 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_67_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType* %myStruct, metadata !59, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !66, metadata !DIExpression()), !dbg !70
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !70
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !70
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !71
  store i8* %arraydecay, i8** %data, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !73, metadata !DIExpression()), !dbg !78
  %1 = load i8*, i8** %data, align 8, !dbg !79
  %call = call i64 @strlen(i8* %1) #7, !dbg !80
  store i64 %call, i64* %dataLen, align 8, !dbg !78
  %2 = load i64, i64* %dataLen, align 8, !dbg !81
  %sub = sub i64 100, %2, !dbg !83
  %cmp = icmp ugt i64 %sub, 1, !dbg !84
  br i1 %cmp, label %if.then, label %if.end18, !dbg !85

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !86
  %4 = load i64, i64* %dataLen, align 8, !dbg !89
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !90
  %5 = load i64, i64* %dataLen, align 8, !dbg !91
  %sub1 = sub i64 100, %5, !dbg !92
  %conv = trunc i64 %sub1 to i32, !dbg !93
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !94
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !95
  %cmp3 = icmp ne i8* %call2, null, !dbg !96
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !97

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !98
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !100
  store i64 %call6, i64* %dataLen, align 8, !dbg !101
  %8 = load i64, i64* %dataLen, align 8, !dbg !102
  %cmp7 = icmp ugt i64 %8, 0, !dbg !104
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !105

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !106
  %10 = load i64, i64* %dataLen, align 8, !dbg !107
  %sub9 = sub i64 %10, 1, !dbg !108
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !106
  %11 = load i8, i8* %arrayidx, align 1, !dbg !106
  %conv10 = sext i8 %11 to i32, !dbg !106
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !109
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !110

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !111
  %13 = load i64, i64* %dataLen, align 8, !dbg !113
  %sub14 = sub i64 %13, 1, !dbg !114
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !111
  store i8 0, i8* %arrayidx15, align 1, !dbg !115
  br label %if.end, !dbg !116

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !117

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !118
  %14 = load i8*, i8** %data, align 8, !dbg !120
  %15 = load i64, i64* %dataLen, align 8, !dbg !121
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !120
  store i8 0, i8* %arrayidx16, align 1, !dbg !122
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !123

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !124
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType* %myStruct, i32 0, i32 0, !dbg !125
  store i8* %16, i8** %structFirst, align 8, !dbg !126
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType* %myStruct, i32 0, i32 0, !dbg !127
  %17 = load i8*, i8** %coerce.dive, align 8, !dbg !127
  call void @CWE606_Unchecked_Loop_Condition__char_console_67b_badSink(i8* %17), !dbg !127
  ret void, !dbg !128
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !129 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType* %myStruct, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !134, metadata !DIExpression()), !dbg !135
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !135
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !135
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !136
  store i8* %arraydecay, i8** %data, align 8, !dbg !137
  %1 = load i8*, i8** %data, align 8, !dbg !138
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !139
  %2 = load i8*, i8** %data, align 8, !dbg !140
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType* %myStruct, i32 0, i32 0, !dbg !141
  store i8* %2, i8** %structFirst, align 8, !dbg !142
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType* %myStruct, i32 0, i32 0, !dbg !143
  %3 = load i8*, i8** %coerce.dive, align 8, !dbg !143
  call void @CWE606_Unchecked_Loop_Condition__char_console_67b_goodG2BSink(i8* %3), !dbg !143
  ret void, !dbg !144
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !145 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType* %myStruct, metadata !148, metadata !DIExpression()), !dbg !149
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
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType* %myStruct, i32 0, i32 0, !dbg !203
  store i8* %16, i8** %structFirst, align 8, !dbg !204
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType* %myStruct, i32 0, i32 0, !dbg !205
  %17 = load i8*, i8** %coerce.dive, align 8, !dbg !205
  call void @CWE606_Unchecked_Loop_Condition__char_console_67b_goodB2GSink(i8* %17), !dbg !205
  ret void, !dbg !206
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_67_good() #0 !dbg !207 {
entry:
  call void @goodG2B(), !dbg !208
  call void @goodB2G(), !dbg !209
  ret void, !dbg !210
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_67b_badSink(i8* %myStruct.coerce) #0 !dbg !211 {
entry:
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType* %myStruct, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata i8** %data, metadata !220, metadata !DIExpression()), !dbg !221
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType* %myStruct, i32 0, i32 0, !dbg !222
  %0 = load i8*, i8** %structFirst, align 8, !dbg !222
  store i8* %0, i8** %data, align 8, !dbg !221
  call void @llvm.dbg.declare(metadata i32* %i, metadata !223, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.declare(metadata i32* %n, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !228, metadata !DIExpression()), !dbg !229
  %1 = load i8*, i8** %data, align 8, !dbg !230
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !232
  %cmp = icmp eq i32 %call, 1, !dbg !233
  br i1 %cmp, label %if.then, label %if.end, !dbg !234

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !235
  store i32 0, i32* %i, align 4, !dbg !237
  br label %for.cond, !dbg !239

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !240
  %3 = load i32, i32* %n, align 4, !dbg !242
  %cmp1 = icmp slt i32 %2, %3, !dbg !243
  br i1 %cmp1, label %for.body, label %for.end, !dbg !244

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !245
  %inc = add nsw i32 %4, 1, !dbg !245
  store i32 %inc, i32* %intVariable, align 4, !dbg !245
  br label %for.inc, !dbg !247

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !248
  %inc2 = add nsw i32 %5, 1, !dbg !248
  store i32 %inc2, i32* %i, align 4, !dbg !248
  br label %for.cond, !dbg !249, !llvm.loop !250

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !253
  call void @printIntLine(i32 %6), !dbg !254
  br label %if.end, !dbg !255

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !256
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_67b_goodG2BSink(i8* %myStruct.coerce) #0 !dbg !257 {
entry:
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType* %myStruct, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata i8** %data, metadata !260, metadata !DIExpression()), !dbg !261
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType* %myStruct, i32 0, i32 0, !dbg !262
  %0 = load i8*, i8** %structFirst, align 8, !dbg !262
  store i8* %0, i8** %data, align 8, !dbg !261
  call void @llvm.dbg.declare(metadata i32* %i, metadata !263, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata i32* %n, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !268, metadata !DIExpression()), !dbg !269
  %1 = load i8*, i8** %data, align 8, !dbg !270
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !272
  %cmp = icmp eq i32 %call, 1, !dbg !273
  br i1 %cmp, label %if.then, label %if.end, !dbg !274

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !275
  store i32 0, i32* %i, align 4, !dbg !277
  br label %for.cond, !dbg !279

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !280
  %3 = load i32, i32* %n, align 4, !dbg !282
  %cmp1 = icmp slt i32 %2, %3, !dbg !283
  br i1 %cmp1, label %for.body, label %for.end, !dbg !284

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !285
  %inc = add nsw i32 %4, 1, !dbg !285
  store i32 %inc, i32* %intVariable, align 4, !dbg !285
  br label %for.inc, !dbg !287

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !288
  %inc2 = add nsw i32 %5, 1, !dbg !288
  store i32 %inc2, i32* %i, align 4, !dbg !288
  br label %for.cond, !dbg !289, !llvm.loop !290

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !292
  call void @printIntLine(i32 %6), !dbg !293
  br label %if.end, !dbg !294

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !295
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_67b_goodB2GSink(i8* %myStruct.coerce) #0 !dbg !296 {
entry:
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType* %myStruct, metadata !297, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata i8** %data, metadata !299, metadata !DIExpression()), !dbg !300
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_console_67_structType* %myStruct, i32 0, i32 0, !dbg !301
  %0 = load i8*, i8** %structFirst, align 8, !dbg !301
  store i8* %0, i8** %data, align 8, !dbg !300
  call void @llvm.dbg.declare(metadata i32* %i, metadata !302, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.declare(metadata i32* %n, metadata !305, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !307, metadata !DIExpression()), !dbg !308
  %1 = load i8*, i8** %data, align 8, !dbg !309
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !311
  %cmp = icmp eq i32 %call, 1, !dbg !312
  br i1 %cmp, label %if.then, label %if.end5, !dbg !313

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n, align 4, !dbg !314
  %cmp1 = icmp slt i32 %2, 10000, !dbg !317
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !318

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !319
  store i32 0, i32* %i, align 4, !dbg !321
  br label %for.cond, !dbg !323

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load i32, i32* %i, align 4, !dbg !324
  %4 = load i32, i32* %n, align 4, !dbg !326
  %cmp3 = icmp slt i32 %3, %4, !dbg !327
  br i1 %cmp3, label %for.body, label %for.end, !dbg !328

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !329
  %inc = add nsw i32 %5, 1, !dbg !329
  store i32 %inc, i32* %intVariable, align 4, !dbg !329
  br label %for.inc, !dbg !331

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !332
  %inc4 = add nsw i32 %6, 1, !dbg !332
  store i32 %inc4, i32* %i, align 4, !dbg !332
  br label %for.cond, !dbg !333, !llvm.loop !334

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !336
  call void @printIntLine(i32 %7), !dbg !337
  br label %if.end, !dbg !338

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !339

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !340
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !341 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !344, metadata !DIExpression()), !dbg !345
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !346
  %0 = load i8*, i8** %line.addr, align 8, !dbg !347
  %cmp = icmp ne i8* %0, null, !dbg !349
  br i1 %cmp, label %if.then, label %if.end, !dbg !350

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !351
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !353
  br label %if.end, !dbg !354

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !355
  ret void, !dbg !356
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !357 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !358, metadata !DIExpression()), !dbg !359
  %0 = load i8*, i8** %line.addr, align 8, !dbg !360
  %cmp = icmp ne i8* %0, null, !dbg !362
  br i1 %cmp, label %if.then, label %if.end, !dbg !363

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !364
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !366
  br label %if.end, !dbg !367

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !368
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !369 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !374, metadata !DIExpression()), !dbg !375
  %0 = load i32*, i32** %line.addr, align 8, !dbg !376
  %cmp = icmp ne i32* %0, null, !dbg !378
  br i1 %cmp, label %if.then, label %if.end, !dbg !379

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !380
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.12, i64 0, i64 0), i32* %1), !dbg !382
  br label %if.end, !dbg !383

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !384
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !385 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !388, metadata !DIExpression()), !dbg !389
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !390
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !391
  ret void, !dbg !392
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !393 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !397, metadata !DIExpression()), !dbg !398
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !399
  %conv = sext i16 %0 to i32, !dbg !399
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !400
  ret void, !dbg !401
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !402 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !406, metadata !DIExpression()), !dbg !407
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !408
  %conv = fpext float %0 to double, !dbg !408
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !409
  ret void, !dbg !410
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !411 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !415, metadata !DIExpression()), !dbg !416
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !417
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !418
  ret void, !dbg !419
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !420 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !427, metadata !DIExpression()), !dbg !428
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !429
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !430
  ret void, !dbg !431
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !432 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !435, metadata !DIExpression()), !dbg !436
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !437
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !438
  ret void, !dbg !439
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !440 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !443, metadata !DIExpression()), !dbg !444
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !445
  %conv = sext i8 %0 to i32, !dbg !445
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !446
  ret void, !dbg !447
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !448 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !451, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !453, metadata !DIExpression()), !dbg !457
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !458
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !459
  store i32 %0, i32* %arrayidx, align 4, !dbg !460
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !461
  store i32 0, i32* %arrayidx1, align 4, !dbg !462
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !463
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.15, i64 0, i64 0), i32* %arraydecay), !dbg !464
  ret void, !dbg !465
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !466 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !469, metadata !DIExpression()), !dbg !470
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !471
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !472
  ret void, !dbg !473
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !474 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !477, metadata !DIExpression()), !dbg !478
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !479
  %conv = zext i8 %0 to i32, !dbg !479
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !480
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !482 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !486, metadata !DIExpression()), !dbg !487
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !488
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !489
  ret void, !dbg !490
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !491 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !501, metadata !DIExpression()), !dbg !502
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !503
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !504
  %1 = load i32, i32* %intOne, align 4, !dbg !504
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !505
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !506
  %3 = load i32, i32* %intTwo, align 4, !dbg !506
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !507
  ret void, !dbg !508
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !509 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !513, metadata !DIExpression()), !dbg !514
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !515, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.declare(metadata i64* %i, metadata !517, metadata !DIExpression()), !dbg !518
  store i64 0, i64* %i, align 8, !dbg !519
  br label %for.cond, !dbg !521

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !522
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !524
  %cmp = icmp ult i64 %0, %1, !dbg !525
  br i1 %cmp, label %for.body, label %for.end, !dbg !526

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !527
  %3 = load i64, i64* %i, align 8, !dbg !529
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !527
  %4 = load i8, i8* %arrayidx, align 1, !dbg !527
  %conv = zext i8 %4 to i32, !dbg !527
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !530
  br label %for.inc, !dbg !531

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !532
  %inc = add i64 %5, 1, !dbg !532
  store i64 %inc, i64* %i, align 8, !dbg !532
  br label %for.cond, !dbg !533, !llvm.loop !534

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !536
  ret void, !dbg !537
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !538 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !541, metadata !DIExpression()), !dbg !542
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !543, metadata !DIExpression()), !dbg !544
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !545, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !547, metadata !DIExpression()), !dbg !548
  store i64 0, i64* %numWritten, align 8, !dbg !548
  br label %while.cond, !dbg !549

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !550
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !551
  %cmp = icmp ult i64 %0, %1, !dbg !552
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !553

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !554
  %2 = load i16*, i16** %call, align 8, !dbg !554
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !554
  %4 = load i64, i64* %numWritten, align 8, !dbg !554
  %mul = mul i64 2, %4, !dbg !554
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !554
  %5 = load i8, i8* %arrayidx, align 1, !dbg !554
  %conv = sext i8 %5 to i32, !dbg !554
  %idxprom = sext i32 %conv to i64, !dbg !554
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !554
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !554
  %conv2 = zext i16 %6 to i32, !dbg !554
  %and = and i32 %conv2, 4096, !dbg !554
  %tobool = icmp ne i32 %and, 0, !dbg !554
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !555

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !556
  %7 = load i16*, i16** %call3, align 8, !dbg !556
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !556
  %9 = load i64, i64* %numWritten, align 8, !dbg !556
  %mul4 = mul i64 2, %9, !dbg !556
  %add = add i64 %mul4, 1, !dbg !556
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !556
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !556
  %conv6 = sext i8 %10 to i32, !dbg !556
  %idxprom7 = sext i32 %conv6 to i64, !dbg !556
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !556
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !556
  %conv9 = zext i16 %11 to i32, !dbg !556
  %and10 = and i32 %conv9, 4096, !dbg !556
  %tobool11 = icmp ne i32 %and10, 0, !dbg !555
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !557
  br i1 %12, label %while.body, label %while.end, !dbg !549

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !558, metadata !DIExpression()), !dbg !560
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !561
  %14 = load i64, i64* %numWritten, align 8, !dbg !562
  %mul12 = mul i64 2, %14, !dbg !563
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !561
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !564
  %15 = load i32, i32* %byte, align 4, !dbg !565
  %conv15 = trunc i32 %15 to i8, !dbg !566
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !567
  %17 = load i64, i64* %numWritten, align 8, !dbg !568
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !567
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !569
  %18 = load i64, i64* %numWritten, align 8, !dbg !570
  %inc = add i64 %18, 1, !dbg !570
  store i64 %inc, i64* %numWritten, align 8, !dbg !570
  br label %while.cond, !dbg !549, !llvm.loop !571

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !573
  ret i64 %19, !dbg !574
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !575 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !578, metadata !DIExpression()), !dbg !579
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !580, metadata !DIExpression()), !dbg !581
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !582, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !584, metadata !DIExpression()), !dbg !585
  store i64 0, i64* %numWritten, align 8, !dbg !585
  br label %while.cond, !dbg !586

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !587
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !588
  %cmp = icmp ult i64 %0, %1, !dbg !589
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !590

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !591
  %3 = load i64, i64* %numWritten, align 8, !dbg !592
  %mul = mul i64 2, %3, !dbg !593
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !591
  %4 = load i32, i32* %arrayidx, align 4, !dbg !591
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !594
  %tobool = icmp ne i32 %call, 0, !dbg !594
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !595

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !596
  %6 = load i64, i64* %numWritten, align 8, !dbg !597
  %mul1 = mul i64 2, %6, !dbg !598
  %add = add i64 %mul1, 1, !dbg !599
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !596
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !596
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !600
  %tobool4 = icmp ne i32 %call3, 0, !dbg !595
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !601
  br i1 %8, label %while.body, label %while.end, !dbg !586

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !602, metadata !DIExpression()), !dbg !604
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !605
  %10 = load i64, i64* %numWritten, align 8, !dbg !606
  %mul5 = mul i64 2, %10, !dbg !607
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !605
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !608
  %11 = load i32, i32* %byte, align 4, !dbg !609
  %conv = trunc i32 %11 to i8, !dbg !610
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !611
  %13 = load i64, i64* %numWritten, align 8, !dbg !612
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !611
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !613
  %14 = load i64, i64* %numWritten, align 8, !dbg !614
  %inc = add i64 %14, 1, !dbg !614
  store i64 %inc, i64* %numWritten, align 8, !dbg !614
  br label %while.cond, !dbg !586, !llvm.loop !615

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !617
  ret i64 %15, !dbg !618
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !619 {
entry:
  ret i32 1, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !623 {
entry:
  ret i32 0, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !625 {
entry:
  %call = call i32 @rand() #8, !dbg !626
  %rem = srem i32 %call, 2, !dbg !627
  ret i32 %rem, !dbg !628
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !629 {
entry:
  ret void, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !631 {
entry:
  ret void, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !633 {
entry:
  ret void, !dbg !634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !635 {
entry:
  ret void, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !637 {
entry:
  ret void, !dbg !638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !639 {
entry:
  ret void, !dbg !640
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !641 {
entry:
  ret void, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !643 {
entry:
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !645 {
entry:
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !647 {
entry:
  ret void, !dbg !648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !649 {
entry:
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !651 {
entry:
  ret void, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !653 {
entry:
  ret void, !dbg !654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !655 {
entry:
  ret void, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !657 {
entry:
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !659 {
entry:
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !661 {
entry:
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !663 {
entry:
  ret void, !dbg !664
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_017/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_67a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_017/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_67b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_017/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_67_bad", scope: !45, file: !45, line: 32, type: !55, scopeLine: 33, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 34, type: !42)
!58 = !DILocation(line: 34, column: 12, scope: !54)
!59 = !DILocalVariable(name: "myStruct", scope: !54, file: !45, line: 35, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_console_67_structType", file: !61, line: 8, baseType: !62)
!61 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_017/source_code")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE606_Unchecked_Loop_Condition__char_console_67_structType", file: !61, line: 5, size: 64, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !62, file: !61, line: 7, baseType: !42, size: 64)
!65 = !DILocation(line: 35, column: 65, scope: !54)
!66 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 36, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 100)
!70 = !DILocation(line: 36, column: 10, scope: !54)
!71 = !DILocation(line: 37, column: 12, scope: !54)
!72 = !DILocation(line: 37, column: 10, scope: !54)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !45, line: 40, type: !75)
!74 = distinct !DILexicalBlock(scope: !54, file: !45, line: 38, column: 5)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 40, column: 16, scope: !74)
!79 = !DILocation(line: 40, column: 33, scope: !74)
!80 = !DILocation(line: 40, column: 26, scope: !74)
!81 = !DILocation(line: 42, column: 17, scope: !82)
!82 = distinct !DILexicalBlock(scope: !74, file: !45, line: 42, column: 13)
!83 = !DILocation(line: 42, column: 16, scope: !82)
!84 = !DILocation(line: 42, column: 25, scope: !82)
!85 = !DILocation(line: 42, column: 13, scope: !74)
!86 = !DILocation(line: 45, column: 23, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !45, line: 45, column: 17)
!88 = distinct !DILexicalBlock(scope: !82, file: !45, line: 43, column: 9)
!89 = !DILocation(line: 45, column: 28, scope: !87)
!90 = !DILocation(line: 45, column: 27, scope: !87)
!91 = !DILocation(line: 45, column: 47, scope: !87)
!92 = !DILocation(line: 45, column: 46, scope: !87)
!93 = !DILocation(line: 45, column: 37, scope: !87)
!94 = !DILocation(line: 45, column: 57, scope: !87)
!95 = !DILocation(line: 45, column: 17, scope: !87)
!96 = !DILocation(line: 45, column: 64, scope: !87)
!97 = !DILocation(line: 45, column: 17, scope: !88)
!98 = !DILocation(line: 49, column: 34, scope: !99)
!99 = distinct !DILexicalBlock(scope: !87, file: !45, line: 46, column: 13)
!100 = !DILocation(line: 49, column: 27, scope: !99)
!101 = !DILocation(line: 49, column: 25, scope: !99)
!102 = !DILocation(line: 50, column: 21, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !45, line: 50, column: 21)
!104 = !DILocation(line: 50, column: 29, scope: !103)
!105 = !DILocation(line: 50, column: 33, scope: !103)
!106 = !DILocation(line: 50, column: 36, scope: !103)
!107 = !DILocation(line: 50, column: 41, scope: !103)
!108 = !DILocation(line: 50, column: 48, scope: !103)
!109 = !DILocation(line: 50, column: 52, scope: !103)
!110 = !DILocation(line: 50, column: 21, scope: !99)
!111 = !DILocation(line: 52, column: 21, scope: !112)
!112 = distinct !DILexicalBlock(scope: !103, file: !45, line: 51, column: 17)
!113 = !DILocation(line: 52, column: 26, scope: !112)
!114 = !DILocation(line: 52, column: 33, scope: !112)
!115 = !DILocation(line: 52, column: 37, scope: !112)
!116 = !DILocation(line: 53, column: 17, scope: !112)
!117 = !DILocation(line: 54, column: 13, scope: !99)
!118 = !DILocation(line: 57, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !87, file: !45, line: 56, column: 13)
!120 = !DILocation(line: 59, column: 17, scope: !119)
!121 = !DILocation(line: 59, column: 22, scope: !119)
!122 = !DILocation(line: 59, column: 31, scope: !119)
!123 = !DILocation(line: 61, column: 9, scope: !88)
!124 = !DILocation(line: 63, column: 28, scope: !54)
!125 = !DILocation(line: 63, column: 14, scope: !54)
!126 = !DILocation(line: 63, column: 26, scope: !54)
!127 = !DILocation(line: 64, column: 5, scope: !54)
!128 = !DILocation(line: 65, column: 1, scope: !54)
!129 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 73, type: !55, scopeLine: 74, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!130 = !DILocalVariable(name: "data", scope: !129, file: !45, line: 75, type: !42)
!131 = !DILocation(line: 75, column: 12, scope: !129)
!132 = !DILocalVariable(name: "myStruct", scope: !129, file: !45, line: 76, type: !60)
!133 = !DILocation(line: 76, column: 65, scope: !129)
!134 = !DILocalVariable(name: "dataBuffer", scope: !129, file: !45, line: 77, type: !67)
!135 = !DILocation(line: 77, column: 10, scope: !129)
!136 = !DILocation(line: 78, column: 12, scope: !129)
!137 = !DILocation(line: 78, column: 10, scope: !129)
!138 = !DILocation(line: 80, column: 12, scope: !129)
!139 = !DILocation(line: 80, column: 5, scope: !129)
!140 = !DILocation(line: 81, column: 28, scope: !129)
!141 = !DILocation(line: 81, column: 14, scope: !129)
!142 = !DILocation(line: 81, column: 26, scope: !129)
!143 = !DILocation(line: 82, column: 5, scope: !129)
!144 = !DILocation(line: 83, column: 1, scope: !129)
!145 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 87, type: !55, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!146 = !DILocalVariable(name: "data", scope: !145, file: !45, line: 89, type: !42)
!147 = !DILocation(line: 89, column: 12, scope: !145)
!148 = !DILocalVariable(name: "myStruct", scope: !145, file: !45, line: 90, type: !60)
!149 = !DILocation(line: 90, column: 65, scope: !145)
!150 = !DILocalVariable(name: "dataBuffer", scope: !145, file: !45, line: 91, type: !67)
!151 = !DILocation(line: 91, column: 10, scope: !145)
!152 = !DILocation(line: 92, column: 12, scope: !145)
!153 = !DILocation(line: 92, column: 10, scope: !145)
!154 = !DILocalVariable(name: "dataLen", scope: !155, file: !45, line: 95, type: !75)
!155 = distinct !DILexicalBlock(scope: !145, file: !45, line: 93, column: 5)
!156 = !DILocation(line: 95, column: 16, scope: !155)
!157 = !DILocation(line: 95, column: 33, scope: !155)
!158 = !DILocation(line: 95, column: 26, scope: !155)
!159 = !DILocation(line: 97, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !155, file: !45, line: 97, column: 13)
!161 = !DILocation(line: 97, column: 16, scope: !160)
!162 = !DILocation(line: 97, column: 25, scope: !160)
!163 = !DILocation(line: 97, column: 13, scope: !155)
!164 = !DILocation(line: 100, column: 23, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !45, line: 100, column: 17)
!166 = distinct !DILexicalBlock(scope: !160, file: !45, line: 98, column: 9)
!167 = !DILocation(line: 100, column: 28, scope: !165)
!168 = !DILocation(line: 100, column: 27, scope: !165)
!169 = !DILocation(line: 100, column: 47, scope: !165)
!170 = !DILocation(line: 100, column: 46, scope: !165)
!171 = !DILocation(line: 100, column: 37, scope: !165)
!172 = !DILocation(line: 100, column: 57, scope: !165)
!173 = !DILocation(line: 100, column: 17, scope: !165)
!174 = !DILocation(line: 100, column: 64, scope: !165)
!175 = !DILocation(line: 100, column: 17, scope: !166)
!176 = !DILocation(line: 104, column: 34, scope: !177)
!177 = distinct !DILexicalBlock(scope: !165, file: !45, line: 101, column: 13)
!178 = !DILocation(line: 104, column: 27, scope: !177)
!179 = !DILocation(line: 104, column: 25, scope: !177)
!180 = !DILocation(line: 105, column: 21, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !45, line: 105, column: 21)
!182 = !DILocation(line: 105, column: 29, scope: !181)
!183 = !DILocation(line: 105, column: 33, scope: !181)
!184 = !DILocation(line: 105, column: 36, scope: !181)
!185 = !DILocation(line: 105, column: 41, scope: !181)
!186 = !DILocation(line: 105, column: 48, scope: !181)
!187 = !DILocation(line: 105, column: 52, scope: !181)
!188 = !DILocation(line: 105, column: 21, scope: !177)
!189 = !DILocation(line: 107, column: 21, scope: !190)
!190 = distinct !DILexicalBlock(scope: !181, file: !45, line: 106, column: 17)
!191 = !DILocation(line: 107, column: 26, scope: !190)
!192 = !DILocation(line: 107, column: 33, scope: !190)
!193 = !DILocation(line: 107, column: 37, scope: !190)
!194 = !DILocation(line: 108, column: 17, scope: !190)
!195 = !DILocation(line: 109, column: 13, scope: !177)
!196 = !DILocation(line: 112, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !165, file: !45, line: 111, column: 13)
!198 = !DILocation(line: 114, column: 17, scope: !197)
!199 = !DILocation(line: 114, column: 22, scope: !197)
!200 = !DILocation(line: 114, column: 31, scope: !197)
!201 = !DILocation(line: 116, column: 9, scope: !166)
!202 = !DILocation(line: 118, column: 28, scope: !145)
!203 = !DILocation(line: 118, column: 14, scope: !145)
!204 = !DILocation(line: 118, column: 26, scope: !145)
!205 = !DILocation(line: 119, column: 5, scope: !145)
!206 = !DILocation(line: 120, column: 1, scope: !145)
!207 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_67_good", scope: !45, file: !45, line: 122, type: !55, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!208 = !DILocation(line: 124, column: 5, scope: !207)
!209 = !DILocation(line: 125, column: 5, scope: !207)
!210 = !DILocation(line: 126, column: 1, scope: !207)
!211 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_67b_badSink", scope: !49, file: !49, line: 33, type: !212, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !214}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_console_67_structType", file: !49, line: 29, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE606_Unchecked_Loop_Condition__char_console_67_structType", file: !49, line: 26, size: 64, elements: !216)
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !215, file: !49, line: 28, baseType: !42, size: 64)
!218 = !DILocalVariable(name: "myStruct", arg: 1, scope: !211, file: !49, line: 33, type: !214)
!219 = !DILocation(line: 33, column: 124, scope: !211)
!220 = !DILocalVariable(name: "data", scope: !211, file: !49, line: 35, type: !42)
!221 = !DILocation(line: 35, column: 12, scope: !211)
!222 = !DILocation(line: 35, column: 28, scope: !211)
!223 = !DILocalVariable(name: "i", scope: !224, file: !49, line: 37, type: !23)
!224 = distinct !DILexicalBlock(scope: !211, file: !49, line: 36, column: 5)
!225 = !DILocation(line: 37, column: 13, scope: !224)
!226 = !DILocalVariable(name: "n", scope: !224, file: !49, line: 37, type: !23)
!227 = !DILocation(line: 37, column: 16, scope: !224)
!228 = !DILocalVariable(name: "intVariable", scope: !224, file: !49, line: 37, type: !23)
!229 = !DILocation(line: 37, column: 19, scope: !224)
!230 = !DILocation(line: 38, column: 20, scope: !231)
!231 = distinct !DILexicalBlock(scope: !224, file: !49, line: 38, column: 13)
!232 = !DILocation(line: 38, column: 13, scope: !231)
!233 = !DILocation(line: 38, column: 36, scope: !231)
!234 = !DILocation(line: 38, column: 13, scope: !224)
!235 = !DILocation(line: 41, column: 25, scope: !236)
!236 = distinct !DILexicalBlock(scope: !231, file: !49, line: 39, column: 9)
!237 = !DILocation(line: 42, column: 20, scope: !238)
!238 = distinct !DILexicalBlock(scope: !236, file: !49, line: 42, column: 13)
!239 = !DILocation(line: 42, column: 18, scope: !238)
!240 = !DILocation(line: 42, column: 25, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !49, line: 42, column: 13)
!242 = !DILocation(line: 42, column: 29, scope: !241)
!243 = !DILocation(line: 42, column: 27, scope: !241)
!244 = !DILocation(line: 42, column: 13, scope: !238)
!245 = !DILocation(line: 45, column: 28, scope: !246)
!246 = distinct !DILexicalBlock(scope: !241, file: !49, line: 43, column: 13)
!247 = !DILocation(line: 46, column: 13, scope: !246)
!248 = !DILocation(line: 42, column: 33, scope: !241)
!249 = !DILocation(line: 42, column: 13, scope: !241)
!250 = distinct !{!250, !244, !251, !252}
!251 = !DILocation(line: 46, column: 13, scope: !238)
!252 = !{!"llvm.loop.mustprogress"}
!253 = !DILocation(line: 47, column: 26, scope: !236)
!254 = !DILocation(line: 47, column: 13, scope: !236)
!255 = !DILocation(line: 48, column: 9, scope: !236)
!256 = !DILocation(line: 50, column: 1, scope: !211)
!257 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_67b_goodG2BSink", scope: !49, file: !49, line: 57, type: !212, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!258 = !DILocalVariable(name: "myStruct", arg: 1, scope: !257, file: !49, line: 57, type: !214)
!259 = !DILocation(line: 57, column: 128, scope: !257)
!260 = !DILocalVariable(name: "data", scope: !257, file: !49, line: 59, type: !42)
!261 = !DILocation(line: 59, column: 12, scope: !257)
!262 = !DILocation(line: 59, column: 28, scope: !257)
!263 = !DILocalVariable(name: "i", scope: !264, file: !49, line: 61, type: !23)
!264 = distinct !DILexicalBlock(scope: !257, file: !49, line: 60, column: 5)
!265 = !DILocation(line: 61, column: 13, scope: !264)
!266 = !DILocalVariable(name: "n", scope: !264, file: !49, line: 61, type: !23)
!267 = !DILocation(line: 61, column: 16, scope: !264)
!268 = !DILocalVariable(name: "intVariable", scope: !264, file: !49, line: 61, type: !23)
!269 = !DILocation(line: 61, column: 19, scope: !264)
!270 = !DILocation(line: 62, column: 20, scope: !271)
!271 = distinct !DILexicalBlock(scope: !264, file: !49, line: 62, column: 13)
!272 = !DILocation(line: 62, column: 13, scope: !271)
!273 = !DILocation(line: 62, column: 36, scope: !271)
!274 = !DILocation(line: 62, column: 13, scope: !264)
!275 = !DILocation(line: 65, column: 25, scope: !276)
!276 = distinct !DILexicalBlock(scope: !271, file: !49, line: 63, column: 9)
!277 = !DILocation(line: 66, column: 20, scope: !278)
!278 = distinct !DILexicalBlock(scope: !276, file: !49, line: 66, column: 13)
!279 = !DILocation(line: 66, column: 18, scope: !278)
!280 = !DILocation(line: 66, column: 25, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !49, line: 66, column: 13)
!282 = !DILocation(line: 66, column: 29, scope: !281)
!283 = !DILocation(line: 66, column: 27, scope: !281)
!284 = !DILocation(line: 66, column: 13, scope: !278)
!285 = !DILocation(line: 69, column: 28, scope: !286)
!286 = distinct !DILexicalBlock(scope: !281, file: !49, line: 67, column: 13)
!287 = !DILocation(line: 70, column: 13, scope: !286)
!288 = !DILocation(line: 66, column: 33, scope: !281)
!289 = !DILocation(line: 66, column: 13, scope: !281)
!290 = distinct !{!290, !284, !291, !252}
!291 = !DILocation(line: 70, column: 13, scope: !278)
!292 = !DILocation(line: 71, column: 26, scope: !276)
!293 = !DILocation(line: 71, column: 13, scope: !276)
!294 = !DILocation(line: 72, column: 9, scope: !276)
!295 = !DILocation(line: 74, column: 1, scope: !257)
!296 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_67b_goodB2GSink", scope: !49, file: !49, line: 77, type: !212, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!297 = !DILocalVariable(name: "myStruct", arg: 1, scope: !296, file: !49, line: 77, type: !214)
!298 = !DILocation(line: 77, column: 128, scope: !296)
!299 = !DILocalVariable(name: "data", scope: !296, file: !49, line: 79, type: !42)
!300 = !DILocation(line: 79, column: 12, scope: !296)
!301 = !DILocation(line: 79, column: 28, scope: !296)
!302 = !DILocalVariable(name: "i", scope: !303, file: !49, line: 81, type: !23)
!303 = distinct !DILexicalBlock(scope: !296, file: !49, line: 80, column: 5)
!304 = !DILocation(line: 81, column: 13, scope: !303)
!305 = !DILocalVariable(name: "n", scope: !303, file: !49, line: 81, type: !23)
!306 = !DILocation(line: 81, column: 16, scope: !303)
!307 = !DILocalVariable(name: "intVariable", scope: !303, file: !49, line: 81, type: !23)
!308 = !DILocation(line: 81, column: 19, scope: !303)
!309 = !DILocation(line: 82, column: 20, scope: !310)
!310 = distinct !DILexicalBlock(scope: !303, file: !49, line: 82, column: 13)
!311 = !DILocation(line: 82, column: 13, scope: !310)
!312 = !DILocation(line: 82, column: 36, scope: !310)
!313 = !DILocation(line: 82, column: 13, scope: !303)
!314 = !DILocation(line: 85, column: 17, scope: !315)
!315 = distinct !DILexicalBlock(scope: !316, file: !49, line: 85, column: 17)
!316 = distinct !DILexicalBlock(scope: !310, file: !49, line: 83, column: 9)
!317 = !DILocation(line: 85, column: 19, scope: !315)
!318 = !DILocation(line: 85, column: 17, scope: !316)
!319 = !DILocation(line: 87, column: 29, scope: !320)
!320 = distinct !DILexicalBlock(scope: !315, file: !49, line: 86, column: 13)
!321 = !DILocation(line: 88, column: 24, scope: !322)
!322 = distinct !DILexicalBlock(scope: !320, file: !49, line: 88, column: 17)
!323 = !DILocation(line: 88, column: 22, scope: !322)
!324 = !DILocation(line: 88, column: 29, scope: !325)
!325 = distinct !DILexicalBlock(scope: !322, file: !49, line: 88, column: 17)
!326 = !DILocation(line: 88, column: 33, scope: !325)
!327 = !DILocation(line: 88, column: 31, scope: !325)
!328 = !DILocation(line: 88, column: 17, scope: !322)
!329 = !DILocation(line: 91, column: 32, scope: !330)
!330 = distinct !DILexicalBlock(scope: !325, file: !49, line: 89, column: 17)
!331 = !DILocation(line: 92, column: 17, scope: !330)
!332 = !DILocation(line: 88, column: 37, scope: !325)
!333 = !DILocation(line: 88, column: 17, scope: !325)
!334 = distinct !{!334, !328, !335, !252}
!335 = !DILocation(line: 92, column: 17, scope: !322)
!336 = !DILocation(line: 93, column: 30, scope: !320)
!337 = !DILocation(line: 93, column: 17, scope: !320)
!338 = !DILocation(line: 94, column: 13, scope: !320)
!339 = !DILocation(line: 95, column: 9, scope: !316)
!340 = !DILocation(line: 97, column: 1, scope: !296)
!341 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !342, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !42}
!344 = !DILocalVariable(name: "line", arg: 1, scope: !341, file: !3, line: 11, type: !42)
!345 = !DILocation(line: 11, column: 25, scope: !341)
!346 = !DILocation(line: 13, column: 1, scope: !341)
!347 = !DILocation(line: 14, column: 8, scope: !348)
!348 = distinct !DILexicalBlock(scope: !341, file: !3, line: 14, column: 8)
!349 = !DILocation(line: 14, column: 13, scope: !348)
!350 = !DILocation(line: 14, column: 8, scope: !341)
!351 = !DILocation(line: 16, column: 24, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !3, line: 15, column: 5)
!353 = !DILocation(line: 16, column: 9, scope: !352)
!354 = !DILocation(line: 17, column: 5, scope: !352)
!355 = !DILocation(line: 18, column: 5, scope: !341)
!356 = !DILocation(line: 19, column: 1, scope: !341)
!357 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !342, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!358 = !DILocalVariable(name: "line", arg: 1, scope: !357, file: !3, line: 20, type: !42)
!359 = !DILocation(line: 20, column: 29, scope: !357)
!360 = !DILocation(line: 22, column: 8, scope: !361)
!361 = distinct !DILexicalBlock(scope: !357, file: !3, line: 22, column: 8)
!362 = !DILocation(line: 22, column: 13, scope: !361)
!363 = !DILocation(line: 22, column: 8, scope: !357)
!364 = !DILocation(line: 24, column: 24, scope: !365)
!365 = distinct !DILexicalBlock(scope: !361, file: !3, line: 23, column: 5)
!366 = !DILocation(line: 24, column: 9, scope: !365)
!367 = !DILocation(line: 25, column: 5, scope: !365)
!368 = !DILocation(line: 26, column: 1, scope: !357)
!369 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !370, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !23)
!374 = !DILocalVariable(name: "line", arg: 1, scope: !369, file: !3, line: 27, type: !372)
!375 = !DILocation(line: 27, column: 29, scope: !369)
!376 = !DILocation(line: 29, column: 8, scope: !377)
!377 = distinct !DILexicalBlock(scope: !369, file: !3, line: 29, column: 8)
!378 = !DILocation(line: 29, column: 13, scope: !377)
!379 = !DILocation(line: 29, column: 8, scope: !369)
!380 = !DILocation(line: 31, column: 27, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !3, line: 30, column: 5)
!382 = !DILocation(line: 31, column: 9, scope: !381)
!383 = !DILocation(line: 32, column: 5, scope: !381)
!384 = !DILocation(line: 33, column: 1, scope: !369)
!385 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !386, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !23}
!388 = !DILocalVariable(name: "intNumber", arg: 1, scope: !385, file: !3, line: 35, type: !23)
!389 = !DILocation(line: 35, column: 24, scope: !385)
!390 = !DILocation(line: 37, column: 20, scope: !385)
!391 = !DILocation(line: 37, column: 5, scope: !385)
!392 = !DILocation(line: 38, column: 1, scope: !385)
!393 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !394, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !396}
!396 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!397 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !393, file: !3, line: 40, type: !396)
!398 = !DILocation(line: 40, column: 28, scope: !393)
!399 = !DILocation(line: 42, column: 21, scope: !393)
!400 = !DILocation(line: 42, column: 5, scope: !393)
!401 = !DILocation(line: 43, column: 1, scope: !393)
!402 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !403, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !405}
!405 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!406 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !402, file: !3, line: 45, type: !405)
!407 = !DILocation(line: 45, column: 28, scope: !402)
!408 = !DILocation(line: 47, column: 20, scope: !402)
!409 = !DILocation(line: 47, column: 5, scope: !402)
!410 = !DILocation(line: 48, column: 1, scope: !402)
!411 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !412, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !414}
!414 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!415 = !DILocalVariable(name: "longNumber", arg: 1, scope: !411, file: !3, line: 50, type: !414)
!416 = !DILocation(line: 50, column: 26, scope: !411)
!417 = !DILocation(line: 52, column: 21, scope: !411)
!418 = !DILocation(line: 52, column: 5, scope: !411)
!419 = !DILocation(line: 53, column: 1, scope: !411)
!420 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !421, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !423}
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !424, line: 27, baseType: !425)
!424 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !426, line: 44, baseType: !414)
!426 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!427 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !420, file: !3, line: 55, type: !423)
!428 = !DILocation(line: 55, column: 33, scope: !420)
!429 = !DILocation(line: 57, column: 29, scope: !420)
!430 = !DILocation(line: 57, column: 5, scope: !420)
!431 = !DILocation(line: 58, column: 1, scope: !420)
!432 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !433, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !75}
!435 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !432, file: !3, line: 60, type: !75)
!436 = !DILocation(line: 60, column: 29, scope: !432)
!437 = !DILocation(line: 62, column: 21, scope: !432)
!438 = !DILocation(line: 62, column: 5, scope: !432)
!439 = !DILocation(line: 63, column: 1, scope: !432)
!440 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !441, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !43}
!443 = !DILocalVariable(name: "charHex", arg: 1, scope: !440, file: !3, line: 65, type: !43)
!444 = !DILocation(line: 65, column: 29, scope: !440)
!445 = !DILocation(line: 67, column: 22, scope: !440)
!446 = !DILocation(line: 67, column: 5, scope: !440)
!447 = !DILocation(line: 68, column: 1, scope: !440)
!448 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !449, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !373}
!451 = !DILocalVariable(name: "wideChar", arg: 1, scope: !448, file: !3, line: 70, type: !373)
!452 = !DILocation(line: 70, column: 29, scope: !448)
!453 = !DILocalVariable(name: "s", scope: !448, file: !3, line: 74, type: !454)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 64, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 2)
!457 = !DILocation(line: 74, column: 13, scope: !448)
!458 = !DILocation(line: 75, column: 16, scope: !448)
!459 = !DILocation(line: 75, column: 9, scope: !448)
!460 = !DILocation(line: 75, column: 14, scope: !448)
!461 = !DILocation(line: 76, column: 9, scope: !448)
!462 = !DILocation(line: 76, column: 14, scope: !448)
!463 = !DILocation(line: 77, column: 21, scope: !448)
!464 = !DILocation(line: 77, column: 5, scope: !448)
!465 = !DILocation(line: 78, column: 1, scope: !448)
!466 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !467, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !7}
!469 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !466, file: !3, line: 80, type: !7)
!470 = !DILocation(line: 80, column: 33, scope: !466)
!471 = !DILocation(line: 82, column: 20, scope: !466)
!472 = !DILocation(line: 82, column: 5, scope: !466)
!473 = !DILocation(line: 83, column: 1, scope: !466)
!474 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !475, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !25}
!477 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !474, file: !3, line: 85, type: !25)
!478 = !DILocation(line: 85, column: 45, scope: !474)
!479 = !DILocation(line: 87, column: 22, scope: !474)
!480 = !DILocation(line: 87, column: 5, scope: !474)
!481 = !DILocation(line: 88, column: 1, scope: !474)
!482 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !483, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !485}
!485 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!486 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !482, file: !3, line: 90, type: !485)
!487 = !DILocation(line: 90, column: 29, scope: !482)
!488 = !DILocation(line: 92, column: 20, scope: !482)
!489 = !DILocation(line: 92, column: 5, scope: !482)
!490 = !DILocation(line: 93, column: 1, scope: !482)
!491 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !492, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !494}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !496, line: 100, baseType: !497)
!496 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_017/source_code")
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !496, line: 96, size: 64, elements: !498)
!498 = !{!499, !500}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !497, file: !496, line: 98, baseType: !23, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !497, file: !496, line: 99, baseType: !23, size: 32, offset: 32)
!501 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !491, file: !3, line: 95, type: !494)
!502 = !DILocation(line: 95, column: 40, scope: !491)
!503 = !DILocation(line: 97, column: 26, scope: !491)
!504 = !DILocation(line: 97, column: 47, scope: !491)
!505 = !DILocation(line: 97, column: 55, scope: !491)
!506 = !DILocation(line: 97, column: 76, scope: !491)
!507 = !DILocation(line: 97, column: 5, scope: !491)
!508 = !DILocation(line: 98, column: 1, scope: !491)
!509 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !510, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !512, !75}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!513 = !DILocalVariable(name: "bytes", arg: 1, scope: !509, file: !3, line: 100, type: !512)
!514 = !DILocation(line: 100, column: 38, scope: !509)
!515 = !DILocalVariable(name: "numBytes", arg: 2, scope: !509, file: !3, line: 100, type: !75)
!516 = !DILocation(line: 100, column: 52, scope: !509)
!517 = !DILocalVariable(name: "i", scope: !509, file: !3, line: 102, type: !75)
!518 = !DILocation(line: 102, column: 12, scope: !509)
!519 = !DILocation(line: 103, column: 12, scope: !520)
!520 = distinct !DILexicalBlock(scope: !509, file: !3, line: 103, column: 5)
!521 = !DILocation(line: 103, column: 10, scope: !520)
!522 = !DILocation(line: 103, column: 17, scope: !523)
!523 = distinct !DILexicalBlock(scope: !520, file: !3, line: 103, column: 5)
!524 = !DILocation(line: 103, column: 21, scope: !523)
!525 = !DILocation(line: 103, column: 19, scope: !523)
!526 = !DILocation(line: 103, column: 5, scope: !520)
!527 = !DILocation(line: 105, column: 24, scope: !528)
!528 = distinct !DILexicalBlock(scope: !523, file: !3, line: 104, column: 5)
!529 = !DILocation(line: 105, column: 30, scope: !528)
!530 = !DILocation(line: 105, column: 9, scope: !528)
!531 = !DILocation(line: 106, column: 5, scope: !528)
!532 = !DILocation(line: 103, column: 31, scope: !523)
!533 = !DILocation(line: 103, column: 5, scope: !523)
!534 = distinct !{!534, !526, !535, !252}
!535 = !DILocation(line: 106, column: 5, scope: !520)
!536 = !DILocation(line: 107, column: 5, scope: !509)
!537 = !DILocation(line: 108, column: 1, scope: !509)
!538 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !539, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!539 = !DISubroutineType(types: !540)
!540 = !{!75, !512, !75, !42}
!541 = !DILocalVariable(name: "bytes", arg: 1, scope: !538, file: !3, line: 113, type: !512)
!542 = !DILocation(line: 113, column: 39, scope: !538)
!543 = !DILocalVariable(name: "numBytes", arg: 2, scope: !538, file: !3, line: 113, type: !75)
!544 = !DILocation(line: 113, column: 53, scope: !538)
!545 = !DILocalVariable(name: "hex", arg: 3, scope: !538, file: !3, line: 113, type: !42)
!546 = !DILocation(line: 113, column: 71, scope: !538)
!547 = !DILocalVariable(name: "numWritten", scope: !538, file: !3, line: 115, type: !75)
!548 = !DILocation(line: 115, column: 12, scope: !538)
!549 = !DILocation(line: 121, column: 5, scope: !538)
!550 = !DILocation(line: 121, column: 12, scope: !538)
!551 = !DILocation(line: 121, column: 25, scope: !538)
!552 = !DILocation(line: 121, column: 23, scope: !538)
!553 = !DILocation(line: 121, column: 34, scope: !538)
!554 = !DILocation(line: 121, column: 37, scope: !538)
!555 = !DILocation(line: 121, column: 67, scope: !538)
!556 = !DILocation(line: 121, column: 70, scope: !538)
!557 = !DILocation(line: 0, scope: !538)
!558 = !DILocalVariable(name: "byte", scope: !559, file: !3, line: 123, type: !23)
!559 = distinct !DILexicalBlock(scope: !538, file: !3, line: 122, column: 5)
!560 = !DILocation(line: 123, column: 13, scope: !559)
!561 = !DILocation(line: 124, column: 17, scope: !559)
!562 = !DILocation(line: 124, column: 25, scope: !559)
!563 = !DILocation(line: 124, column: 23, scope: !559)
!564 = !DILocation(line: 124, column: 9, scope: !559)
!565 = !DILocation(line: 125, column: 45, scope: !559)
!566 = !DILocation(line: 125, column: 29, scope: !559)
!567 = !DILocation(line: 125, column: 9, scope: !559)
!568 = !DILocation(line: 125, column: 15, scope: !559)
!569 = !DILocation(line: 125, column: 27, scope: !559)
!570 = !DILocation(line: 126, column: 9, scope: !559)
!571 = distinct !{!571, !549, !572, !252}
!572 = !DILocation(line: 127, column: 5, scope: !538)
!573 = !DILocation(line: 129, column: 12, scope: !538)
!574 = !DILocation(line: 129, column: 5, scope: !538)
!575 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !576, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DISubroutineType(types: !577)
!577 = !{!75, !512, !75, !372}
!578 = !DILocalVariable(name: "bytes", arg: 1, scope: !575, file: !3, line: 135, type: !512)
!579 = !DILocation(line: 135, column: 41, scope: !575)
!580 = !DILocalVariable(name: "numBytes", arg: 2, scope: !575, file: !3, line: 135, type: !75)
!581 = !DILocation(line: 135, column: 55, scope: !575)
!582 = !DILocalVariable(name: "hex", arg: 3, scope: !575, file: !3, line: 135, type: !372)
!583 = !DILocation(line: 135, column: 76, scope: !575)
!584 = !DILocalVariable(name: "numWritten", scope: !575, file: !3, line: 137, type: !75)
!585 = !DILocation(line: 137, column: 12, scope: !575)
!586 = !DILocation(line: 143, column: 5, scope: !575)
!587 = !DILocation(line: 143, column: 12, scope: !575)
!588 = !DILocation(line: 143, column: 25, scope: !575)
!589 = !DILocation(line: 143, column: 23, scope: !575)
!590 = !DILocation(line: 143, column: 34, scope: !575)
!591 = !DILocation(line: 143, column: 47, scope: !575)
!592 = !DILocation(line: 143, column: 55, scope: !575)
!593 = !DILocation(line: 143, column: 53, scope: !575)
!594 = !DILocation(line: 143, column: 37, scope: !575)
!595 = !DILocation(line: 143, column: 68, scope: !575)
!596 = !DILocation(line: 143, column: 81, scope: !575)
!597 = !DILocation(line: 143, column: 89, scope: !575)
!598 = !DILocation(line: 143, column: 87, scope: !575)
!599 = !DILocation(line: 143, column: 100, scope: !575)
!600 = !DILocation(line: 143, column: 71, scope: !575)
!601 = !DILocation(line: 0, scope: !575)
!602 = !DILocalVariable(name: "byte", scope: !603, file: !3, line: 145, type: !23)
!603 = distinct !DILexicalBlock(scope: !575, file: !3, line: 144, column: 5)
!604 = !DILocation(line: 145, column: 13, scope: !603)
!605 = !DILocation(line: 146, column: 18, scope: !603)
!606 = !DILocation(line: 146, column: 26, scope: !603)
!607 = !DILocation(line: 146, column: 24, scope: !603)
!608 = !DILocation(line: 146, column: 9, scope: !603)
!609 = !DILocation(line: 147, column: 45, scope: !603)
!610 = !DILocation(line: 147, column: 29, scope: !603)
!611 = !DILocation(line: 147, column: 9, scope: !603)
!612 = !DILocation(line: 147, column: 15, scope: !603)
!613 = !DILocation(line: 147, column: 27, scope: !603)
!614 = !DILocation(line: 148, column: 9, scope: !603)
!615 = distinct !{!615, !586, !616, !252}
!616 = !DILocation(line: 149, column: 5, scope: !575)
!617 = !DILocation(line: 151, column: 12, scope: !575)
!618 = !DILocation(line: 151, column: 5, scope: !575)
!619 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !620, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!620 = !DISubroutineType(types: !621)
!621 = !{!23}
!622 = !DILocation(line: 158, column: 5, scope: !619)
!623 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !620, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!624 = !DILocation(line: 163, column: 5, scope: !623)
!625 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !620, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!626 = !DILocation(line: 168, column: 13, scope: !625)
!627 = !DILocation(line: 168, column: 20, scope: !625)
!628 = !DILocation(line: 168, column: 5, scope: !625)
!629 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!630 = !DILocation(line: 187, column: 16, scope: !629)
!631 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!632 = !DILocation(line: 188, column: 16, scope: !631)
!633 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!634 = !DILocation(line: 189, column: 16, scope: !633)
!635 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!636 = !DILocation(line: 190, column: 16, scope: !635)
!637 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!638 = !DILocation(line: 191, column: 16, scope: !637)
!639 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!640 = !DILocation(line: 192, column: 16, scope: !639)
!641 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!642 = !DILocation(line: 193, column: 16, scope: !641)
!643 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!644 = !DILocation(line: 194, column: 16, scope: !643)
!645 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!646 = !DILocation(line: 195, column: 16, scope: !645)
!647 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!648 = !DILocation(line: 198, column: 15, scope: !647)
!649 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!650 = !DILocation(line: 199, column: 15, scope: !649)
!651 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!652 = !DILocation(line: 200, column: 15, scope: !651)
!653 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!654 = !DILocation(line: 201, column: 15, scope: !653)
!655 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!656 = !DILocation(line: 202, column: 15, scope: !655)
!657 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!658 = !DILocation(line: 203, column: 15, scope: !657)
!659 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!660 = !DILocation(line: 204, column: 15, scope: !659)
!661 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!662 = !DILocation(line: 205, column: 15, scope: !661)
!663 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!664 = !DILocation(line: 206, column: 15, scope: !663)
