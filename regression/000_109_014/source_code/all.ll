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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_64_bad() #0 !dbg !55 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
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
  %2 = load i64, i64* %dataLen, align 8, !dbg !75
  %sub = sub i64 100, %2, !dbg !77
  %cmp = icmp ugt i64 %sub, 1, !dbg !78
  br i1 %cmp, label %if.then, label %if.end18, !dbg !79

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !80
  %4 = load i64, i64* %dataLen, align 8, !dbg !83
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !84
  %5 = load i64, i64* %dataLen, align 8, !dbg !85
  %sub1 = sub i64 100, %5, !dbg !86
  %conv = trunc i64 %sub1 to i32, !dbg !87
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !88
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !89
  %cmp3 = icmp ne i8* %call2, null, !dbg !90
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !91

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !92
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !94
  store i64 %call6, i64* %dataLen, align 8, !dbg !95
  %8 = load i64, i64* %dataLen, align 8, !dbg !96
  %cmp7 = icmp ugt i64 %8, 0, !dbg !98
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !99

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !100
  %10 = load i64, i64* %dataLen, align 8, !dbg !101
  %sub9 = sub i64 %10, 1, !dbg !102
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !100
  %11 = load i8, i8* %arrayidx, align 1, !dbg !100
  %conv10 = sext i8 %11 to i32, !dbg !100
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !103
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !104

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !105
  %13 = load i64, i64* %dataLen, align 8, !dbg !107
  %sub14 = sub i64 %13, 1, !dbg !108
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !105
  store i8 0, i8* %arrayidx15, align 1, !dbg !109
  br label %if.end, !dbg !110

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !111

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !112
  %14 = load i8*, i8** %data, align 8, !dbg !114
  %15 = load i64, i64* %dataLen, align 8, !dbg !115
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !114
  store i8 0, i8* %arrayidx16, align 1, !dbg !116
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !117

if.end18:                                         ; preds = %if.end17, %entry
  %16 = bitcast i8** %data to i8*, !dbg !118
  call void @CWE606_Unchecked_Loop_Condition__char_console_64b_badSink(i8* %16), !dbg !119
  ret void, !dbg !120
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !121 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !124, metadata !DIExpression()), !dbg !125
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !125
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !125
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !126
  store i8* %arraydecay, i8** %data, align 8, !dbg !127
  %1 = load i8*, i8** %data, align 8, !dbg !128
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !129
  %2 = bitcast i8** %data to i8*, !dbg !130
  call void @CWE606_Unchecked_Loop_Condition__char_console_64b_goodG2BSink(i8* %2), !dbg !131
  ret void, !dbg !132
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !133 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !136, metadata !DIExpression()), !dbg !137
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !137
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !137
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !138
  store i8* %arraydecay, i8** %data, align 8, !dbg !139
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !140, metadata !DIExpression()), !dbg !142
  %1 = load i8*, i8** %data, align 8, !dbg !143
  %call = call i64 @strlen(i8* %1) #7, !dbg !144
  store i64 %call, i64* %dataLen, align 8, !dbg !142
  %2 = load i64, i64* %dataLen, align 8, !dbg !145
  %sub = sub i64 100, %2, !dbg !147
  %cmp = icmp ugt i64 %sub, 1, !dbg !148
  br i1 %cmp, label %if.then, label %if.end18, !dbg !149

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !150
  %4 = load i64, i64* %dataLen, align 8, !dbg !153
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !154
  %5 = load i64, i64* %dataLen, align 8, !dbg !155
  %sub1 = sub i64 100, %5, !dbg !156
  %conv = trunc i64 %sub1 to i32, !dbg !157
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !158
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !159
  %cmp3 = icmp ne i8* %call2, null, !dbg !160
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !161

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !162
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !164
  store i64 %call6, i64* %dataLen, align 8, !dbg !165
  %8 = load i64, i64* %dataLen, align 8, !dbg !166
  %cmp7 = icmp ugt i64 %8, 0, !dbg !168
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !169

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !170
  %10 = load i64, i64* %dataLen, align 8, !dbg !171
  %sub9 = sub i64 %10, 1, !dbg !172
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !170
  %11 = load i8, i8* %arrayidx, align 1, !dbg !170
  %conv10 = sext i8 %11 to i32, !dbg !170
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !173
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !174

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !175
  %13 = load i64, i64* %dataLen, align 8, !dbg !177
  %sub14 = sub i64 %13, 1, !dbg !178
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !175
  store i8 0, i8* %arrayidx15, align 1, !dbg !179
  br label %if.end, !dbg !180

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !181

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !182
  %14 = load i8*, i8** %data, align 8, !dbg !184
  %15 = load i64, i64* %dataLen, align 8, !dbg !185
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !184
  store i8 0, i8* %arrayidx16, align 1, !dbg !186
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !187

