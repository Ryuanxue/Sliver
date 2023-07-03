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
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.16 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9.20 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16.21 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_52_bad() #0 !dbg !56 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
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
  %2 = load i64, i64* %dataLen, align 8, !dbg !76
  %sub = sub i64 100, %2, !dbg !78
  %cmp = icmp ugt i64 %sub, 1, !dbg !79
  br i1 %cmp, label %if.then, label %if.end18, !dbg !80

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !81
  %4 = load i64, i64* %dataLen, align 8, !dbg !84
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !85
  %5 = load i64, i64* %dataLen, align 8, !dbg !86
  %sub1 = sub i64 100, %5, !dbg !87
  %conv = trunc i64 %sub1 to i32, !dbg !88
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !89
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !90
  %cmp3 = icmp ne i8* %call2, null, !dbg !91
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !92

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !93
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !95
  store i64 %call6, i64* %dataLen, align 8, !dbg !96
  %8 = load i64, i64* %dataLen, align 8, !dbg !97
  %cmp7 = icmp ugt i64 %8, 0, !dbg !99
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !100

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !101
  %10 = load i64, i64* %dataLen, align 8, !dbg !102
  %sub9 = sub i64 %10, 1, !dbg !103
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !101
  %11 = load i8, i8* %arrayidx, align 1, !dbg !101
  %conv10 = sext i8 %11 to i32, !dbg !101
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !104
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !105

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !106
  %13 = load i64, i64* %dataLen, align 8, !dbg !108
  %sub14 = sub i64 %13, 1, !dbg !109
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !106
  store i8 0, i8* %arrayidx15, align 1, !dbg !110
  br label %if.end, !dbg !111

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !112

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !113
  %14 = load i8*, i8** %data, align 8, !dbg !115
  %15 = load i64, i64* %dataLen, align 8, !dbg !116
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !115
  store i8 0, i8* %arrayidx16, align 1, !dbg !117
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !118

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !119
  call void @CWE606_Unchecked_Loop_Condition__char_console_52b_badSink(i8* %16), !dbg !120
  ret void, !dbg !121
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !122 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !125, metadata !DIExpression()), !dbg !126
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !126
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !126
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !127
  store i8* %arraydecay, i8** %data, align 8, !dbg !128
  %1 = load i8*, i8** %data, align 8, !dbg !129
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !130
  %2 = load i8*, i8** %data, align 8, !dbg !131
  call void @CWE606_Unchecked_Loop_Condition__char_console_52b_goodG2BSink(i8* %2), !dbg !132
  ret void, !dbg !133
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !134 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !137, metadata !DIExpression()), !dbg !138
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !138
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !138
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !139
  store i8* %arraydecay, i8** %data, align 8, !dbg !140
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !141, metadata !DIExpression()), !dbg !143
  %1 = load i8*, i8** %data, align 8, !dbg !144
  %call = call i64 @strlen(i8* %1) #7, !dbg !145
  store i64 %call, i64* %dataLen, align 8, !dbg !143
  %2 = load i64, i64* %dataLen, align 8, !dbg !146
  %sub = sub i64 100, %2, !dbg !148
  %cmp = icmp ugt i64 %sub, 1, !dbg !149
  br i1 %cmp, label %if.then, label %if.end18, !dbg !150

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !151
  %4 = load i64, i64* %dataLen, align 8, !dbg !154
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !155
  %5 = load i64, i64* %dataLen, align 8, !dbg !156
  %sub1 = sub i64 100, %5, !dbg !157
  %conv = trunc i64 %sub1 to i32, !dbg !158
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !159
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !160
  %cmp3 = icmp ne i8* %call2, null, !dbg !161
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !162

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !163
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !165
  store i64 %call6, i64* %dataLen, align 8, !dbg !166
  %8 = load i64, i64* %dataLen, align 8, !dbg !167
  %cmp7 = icmp ugt i64 %8, 0, !dbg !169
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !170

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !171
  %10 = load i64, i64* %dataLen, align 8, !dbg !172
  %sub9 = sub i64 %10, 1, !dbg !173
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !171
  %11 = load i8, i8* %arrayidx, align 1, !dbg !171
  %conv10 = sext i8 %11 to i32, !dbg !171
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !174
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !175

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !176
  %13 = load i64, i64* %dataLen, align 8, !dbg !178
  %sub14 = sub i64 %13, 1, !dbg !179
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !176
  store i8 0, i8* %arrayidx15, align 1, !dbg !180
  br label %if.end, !dbg !181

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !182

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !183
  %14 = load i8*, i8** %data, align 8, !dbg !185
  %15 = load i64, i64* %dataLen, align 8, !dbg !186
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !185
  store i8 0, i8* %arrayidx16, align 1, !dbg !187
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !188

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !189
  call void @CWE606_Unchecked_Loop_Condition__char_console_52b_goodB2GSink(i8* %16), !dbg !190
  ret void, !dbg !191
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_52_good() #0 !dbg !192 {
entry:
  call void @goodG2B(), !dbg !193
  call void @goodB2G(), !dbg !194
  ret void, !dbg !195
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_52b_badSink(i8* %data) #0 !dbg !196 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !199, metadata !DIExpression()), !dbg !200
  %0 = load i8*, i8** %data.addr, align 8, !dbg !201
  call void @CWE606_Unchecked_Loop_Condition__char_console_52c_badSink(i8* %0), !dbg !202
  ret void, !dbg !203
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_52b_goodG2BSink(i8* %data) #0 !dbg !204 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !205, metadata !DIExpression()), !dbg !206
  %0 = load i8*, i8** %data.addr, align 8, !dbg !207
  call void @CWE606_Unchecked_Loop_Condition__char_console_52c_goodG2BSink(i8* %0), !dbg !208
  ret void, !dbg !209
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_52b_goodB2GSink(i8* %data) #0 !dbg !210 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !211, metadata !DIExpression()), !dbg !212
  %0 = load i8*, i8** %data.addr, align 8, !dbg !213
  call void @CWE606_Unchecked_Loop_Condition__char_console_52c_goodB2GSink(i8* %0), !dbg !214
  ret void, !dbg !215
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_52c_badSink(i8* %data) #0 !dbg !216 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !217, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.declare(metadata i32* %i, metadata !219, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata i32* %n, metadata !222, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !224, metadata !DIExpression()), !dbg !225
  %0 = load i8*, i8** %data.addr, align 8, !dbg !226
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %n) #8, !dbg !228
  %cmp = icmp eq i32 %call, 1, !dbg !229
  br i1 %cmp, label %if.then, label %if.end, !dbg !230

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !231
  store i32 0, i32* %i, align 4, !dbg !233
  br label %for.cond, !dbg !235

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !236
  %2 = load i32, i32* %n, align 4, !dbg !238
  %cmp1 = icmp slt i32 %1, %2, !dbg !239
  br i1 %cmp1, label %for.body, label %for.end, !dbg !240

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !241
  %inc = add nsw i32 %3, 1, !dbg !241
  store i32 %inc, i32* %intVariable, align 4, !dbg !241
  br label %for.inc, !dbg !243

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !244
  %inc2 = add nsw i32 %4, 1, !dbg !244
  store i32 %inc2, i32* %i, align 4, !dbg !244
  br label %for.cond, !dbg !245, !llvm.loop !246

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !249
  call void @printIntLine(i32 %5), !dbg !250
  br label %if.end, !dbg !251

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !252
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_52c_goodG2BSink(i8* %data) #0 !dbg !253 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !254, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.declare(metadata i32* %i, metadata !256, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata i32* %n, metadata !259, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !261, metadata !DIExpression()), !dbg !262
  %0 = load i8*, i8** %data.addr, align 8, !dbg !263
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %n) #8, !dbg !265
  %cmp = icmp eq i32 %call, 1, !dbg !266
  br i1 %cmp, label %if.then, label %if.end, !dbg !267

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !268
  store i32 0, i32* %i, align 4, !dbg !270
  br label %for.cond, !dbg !272

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !273
  %2 = load i32, i32* %n, align 4, !dbg !275
  %cmp1 = icmp slt i32 %1, %2, !dbg !276
  br i1 %cmp1, label %for.body, label %for.end, !dbg !277

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !278
  %inc = add nsw i32 %3, 1, !dbg !278
  store i32 %inc, i32* %intVariable, align 4, !dbg !278
  br label %for.inc, !dbg !280

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !281
  %inc2 = add nsw i32 %4, 1, !dbg !281
  store i32 %inc2, i32* %i, align 4, !dbg !281
  br label %for.cond, !dbg !282, !llvm.loop !283

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !285
  call void @printIntLine(i32 %5), !dbg !286
  br label %if.end, !dbg !287

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !288
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_52c_goodB2GSink(i8* %data) #0 !dbg !289 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !290, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.declare(metadata i32* %i, metadata !292, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata i32* %n, metadata !295, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !297, metadata !DIExpression()), !dbg !298
  %0 = load i8*, i8** %data.addr, align 8, !dbg !299
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %n) #8, !dbg !301
  %cmp = icmp eq i32 %call, 1, !dbg !302
  br i1 %cmp, label %if.then, label %if.end5, !dbg !303

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !304
  %cmp1 = icmp slt i32 %1, 10000, !dbg !307
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !308

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !309
  store i32 0, i32* %i, align 4, !dbg !311
  br label %for.cond, !dbg !313

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !314
  %3 = load i32, i32* %n, align 4, !dbg !316
  %cmp3 = icmp slt i32 %2, %3, !dbg !317
  br i1 %cmp3, label %for.body, label %for.end, !dbg !318

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !319
  %inc = add nsw i32 %4, 1, !dbg !319
  store i32 %inc, i32* %intVariable, align 4, !dbg !319
  br label %for.inc, !dbg !321

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !322
  %inc4 = add nsw i32 %5, 1, !dbg !322
  store i32 %inc4, i32* %i, align 4, !dbg !322
  br label %for.cond, !dbg !323, !llvm.loop !324

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !326
  call void @printIntLine(i32 %6), !dbg !327
  br label %if.end, !dbg !328

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !329

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !330
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !331 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !332, metadata !DIExpression()), !dbg !333
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0)), !dbg !334
  %0 = load i8*, i8** %line.addr, align 8, !dbg !335
  %cmp = icmp ne i8* %0, null, !dbg !337
  br i1 %cmp, label %if.then, label %if.end, !dbg !338

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !339
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.17, i64 0, i64 0), i8* %1), !dbg !341
  br label %if.end, !dbg !342

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !343
  ret void, !dbg !344
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !345 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !346, metadata !DIExpression()), !dbg !347
  %0 = load i8*, i8** %line.addr, align 8, !dbg !348
  %cmp = icmp ne i8* %0, null, !dbg !350
  br i1 %cmp, label %if.then, label %if.end, !dbg !351

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !352
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.17, i64 0, i64 0), i8* %1), !dbg !354
  br label %if.end, !dbg !355

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !356
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !357 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !362, metadata !DIExpression()), !dbg !363
  %0 = load i32*, i32** %line.addr, align 8, !dbg !364
  %cmp = icmp ne i32* %0, null, !dbg !366
  br i1 %cmp, label %if.then, label %if.end, !dbg !367

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !368
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !370
  br label %if.end, !dbg !371

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !372
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !373 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !378
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !381 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !387
  %conv = sext i16 %0 to i32, !dbg !387
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !388
  ret void, !dbg !389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !390 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !394, metadata !DIExpression()), !dbg !395
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !396
  %conv = fpext float %0 to double, !dbg !396
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !397
  ret void, !dbg !398
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !399 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !408 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !415, metadata !DIExpression()), !dbg !416
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !417
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !418
  ret void, !dbg !419
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !420 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !423, metadata !DIExpression()), !dbg !424
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !425
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !426
  ret void, !dbg !427
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !428 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !431, metadata !DIExpression()), !dbg !432
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !433
  %conv = sext i8 %0 to i32, !dbg !433
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.20, i64 0, i64 0), i32 %conv), !dbg !434
  ret void, !dbg !435
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !436 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !439, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !441, metadata !DIExpression()), !dbg !445
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !446
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !447
  store i32 %0, i32* %arrayidx, align 4, !dbg !448
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !449
  store i32 0, i32* %arrayidx1, align 4, !dbg !450
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !451
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !452
  ret void, !dbg !453
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !454 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !457, metadata !DIExpression()), !dbg !458
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !459
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !460
  ret void, !dbg !461
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !462 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !465, metadata !DIExpression()), !dbg !466
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !467
  %conv = zext i8 %0 to i32, !dbg !467
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.20, i64 0, i64 0), i32 %conv), !dbg !468
  ret void, !dbg !469
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !470 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !474, metadata !DIExpression()), !dbg !475
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !476
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !477
  ret void, !dbg !478
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !479 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !489, metadata !DIExpression()), !dbg !490
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !491
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !492
  %1 = load i32, i32* %intOne, align 4, !dbg !492
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !493
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !494
  %3 = load i32, i32* %intTwo, align 4, !dbg !494
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !495
  ret void, !dbg !496
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !497 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !501, metadata !DIExpression()), !dbg !502
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !503, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.declare(metadata i64* %i, metadata !505, metadata !DIExpression()), !dbg !506
  store i64 0, i64* %i, align 8, !dbg !507
  br label %for.cond, !dbg !509

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !510
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !512
  %cmp = icmp ult i64 %0, %1, !dbg !513
  br i1 %cmp, label %for.body, label %for.end, !dbg !514

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !515
  %3 = load i64, i64* %i, align 8, !dbg !517
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !515
  %4 = load i8, i8* %arrayidx, align 1, !dbg !515
  %conv = zext i8 %4 to i32, !dbg !515
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !518
  br label %for.inc, !dbg !519

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !520
  %inc = add i64 %5, 1, !dbg !520
  store i64 %inc, i64* %i, align 8, !dbg !520
  br label %for.cond, !dbg !521, !llvm.loop !522

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !524
  ret void, !dbg !525
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !526 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !529, metadata !DIExpression()), !dbg !530
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !531, metadata !DIExpression()), !dbg !532
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !533, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !535, metadata !DIExpression()), !dbg !536
  store i64 0, i64* %numWritten, align 8, !dbg !536
  br label %while.cond, !dbg !537

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !538
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !539
  %cmp = icmp ult i64 %0, %1, !dbg !540
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !541

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !542
  %2 = load i16*, i16** %call, align 8, !dbg !542
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !542
  %4 = load i64, i64* %numWritten, align 8, !dbg !542
  %mul = mul i64 2, %4, !dbg !542
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !542
  %5 = load i8, i8* %arrayidx, align 1, !dbg !542
  %conv = sext i8 %5 to i32, !dbg !542
  %idxprom = sext i32 %conv to i64, !dbg !542
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !542
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !542
  %conv2 = zext i16 %6 to i32, !dbg !542
  %and = and i32 %conv2, 4096, !dbg !542
  %tobool = icmp ne i32 %and, 0, !dbg !542
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !543

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !544
  %7 = load i16*, i16** %call3, align 8, !dbg !544
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !544
  %9 = load i64, i64* %numWritten, align 8, !dbg !544
  %mul4 = mul i64 2, %9, !dbg !544
  %add = add i64 %mul4, 1, !dbg !544
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !544
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !544
  %conv6 = sext i8 %10 to i32, !dbg !544
  %idxprom7 = sext i32 %conv6 to i64, !dbg !544
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !544
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !544
  %conv9 = zext i16 %11 to i32, !dbg !544
  %and10 = and i32 %conv9, 4096, !dbg !544
  %tobool11 = icmp ne i32 %and10, 0, !dbg !543
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !545
  br i1 %12, label %while.body, label %while.end, !dbg !537

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !546, metadata !DIExpression()), !dbg !548
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !549
  %14 = load i64, i64* %numWritten, align 8, !dbg !550
  %mul12 = mul i64 2, %14, !dbg !551
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !549
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !552
  %15 = load i32, i32* %byte, align 4, !dbg !553
  %conv15 = trunc i32 %15 to i8, !dbg !554
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !555
  %17 = load i64, i64* %numWritten, align 8, !dbg !556
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !555
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !557
  %18 = load i64, i64* %numWritten, align 8, !dbg !558
  %inc = add i64 %18, 1, !dbg !558
  store i64 %inc, i64* %numWritten, align 8, !dbg !558
  br label %while.cond, !dbg !537, !llvm.loop !559

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !561
  ret i64 %19, !dbg !562
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !563 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !566, metadata !DIExpression()), !dbg !567
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !568, metadata !DIExpression()), !dbg !569
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !570, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !572, metadata !DIExpression()), !dbg !573
  store i64 0, i64* %numWritten, align 8, !dbg !573
  br label %while.cond, !dbg !574

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !575
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !576
  %cmp = icmp ult i64 %0, %1, !dbg !577
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !578

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !579
  %3 = load i64, i64* %numWritten, align 8, !dbg !580
  %mul = mul i64 2, %3, !dbg !581
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !579
  %4 = load i32, i32* %arrayidx, align 4, !dbg !579
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !582
  %tobool = icmp ne i32 %call, 0, !dbg !582
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !583

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !584
  %6 = load i64, i64* %numWritten, align 8, !dbg !585
  %mul1 = mul i64 2, %6, !dbg !586
  %add = add i64 %mul1, 1, !dbg !587
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !584
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !584
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !588
  %tobool4 = icmp ne i32 %call3, 0, !dbg !583
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !589
  br i1 %8, label %while.body, label %while.end, !dbg !574

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !590, metadata !DIExpression()), !dbg !592
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !593
  %10 = load i64, i64* %numWritten, align 8, !dbg !594
  %mul5 = mul i64 2, %10, !dbg !595
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !593
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16.21, i64 0, i64 0), i32* %byte) #8, !dbg !596
  %11 = load i32, i32* %byte, align 4, !dbg !597
  %conv = trunc i32 %11 to i8, !dbg !598
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !599
  %13 = load i64, i64* %numWritten, align 8, !dbg !600
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !599
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !601
  %14 = load i64, i64* %numWritten, align 8, !dbg !602
  %inc = add i64 %14, 1, !dbg !602
  store i64 %inc, i64* %numWritten, align 8, !dbg !602
  br label %while.cond, !dbg !574, !llvm.loop !603

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !605
  ret i64 %15, !dbg !606
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !607 {
entry:
  ret i32 1, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !611 {
entry:
  ret i32 0, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !613 {
entry:
  %call = call i32 @rand() #8, !dbg !614
  %rem = srem i32 %call, 2, !dbg !615
  ret i32 %rem, !dbg !616
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !617 {
entry:
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !619 {
entry:
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !621 {
entry:
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !623 {
entry:
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !625 {
entry:
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !627 {
entry:
  ret void, !dbg !628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !629 {
entry:
  ret void, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !631 {
entry:
  ret void, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !633 {
entry:
  ret void, !dbg !634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !635 {
entry:
  ret void, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !637 {
entry:
  ret void, !dbg !638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !639 {
entry:
  ret void, !dbg !640
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !641 {
entry:
  ret void, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !643 {
entry:
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !645 {
entry:
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !647 {
entry:
  ret void, !dbg !648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !649 {
entry:
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !651 {
entry:
  ret void, !dbg !652
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

!llvm.dbg.cu = !{!44, !48, !50, !2}
!llvm.ident = !{!52, !52, !52, !52}
!llvm.module.flags = !{!53, !54, !55}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_008/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_52a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_008/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_52b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_008/source_code")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_52c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_008/source_code")
!52 = !{!"clang version 12.0.0"}
!53 = !{i32 7, !"Dwarf Version", i32 4}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 4}
!56 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_52_bad", scope: !45, file: !45, line: 31, type: !57, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!57 = !DISubroutineType(types: !58)
!58 = !{null}
!59 = !DILocalVariable(name: "data", scope: !56, file: !45, line: 33, type: !42)
!60 = !DILocation(line: 33, column: 12, scope: !56)
!61 = !DILocalVariable(name: "dataBuffer", scope: !56, file: !45, line: 34, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 100)
!65 = !DILocation(line: 34, column: 10, scope: !56)
!66 = !DILocation(line: 35, column: 12, scope: !56)
!67 = !DILocation(line: 35, column: 10, scope: !56)
!68 = !DILocalVariable(name: "dataLen", scope: !69, file: !45, line: 38, type: !70)
!69 = distinct !DILexicalBlock(scope: !56, file: !45, line: 36, column: 5)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DILocation(line: 38, column: 16, scope: !69)
!74 = !DILocation(line: 38, column: 33, scope: !69)
!75 = !DILocation(line: 38, column: 26, scope: !69)
!76 = !DILocation(line: 40, column: 17, scope: !77)
!77 = distinct !DILexicalBlock(scope: !69, file: !45, line: 40, column: 13)
!78 = !DILocation(line: 40, column: 16, scope: !77)
!79 = !DILocation(line: 40, column: 25, scope: !77)
!80 = !DILocation(line: 40, column: 13, scope: !69)
!81 = !DILocation(line: 43, column: 23, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !45, line: 43, column: 17)
!83 = distinct !DILexicalBlock(scope: !77, file: !45, line: 41, column: 9)
!84 = !DILocation(line: 43, column: 28, scope: !82)
!85 = !DILocation(line: 43, column: 27, scope: !82)
!86 = !DILocation(line: 43, column: 47, scope: !82)
!87 = !DILocation(line: 43, column: 46, scope: !82)
!88 = !DILocation(line: 43, column: 37, scope: !82)
!89 = !DILocation(line: 43, column: 57, scope: !82)
!90 = !DILocation(line: 43, column: 17, scope: !82)
!91 = !DILocation(line: 43, column: 64, scope: !82)
!92 = !DILocation(line: 43, column: 17, scope: !83)
!93 = !DILocation(line: 47, column: 34, scope: !94)
!94 = distinct !DILexicalBlock(scope: !82, file: !45, line: 44, column: 13)
!95 = !DILocation(line: 47, column: 27, scope: !94)
!96 = !DILocation(line: 47, column: 25, scope: !94)
!97 = !DILocation(line: 48, column: 21, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !45, line: 48, column: 21)
!99 = !DILocation(line: 48, column: 29, scope: !98)
!100 = !DILocation(line: 48, column: 33, scope: !98)
!101 = !DILocation(line: 48, column: 36, scope: !98)
!102 = !DILocation(line: 48, column: 41, scope: !98)
!103 = !DILocation(line: 48, column: 48, scope: !98)
!104 = !DILocation(line: 48, column: 52, scope: !98)
!105 = !DILocation(line: 48, column: 21, scope: !94)
!106 = !DILocation(line: 50, column: 21, scope: !107)
!107 = distinct !DILexicalBlock(scope: !98, file: !45, line: 49, column: 17)
!108 = !DILocation(line: 50, column: 26, scope: !107)
!109 = !DILocation(line: 50, column: 33, scope: !107)
!110 = !DILocation(line: 50, column: 37, scope: !107)
!111 = !DILocation(line: 51, column: 17, scope: !107)
!112 = !DILocation(line: 52, column: 13, scope: !94)
!113 = !DILocation(line: 55, column: 17, scope: !114)
!114 = distinct !DILexicalBlock(scope: !82, file: !45, line: 54, column: 13)
!115 = !DILocation(line: 57, column: 17, scope: !114)
!116 = !DILocation(line: 57, column: 22, scope: !114)
!117 = !DILocation(line: 57, column: 31, scope: !114)
!118 = !DILocation(line: 59, column: 9, scope: !83)
!119 = !DILocation(line: 61, column: 63, scope: !56)
!120 = !DILocation(line: 61, column: 5, scope: !56)
!121 = !DILocation(line: 62, column: 1, scope: !56)
!122 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 70, type: !57, scopeLine: 71, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!123 = !DILocalVariable(name: "data", scope: !122, file: !45, line: 72, type: !42)
!124 = !DILocation(line: 72, column: 12, scope: !122)
!125 = !DILocalVariable(name: "dataBuffer", scope: !122, file: !45, line: 73, type: !62)
!126 = !DILocation(line: 73, column: 10, scope: !122)
!127 = !DILocation(line: 74, column: 12, scope: !122)
!128 = !DILocation(line: 74, column: 10, scope: !122)
!129 = !DILocation(line: 76, column: 12, scope: !122)
!130 = !DILocation(line: 76, column: 5, scope: !122)
!131 = !DILocation(line: 77, column: 67, scope: !122)
!132 = !DILocation(line: 77, column: 5, scope: !122)
!133 = !DILocation(line: 78, column: 1, scope: !122)
!134 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 82, type: !57, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!135 = !DILocalVariable(name: "data", scope: !134, file: !45, line: 84, type: !42)
!136 = !DILocation(line: 84, column: 12, scope: !134)
!137 = !DILocalVariable(name: "dataBuffer", scope: !134, file: !45, line: 85, type: !62)
!138 = !DILocation(line: 85, column: 10, scope: !134)
!139 = !DILocation(line: 86, column: 12, scope: !134)
!140 = !DILocation(line: 86, column: 10, scope: !134)
!141 = !DILocalVariable(name: "dataLen", scope: !142, file: !45, line: 89, type: !70)
!142 = distinct !DILexicalBlock(scope: !134, file: !45, line: 87, column: 5)
!143 = !DILocation(line: 89, column: 16, scope: !142)
!144 = !DILocation(line: 89, column: 33, scope: !142)
!145 = !DILocation(line: 89, column: 26, scope: !142)
!146 = !DILocation(line: 91, column: 17, scope: !147)
!147 = distinct !DILexicalBlock(scope: !142, file: !45, line: 91, column: 13)
!148 = !DILocation(line: 91, column: 16, scope: !147)
!149 = !DILocation(line: 91, column: 25, scope: !147)
!150 = !DILocation(line: 91, column: 13, scope: !142)
!151 = !DILocation(line: 94, column: 23, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !45, line: 94, column: 17)
!153 = distinct !DILexicalBlock(scope: !147, file: !45, line: 92, column: 9)
!154 = !DILocation(line: 94, column: 28, scope: !152)
!155 = !DILocation(line: 94, column: 27, scope: !152)
!156 = !DILocation(line: 94, column: 47, scope: !152)
!157 = !DILocation(line: 94, column: 46, scope: !152)
!158 = !DILocation(line: 94, column: 37, scope: !152)
!159 = !DILocation(line: 94, column: 57, scope: !152)
!160 = !DILocation(line: 94, column: 17, scope: !152)
!161 = !DILocation(line: 94, column: 64, scope: !152)
!162 = !DILocation(line: 94, column: 17, scope: !153)
!163 = !DILocation(line: 98, column: 34, scope: !164)
!164 = distinct !DILexicalBlock(scope: !152, file: !45, line: 95, column: 13)
!165 = !DILocation(line: 98, column: 27, scope: !164)
!166 = !DILocation(line: 98, column: 25, scope: !164)
!167 = !DILocation(line: 99, column: 21, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !45, line: 99, column: 21)
!169 = !DILocation(line: 99, column: 29, scope: !168)
!170 = !DILocation(line: 99, column: 33, scope: !168)
!171 = !DILocation(line: 99, column: 36, scope: !168)
!172 = !DILocation(line: 99, column: 41, scope: !168)
!173 = !DILocation(line: 99, column: 48, scope: !168)
!174 = !DILocation(line: 99, column: 52, scope: !168)
!175 = !DILocation(line: 99, column: 21, scope: !164)
!176 = !DILocation(line: 101, column: 21, scope: !177)
!177 = distinct !DILexicalBlock(scope: !168, file: !45, line: 100, column: 17)
!178 = !DILocation(line: 101, column: 26, scope: !177)
!179 = !DILocation(line: 101, column: 33, scope: !177)
!180 = !DILocation(line: 101, column: 37, scope: !177)
!181 = !DILocation(line: 102, column: 17, scope: !177)
!182 = !DILocation(line: 103, column: 13, scope: !164)
!183 = !DILocation(line: 106, column: 17, scope: !184)
!184 = distinct !DILexicalBlock(scope: !152, file: !45, line: 105, column: 13)
!185 = !DILocation(line: 108, column: 17, scope: !184)
!186 = !DILocation(line: 108, column: 22, scope: !184)
!187 = !DILocation(line: 108, column: 31, scope: !184)
!188 = !DILocation(line: 110, column: 9, scope: !153)
!189 = !DILocation(line: 112, column: 67, scope: !134)
!190 = !DILocation(line: 112, column: 5, scope: !134)
!191 = !DILocation(line: 113, column: 1, scope: !134)
!192 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_52_good", scope: !45, file: !45, line: 115, type: !57, scopeLine: 116, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!193 = !DILocation(line: 117, column: 5, scope: !192)
!194 = !DILocation(line: 118, column: 5, scope: !192)
!195 = !DILocation(line: 119, column: 1, scope: !192)
!196 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_52b_badSink", scope: !49, file: !49, line: 31, type: !197, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !42}
!199 = !DILocalVariable(name: "data", arg: 1, scope: !196, file: !49, line: 31, type: !42)
!200 = !DILocation(line: 31, column: 71, scope: !196)
!201 = !DILocation(line: 33, column: 63, scope: !196)
!202 = !DILocation(line: 33, column: 5, scope: !196)
!203 = !DILocation(line: 34, column: 1, scope: !196)
!204 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_52b_goodG2BSink", scope: !49, file: !49, line: 43, type: !197, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!205 = !DILocalVariable(name: "data", arg: 1, scope: !204, file: !49, line: 43, type: !42)
!206 = !DILocation(line: 43, column: 75, scope: !204)
!207 = !DILocation(line: 45, column: 67, scope: !204)
!208 = !DILocation(line: 45, column: 5, scope: !204)
!209 = !DILocation(line: 46, column: 1, scope: !204)
!210 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_52b_goodB2GSink", scope: !49, file: !49, line: 51, type: !197, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!211 = !DILocalVariable(name: "data", arg: 1, scope: !210, file: !49, line: 51, type: !42)
!212 = !DILocation(line: 51, column: 75, scope: !210)
!213 = !DILocation(line: 53, column: 67, scope: !210)
!214 = !DILocation(line: 53, column: 5, scope: !210)
!215 = !DILocation(line: 54, column: 1, scope: !210)
!216 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_52c_badSink", scope: !51, file: !51, line: 28, type: !197, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!217 = !DILocalVariable(name: "data", arg: 1, scope: !216, file: !51, line: 28, type: !42)
!218 = !DILocation(line: 28, column: 71, scope: !216)
!219 = !DILocalVariable(name: "i", scope: !220, file: !51, line: 31, type: !23)
!220 = distinct !DILexicalBlock(scope: !216, file: !51, line: 30, column: 5)
!221 = !DILocation(line: 31, column: 13, scope: !220)
!222 = !DILocalVariable(name: "n", scope: !220, file: !51, line: 31, type: !23)
!223 = !DILocation(line: 31, column: 16, scope: !220)
!224 = !DILocalVariable(name: "intVariable", scope: !220, file: !51, line: 31, type: !23)
!225 = !DILocation(line: 31, column: 19, scope: !220)
!226 = !DILocation(line: 32, column: 20, scope: !227)
!227 = distinct !DILexicalBlock(scope: !220, file: !51, line: 32, column: 13)
!228 = !DILocation(line: 32, column: 13, scope: !227)
!229 = !DILocation(line: 32, column: 36, scope: !227)
!230 = !DILocation(line: 32, column: 13, scope: !220)
!231 = !DILocation(line: 35, column: 25, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !51, line: 33, column: 9)
!233 = !DILocation(line: 36, column: 20, scope: !234)
!234 = distinct !DILexicalBlock(scope: !232, file: !51, line: 36, column: 13)
!235 = !DILocation(line: 36, column: 18, scope: !234)
!236 = !DILocation(line: 36, column: 25, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !51, line: 36, column: 13)
!238 = !DILocation(line: 36, column: 29, scope: !237)
!239 = !DILocation(line: 36, column: 27, scope: !237)
!240 = !DILocation(line: 36, column: 13, scope: !234)
!241 = !DILocation(line: 39, column: 28, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !51, line: 37, column: 13)
!243 = !DILocation(line: 40, column: 13, scope: !242)
!244 = !DILocation(line: 36, column: 33, scope: !237)
!245 = !DILocation(line: 36, column: 13, scope: !237)
!246 = distinct !{!246, !240, !247, !248}
!247 = !DILocation(line: 40, column: 13, scope: !234)
!248 = !{!"llvm.loop.mustprogress"}
!249 = !DILocation(line: 41, column: 26, scope: !232)
!250 = !DILocation(line: 41, column: 13, scope: !232)
!251 = !DILocation(line: 42, column: 9, scope: !232)
!252 = !DILocation(line: 44, column: 1, scope: !216)
!253 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_52c_goodG2BSink", scope: !51, file: !51, line: 51, type: !197, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!254 = !DILocalVariable(name: "data", arg: 1, scope: !253, file: !51, line: 51, type: !42)
!255 = !DILocation(line: 51, column: 75, scope: !253)
!256 = !DILocalVariable(name: "i", scope: !257, file: !51, line: 54, type: !23)
!257 = distinct !DILexicalBlock(scope: !253, file: !51, line: 53, column: 5)
!258 = !DILocation(line: 54, column: 13, scope: !257)
!259 = !DILocalVariable(name: "n", scope: !257, file: !51, line: 54, type: !23)
!260 = !DILocation(line: 54, column: 16, scope: !257)
!261 = !DILocalVariable(name: "intVariable", scope: !257, file: !51, line: 54, type: !23)
!262 = !DILocation(line: 54, column: 19, scope: !257)
!263 = !DILocation(line: 55, column: 20, scope: !264)
!264 = distinct !DILexicalBlock(scope: !257, file: !51, line: 55, column: 13)
!265 = !DILocation(line: 55, column: 13, scope: !264)
!266 = !DILocation(line: 55, column: 36, scope: !264)
!267 = !DILocation(line: 55, column: 13, scope: !257)
!268 = !DILocation(line: 58, column: 25, scope: !269)
!269 = distinct !DILexicalBlock(scope: !264, file: !51, line: 56, column: 9)
!270 = !DILocation(line: 59, column: 20, scope: !271)
!271 = distinct !DILexicalBlock(scope: !269, file: !51, line: 59, column: 13)
!272 = !DILocation(line: 59, column: 18, scope: !271)
!273 = !DILocation(line: 59, column: 25, scope: !274)
!274 = distinct !DILexicalBlock(scope: !271, file: !51, line: 59, column: 13)
!275 = !DILocation(line: 59, column: 29, scope: !274)
!276 = !DILocation(line: 59, column: 27, scope: !274)
!277 = !DILocation(line: 59, column: 13, scope: !271)
!278 = !DILocation(line: 62, column: 28, scope: !279)
!279 = distinct !DILexicalBlock(scope: !274, file: !51, line: 60, column: 13)
!280 = !DILocation(line: 63, column: 13, scope: !279)
!281 = !DILocation(line: 59, column: 33, scope: !274)
!282 = !DILocation(line: 59, column: 13, scope: !274)
!283 = distinct !{!283, !277, !284, !248}
!284 = !DILocation(line: 63, column: 13, scope: !271)
!285 = !DILocation(line: 64, column: 26, scope: !269)
!286 = !DILocation(line: 64, column: 13, scope: !269)
!287 = !DILocation(line: 65, column: 9, scope: !269)
!288 = !DILocation(line: 67, column: 1, scope: !253)
!289 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_52c_goodB2GSink", scope: !51, file: !51, line: 70, type: !197, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!290 = !DILocalVariable(name: "data", arg: 1, scope: !289, file: !51, line: 70, type: !42)
!291 = !DILocation(line: 70, column: 75, scope: !289)
!292 = !DILocalVariable(name: "i", scope: !293, file: !51, line: 73, type: !23)
!293 = distinct !DILexicalBlock(scope: !289, file: !51, line: 72, column: 5)
!294 = !DILocation(line: 73, column: 13, scope: !293)
!295 = !DILocalVariable(name: "n", scope: !293, file: !51, line: 73, type: !23)
!296 = !DILocation(line: 73, column: 16, scope: !293)
!297 = !DILocalVariable(name: "intVariable", scope: !293, file: !51, line: 73, type: !23)
!298 = !DILocation(line: 73, column: 19, scope: !293)
!299 = !DILocation(line: 74, column: 20, scope: !300)
!300 = distinct !DILexicalBlock(scope: !293, file: !51, line: 74, column: 13)
!301 = !DILocation(line: 74, column: 13, scope: !300)
!302 = !DILocation(line: 74, column: 36, scope: !300)
!303 = !DILocation(line: 74, column: 13, scope: !293)
!304 = !DILocation(line: 77, column: 17, scope: !305)
!305 = distinct !DILexicalBlock(scope: !306, file: !51, line: 77, column: 17)
!306 = distinct !DILexicalBlock(scope: !300, file: !51, line: 75, column: 9)
!307 = !DILocation(line: 77, column: 19, scope: !305)
!308 = !DILocation(line: 77, column: 17, scope: !306)
!309 = !DILocation(line: 79, column: 29, scope: !310)
!310 = distinct !DILexicalBlock(scope: !305, file: !51, line: 78, column: 13)
!311 = !DILocation(line: 80, column: 24, scope: !312)
!312 = distinct !DILexicalBlock(scope: !310, file: !51, line: 80, column: 17)
!313 = !DILocation(line: 80, column: 22, scope: !312)
!314 = !DILocation(line: 80, column: 29, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !51, line: 80, column: 17)
!316 = !DILocation(line: 80, column: 33, scope: !315)
!317 = !DILocation(line: 80, column: 31, scope: !315)
!318 = !DILocation(line: 80, column: 17, scope: !312)
!319 = !DILocation(line: 83, column: 32, scope: !320)
!320 = distinct !DILexicalBlock(scope: !315, file: !51, line: 81, column: 17)
!321 = !DILocation(line: 84, column: 17, scope: !320)
!322 = !DILocation(line: 80, column: 37, scope: !315)
!323 = !DILocation(line: 80, column: 17, scope: !315)
!324 = distinct !{!324, !318, !325, !248}
!325 = !DILocation(line: 84, column: 17, scope: !312)
!326 = !DILocation(line: 85, column: 30, scope: !310)
!327 = !DILocation(line: 85, column: 17, scope: !310)
!328 = !DILocation(line: 86, column: 13, scope: !310)
!329 = !DILocation(line: 87, column: 9, scope: !306)
!330 = !DILocation(line: 89, column: 1, scope: !289)
!331 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !197, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!332 = !DILocalVariable(name: "line", arg: 1, scope: !331, file: !3, line: 11, type: !42)
!333 = !DILocation(line: 11, column: 25, scope: !331)
!334 = !DILocation(line: 13, column: 1, scope: !331)
!335 = !DILocation(line: 14, column: 8, scope: !336)
!336 = distinct !DILexicalBlock(scope: !331, file: !3, line: 14, column: 8)
!337 = !DILocation(line: 14, column: 13, scope: !336)
!338 = !DILocation(line: 14, column: 8, scope: !331)
!339 = !DILocation(line: 16, column: 24, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !3, line: 15, column: 5)
!341 = !DILocation(line: 16, column: 9, scope: !340)
!342 = !DILocation(line: 17, column: 5, scope: !340)
!343 = !DILocation(line: 18, column: 5, scope: !331)
!344 = !DILocation(line: 19, column: 1, scope: !331)
!345 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !197, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!346 = !DILocalVariable(name: "line", arg: 1, scope: !345, file: !3, line: 20, type: !42)
!347 = !DILocation(line: 20, column: 29, scope: !345)
!348 = !DILocation(line: 22, column: 8, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !3, line: 22, column: 8)
!350 = !DILocation(line: 22, column: 13, scope: !349)
!351 = !DILocation(line: 22, column: 8, scope: !345)
!352 = !DILocation(line: 24, column: 24, scope: !353)
!353 = distinct !DILexicalBlock(scope: !349, file: !3, line: 23, column: 5)
!354 = !DILocation(line: 24, column: 9, scope: !353)
!355 = !DILocation(line: 25, column: 5, scope: !353)
!356 = !DILocation(line: 26, column: 1, scope: !345)
!357 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !358, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !360}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !71, line: 74, baseType: !23)
!362 = !DILocalVariable(name: "line", arg: 1, scope: !357, file: !3, line: 27, type: !360)
!363 = !DILocation(line: 27, column: 29, scope: !357)
!364 = !DILocation(line: 29, column: 8, scope: !365)
!365 = distinct !DILexicalBlock(scope: !357, file: !3, line: 29, column: 8)
!366 = !DILocation(line: 29, column: 13, scope: !365)
!367 = !DILocation(line: 29, column: 8, scope: !357)
!368 = !DILocation(line: 31, column: 27, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !3, line: 30, column: 5)
!370 = !DILocation(line: 31, column: 9, scope: !369)
!371 = !DILocation(line: 32, column: 5, scope: !369)
!372 = !DILocation(line: 33, column: 1, scope: !357)
!373 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !374, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !23}
!376 = !DILocalVariable(name: "intNumber", arg: 1, scope: !373, file: !3, line: 35, type: !23)
!377 = !DILocation(line: 35, column: 24, scope: !373)
!378 = !DILocation(line: 37, column: 20, scope: !373)
!379 = !DILocation(line: 37, column: 5, scope: !373)
!380 = !DILocation(line: 38, column: 1, scope: !373)
!381 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !382, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !384}
!384 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!385 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !381, file: !3, line: 40, type: !384)
!386 = !DILocation(line: 40, column: 28, scope: !381)
!387 = !DILocation(line: 42, column: 21, scope: !381)
!388 = !DILocation(line: 42, column: 5, scope: !381)
!389 = !DILocation(line: 43, column: 1, scope: !381)
!390 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !391, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393}
!393 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!394 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !390, file: !3, line: 45, type: !393)
!395 = !DILocation(line: 45, column: 28, scope: !390)
!396 = !DILocation(line: 47, column: 20, scope: !390)
!397 = !DILocation(line: 47, column: 5, scope: !390)
!398 = !DILocation(line: 48, column: 1, scope: !390)
!399 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !400, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !402}
!402 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!403 = !DILocalVariable(name: "longNumber", arg: 1, scope: !399, file: !3, line: 50, type: !402)
!404 = !DILocation(line: 50, column: 26, scope: !399)
!405 = !DILocation(line: 52, column: 21, scope: !399)
!406 = !DILocation(line: 52, column: 5, scope: !399)
!407 = !DILocation(line: 53, column: 1, scope: !399)
!408 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !409, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !411}
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !412, line: 27, baseType: !413)
!412 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !414, line: 44, baseType: !402)
!414 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!415 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !408, file: !3, line: 55, type: !411)
!416 = !DILocation(line: 55, column: 33, scope: !408)
!417 = !DILocation(line: 57, column: 29, scope: !408)
!418 = !DILocation(line: 57, column: 5, scope: !408)
!419 = !DILocation(line: 58, column: 1, scope: !408)
!420 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !421, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !70}
!423 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !420, file: !3, line: 60, type: !70)
!424 = !DILocation(line: 60, column: 29, scope: !420)
!425 = !DILocation(line: 62, column: 21, scope: !420)
!426 = !DILocation(line: 62, column: 5, scope: !420)
!427 = !DILocation(line: 63, column: 1, scope: !420)
!428 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !429, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !43}
!431 = !DILocalVariable(name: "charHex", arg: 1, scope: !428, file: !3, line: 65, type: !43)
!432 = !DILocation(line: 65, column: 29, scope: !428)
!433 = !DILocation(line: 67, column: 22, scope: !428)
!434 = !DILocation(line: 67, column: 5, scope: !428)
!435 = !DILocation(line: 68, column: 1, scope: !428)
!436 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !437, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !361}
!439 = !DILocalVariable(name: "wideChar", arg: 1, scope: !436, file: !3, line: 70, type: !361)
!440 = !DILocation(line: 70, column: 29, scope: !436)
!441 = !DILocalVariable(name: "s", scope: !436, file: !3, line: 74, type: !442)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 64, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 2)
!445 = !DILocation(line: 74, column: 13, scope: !436)
!446 = !DILocation(line: 75, column: 16, scope: !436)
!447 = !DILocation(line: 75, column: 9, scope: !436)
!448 = !DILocation(line: 75, column: 14, scope: !436)
!449 = !DILocation(line: 76, column: 9, scope: !436)
!450 = !DILocation(line: 76, column: 14, scope: !436)
!451 = !DILocation(line: 77, column: 21, scope: !436)
!452 = !DILocation(line: 77, column: 5, scope: !436)
!453 = !DILocation(line: 78, column: 1, scope: !436)
!454 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !455, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !7}
!457 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !454, file: !3, line: 80, type: !7)
!458 = !DILocation(line: 80, column: 33, scope: !454)
!459 = !DILocation(line: 82, column: 20, scope: !454)
!460 = !DILocation(line: 82, column: 5, scope: !454)
!461 = !DILocation(line: 83, column: 1, scope: !454)
!462 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !463, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !25}
!465 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !462, file: !3, line: 85, type: !25)
!466 = !DILocation(line: 85, column: 45, scope: !462)
!467 = !DILocation(line: 87, column: 22, scope: !462)
!468 = !DILocation(line: 87, column: 5, scope: !462)
!469 = !DILocation(line: 88, column: 1, scope: !462)
!470 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !471, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !473}
!473 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!474 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !470, file: !3, line: 90, type: !473)
!475 = !DILocation(line: 90, column: 29, scope: !470)
!476 = !DILocation(line: 92, column: 20, scope: !470)
!477 = !DILocation(line: 92, column: 5, scope: !470)
!478 = !DILocation(line: 93, column: 1, scope: !470)
!479 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !480, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !482}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !484, line: 100, baseType: !485)
!484 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_008/source_code")
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !484, line: 96, size: 64, elements: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !485, file: !484, line: 98, baseType: !23, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !485, file: !484, line: 99, baseType: !23, size: 32, offset: 32)
!489 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !479, file: !3, line: 95, type: !482)
!490 = !DILocation(line: 95, column: 40, scope: !479)
!491 = !DILocation(line: 97, column: 26, scope: !479)
!492 = !DILocation(line: 97, column: 47, scope: !479)
!493 = !DILocation(line: 97, column: 55, scope: !479)
!494 = !DILocation(line: 97, column: 76, scope: !479)
!495 = !DILocation(line: 97, column: 5, scope: !479)
!496 = !DILocation(line: 98, column: 1, scope: !479)
!497 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !498, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !500, !70}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!501 = !DILocalVariable(name: "bytes", arg: 1, scope: !497, file: !3, line: 100, type: !500)
!502 = !DILocation(line: 100, column: 38, scope: !497)
!503 = !DILocalVariable(name: "numBytes", arg: 2, scope: !497, file: !3, line: 100, type: !70)
!504 = !DILocation(line: 100, column: 52, scope: !497)
!505 = !DILocalVariable(name: "i", scope: !497, file: !3, line: 102, type: !70)
!506 = !DILocation(line: 102, column: 12, scope: !497)
!507 = !DILocation(line: 103, column: 12, scope: !508)
!508 = distinct !DILexicalBlock(scope: !497, file: !3, line: 103, column: 5)
!509 = !DILocation(line: 103, column: 10, scope: !508)
!510 = !DILocation(line: 103, column: 17, scope: !511)
!511 = distinct !DILexicalBlock(scope: !508, file: !3, line: 103, column: 5)
!512 = !DILocation(line: 103, column: 21, scope: !511)
!513 = !DILocation(line: 103, column: 19, scope: !511)
!514 = !DILocation(line: 103, column: 5, scope: !508)
!515 = !DILocation(line: 105, column: 24, scope: !516)
!516 = distinct !DILexicalBlock(scope: !511, file: !3, line: 104, column: 5)
!517 = !DILocation(line: 105, column: 30, scope: !516)
!518 = !DILocation(line: 105, column: 9, scope: !516)
!519 = !DILocation(line: 106, column: 5, scope: !516)
!520 = !DILocation(line: 103, column: 31, scope: !511)
!521 = !DILocation(line: 103, column: 5, scope: !511)
!522 = distinct !{!522, !514, !523, !248}
!523 = !DILocation(line: 106, column: 5, scope: !508)
!524 = !DILocation(line: 107, column: 5, scope: !497)
!525 = !DILocation(line: 108, column: 1, scope: !497)
!526 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !527, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!527 = !DISubroutineType(types: !528)
!528 = !{!70, !500, !70, !42}
!529 = !DILocalVariable(name: "bytes", arg: 1, scope: !526, file: !3, line: 113, type: !500)
!530 = !DILocation(line: 113, column: 39, scope: !526)
!531 = !DILocalVariable(name: "numBytes", arg: 2, scope: !526, file: !3, line: 113, type: !70)
!532 = !DILocation(line: 113, column: 53, scope: !526)
!533 = !DILocalVariable(name: "hex", arg: 3, scope: !526, file: !3, line: 113, type: !42)
!534 = !DILocation(line: 113, column: 71, scope: !526)
!535 = !DILocalVariable(name: "numWritten", scope: !526, file: !3, line: 115, type: !70)
!536 = !DILocation(line: 115, column: 12, scope: !526)
!537 = !DILocation(line: 121, column: 5, scope: !526)
!538 = !DILocation(line: 121, column: 12, scope: !526)
!539 = !DILocation(line: 121, column: 25, scope: !526)
!540 = !DILocation(line: 121, column: 23, scope: !526)
!541 = !DILocation(line: 121, column: 34, scope: !526)
!542 = !DILocation(line: 121, column: 37, scope: !526)
!543 = !DILocation(line: 121, column: 67, scope: !526)
!544 = !DILocation(line: 121, column: 70, scope: !526)
!545 = !DILocation(line: 0, scope: !526)
!546 = !DILocalVariable(name: "byte", scope: !547, file: !3, line: 123, type: !23)
!547 = distinct !DILexicalBlock(scope: !526, file: !3, line: 122, column: 5)
!548 = !DILocation(line: 123, column: 13, scope: !547)
!549 = !DILocation(line: 124, column: 17, scope: !547)
!550 = !DILocation(line: 124, column: 25, scope: !547)
!551 = !DILocation(line: 124, column: 23, scope: !547)
!552 = !DILocation(line: 124, column: 9, scope: !547)
!553 = !DILocation(line: 125, column: 45, scope: !547)
!554 = !DILocation(line: 125, column: 29, scope: !547)
!555 = !DILocation(line: 125, column: 9, scope: !547)
!556 = !DILocation(line: 125, column: 15, scope: !547)
!557 = !DILocation(line: 125, column: 27, scope: !547)
!558 = !DILocation(line: 126, column: 9, scope: !547)
!559 = distinct !{!559, !537, !560, !248}
!560 = !DILocation(line: 127, column: 5, scope: !526)
!561 = !DILocation(line: 129, column: 12, scope: !526)
!562 = !DILocation(line: 129, column: 5, scope: !526)
!563 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !564, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DISubroutineType(types: !565)
!565 = !{!70, !500, !70, !360}
!566 = !DILocalVariable(name: "bytes", arg: 1, scope: !563, file: !3, line: 135, type: !500)
!567 = !DILocation(line: 135, column: 41, scope: !563)
!568 = !DILocalVariable(name: "numBytes", arg: 2, scope: !563, file: !3, line: 135, type: !70)
!569 = !DILocation(line: 135, column: 55, scope: !563)
!570 = !DILocalVariable(name: "hex", arg: 3, scope: !563, file: !3, line: 135, type: !360)
!571 = !DILocation(line: 135, column: 76, scope: !563)
!572 = !DILocalVariable(name: "numWritten", scope: !563, file: !3, line: 137, type: !70)
!573 = !DILocation(line: 137, column: 12, scope: !563)
!574 = !DILocation(line: 143, column: 5, scope: !563)
!575 = !DILocation(line: 143, column: 12, scope: !563)
!576 = !DILocation(line: 143, column: 25, scope: !563)
!577 = !DILocation(line: 143, column: 23, scope: !563)
!578 = !DILocation(line: 143, column: 34, scope: !563)
!579 = !DILocation(line: 143, column: 47, scope: !563)
!580 = !DILocation(line: 143, column: 55, scope: !563)
!581 = !DILocation(line: 143, column: 53, scope: !563)
!582 = !DILocation(line: 143, column: 37, scope: !563)
!583 = !DILocation(line: 143, column: 68, scope: !563)
!584 = !DILocation(line: 143, column: 81, scope: !563)
!585 = !DILocation(line: 143, column: 89, scope: !563)
!586 = !DILocation(line: 143, column: 87, scope: !563)
!587 = !DILocation(line: 143, column: 100, scope: !563)
!588 = !DILocation(line: 143, column: 71, scope: !563)
!589 = !DILocation(line: 0, scope: !563)
!590 = !DILocalVariable(name: "byte", scope: !591, file: !3, line: 145, type: !23)
!591 = distinct !DILexicalBlock(scope: !563, file: !3, line: 144, column: 5)
!592 = !DILocation(line: 145, column: 13, scope: !591)
!593 = !DILocation(line: 146, column: 18, scope: !591)
!594 = !DILocation(line: 146, column: 26, scope: !591)
!595 = !DILocation(line: 146, column: 24, scope: !591)
!596 = !DILocation(line: 146, column: 9, scope: !591)
!597 = !DILocation(line: 147, column: 45, scope: !591)
!598 = !DILocation(line: 147, column: 29, scope: !591)
!599 = !DILocation(line: 147, column: 9, scope: !591)
!600 = !DILocation(line: 147, column: 15, scope: !591)
!601 = !DILocation(line: 147, column: 27, scope: !591)
!602 = !DILocation(line: 148, column: 9, scope: !591)
!603 = distinct !{!603, !574, !604, !248}
!604 = !DILocation(line: 149, column: 5, scope: !563)
!605 = !DILocation(line: 151, column: 12, scope: !563)
!606 = !DILocation(line: 151, column: 5, scope: !563)
!607 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !608, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DISubroutineType(types: !609)
!609 = !{!23}
!610 = !DILocation(line: 158, column: 5, scope: !607)
!611 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !608, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DILocation(line: 163, column: 5, scope: !611)
!613 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !608, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DILocation(line: 168, column: 13, scope: !613)
!615 = !DILocation(line: 168, column: 20, scope: !613)
!616 = !DILocation(line: 168, column: 5, scope: !613)
!617 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !57, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!618 = !DILocation(line: 187, column: 16, scope: !617)
!619 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !57, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!620 = !DILocation(line: 188, column: 16, scope: !619)
!621 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !57, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!622 = !DILocation(line: 189, column: 16, scope: !621)
!623 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !57, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!624 = !DILocation(line: 190, column: 16, scope: !623)
!625 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !57, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!626 = !DILocation(line: 191, column: 16, scope: !625)
!627 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !57, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!628 = !DILocation(line: 192, column: 16, scope: !627)
!629 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !57, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!630 = !DILocation(line: 193, column: 16, scope: !629)
!631 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !57, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!632 = !DILocation(line: 194, column: 16, scope: !631)
!633 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !57, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!634 = !DILocation(line: 195, column: 16, scope: !633)
!635 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !57, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!636 = !DILocation(line: 198, column: 15, scope: !635)
!637 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !57, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!638 = !DILocation(line: 199, column: 15, scope: !637)
!639 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !57, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!640 = !DILocation(line: 200, column: 15, scope: !639)
!641 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !57, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!642 = !DILocation(line: 201, column: 15, scope: !641)
!643 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !57, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!644 = !DILocation(line: 202, column: 15, scope: !643)
!645 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !57, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!646 = !DILocation(line: 203, column: 15, scope: !645)
!647 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !57, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!648 = !DILocation(line: 204, column: 15, scope: !647)
!649 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !57, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!650 = !DILocation(line: 205, column: 15, scope: !649)
!651 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !57, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!652 = !DILocation(line: 206, column: 15, scope: !651)
