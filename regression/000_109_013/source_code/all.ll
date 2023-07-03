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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_63_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !59, metadata !DIExpression()), !dbg !63
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !63
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !63
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !64
  store i8* %arraydecay, i8** %data, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !66, metadata !DIExpression()), !dbg !71
  %1 = load i8*, i8** %data, align 8, !dbg !72
  %call = call i64 @strlen(i8* %1) #7, !dbg !73
  store i64 %call, i64* %dataLen, align 8, !dbg !71
  %2 = load i64, i64* %dataLen, align 8, !dbg !74
  %sub = sub i64 100, %2, !dbg !76
  %cmp = icmp ugt i64 %sub, 1, !dbg !77
  br i1 %cmp, label %if.then, label %if.end18, !dbg !78

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !79
  %4 = load i64, i64* %dataLen, align 8, !dbg !82
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !83
  %5 = load i64, i64* %dataLen, align 8, !dbg !84
  %sub1 = sub i64 100, %5, !dbg !85
  %conv = trunc i64 %sub1 to i32, !dbg !86
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !87
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !88
  %cmp3 = icmp ne i8* %call2, null, !dbg !89
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !90

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !91
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !93
  store i64 %call6, i64* %dataLen, align 8, !dbg !94
  %8 = load i64, i64* %dataLen, align 8, !dbg !95
  %cmp7 = icmp ugt i64 %8, 0, !dbg !97
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !98

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !99
  %10 = load i64, i64* %dataLen, align 8, !dbg !100
  %sub9 = sub i64 %10, 1, !dbg !101
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !99
  %11 = load i8, i8* %arrayidx, align 1, !dbg !99
  %conv10 = sext i8 %11 to i32, !dbg !99
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !102
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !103

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !104
  %13 = load i64, i64* %dataLen, align 8, !dbg !106
  %sub14 = sub i64 %13, 1, !dbg !107
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !104
  store i8 0, i8* %arrayidx15, align 1, !dbg !108
  br label %if.end, !dbg !109

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !110

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !111
  %14 = load i8*, i8** %data, align 8, !dbg !113
  %15 = load i64, i64* %dataLen, align 8, !dbg !114
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !113
  store i8 0, i8* %arrayidx16, align 1, !dbg !115
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !116

if.end18:                                         ; preds = %if.end17, %entry
  call void @CWE606_Unchecked_Loop_Condition__char_console_63b_badSink(i8** %data), !dbg !117
  ret void, !dbg !118
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !119 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !122, metadata !DIExpression()), !dbg !123
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !123
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !123
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !124
  store i8* %arraydecay, i8** %data, align 8, !dbg !125
  %1 = load i8*, i8** %data, align 8, !dbg !126
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !127
  call void @CWE606_Unchecked_Loop_Condition__char_console_63b_goodG2BSink(i8** %data), !dbg !128
  ret void, !dbg !129
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !130 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !133, metadata !DIExpression()), !dbg !134
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !134
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !134
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !135
  store i8* %arraydecay, i8** %data, align 8, !dbg !136
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !137, metadata !DIExpression()), !dbg !139
  %1 = load i8*, i8** %data, align 8, !dbg !140
  %call = call i64 @strlen(i8* %1) #7, !dbg !141
  store i64 %call, i64* %dataLen, align 8, !dbg !139
  %2 = load i64, i64* %dataLen, align 8, !dbg !142
  %sub = sub i64 100, %2, !dbg !144
  %cmp = icmp ugt i64 %sub, 1, !dbg !145
  br i1 %cmp, label %if.then, label %if.end18, !dbg !146

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !147
  %4 = load i64, i64* %dataLen, align 8, !dbg !150
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !151
  %5 = load i64, i64* %dataLen, align 8, !dbg !152
  %sub1 = sub i64 100, %5, !dbg !153
  %conv = trunc i64 %sub1 to i32, !dbg !154
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !155
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !156
  %cmp3 = icmp ne i8* %call2, null, !dbg !157
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !158

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !159
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !161
  store i64 %call6, i64* %dataLen, align 8, !dbg !162
  %8 = load i64, i64* %dataLen, align 8, !dbg !163
  %cmp7 = icmp ugt i64 %8, 0, !dbg !165
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !166

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !167
  %10 = load i64, i64* %dataLen, align 8, !dbg !168
  %sub9 = sub i64 %10, 1, !dbg !169
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !167
  %11 = load i8, i8* %arrayidx, align 1, !dbg !167
  %conv10 = sext i8 %11 to i32, !dbg !167
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !170
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !171

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !172
  %13 = load i64, i64* %dataLen, align 8, !dbg !174
  %sub14 = sub i64 %13, 1, !dbg !175
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !172
  store i8 0, i8* %arrayidx15, align 1, !dbg !176
  br label %if.end, !dbg !177

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !178

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !179
  %14 = load i8*, i8** %data, align 8, !dbg !181
  %15 = load i64, i64* %dataLen, align 8, !dbg !182
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !181
  store i8 0, i8* %arrayidx16, align 1, !dbg !183
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !184

