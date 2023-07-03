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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_66_bad() #0 !dbg !54 {
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
  call void @CWE606_Unchecked_Loop_Condition__char_console_66b_badSink(i8** %arraydecay20), !dbg !126
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
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !138
  %2 = load i8*, i8** %data, align 8, !dbg !139
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !140
  store i8* %2, i8** %arrayidx, align 16, !dbg !141
  %arraydecay1 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !142
  call void @CWE606_Unchecked_Loop_Condition__char_console_66b_goodG2BSink(i8** %arraydecay1), !dbg !143
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
  call void @CWE606_Unchecked_Loop_Condition__char_console_66b_goodB2GSink(i8** %arraydecay20), !dbg !206
  ret void, !dbg !207
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_66_good() #0 !dbg !208 {
entry:
  call void @goodG2B(), !dbg !209
  call void @goodB2G(), !dbg !210
  ret void, !dbg !211
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_66b_badSink(i8** %dataArray) #0 !dbg !212 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata i8** %data, metadata !217, metadata !DIExpression()), !dbg !218
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !219
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !219
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !219
  store i8* %1, i8** %data, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata i32* %i, metadata !220, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata i32* %n, metadata !223, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !225, metadata !DIExpression()), !dbg !226
  %2 = load i8*, i8** %data, align 8, !dbg !227
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !229
  %cmp = icmp eq i32 %call, 1, !dbg !230
  br i1 %cmp, label %if.then, label %if.end, !dbg !231

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !232
  store i32 0, i32* %i, align 4, !dbg !234
  br label %for.cond, !dbg !236

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !237
  %4 = load i32, i32* %n, align 4, !dbg !239
  %cmp1 = icmp slt i32 %3, %4, !dbg !240
  br i1 %cmp1, label %for.body, label %for.end, !dbg !241

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !242
  %inc = add nsw i32 %5, 1, !dbg !242
  store i32 %inc, i32* %intVariable, align 4, !dbg !242
  br label %for.inc, !dbg !244

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !245
  %inc2 = add nsw i32 %6, 1, !dbg !245
  store i32 %inc2, i32* %i, align 4, !dbg !245
  br label %for.cond, !dbg !246, !llvm.loop !247

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !250
  call void @printIntLine(i32 %7), !dbg !251
  br label %if.end, !dbg !252

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !253
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_66b_goodG2BSink(i8** %dataArray) #0 !dbg !254 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !255, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.declare(metadata i8** %data, metadata !257, metadata !DIExpression()), !dbg !258
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !259
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !259
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !259
  store i8* %1, i8** %data, align 8, !dbg !258
  call void @llvm.dbg.declare(metadata i32* %i, metadata !260, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.declare(metadata i32* %n, metadata !263, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !265, metadata !DIExpression()), !dbg !266
  %2 = load i8*, i8** %data, align 8, !dbg !267
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !269
  %cmp = icmp eq i32 %call, 1, !dbg !270
  br i1 %cmp, label %if.then, label %if.end, !dbg !271

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !272
  store i32 0, i32* %i, align 4, !dbg !274
  br label %for.cond, !dbg !276

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !277
  %4 = load i32, i32* %n, align 4, !dbg !279
  %cmp1 = icmp slt i32 %3, %4, !dbg !280
  br i1 %cmp1, label %for.body, label %for.end, !dbg !281

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !282
  %inc = add nsw i32 %5, 1, !dbg !282
  store i32 %inc, i32* %intVariable, align 4, !dbg !282
  br label %for.inc, !dbg !284

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !285
  %inc2 = add nsw i32 %6, 1, !dbg !285
  store i32 %inc2, i32* %i, align 4, !dbg !285
  br label %for.cond, !dbg !286, !llvm.loop !287

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !289
  call void @printIntLine(i32 %7), !dbg !290
  br label %if.end, !dbg !291

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !292
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_66b_goodB2GSink(i8** %dataArray) #0 !dbg !293 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !294, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.declare(metadata i8** %data, metadata !296, metadata !DIExpression()), !dbg !297
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !298
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !298
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !298
  store i8* %1, i8** %data, align 8, !dbg !297
  call void @llvm.dbg.declare(metadata i32* %i, metadata !299, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.declare(metadata i32* %n, metadata !302, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !304, metadata !DIExpression()), !dbg !305
  %2 = load i8*, i8** %data, align 8, !dbg !306
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !308
  %cmp = icmp eq i32 %call, 1, !dbg !309
  br i1 %cmp, label %if.then, label %if.end5, !dbg !310

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n, align 4, !dbg !311
  %cmp1 = icmp slt i32 %3, 10000, !dbg !314
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !315

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !316
  store i32 0, i32* %i, align 4, !dbg !318
  br label %for.cond, !dbg !320

for.cond:                                         ; preds = %for.inc, %if.then2
  %4 = load i32, i32* %i, align 4, !dbg !321
  %5 = load i32, i32* %n, align 4, !dbg !323
  %cmp3 = icmp slt i32 %4, %5, !dbg !324
  br i1 %cmp3, label %for.body, label %for.end, !dbg !325

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !326
  %inc = add nsw i32 %6, 1, !dbg !326
  store i32 %inc, i32* %intVariable, align 4, !dbg !326
  br label %for.inc, !dbg !328

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !329
  %inc4 = add nsw i32 %7, 1, !dbg !329
  store i32 %inc4, i32* %i, align 4, !dbg !329
  br label %for.cond, !dbg !330, !llvm.loop !331

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !333
  call void @printIntLine(i32 %8), !dbg !334
  br label %if.end, !dbg !335

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !336

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !337
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !338 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !341, metadata !DIExpression()), !dbg !342
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !343
  %0 = load i8*, i8** %line.addr, align 8, !dbg !344
  %cmp = icmp ne i8* %0, null, !dbg !346
  br i1 %cmp, label %if.then, label %if.end, !dbg !347

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !348
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !350
  br label %if.end, !dbg !351

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !352
  ret void, !dbg !353
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !354 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !355, metadata !DIExpression()), !dbg !356
  %0 = load i8*, i8** %line.addr, align 8, !dbg !357
  %cmp = icmp ne i8* %0, null, !dbg !359
  br i1 %cmp, label %if.then, label %if.end, !dbg !360

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !361
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !363
  br label %if.end, !dbg !364

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !365
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !366 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !371, metadata !DIExpression()), !dbg !372
  %0 = load i32*, i32** %line.addr, align 8, !dbg !373
  %cmp = icmp ne i32* %0, null, !dbg !375
  br i1 %cmp, label %if.then, label %if.end, !dbg !376

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !377
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.12, i64 0, i64 0), i32* %1), !dbg !379
  br label %if.end, !dbg !380

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !381
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !382 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !387
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !388
  ret void, !dbg !389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !390 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !394, metadata !DIExpression()), !dbg !395
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !396
  %conv = sext i16 %0 to i32, !dbg !396
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !397
  ret void, !dbg !398
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !399 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !405
  %conv = fpext float %0 to double, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !408 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !412, metadata !DIExpression()), !dbg !413
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !414
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !415
  ret void, !dbg !416
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !417 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !424, metadata !DIExpression()), !dbg !425
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !426
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !427
  ret void, !dbg !428
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !429 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !432, metadata !DIExpression()), !dbg !433
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !434
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !435
  ret void, !dbg !436
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !437 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !440, metadata !DIExpression()), !dbg !441
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !442
  %conv = sext i8 %0 to i32, !dbg !442
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !443
  ret void, !dbg !444
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !445 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !450, metadata !DIExpression()), !dbg !454
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !455
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !456
  store i32 %0, i32* %arrayidx, align 4, !dbg !457
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !458
  store i32 0, i32* %arrayidx1, align 4, !dbg !459
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !460
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.15, i64 0, i64 0), i32* %arraydecay), !dbg !461
  ret void, !dbg !462
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !463 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !466, metadata !DIExpression()), !dbg !467
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !468
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !469
  ret void, !dbg !470
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !471 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !474, metadata !DIExpression()), !dbg !475
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !476
  %conv = zext i8 %0 to i32, !dbg !476
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !477
  ret void, !dbg !478
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !479 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !483, metadata !DIExpression()), !dbg !484
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !485
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !486
  ret void, !dbg !487
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !488 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !498, metadata !DIExpression()), !dbg !499
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !500
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !501
  %1 = load i32, i32* %intOne, align 4, !dbg !501
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !502
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !503
  %3 = load i32, i32* %intTwo, align 4, !dbg !503
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !504
  ret void, !dbg !505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !506 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !510, metadata !DIExpression()), !dbg !511
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !512, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.declare(metadata i64* %i, metadata !514, metadata !DIExpression()), !dbg !515
  store i64 0, i64* %i, align 8, !dbg !516
  br label %for.cond, !dbg !518

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !519
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !521
  %cmp = icmp ult i64 %0, %1, !dbg !522
  br i1 %cmp, label %for.body, label %for.end, !dbg !523

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !524
  %3 = load i64, i64* %i, align 8, !dbg !526
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !524
  %4 = load i8, i8* %arrayidx, align 1, !dbg !524
  %conv = zext i8 %4 to i32, !dbg !524
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !527
  br label %for.inc, !dbg !528

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !529
  %inc = add i64 %5, 1, !dbg !529
  store i64 %inc, i64* %i, align 8, !dbg !529
  br label %for.cond, !dbg !530, !llvm.loop !531

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !533
  ret void, !dbg !534
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !535 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !538, metadata !DIExpression()), !dbg !539
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !540, metadata !DIExpression()), !dbg !541
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !542, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !544, metadata !DIExpression()), !dbg !545
  store i64 0, i64* %numWritten, align 8, !dbg !545
  br label %while.cond, !dbg !546

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !547
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !548
  %cmp = icmp ult i64 %0, %1, !dbg !549
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !550

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !551
  %2 = load i16*, i16** %call, align 8, !dbg !551
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !551
  %4 = load i64, i64* %numWritten, align 8, !dbg !551
  %mul = mul i64 2, %4, !dbg !551
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !551
  %5 = load i8, i8* %arrayidx, align 1, !dbg !551
  %conv = sext i8 %5 to i32, !dbg !551
  %idxprom = sext i32 %conv to i64, !dbg !551
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !551
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !551
  %conv2 = zext i16 %6 to i32, !dbg !551
  %and = and i32 %conv2, 4096, !dbg !551
  %tobool = icmp ne i32 %and, 0, !dbg !551
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !552

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !553
  %7 = load i16*, i16** %call3, align 8, !dbg !553
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !553
  %9 = load i64, i64* %numWritten, align 8, !dbg !553
  %mul4 = mul i64 2, %9, !dbg !553
  %add = add i64 %mul4, 1, !dbg !553
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !553
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !553
  %conv6 = sext i8 %10 to i32, !dbg !553
  %idxprom7 = sext i32 %conv6 to i64, !dbg !553
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !553
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !553
  %conv9 = zext i16 %11 to i32, !dbg !553
  %and10 = and i32 %conv9, 4096, !dbg !553
  %tobool11 = icmp ne i32 %and10, 0, !dbg !552
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !554
  br i1 %12, label %while.body, label %while.end, !dbg !546

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !555, metadata !DIExpression()), !dbg !557
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !558
  %14 = load i64, i64* %numWritten, align 8, !dbg !559
  %mul12 = mul i64 2, %14, !dbg !560
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !558
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !561
  %15 = load i32, i32* %byte, align 4, !dbg !562
  %conv15 = trunc i32 %15 to i8, !dbg !563
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !564
  %17 = load i64, i64* %numWritten, align 8, !dbg !565
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !564
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !566
  %18 = load i64, i64* %numWritten, align 8, !dbg !567
  %inc = add i64 %18, 1, !dbg !567
  store i64 %inc, i64* %numWritten, align 8, !dbg !567
  br label %while.cond, !dbg !546, !llvm.loop !568

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !570
  ret i64 %19, !dbg !571
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !572 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !575, metadata !DIExpression()), !dbg !576
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !577, metadata !DIExpression()), !dbg !578
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !579, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !581, metadata !DIExpression()), !dbg !582
  store i64 0, i64* %numWritten, align 8, !dbg !582
  br label %while.cond, !dbg !583

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !584
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !585
  %cmp = icmp ult i64 %0, %1, !dbg !586
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !587

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !588
  %3 = load i64, i64* %numWritten, align 8, !dbg !589
  %mul = mul i64 2, %3, !dbg !590
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !588
  %4 = load i32, i32* %arrayidx, align 4, !dbg !588
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !591
  %tobool = icmp ne i32 %call, 0, !dbg !591
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !592

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !593
  %6 = load i64, i64* %numWritten, align 8, !dbg !594
  %mul1 = mul i64 2, %6, !dbg !595
  %add = add i64 %mul1, 1, !dbg !596
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !593
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !593
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !597
  %tobool4 = icmp ne i32 %call3, 0, !dbg !592
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !598
  br i1 %8, label %while.body, label %while.end, !dbg !583

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !599, metadata !DIExpression()), !dbg !601
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !602
  %10 = load i64, i64* %numWritten, align 8, !dbg !603
  %mul5 = mul i64 2, %10, !dbg !604
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !602
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !605
  %11 = load i32, i32* %byte, align 4, !dbg !606
  %conv = trunc i32 %11 to i8, !dbg !607
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !608
  %13 = load i64, i64* %numWritten, align 8, !dbg !609
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !608
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !610
  %14 = load i64, i64* %numWritten, align 8, !dbg !611
  %inc = add i64 %14, 1, !dbg !611
  store i64 %inc, i64* %numWritten, align 8, !dbg !611
  br label %while.cond, !dbg !583, !llvm.loop !612

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !614
  ret i64 %15, !dbg !615
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !616 {
entry:
  ret i32 1, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !620 {
entry:
  ret i32 0, !dbg !621
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !622 {
entry:
  %call = call i32 @rand() #8, !dbg !623
  %rem = srem i32 %call, 2, !dbg !624
  ret i32 %rem, !dbg !625
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !626 {
entry:
  ret void, !dbg !627
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !628 {
entry:
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !630 {
entry:
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !632 {
entry:
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !634 {
entry:
  ret void, !dbg !635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !636 {
entry:
  ret void, !dbg !637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !638 {
entry:
  ret void, !dbg !639
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !640 {
entry:
  ret void, !dbg !641
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !642 {
entry:
  ret void, !dbg !643
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !644 {
entry:
  ret void, !dbg !645
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !646 {
entry:
  ret void, !dbg !647
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !648 {
entry:
  ret void, !dbg !649
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !650 {
entry:
  ret void, !dbg !651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !652 {
entry:
  ret void, !dbg !653
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !654 {
entry:
  ret void, !dbg !655
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !656 {
entry:
  ret void, !dbg !657
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !658 {
entry:
  ret void, !dbg !659
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !660 {
entry:
  ret void, !dbg !661
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_016/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_66a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_016/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_66b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_016/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_66_bad", scope: !45, file: !45, line: 31, type: !55, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 33, type: !42)
!58 = !DILocation(line: 33, column: 12, scope: !54)
!59 = !DILocalVariable(name: "dataArray", scope: !54, file: !45, line: 34, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 320, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 5)
!63 = !DILocation(line: 34, column: 12, scope: !54)
!64 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 35, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 100)
!68 = !DILocation(line: 35, column: 10, scope: !54)
!69 = !DILocation(line: 36, column: 12, scope: !54)
!70 = !DILocation(line: 36, column: 10, scope: !54)
!71 = !DILocalVariable(name: "dataLen", scope: !72, file: !45, line: 39, type: !73)
!72 = distinct !DILexicalBlock(scope: !54, file: !45, line: 37, column: 5)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 46, baseType: !75)
!74 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!75 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!76 = !DILocation(line: 39, column: 16, scope: !72)
!77 = !DILocation(line: 39, column: 33, scope: !72)
!78 = !DILocation(line: 39, column: 26, scope: !72)
!79 = !DILocation(line: 41, column: 17, scope: !80)
!80 = distinct !DILexicalBlock(scope: !72, file: !45, line: 41, column: 13)
!81 = !DILocation(line: 41, column: 16, scope: !80)
!82 = !DILocation(line: 41, column: 25, scope: !80)
!83 = !DILocation(line: 41, column: 13, scope: !72)
!84 = !DILocation(line: 44, column: 23, scope: !85)
!85 = distinct !DILexicalBlock(scope: !86, file: !45, line: 44, column: 17)
!86 = distinct !DILexicalBlock(scope: !80, file: !45, line: 42, column: 9)
!87 = !DILocation(line: 44, column: 28, scope: !85)
!88 = !DILocation(line: 44, column: 27, scope: !85)
!89 = !DILocation(line: 44, column: 47, scope: !85)
!90 = !DILocation(line: 44, column: 46, scope: !85)
!91 = !DILocation(line: 44, column: 37, scope: !85)
!92 = !DILocation(line: 44, column: 57, scope: !85)
!93 = !DILocation(line: 44, column: 17, scope: !85)
!94 = !DILocation(line: 44, column: 64, scope: !85)
!95 = !DILocation(line: 44, column: 17, scope: !86)
!96 = !DILocation(line: 48, column: 34, scope: !97)
!97 = distinct !DILexicalBlock(scope: !85, file: !45, line: 45, column: 13)
!98 = !DILocation(line: 48, column: 27, scope: !97)
!99 = !DILocation(line: 48, column: 25, scope: !97)
!100 = !DILocation(line: 49, column: 21, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !45, line: 49, column: 21)
!102 = !DILocation(line: 49, column: 29, scope: !101)
!103 = !DILocation(line: 49, column: 33, scope: !101)
!104 = !DILocation(line: 49, column: 36, scope: !101)
!105 = !DILocation(line: 49, column: 41, scope: !101)
!106 = !DILocation(line: 49, column: 48, scope: !101)
!107 = !DILocation(line: 49, column: 52, scope: !101)
!108 = !DILocation(line: 49, column: 21, scope: !97)
!109 = !DILocation(line: 51, column: 21, scope: !110)
!110 = distinct !DILexicalBlock(scope: !101, file: !45, line: 50, column: 17)
!111 = !DILocation(line: 51, column: 26, scope: !110)
!112 = !DILocation(line: 51, column: 33, scope: !110)
!113 = !DILocation(line: 51, column: 37, scope: !110)
!114 = !DILocation(line: 52, column: 17, scope: !110)
!115 = !DILocation(line: 53, column: 13, scope: !97)
!116 = !DILocation(line: 56, column: 17, scope: !117)
!117 = distinct !DILexicalBlock(scope: !85, file: !45, line: 55, column: 13)
!118 = !DILocation(line: 58, column: 17, scope: !117)
!119 = !DILocation(line: 58, column: 22, scope: !117)
!120 = !DILocation(line: 58, column: 31, scope: !117)
!121 = !DILocation(line: 60, column: 9, scope: !86)
!122 = !DILocation(line: 63, column: 20, scope: !54)
!123 = !DILocation(line: 63, column: 5, scope: !54)
!124 = !DILocation(line: 63, column: 18, scope: !54)
!125 = !DILocation(line: 64, column: 63, scope: !54)
!126 = !DILocation(line: 64, column: 5, scope: !54)
!127 = !DILocation(line: 65, column: 1, scope: !54)
!128 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 73, type: !55, scopeLine: 74, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!129 = !DILocalVariable(name: "data", scope: !128, file: !45, line: 75, type: !42)
!130 = !DILocation(line: 75, column: 12, scope: !128)
!131 = !DILocalVariable(name: "dataArray", scope: !128, file: !45, line: 76, type: !60)
!132 = !DILocation(line: 76, column: 12, scope: !128)
!133 = !DILocalVariable(name: "dataBuffer", scope: !128, file: !45, line: 77, type: !65)
!134 = !DILocation(line: 77, column: 10, scope: !128)
!135 = !DILocation(line: 78, column: 12, scope: !128)
!136 = !DILocation(line: 78, column: 10, scope: !128)
!137 = !DILocation(line: 80, column: 12, scope: !128)
!138 = !DILocation(line: 80, column: 5, scope: !128)
!139 = !DILocation(line: 81, column: 20, scope: !128)
!140 = !DILocation(line: 81, column: 5, scope: !128)
!141 = !DILocation(line: 81, column: 18, scope: !128)
!142 = !DILocation(line: 82, column: 67, scope: !128)
!143 = !DILocation(line: 82, column: 5, scope: !128)
!144 = !DILocation(line: 83, column: 1, scope: !128)
!145 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 87, type: !55, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!146 = !DILocalVariable(name: "data", scope: !145, file: !45, line: 89, type: !42)
!147 = !DILocation(line: 89, column: 12, scope: !145)
!148 = !DILocalVariable(name: "dataArray", scope: !145, file: !45, line: 90, type: !60)
!149 = !DILocation(line: 90, column: 12, scope: !145)
!150 = !DILocalVariable(name: "dataBuffer", scope: !145, file: !45, line: 91, type: !65)
!151 = !DILocation(line: 91, column: 10, scope: !145)
!152 = !DILocation(line: 92, column: 12, scope: !145)
!153 = !DILocation(line: 92, column: 10, scope: !145)
!154 = !DILocalVariable(name: "dataLen", scope: !155, file: !45, line: 95, type: !73)
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
!202 = !DILocation(line: 118, column: 20, scope: !145)
!203 = !DILocation(line: 118, column: 5, scope: !145)
!204 = !DILocation(line: 118, column: 18, scope: !145)
!205 = !DILocation(line: 119, column: 67, scope: !145)
!206 = !DILocation(line: 119, column: 5, scope: !145)
!207 = !DILocation(line: 120, column: 1, scope: !145)
!208 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_66_good", scope: !45, file: !45, line: 122, type: !55, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!209 = !DILocation(line: 124, column: 5, scope: !208)
!210 = !DILocation(line: 125, column: 5, scope: !208)
!211 = !DILocation(line: 126, column: 1, scope: !208)
!212 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_66b_badSink", scope: !49, file: !49, line: 28, type: !213, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !41}
!215 = !DILocalVariable(name: "dataArray", arg: 1, scope: !212, file: !49, line: 28, type: !41)
!216 = !DILocation(line: 28, column: 71, scope: !212)
!217 = !DILocalVariable(name: "data", scope: !212, file: !49, line: 31, type: !42)
!218 = !DILocation(line: 31, column: 12, scope: !212)
!219 = !DILocation(line: 31, column: 19, scope: !212)
!220 = !DILocalVariable(name: "i", scope: !221, file: !49, line: 33, type: !23)
!221 = distinct !DILexicalBlock(scope: !212, file: !49, line: 32, column: 5)
!222 = !DILocation(line: 33, column: 13, scope: !221)
!223 = !DILocalVariable(name: "n", scope: !221, file: !49, line: 33, type: !23)
!224 = !DILocation(line: 33, column: 16, scope: !221)
!225 = !DILocalVariable(name: "intVariable", scope: !221, file: !49, line: 33, type: !23)
!226 = !DILocation(line: 33, column: 19, scope: !221)
!227 = !DILocation(line: 34, column: 20, scope: !228)
!228 = distinct !DILexicalBlock(scope: !221, file: !49, line: 34, column: 13)
!229 = !DILocation(line: 34, column: 13, scope: !228)
!230 = !DILocation(line: 34, column: 36, scope: !228)
!231 = !DILocation(line: 34, column: 13, scope: !221)
!232 = !DILocation(line: 37, column: 25, scope: !233)
!233 = distinct !DILexicalBlock(scope: !228, file: !49, line: 35, column: 9)
!234 = !DILocation(line: 38, column: 20, scope: !235)
!235 = distinct !DILexicalBlock(scope: !233, file: !49, line: 38, column: 13)
!236 = !DILocation(line: 38, column: 18, scope: !235)
!237 = !DILocation(line: 38, column: 25, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !49, line: 38, column: 13)
!239 = !DILocation(line: 38, column: 29, scope: !238)
!240 = !DILocation(line: 38, column: 27, scope: !238)
!241 = !DILocation(line: 38, column: 13, scope: !235)
!242 = !DILocation(line: 41, column: 28, scope: !243)
!243 = distinct !DILexicalBlock(scope: !238, file: !49, line: 39, column: 13)
!244 = !DILocation(line: 42, column: 13, scope: !243)
!245 = !DILocation(line: 38, column: 33, scope: !238)
!246 = !DILocation(line: 38, column: 13, scope: !238)
!247 = distinct !{!247, !241, !248, !249}
!248 = !DILocation(line: 42, column: 13, scope: !235)
!249 = !{!"llvm.loop.mustprogress"}
!250 = !DILocation(line: 43, column: 26, scope: !233)
!251 = !DILocation(line: 43, column: 13, scope: !233)
!252 = !DILocation(line: 44, column: 9, scope: !233)
!253 = !DILocation(line: 46, column: 1, scope: !212)
!254 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_66b_goodG2BSink", scope: !49, file: !49, line: 53, type: !213, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!255 = !DILocalVariable(name: "dataArray", arg: 1, scope: !254, file: !49, line: 53, type: !41)
!256 = !DILocation(line: 53, column: 75, scope: !254)
!257 = !DILocalVariable(name: "data", scope: !254, file: !49, line: 55, type: !42)
!258 = !DILocation(line: 55, column: 12, scope: !254)
!259 = !DILocation(line: 55, column: 19, scope: !254)
!260 = !DILocalVariable(name: "i", scope: !261, file: !49, line: 57, type: !23)
!261 = distinct !DILexicalBlock(scope: !254, file: !49, line: 56, column: 5)
!262 = !DILocation(line: 57, column: 13, scope: !261)
!263 = !DILocalVariable(name: "n", scope: !261, file: !49, line: 57, type: !23)
!264 = !DILocation(line: 57, column: 16, scope: !261)
!265 = !DILocalVariable(name: "intVariable", scope: !261, file: !49, line: 57, type: !23)
!266 = !DILocation(line: 57, column: 19, scope: !261)
!267 = !DILocation(line: 58, column: 20, scope: !268)
!268 = distinct !DILexicalBlock(scope: !261, file: !49, line: 58, column: 13)
!269 = !DILocation(line: 58, column: 13, scope: !268)
!270 = !DILocation(line: 58, column: 36, scope: !268)
!271 = !DILocation(line: 58, column: 13, scope: !261)
!272 = !DILocation(line: 61, column: 25, scope: !273)
!273 = distinct !DILexicalBlock(scope: !268, file: !49, line: 59, column: 9)
!274 = !DILocation(line: 62, column: 20, scope: !275)
!275 = distinct !DILexicalBlock(scope: !273, file: !49, line: 62, column: 13)
!276 = !DILocation(line: 62, column: 18, scope: !275)
!277 = !DILocation(line: 62, column: 25, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !49, line: 62, column: 13)
!279 = !DILocation(line: 62, column: 29, scope: !278)
!280 = !DILocation(line: 62, column: 27, scope: !278)
!281 = !DILocation(line: 62, column: 13, scope: !275)
!282 = !DILocation(line: 65, column: 28, scope: !283)
!283 = distinct !DILexicalBlock(scope: !278, file: !49, line: 63, column: 13)
!284 = !DILocation(line: 66, column: 13, scope: !283)
!285 = !DILocation(line: 62, column: 33, scope: !278)
!286 = !DILocation(line: 62, column: 13, scope: !278)
!287 = distinct !{!287, !281, !288, !249}
!288 = !DILocation(line: 66, column: 13, scope: !275)
!289 = !DILocation(line: 67, column: 26, scope: !273)
!290 = !DILocation(line: 67, column: 13, scope: !273)
!291 = !DILocation(line: 68, column: 9, scope: !273)
!292 = !DILocation(line: 70, column: 1, scope: !254)
!293 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_66b_goodB2GSink", scope: !49, file: !49, line: 73, type: !213, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!294 = !DILocalVariable(name: "dataArray", arg: 1, scope: !293, file: !49, line: 73, type: !41)
!295 = !DILocation(line: 73, column: 75, scope: !293)
!296 = !DILocalVariable(name: "data", scope: !293, file: !49, line: 75, type: !42)
!297 = !DILocation(line: 75, column: 12, scope: !293)
!298 = !DILocation(line: 75, column: 19, scope: !293)
!299 = !DILocalVariable(name: "i", scope: !300, file: !49, line: 77, type: !23)
!300 = distinct !DILexicalBlock(scope: !293, file: !49, line: 76, column: 5)
!301 = !DILocation(line: 77, column: 13, scope: !300)
!302 = !DILocalVariable(name: "n", scope: !300, file: !49, line: 77, type: !23)
!303 = !DILocation(line: 77, column: 16, scope: !300)
!304 = !DILocalVariable(name: "intVariable", scope: !300, file: !49, line: 77, type: !23)
!305 = !DILocation(line: 77, column: 19, scope: !300)
!306 = !DILocation(line: 78, column: 20, scope: !307)
!307 = distinct !DILexicalBlock(scope: !300, file: !49, line: 78, column: 13)
!308 = !DILocation(line: 78, column: 13, scope: !307)
!309 = !DILocation(line: 78, column: 36, scope: !307)
!310 = !DILocation(line: 78, column: 13, scope: !300)
!311 = !DILocation(line: 81, column: 17, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !49, line: 81, column: 17)
!313 = distinct !DILexicalBlock(scope: !307, file: !49, line: 79, column: 9)
!314 = !DILocation(line: 81, column: 19, scope: !312)
!315 = !DILocation(line: 81, column: 17, scope: !313)
!316 = !DILocation(line: 83, column: 29, scope: !317)
!317 = distinct !DILexicalBlock(scope: !312, file: !49, line: 82, column: 13)
!318 = !DILocation(line: 84, column: 24, scope: !319)
!319 = distinct !DILexicalBlock(scope: !317, file: !49, line: 84, column: 17)
!320 = !DILocation(line: 84, column: 22, scope: !319)
!321 = !DILocation(line: 84, column: 29, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !49, line: 84, column: 17)
!323 = !DILocation(line: 84, column: 33, scope: !322)
!324 = !DILocation(line: 84, column: 31, scope: !322)
!325 = !DILocation(line: 84, column: 17, scope: !319)
!326 = !DILocation(line: 87, column: 32, scope: !327)
!327 = distinct !DILexicalBlock(scope: !322, file: !49, line: 85, column: 17)
!328 = !DILocation(line: 88, column: 17, scope: !327)
!329 = !DILocation(line: 84, column: 37, scope: !322)
!330 = !DILocation(line: 84, column: 17, scope: !322)
!331 = distinct !{!331, !325, !332, !249}
!332 = !DILocation(line: 88, column: 17, scope: !319)
!333 = !DILocation(line: 89, column: 30, scope: !317)
!334 = !DILocation(line: 89, column: 17, scope: !317)
!335 = !DILocation(line: 90, column: 13, scope: !317)
!336 = !DILocation(line: 91, column: 9, scope: !313)
!337 = !DILocation(line: 93, column: 1, scope: !293)
!338 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !339, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !42}
!341 = !DILocalVariable(name: "line", arg: 1, scope: !338, file: !3, line: 11, type: !42)
!342 = !DILocation(line: 11, column: 25, scope: !338)
!343 = !DILocation(line: 13, column: 1, scope: !338)
!344 = !DILocation(line: 14, column: 8, scope: !345)
!345 = distinct !DILexicalBlock(scope: !338, file: !3, line: 14, column: 8)
!346 = !DILocation(line: 14, column: 13, scope: !345)
!347 = !DILocation(line: 14, column: 8, scope: !338)
!348 = !DILocation(line: 16, column: 24, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !3, line: 15, column: 5)
!350 = !DILocation(line: 16, column: 9, scope: !349)
!351 = !DILocation(line: 17, column: 5, scope: !349)
!352 = !DILocation(line: 18, column: 5, scope: !338)
!353 = !DILocation(line: 19, column: 1, scope: !338)
!354 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !339, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!355 = !DILocalVariable(name: "line", arg: 1, scope: !354, file: !3, line: 20, type: !42)
!356 = !DILocation(line: 20, column: 29, scope: !354)
!357 = !DILocation(line: 22, column: 8, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !3, line: 22, column: 8)
!359 = !DILocation(line: 22, column: 13, scope: !358)
!360 = !DILocation(line: 22, column: 8, scope: !354)
!361 = !DILocation(line: 24, column: 24, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !3, line: 23, column: 5)
!363 = !DILocation(line: 24, column: 9, scope: !362)
!364 = !DILocation(line: 25, column: 5, scope: !362)
!365 = !DILocation(line: 26, column: 1, scope: !354)
!366 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !367, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !74, line: 74, baseType: !23)
!371 = !DILocalVariable(name: "line", arg: 1, scope: !366, file: !3, line: 27, type: !369)
!372 = !DILocation(line: 27, column: 29, scope: !366)
!373 = !DILocation(line: 29, column: 8, scope: !374)
!374 = distinct !DILexicalBlock(scope: !366, file: !3, line: 29, column: 8)
!375 = !DILocation(line: 29, column: 13, scope: !374)
!376 = !DILocation(line: 29, column: 8, scope: !366)
!377 = !DILocation(line: 31, column: 27, scope: !378)
!378 = distinct !DILexicalBlock(scope: !374, file: !3, line: 30, column: 5)
!379 = !DILocation(line: 31, column: 9, scope: !378)
!380 = !DILocation(line: 32, column: 5, scope: !378)
!381 = !DILocation(line: 33, column: 1, scope: !366)
!382 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !383, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !23}
!385 = !DILocalVariable(name: "intNumber", arg: 1, scope: !382, file: !3, line: 35, type: !23)
!386 = !DILocation(line: 35, column: 24, scope: !382)
!387 = !DILocation(line: 37, column: 20, scope: !382)
!388 = !DILocation(line: 37, column: 5, scope: !382)
!389 = !DILocation(line: 38, column: 1, scope: !382)
!390 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !391, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393}
!393 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!394 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !390, file: !3, line: 40, type: !393)
!395 = !DILocation(line: 40, column: 28, scope: !390)
!396 = !DILocation(line: 42, column: 21, scope: !390)
!397 = !DILocation(line: 42, column: 5, scope: !390)
!398 = !DILocation(line: 43, column: 1, scope: !390)
!399 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !400, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !402}
!402 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!403 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !399, file: !3, line: 45, type: !402)
!404 = !DILocation(line: 45, column: 28, scope: !399)
!405 = !DILocation(line: 47, column: 20, scope: !399)
!406 = !DILocation(line: 47, column: 5, scope: !399)
!407 = !DILocation(line: 48, column: 1, scope: !399)
!408 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !409, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !411}
!411 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!412 = !DILocalVariable(name: "longNumber", arg: 1, scope: !408, file: !3, line: 50, type: !411)
!413 = !DILocation(line: 50, column: 26, scope: !408)
!414 = !DILocation(line: 52, column: 21, scope: !408)
!415 = !DILocation(line: 52, column: 5, scope: !408)
!416 = !DILocation(line: 53, column: 1, scope: !408)
!417 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !418, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !420}
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !421, line: 27, baseType: !422)
!421 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !423, line: 44, baseType: !411)
!423 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!424 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !417, file: !3, line: 55, type: !420)
!425 = !DILocation(line: 55, column: 33, scope: !417)
!426 = !DILocation(line: 57, column: 29, scope: !417)
!427 = !DILocation(line: 57, column: 5, scope: !417)
!428 = !DILocation(line: 58, column: 1, scope: !417)
!429 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !430, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !73}
!432 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !429, file: !3, line: 60, type: !73)
!433 = !DILocation(line: 60, column: 29, scope: !429)
!434 = !DILocation(line: 62, column: 21, scope: !429)
!435 = !DILocation(line: 62, column: 5, scope: !429)
!436 = !DILocation(line: 63, column: 1, scope: !429)
!437 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !438, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !43}
!440 = !DILocalVariable(name: "charHex", arg: 1, scope: !437, file: !3, line: 65, type: !43)
!441 = !DILocation(line: 65, column: 29, scope: !437)
!442 = !DILocation(line: 67, column: 22, scope: !437)
!443 = !DILocation(line: 67, column: 5, scope: !437)
!444 = !DILocation(line: 68, column: 1, scope: !437)
!445 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !446, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !370}
!448 = !DILocalVariable(name: "wideChar", arg: 1, scope: !445, file: !3, line: 70, type: !370)
!449 = !DILocation(line: 70, column: 29, scope: !445)
!450 = !DILocalVariable(name: "s", scope: !445, file: !3, line: 74, type: !451)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 64, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 2)
!454 = !DILocation(line: 74, column: 13, scope: !445)
!455 = !DILocation(line: 75, column: 16, scope: !445)
!456 = !DILocation(line: 75, column: 9, scope: !445)
!457 = !DILocation(line: 75, column: 14, scope: !445)
!458 = !DILocation(line: 76, column: 9, scope: !445)
!459 = !DILocation(line: 76, column: 14, scope: !445)
!460 = !DILocation(line: 77, column: 21, scope: !445)
!461 = !DILocation(line: 77, column: 5, scope: !445)
!462 = !DILocation(line: 78, column: 1, scope: !445)
!463 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !464, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !7}
!466 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !463, file: !3, line: 80, type: !7)
!467 = !DILocation(line: 80, column: 33, scope: !463)
!468 = !DILocation(line: 82, column: 20, scope: !463)
!469 = !DILocation(line: 82, column: 5, scope: !463)
!470 = !DILocation(line: 83, column: 1, scope: !463)
!471 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !472, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !25}
!474 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !471, file: !3, line: 85, type: !25)
!475 = !DILocation(line: 85, column: 45, scope: !471)
!476 = !DILocation(line: 87, column: 22, scope: !471)
!477 = !DILocation(line: 87, column: 5, scope: !471)
!478 = !DILocation(line: 88, column: 1, scope: !471)
!479 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !480, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !482}
!482 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!483 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !479, file: !3, line: 90, type: !482)
!484 = !DILocation(line: 90, column: 29, scope: !479)
!485 = !DILocation(line: 92, column: 20, scope: !479)
!486 = !DILocation(line: 92, column: 5, scope: !479)
!487 = !DILocation(line: 93, column: 1, scope: !479)
!488 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !489, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !491}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !493, line: 100, baseType: !494)
!493 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_016/source_code")
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !493, line: 96, size: 64, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !494, file: !493, line: 98, baseType: !23, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !494, file: !493, line: 99, baseType: !23, size: 32, offset: 32)
!498 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !488, file: !3, line: 95, type: !491)
!499 = !DILocation(line: 95, column: 40, scope: !488)
!500 = !DILocation(line: 97, column: 26, scope: !488)
!501 = !DILocation(line: 97, column: 47, scope: !488)
!502 = !DILocation(line: 97, column: 55, scope: !488)
!503 = !DILocation(line: 97, column: 76, scope: !488)
!504 = !DILocation(line: 97, column: 5, scope: !488)
!505 = !DILocation(line: 98, column: 1, scope: !488)
!506 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !507, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !509, !73}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!510 = !DILocalVariable(name: "bytes", arg: 1, scope: !506, file: !3, line: 100, type: !509)
!511 = !DILocation(line: 100, column: 38, scope: !506)
!512 = !DILocalVariable(name: "numBytes", arg: 2, scope: !506, file: !3, line: 100, type: !73)
!513 = !DILocation(line: 100, column: 52, scope: !506)
!514 = !DILocalVariable(name: "i", scope: !506, file: !3, line: 102, type: !73)
!515 = !DILocation(line: 102, column: 12, scope: !506)
!516 = !DILocation(line: 103, column: 12, scope: !517)
!517 = distinct !DILexicalBlock(scope: !506, file: !3, line: 103, column: 5)
!518 = !DILocation(line: 103, column: 10, scope: !517)
!519 = !DILocation(line: 103, column: 17, scope: !520)
!520 = distinct !DILexicalBlock(scope: !517, file: !3, line: 103, column: 5)
!521 = !DILocation(line: 103, column: 21, scope: !520)
!522 = !DILocation(line: 103, column: 19, scope: !520)
!523 = !DILocation(line: 103, column: 5, scope: !517)
!524 = !DILocation(line: 105, column: 24, scope: !525)
!525 = distinct !DILexicalBlock(scope: !520, file: !3, line: 104, column: 5)
!526 = !DILocation(line: 105, column: 30, scope: !525)
!527 = !DILocation(line: 105, column: 9, scope: !525)
!528 = !DILocation(line: 106, column: 5, scope: !525)
!529 = !DILocation(line: 103, column: 31, scope: !520)
!530 = !DILocation(line: 103, column: 5, scope: !520)
!531 = distinct !{!531, !523, !532, !249}
!532 = !DILocation(line: 106, column: 5, scope: !517)
!533 = !DILocation(line: 107, column: 5, scope: !506)
!534 = !DILocation(line: 108, column: 1, scope: !506)
!535 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !536, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DISubroutineType(types: !537)
!537 = !{!73, !509, !73, !42}
!538 = !DILocalVariable(name: "bytes", arg: 1, scope: !535, file: !3, line: 113, type: !509)
!539 = !DILocation(line: 113, column: 39, scope: !535)
!540 = !DILocalVariable(name: "numBytes", arg: 2, scope: !535, file: !3, line: 113, type: !73)
!541 = !DILocation(line: 113, column: 53, scope: !535)
!542 = !DILocalVariable(name: "hex", arg: 3, scope: !535, file: !3, line: 113, type: !42)
!543 = !DILocation(line: 113, column: 71, scope: !535)
!544 = !DILocalVariable(name: "numWritten", scope: !535, file: !3, line: 115, type: !73)
!545 = !DILocation(line: 115, column: 12, scope: !535)
!546 = !DILocation(line: 121, column: 5, scope: !535)
!547 = !DILocation(line: 121, column: 12, scope: !535)
!548 = !DILocation(line: 121, column: 25, scope: !535)
!549 = !DILocation(line: 121, column: 23, scope: !535)
!550 = !DILocation(line: 121, column: 34, scope: !535)
!551 = !DILocation(line: 121, column: 37, scope: !535)
!552 = !DILocation(line: 121, column: 67, scope: !535)
!553 = !DILocation(line: 121, column: 70, scope: !535)
!554 = !DILocation(line: 0, scope: !535)
!555 = !DILocalVariable(name: "byte", scope: !556, file: !3, line: 123, type: !23)
!556 = distinct !DILexicalBlock(scope: !535, file: !3, line: 122, column: 5)
!557 = !DILocation(line: 123, column: 13, scope: !556)
!558 = !DILocation(line: 124, column: 17, scope: !556)
!559 = !DILocation(line: 124, column: 25, scope: !556)
!560 = !DILocation(line: 124, column: 23, scope: !556)
!561 = !DILocation(line: 124, column: 9, scope: !556)
!562 = !DILocation(line: 125, column: 45, scope: !556)
!563 = !DILocation(line: 125, column: 29, scope: !556)
!564 = !DILocation(line: 125, column: 9, scope: !556)
!565 = !DILocation(line: 125, column: 15, scope: !556)
!566 = !DILocation(line: 125, column: 27, scope: !556)
!567 = !DILocation(line: 126, column: 9, scope: !556)
!568 = distinct !{!568, !546, !569, !249}
!569 = !DILocation(line: 127, column: 5, scope: !535)
!570 = !DILocation(line: 129, column: 12, scope: !535)
!571 = !DILocation(line: 129, column: 5, scope: !535)
!572 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !573, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!573 = !DISubroutineType(types: !574)
!574 = !{!73, !509, !73, !369}
!575 = !DILocalVariable(name: "bytes", arg: 1, scope: !572, file: !3, line: 135, type: !509)
!576 = !DILocation(line: 135, column: 41, scope: !572)
!577 = !DILocalVariable(name: "numBytes", arg: 2, scope: !572, file: !3, line: 135, type: !73)
!578 = !DILocation(line: 135, column: 55, scope: !572)
!579 = !DILocalVariable(name: "hex", arg: 3, scope: !572, file: !3, line: 135, type: !369)
!580 = !DILocation(line: 135, column: 76, scope: !572)
!581 = !DILocalVariable(name: "numWritten", scope: !572, file: !3, line: 137, type: !73)
!582 = !DILocation(line: 137, column: 12, scope: !572)
!583 = !DILocation(line: 143, column: 5, scope: !572)
!584 = !DILocation(line: 143, column: 12, scope: !572)
!585 = !DILocation(line: 143, column: 25, scope: !572)
!586 = !DILocation(line: 143, column: 23, scope: !572)
!587 = !DILocation(line: 143, column: 34, scope: !572)
!588 = !DILocation(line: 143, column: 47, scope: !572)
!589 = !DILocation(line: 143, column: 55, scope: !572)
!590 = !DILocation(line: 143, column: 53, scope: !572)
!591 = !DILocation(line: 143, column: 37, scope: !572)
!592 = !DILocation(line: 143, column: 68, scope: !572)
!593 = !DILocation(line: 143, column: 81, scope: !572)
!594 = !DILocation(line: 143, column: 89, scope: !572)
!595 = !DILocation(line: 143, column: 87, scope: !572)
!596 = !DILocation(line: 143, column: 100, scope: !572)
!597 = !DILocation(line: 143, column: 71, scope: !572)
!598 = !DILocation(line: 0, scope: !572)
!599 = !DILocalVariable(name: "byte", scope: !600, file: !3, line: 145, type: !23)
!600 = distinct !DILexicalBlock(scope: !572, file: !3, line: 144, column: 5)
!601 = !DILocation(line: 145, column: 13, scope: !600)
!602 = !DILocation(line: 146, column: 18, scope: !600)
!603 = !DILocation(line: 146, column: 26, scope: !600)
!604 = !DILocation(line: 146, column: 24, scope: !600)
!605 = !DILocation(line: 146, column: 9, scope: !600)
!606 = !DILocation(line: 147, column: 45, scope: !600)
!607 = !DILocation(line: 147, column: 29, scope: !600)
!608 = !DILocation(line: 147, column: 9, scope: !600)
!609 = !DILocation(line: 147, column: 15, scope: !600)
!610 = !DILocation(line: 147, column: 27, scope: !600)
!611 = !DILocation(line: 148, column: 9, scope: !600)
!612 = distinct !{!612, !583, !613, !249}
!613 = !DILocation(line: 149, column: 5, scope: !572)
!614 = !DILocation(line: 151, column: 12, scope: !572)
!615 = !DILocation(line: 151, column: 5, scope: !572)
!616 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !617, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!617 = !DISubroutineType(types: !618)
!618 = !{!23}
!619 = !DILocation(line: 158, column: 5, scope: !616)
!620 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !617, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!621 = !DILocation(line: 163, column: 5, scope: !620)
!622 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !617, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!623 = !DILocation(line: 168, column: 13, scope: !622)
!624 = !DILocation(line: 168, column: 20, scope: !622)
!625 = !DILocation(line: 168, column: 5, scope: !622)
!626 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!627 = !DILocation(line: 187, column: 16, scope: !626)
!628 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!629 = !DILocation(line: 188, column: 16, scope: !628)
!630 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!631 = !DILocation(line: 189, column: 16, scope: !630)
!632 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!633 = !DILocation(line: 190, column: 16, scope: !632)
!634 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!635 = !DILocation(line: 191, column: 16, scope: !634)
!636 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!637 = !DILocation(line: 192, column: 16, scope: !636)
!638 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!639 = !DILocation(line: 193, column: 16, scope: !638)
!640 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!641 = !DILocation(line: 194, column: 16, scope: !640)
!642 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!643 = !DILocation(line: 195, column: 16, scope: !642)
!644 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!645 = !DILocation(line: 198, column: 15, scope: !644)
!646 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!647 = !DILocation(line: 199, column: 15, scope: !646)
!648 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!649 = !DILocation(line: 200, column: 15, scope: !648)
!650 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!651 = !DILocation(line: 201, column: 15, scope: !650)
!652 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!653 = !DILocation(line: 202, column: 15, scope: !652)
!654 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!655 = !DILocation(line: 203, column: 15, scope: !654)
!656 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!657 = !DILocation(line: 204, column: 15, scope: !656)
!658 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!659 = !DILocation(line: 205, column: 15, scope: !658)
!660 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!661 = !DILocation(line: 206, column: 15, scope: !660)