if.end18:                                         ; preds = %if.end17, %entry
  %16 = bitcast i8** %data to i8*, !dbg !188
  call void @CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink(i8* %16), !dbg !189
  ret void, !dbg !190
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_64_good() #0 !dbg !191 {
entry:
  call void @goodG2B(), !dbg !192
  call void @goodB2G(), !dbg !193
  ret void, !dbg !194
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_64b_badSink(i8* %dataVoidPtr) #0 !dbg !195 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !200, metadata !DIExpression()), !dbg !201
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !202
  %1 = bitcast i8* %0 to i8**, !dbg !203
  store i8** %1, i8*** %dataPtr, align 8, !dbg !201
  call void @llvm.dbg.declare(metadata i8** %data, metadata !204, metadata !DIExpression()), !dbg !205
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !206
  %3 = load i8*, i8** %2, align 8, !dbg !207
  store i8* %3, i8** %data, align 8, !dbg !205
  call void @llvm.dbg.declare(metadata i32* %i, metadata !208, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata i32* %n, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !213, metadata !DIExpression()), !dbg !214
  %4 = load i8*, i8** %data, align 8, !dbg !215
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !217
  %cmp = icmp eq i32 %call, 1, !dbg !218
  br i1 %cmp, label %if.then, label %if.end, !dbg !219

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !220
  store i32 0, i32* %i, align 4, !dbg !222
  br label %for.cond, !dbg !224

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !225
  %6 = load i32, i32* %n, align 4, !dbg !227
  %cmp1 = icmp slt i32 %5, %6, !dbg !228
  br i1 %cmp1, label %for.body, label %for.end, !dbg !229

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !230
  %inc = add nsw i32 %7, 1, !dbg !230
  store i32 %inc, i32* %intVariable, align 4, !dbg !230
  br label %for.inc, !dbg !232

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !233
  %inc2 = add nsw i32 %8, 1, !dbg !233
  store i32 %inc2, i32* %i, align 4, !dbg !233
  br label %for.cond, !dbg !234, !llvm.loop !235

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !238
  call void @printIntLine(i32 %9), !dbg !239
  br label %if.end, !dbg !240

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !241
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_64b_goodG2BSink(i8* %dataVoidPtr) #0 !dbg !242 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !247
  %1 = bitcast i8* %0 to i8**, !dbg !248
  store i8** %1, i8*** %dataPtr, align 8, !dbg !246
  call void @llvm.dbg.declare(metadata i8** %data, metadata !249, metadata !DIExpression()), !dbg !250
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !251
  %3 = load i8*, i8** %2, align 8, !dbg !252
  store i8* %3, i8** %data, align 8, !dbg !250
  call void @llvm.dbg.declare(metadata i32* %i, metadata !253, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.declare(metadata i32* %n, metadata !256, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !258, metadata !DIExpression()), !dbg !259
  %4 = load i8*, i8** %data, align 8, !dbg !260
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !262
  %cmp = icmp eq i32 %call, 1, !dbg !263
  br i1 %cmp, label %if.then, label %if.end, !dbg !264

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !265
  store i32 0, i32* %i, align 4, !dbg !267
  br label %for.cond, !dbg !269

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !270
  %6 = load i32, i32* %n, align 4, !dbg !272
  %cmp1 = icmp slt i32 %5, %6, !dbg !273
  br i1 %cmp1, label %for.body, label %for.end, !dbg !274

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !275
  %inc = add nsw i32 %7, 1, !dbg !275
  store i32 %inc, i32* %intVariable, align 4, !dbg !275
  br label %for.inc, !dbg !277

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !278
  %inc2 = add nsw i32 %8, 1, !dbg !278
  store i32 %inc2, i32* %i, align 4, !dbg !278
  br label %for.cond, !dbg !279, !llvm.loop !280

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !282
  call void @printIntLine(i32 %9), !dbg !283
  br label %if.end, !dbg !284

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !285
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink(i8* %dataVoidPtr) #0 !dbg !286 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !289, metadata !DIExpression()), !dbg !290
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !291
  %1 = bitcast i8* %0 to i8**, !dbg !292
  store i8** %1, i8*** %dataPtr, align 8, !dbg !290
  call void @llvm.dbg.declare(metadata i8** %data, metadata !293, metadata !DIExpression()), !dbg !294
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !295
  %3 = load i8*, i8** %2, align 8, !dbg !296
  store i8* %3, i8** %data, align 8, !dbg !294
  call void @llvm.dbg.declare(metadata i32* %i, metadata !297, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata i32* %n, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !302, metadata !DIExpression()), !dbg !303
  %4 = load i8*, i8** %data, align 8, !dbg !304
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !306
  %cmp = icmp eq i32 %call, 1, !dbg !307
  br i1 %cmp, label %if.then, label %if.end5, !dbg !308

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %n, align 4, !dbg !309
  %cmp1 = icmp slt i32 %5, 10000, !dbg !312
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !313

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !314
  store i32 0, i32* %i, align 4, !dbg !316
  br label %for.cond, !dbg !318

for.cond:                                         ; preds = %for.inc, %if.then2
  %6 = load i32, i32* %i, align 4, !dbg !319
  %7 = load i32, i32* %n, align 4, !dbg !321
  %cmp3 = icmp slt i32 %6, %7, !dbg !322
  br i1 %cmp3, label %for.body, label %for.end, !dbg !323

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !324
  %inc = add nsw i32 %8, 1, !dbg !324
  store i32 %inc, i32* %intVariable, align 4, !dbg !324
  br label %for.inc, !dbg !326

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !327
  %inc4 = add nsw i32 %9, 1, !dbg !327
  store i32 %inc4, i32* %i, align 4, !dbg !327
  br label %for.cond, !dbg !328, !llvm.loop !329

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %intVariable, align 4, !dbg !331
  call void @printIntLine(i32 %10), !dbg !332
  br label %if.end, !dbg !333

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !334

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !335
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !336 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !339, metadata !DIExpression()), !dbg !340
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !341
  %0 = load i8*, i8** %line.addr, align 8, !dbg !342
  %cmp = icmp ne i8* %0, null, !dbg !344
  br i1 %cmp, label %if.then, label %if.end, !dbg !345

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !346
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !348
  br label %if.end, !dbg !349

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !350
  ret void, !dbg !351
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !352 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !353, metadata !DIExpression()), !dbg !354
  %0 = load i8*, i8** %line.addr, align 8, !dbg !355
  %cmp = icmp ne i8* %0, null, !dbg !357
  br i1 %cmp, label %if.then, label %if.end, !dbg !358

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !359
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !361
  br label %if.end, !dbg !362

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !363
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !364 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load i32*, i32** %line.addr, align 8, !dbg !371
  %cmp = icmp ne i32* %0, null, !dbg !373
  br i1 %cmp, label %if.then, label %if.end, !dbg !374

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !375
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.12, i64 0, i64 0), i32* %1), !dbg !377
  br label %if.end, !dbg !378

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !379
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !380 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !386
  ret void, !dbg !387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !388 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !392, metadata !DIExpression()), !dbg !393
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !394
  %conv = sext i16 %0 to i32, !dbg !394
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !395
  ret void, !dbg !396
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !397 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !401, metadata !DIExpression()), !dbg !402
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !403
  %conv = fpext float %0 to double, !dbg !403
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !404
  ret void, !dbg !405
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !406 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !410, metadata !DIExpression()), !dbg !411
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !412
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !413
  ret void, !dbg !414
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !415 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !422, metadata !DIExpression()), !dbg !423
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !424
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !425
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !427 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !430, metadata !DIExpression()), !dbg !431
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !432
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !433
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !435 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !438, metadata !DIExpression()), !dbg !439
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !440
  %conv = sext i8 %0 to i32, !dbg !440
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !441
  ret void, !dbg !442
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !443 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !446, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !448, metadata !DIExpression()), !dbg !452
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !453
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !454
  store i32 %0, i32* %arrayidx, align 4, !dbg !455
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !456
  store i32 0, i32* %arrayidx1, align 4, !dbg !457
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !458
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.15, i64 0, i64 0), i32* %arraydecay), !dbg !459
  ret void, !dbg !460
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !461 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !464, metadata !DIExpression()), !dbg !465
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !466
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !467
  ret void, !dbg !468
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !469 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !472, metadata !DIExpression()), !dbg !473
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !474
  %conv = zext i8 %0 to i32, !dbg !474
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !475
  ret void, !dbg !476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !477 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !481, metadata !DIExpression()), !dbg !482
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !483
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !484
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !486 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !496, metadata !DIExpression()), !dbg !497
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !498
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !499
  %1 = load i32, i32* %intOne, align 4, !dbg !499
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !500
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !501
  %3 = load i32, i32* %intTwo, align 4, !dbg !501
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !502
  ret void, !dbg !503
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !504 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !508, metadata !DIExpression()), !dbg !509
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !510, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.declare(metadata i64* %i, metadata !512, metadata !DIExpression()), !dbg !513
  store i64 0, i64* %i, align 8, !dbg !514
  br label %for.cond, !dbg !516

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !517
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !519
  %cmp = icmp ult i64 %0, %1, !dbg !520
  br i1 %cmp, label %for.body, label %for.end, !dbg !521

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !522
  %3 = load i64, i64* %i, align 8, !dbg !524
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !522
  %4 = load i8, i8* %arrayidx, align 1, !dbg !522
  %conv = zext i8 %4 to i32, !dbg !522
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !525
  br label %for.inc, !dbg !526

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !527
  %inc = add i64 %5, 1, !dbg !527
  store i64 %inc, i64* %i, align 8, !dbg !527
  br label %for.cond, !dbg !528, !llvm.loop !529

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !531
  ret void, !dbg !532
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !533 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !536, metadata !DIExpression()), !dbg !537
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !538, metadata !DIExpression()), !dbg !539
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !540, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !542, metadata !DIExpression()), !dbg !543
  store i64 0, i64* %numWritten, align 8, !dbg !543
  br label %while.cond, !dbg !544

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !545
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !546
  %cmp = icmp ult i64 %0, %1, !dbg !547
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !548

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !549
  %2 = load i16*, i16** %call, align 8, !dbg !549
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !549
  %4 = load i64, i64* %numWritten, align 8, !dbg !549
  %mul = mul i64 2, %4, !dbg !549
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !549
  %5 = load i8, i8* %arrayidx, align 1, !dbg !549
  %conv = sext i8 %5 to i32, !dbg !549
  %idxprom = sext i32 %conv to i64, !dbg !549
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !549
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !549
  %conv2 = zext i16 %6 to i32, !dbg !549
  %and = and i32 %conv2, 4096, !dbg !549
  %tobool = icmp ne i32 %and, 0, !dbg !549
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !550

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !551
  %7 = load i16*, i16** %call3, align 8, !dbg !551
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !551
  %9 = load i64, i64* %numWritten, align 8, !dbg !551
  %mul4 = mul i64 2, %9, !dbg !551
  %add = add i64 %mul4, 1, !dbg !551
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !551
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !551
  %conv6 = sext i8 %10 to i32, !dbg !551
  %idxprom7 = sext i32 %conv6 to i64, !dbg !551
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !551
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !551
  %conv9 = zext i16 %11 to i32, !dbg !551
  %and10 = and i32 %conv9, 4096, !dbg !551
  %tobool11 = icmp ne i32 %and10, 0, !dbg !550
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !552
  br i1 %12, label %while.body, label %while.end, !dbg !544

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !553, metadata !DIExpression()), !dbg !555
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !556
  %14 = load i64, i64* %numWritten, align 8, !dbg !557
  %mul12 = mul i64 2, %14, !dbg !558
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !556
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !559
  %15 = load i32, i32* %byte, align 4, !dbg !560
  %conv15 = trunc i32 %15 to i8, !dbg !561
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !562
  %17 = load i64, i64* %numWritten, align 8, !dbg !563
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !562
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !564
  %18 = load i64, i64* %numWritten, align 8, !dbg !565
  %inc = add i64 %18, 1, !dbg !565
  store i64 %inc, i64* %numWritten, align 8, !dbg !565
  br label %while.cond, !dbg !544, !llvm.loop !566

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !568
  ret i64 %19, !dbg !569
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !570 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !573, metadata !DIExpression()), !dbg !574
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !575, metadata !DIExpression()), !dbg !576
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !577, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !579, metadata !DIExpression()), !dbg !580
  store i64 0, i64* %numWritten, align 8, !dbg !580
  br label %while.cond, !dbg !581

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !582
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !583
  %cmp = icmp ult i64 %0, %1, !dbg !584
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !585

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !586
  %3 = load i64, i64* %numWritten, align 8, !dbg !587
  %mul = mul i64 2, %3, !dbg !588
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !586
  %4 = load i32, i32* %arrayidx, align 4, !dbg !586
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !589
  %tobool = icmp ne i32 %call, 0, !dbg !589
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !590

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !591
  %6 = load i64, i64* %numWritten, align 8, !dbg !592
  %mul1 = mul i64 2, %6, !dbg !593
  %add = add i64 %mul1, 1, !dbg !594
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !591
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !591
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !595
  %tobool4 = icmp ne i32 %call3, 0, !dbg !590
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !596
  br i1 %8, label %while.body, label %while.end, !dbg !581

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !597, metadata !DIExpression()), !dbg !599
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !600
  %10 = load i64, i64* %numWritten, align 8, !dbg !601
  %mul5 = mul i64 2, %10, !dbg !602
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !600
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !603
  %11 = load i32, i32* %byte, align 4, !dbg !604
  %conv = trunc i32 %11 to i8, !dbg !605
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !606
  %13 = load i64, i64* %numWritten, align 8, !dbg !607
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !606
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !608
  %14 = load i64, i64* %numWritten, align 8, !dbg !609
  %inc = add i64 %14, 1, !dbg !609
  store i64 %inc, i64* %numWritten, align 8, !dbg !609
  br label %while.cond, !dbg !581, !llvm.loop !610

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !612
  ret i64 %15, !dbg !613
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !614 {
entry:
  ret i32 1, !dbg !617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !618 {
entry:
  ret i32 0, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !620 {
entry:
  %call = call i32 @rand() #8, !dbg !621
  %rem = srem i32 %call, 2, !dbg !622
  ret i32 %rem, !dbg !623
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !624 {
entry:
  ret void, !dbg !625
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !626 {
entry:
  ret void, !dbg !627
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !628 {
entry:
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !630 {
entry:
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !632 {
entry:
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !634 {
entry:
  ret void, !dbg !635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !636 {
entry:
  ret void, !dbg !637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !638 {
entry:
  ret void, !dbg !639
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !640 {
entry:
  ret void, !dbg !641
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !642 {
entry:
  ret void, !dbg !643
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !644 {
entry:
  ret void, !dbg !645
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !646 {
entry:
  ret void, !dbg !647
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !648 {
entry:
  ret void, !dbg !649
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !650 {
entry:
  ret void, !dbg !651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !652 {
entry:
  ret void, !dbg !653
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !654 {
entry:
  ret void, !dbg !655
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !656 {
entry:
  ret void, !dbg !657
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !658 {
entry:
  ret void, !dbg !659
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
!llvm.ident = !{!51, !51, !51}
!llvm.module.flags = !{!52, !53, !54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_014/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_64a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_014/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !50, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_64b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_014/source_code")
!50 = !{!41}
!51 = !{!"clang version 12.0.0"}
!52 = !{i32 7, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_64_bad", scope: !45, file: !45, line: 31, type: !56, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!56 = !DISubroutineType(types: !57)
!57 = !{null}
!58 = !DILocalVariable(name: "data", scope: !55, file: !45, line: 33, type: !42)
!59 = !DILocation(line: 33, column: 12, scope: !55)
!60 = !DILocalVariable(name: "dataBuffer", scope: !55, file: !45, line: 34, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 100)
!64 = !DILocation(line: 34, column: 10, scope: !55)
!65 = !DILocation(line: 35, column: 12, scope: !55)
!66 = !DILocation(line: 35, column: 10, scope: !55)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !45, line: 38, type: !69)
!68 = distinct !DILexicalBlock(scope: !55, file: !45, line: 36, column: 5)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!71 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DILocation(line: 38, column: 16, scope: !68)
!73 = !DILocation(line: 38, column: 33, scope: !68)
!74 = !DILocation(line: 38, column: 26, scope: !68)
!75 = !DILocation(line: 40, column: 17, scope: !76)
!76 = distinct !DILexicalBlock(scope: !68, file: !45, line: 40, column: 13)
!77 = !DILocation(line: 40, column: 16, scope: !76)
!78 = !DILocation(line: 40, column: 25, scope: !76)
!79 = !DILocation(line: 40, column: 13, scope: !68)
!80 = !DILocation(line: 43, column: 23, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !45, line: 43, column: 17)
!82 = distinct !DILexicalBlock(scope: !76, file: !45, line: 41, column: 9)
!83 = !DILocation(line: 43, column: 28, scope: !81)
!84 = !DILocation(line: 43, column: 27, scope: !81)
!85 = !DILocation(line: 43, column: 47, scope: !81)
!86 = !DILocation(line: 43, column: 46, scope: !81)
!87 = !DILocation(line: 43, column: 37, scope: !81)
!88 = !DILocation(line: 43, column: 57, scope: !81)
!89 = !DILocation(line: 43, column: 17, scope: !81)
!90 = !DILocation(line: 43, column: 64, scope: !81)
!91 = !DILocation(line: 43, column: 17, scope: !82)
!92 = !DILocation(line: 47, column: 34, scope: !93)
!93 = distinct !DILexicalBlock(scope: !81, file: !45, line: 44, column: 13)
!94 = !DILocation(line: 47, column: 27, scope: !93)
!95 = !DILocation(line: 47, column: 25, scope: !93)
!96 = !DILocation(line: 48, column: 21, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !45, line: 48, column: 21)
!98 = !DILocation(line: 48, column: 29, scope: !97)
!99 = !DILocation(line: 48, column: 33, scope: !97)
!100 = !DILocation(line: 48, column: 36, scope: !97)
!101 = !DILocation(line: 48, column: 41, scope: !97)
!102 = !DILocation(line: 48, column: 48, scope: !97)
!103 = !DILocation(line: 48, column: 52, scope: !97)
!104 = !DILocation(line: 48, column: 21, scope: !93)
!105 = !DILocation(line: 50, column: 21, scope: !106)
!106 = distinct !DILexicalBlock(scope: !97, file: !45, line: 49, column: 17)
!107 = !DILocation(line: 50, column: 26, scope: !106)
!108 = !DILocation(line: 50, column: 33, scope: !106)
!109 = !DILocation(line: 50, column: 37, scope: !106)
!110 = !DILocation(line: 51, column: 17, scope: !106)
!111 = !DILocation(line: 52, column: 13, scope: !93)
!112 = !DILocation(line: 55, column: 17, scope: !113)
!113 = distinct !DILexicalBlock(scope: !81, file: !45, line: 54, column: 13)
!114 = !DILocation(line: 57, column: 17, scope: !113)
!115 = !DILocation(line: 57, column: 22, scope: !113)
!116 = !DILocation(line: 57, column: 31, scope: !113)
!117 = !DILocation(line: 59, column: 9, scope: !82)
!118 = !DILocation(line: 61, column: 63, scope: !55)
!119 = !DILocation(line: 61, column: 5, scope: !55)
!120 = !DILocation(line: 62, column: 1, scope: !55)
!121 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 70, type: !56, scopeLine: 71, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!122 = !DILocalVariable(name: "data", scope: !121, file: !45, line: 72, type: !42)
!123 = !DILocation(line: 72, column: 12, scope: !121)
!124 = !DILocalVariable(name: "dataBuffer", scope: !121, file: !45, line: 73, type: !61)
!125 = !DILocation(line: 73, column: 10, scope: !121)
!126 = !DILocation(line: 74, column: 12, scope: !121)
!127 = !DILocation(line: 74, column: 10, scope: !121)
!128 = !DILocation(line: 76, column: 12, scope: !121)
!129 = !DILocation(line: 76, column: 5, scope: !121)
!130 = !DILocation(line: 77, column: 67, scope: !121)
!131 = !DILocation(line: 77, column: 5, scope: !121)
!132 = !DILocation(line: 78, column: 1, scope: !121)
!133 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 82, type: !56, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!134 = !DILocalVariable(name: "data", scope: !133, file: !45, line: 84, type: !42)
!135 = !DILocation(line: 84, column: 12, scope: !133)
!136 = !DILocalVariable(name: "dataBuffer", scope: !133, file: !45, line: 85, type: !61)
!137 = !DILocation(line: 85, column: 10, scope: !133)
!138 = !DILocation(line: 86, column: 12, scope: !133)
!139 = !DILocation(line: 86, column: 10, scope: !133)
!140 = !DILocalVariable(name: "dataLen", scope: !141, file: !45, line: 89, type: !69)
!141 = distinct !DILexicalBlock(scope: !133, file: !45, line: 87, column: 5)
!142 = !DILocation(line: 89, column: 16, scope: !141)
!143 = !DILocation(line: 89, column: 33, scope: !141)
!144 = !DILocation(line: 89, column: 26, scope: !141)
!145 = !DILocation(line: 91, column: 17, scope: !146)
!146 = distinct !DILexicalBlock(scope: !141, file: !45, line: 91, column: 13)
!147 = !DILocation(line: 91, column: 16, scope: !146)
!148 = !DILocation(line: 91, column: 25, scope: !146)
!149 = !DILocation(line: 91, column: 13, scope: !141)
!150 = !DILocation(line: 94, column: 23, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !45, line: 94, column: 17)
!152 = distinct !DILexicalBlock(scope: !146, file: !45, line: 92, column: 9)
!153 = !DILocation(line: 94, column: 28, scope: !151)
!154 = !DILocation(line: 94, column: 27, scope: !151)
!155 = !DILocation(line: 94, column: 47, scope: !151)
!156 = !DILocation(line: 94, column: 46, scope: !151)
!157 = !DILocation(line: 94, column: 37, scope: !151)
!158 = !DILocation(line: 94, column: 57, scope: !151)
!159 = !DILocation(line: 94, column: 17, scope: !151)
!160 = !DILocation(line: 94, column: 64, scope: !151)
!161 = !DILocation(line: 94, column: 17, scope: !152)
!162 = !DILocation(line: 98, column: 34, scope: !163)
!163 = distinct !DILexicalBlock(scope: !151, file: !45, line: 95, column: 13)
!164 = !DILocation(line: 98, column: 27, scope: !163)
!165 = !DILocation(line: 98, column: 25, scope: !163)
!166 = !DILocation(line: 99, column: 21, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !45, line: 99, column: 21)
!168 = !DILocation(line: 99, column: 29, scope: !167)
!169 = !DILocation(line: 99, column: 33, scope: !167)
!170 = !DILocation(line: 99, column: 36, scope: !167)
!171 = !DILocation(line: 99, column: 41, scope: !167)
!172 = !DILocation(line: 99, column: 48, scope: !167)
!173 = !DILocation(line: 99, column: 52, scope: !167)
!174 = !DILocation(line: 99, column: 21, scope: !163)
!175 = !DILocation(line: 101, column: 21, scope: !176)
!176 = distinct !DILexicalBlock(scope: !167, file: !45, line: 100, column: 17)
!177 = !DILocation(line: 101, column: 26, scope: !176)
!178 = !DILocation(line: 101, column: 33, scope: !176)
!179 = !DILocation(line: 101, column: 37, scope: !176)
!180 = !DILocation(line: 102, column: 17, scope: !176)
!181 = !DILocation(line: 103, column: 13, scope: !163)
!182 = !DILocation(line: 106, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !151, file: !45, line: 105, column: 13)
!184 = !DILocation(line: 108, column: 17, scope: !183)
!185 = !DILocation(line: 108, column: 22, scope: !183)
!186 = !DILocation(line: 108, column: 31, scope: !183)
!187 = !DILocation(line: 110, column: 9, scope: !152)
!188 = !DILocation(line: 112, column: 67, scope: !133)
!189 = !DILocation(line: 112, column: 5, scope: !133)
!190 = !DILocation(line: 113, column: 1, scope: !133)
!191 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_64_good", scope: !45, file: !45, line: 115, type: !56, scopeLine: 116, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!192 = !DILocation(line: 117, column: 5, scope: !191)
!193 = !DILocation(line: 118, column: 5, scope: !191)
!194 = !DILocation(line: 119, column: 1, scope: !191)
!195 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_64b_badSink", scope: !49, file: !49, line: 28, type: !196, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !22}
!198 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !195, file: !49, line: 28, type: !22)
!199 = !DILocation(line: 28, column: 71, scope: !195)
!200 = !DILocalVariable(name: "dataPtr", scope: !195, file: !49, line: 31, type: !41)
!201 = !DILocation(line: 31, column: 14, scope: !195)
!202 = !DILocation(line: 31, column: 34, scope: !195)
!203 = !DILocation(line: 31, column: 24, scope: !195)
!204 = !DILocalVariable(name: "data", scope: !195, file: !49, line: 33, type: !42)
!205 = !DILocation(line: 33, column: 12, scope: !195)
!206 = !DILocation(line: 33, column: 21, scope: !195)
!207 = !DILocation(line: 33, column: 20, scope: !195)
!208 = !DILocalVariable(name: "i", scope: !209, file: !49, line: 35, type: !23)
!209 = distinct !DILexicalBlock(scope: !195, file: !49, line: 34, column: 5)
!210 = !DILocation(line: 35, column: 13, scope: !209)
!211 = !DILocalVariable(name: "n", scope: !209, file: !49, line: 35, type: !23)
!212 = !DILocation(line: 35, column: 16, scope: !209)
!213 = !DILocalVariable(name: "intVariable", scope: !209, file: !49, line: 35, type: !23)
!214 = !DILocation(line: 35, column: 19, scope: !209)
!215 = !DILocation(line: 36, column: 20, scope: !216)
!216 = distinct !DILexicalBlock(scope: !209, file: !49, line: 36, column: 13)
!217 = !DILocation(line: 36, column: 13, scope: !216)
!218 = !DILocation(line: 36, column: 36, scope: !216)
!219 = !DILocation(line: 36, column: 13, scope: !209)
!220 = !DILocation(line: 39, column: 25, scope: !221)
!221 = distinct !DILexicalBlock(scope: !216, file: !49, line: 37, column: 9)
!222 = !DILocation(line: 40, column: 20, scope: !223)
!223 = distinct !DILexicalBlock(scope: !221, file: !49, line: 40, column: 13)
!224 = !DILocation(line: 40, column: 18, scope: !223)
!225 = !DILocation(line: 40, column: 25, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !49, line: 40, column: 13)
!227 = !DILocation(line: 40, column: 29, scope: !226)
!228 = !DILocation(line: 40, column: 27, scope: !226)
!229 = !DILocation(line: 40, column: 13, scope: !223)
!230 = !DILocation(line: 43, column: 28, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !49, line: 41, column: 13)
!232 = !DILocation(line: 44, column: 13, scope: !231)
!233 = !DILocation(line: 40, column: 33, scope: !226)
!234 = !DILocation(line: 40, column: 13, scope: !226)
!235 = distinct !{!235, !229, !236, !237}
!236 = !DILocation(line: 44, column: 13, scope: !223)
!237 = !{!"llvm.loop.mustprogress"}
!238 = !DILocation(line: 45, column: 26, scope: !221)
!239 = !DILocation(line: 45, column: 13, scope: !221)
!240 = !DILocation(line: 46, column: 9, scope: !221)
!241 = !DILocation(line: 48, column: 1, scope: !195)
!242 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_64b_goodG2BSink", scope: !49, file: !49, line: 55, type: !196, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!243 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !242, file: !49, line: 55, type: !22)
!244 = !DILocation(line: 55, column: 75, scope: !242)
!245 = !DILocalVariable(name: "dataPtr", scope: !242, file: !49, line: 58, type: !41)
!246 = !DILocation(line: 58, column: 14, scope: !242)
!247 = !DILocation(line: 58, column: 34, scope: !242)
!248 = !DILocation(line: 58, column: 24, scope: !242)
!249 = !DILocalVariable(name: "data", scope: !242, file: !49, line: 60, type: !42)
!250 = !DILocation(line: 60, column: 12, scope: !242)
!251 = !DILocation(line: 60, column: 21, scope: !242)
!252 = !DILocation(line: 60, column: 20, scope: !242)
!253 = !DILocalVariable(name: "i", scope: !254, file: !49, line: 62, type: !23)
!254 = distinct !DILexicalBlock(scope: !242, file: !49, line: 61, column: 5)
!255 = !DILocation(line: 62, column: 13, scope: !254)
!256 = !DILocalVariable(name: "n", scope: !254, file: !49, line: 62, type: !23)
!257 = !DILocation(line: 62, column: 16, scope: !254)
!258 = !DILocalVariable(name: "intVariable", scope: !254, file: !49, line: 62, type: !23)
!259 = !DILocation(line: 62, column: 19, scope: !254)
!260 = !DILocation(line: 63, column: 20, scope: !261)
!261 = distinct !DILexicalBlock(scope: !254, file: !49, line: 63, column: 13)
!262 = !DILocation(line: 63, column: 13, scope: !261)
!263 = !DILocation(line: 63, column: 36, scope: !261)
!264 = !DILocation(line: 63, column: 13, scope: !254)
!265 = !DILocation(line: 66, column: 25, scope: !266)
!266 = distinct !DILexicalBlock(scope: !261, file: !49, line: 64, column: 9)
!267 = !DILocation(line: 67, column: 20, scope: !268)
!268 = distinct !DILexicalBlock(scope: !266, file: !49, line: 67, column: 13)
!269 = !DILocation(line: 67, column: 18, scope: !268)
!270 = !DILocation(line: 67, column: 25, scope: !271)
!271 = distinct !DILexicalBlock(scope: !268, file: !49, line: 67, column: 13)
!272 = !DILocation(line: 67, column: 29, scope: !271)
!273 = !DILocation(line: 67, column: 27, scope: !271)
!274 = !DILocation(line: 67, column: 13, scope: !268)
!275 = !DILocation(line: 70, column: 28, scope: !276)
!276 = distinct !DILexicalBlock(scope: !271, file: !49, line: 68, column: 13)
!277 = !DILocation(line: 71, column: 13, scope: !276)
!278 = !DILocation(line: 67, column: 33, scope: !271)
!279 = !DILocation(line: 67, column: 13, scope: !271)
!280 = distinct !{!280, !274, !281, !237}
!281 = !DILocation(line: 71, column: 13, scope: !268)
!282 = !DILocation(line: 72, column: 26, scope: !266)
!283 = !DILocation(line: 72, column: 13, scope: !266)
!284 = !DILocation(line: 73, column: 9, scope: !266)
!285 = !DILocation(line: 75, column: 1, scope: !242)
!286 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink", scope: !49, file: !49, line: 78, type: !196, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!287 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !286, file: !49, line: 78, type: !22)
!288 = !DILocation(line: 78, column: 75, scope: !286)
!289 = !DILocalVariable(name: "dataPtr", scope: !286, file: !49, line: 81, type: !41)
!290 = !DILocation(line: 81, column: 14, scope: !286)
!291 = !DILocation(line: 81, column: 34, scope: !286)
!292 = !DILocation(line: 81, column: 24, scope: !286)
!293 = !DILocalVariable(name: "data", scope: !286, file: !49, line: 83, type: !42)
!294 = !DILocation(line: 83, column: 12, scope: !286)
!295 = !DILocation(line: 83, column: 21, scope: !286)
!296 = !DILocation(line: 83, column: 20, scope: !286)
!297 = !DILocalVariable(name: "i", scope: !298, file: !49, line: 85, type: !23)
!298 = distinct !DILexicalBlock(scope: !286, file: !49, line: 84, column: 5)
!299 = !DILocation(line: 85, column: 13, scope: !298)
!300 = !DILocalVariable(name: "n", scope: !298, file: !49, line: 85, type: !23)
!301 = !DILocation(line: 85, column: 16, scope: !298)
!302 = !DILocalVariable(name: "intVariable", scope: !298, file: !49, line: 85, type: !23)
!303 = !DILocation(line: 85, column: 19, scope: !298)
!304 = !DILocation(line: 86, column: 20, scope: !305)
!305 = distinct !DILexicalBlock(scope: !298, file: !49, line: 86, column: 13)
!306 = !DILocation(line: 86, column: 13, scope: !305)
!307 = !DILocation(line: 86, column: 36, scope: !305)
!308 = !DILocation(line: 86, column: 13, scope: !298)
!309 = !DILocation(line: 89, column: 17, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !49, line: 89, column: 17)
!311 = distinct !DILexicalBlock(scope: !305, file: !49, line: 87, column: 9)
!312 = !DILocation(line: 89, column: 19, scope: !310)
!313 = !DILocation(line: 89, column: 17, scope: !311)
!314 = !DILocation(line: 91, column: 29, scope: !315)
!315 = distinct !DILexicalBlock(scope: !310, file: !49, line: 90, column: 13)
!316 = !DILocation(line: 92, column: 24, scope: !317)
!317 = distinct !DILexicalBlock(scope: !315, file: !49, line: 92, column: 17)
!318 = !DILocation(line: 92, column: 22, scope: !317)
!319 = !DILocation(line: 92, column: 29, scope: !320)
!320 = distinct !DILexicalBlock(scope: !317, file: !49, line: 92, column: 17)
!321 = !DILocation(line: 92, column: 33, scope: !320)
!322 = !DILocation(line: 92, column: 31, scope: !320)
!323 = !DILocation(line: 92, column: 17, scope: !317)
!324 = !DILocation(line: 95, column: 32, scope: !325)
!325 = distinct !DILexicalBlock(scope: !320, file: !49, line: 93, column: 17)
!326 = !DILocation(line: 96, column: 17, scope: !325)
!327 = !DILocation(line: 92, column: 37, scope: !320)
!328 = !DILocation(line: 92, column: 17, scope: !320)
!329 = distinct !{!329, !323, !330, !237}
!330 = !DILocation(line: 96, column: 17, scope: !317)
!331 = !DILocation(line: 97, column: 30, scope: !315)
!332 = !DILocation(line: 97, column: 17, scope: !315)
!333 = !DILocation(line: 98, column: 13, scope: !315)
!334 = !DILocation(line: 99, column: 9, scope: !311)
!335 = !DILocation(line: 101, column: 1, scope: !286)
!336 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !337, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !42}
!339 = !DILocalVariable(name: "line", arg: 1, scope: !336, file: !3, line: 11, type: !42)
!340 = !DILocation(line: 11, column: 25, scope: !336)
!341 = !DILocation(line: 13, column: 1, scope: !336)
!342 = !DILocation(line: 14, column: 8, scope: !343)
!343 = distinct !DILexicalBlock(scope: !336, file: !3, line: 14, column: 8)
!344 = !DILocation(line: 14, column: 13, scope: !343)
!345 = !DILocation(line: 14, column: 8, scope: !336)
!346 = !DILocation(line: 16, column: 24, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !3, line: 15, column: 5)
!348 = !DILocation(line: 16, column: 9, scope: !347)
!349 = !DILocation(line: 17, column: 5, scope: !347)
!350 = !DILocation(line: 18, column: 5, scope: !336)
!351 = !DILocation(line: 19, column: 1, scope: !336)
!352 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !337, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!353 = !DILocalVariable(name: "line", arg: 1, scope: !352, file: !3, line: 20, type: !42)
!354 = !DILocation(line: 20, column: 29, scope: !352)
!355 = !DILocation(line: 22, column: 8, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !3, line: 22, column: 8)
!357 = !DILocation(line: 22, column: 13, scope: !356)
!358 = !DILocation(line: 22, column: 8, scope: !352)
!359 = !DILocation(line: 24, column: 24, scope: !360)
!360 = distinct !DILexicalBlock(scope: !356, file: !3, line: 23, column: 5)
!361 = !DILocation(line: 24, column: 9, scope: !360)
!362 = !DILocation(line: 25, column: 5, scope: !360)
!363 = !DILocation(line: 26, column: 1, scope: !352)
!364 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !365, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !23)
!369 = !DILocalVariable(name: "line", arg: 1, scope: !364, file: !3, line: 27, type: !367)
!370 = !DILocation(line: 27, column: 29, scope: !364)
!371 = !DILocation(line: 29, column: 8, scope: !372)
!372 = distinct !DILexicalBlock(scope: !364, file: !3, line: 29, column: 8)
!373 = !DILocation(line: 29, column: 13, scope: !372)
!374 = !DILocation(line: 29, column: 8, scope: !364)
!375 = !DILocation(line: 31, column: 27, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !3, line: 30, column: 5)
!377 = !DILocation(line: 31, column: 9, scope: !376)
!378 = !DILocation(line: 32, column: 5, scope: !376)
!379 = !DILocation(line: 33, column: 1, scope: !364)
!380 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !381, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !23}
!383 = !DILocalVariable(name: "intNumber", arg: 1, scope: !380, file: !3, line: 35, type: !23)
!384 = !DILocation(line: 35, column: 24, scope: !380)
!385 = !DILocation(line: 37, column: 20, scope: !380)
!386 = !DILocation(line: 37, column: 5, scope: !380)
!387 = !DILocation(line: 38, column: 1, scope: !380)
!388 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !389, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !391}
!391 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!392 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !388, file: !3, line: 40, type: !391)
!393 = !DILocation(line: 40, column: 28, scope: !388)
!394 = !DILocation(line: 42, column: 21, scope: !388)
!395 = !DILocation(line: 42, column: 5, scope: !388)
!396 = !DILocation(line: 43, column: 1, scope: !388)
!397 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !398, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !400}
!400 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!401 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !397, file: !3, line: 45, type: !400)
!402 = !DILocation(line: 45, column: 28, scope: !397)
!403 = !DILocation(line: 47, column: 20, scope: !397)
!404 = !DILocation(line: 47, column: 5, scope: !397)
!405 = !DILocation(line: 48, column: 1, scope: !397)
!406 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !407, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !409}
!409 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!410 = !DILocalVariable(name: "longNumber", arg: 1, scope: !406, file: !3, line: 50, type: !409)
!411 = !DILocation(line: 50, column: 26, scope: !406)
!412 = !DILocation(line: 52, column: 21, scope: !406)
!413 = !DILocation(line: 52, column: 5, scope: !406)
!414 = !DILocation(line: 53, column: 1, scope: !406)
!415 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !416, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !418}
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !419, line: 27, baseType: !420)
!419 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !421, line: 44, baseType: !409)
!421 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!422 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !415, file: !3, line: 55, type: !418)
!423 = !DILocation(line: 55, column: 33, scope: !415)
!424 = !DILocation(line: 57, column: 29, scope: !415)
!425 = !DILocation(line: 57, column: 5, scope: !415)
!426 = !DILocation(line: 58, column: 1, scope: !415)
!427 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !428, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !69}
!430 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !427, file: !3, line: 60, type: !69)
!431 = !DILocation(line: 60, column: 29, scope: !427)
!432 = !DILocation(line: 62, column: 21, scope: !427)
!433 = !DILocation(line: 62, column: 5, scope: !427)
!434 = !DILocation(line: 63, column: 1, scope: !427)
!435 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !436, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !43}
!438 = !DILocalVariable(name: "charHex", arg: 1, scope: !435, file: !3, line: 65, type: !43)
!439 = !DILocation(line: 65, column: 29, scope: !435)
!440 = !DILocation(line: 67, column: 22, scope: !435)
!441 = !DILocation(line: 67, column: 5, scope: !435)
!442 = !DILocation(line: 68, column: 1, scope: !435)
!443 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !444, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !368}
!446 = !DILocalVariable(name: "wideChar", arg: 1, scope: !443, file: !3, line: 70, type: !368)
!447 = !DILocation(line: 70, column: 29, scope: !443)
!448 = !DILocalVariable(name: "s", scope: !443, file: !3, line: 74, type: !449)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 64, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 2)
!452 = !DILocation(line: 74, column: 13, scope: !443)
!453 = !DILocation(line: 75, column: 16, scope: !443)
!454 = !DILocation(line: 75, column: 9, scope: !443)
!455 = !DILocation(line: 75, column: 14, scope: !443)
!456 = !DILocation(line: 76, column: 9, scope: !443)
!457 = !DILocation(line: 76, column: 14, scope: !443)
!458 = !DILocation(line: 77, column: 21, scope: !443)
!459 = !DILocation(line: 77, column: 5, scope: !443)
!460 = !DILocation(line: 78, column: 1, scope: !443)
!461 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !462, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !7}
!464 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !461, file: !3, line: 80, type: !7)
!465 = !DILocation(line: 80, column: 33, scope: !461)
!466 = !DILocation(line: 82, column: 20, scope: !461)
!467 = !DILocation(line: 82, column: 5, scope: !461)
!468 = !DILocation(line: 83, column: 1, scope: !461)
!469 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !470, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !25}
!472 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !469, file: !3, line: 85, type: !25)
!473 = !DILocation(line: 85, column: 45, scope: !469)
!474 = !DILocation(line: 87, column: 22, scope: !469)
!475 = !DILocation(line: 87, column: 5, scope: !469)
!476 = !DILocation(line: 88, column: 1, scope: !469)
!477 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !478, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !480}
!480 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!481 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !477, file: !3, line: 90, type: !480)
!482 = !DILocation(line: 90, column: 29, scope: !477)
!483 = !DILocation(line: 92, column: 20, scope: !477)
!484 = !DILocation(line: 92, column: 5, scope: !477)
!485 = !DILocation(line: 93, column: 1, scope: !477)
!486 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !487, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !491, line: 100, baseType: !492)
!491 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_014/source_code")
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !491, line: 96, size: 64, elements: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !492, file: !491, line: 98, baseType: !23, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !492, file: !491, line: 99, baseType: !23, size: 32, offset: 32)
!496 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !486, file: !3, line: 95, type: !489)
!497 = !DILocation(line: 95, column: 40, scope: !486)
!498 = !DILocation(line: 97, column: 26, scope: !486)
!499 = !DILocation(line: 97, column: 47, scope: !486)
!500 = !DILocation(line: 97, column: 55, scope: !486)
!501 = !DILocation(line: 97, column: 76, scope: !486)
!502 = !DILocation(line: 97, column: 5, scope: !486)
!503 = !DILocation(line: 98, column: 1, scope: !486)
!504 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !505, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !507, !69}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!508 = !DILocalVariable(name: "bytes", arg: 1, scope: !504, file: !3, line: 100, type: !507)
!509 = !DILocation(line: 100, column: 38, scope: !504)
!510 = !DILocalVariable(name: "numBytes", arg: 2, scope: !504, file: !3, line: 100, type: !69)
!511 = !DILocation(line: 100, column: 52, scope: !504)
!512 = !DILocalVariable(name: "i", scope: !504, file: !3, line: 102, type: !69)
!513 = !DILocation(line: 102, column: 12, scope: !504)
!514 = !DILocation(line: 103, column: 12, scope: !515)
!515 = distinct !DILexicalBlock(scope: !504, file: !3, line: 103, column: 5)
!516 = !DILocation(line: 103, column: 10, scope: !515)
!517 = !DILocation(line: 103, column: 17, scope: !518)
!518 = distinct !DILexicalBlock(scope: !515, file: !3, line: 103, column: 5)
!519 = !DILocation(line: 103, column: 21, scope: !518)
!520 = !DILocation(line: 103, column: 19, scope: !518)
!521 = !DILocation(line: 103, column: 5, scope: !515)
!522 = !DILocation(line: 105, column: 24, scope: !523)
!523 = distinct !DILexicalBlock(scope: !518, file: !3, line: 104, column: 5)
!524 = !DILocation(line: 105, column: 30, scope: !523)
!525 = !DILocation(line: 105, column: 9, scope: !523)
!526 = !DILocation(line: 106, column: 5, scope: !523)
!527 = !DILocation(line: 103, column: 31, scope: !518)
!528 = !DILocation(line: 103, column: 5, scope: !518)
!529 = distinct !{!529, !521, !530, !237}
!530 = !DILocation(line: 106, column: 5, scope: !515)
!531 = !DILocation(line: 107, column: 5, scope: !504)
!532 = !DILocation(line: 108, column: 1, scope: !504)
!533 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !534, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DISubroutineType(types: !535)
!535 = !{!69, !507, !69, !42}
!536 = !DILocalVariable(name: "bytes", arg: 1, scope: !533, file: !3, line: 113, type: !507)
!537 = !DILocation(line: 113, column: 39, scope: !533)
!538 = !DILocalVariable(name: "numBytes", arg: 2, scope: !533, file: !3, line: 113, type: !69)
!539 = !DILocation(line: 113, column: 53, scope: !533)
!540 = !DILocalVariable(name: "hex", arg: 3, scope: !533, file: !3, line: 113, type: !42)
!541 = !DILocation(line: 113, column: 71, scope: !533)
!542 = !DILocalVariable(name: "numWritten", scope: !533, file: !3, line: 115, type: !69)
!543 = !DILocation(line: 115, column: 12, scope: !533)
!544 = !DILocation(line: 121, column: 5, scope: !533)
!545 = !DILocation(line: 121, column: 12, scope: !533)
!546 = !DILocation(line: 121, column: 25, scope: !533)
!547 = !DILocation(line: 121, column: 23, scope: !533)
!548 = !DILocation(line: 121, column: 34, scope: !533)
!549 = !DILocation(line: 121, column: 37, scope: !533)
!550 = !DILocation(line: 121, column: 67, scope: !533)
!551 = !DILocation(line: 121, column: 70, scope: !533)
!552 = !DILocation(line: 0, scope: !533)
!553 = !DILocalVariable(name: "byte", scope: !554, file: !3, line: 123, type: !23)
!554 = distinct !DILexicalBlock(scope: !533, file: !3, line: 122, column: 5)
!555 = !DILocation(line: 123, column: 13, scope: !554)
!556 = !DILocation(line: 124, column: 17, scope: !554)
!557 = !DILocation(line: 124, column: 25, scope: !554)
!558 = !DILocation(line: 124, column: 23, scope: !554)
!559 = !DILocation(line: 124, column: 9, scope: !554)
!560 = !DILocation(line: 125, column: 45, scope: !554)
!561 = !DILocation(line: 125, column: 29, scope: !554)
!562 = !DILocation(line: 125, column: 9, scope: !554)
!563 = !DILocation(line: 125, column: 15, scope: !554)
!564 = !DILocation(line: 125, column: 27, scope: !554)
!565 = !DILocation(line: 126, column: 9, scope: !554)
!566 = distinct !{!566, !544, !567, !237}
!567 = !DILocation(line: 127, column: 5, scope: !533)
!568 = !DILocation(line: 129, column: 12, scope: !533)
!569 = !DILocation(line: 129, column: 5, scope: !533)
!570 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !571, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!571 = !DISubroutineType(types: !572)
!572 = !{!69, !507, !69, !367}
!573 = !DILocalVariable(name: "bytes", arg: 1, scope: !570, file: !3, line: 135, type: !507)
!574 = !DILocation(line: 135, column: 41, scope: !570)
!575 = !DILocalVariable(name: "numBytes", arg: 2, scope: !570, file: !3, line: 135, type: !69)
!576 = !DILocation(line: 135, column: 55, scope: !570)
!577 = !DILocalVariable(name: "hex", arg: 3, scope: !570, file: !3, line: 135, type: !367)
!578 = !DILocation(line: 135, column: 76, scope: !570)
!579 = !DILocalVariable(name: "numWritten", scope: !570, file: !3, line: 137, type: !69)
!580 = !DILocation(line: 137, column: 12, scope: !570)
!581 = !DILocation(line: 143, column: 5, scope: !570)
!582 = !DILocation(line: 143, column: 12, scope: !570)
!583 = !DILocation(line: 143, column: 25, scope: !570)
!584 = !DILocation(line: 143, column: 23, scope: !570)
!585 = !DILocation(line: 143, column: 34, scope: !570)
!586 = !DILocation(line: 143, column: 47, scope: !570)
!587 = !DILocation(line: 143, column: 55, scope: !570)
!588 = !DILocation(line: 143, column: 53, scope: !570)
!589 = !DILocation(line: 143, column: 37, scope: !570)
!590 = !DILocation(line: 143, column: 68, scope: !570)
!591 = !DILocation(line: 143, column: 81, scope: !570)
!592 = !DILocation(line: 143, column: 89, scope: !570)
!593 = !DILocation(line: 143, column: 87, scope: !570)
!594 = !DILocation(line: 143, column: 100, scope: !570)
!595 = !DILocation(line: 143, column: 71, scope: !570)
!596 = !DILocation(line: 0, scope: !570)
!597 = !DILocalVariable(name: "byte", scope: !598, file: !3, line: 145, type: !23)
!598 = distinct !DILexicalBlock(scope: !570, file: !3, line: 144, column: 5)
!599 = !DILocation(line: 145, column: 13, scope: !598)
!600 = !DILocation(line: 146, column: 18, scope: !598)
!601 = !DILocation(line: 146, column: 26, scope: !598)
!602 = !DILocation(line: 146, column: 24, scope: !598)
!603 = !DILocation(line: 146, column: 9, scope: !598)
!604 = !DILocation(line: 147, column: 45, scope: !598)
!605 = !DILocation(line: 147, column: 29, scope: !598)
!606 = !DILocation(line: 147, column: 9, scope: !598)
!607 = !DILocation(line: 147, column: 15, scope: !598)
!608 = !DILocation(line: 147, column: 27, scope: !598)
!609 = !DILocation(line: 148, column: 9, scope: !598)
!610 = distinct !{!610, !581, !611, !237}
!611 = !DILocation(line: 149, column: 5, scope: !570)
!612 = !DILocation(line: 151, column: 12, scope: !570)
!613 = !DILocation(line: 151, column: 5, scope: !570)
!614 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !615, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!615 = !DISubroutineType(types: !616)
!616 = !{!23}
!617 = !DILocation(line: 158, column: 5, scope: !614)
!618 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !615, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!619 = !DILocation(line: 163, column: 5, scope: !618)
!620 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !615, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!621 = !DILocation(line: 168, column: 13, scope: !620)
!622 = !DILocation(line: 168, column: 20, scope: !620)
!623 = !DILocation(line: 168, column: 5, scope: !620)
!624 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !56, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!625 = !DILocation(line: 187, column: 16, scope: !624)
!626 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !56, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!627 = !DILocation(line: 188, column: 16, scope: !626)
!628 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !56, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!629 = !DILocation(line: 189, column: 16, scope: !628)
!630 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !56, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!631 = !DILocation(line: 190, column: 16, scope: !630)
!632 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !56, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!633 = !DILocation(line: 191, column: 16, scope: !632)
!634 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !56, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!635 = !DILocation(line: 192, column: 16, scope: !634)
!636 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !56, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!637 = !DILocation(line: 193, column: 16, scope: !636)
!638 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !56, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!639 = !DILocation(line: 194, column: 16, scope: !638)
!640 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !56, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!641 = !DILocation(line: 195, column: 16, scope: !640)
!642 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !56, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!643 = !DILocation(line: 198, column: 15, scope: !642)
!644 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !56, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!645 = !DILocation(line: 199, column: 15, scope: !644)
!646 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !56, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!647 = !DILocation(line: 200, column: 15, scope: !646)
!648 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !56, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!649 = !DILocation(line: 201, column: 15, scope: !648)
!650 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !56, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!651 = !DILocation(line: 202, column: 15, scope: !650)
!652 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !56, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!653 = !DILocation(line: 203, column: 15, scope: !652)
!654 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !56, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!655 = !DILocation(line: 204, column: 15, scope: !654)
!656 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !56, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!657 = !DILocation(line: 205, column: 15, scope: !656)
!658 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !56, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!659 = !DILocation(line: 206, column: 15, scope: !658)
