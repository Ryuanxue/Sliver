; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@CWE606_Unchecked_Loop_Condition__char_console_68_badData = dso_local global i8* null, align 8, !dbg !0
@CWE606_Unchecked_Loop_Condition__char_console_68_goodG2BData = dso_local global i8* null, align 8, !dbg !9
@CWE606_Unchecked_Loop_Condition__char_console_68_goodB2GData = dso_local global i8* null, align 8, !dbg !13
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !15
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !40
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !42
@globalTrue = dso_local global i32 1, align 4, !dbg !44
@globalFalse = dso_local global i32 0, align 4, !dbg !46
@globalFive = dso_local global i32 5, align 4, !dbg !48
@globalArgc = dso_local global i32 0, align 4, !dbg !50
@globalArgv = dso_local global i8** null, align 8, !dbg !52
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_68_bad() #0 !dbg !61 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !64, metadata !DIExpression()), !dbg !65
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
  store i8* %16, i8** @CWE606_Unchecked_Loop_Condition__char_console_68_badData, align 8, !dbg !125
  call void (...) bitcast (void ()* @CWE606_Unchecked_Loop_Condition__char_console_68b_badSink to void (...)*)(), !dbg !126
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
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !131, metadata !DIExpression()), !dbg !132
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !132
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !132
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !133
  store i8* %arraydecay, i8** %data, align 8, !dbg !134
  %1 = load i8*, i8** %data, align 8, !dbg !135
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !136
  %2 = load i8*, i8** %data, align 8, !dbg !137
  store i8* %2, i8** @CWE606_Unchecked_Loop_Condition__char_console_68_goodG2BData, align 8, !dbg !138
  call void (...) bitcast (void ()* @CWE606_Unchecked_Loop_Condition__char_console_68b_goodG2BSink to void (...)*)(), !dbg !139
  ret void, !dbg !140
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !141 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !144, metadata !DIExpression()), !dbg !145
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !145
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !145
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !146
  store i8* %arraydecay, i8** %data, align 8, !dbg !147
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !148, metadata !DIExpression()), !dbg !150
  %1 = load i8*, i8** %data, align 8, !dbg !151
  %call = call i64 @strlen(i8* %1) #7, !dbg !152
  store i64 %call, i64* %dataLen, align 8, !dbg !150
  %2 = load i64, i64* %dataLen, align 8, !dbg !153
  %sub = sub i64 100, %2, !dbg !155
  %cmp = icmp ugt i64 %sub, 1, !dbg !156
  br i1 %cmp, label %if.then, label %if.end18, !dbg !157

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !158
  %4 = load i64, i64* %dataLen, align 8, !dbg !161
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !162
  %5 = load i64, i64* %dataLen, align 8, !dbg !163
  %sub1 = sub i64 100, %5, !dbg !164
  %conv = trunc i64 %sub1 to i32, !dbg !165
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !166
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !167
  %cmp3 = icmp ne i8* %call2, null, !dbg !168
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !169

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !170
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !172
  store i64 %call6, i64* %dataLen, align 8, !dbg !173
  %8 = load i64, i64* %dataLen, align 8, !dbg !174
  %cmp7 = icmp ugt i64 %8, 0, !dbg !176
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !177

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !178
  %10 = load i64, i64* %dataLen, align 8, !dbg !179
  %sub9 = sub i64 %10, 1, !dbg !180
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !178
  %11 = load i8, i8* %arrayidx, align 1, !dbg !178
  %conv10 = sext i8 %11 to i32, !dbg !178
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !181
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !182

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !183
  %13 = load i64, i64* %dataLen, align 8, !dbg !185
  %sub14 = sub i64 %13, 1, !dbg !186
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !183
  store i8 0, i8* %arrayidx15, align 1, !dbg !187
  br label %if.end, !dbg !188

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !189

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !190
  %14 = load i8*, i8** %data, align 8, !dbg !192
  %15 = load i64, i64* %dataLen, align 8, !dbg !193
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !192
  store i8 0, i8* %arrayidx16, align 1, !dbg !194
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !195

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !196
  store i8* %16, i8** @CWE606_Unchecked_Loop_Condition__char_console_68_goodB2GData, align 8, !dbg !197
  call void (...) bitcast (void ()* @CWE606_Unchecked_Loop_Condition__char_console_68b_goodB2GSink to void (...)*)(), !dbg !198
  ret void, !dbg !199
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_68_good() #0 !dbg !200 {
entry:
  call void @goodG2B(), !dbg !201
  call void @goodB2G(), !dbg !202
  ret void, !dbg !203
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_68b_badSink() #0 !dbg !204 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !205, metadata !DIExpression()), !dbg !206
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_console_68_badData, align 8, !dbg !207
  store i8* %0, i8** %data, align 8, !dbg !206
  call void @llvm.dbg.declare(metadata i32* %i, metadata !208, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata i32* %n, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !213, metadata !DIExpression()), !dbg !214
  %1 = load i8*, i8** %data, align 8, !dbg !215
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !217
  %cmp = icmp eq i32 %call, 1, !dbg !218
  br i1 %cmp, label %if.then, label %if.end, !dbg !219

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !220
  store i32 0, i32* %i, align 4, !dbg !222
  br label %for.cond, !dbg !224

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !225
  %3 = load i32, i32* %n, align 4, !dbg !227
  %cmp1 = icmp slt i32 %2, %3, !dbg !228
  br i1 %cmp1, label %for.body, label %for.end, !dbg !229

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !230
  %inc = add nsw i32 %4, 1, !dbg !230
  store i32 %inc, i32* %intVariable, align 4, !dbg !230
  br label %for.inc, !dbg !232

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !233
  %inc2 = add nsw i32 %5, 1, !dbg !233
  store i32 %inc2, i32* %i, align 4, !dbg !233
  br label %for.cond, !dbg !234, !llvm.loop !235

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !238
  call void @printIntLine(i32 %6), !dbg !239
  br label %if.end, !dbg !240

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !241
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_68b_goodG2BSink() #0 !dbg !242 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !243, metadata !DIExpression()), !dbg !244
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_console_68_goodG2BData, align 8, !dbg !245
  store i8* %0, i8** %data, align 8, !dbg !244
  call void @llvm.dbg.declare(metadata i32* %i, metadata !246, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata i32* %n, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !251, metadata !DIExpression()), !dbg !252
  %1 = load i8*, i8** %data, align 8, !dbg !253
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !255
  %cmp = icmp eq i32 %call, 1, !dbg !256
  br i1 %cmp, label %if.then, label %if.end, !dbg !257

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !258
  store i32 0, i32* %i, align 4, !dbg !260
  br label %for.cond, !dbg !262

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !263
  %3 = load i32, i32* %n, align 4, !dbg !265
  %cmp1 = icmp slt i32 %2, %3, !dbg !266
  br i1 %cmp1, label %for.body, label %for.end, !dbg !267

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !268
  %inc = add nsw i32 %4, 1, !dbg !268
  store i32 %inc, i32* %intVariable, align 4, !dbg !268
  br label %for.inc, !dbg !270

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !271
  %inc2 = add nsw i32 %5, 1, !dbg !271
  store i32 %inc2, i32* %i, align 4, !dbg !271
  br label %for.cond, !dbg !272, !llvm.loop !273

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !275
  call void @printIntLine(i32 %6), !dbg !276
  br label %if.end, !dbg !277

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !278
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_68b_goodB2GSink() #0 !dbg !279 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_console_68_goodB2GData, align 8, !dbg !282
  store i8* %0, i8** %data, align 8, !dbg !281
  call void @llvm.dbg.declare(metadata i32* %i, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.declare(metadata i32* %n, metadata !286, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !288, metadata !DIExpression()), !dbg !289
  %1 = load i8*, i8** %data, align 8, !dbg !290
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !292
  %cmp = icmp eq i32 %call, 1, !dbg !293
  br i1 %cmp, label %if.then, label %if.end5, !dbg !294

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n, align 4, !dbg !295
  %cmp1 = icmp slt i32 %2, 10000, !dbg !298
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !299

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !300
  store i32 0, i32* %i, align 4, !dbg !302
  br label %for.cond, !dbg !304

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load i32, i32* %i, align 4, !dbg !305
  %4 = load i32, i32* %n, align 4, !dbg !307
  %cmp3 = icmp slt i32 %3, %4, !dbg !308
  br i1 %cmp3, label %for.body, label %for.end, !dbg !309

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !310
  %inc = add nsw i32 %5, 1, !dbg !310
  store i32 %inc, i32* %intVariable, align 4, !dbg !310
  br label %for.inc, !dbg !312

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !313
  %inc4 = add nsw i32 %6, 1, !dbg !313
  store i32 %inc4, i32* %i, align 4, !dbg !313
  br label %for.cond, !dbg !314, !llvm.loop !315

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !317
  call void @printIntLine(i32 %7), !dbg !318
  br label %if.end, !dbg !319

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !320

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !321
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !322 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !325, metadata !DIExpression()), !dbg !326
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !327
  %0 = load i8*, i8** %line.addr, align 8, !dbg !328
  %cmp = icmp ne i8* %0, null, !dbg !330
  br i1 %cmp, label %if.then, label %if.end, !dbg !331

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !332
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !334
  br label %if.end, !dbg !335

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !336
  ret void, !dbg !337
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !338 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !339, metadata !DIExpression()), !dbg !340
  %0 = load i8*, i8** %line.addr, align 8, !dbg !341
  %cmp = icmp ne i8* %0, null, !dbg !343
  br i1 %cmp, label %if.then, label %if.end, !dbg !344

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !345
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !347
  br label %if.end, !dbg !348

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !349
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !350 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !355, metadata !DIExpression()), !dbg !356
  %0 = load i32*, i32** %line.addr, align 8, !dbg !357
  %cmp = icmp ne i32* %0, null, !dbg !359
  br i1 %cmp, label %if.then, label %if.end, !dbg !360

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !361
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.12, i64 0, i64 0), i32* %1), !dbg !363
  br label %if.end, !dbg !364

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !365
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !366 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !371
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !372
  ret void, !dbg !373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !374 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !378, metadata !DIExpression()), !dbg !379
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !380
  %conv = sext i16 %0 to i32, !dbg !380
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !381
  ret void, !dbg !382
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !383 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !387, metadata !DIExpression()), !dbg !388
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !389
  %conv = fpext float %0 to double, !dbg !389
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !390
  ret void, !dbg !391
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !392 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !396, metadata !DIExpression()), !dbg !397
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !398
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !399
  ret void, !dbg !400
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !401 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !408, metadata !DIExpression()), !dbg !409
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !410
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !411
  ret void, !dbg !412
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !413 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !416, metadata !DIExpression()), !dbg !417
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !418
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !419
  ret void, !dbg !420
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !421 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !424, metadata !DIExpression()), !dbg !425
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !426
  %conv = sext i8 %0 to i32, !dbg !426
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !427
  ret void, !dbg !428
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !429 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !434, metadata !DIExpression()), !dbg !438
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !439
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !440
  store i32 %0, i32* %arrayidx, align 4, !dbg !441
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !442
  store i32 0, i32* %arrayidx1, align 4, !dbg !443
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !444
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.15, i64 0, i64 0), i32* %arraydecay), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !447 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !452
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !453
  ret void, !dbg !454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !455 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !458, metadata !DIExpression()), !dbg !459
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !460
  %conv = zext i8 %0 to i32, !dbg !460
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !461
  ret void, !dbg !462
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !463 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !467, metadata !DIExpression()), !dbg !468
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !469
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !470
  ret void, !dbg !471
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !472 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !482, metadata !DIExpression()), !dbg !483
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !484
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !485
  %1 = load i32, i32* %intOne, align 4, !dbg !485
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !486
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !487
  %3 = load i32, i32* %intTwo, align 4, !dbg !487
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !488
  ret void, !dbg !489
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !490 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !494, metadata !DIExpression()), !dbg !495
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !496, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.declare(metadata i64* %i, metadata !498, metadata !DIExpression()), !dbg !499
  store i64 0, i64* %i, align 8, !dbg !500
  br label %for.cond, !dbg !502

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !503
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !505
  %cmp = icmp ult i64 %0, %1, !dbg !506
  br i1 %cmp, label %for.body, label %for.end, !dbg !507

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !508
  %3 = load i64, i64* %i, align 8, !dbg !510
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !508
  %4 = load i8, i8* %arrayidx, align 1, !dbg !508
  %conv = zext i8 %4 to i32, !dbg !508
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !511
  br label %for.inc, !dbg !512

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !513
  %inc = add i64 %5, 1, !dbg !513
  store i64 %inc, i64* %i, align 8, !dbg !513
  br label %for.cond, !dbg !514, !llvm.loop !515

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !517
  ret void, !dbg !518
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !519 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !522, metadata !DIExpression()), !dbg !523
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !524, metadata !DIExpression()), !dbg !525
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !526, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !528, metadata !DIExpression()), !dbg !529
  store i64 0, i64* %numWritten, align 8, !dbg !529
  br label %while.cond, !dbg !530

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !531
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !532
  %cmp = icmp ult i64 %0, %1, !dbg !533
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !534

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !535
  %2 = load i16*, i16** %call, align 8, !dbg !535
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !535
  %4 = load i64, i64* %numWritten, align 8, !dbg !535
  %mul = mul i64 2, %4, !dbg !535
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !535
  %5 = load i8, i8* %arrayidx, align 1, !dbg !535
  %conv = sext i8 %5 to i32, !dbg !535
  %idxprom = sext i32 %conv to i64, !dbg !535
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !535
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !535
  %conv2 = zext i16 %6 to i32, !dbg !535
  %and = and i32 %conv2, 4096, !dbg !535
  %tobool = icmp ne i32 %and, 0, !dbg !535
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !536

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !537
  %7 = load i16*, i16** %call3, align 8, !dbg !537
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !537
  %9 = load i64, i64* %numWritten, align 8, !dbg !537
  %mul4 = mul i64 2, %9, !dbg !537
  %add = add i64 %mul4, 1, !dbg !537
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !537
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !537
  %conv6 = sext i8 %10 to i32, !dbg !537
  %idxprom7 = sext i32 %conv6 to i64, !dbg !537
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !537
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !537
  %conv9 = zext i16 %11 to i32, !dbg !537
  %and10 = and i32 %conv9, 4096, !dbg !537
  %tobool11 = icmp ne i32 %and10, 0, !dbg !536
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !538
  br i1 %12, label %while.body, label %while.end, !dbg !530

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !539, metadata !DIExpression()), !dbg !541
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !542
  %14 = load i64, i64* %numWritten, align 8, !dbg !543
  %mul12 = mul i64 2, %14, !dbg !544
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !542
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !545
  %15 = load i32, i32* %byte, align 4, !dbg !546
  %conv15 = trunc i32 %15 to i8, !dbg !547
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !548
  %17 = load i64, i64* %numWritten, align 8, !dbg !549
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !548
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !550
  %18 = load i64, i64* %numWritten, align 8, !dbg !551
  %inc = add i64 %18, 1, !dbg !551
  store i64 %inc, i64* %numWritten, align 8, !dbg !551
  br label %while.cond, !dbg !530, !llvm.loop !552

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !554
  ret i64 %19, !dbg !555
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !556 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !559, metadata !DIExpression()), !dbg !560
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !561, metadata !DIExpression()), !dbg !562
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !563, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !565, metadata !DIExpression()), !dbg !566
  store i64 0, i64* %numWritten, align 8, !dbg !566
  br label %while.cond, !dbg !567

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !568
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !569
  %cmp = icmp ult i64 %0, %1, !dbg !570
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !571

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !572
  %3 = load i64, i64* %numWritten, align 8, !dbg !573
  %mul = mul i64 2, %3, !dbg !574
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !572
  %4 = load i32, i32* %arrayidx, align 4, !dbg !572
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !575
  %tobool = icmp ne i32 %call, 0, !dbg !575
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !576

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !577
  %6 = load i64, i64* %numWritten, align 8, !dbg !578
  %mul1 = mul i64 2, %6, !dbg !579
  %add = add i64 %mul1, 1, !dbg !580
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !577
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !577
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !581
  %tobool4 = icmp ne i32 %call3, 0, !dbg !576
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !582
  br i1 %8, label %while.body, label %while.end, !dbg !567

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !583, metadata !DIExpression()), !dbg !585
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !586
  %10 = load i64, i64* %numWritten, align 8, !dbg !587
  %mul5 = mul i64 2, %10, !dbg !588
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !586
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !589
  %11 = load i32, i32* %byte, align 4, !dbg !590
  %conv = trunc i32 %11 to i8, !dbg !591
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !592
  %13 = load i64, i64* %numWritten, align 8, !dbg !593
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !592
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !594
  %14 = load i64, i64* %numWritten, align 8, !dbg !595
  %inc = add i64 %14, 1, !dbg !595
  store i64 %inc, i64* %numWritten, align 8, !dbg !595
  br label %while.cond, !dbg !567, !llvm.loop !596

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !598
  ret i64 %15, !dbg !599
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !600 {
entry:
  ret i32 1, !dbg !603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !604 {
entry:
  ret i32 0, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !606 {
entry:
  %call = call i32 @rand() #8, !dbg !607
  %rem = srem i32 %call, 2, !dbg !608
  ret i32 %rem, !dbg !609
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !610 {
entry:
  ret void, !dbg !611
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !612 {
entry:
  ret void, !dbg !613
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !614 {
entry:
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !616 {
entry:
  ret void, !dbg !617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !618 {
entry:
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !620 {
entry:
  ret void, !dbg !621
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !622 {
entry:
  ret void, !dbg !623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !624 {
entry:
  ret void, !dbg !625
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !626 {
entry:
  ret void, !dbg !627
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !628 {
entry:
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !630 {
entry:
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !632 {
entry:
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !634 {
entry:
  ret void, !dbg !635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !636 {
entry:
  ret void, !dbg !637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !638 {
entry:
  ret void, !dbg !639
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !640 {
entry:
  ret void, !dbg !641
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !642 {
entry:
  ret void, !dbg !643
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !644 {
entry:
  ret void, !dbg !645
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

!llvm.dbg.cu = !{!2, !55, !17}
!llvm.ident = !{!57, !57, !57}
!llvm.module.flags = !{!58, !59, !60}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_console_68_badData", scope: !2, file: !3, line: 27, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_68a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_018/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0, !9, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_console_68_goodG2BData", scope: !2, file: !3, line: 28, type: !11, isLocal: false, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_console_68_goodB2GData", scope: !2, file: !3, line: 29, type: !11, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !6, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_018/source_code")
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
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_68b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_018/source_code")
!57 = !{!"clang version 12.0.0"}
!58 = !{i32 7, !"Dwarf Version", i32 4}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_68_bad", scope: !3, file: !3, line: 35, type: !62, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!62 = !DISubroutineType(types: !63)
!63 = !{null}
!64 = !DILocalVariable(name: "data", scope: !61, file: !3, line: 37, type: !11)
!65 = !DILocation(line: 37, column: 12, scope: !61)
!66 = !DILocalVariable(name: "dataBuffer", scope: !61, file: !3, line: 38, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 800, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 100)
!70 = !DILocation(line: 38, column: 10, scope: !61)
!71 = !DILocation(line: 39, column: 12, scope: !61)
!72 = !DILocation(line: 39, column: 10, scope: !61)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !3, line: 42, type: !75)
!74 = distinct !DILexicalBlock(scope: !61, file: !3, line: 40, column: 5)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 42, column: 16, scope: !74)
!79 = !DILocation(line: 42, column: 33, scope: !74)
!80 = !DILocation(line: 42, column: 26, scope: !74)
!81 = !DILocation(line: 44, column: 17, scope: !82)
!82 = distinct !DILexicalBlock(scope: !74, file: !3, line: 44, column: 13)
!83 = !DILocation(line: 44, column: 16, scope: !82)
!84 = !DILocation(line: 44, column: 25, scope: !82)
!85 = !DILocation(line: 44, column: 13, scope: !74)
!86 = !DILocation(line: 47, column: 23, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 47, column: 17)
!88 = distinct !DILexicalBlock(scope: !82, file: !3, line: 45, column: 9)
!89 = !DILocation(line: 47, column: 28, scope: !87)
!90 = !DILocation(line: 47, column: 27, scope: !87)
!91 = !DILocation(line: 47, column: 47, scope: !87)
!92 = !DILocation(line: 47, column: 46, scope: !87)
!93 = !DILocation(line: 47, column: 37, scope: !87)
!94 = !DILocation(line: 47, column: 57, scope: !87)
!95 = !DILocation(line: 47, column: 17, scope: !87)
!96 = !DILocation(line: 47, column: 64, scope: !87)
!97 = !DILocation(line: 47, column: 17, scope: !88)
!98 = !DILocation(line: 51, column: 34, scope: !99)
!99 = distinct !DILexicalBlock(scope: !87, file: !3, line: 48, column: 13)
!100 = !DILocation(line: 51, column: 27, scope: !99)
!101 = !DILocation(line: 51, column: 25, scope: !99)
!102 = !DILocation(line: 52, column: 21, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !3, line: 52, column: 21)
!104 = !DILocation(line: 52, column: 29, scope: !103)
!105 = !DILocation(line: 52, column: 33, scope: !103)
!106 = !DILocation(line: 52, column: 36, scope: !103)
!107 = !DILocation(line: 52, column: 41, scope: !103)
!108 = !DILocation(line: 52, column: 48, scope: !103)
!109 = !DILocation(line: 52, column: 52, scope: !103)
!110 = !DILocation(line: 52, column: 21, scope: !99)
!111 = !DILocation(line: 54, column: 21, scope: !112)
!112 = distinct !DILexicalBlock(scope: !103, file: !3, line: 53, column: 17)
!113 = !DILocation(line: 54, column: 26, scope: !112)
!114 = !DILocation(line: 54, column: 33, scope: !112)
!115 = !DILocation(line: 54, column: 37, scope: !112)
!116 = !DILocation(line: 55, column: 17, scope: !112)
!117 = !DILocation(line: 56, column: 13, scope: !99)
!118 = !DILocation(line: 59, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !87, file: !3, line: 58, column: 13)
!120 = !DILocation(line: 61, column: 17, scope: !119)
!121 = !DILocation(line: 61, column: 22, scope: !119)
!122 = !DILocation(line: 61, column: 31, scope: !119)
!123 = !DILocation(line: 63, column: 9, scope: !88)
!124 = !DILocation(line: 65, column: 64, scope: !61)
!125 = !DILocation(line: 65, column: 62, scope: !61)
!126 = !DILocation(line: 66, column: 5, scope: !61)
!127 = !DILocation(line: 67, column: 1, scope: !61)
!128 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 76, type: !62, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!129 = !DILocalVariable(name: "data", scope: !128, file: !3, line: 78, type: !11)
!130 = !DILocation(line: 78, column: 12, scope: !128)
!131 = !DILocalVariable(name: "dataBuffer", scope: !128, file: !3, line: 79, type: !67)
!132 = !DILocation(line: 79, column: 10, scope: !128)
!133 = !DILocation(line: 80, column: 12, scope: !128)
!134 = !DILocation(line: 80, column: 10, scope: !128)
!135 = !DILocation(line: 82, column: 12, scope: !128)
!136 = !DILocation(line: 82, column: 5, scope: !128)
!137 = !DILocation(line: 83, column: 68, scope: !128)
!138 = !DILocation(line: 83, column: 66, scope: !128)
!139 = !DILocation(line: 84, column: 5, scope: !128)
!140 = !DILocation(line: 85, column: 1, scope: !128)
!141 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 88, type: !62, scopeLine: 89, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!142 = !DILocalVariable(name: "data", scope: !141, file: !3, line: 90, type: !11)
!143 = !DILocation(line: 90, column: 12, scope: !141)
!144 = !DILocalVariable(name: "dataBuffer", scope: !141, file: !3, line: 91, type: !67)
!145 = !DILocation(line: 91, column: 10, scope: !141)
!146 = !DILocation(line: 92, column: 12, scope: !141)
!147 = !DILocation(line: 92, column: 10, scope: !141)
!148 = !DILocalVariable(name: "dataLen", scope: !149, file: !3, line: 95, type: !75)
!149 = distinct !DILexicalBlock(scope: !141, file: !3, line: 93, column: 5)
!150 = !DILocation(line: 95, column: 16, scope: !149)
!151 = !DILocation(line: 95, column: 33, scope: !149)
!152 = !DILocation(line: 95, column: 26, scope: !149)
!153 = !DILocation(line: 97, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !3, line: 97, column: 13)
!155 = !DILocation(line: 97, column: 16, scope: !154)
!156 = !DILocation(line: 97, column: 25, scope: !154)
!157 = !DILocation(line: 97, column: 13, scope: !149)
!158 = !DILocation(line: 100, column: 23, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !3, line: 100, column: 17)
!160 = distinct !DILexicalBlock(scope: !154, file: !3, line: 98, column: 9)
!161 = !DILocation(line: 100, column: 28, scope: !159)
!162 = !DILocation(line: 100, column: 27, scope: !159)
!163 = !DILocation(line: 100, column: 47, scope: !159)
!164 = !DILocation(line: 100, column: 46, scope: !159)
!165 = !DILocation(line: 100, column: 37, scope: !159)
!166 = !DILocation(line: 100, column: 57, scope: !159)
!167 = !DILocation(line: 100, column: 17, scope: !159)
!168 = !DILocation(line: 100, column: 64, scope: !159)
!169 = !DILocation(line: 100, column: 17, scope: !160)
!170 = !DILocation(line: 104, column: 34, scope: !171)
!171 = distinct !DILexicalBlock(scope: !159, file: !3, line: 101, column: 13)
!172 = !DILocation(line: 104, column: 27, scope: !171)
!173 = !DILocation(line: 104, column: 25, scope: !171)
!174 = !DILocation(line: 105, column: 21, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !3, line: 105, column: 21)
!176 = !DILocation(line: 105, column: 29, scope: !175)
!177 = !DILocation(line: 105, column: 33, scope: !175)
!178 = !DILocation(line: 105, column: 36, scope: !175)
!179 = !DILocation(line: 105, column: 41, scope: !175)
!180 = !DILocation(line: 105, column: 48, scope: !175)
!181 = !DILocation(line: 105, column: 52, scope: !175)
!182 = !DILocation(line: 105, column: 21, scope: !171)
!183 = !DILocation(line: 107, column: 21, scope: !184)
!184 = distinct !DILexicalBlock(scope: !175, file: !3, line: 106, column: 17)
!185 = !DILocation(line: 107, column: 26, scope: !184)
!186 = !DILocation(line: 107, column: 33, scope: !184)
!187 = !DILocation(line: 107, column: 37, scope: !184)
!188 = !DILocation(line: 108, column: 17, scope: !184)
!189 = !DILocation(line: 109, column: 13, scope: !171)
!190 = !DILocation(line: 112, column: 17, scope: !191)
!191 = distinct !DILexicalBlock(scope: !159, file: !3, line: 111, column: 13)
!192 = !DILocation(line: 114, column: 17, scope: !191)
!193 = !DILocation(line: 114, column: 22, scope: !191)
!194 = !DILocation(line: 114, column: 31, scope: !191)
!195 = !DILocation(line: 116, column: 9, scope: !160)
!196 = !DILocation(line: 118, column: 68, scope: !141)
!197 = !DILocation(line: 118, column: 66, scope: !141)
!198 = !DILocation(line: 119, column: 5, scope: !141)
!199 = !DILocation(line: 120, column: 1, scope: !141)
!200 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_68_good", scope: !3, file: !3, line: 122, type: !62, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!201 = !DILocation(line: 124, column: 5, scope: !200)
!202 = !DILocation(line: 125, column: 5, scope: !200)
!203 = !DILocation(line: 126, column: 1, scope: !200)
!204 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_68b_badSink", scope: !56, file: !56, line: 32, type: !62, scopeLine: 33, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!205 = !DILocalVariable(name: "data", scope: !204, file: !56, line: 34, type: !11)
!206 = !DILocation(line: 34, column: 12, scope: !204)
!207 = !DILocation(line: 34, column: 19, scope: !204)
!208 = !DILocalVariable(name: "i", scope: !209, file: !56, line: 36, type: !6)
!209 = distinct !DILexicalBlock(scope: !204, file: !56, line: 35, column: 5)
!210 = !DILocation(line: 36, column: 13, scope: !209)
!211 = !DILocalVariable(name: "n", scope: !209, file: !56, line: 36, type: !6)
!212 = !DILocation(line: 36, column: 16, scope: !209)
!213 = !DILocalVariable(name: "intVariable", scope: !209, file: !56, line: 36, type: !6)
!214 = !DILocation(line: 36, column: 19, scope: !209)
!215 = !DILocation(line: 37, column: 20, scope: !216)
!216 = distinct !DILexicalBlock(scope: !209, file: !56, line: 37, column: 13)
!217 = !DILocation(line: 37, column: 13, scope: !216)
!218 = !DILocation(line: 37, column: 36, scope: !216)
!219 = !DILocation(line: 37, column: 13, scope: !209)
!220 = !DILocation(line: 40, column: 25, scope: !221)
!221 = distinct !DILexicalBlock(scope: !216, file: !56, line: 38, column: 9)
!222 = !DILocation(line: 41, column: 20, scope: !223)
!223 = distinct !DILexicalBlock(scope: !221, file: !56, line: 41, column: 13)
!224 = !DILocation(line: 41, column: 18, scope: !223)
!225 = !DILocation(line: 41, column: 25, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !56, line: 41, column: 13)
!227 = !DILocation(line: 41, column: 29, scope: !226)
!228 = !DILocation(line: 41, column: 27, scope: !226)
!229 = !DILocation(line: 41, column: 13, scope: !223)
!230 = !DILocation(line: 44, column: 28, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !56, line: 42, column: 13)
!232 = !DILocation(line: 45, column: 13, scope: !231)
!233 = !DILocation(line: 41, column: 33, scope: !226)
!234 = !DILocation(line: 41, column: 13, scope: !226)
!235 = distinct !{!235, !229, !236, !237}
!236 = !DILocation(line: 45, column: 13, scope: !223)
!237 = !{!"llvm.loop.mustprogress"}
!238 = !DILocation(line: 46, column: 26, scope: !221)
!239 = !DILocation(line: 46, column: 13, scope: !221)
!240 = !DILocation(line: 47, column: 9, scope: !221)
!241 = !DILocation(line: 49, column: 1, scope: !204)
!242 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_68b_goodG2BSink", scope: !56, file: !56, line: 56, type: !62, scopeLine: 57, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!243 = !DILocalVariable(name: "data", scope: !242, file: !56, line: 58, type: !11)
!244 = !DILocation(line: 58, column: 12, scope: !242)
!245 = !DILocation(line: 58, column: 19, scope: !242)
!246 = !DILocalVariable(name: "i", scope: !247, file: !56, line: 60, type: !6)
!247 = distinct !DILexicalBlock(scope: !242, file: !56, line: 59, column: 5)
!248 = !DILocation(line: 60, column: 13, scope: !247)
!249 = !DILocalVariable(name: "n", scope: !247, file: !56, line: 60, type: !6)
!250 = !DILocation(line: 60, column: 16, scope: !247)
!251 = !DILocalVariable(name: "intVariable", scope: !247, file: !56, line: 60, type: !6)
!252 = !DILocation(line: 60, column: 19, scope: !247)
!253 = !DILocation(line: 61, column: 20, scope: !254)
!254 = distinct !DILexicalBlock(scope: !247, file: !56, line: 61, column: 13)
!255 = !DILocation(line: 61, column: 13, scope: !254)
!256 = !DILocation(line: 61, column: 36, scope: !254)
!257 = !DILocation(line: 61, column: 13, scope: !247)
!258 = !DILocation(line: 64, column: 25, scope: !259)
!259 = distinct !DILexicalBlock(scope: !254, file: !56, line: 62, column: 9)
!260 = !DILocation(line: 65, column: 20, scope: !261)
!261 = distinct !DILexicalBlock(scope: !259, file: !56, line: 65, column: 13)
!262 = !DILocation(line: 65, column: 18, scope: !261)
!263 = !DILocation(line: 65, column: 25, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !56, line: 65, column: 13)
!265 = !DILocation(line: 65, column: 29, scope: !264)
!266 = !DILocation(line: 65, column: 27, scope: !264)
!267 = !DILocation(line: 65, column: 13, scope: !261)
!268 = !DILocation(line: 68, column: 28, scope: !269)
!269 = distinct !DILexicalBlock(scope: !264, file: !56, line: 66, column: 13)
!270 = !DILocation(line: 69, column: 13, scope: !269)
!271 = !DILocation(line: 65, column: 33, scope: !264)
!272 = !DILocation(line: 65, column: 13, scope: !264)
!273 = distinct !{!273, !267, !274, !237}
!274 = !DILocation(line: 69, column: 13, scope: !261)
!275 = !DILocation(line: 70, column: 26, scope: !259)
!276 = !DILocation(line: 70, column: 13, scope: !259)
!277 = !DILocation(line: 71, column: 9, scope: !259)
!278 = !DILocation(line: 73, column: 1, scope: !242)
!279 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_68b_goodB2GSink", scope: !56, file: !56, line: 76, type: !62, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!280 = !DILocalVariable(name: "data", scope: !279, file: !56, line: 78, type: !11)
!281 = !DILocation(line: 78, column: 12, scope: !279)
!282 = !DILocation(line: 78, column: 19, scope: !279)
!283 = !DILocalVariable(name: "i", scope: !284, file: !56, line: 80, type: !6)
!284 = distinct !DILexicalBlock(scope: !279, file: !56, line: 79, column: 5)
!285 = !DILocation(line: 80, column: 13, scope: !284)
!286 = !DILocalVariable(name: "n", scope: !284, file: !56, line: 80, type: !6)
!287 = !DILocation(line: 80, column: 16, scope: !284)
!288 = !DILocalVariable(name: "intVariable", scope: !284, file: !56, line: 80, type: !6)
!289 = !DILocation(line: 80, column: 19, scope: !284)
!290 = !DILocation(line: 81, column: 20, scope: !291)
!291 = distinct !DILexicalBlock(scope: !284, file: !56, line: 81, column: 13)
!292 = !DILocation(line: 81, column: 13, scope: !291)
!293 = !DILocation(line: 81, column: 36, scope: !291)
!294 = !DILocation(line: 81, column: 13, scope: !284)
!295 = !DILocation(line: 84, column: 17, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !56, line: 84, column: 17)
!297 = distinct !DILexicalBlock(scope: !291, file: !56, line: 82, column: 9)
!298 = !DILocation(line: 84, column: 19, scope: !296)
!299 = !DILocation(line: 84, column: 17, scope: !297)
!300 = !DILocation(line: 86, column: 29, scope: !301)
!301 = distinct !DILexicalBlock(scope: !296, file: !56, line: 85, column: 13)
!302 = !DILocation(line: 87, column: 24, scope: !303)
!303 = distinct !DILexicalBlock(scope: !301, file: !56, line: 87, column: 17)
!304 = !DILocation(line: 87, column: 22, scope: !303)
!305 = !DILocation(line: 87, column: 29, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !56, line: 87, column: 17)
!307 = !DILocation(line: 87, column: 33, scope: !306)
!308 = !DILocation(line: 87, column: 31, scope: !306)
!309 = !DILocation(line: 87, column: 17, scope: !303)
!310 = !DILocation(line: 90, column: 32, scope: !311)
!311 = distinct !DILexicalBlock(scope: !306, file: !56, line: 88, column: 17)
!312 = !DILocation(line: 91, column: 17, scope: !311)
!313 = !DILocation(line: 87, column: 37, scope: !306)
!314 = !DILocation(line: 87, column: 17, scope: !306)
!315 = distinct !{!315, !309, !316, !237}
!316 = !DILocation(line: 91, column: 17, scope: !303)
!317 = !DILocation(line: 92, column: 30, scope: !301)
!318 = !DILocation(line: 92, column: 17, scope: !301)
!319 = !DILocation(line: 93, column: 13, scope: !301)
!320 = !DILocation(line: 94, column: 9, scope: !297)
!321 = !DILocation(line: 96, column: 1, scope: !279)
!322 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !323, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !11}
!325 = !DILocalVariable(name: "line", arg: 1, scope: !322, file: !18, line: 11, type: !11)
!326 = !DILocation(line: 11, column: 25, scope: !322)
!327 = !DILocation(line: 13, column: 1, scope: !322)
!328 = !DILocation(line: 14, column: 8, scope: !329)
!329 = distinct !DILexicalBlock(scope: !322, file: !18, line: 14, column: 8)
!330 = !DILocation(line: 14, column: 13, scope: !329)
!331 = !DILocation(line: 14, column: 8, scope: !322)
!332 = !DILocation(line: 16, column: 24, scope: !333)
!333 = distinct !DILexicalBlock(scope: !329, file: !18, line: 15, column: 5)
!334 = !DILocation(line: 16, column: 9, scope: !333)
!335 = !DILocation(line: 17, column: 5, scope: !333)
!336 = !DILocation(line: 18, column: 5, scope: !322)
!337 = !DILocation(line: 19, column: 1, scope: !322)
!338 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !323, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!339 = !DILocalVariable(name: "line", arg: 1, scope: !338, file: !18, line: 20, type: !11)
!340 = !DILocation(line: 20, column: 29, scope: !338)
!341 = !DILocation(line: 22, column: 8, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !18, line: 22, column: 8)
!343 = !DILocation(line: 22, column: 13, scope: !342)
!344 = !DILocation(line: 22, column: 8, scope: !338)
!345 = !DILocation(line: 24, column: 24, scope: !346)
!346 = distinct !DILexicalBlock(scope: !342, file: !18, line: 23, column: 5)
!347 = !DILocation(line: 24, column: 9, scope: !346)
!348 = !DILocation(line: 25, column: 5, scope: !346)
!349 = !DILocation(line: 26, column: 1, scope: !338)
!350 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !351, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !6)
!355 = !DILocalVariable(name: "line", arg: 1, scope: !350, file: !18, line: 27, type: !353)
!356 = !DILocation(line: 27, column: 29, scope: !350)
!357 = !DILocation(line: 29, column: 8, scope: !358)
!358 = distinct !DILexicalBlock(scope: !350, file: !18, line: 29, column: 8)
!359 = !DILocation(line: 29, column: 13, scope: !358)
!360 = !DILocation(line: 29, column: 8, scope: !350)
!361 = !DILocation(line: 31, column: 27, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !18, line: 30, column: 5)
!363 = !DILocation(line: 31, column: 9, scope: !362)
!364 = !DILocation(line: 32, column: 5, scope: !362)
!365 = !DILocation(line: 33, column: 1, scope: !350)
!366 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !367, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !6}
!369 = !DILocalVariable(name: "intNumber", arg: 1, scope: !366, file: !18, line: 35, type: !6)
!370 = !DILocation(line: 35, column: 24, scope: !366)
!371 = !DILocation(line: 37, column: 20, scope: !366)
!372 = !DILocation(line: 37, column: 5, scope: !366)
!373 = !DILocation(line: 38, column: 1, scope: !366)
!374 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !375, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !377}
!377 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!378 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !374, file: !18, line: 40, type: !377)
!379 = !DILocation(line: 40, column: 28, scope: !374)
!380 = !DILocation(line: 42, column: 21, scope: !374)
!381 = !DILocation(line: 42, column: 5, scope: !374)
!382 = !DILocation(line: 43, column: 1, scope: !374)
!383 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !384, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !386}
!386 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!387 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !383, file: !18, line: 45, type: !386)
!388 = !DILocation(line: 45, column: 28, scope: !383)
!389 = !DILocation(line: 47, column: 20, scope: !383)
!390 = !DILocation(line: 47, column: 5, scope: !383)
!391 = !DILocation(line: 48, column: 1, scope: !383)
!392 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !393, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !395}
!395 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!396 = !DILocalVariable(name: "longNumber", arg: 1, scope: !392, file: !18, line: 50, type: !395)
!397 = !DILocation(line: 50, column: 26, scope: !392)
!398 = !DILocation(line: 52, column: 21, scope: !392)
!399 = !DILocation(line: 52, column: 5, scope: !392)
!400 = !DILocation(line: 53, column: 1, scope: !392)
!401 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !402, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !404}
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !405, line: 27, baseType: !406)
!405 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !407, line: 44, baseType: !395)
!407 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!408 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !401, file: !18, line: 55, type: !404)
!409 = !DILocation(line: 55, column: 33, scope: !401)
!410 = !DILocation(line: 57, column: 29, scope: !401)
!411 = !DILocation(line: 57, column: 5, scope: !401)
!412 = !DILocation(line: 58, column: 1, scope: !401)
!413 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !414, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !75}
!416 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !413, file: !18, line: 60, type: !75)
!417 = !DILocation(line: 60, column: 29, scope: !413)
!418 = !DILocation(line: 62, column: 21, scope: !413)
!419 = !DILocation(line: 62, column: 5, scope: !413)
!420 = !DILocation(line: 63, column: 1, scope: !413)
!421 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !422, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !12}
!424 = !DILocalVariable(name: "charHex", arg: 1, scope: !421, file: !18, line: 65, type: !12)
!425 = !DILocation(line: 65, column: 29, scope: !421)
!426 = !DILocation(line: 67, column: 22, scope: !421)
!427 = !DILocation(line: 67, column: 5, scope: !421)
!428 = !DILocation(line: 68, column: 1, scope: !421)
!429 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !430, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !354}
!432 = !DILocalVariable(name: "wideChar", arg: 1, scope: !429, file: !18, line: 70, type: !354)
!433 = !DILocation(line: 70, column: 29, scope: !429)
!434 = !DILocalVariable(name: "s", scope: !429, file: !18, line: 74, type: !435)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 64, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 2)
!438 = !DILocation(line: 74, column: 13, scope: !429)
!439 = !DILocation(line: 75, column: 16, scope: !429)
!440 = !DILocation(line: 75, column: 9, scope: !429)
!441 = !DILocation(line: 75, column: 14, scope: !429)
!442 = !DILocation(line: 76, column: 9, scope: !429)
!443 = !DILocation(line: 76, column: 14, scope: !429)
!444 = !DILocation(line: 77, column: 21, scope: !429)
!445 = !DILocation(line: 77, column: 5, scope: !429)
!446 = !DILocation(line: 78, column: 1, scope: !429)
!447 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !448, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !22}
!450 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !447, file: !18, line: 80, type: !22)
!451 = !DILocation(line: 80, column: 33, scope: !447)
!452 = !DILocation(line: 82, column: 20, scope: !447)
!453 = !DILocation(line: 82, column: 5, scope: !447)
!454 = !DILocation(line: 83, column: 1, scope: !447)
!455 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !456, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !38}
!458 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !455, file: !18, line: 85, type: !38)
!459 = !DILocation(line: 85, column: 45, scope: !455)
!460 = !DILocation(line: 87, column: 22, scope: !455)
!461 = !DILocation(line: 87, column: 5, scope: !455)
!462 = !DILocation(line: 88, column: 1, scope: !455)
!463 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !464, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !466}
!466 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!467 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !463, file: !18, line: 90, type: !466)
!468 = !DILocation(line: 90, column: 29, scope: !463)
!469 = !DILocation(line: 92, column: 20, scope: !463)
!470 = !DILocation(line: 92, column: 5, scope: !463)
!471 = !DILocation(line: 93, column: 1, scope: !463)
!472 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !473, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !477, line: 100, baseType: !478)
!477 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_018/source_code")
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !477, line: 96, size: 64, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !478, file: !477, line: 98, baseType: !6, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !478, file: !477, line: 99, baseType: !6, size: 32, offset: 32)
!482 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !472, file: !18, line: 95, type: !475)
!483 = !DILocation(line: 95, column: 40, scope: !472)
!484 = !DILocation(line: 97, column: 26, scope: !472)
!485 = !DILocation(line: 97, column: 47, scope: !472)
!486 = !DILocation(line: 97, column: 55, scope: !472)
!487 = !DILocation(line: 97, column: 76, scope: !472)
!488 = !DILocation(line: 97, column: 5, scope: !472)
!489 = !DILocation(line: 98, column: 1, scope: !472)
!490 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !491, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !493, !75}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!494 = !DILocalVariable(name: "bytes", arg: 1, scope: !490, file: !18, line: 100, type: !493)
!495 = !DILocation(line: 100, column: 38, scope: !490)
!496 = !DILocalVariable(name: "numBytes", arg: 2, scope: !490, file: !18, line: 100, type: !75)
!497 = !DILocation(line: 100, column: 52, scope: !490)
!498 = !DILocalVariable(name: "i", scope: !490, file: !18, line: 102, type: !75)
!499 = !DILocation(line: 102, column: 12, scope: !490)
!500 = !DILocation(line: 103, column: 12, scope: !501)
!501 = distinct !DILexicalBlock(scope: !490, file: !18, line: 103, column: 5)
!502 = !DILocation(line: 103, column: 10, scope: !501)
!503 = !DILocation(line: 103, column: 17, scope: !504)
!504 = distinct !DILexicalBlock(scope: !501, file: !18, line: 103, column: 5)
!505 = !DILocation(line: 103, column: 21, scope: !504)
!506 = !DILocation(line: 103, column: 19, scope: !504)
!507 = !DILocation(line: 103, column: 5, scope: !501)
!508 = !DILocation(line: 105, column: 24, scope: !509)
!509 = distinct !DILexicalBlock(scope: !504, file: !18, line: 104, column: 5)
!510 = !DILocation(line: 105, column: 30, scope: !509)
!511 = !DILocation(line: 105, column: 9, scope: !509)
!512 = !DILocation(line: 106, column: 5, scope: !509)
!513 = !DILocation(line: 103, column: 31, scope: !504)
!514 = !DILocation(line: 103, column: 5, scope: !504)
!515 = distinct !{!515, !507, !516, !237}
!516 = !DILocation(line: 106, column: 5, scope: !501)
!517 = !DILocation(line: 107, column: 5, scope: !490)
!518 = !DILocation(line: 108, column: 1, scope: !490)
!519 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !520, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!520 = !DISubroutineType(types: !521)
!521 = !{!75, !493, !75, !11}
!522 = !DILocalVariable(name: "bytes", arg: 1, scope: !519, file: !18, line: 113, type: !493)
!523 = !DILocation(line: 113, column: 39, scope: !519)
!524 = !DILocalVariable(name: "numBytes", arg: 2, scope: !519, file: !18, line: 113, type: !75)
!525 = !DILocation(line: 113, column: 53, scope: !519)
!526 = !DILocalVariable(name: "hex", arg: 3, scope: !519, file: !18, line: 113, type: !11)
!527 = !DILocation(line: 113, column: 71, scope: !519)
!528 = !DILocalVariable(name: "numWritten", scope: !519, file: !18, line: 115, type: !75)
!529 = !DILocation(line: 115, column: 12, scope: !519)
!530 = !DILocation(line: 121, column: 5, scope: !519)
!531 = !DILocation(line: 121, column: 12, scope: !519)
!532 = !DILocation(line: 121, column: 25, scope: !519)
!533 = !DILocation(line: 121, column: 23, scope: !519)
!534 = !DILocation(line: 121, column: 34, scope: !519)
!535 = !DILocation(line: 121, column: 37, scope: !519)
!536 = !DILocation(line: 121, column: 67, scope: !519)
!537 = !DILocation(line: 121, column: 70, scope: !519)
!538 = !DILocation(line: 0, scope: !519)
!539 = !DILocalVariable(name: "byte", scope: !540, file: !18, line: 123, type: !6)
!540 = distinct !DILexicalBlock(scope: !519, file: !18, line: 122, column: 5)
!541 = !DILocation(line: 123, column: 13, scope: !540)
!542 = !DILocation(line: 124, column: 17, scope: !540)
!543 = !DILocation(line: 124, column: 25, scope: !540)
!544 = !DILocation(line: 124, column: 23, scope: !540)
!545 = !DILocation(line: 124, column: 9, scope: !540)
!546 = !DILocation(line: 125, column: 45, scope: !540)
!547 = !DILocation(line: 125, column: 29, scope: !540)
!548 = !DILocation(line: 125, column: 9, scope: !540)
!549 = !DILocation(line: 125, column: 15, scope: !540)
!550 = !DILocation(line: 125, column: 27, scope: !540)
!551 = !DILocation(line: 126, column: 9, scope: !540)
!552 = distinct !{!552, !530, !553, !237}
!553 = !DILocation(line: 127, column: 5, scope: !519)
!554 = !DILocation(line: 129, column: 12, scope: !519)
!555 = !DILocation(line: 129, column: 5, scope: !519)
!556 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !557, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!557 = !DISubroutineType(types: !558)
!558 = !{!75, !493, !75, !353}
!559 = !DILocalVariable(name: "bytes", arg: 1, scope: !556, file: !18, line: 135, type: !493)
!560 = !DILocation(line: 135, column: 41, scope: !556)
!561 = !DILocalVariable(name: "numBytes", arg: 2, scope: !556, file: !18, line: 135, type: !75)
!562 = !DILocation(line: 135, column: 55, scope: !556)
!563 = !DILocalVariable(name: "hex", arg: 3, scope: !556, file: !18, line: 135, type: !353)
!564 = !DILocation(line: 135, column: 76, scope: !556)
!565 = !DILocalVariable(name: "numWritten", scope: !556, file: !18, line: 137, type: !75)
!566 = !DILocation(line: 137, column: 12, scope: !556)
!567 = !DILocation(line: 143, column: 5, scope: !556)
!568 = !DILocation(line: 143, column: 12, scope: !556)
!569 = !DILocation(line: 143, column: 25, scope: !556)
!570 = !DILocation(line: 143, column: 23, scope: !556)
!571 = !DILocation(line: 143, column: 34, scope: !556)
!572 = !DILocation(line: 143, column: 47, scope: !556)
!573 = !DILocation(line: 143, column: 55, scope: !556)
!574 = !DILocation(line: 143, column: 53, scope: !556)
!575 = !DILocation(line: 143, column: 37, scope: !556)
!576 = !DILocation(line: 143, column: 68, scope: !556)
!577 = !DILocation(line: 143, column: 81, scope: !556)
!578 = !DILocation(line: 143, column: 89, scope: !556)
!579 = !DILocation(line: 143, column: 87, scope: !556)
!580 = !DILocation(line: 143, column: 100, scope: !556)
!581 = !DILocation(line: 143, column: 71, scope: !556)
!582 = !DILocation(line: 0, scope: !556)
!583 = !DILocalVariable(name: "byte", scope: !584, file: !18, line: 145, type: !6)
!584 = distinct !DILexicalBlock(scope: !556, file: !18, line: 144, column: 5)
!585 = !DILocation(line: 145, column: 13, scope: !584)
!586 = !DILocation(line: 146, column: 18, scope: !584)
!587 = !DILocation(line: 146, column: 26, scope: !584)
!588 = !DILocation(line: 146, column: 24, scope: !584)
!589 = !DILocation(line: 146, column: 9, scope: !584)
!590 = !DILocation(line: 147, column: 45, scope: !584)
!591 = !DILocation(line: 147, column: 29, scope: !584)
!592 = !DILocation(line: 147, column: 9, scope: !584)
!593 = !DILocation(line: 147, column: 15, scope: !584)
!594 = !DILocation(line: 147, column: 27, scope: !584)
!595 = !DILocation(line: 148, column: 9, scope: !584)
!596 = distinct !{!596, !567, !597, !237}
!597 = !DILocation(line: 149, column: 5, scope: !556)
!598 = !DILocation(line: 151, column: 12, scope: !556)
!599 = !DILocation(line: 151, column: 5, scope: !556)
!600 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !601, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!601 = !DISubroutineType(types: !602)
!602 = !{!6}
!603 = !DILocation(line: 158, column: 5, scope: !600)
!604 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !601, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!605 = !DILocation(line: 163, column: 5, scope: !604)
!606 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !601, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!607 = !DILocation(line: 168, column: 13, scope: !606)
!608 = !DILocation(line: 168, column: 20, scope: !606)
!609 = !DILocation(line: 168, column: 5, scope: !606)
!610 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !62, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!611 = !DILocation(line: 187, column: 16, scope: !610)
!612 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !62, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!613 = !DILocation(line: 188, column: 16, scope: !612)
!614 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !62, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!615 = !DILocation(line: 189, column: 16, scope: !614)
!616 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !62, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!617 = !DILocation(line: 190, column: 16, scope: !616)
!618 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !62, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!619 = !DILocation(line: 191, column: 16, scope: !618)
!620 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !62, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!621 = !DILocation(line: 192, column: 16, scope: !620)
!622 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !62, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!623 = !DILocation(line: 193, column: 16, scope: !622)
!624 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !62, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!625 = !DILocation(line: 194, column: 16, scope: !624)
!626 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !62, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!627 = !DILocation(line: 195, column: 16, scope: !626)
!628 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !62, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!629 = !DILocation(line: 198, column: 15, scope: !628)
!630 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !62, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!631 = !DILocation(line: 199, column: 15, scope: !630)
!632 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !62, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!633 = !DILocation(line: 200, column: 15, scope: !632)
!634 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !62, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!635 = !DILocation(line: 201, column: 15, scope: !634)
!636 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !62, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!637 = !DILocation(line: 202, column: 15, scope: !636)
!638 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !62, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!639 = !DILocation(line: 203, column: 15, scope: !638)
!640 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !62, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!641 = !DILocation(line: 204, column: 15, scope: !640)
!642 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !62, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!643 = !DILocation(line: 205, column: 15, scope: !642)
!644 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !62, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!645 = !DILocation(line: 206, column: 15, scope: !644)