if.end18:                                         ; preds = %if.end17, %entry
  call void @CWE606_Unchecked_Loop_Condition__char_console_63b_goodB2GSink(i8** %data), !dbg !185
  ret void, !dbg !186
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_63_good() #0 !dbg !187 {
entry:
  call void @goodG2B(), !dbg !188
  call void @goodB2G(), !dbg !189
  ret void, !dbg !190
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_63b_badSink(i8** %dataPtr) #0 !dbg !191 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata i8** %data, metadata !196, metadata !DIExpression()), !dbg !197
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !198
  %1 = load i8*, i8** %0, align 8, !dbg !199
  store i8* %1, i8** %data, align 8, !dbg !197
  call void @llvm.dbg.declare(metadata i32* %i, metadata !200, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata i32* %n, metadata !203, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !205, metadata !DIExpression()), !dbg !206
  %2 = load i8*, i8** %data, align 8, !dbg !207
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !209
  %cmp = icmp eq i32 %call, 1, !dbg !210
  br i1 %cmp, label %if.then, label %if.end, !dbg !211

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !212
  store i32 0, i32* %i, align 4, !dbg !214
  br label %for.cond, !dbg !216

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !217
  %4 = load i32, i32* %n, align 4, !dbg !219
  %cmp1 = icmp slt i32 %3, %4, !dbg !220
  br i1 %cmp1, label %for.body, label %for.end, !dbg !221

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !222
  %inc = add nsw i32 %5, 1, !dbg !222
  store i32 %inc, i32* %intVariable, align 4, !dbg !222
  br label %for.inc, !dbg !224

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !225
  %inc2 = add nsw i32 %6, 1, !dbg !225
  store i32 %inc2, i32* %i, align 4, !dbg !225
  br label %for.cond, !dbg !226, !llvm.loop !227

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !230
  call void @printIntLine(i32 %7), !dbg !231
  br label %if.end, !dbg !232

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !233
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_63b_goodG2BSink(i8** %dataPtr) #0 !dbg !234 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata i8** %data, metadata !237, metadata !DIExpression()), !dbg !238
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !239
  %1 = load i8*, i8** %0, align 8, !dbg !240
  store i8* %1, i8** %data, align 8, !dbg !238
  call void @llvm.dbg.declare(metadata i32* %i, metadata !241, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata i32* %n, metadata !244, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !246, metadata !DIExpression()), !dbg !247
  %2 = load i8*, i8** %data, align 8, !dbg !248
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !250
  %cmp = icmp eq i32 %call, 1, !dbg !251
  br i1 %cmp, label %if.then, label %if.end, !dbg !252

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !253
  store i32 0, i32* %i, align 4, !dbg !255
  br label %for.cond, !dbg !257

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !258
  %4 = load i32, i32* %n, align 4, !dbg !260
  %cmp1 = icmp slt i32 %3, %4, !dbg !261
  br i1 %cmp1, label %for.body, label %for.end, !dbg !262

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !263
  %inc = add nsw i32 %5, 1, !dbg !263
  store i32 %inc, i32* %intVariable, align 4, !dbg !263
  br label %for.inc, !dbg !265

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !266
  %inc2 = add nsw i32 %6, 1, !dbg !266
  store i32 %inc2, i32* %i, align 4, !dbg !266
  br label %for.cond, !dbg !267, !llvm.loop !268

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !270
  call void @printIntLine(i32 %7), !dbg !271
  br label %if.end, !dbg !272

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !273
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_63b_goodB2GSink(i8** %dataPtr) #0 !dbg !274 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata i8** %data, metadata !277, metadata !DIExpression()), !dbg !278
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !279
  %1 = load i8*, i8** %0, align 8, !dbg !280
  store i8* %1, i8** %data, align 8, !dbg !278
  call void @llvm.dbg.declare(metadata i32* %i, metadata !281, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata i32* %n, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !286, metadata !DIExpression()), !dbg !287
  %2 = load i8*, i8** %data, align 8, !dbg !288
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !290
  %cmp = icmp eq i32 %call, 1, !dbg !291
  br i1 %cmp, label %if.then, label %if.end5, !dbg !292

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n, align 4, !dbg !293
  %cmp1 = icmp slt i32 %3, 10000, !dbg !296
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !297

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !298
  store i32 0, i32* %i, align 4, !dbg !300
  br label %for.cond, !dbg !302

for.cond:                                         ; preds = %for.inc, %if.then2
  %4 = load i32, i32* %i, align 4, !dbg !303
  %5 = load i32, i32* %n, align 4, !dbg !305
  %cmp3 = icmp slt i32 %4, %5, !dbg !306
  br i1 %cmp3, label %for.body, label %for.end, !dbg !307

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !308
  %inc = add nsw i32 %6, 1, !dbg !308
  store i32 %inc, i32* %intVariable, align 4, !dbg !308
  br label %for.inc, !dbg !310

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !311
  %inc4 = add nsw i32 %7, 1, !dbg !311
  store i32 %inc4, i32* %i, align 4, !dbg !311
  br label %for.cond, !dbg !312, !llvm.loop !313

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !315
  call void @printIntLine(i32 %8), !dbg !316
  br label %if.end, !dbg !317

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !318

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !319
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !320 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !323, metadata !DIExpression()), !dbg !324
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !325
  %0 = load i8*, i8** %line.addr, align 8, !dbg !326
  %cmp = icmp ne i8* %0, null, !dbg !328
  br i1 %cmp, label %if.then, label %if.end, !dbg !329

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !330
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !332
  br label %if.end, !dbg !333

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !334
  ret void, !dbg !335
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !336 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !337, metadata !DIExpression()), !dbg !338
  %0 = load i8*, i8** %line.addr, align 8, !dbg !339
  %cmp = icmp ne i8* %0, null, !dbg !341
  br i1 %cmp, label %if.then, label %if.end, !dbg !342

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !343
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !345
  br label %if.end, !dbg !346

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !347
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !348 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !353, metadata !DIExpression()), !dbg !354
  %0 = load i32*, i32** %line.addr, align 8, !dbg !355
  %cmp = icmp ne i32* %0, null, !dbg !357
  br i1 %cmp, label %if.then, label %if.end, !dbg !358

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !359
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.12, i64 0, i64 0), i32* %1), !dbg !361
  br label %if.end, !dbg !362

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !363
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !364 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !367, metadata !DIExpression()), !dbg !368
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !369
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !370
  ret void, !dbg !371
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !372 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !378
  %conv = sext i16 %0 to i32, !dbg !378
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !381 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !387
  %conv = fpext float %0 to double, !dbg !387
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !388
  ret void, !dbg !389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !390 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !394, metadata !DIExpression()), !dbg !395
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !396
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !397
  ret void, !dbg !398
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !399 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !406, metadata !DIExpression()), !dbg !407
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !408
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !409
  ret void, !dbg !410
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !411 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !414, metadata !DIExpression()), !dbg !415
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !416
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !417
  ret void, !dbg !418
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !419 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !422, metadata !DIExpression()), !dbg !423
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !424
  %conv = sext i8 %0 to i32, !dbg !424
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !425
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !427 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !430, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !432, metadata !DIExpression()), !dbg !436
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !437
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !438
  store i32 %0, i32* %arrayidx, align 4, !dbg !439
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !440
  store i32 0, i32* %arrayidx1, align 4, !dbg !441
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !442
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.15, i64 0, i64 0), i32* %arraydecay), !dbg !443
  ret void, !dbg !444
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !445 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !448, metadata !DIExpression()), !dbg !449
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !450
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !451
  ret void, !dbg !452
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !453 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !456, metadata !DIExpression()), !dbg !457
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !458
  %conv = zext i8 %0 to i32, !dbg !458
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !459
  ret void, !dbg !460
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !461 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !465, metadata !DIExpression()), !dbg !466
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !467
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !468
  ret void, !dbg !469
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !470 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !480, metadata !DIExpression()), !dbg !481
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !482
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !483
  %1 = load i32, i32* %intOne, align 4, !dbg !483
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !484
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !485
  %3 = load i32, i32* %intTwo, align 4, !dbg !485
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !486
  ret void, !dbg !487
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !488 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !492, metadata !DIExpression()), !dbg !493
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !494, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.declare(metadata i64* %i, metadata !496, metadata !DIExpression()), !dbg !497
  store i64 0, i64* %i, align 8, !dbg !498
  br label %for.cond, !dbg !500

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !501
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !503
  %cmp = icmp ult i64 %0, %1, !dbg !504
  br i1 %cmp, label %for.body, label %for.end, !dbg !505

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !506
  %3 = load i64, i64* %i, align 8, !dbg !508
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !506
  %4 = load i8, i8* %arrayidx, align 1, !dbg !506
  %conv = zext i8 %4 to i32, !dbg !506
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !509
  br label %for.inc, !dbg !510

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !511
  %inc = add i64 %5, 1, !dbg !511
  store i64 %inc, i64* %i, align 8, !dbg !511
  br label %for.cond, !dbg !512, !llvm.loop !513

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !515
  ret void, !dbg !516
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !517 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !520, metadata !DIExpression()), !dbg !521
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !522, metadata !DIExpression()), !dbg !523
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !524, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !526, metadata !DIExpression()), !dbg !527
  store i64 0, i64* %numWritten, align 8, !dbg !527
  br label %while.cond, !dbg !528

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !529
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !530
  %cmp = icmp ult i64 %0, %1, !dbg !531
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !532

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !533
  %2 = load i16*, i16** %call, align 8, !dbg !533
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !533
  %4 = load i64, i64* %numWritten, align 8, !dbg !533
  %mul = mul i64 2, %4, !dbg !533
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !533
  %5 = load i8, i8* %arrayidx, align 1, !dbg !533
  %conv = sext i8 %5 to i32, !dbg !533
  %idxprom = sext i32 %conv to i64, !dbg !533
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !533
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !533
  %conv2 = zext i16 %6 to i32, !dbg !533
  %and = and i32 %conv2, 4096, !dbg !533
  %tobool = icmp ne i32 %and, 0, !dbg !533
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !534

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !535
  %7 = load i16*, i16** %call3, align 8, !dbg !535
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !535
  %9 = load i64, i64* %numWritten, align 8, !dbg !535
  %mul4 = mul i64 2, %9, !dbg !535
  %add = add i64 %mul4, 1, !dbg !535
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !535
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !535
  %conv6 = sext i8 %10 to i32, !dbg !535
  %idxprom7 = sext i32 %conv6 to i64, !dbg !535
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !535
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !535
  %conv9 = zext i16 %11 to i32, !dbg !535
  %and10 = and i32 %conv9, 4096, !dbg !535
  %tobool11 = icmp ne i32 %and10, 0, !dbg !534
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !536
  br i1 %12, label %while.body, label %while.end, !dbg !528

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !537, metadata !DIExpression()), !dbg !539
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !540
  %14 = load i64, i64* %numWritten, align 8, !dbg !541
  %mul12 = mul i64 2, %14, !dbg !542
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !540
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !543
  %15 = load i32, i32* %byte, align 4, !dbg !544
  %conv15 = trunc i32 %15 to i8, !dbg !545
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !546
  %17 = load i64, i64* %numWritten, align 8, !dbg !547
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !546
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !548
  %18 = load i64, i64* %numWritten, align 8, !dbg !549
  %inc = add i64 %18, 1, !dbg !549
  store i64 %inc, i64* %numWritten, align 8, !dbg !549
  br label %while.cond, !dbg !528, !llvm.loop !550

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !552
  ret i64 %19, !dbg !553
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !554 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !557, metadata !DIExpression()), !dbg !558
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !559, metadata !DIExpression()), !dbg !560
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !561, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !563, metadata !DIExpression()), !dbg !564
  store i64 0, i64* %numWritten, align 8, !dbg !564
  br label %while.cond, !dbg !565

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !566
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !567
  %cmp = icmp ult i64 %0, %1, !dbg !568
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !569

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !570
  %3 = load i64, i64* %numWritten, align 8, !dbg !571
  %mul = mul i64 2, %3, !dbg !572
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !570
  %4 = load i32, i32* %arrayidx, align 4, !dbg !570
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !573
  %tobool = icmp ne i32 %call, 0, !dbg !573
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !574

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !575
  %6 = load i64, i64* %numWritten, align 8, !dbg !576
  %mul1 = mul i64 2, %6, !dbg !577
  %add = add i64 %mul1, 1, !dbg !578
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !575
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !575
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !579
  %tobool4 = icmp ne i32 %call3, 0, !dbg !574
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !580
  br i1 %8, label %while.body, label %while.end, !dbg !565

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !581, metadata !DIExpression()), !dbg !583
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !584
  %10 = load i64, i64* %numWritten, align 8, !dbg !585
  %mul5 = mul i64 2, %10, !dbg !586
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !584
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !587
  %11 = load i32, i32* %byte, align 4, !dbg !588
  %conv = trunc i32 %11 to i8, !dbg !589
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !590
  %13 = load i64, i64* %numWritten, align 8, !dbg !591
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !590
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !592
  %14 = load i64, i64* %numWritten, align 8, !dbg !593
  %inc = add i64 %14, 1, !dbg !593
  store i64 %inc, i64* %numWritten, align 8, !dbg !593
  br label %while.cond, !dbg !565, !llvm.loop !594

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !596
  ret i64 %15, !dbg !597
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !598 {
entry:
  ret i32 1, !dbg !601
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !602 {
entry:
  ret i32 0, !dbg !603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !604 {
entry:
  %call = call i32 @rand() #8, !dbg !605
  %rem = srem i32 %call, 2, !dbg !606
  ret i32 %rem, !dbg !607
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !608 {
entry:
  ret void, !dbg !609
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !610 {
entry:
  ret void, !dbg !611
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !612 {
entry:
  ret void, !dbg !613
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !614 {
entry:
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !616 {
entry:
  ret void, !dbg !617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !618 {
entry:
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !620 {
entry:
  ret void, !dbg !621
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !622 {
entry:
  ret void, !dbg !623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !624 {
entry:
  ret void, !dbg !625
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !626 {
entry:
  ret void, !dbg !627
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !628 {
entry:
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !630 {
entry:
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !632 {
entry:
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !634 {
entry:
  ret void, !dbg !635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !636 {
entry:
  ret void, !dbg !637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !638 {
entry:
  ret void, !dbg !639
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !640 {
entry:
  ret void, !dbg !641
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !642 {
entry:
  ret void, !dbg !643
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_013/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_63a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_013/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_63b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_013/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_63_bad", scope: !45, file: !45, line: 31, type: !55, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 33, type: !42)
!58 = !DILocation(line: 33, column: 12, scope: !54)
!59 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 34, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 100)
!63 = !DILocation(line: 34, column: 10, scope: !54)
!64 = !DILocation(line: 35, column: 12, scope: !54)
!65 = !DILocation(line: 35, column: 10, scope: !54)
!66 = !DILocalVariable(name: "dataLen", scope: !67, file: !45, line: 38, type: !68)
!67 = distinct !DILexicalBlock(scope: !54, file: !45, line: 36, column: 5)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DILocation(line: 38, column: 16, scope: !67)
!72 = !DILocation(line: 38, column: 33, scope: !67)
!73 = !DILocation(line: 38, column: 26, scope: !67)
!74 = !DILocation(line: 40, column: 17, scope: !75)
!75 = distinct !DILexicalBlock(scope: !67, file: !45, line: 40, column: 13)
!76 = !DILocation(line: 40, column: 16, scope: !75)
!77 = !DILocation(line: 40, column: 25, scope: !75)
!78 = !DILocation(line: 40, column: 13, scope: !67)
!79 = !DILocation(line: 43, column: 23, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !45, line: 43, column: 17)
!81 = distinct !DILexicalBlock(scope: !75, file: !45, line: 41, column: 9)
!82 = !DILocation(line: 43, column: 28, scope: !80)
!83 = !DILocation(line: 43, column: 27, scope: !80)
!84 = !DILocation(line: 43, column: 47, scope: !80)
!85 = !DILocation(line: 43, column: 46, scope: !80)
!86 = !DILocation(line: 43, column: 37, scope: !80)
!87 = !DILocation(line: 43, column: 57, scope: !80)
!88 = !DILocation(line: 43, column: 17, scope: !80)
!89 = !DILocation(line: 43, column: 64, scope: !80)
!90 = !DILocation(line: 43, column: 17, scope: !81)
!91 = !DILocation(line: 47, column: 34, scope: !92)
!92 = distinct !DILexicalBlock(scope: !80, file: !45, line: 44, column: 13)
!93 = !DILocation(line: 47, column: 27, scope: !92)
!94 = !DILocation(line: 47, column: 25, scope: !92)
!95 = !DILocation(line: 48, column: 21, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !45, line: 48, column: 21)
!97 = !DILocation(line: 48, column: 29, scope: !96)
!98 = !DILocation(line: 48, column: 33, scope: !96)
!99 = !DILocation(line: 48, column: 36, scope: !96)
!100 = !DILocation(line: 48, column: 41, scope: !96)
!101 = !DILocation(line: 48, column: 48, scope: !96)
!102 = !DILocation(line: 48, column: 52, scope: !96)
!103 = !DILocation(line: 48, column: 21, scope: !92)
!104 = !DILocation(line: 50, column: 21, scope: !105)
!105 = distinct !DILexicalBlock(scope: !96, file: !45, line: 49, column: 17)
!106 = !DILocation(line: 50, column: 26, scope: !105)
!107 = !DILocation(line: 50, column: 33, scope: !105)
!108 = !DILocation(line: 50, column: 37, scope: !105)
!109 = !DILocation(line: 51, column: 17, scope: !105)
!110 = !DILocation(line: 52, column: 13, scope: !92)
!111 = !DILocation(line: 55, column: 17, scope: !112)
!112 = distinct !DILexicalBlock(scope: !80, file: !45, line: 54, column: 13)
!113 = !DILocation(line: 57, column: 17, scope: !112)
!114 = !DILocation(line: 57, column: 22, scope: !112)
!115 = !DILocation(line: 57, column: 31, scope: !112)
!116 = !DILocation(line: 59, column: 9, scope: !81)
!117 = !DILocation(line: 61, column: 5, scope: !54)
!118 = !DILocation(line: 62, column: 1, scope: !54)
!119 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 70, type: !55, scopeLine: 71, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!120 = !DILocalVariable(name: "data", scope: !119, file: !45, line: 72, type: !42)
!121 = !DILocation(line: 72, column: 12, scope: !119)
!122 = !DILocalVariable(name: "dataBuffer", scope: !119, file: !45, line: 73, type: !60)
!123 = !DILocation(line: 73, column: 10, scope: !119)
!124 = !DILocation(line: 74, column: 12, scope: !119)
!125 = !DILocation(line: 74, column: 10, scope: !119)
!126 = !DILocation(line: 76, column: 12, scope: !119)
!127 = !DILocation(line: 76, column: 5, scope: !119)
!128 = !DILocation(line: 77, column: 5, scope: !119)
!129 = !DILocation(line: 78, column: 1, scope: !119)
!130 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 82, type: !55, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!131 = !DILocalVariable(name: "data", scope: !130, file: !45, line: 84, type: !42)
!132 = !DILocation(line: 84, column: 12, scope: !130)
!133 = !DILocalVariable(name: "dataBuffer", scope: !130, file: !45, line: 85, type: !60)
!134 = !DILocation(line: 85, column: 10, scope: !130)
!135 = !DILocation(line: 86, column: 12, scope: !130)
!136 = !DILocation(line: 86, column: 10, scope: !130)
!137 = !DILocalVariable(name: "dataLen", scope: !138, file: !45, line: 89, type: !68)
!138 = distinct !DILexicalBlock(scope: !130, file: !45, line: 87, column: 5)
!139 = !DILocation(line: 89, column: 16, scope: !138)
!140 = !DILocation(line: 89, column: 33, scope: !138)
!141 = !DILocation(line: 89, column: 26, scope: !138)
!142 = !DILocation(line: 91, column: 17, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !45, line: 91, column: 13)
!144 = !DILocation(line: 91, column: 16, scope: !143)
!145 = !DILocation(line: 91, column: 25, scope: !143)
!146 = !DILocation(line: 91, column: 13, scope: !138)
!147 = !DILocation(line: 94, column: 23, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !45, line: 94, column: 17)
!149 = distinct !DILexicalBlock(scope: !143, file: !45, line: 92, column: 9)
!150 = !DILocation(line: 94, column: 28, scope: !148)
!151 = !DILocation(line: 94, column: 27, scope: !148)
!152 = !DILocation(line: 94, column: 47, scope: !148)
!153 = !DILocation(line: 94, column: 46, scope: !148)
!154 = !DILocation(line: 94, column: 37, scope: !148)
!155 = !DILocation(line: 94, column: 57, scope: !148)
!156 = !DILocation(line: 94, column: 17, scope: !148)
!157 = !DILocation(line: 94, column: 64, scope: !148)
!158 = !DILocation(line: 94, column: 17, scope: !149)
!159 = !DILocation(line: 98, column: 34, scope: !160)
!160 = distinct !DILexicalBlock(scope: !148, file: !45, line: 95, column: 13)
!161 = !DILocation(line: 98, column: 27, scope: !160)
!162 = !DILocation(line: 98, column: 25, scope: !160)
!163 = !DILocation(line: 99, column: 21, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !45, line: 99, column: 21)
!165 = !DILocation(line: 99, column: 29, scope: !164)
!166 = !DILocation(line: 99, column: 33, scope: !164)
!167 = !DILocation(line: 99, column: 36, scope: !164)
!168 = !DILocation(line: 99, column: 41, scope: !164)
!169 = !DILocation(line: 99, column: 48, scope: !164)
!170 = !DILocation(line: 99, column: 52, scope: !164)
!171 = !DILocation(line: 99, column: 21, scope: !160)
!172 = !DILocation(line: 101, column: 21, scope: !173)
!173 = distinct !DILexicalBlock(scope: !164, file: !45, line: 100, column: 17)
!174 = !DILocation(line: 101, column: 26, scope: !173)
!175 = !DILocation(line: 101, column: 33, scope: !173)
!176 = !DILocation(line: 101, column: 37, scope: !173)
!177 = !DILocation(line: 102, column: 17, scope: !173)
!178 = !DILocation(line: 103, column: 13, scope: !160)
!179 = !DILocation(line: 106, column: 17, scope: !180)
!180 = distinct !DILexicalBlock(scope: !148, file: !45, line: 105, column: 13)
!181 = !DILocation(line: 108, column: 17, scope: !180)
!182 = !DILocation(line: 108, column: 22, scope: !180)
!183 = !DILocation(line: 108, column: 31, scope: !180)
!184 = !DILocation(line: 110, column: 9, scope: !149)
!185 = !DILocation(line: 112, column: 5, scope: !130)
!186 = !DILocation(line: 113, column: 1, scope: !130)
!187 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_63_good", scope: !45, file: !45, line: 115, type: !55, scopeLine: 116, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!188 = !DILocation(line: 117, column: 5, scope: !187)
!189 = !DILocation(line: 118, column: 5, scope: !187)
!190 = !DILocation(line: 119, column: 1, scope: !187)
!191 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_63b_badSink", scope: !49, file: !49, line: 28, type: !192, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !41}
!194 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !191, file: !49, line: 28, type: !41)
!195 = !DILocation(line: 28, column: 73, scope: !191)
!196 = !DILocalVariable(name: "data", scope: !191, file: !49, line: 30, type: !42)
!197 = !DILocation(line: 30, column: 12, scope: !191)
!198 = !DILocation(line: 30, column: 20, scope: !191)
!199 = !DILocation(line: 30, column: 19, scope: !191)
!200 = !DILocalVariable(name: "i", scope: !201, file: !49, line: 32, type: !23)
!201 = distinct !DILexicalBlock(scope: !191, file: !49, line: 31, column: 5)
!202 = !DILocation(line: 32, column: 13, scope: !201)
!203 = !DILocalVariable(name: "n", scope: !201, file: !49, line: 32, type: !23)
!204 = !DILocation(line: 32, column: 16, scope: !201)
!205 = !DILocalVariable(name: "intVariable", scope: !201, file: !49, line: 32, type: !23)
!206 = !DILocation(line: 32, column: 19, scope: !201)
!207 = !DILocation(line: 33, column: 20, scope: !208)
!208 = distinct !DILexicalBlock(scope: !201, file: !49, line: 33, column: 13)
!209 = !DILocation(line: 33, column: 13, scope: !208)
!210 = !DILocation(line: 33, column: 36, scope: !208)
!211 = !DILocation(line: 33, column: 13, scope: !201)
!212 = !DILocation(line: 36, column: 25, scope: !213)
!213 = distinct !DILexicalBlock(scope: !208, file: !49, line: 34, column: 9)
!214 = !DILocation(line: 37, column: 20, scope: !215)
!215 = distinct !DILexicalBlock(scope: !213, file: !49, line: 37, column: 13)
!216 = !DILocation(line: 37, column: 18, scope: !215)
!217 = !DILocation(line: 37, column: 25, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !49, line: 37, column: 13)
!219 = !DILocation(line: 37, column: 29, scope: !218)
!220 = !DILocation(line: 37, column: 27, scope: !218)
!221 = !DILocation(line: 37, column: 13, scope: !215)
!222 = !DILocation(line: 40, column: 28, scope: !223)
!223 = distinct !DILexicalBlock(scope: !218, file: !49, line: 38, column: 13)
!224 = !DILocation(line: 41, column: 13, scope: !223)
!225 = !DILocation(line: 37, column: 33, scope: !218)
!226 = !DILocation(line: 37, column: 13, scope: !218)
!227 = distinct !{!227, !221, !228, !229}
!228 = !DILocation(line: 41, column: 13, scope: !215)
!229 = !{!"llvm.loop.mustprogress"}
!230 = !DILocation(line: 42, column: 26, scope: !213)
!231 = !DILocation(line: 42, column: 13, scope: !213)
!232 = !DILocation(line: 43, column: 9, scope: !213)
!233 = !DILocation(line: 45, column: 1, scope: !191)
!234 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_63b_goodG2BSink", scope: !49, file: !49, line: 52, type: !192, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!235 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !234, file: !49, line: 52, type: !41)
!236 = !DILocation(line: 52, column: 77, scope: !234)
!237 = !DILocalVariable(name: "data", scope: !234, file: !49, line: 54, type: !42)
!238 = !DILocation(line: 54, column: 12, scope: !234)
!239 = !DILocation(line: 54, column: 20, scope: !234)
!240 = !DILocation(line: 54, column: 19, scope: !234)
!241 = !DILocalVariable(name: "i", scope: !242, file: !49, line: 56, type: !23)
!242 = distinct !DILexicalBlock(scope: !234, file: !49, line: 55, column: 5)
!243 = !DILocation(line: 56, column: 13, scope: !242)
!244 = !DILocalVariable(name: "n", scope: !242, file: !49, line: 56, type: !23)
!245 = !DILocation(line: 56, column: 16, scope: !242)
!246 = !DILocalVariable(name: "intVariable", scope: !242, file: !49, line: 56, type: !23)
!247 = !DILocation(line: 56, column: 19, scope: !242)
!248 = !DILocation(line: 57, column: 20, scope: !249)
!249 = distinct !DILexicalBlock(scope: !242, file: !49, line: 57, column: 13)
!250 = !DILocation(line: 57, column: 13, scope: !249)
!251 = !DILocation(line: 57, column: 36, scope: !249)
!252 = !DILocation(line: 57, column: 13, scope: !242)
!253 = !DILocation(line: 60, column: 25, scope: !254)
!254 = distinct !DILexicalBlock(scope: !249, file: !49, line: 58, column: 9)
!255 = !DILocation(line: 61, column: 20, scope: !256)
!256 = distinct !DILexicalBlock(scope: !254, file: !49, line: 61, column: 13)
!257 = !DILocation(line: 61, column: 18, scope: !256)
!258 = !DILocation(line: 61, column: 25, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !49, line: 61, column: 13)
!260 = !DILocation(line: 61, column: 29, scope: !259)
!261 = !DILocation(line: 61, column: 27, scope: !259)
!262 = !DILocation(line: 61, column: 13, scope: !256)
!263 = !DILocation(line: 64, column: 28, scope: !264)
!264 = distinct !DILexicalBlock(scope: !259, file: !49, line: 62, column: 13)
!265 = !DILocation(line: 65, column: 13, scope: !264)
!266 = !DILocation(line: 61, column: 33, scope: !259)
!267 = !DILocation(line: 61, column: 13, scope: !259)
!268 = distinct !{!268, !262, !269, !229}
!269 = !DILocation(line: 65, column: 13, scope: !256)
!270 = !DILocation(line: 66, column: 26, scope: !254)
!271 = !DILocation(line: 66, column: 13, scope: !254)
!272 = !DILocation(line: 67, column: 9, scope: !254)
!273 = !DILocation(line: 69, column: 1, scope: !234)
!274 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_63b_goodB2GSink", scope: !49, file: !49, line: 72, type: !192, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!275 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !274, file: !49, line: 72, type: !41)
!276 = !DILocation(line: 72, column: 77, scope: !274)
!277 = !DILocalVariable(name: "data", scope: !274, file: !49, line: 74, type: !42)
!278 = !DILocation(line: 74, column: 12, scope: !274)
!279 = !DILocation(line: 74, column: 20, scope: !274)
!280 = !DILocation(line: 74, column: 19, scope: !274)
!281 = !DILocalVariable(name: "i", scope: !282, file: !49, line: 76, type: !23)
!282 = distinct !DILexicalBlock(scope: !274, file: !49, line: 75, column: 5)
!283 = !DILocation(line: 76, column: 13, scope: !282)
!284 = !DILocalVariable(name: "n", scope: !282, file: !49, line: 76, type: !23)
!285 = !DILocation(line: 76, column: 16, scope: !282)
!286 = !DILocalVariable(name: "intVariable", scope: !282, file: !49, line: 76, type: !23)
!287 = !DILocation(line: 76, column: 19, scope: !282)
!288 = !DILocation(line: 77, column: 20, scope: !289)
!289 = distinct !DILexicalBlock(scope: !282, file: !49, line: 77, column: 13)
!290 = !DILocation(line: 77, column: 13, scope: !289)
!291 = !DILocation(line: 77, column: 36, scope: !289)
!292 = !DILocation(line: 77, column: 13, scope: !282)
!293 = !DILocation(line: 80, column: 17, scope: !294)
!294 = distinct !DILexicalBlock(scope: !295, file: !49, line: 80, column: 17)
!295 = distinct !DILexicalBlock(scope: !289, file: !49, line: 78, column: 9)
!296 = !DILocation(line: 80, column: 19, scope: !294)
!297 = !DILocation(line: 80, column: 17, scope: !295)
!298 = !DILocation(line: 82, column: 29, scope: !299)
!299 = distinct !DILexicalBlock(scope: !294, file: !49, line: 81, column: 13)
!300 = !DILocation(line: 83, column: 24, scope: !301)
!301 = distinct !DILexicalBlock(scope: !299, file: !49, line: 83, column: 17)
!302 = !DILocation(line: 83, column: 22, scope: !301)
!303 = !DILocation(line: 83, column: 29, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !49, line: 83, column: 17)
!305 = !DILocation(line: 83, column: 33, scope: !304)
!306 = !DILocation(line: 83, column: 31, scope: !304)
!307 = !DILocation(line: 83, column: 17, scope: !301)
!308 = !DILocation(line: 86, column: 32, scope: !309)
!309 = distinct !DILexicalBlock(scope: !304, file: !49, line: 84, column: 17)
!310 = !DILocation(line: 87, column: 17, scope: !309)
!311 = !DILocation(line: 83, column: 37, scope: !304)
!312 = !DILocation(line: 83, column: 17, scope: !304)
!313 = distinct !{!313, !307, !314, !229}
!314 = !DILocation(line: 87, column: 17, scope: !301)
!315 = !DILocation(line: 88, column: 30, scope: !299)
!316 = !DILocation(line: 88, column: 17, scope: !299)
!317 = !DILocation(line: 89, column: 13, scope: !299)
!318 = !DILocation(line: 90, column: 9, scope: !295)
!319 = !DILocation(line: 92, column: 1, scope: !274)
!320 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !321, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !42}
!323 = !DILocalVariable(name: "line", arg: 1, scope: !320, file: !3, line: 11, type: !42)
!324 = !DILocation(line: 11, column: 25, scope: !320)
!325 = !DILocation(line: 13, column: 1, scope: !320)
!326 = !DILocation(line: 14, column: 8, scope: !327)
!327 = distinct !DILexicalBlock(scope: !320, file: !3, line: 14, column: 8)
!328 = !DILocation(line: 14, column: 13, scope: !327)
!329 = !DILocation(line: 14, column: 8, scope: !320)
!330 = !DILocation(line: 16, column: 24, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !3, line: 15, column: 5)
!332 = !DILocation(line: 16, column: 9, scope: !331)
!333 = !DILocation(line: 17, column: 5, scope: !331)
!334 = !DILocation(line: 18, column: 5, scope: !320)
!335 = !DILocation(line: 19, column: 1, scope: !320)
!336 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !321, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!337 = !DILocalVariable(name: "line", arg: 1, scope: !336, file: !3, line: 20, type: !42)
!338 = !DILocation(line: 20, column: 29, scope: !336)
!339 = !DILocation(line: 22, column: 8, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !3, line: 22, column: 8)
!341 = !DILocation(line: 22, column: 13, scope: !340)
!342 = !DILocation(line: 22, column: 8, scope: !336)
!343 = !DILocation(line: 24, column: 24, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !3, line: 23, column: 5)
!345 = !DILocation(line: 24, column: 9, scope: !344)
!346 = !DILocation(line: 25, column: 5, scope: !344)
!347 = !DILocation(line: 26, column: 1, scope: !336)
!348 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !349, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !351}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !23)
!353 = !DILocalVariable(name: "line", arg: 1, scope: !348, file: !3, line: 27, type: !351)
!354 = !DILocation(line: 27, column: 29, scope: !348)
!355 = !DILocation(line: 29, column: 8, scope: !356)
!356 = distinct !DILexicalBlock(scope: !348, file: !3, line: 29, column: 8)
!357 = !DILocation(line: 29, column: 13, scope: !356)
!358 = !DILocation(line: 29, column: 8, scope: !348)
!359 = !DILocation(line: 31, column: 27, scope: !360)
!360 = distinct !DILexicalBlock(scope: !356, file: !3, line: 30, column: 5)
!361 = !DILocation(line: 31, column: 9, scope: !360)
!362 = !DILocation(line: 32, column: 5, scope: !360)
!363 = !DILocation(line: 33, column: 1, scope: !348)
!364 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !365, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !23}
!367 = !DILocalVariable(name: "intNumber", arg: 1, scope: !364, file: !3, line: 35, type: !23)
!368 = !DILocation(line: 35, column: 24, scope: !364)
!369 = !DILocation(line: 37, column: 20, scope: !364)
!370 = !DILocation(line: 37, column: 5, scope: !364)
!371 = !DILocation(line: 38, column: 1, scope: !364)
!372 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !373, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !375}
!375 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!376 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !372, file: !3, line: 40, type: !375)
!377 = !DILocation(line: 40, column: 28, scope: !372)
!378 = !DILocation(line: 42, column: 21, scope: !372)
!379 = !DILocation(line: 42, column: 5, scope: !372)
!380 = !DILocation(line: 43, column: 1, scope: !372)
!381 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !382, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !384}
!384 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!385 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !381, file: !3, line: 45, type: !384)
!386 = !DILocation(line: 45, column: 28, scope: !381)
!387 = !DILocation(line: 47, column: 20, scope: !381)
!388 = !DILocation(line: 47, column: 5, scope: !381)
!389 = !DILocation(line: 48, column: 1, scope: !381)
!390 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !391, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393}
!393 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!394 = !DILocalVariable(name: "longNumber", arg: 1, scope: !390, file: !3, line: 50, type: !393)
!395 = !DILocation(line: 50, column: 26, scope: !390)
!396 = !DILocation(line: 52, column: 21, scope: !390)
!397 = !DILocation(line: 52, column: 5, scope: !390)
!398 = !DILocation(line: 53, column: 1, scope: !390)
!399 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !400, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !402}
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !403, line: 27, baseType: !404)
!403 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !405, line: 44, baseType: !393)
!405 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!406 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !399, file: !3, line: 55, type: !402)
!407 = !DILocation(line: 55, column: 33, scope: !399)
!408 = !DILocation(line: 57, column: 29, scope: !399)
!409 = !DILocation(line: 57, column: 5, scope: !399)
!410 = !DILocation(line: 58, column: 1, scope: !399)
!411 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !412, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !68}
!414 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !411, file: !3, line: 60, type: !68)
!415 = !DILocation(line: 60, column: 29, scope: !411)
!416 = !DILocation(line: 62, column: 21, scope: !411)
!417 = !DILocation(line: 62, column: 5, scope: !411)
!418 = !DILocation(line: 63, column: 1, scope: !411)
!419 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !420, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !43}
!422 = !DILocalVariable(name: "charHex", arg: 1, scope: !419, file: !3, line: 65, type: !43)
!423 = !DILocation(line: 65, column: 29, scope: !419)
!424 = !DILocation(line: 67, column: 22, scope: !419)
!425 = !DILocation(line: 67, column: 5, scope: !419)
!426 = !DILocation(line: 68, column: 1, scope: !419)
!427 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !428, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !352}
!430 = !DILocalVariable(name: "wideChar", arg: 1, scope: !427, file: !3, line: 70, type: !352)
!431 = !DILocation(line: 70, column: 29, scope: !427)
!432 = !DILocalVariable(name: "s", scope: !427, file: !3, line: 74, type: !433)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 64, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 2)
!436 = !DILocation(line: 74, column: 13, scope: !427)
!437 = !DILocation(line: 75, column: 16, scope: !427)
!438 = !DILocation(line: 75, column: 9, scope: !427)
!439 = !DILocation(line: 75, column: 14, scope: !427)
!440 = !DILocation(line: 76, column: 9, scope: !427)
!441 = !DILocation(line: 76, column: 14, scope: !427)
!442 = !DILocation(line: 77, column: 21, scope: !427)
!443 = !DILocation(line: 77, column: 5, scope: !427)
!444 = !DILocation(line: 78, column: 1, scope: !427)
!445 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !446, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !7}
!448 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !445, file: !3, line: 80, type: !7)
!449 = !DILocation(line: 80, column: 33, scope: !445)
!450 = !DILocation(line: 82, column: 20, scope: !445)
!451 = !DILocation(line: 82, column: 5, scope: !445)
!452 = !DILocation(line: 83, column: 1, scope: !445)
!453 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !454, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !25}
!456 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !453, file: !3, line: 85, type: !25)
!457 = !DILocation(line: 85, column: 45, scope: !453)
!458 = !DILocation(line: 87, column: 22, scope: !453)
!459 = !DILocation(line: 87, column: 5, scope: !453)
!460 = !DILocation(line: 88, column: 1, scope: !453)
!461 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !462, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !464}
!464 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!465 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !461, file: !3, line: 90, type: !464)
!466 = !DILocation(line: 90, column: 29, scope: !461)
!467 = !DILocation(line: 92, column: 20, scope: !461)
!468 = !DILocation(line: 92, column: 5, scope: !461)
!469 = !DILocation(line: 93, column: 1, scope: !461)
!470 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !471, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !475, line: 100, baseType: !476)
!475 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_013/source_code")
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !475, line: 96, size: 64, elements: !477)
!477 = !{!478, !479}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !476, file: !475, line: 98, baseType: !23, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !476, file: !475, line: 99, baseType: !23, size: 32, offset: 32)
!480 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !470, file: !3, line: 95, type: !473)
!481 = !DILocation(line: 95, column: 40, scope: !470)
!482 = !DILocation(line: 97, column: 26, scope: !470)
!483 = !DILocation(line: 97, column: 47, scope: !470)
!484 = !DILocation(line: 97, column: 55, scope: !470)
!485 = !DILocation(line: 97, column: 76, scope: !470)
!486 = !DILocation(line: 97, column: 5, scope: !470)
!487 = !DILocation(line: 98, column: 1, scope: !470)
!488 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !489, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !491, !68}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!492 = !DILocalVariable(name: "bytes", arg: 1, scope: !488, file: !3, line: 100, type: !491)
!493 = !DILocation(line: 100, column: 38, scope: !488)
!494 = !DILocalVariable(name: "numBytes", arg: 2, scope: !488, file: !3, line: 100, type: !68)
!495 = !DILocation(line: 100, column: 52, scope: !488)
!496 = !DILocalVariable(name: "i", scope: !488, file: !3, line: 102, type: !68)
!497 = !DILocation(line: 102, column: 12, scope: !488)
!498 = !DILocation(line: 103, column: 12, scope: !499)
!499 = distinct !DILexicalBlock(scope: !488, file: !3, line: 103, column: 5)
!500 = !DILocation(line: 103, column: 10, scope: !499)
!501 = !DILocation(line: 103, column: 17, scope: !502)
!502 = distinct !DILexicalBlock(scope: !499, file: !3, line: 103, column: 5)
!503 = !DILocation(line: 103, column: 21, scope: !502)
!504 = !DILocation(line: 103, column: 19, scope: !502)
!505 = !DILocation(line: 103, column: 5, scope: !499)
!506 = !DILocation(line: 105, column: 24, scope: !507)
!507 = distinct !DILexicalBlock(scope: !502, file: !3, line: 104, column: 5)
!508 = !DILocation(line: 105, column: 30, scope: !507)
!509 = !DILocation(line: 105, column: 9, scope: !507)
!510 = !DILocation(line: 106, column: 5, scope: !507)
!511 = !DILocation(line: 103, column: 31, scope: !502)
!512 = !DILocation(line: 103, column: 5, scope: !502)
!513 = distinct !{!513, !505, !514, !229}
!514 = !DILocation(line: 106, column: 5, scope: !499)
!515 = !DILocation(line: 107, column: 5, scope: !488)
!516 = !DILocation(line: 108, column: 1, scope: !488)
!517 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !518, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!518 = !DISubroutineType(types: !519)
!519 = !{!68, !491, !68, !42}
!520 = !DILocalVariable(name: "bytes", arg: 1, scope: !517, file: !3, line: 113, type: !491)
!521 = !DILocation(line: 113, column: 39, scope: !517)
!522 = !DILocalVariable(name: "numBytes", arg: 2, scope: !517, file: !3, line: 113, type: !68)
!523 = !DILocation(line: 113, column: 53, scope: !517)
!524 = !DILocalVariable(name: "hex", arg: 3, scope: !517, file: !3, line: 113, type: !42)
!525 = !DILocation(line: 113, column: 71, scope: !517)
!526 = !DILocalVariable(name: "numWritten", scope: !517, file: !3, line: 115, type: !68)
!527 = !DILocation(line: 115, column: 12, scope: !517)
!528 = !DILocation(line: 121, column: 5, scope: !517)
!529 = !DILocation(line: 121, column: 12, scope: !517)
!530 = !DILocation(line: 121, column: 25, scope: !517)
!531 = !DILocation(line: 121, column: 23, scope: !517)
!532 = !DILocation(line: 121, column: 34, scope: !517)
!533 = !DILocation(line: 121, column: 37, scope: !517)
!534 = !DILocation(line: 121, column: 67, scope: !517)
!535 = !DILocation(line: 121, column: 70, scope: !517)
!536 = !DILocation(line: 0, scope: !517)
!537 = !DILocalVariable(name: "byte", scope: !538, file: !3, line: 123, type: !23)
!538 = distinct !DILexicalBlock(scope: !517, file: !3, line: 122, column: 5)
!539 = !DILocation(line: 123, column: 13, scope: !538)
!540 = !DILocation(line: 124, column: 17, scope: !538)
!541 = !DILocation(line: 124, column: 25, scope: !538)
!542 = !DILocation(line: 124, column: 23, scope: !538)
!543 = !DILocation(line: 124, column: 9, scope: !538)
!544 = !DILocation(line: 125, column: 45, scope: !538)
!545 = !DILocation(line: 125, column: 29, scope: !538)
!546 = !DILocation(line: 125, column: 9, scope: !538)
!547 = !DILocation(line: 125, column: 15, scope: !538)
!548 = !DILocation(line: 125, column: 27, scope: !538)
!549 = !DILocation(line: 126, column: 9, scope: !538)
!550 = distinct !{!550, !528, !551, !229}
!551 = !DILocation(line: 127, column: 5, scope: !517)
!552 = !DILocation(line: 129, column: 12, scope: !517)
!553 = !DILocation(line: 129, column: 5, scope: !517)
!554 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !555, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DISubroutineType(types: !556)
!556 = !{!68, !491, !68, !351}
!557 = !DILocalVariable(name: "bytes", arg: 1, scope: !554, file: !3, line: 135, type: !491)
!558 = !DILocation(line: 135, column: 41, scope: !554)
!559 = !DILocalVariable(name: "numBytes", arg: 2, scope: !554, file: !3, line: 135, type: !68)
!560 = !DILocation(line: 135, column: 55, scope: !554)
!561 = !DILocalVariable(name: "hex", arg: 3, scope: !554, file: !3, line: 135, type: !351)
!562 = !DILocation(line: 135, column: 76, scope: !554)
!563 = !DILocalVariable(name: "numWritten", scope: !554, file: !3, line: 137, type: !68)
!564 = !DILocation(line: 137, column: 12, scope: !554)
!565 = !DILocation(line: 143, column: 5, scope: !554)
!566 = !DILocation(line: 143, column: 12, scope: !554)
!567 = !DILocation(line: 143, column: 25, scope: !554)
!568 = !DILocation(line: 143, column: 23, scope: !554)
!569 = !DILocation(line: 143, column: 34, scope: !554)
!570 = !DILocation(line: 143, column: 47, scope: !554)
!571 = !DILocation(line: 143, column: 55, scope: !554)
!572 = !DILocation(line: 143, column: 53, scope: !554)
!573 = !DILocation(line: 143, column: 37, scope: !554)
!574 = !DILocation(line: 143, column: 68, scope: !554)
!575 = !DILocation(line: 143, column: 81, scope: !554)
!576 = !DILocation(line: 143, column: 89, scope: !554)
!577 = !DILocation(line: 143, column: 87, scope: !554)
!578 = !DILocation(line: 143, column: 100, scope: !554)
!579 = !DILocation(line: 143, column: 71, scope: !554)
!580 = !DILocation(line: 0, scope: !554)
!581 = !DILocalVariable(name: "byte", scope: !582, file: !3, line: 145, type: !23)
!582 = distinct !DILexicalBlock(scope: !554, file: !3, line: 144, column: 5)
!583 = !DILocation(line: 145, column: 13, scope: !582)
!584 = !DILocation(line: 146, column: 18, scope: !582)
!585 = !DILocation(line: 146, column: 26, scope: !582)
!586 = !DILocation(line: 146, column: 24, scope: !582)
!587 = !DILocation(line: 146, column: 9, scope: !582)
!588 = !DILocation(line: 147, column: 45, scope: !582)
!589 = !DILocation(line: 147, column: 29, scope: !582)
!590 = !DILocation(line: 147, column: 9, scope: !582)
!591 = !DILocation(line: 147, column: 15, scope: !582)
!592 = !DILocation(line: 147, column: 27, scope: !582)
!593 = !DILocation(line: 148, column: 9, scope: !582)
!594 = distinct !{!594, !565, !595, !229}
!595 = !DILocation(line: 149, column: 5, scope: !554)
!596 = !DILocation(line: 151, column: 12, scope: !554)
!597 = !DILocation(line: 151, column: 5, scope: !554)
!598 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !599, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!599 = !DISubroutineType(types: !600)
!600 = !{!23}
!601 = !DILocation(line: 158, column: 5, scope: !598)
!602 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !599, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!603 = !DILocation(line: 163, column: 5, scope: !602)
!604 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !599, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!605 = !DILocation(line: 168, column: 13, scope: !604)
!606 = !DILocation(line: 168, column: 20, scope: !604)
!607 = !DILocation(line: 168, column: 5, scope: !604)
!608 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!609 = !DILocation(line: 187, column: 16, scope: !608)
!610 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!611 = !DILocation(line: 188, column: 16, scope: !610)
!612 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!613 = !DILocation(line: 189, column: 16, scope: !612)
!614 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!615 = !DILocation(line: 190, column: 16, scope: !614)
!616 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!617 = !DILocation(line: 191, column: 16, scope: !616)
!618 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!619 = !DILocation(line: 192, column: 16, scope: !618)
!620 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!621 = !DILocation(line: 193, column: 16, scope: !620)
!622 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!623 = !DILocation(line: 194, column: 16, scope: !622)
!624 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!625 = !DILocation(line: 195, column: 16, scope: !624)
!626 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!627 = !DILocation(line: 198, column: 15, scope: !626)
!628 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!629 = !DILocation(line: 199, column: 15, scope: !628)
!630 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!631 = !DILocation(line: 200, column: 15, scope: !630)
!632 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!633 = !DILocation(line: 201, column: 15, scope: !632)
!634 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!635 = !DILocation(line: 202, column: 15, scope: !634)
!636 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!637 = !DILocation(line: 203, column: 15, scope: !636)
!638 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!639 = !DILocation(line: 204, column: 15, scope: !638)
!640 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!641 = !DILocation(line: 205, column: 15, scope: !640)
!642 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!643 = !DILocation(line: 206, column: 15, scope: !642)
