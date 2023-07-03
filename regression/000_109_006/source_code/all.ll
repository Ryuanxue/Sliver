; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@CWE606_Unchecked_Loop_Condition__char_console_45_badData = dso_local global i8* null, align 8, !dbg !0
@CWE606_Unchecked_Loop_Condition__char_console_45_goodG2BData = dso_local global i8* null, align 8, !dbg !9
@CWE606_Unchecked_Loop_Condition__char_console_45_goodB2GData = dso_local global i8* null, align 8, !dbg !13
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1
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
define dso_local void @badSink() #0 !dbg !59 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !62, metadata !DIExpression()), !dbg !63
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_console_45_badData, align 8, !dbg !64
  store i8* %0, i8** %data, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %i, metadata !65, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %n, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !70, metadata !DIExpression()), !dbg !71
  %1 = load i8*, i8** %data, align 8, !dbg !72
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !74
  %cmp = icmp eq i32 %call, 1, !dbg !75
  br i1 %cmp, label %if.then, label %if.end, !dbg !76

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !77
  store i32 0, i32* %i, align 4, !dbg !79
  br label %for.cond, !dbg !81

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !82
  %3 = load i32, i32* %n, align 4, !dbg !84
  %cmp1 = icmp slt i32 %2, %3, !dbg !85
  br i1 %cmp1, label %for.body, label %for.end, !dbg !86

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !87
  %inc = add nsw i32 %4, 1, !dbg !87
  store i32 %inc, i32* %intVariable, align 4, !dbg !87
  br label %for.inc, !dbg !89

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !90
  %inc2 = add nsw i32 %5, 1, !dbg !90
  store i32 %inc2, i32* %i, align 4, !dbg !90
  br label %for.cond, !dbg !91, !llvm.loop !92

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !95
  call void @printIntLine(i32 %6), !dbg !96
  br label %if.end, !dbg !97

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !98
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_45_bad() #0 !dbg !99 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !102, metadata !DIExpression()), !dbg !106
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !106
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !106
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !107
  store i8* %arraydecay, i8** %data, align 8, !dbg !108
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !109, metadata !DIExpression()), !dbg !114
  %1 = load i8*, i8** %data, align 8, !dbg !115
  %call = call i64 @strlen(i8* %1) #8, !dbg !116
  store i64 %call, i64* %dataLen, align 8, !dbg !114
  %2 = load i64, i64* %dataLen, align 8, !dbg !117
  %sub = sub i64 100, %2, !dbg !119
  %cmp = icmp ugt i64 %sub, 1, !dbg !120
  br i1 %cmp, label %if.then, label %if.end18, !dbg !121

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !122
  %4 = load i64, i64* %dataLen, align 8, !dbg !125
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !126
  %5 = load i64, i64* %dataLen, align 8, !dbg !127
  %sub1 = sub i64 100, %5, !dbg !128
  %conv = trunc i64 %sub1 to i32, !dbg !129
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !130
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !131
  %cmp3 = icmp ne i8* %call2, null, !dbg !132
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !133

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !134
  %call6 = call i64 @strlen(i8* %7) #8, !dbg !136
  store i64 %call6, i64* %dataLen, align 8, !dbg !137
  %8 = load i64, i64* %dataLen, align 8, !dbg !138
  %cmp7 = icmp ugt i64 %8, 0, !dbg !140
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !141

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !142
  %10 = load i64, i64* %dataLen, align 8, !dbg !143
  %sub9 = sub i64 %10, 1, !dbg !144
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !142
  %11 = load i8, i8* %arrayidx, align 1, !dbg !142
  %conv10 = sext i8 %11 to i32, !dbg !142
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !145
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !146

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !147
  %13 = load i64, i64* %dataLen, align 8, !dbg !149
  %sub14 = sub i64 %13, 1, !dbg !150
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !147
  store i8 0, i8* %arrayidx15, align 1, !dbg !151
  br label %if.end, !dbg !152

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !153

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)), !dbg !154
  %14 = load i8*, i8** %data, align 8, !dbg !156
  %15 = load i64, i64* %dataLen, align 8, !dbg !157
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !156
  store i8 0, i8* %arrayidx16, align 1, !dbg !158
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !159

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !160
  store i8* %16, i8** @CWE606_Unchecked_Loop_Condition__char_console_45_badData, align 8, !dbg !161
  call void @badSink(), !dbg !162
  ret void, !dbg !163
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink() #0 !dbg !164 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !165, metadata !DIExpression()), !dbg !166
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_console_45_goodG2BData, align 8, !dbg !167
  store i8* %0, i8** %data, align 8, !dbg !166
  call void @llvm.dbg.declare(metadata i32* %i, metadata !168, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata i32* %n, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !173, metadata !DIExpression()), !dbg !174
  %1 = load i8*, i8** %data, align 8, !dbg !175
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !177
  %cmp = icmp eq i32 %call, 1, !dbg !178
  br i1 %cmp, label %if.then, label %if.end, !dbg !179

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !180
  store i32 0, i32* %i, align 4, !dbg !182
  br label %for.cond, !dbg !184

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !185
  %3 = load i32, i32* %n, align 4, !dbg !187
  %cmp1 = icmp slt i32 %2, %3, !dbg !188
  br i1 %cmp1, label %for.body, label %for.end, !dbg !189

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !190
  %inc = add nsw i32 %4, 1, !dbg !190
  store i32 %inc, i32* %intVariable, align 4, !dbg !190
  br label %for.inc, !dbg !192

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !193
  %inc2 = add nsw i32 %5, 1, !dbg !193
  store i32 %inc2, i32* %i, align 4, !dbg !193
  br label %for.cond, !dbg !194, !llvm.loop !195

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !197
  call void @printIntLine(i32 %6), !dbg !198
  br label %if.end, !dbg !199

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !200
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !201 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !204, metadata !DIExpression()), !dbg !205
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !205
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !205
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !206
  store i8* %arraydecay, i8** %data, align 8, !dbg !207
  %1 = load i8*, i8** %data, align 8, !dbg !208
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !209
  %2 = load i8*, i8** %data, align 8, !dbg !210
  store i8* %2, i8** @CWE606_Unchecked_Loop_Condition__char_console_45_goodG2BData, align 8, !dbg !211
  call void @goodG2BSink(), !dbg !212
  ret void, !dbg !213
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink() #0 !dbg !214 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !215, metadata !DIExpression()), !dbg !216
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_console_45_goodB2GData, align 8, !dbg !217
  store i8* %0, i8** %data, align 8, !dbg !216
  call void @llvm.dbg.declare(metadata i32* %i, metadata !218, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata i32* %n, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !223, metadata !DIExpression()), !dbg !224
  %1 = load i8*, i8** %data, align 8, !dbg !225
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !227
  %cmp = icmp eq i32 %call, 1, !dbg !228
  br i1 %cmp, label %if.then, label %if.end5, !dbg !229

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n, align 4, !dbg !230
  %cmp1 = icmp slt i32 %2, 10000, !dbg !233
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !234

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !235
  store i32 0, i32* %i, align 4, !dbg !237
  br label %for.cond, !dbg !239

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load i32, i32* %i, align 4, !dbg !240
  %4 = load i32, i32* %n, align 4, !dbg !242
  %cmp3 = icmp slt i32 %3, %4, !dbg !243
  br i1 %cmp3, label %for.body, label %for.end, !dbg !244

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !245
  %inc = add nsw i32 %5, 1, !dbg !245
  store i32 %inc, i32* %intVariable, align 4, !dbg !245
  br label %for.inc, !dbg !247

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !248
  %inc4 = add nsw i32 %6, 1, !dbg !248
  store i32 %inc4, i32* %i, align 4, !dbg !248
  br label %for.cond, !dbg !249, !llvm.loop !250

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !252
  call void @printIntLine(i32 %7), !dbg !253
  br label %if.end, !dbg !254

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !255

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !256
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !257 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !260, metadata !DIExpression()), !dbg !261
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !261
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !261
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !262
  store i8* %arraydecay, i8** %data, align 8, !dbg !263
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !264, metadata !DIExpression()), !dbg !266
  %1 = load i8*, i8** %data, align 8, !dbg !267
  %call = call i64 @strlen(i8* %1) #8, !dbg !268
  store i64 %call, i64* %dataLen, align 8, !dbg !266
  %2 = load i64, i64* %dataLen, align 8, !dbg !269
  %sub = sub i64 100, %2, !dbg !271
  %cmp = icmp ugt i64 %sub, 1, !dbg !272
  br i1 %cmp, label %if.then, label %if.end18, !dbg !273

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !274
  %4 = load i64, i64* %dataLen, align 8, !dbg !277
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !278
  %5 = load i64, i64* %dataLen, align 8, !dbg !279
  %sub1 = sub i64 100, %5, !dbg !280
  %conv = trunc i64 %sub1 to i32, !dbg !281
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !282
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !283
  %cmp3 = icmp ne i8* %call2, null, !dbg !284
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !285

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !286
  %call6 = call i64 @strlen(i8* %7) #8, !dbg !288
  store i64 %call6, i64* %dataLen, align 8, !dbg !289
  %8 = load i64, i64* %dataLen, align 8, !dbg !290
  %cmp7 = icmp ugt i64 %8, 0, !dbg !292
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !293

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !294
  %10 = load i64, i64* %dataLen, align 8, !dbg !295
  %sub9 = sub i64 %10, 1, !dbg !296
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !294
  %11 = load i8, i8* %arrayidx, align 1, !dbg !294
  %conv10 = sext i8 %11 to i32, !dbg !294
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !297
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !298

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !299
  %13 = load i64, i64* %dataLen, align 8, !dbg !301
  %sub14 = sub i64 %13, 1, !dbg !302
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !299
  store i8 0, i8* %arrayidx15, align 1, !dbg !303
  br label %if.end, !dbg !304

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !305

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)), !dbg !306
  %14 = load i8*, i8** %data, align 8, !dbg !308
  %15 = load i64, i64* %dataLen, align 8, !dbg !309
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !308
  store i8 0, i8* %arrayidx16, align 1, !dbg !310
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !311

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !312
  store i8* %16, i8** @CWE606_Unchecked_Loop_Condition__char_console_45_goodB2GData, align 8, !dbg !313
  call void @goodB2GSink(), !dbg !314
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_45_good() #0 !dbg !316 {
entry:
  call void @goodG2B(), !dbg !317
  call void @goodB2G(), !dbg !318
  ret void, !dbg !319
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !320 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !323, metadata !DIExpression()), !dbg !324
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !325
  %0 = load i8*, i8** %line.addr, align 8, !dbg !326
  %cmp = icmp ne i8* %0, null, !dbg !328
  br i1 %cmp, label %if.then, label %if.end, !dbg !329

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !330
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !332
  br label %if.end, !dbg !333

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !334
  ret void, !dbg !335
}

declare dso_local i32 @printf(i8*, ...) #5

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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !345
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
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !361
  br label %if.end, !dbg !362

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !363
}

declare dso_local i32 @wprintf(i32*, ...) #5

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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !443
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

declare dso_local i32 @puts(i8*) #5

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
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !543
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
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !573
  %tobool = icmp ne i32 %call, 0, !dbg !573
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !574

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !575
  %6 = load i64, i64* %numWritten, align 8, !dbg !576
  %mul1 = mul i64 2, %6, !dbg !577
  %add = add i64 %mul1, 1, !dbg !578
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !575
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !575
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !579
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
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !587
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
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

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
  %call = call i32 @rand() #7, !dbg !605
  %rem = srem i32 %call, 2, !dbg !606
  ret i32 %rem, !dbg !607
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

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
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2, !17}
!llvm.ident = !{!55, !55}
!llvm.module.flags = !{!56, !57, !58}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_console_45_badData", scope: !2, file: !3, line: 27, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_45.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_006/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0, !9, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_console_45_goodG2BData", scope: !2, file: !3, line: 28, type: !11, isLocal: false, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_console_45_goodB2GData", scope: !2, file: !3, line: 29, type: !11, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !6, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_006/source_code")
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
!59 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 33, type: !60, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!60 = !DISubroutineType(types: !61)
!61 = !{null}
!62 = !DILocalVariable(name: "data", scope: !59, file: !3, line: 35, type: !11)
!63 = !DILocation(line: 35, column: 12, scope: !59)
!64 = !DILocation(line: 35, column: 19, scope: !59)
!65 = !DILocalVariable(name: "i", scope: !66, file: !3, line: 37, type: !6)
!66 = distinct !DILexicalBlock(scope: !59, file: !3, line: 36, column: 5)
!67 = !DILocation(line: 37, column: 13, scope: !66)
!68 = !DILocalVariable(name: "n", scope: !66, file: !3, line: 37, type: !6)
!69 = !DILocation(line: 37, column: 16, scope: !66)
!70 = !DILocalVariable(name: "intVariable", scope: !66, file: !3, line: 37, type: !6)
!71 = !DILocation(line: 37, column: 19, scope: !66)
!72 = !DILocation(line: 38, column: 20, scope: !73)
!73 = distinct !DILexicalBlock(scope: !66, file: !3, line: 38, column: 13)
!74 = !DILocation(line: 38, column: 13, scope: !73)
!75 = !DILocation(line: 38, column: 36, scope: !73)
!76 = !DILocation(line: 38, column: 13, scope: !66)
!77 = !DILocation(line: 41, column: 25, scope: !78)
!78 = distinct !DILexicalBlock(scope: !73, file: !3, line: 39, column: 9)
!79 = !DILocation(line: 42, column: 20, scope: !80)
!80 = distinct !DILexicalBlock(scope: !78, file: !3, line: 42, column: 13)
!81 = !DILocation(line: 42, column: 18, scope: !80)
!82 = !DILocation(line: 42, column: 25, scope: !83)
!83 = distinct !DILexicalBlock(scope: !80, file: !3, line: 42, column: 13)
!84 = !DILocation(line: 42, column: 29, scope: !83)
!85 = !DILocation(line: 42, column: 27, scope: !83)
!86 = !DILocation(line: 42, column: 13, scope: !80)
!87 = !DILocation(line: 45, column: 28, scope: !88)
!88 = distinct !DILexicalBlock(scope: !83, file: !3, line: 43, column: 13)
!89 = !DILocation(line: 46, column: 13, scope: !88)
!90 = !DILocation(line: 42, column: 33, scope: !83)
!91 = !DILocation(line: 42, column: 13, scope: !83)
!92 = distinct !{!92, !86, !93, !94}
!93 = !DILocation(line: 46, column: 13, scope: !80)
!94 = !{!"llvm.loop.mustprogress"}
!95 = !DILocation(line: 47, column: 26, scope: !78)
!96 = !DILocation(line: 47, column: 13, scope: !78)
!97 = !DILocation(line: 48, column: 9, scope: !78)
!98 = !DILocation(line: 50, column: 1, scope: !59)
!99 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_45_bad", scope: !3, file: !3, line: 52, type: !60, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!100 = !DILocalVariable(name: "data", scope: !99, file: !3, line: 54, type: !11)
!101 = !DILocation(line: 54, column: 12, scope: !99)
!102 = !DILocalVariable(name: "dataBuffer", scope: !99, file: !3, line: 55, type: !103)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 800, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 100)
!106 = !DILocation(line: 55, column: 10, scope: !99)
!107 = !DILocation(line: 56, column: 12, scope: !99)
!108 = !DILocation(line: 56, column: 10, scope: !99)
!109 = !DILocalVariable(name: "dataLen", scope: !110, file: !3, line: 59, type: !111)
!110 = distinct !DILexicalBlock(scope: !99, file: !3, line: 57, column: 5)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 46, baseType: !113)
!112 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!113 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!114 = !DILocation(line: 59, column: 16, scope: !110)
!115 = !DILocation(line: 59, column: 33, scope: !110)
!116 = !DILocation(line: 59, column: 26, scope: !110)
!117 = !DILocation(line: 61, column: 17, scope: !118)
!118 = distinct !DILexicalBlock(scope: !110, file: !3, line: 61, column: 13)
!119 = !DILocation(line: 61, column: 16, scope: !118)
!120 = !DILocation(line: 61, column: 25, scope: !118)
!121 = !DILocation(line: 61, column: 13, scope: !110)
!122 = !DILocation(line: 64, column: 23, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !3, line: 64, column: 17)
!124 = distinct !DILexicalBlock(scope: !118, file: !3, line: 62, column: 9)
!125 = !DILocation(line: 64, column: 28, scope: !123)
!126 = !DILocation(line: 64, column: 27, scope: !123)
!127 = !DILocation(line: 64, column: 47, scope: !123)
!128 = !DILocation(line: 64, column: 46, scope: !123)
!129 = !DILocation(line: 64, column: 37, scope: !123)
!130 = !DILocation(line: 64, column: 57, scope: !123)
!131 = !DILocation(line: 64, column: 17, scope: !123)
!132 = !DILocation(line: 64, column: 64, scope: !123)
!133 = !DILocation(line: 64, column: 17, scope: !124)
!134 = !DILocation(line: 68, column: 34, scope: !135)
!135 = distinct !DILexicalBlock(scope: !123, file: !3, line: 65, column: 13)
!136 = !DILocation(line: 68, column: 27, scope: !135)
!137 = !DILocation(line: 68, column: 25, scope: !135)
!138 = !DILocation(line: 69, column: 21, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !3, line: 69, column: 21)
!140 = !DILocation(line: 69, column: 29, scope: !139)
!141 = !DILocation(line: 69, column: 33, scope: !139)
!142 = !DILocation(line: 69, column: 36, scope: !139)
!143 = !DILocation(line: 69, column: 41, scope: !139)
!144 = !DILocation(line: 69, column: 48, scope: !139)
!145 = !DILocation(line: 69, column: 52, scope: !139)
!146 = !DILocation(line: 69, column: 21, scope: !135)
!147 = !DILocation(line: 71, column: 21, scope: !148)
!148 = distinct !DILexicalBlock(scope: !139, file: !3, line: 70, column: 17)
!149 = !DILocation(line: 71, column: 26, scope: !148)
!150 = !DILocation(line: 71, column: 33, scope: !148)
!151 = !DILocation(line: 71, column: 37, scope: !148)
!152 = !DILocation(line: 72, column: 17, scope: !148)
!153 = !DILocation(line: 73, column: 13, scope: !135)
!154 = !DILocation(line: 76, column: 17, scope: !155)
!155 = distinct !DILexicalBlock(scope: !123, file: !3, line: 75, column: 13)
!156 = !DILocation(line: 78, column: 17, scope: !155)
!157 = !DILocation(line: 78, column: 22, scope: !155)
!158 = !DILocation(line: 78, column: 31, scope: !155)
!159 = !DILocation(line: 80, column: 9, scope: !124)
!160 = !DILocation(line: 82, column: 64, scope: !99)
!161 = !DILocation(line: 82, column: 62, scope: !99)
!162 = !DILocation(line: 83, column: 5, scope: !99)
!163 = !DILocation(line: 84, column: 1, scope: !99)
!164 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 91, type: !60, scopeLine: 92, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!165 = !DILocalVariable(name: "data", scope: !164, file: !3, line: 93, type: !11)
!166 = !DILocation(line: 93, column: 12, scope: !164)
!167 = !DILocation(line: 93, column: 19, scope: !164)
!168 = !DILocalVariable(name: "i", scope: !169, file: !3, line: 95, type: !6)
!169 = distinct !DILexicalBlock(scope: !164, file: !3, line: 94, column: 5)
!170 = !DILocation(line: 95, column: 13, scope: !169)
!171 = !DILocalVariable(name: "n", scope: !169, file: !3, line: 95, type: !6)
!172 = !DILocation(line: 95, column: 16, scope: !169)
!173 = !DILocalVariable(name: "intVariable", scope: !169, file: !3, line: 95, type: !6)
!174 = !DILocation(line: 95, column: 19, scope: !169)
!175 = !DILocation(line: 96, column: 20, scope: !176)
!176 = distinct !DILexicalBlock(scope: !169, file: !3, line: 96, column: 13)
!177 = !DILocation(line: 96, column: 13, scope: !176)
!178 = !DILocation(line: 96, column: 36, scope: !176)
!179 = !DILocation(line: 96, column: 13, scope: !169)
!180 = !DILocation(line: 99, column: 25, scope: !181)
!181 = distinct !DILexicalBlock(scope: !176, file: !3, line: 97, column: 9)
!182 = !DILocation(line: 100, column: 20, scope: !183)
!183 = distinct !DILexicalBlock(scope: !181, file: !3, line: 100, column: 13)
!184 = !DILocation(line: 100, column: 18, scope: !183)
!185 = !DILocation(line: 100, column: 25, scope: !186)
!186 = distinct !DILexicalBlock(scope: !183, file: !3, line: 100, column: 13)
!187 = !DILocation(line: 100, column: 29, scope: !186)
!188 = !DILocation(line: 100, column: 27, scope: !186)
!189 = !DILocation(line: 100, column: 13, scope: !183)
!190 = !DILocation(line: 103, column: 28, scope: !191)
!191 = distinct !DILexicalBlock(scope: !186, file: !3, line: 101, column: 13)
!192 = !DILocation(line: 104, column: 13, scope: !191)
!193 = !DILocation(line: 100, column: 33, scope: !186)
!194 = !DILocation(line: 100, column: 13, scope: !186)
!195 = distinct !{!195, !189, !196, !94}
!196 = !DILocation(line: 104, column: 13, scope: !183)
!197 = !DILocation(line: 105, column: 26, scope: !181)
!198 = !DILocation(line: 105, column: 13, scope: !181)
!199 = !DILocation(line: 106, column: 9, scope: !181)
!200 = !DILocation(line: 108, column: 1, scope: !164)
!201 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 110, type: !60, scopeLine: 111, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!202 = !DILocalVariable(name: "data", scope: !201, file: !3, line: 112, type: !11)
!203 = !DILocation(line: 112, column: 12, scope: !201)
!204 = !DILocalVariable(name: "dataBuffer", scope: !201, file: !3, line: 113, type: !103)
!205 = !DILocation(line: 113, column: 10, scope: !201)
!206 = !DILocation(line: 114, column: 12, scope: !201)
!207 = !DILocation(line: 114, column: 10, scope: !201)
!208 = !DILocation(line: 116, column: 12, scope: !201)
!209 = !DILocation(line: 116, column: 5, scope: !201)
!210 = !DILocation(line: 117, column: 68, scope: !201)
!211 = !DILocation(line: 117, column: 66, scope: !201)
!212 = !DILocation(line: 118, column: 5, scope: !201)
!213 = !DILocation(line: 119, column: 1, scope: !201)
!214 = distinct !DISubprogram(name: "goodB2GSink", scope: !3, file: !3, line: 122, type: !60, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!215 = !DILocalVariable(name: "data", scope: !214, file: !3, line: 124, type: !11)
!216 = !DILocation(line: 124, column: 12, scope: !214)
!217 = !DILocation(line: 124, column: 19, scope: !214)
!218 = !DILocalVariable(name: "i", scope: !219, file: !3, line: 126, type: !6)
!219 = distinct !DILexicalBlock(scope: !214, file: !3, line: 125, column: 5)
!220 = !DILocation(line: 126, column: 13, scope: !219)
!221 = !DILocalVariable(name: "n", scope: !219, file: !3, line: 126, type: !6)
!222 = !DILocation(line: 126, column: 16, scope: !219)
!223 = !DILocalVariable(name: "intVariable", scope: !219, file: !3, line: 126, type: !6)
!224 = !DILocation(line: 126, column: 19, scope: !219)
!225 = !DILocation(line: 127, column: 20, scope: !226)
!226 = distinct !DILexicalBlock(scope: !219, file: !3, line: 127, column: 13)
!227 = !DILocation(line: 127, column: 13, scope: !226)
!228 = !DILocation(line: 127, column: 36, scope: !226)
!229 = !DILocation(line: 127, column: 13, scope: !219)
!230 = !DILocation(line: 130, column: 17, scope: !231)
!231 = distinct !DILexicalBlock(scope: !232, file: !3, line: 130, column: 17)
!232 = distinct !DILexicalBlock(scope: !226, file: !3, line: 128, column: 9)
!233 = !DILocation(line: 130, column: 19, scope: !231)
!234 = !DILocation(line: 130, column: 17, scope: !232)
!235 = !DILocation(line: 132, column: 29, scope: !236)
!236 = distinct !DILexicalBlock(scope: !231, file: !3, line: 131, column: 13)
!237 = !DILocation(line: 133, column: 24, scope: !238)
!238 = distinct !DILexicalBlock(scope: !236, file: !3, line: 133, column: 17)
!239 = !DILocation(line: 133, column: 22, scope: !238)
!240 = !DILocation(line: 133, column: 29, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !3, line: 133, column: 17)
!242 = !DILocation(line: 133, column: 33, scope: !241)
!243 = !DILocation(line: 133, column: 31, scope: !241)
!244 = !DILocation(line: 133, column: 17, scope: !238)
!245 = !DILocation(line: 136, column: 32, scope: !246)
!246 = distinct !DILexicalBlock(scope: !241, file: !3, line: 134, column: 17)
!247 = !DILocation(line: 137, column: 17, scope: !246)
!248 = !DILocation(line: 133, column: 37, scope: !241)
!249 = !DILocation(line: 133, column: 17, scope: !241)
!250 = distinct !{!250, !244, !251, !94}
!251 = !DILocation(line: 137, column: 17, scope: !238)
!252 = !DILocation(line: 138, column: 30, scope: !236)
!253 = !DILocation(line: 138, column: 17, scope: !236)
!254 = !DILocation(line: 139, column: 13, scope: !236)
!255 = !DILocation(line: 140, column: 9, scope: !232)
!256 = !DILocation(line: 142, column: 1, scope: !214)
!257 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 144, type: !60, scopeLine: 145, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!258 = !DILocalVariable(name: "data", scope: !257, file: !3, line: 146, type: !11)
!259 = !DILocation(line: 146, column: 12, scope: !257)
!260 = !DILocalVariable(name: "dataBuffer", scope: !257, file: !3, line: 147, type: !103)
!261 = !DILocation(line: 147, column: 10, scope: !257)
!262 = !DILocation(line: 148, column: 12, scope: !257)
!263 = !DILocation(line: 148, column: 10, scope: !257)
!264 = !DILocalVariable(name: "dataLen", scope: !265, file: !3, line: 151, type: !111)
!265 = distinct !DILexicalBlock(scope: !257, file: !3, line: 149, column: 5)
!266 = !DILocation(line: 151, column: 16, scope: !265)
!267 = !DILocation(line: 151, column: 33, scope: !265)
!268 = !DILocation(line: 151, column: 26, scope: !265)
!269 = !DILocation(line: 153, column: 17, scope: !270)
!270 = distinct !DILexicalBlock(scope: !265, file: !3, line: 153, column: 13)
!271 = !DILocation(line: 153, column: 16, scope: !270)
!272 = !DILocation(line: 153, column: 25, scope: !270)
!273 = !DILocation(line: 153, column: 13, scope: !265)
!274 = !DILocation(line: 156, column: 23, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 156, column: 17)
!276 = distinct !DILexicalBlock(scope: !270, file: !3, line: 154, column: 9)
!277 = !DILocation(line: 156, column: 28, scope: !275)
!278 = !DILocation(line: 156, column: 27, scope: !275)
!279 = !DILocation(line: 156, column: 47, scope: !275)
!280 = !DILocation(line: 156, column: 46, scope: !275)
!281 = !DILocation(line: 156, column: 37, scope: !275)
!282 = !DILocation(line: 156, column: 57, scope: !275)
!283 = !DILocation(line: 156, column: 17, scope: !275)
!284 = !DILocation(line: 156, column: 64, scope: !275)
!285 = !DILocation(line: 156, column: 17, scope: !276)
!286 = !DILocation(line: 160, column: 34, scope: !287)
!287 = distinct !DILexicalBlock(scope: !275, file: !3, line: 157, column: 13)
!288 = !DILocation(line: 160, column: 27, scope: !287)
!289 = !DILocation(line: 160, column: 25, scope: !287)
!290 = !DILocation(line: 161, column: 21, scope: !291)
!291 = distinct !DILexicalBlock(scope: !287, file: !3, line: 161, column: 21)
!292 = !DILocation(line: 161, column: 29, scope: !291)
!293 = !DILocation(line: 161, column: 33, scope: !291)
!294 = !DILocation(line: 161, column: 36, scope: !291)
!295 = !DILocation(line: 161, column: 41, scope: !291)
!296 = !DILocation(line: 161, column: 48, scope: !291)
!297 = !DILocation(line: 161, column: 52, scope: !291)
!298 = !DILocation(line: 161, column: 21, scope: !287)
!299 = !DILocation(line: 163, column: 21, scope: !300)
!300 = distinct !DILexicalBlock(scope: !291, file: !3, line: 162, column: 17)
!301 = !DILocation(line: 163, column: 26, scope: !300)
!302 = !DILocation(line: 163, column: 33, scope: !300)
!303 = !DILocation(line: 163, column: 37, scope: !300)
!304 = !DILocation(line: 164, column: 17, scope: !300)
!305 = !DILocation(line: 165, column: 13, scope: !287)
!306 = !DILocation(line: 168, column: 17, scope: !307)
!307 = distinct !DILexicalBlock(scope: !275, file: !3, line: 167, column: 13)
!308 = !DILocation(line: 170, column: 17, scope: !307)
!309 = !DILocation(line: 170, column: 22, scope: !307)
!310 = !DILocation(line: 170, column: 31, scope: !307)
!311 = !DILocation(line: 172, column: 9, scope: !276)
!312 = !DILocation(line: 174, column: 68, scope: !257)
!313 = !DILocation(line: 174, column: 66, scope: !257)
!314 = !DILocation(line: 175, column: 5, scope: !257)
!315 = !DILocation(line: 176, column: 1, scope: !257)
!316 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_45_good", scope: !3, file: !3, line: 178, type: !60, scopeLine: 179, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!317 = !DILocation(line: 180, column: 5, scope: !316)
!318 = !DILocation(line: 181, column: 5, scope: !316)
!319 = !DILocation(line: 182, column: 1, scope: !316)
!320 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !321, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !11}
!323 = !DILocalVariable(name: "line", arg: 1, scope: !320, file: !18, line: 11, type: !11)
!324 = !DILocation(line: 11, column: 25, scope: !320)
!325 = !DILocation(line: 13, column: 1, scope: !320)
!326 = !DILocation(line: 14, column: 8, scope: !327)
!327 = distinct !DILexicalBlock(scope: !320, file: !18, line: 14, column: 8)
!328 = !DILocation(line: 14, column: 13, scope: !327)
!329 = !DILocation(line: 14, column: 8, scope: !320)
!330 = !DILocation(line: 16, column: 24, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !18, line: 15, column: 5)
!332 = !DILocation(line: 16, column: 9, scope: !331)
!333 = !DILocation(line: 17, column: 5, scope: !331)
!334 = !DILocation(line: 18, column: 5, scope: !320)
!335 = !DILocation(line: 19, column: 1, scope: !320)
!336 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !321, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!337 = !DILocalVariable(name: "line", arg: 1, scope: !336, file: !18, line: 20, type: !11)
!338 = !DILocation(line: 20, column: 29, scope: !336)
!339 = !DILocation(line: 22, column: 8, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !18, line: 22, column: 8)
!341 = !DILocation(line: 22, column: 13, scope: !340)
!342 = !DILocation(line: 22, column: 8, scope: !336)
!343 = !DILocation(line: 24, column: 24, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !18, line: 23, column: 5)
!345 = !DILocation(line: 24, column: 9, scope: !344)
!346 = !DILocation(line: 25, column: 5, scope: !344)
!347 = !DILocation(line: 26, column: 1, scope: !336)
!348 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !349, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !351}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !112, line: 74, baseType: !6)
!353 = !DILocalVariable(name: "line", arg: 1, scope: !348, file: !18, line: 27, type: !351)
!354 = !DILocation(line: 27, column: 29, scope: !348)
!355 = !DILocation(line: 29, column: 8, scope: !356)
!356 = distinct !DILexicalBlock(scope: !348, file: !18, line: 29, column: 8)
!357 = !DILocation(line: 29, column: 13, scope: !356)
!358 = !DILocation(line: 29, column: 8, scope: !348)
!359 = !DILocation(line: 31, column: 27, scope: !360)
!360 = distinct !DILexicalBlock(scope: !356, file: !18, line: 30, column: 5)
!361 = !DILocation(line: 31, column: 9, scope: !360)
!362 = !DILocation(line: 32, column: 5, scope: !360)
!363 = !DILocation(line: 33, column: 1, scope: !348)
!364 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !365, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !6}
!367 = !DILocalVariable(name: "intNumber", arg: 1, scope: !364, file: !18, line: 35, type: !6)
!368 = !DILocation(line: 35, column: 24, scope: !364)
!369 = !DILocation(line: 37, column: 20, scope: !364)
!370 = !DILocation(line: 37, column: 5, scope: !364)
!371 = !DILocation(line: 38, column: 1, scope: !364)
!372 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !373, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !375}
!375 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!376 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !372, file: !18, line: 40, type: !375)
!377 = !DILocation(line: 40, column: 28, scope: !372)
!378 = !DILocation(line: 42, column: 21, scope: !372)
!379 = !DILocation(line: 42, column: 5, scope: !372)
!380 = !DILocation(line: 43, column: 1, scope: !372)
!381 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !382, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !384}
!384 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!385 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !381, file: !18, line: 45, type: !384)
!386 = !DILocation(line: 45, column: 28, scope: !381)
!387 = !DILocation(line: 47, column: 20, scope: !381)
!388 = !DILocation(line: 47, column: 5, scope: !381)
!389 = !DILocation(line: 48, column: 1, scope: !381)
!390 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !391, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393}
!393 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!394 = !DILocalVariable(name: "longNumber", arg: 1, scope: !390, file: !18, line: 50, type: !393)
!395 = !DILocation(line: 50, column: 26, scope: !390)
!396 = !DILocation(line: 52, column: 21, scope: !390)
!397 = !DILocation(line: 52, column: 5, scope: !390)
!398 = !DILocation(line: 53, column: 1, scope: !390)
!399 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !400, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !402}
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !403, line: 27, baseType: !404)
!403 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !405, line: 44, baseType: !393)
!405 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!406 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !399, file: !18, line: 55, type: !402)
!407 = !DILocation(line: 55, column: 33, scope: !399)
!408 = !DILocation(line: 57, column: 29, scope: !399)
!409 = !DILocation(line: 57, column: 5, scope: !399)
!410 = !DILocation(line: 58, column: 1, scope: !399)
!411 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !412, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !111}
!414 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !411, file: !18, line: 60, type: !111)
!415 = !DILocation(line: 60, column: 29, scope: !411)
!416 = !DILocation(line: 62, column: 21, scope: !411)
!417 = !DILocation(line: 62, column: 5, scope: !411)
!418 = !DILocation(line: 63, column: 1, scope: !411)
!419 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !420, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !12}
!422 = !DILocalVariable(name: "charHex", arg: 1, scope: !419, file: !18, line: 65, type: !12)
!423 = !DILocation(line: 65, column: 29, scope: !419)
!424 = !DILocation(line: 67, column: 22, scope: !419)
!425 = !DILocation(line: 67, column: 5, scope: !419)
!426 = !DILocation(line: 68, column: 1, scope: !419)
!427 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !428, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !352}
!430 = !DILocalVariable(name: "wideChar", arg: 1, scope: !427, file: !18, line: 70, type: !352)
!431 = !DILocation(line: 70, column: 29, scope: !427)
!432 = !DILocalVariable(name: "s", scope: !427, file: !18, line: 74, type: !433)
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
!445 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !446, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !22}
!448 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !445, file: !18, line: 80, type: !22)
!449 = !DILocation(line: 80, column: 33, scope: !445)
!450 = !DILocation(line: 82, column: 20, scope: !445)
!451 = !DILocation(line: 82, column: 5, scope: !445)
!452 = !DILocation(line: 83, column: 1, scope: !445)
!453 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !454, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !38}
!456 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !453, file: !18, line: 85, type: !38)
!457 = !DILocation(line: 85, column: 45, scope: !453)
!458 = !DILocation(line: 87, column: 22, scope: !453)
!459 = !DILocation(line: 87, column: 5, scope: !453)
!460 = !DILocation(line: 88, column: 1, scope: !453)
!461 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !462, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !464}
!464 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!465 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !461, file: !18, line: 90, type: !464)
!466 = !DILocation(line: 90, column: 29, scope: !461)
!467 = !DILocation(line: 92, column: 20, scope: !461)
!468 = !DILocation(line: 92, column: 5, scope: !461)
!469 = !DILocation(line: 93, column: 1, scope: !461)
!470 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !471, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !475, line: 100, baseType: !476)
!475 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_006/source_code")
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !475, line: 96, size: 64, elements: !477)
!477 = !{!478, !479}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !476, file: !475, line: 98, baseType: !6, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !476, file: !475, line: 99, baseType: !6, size: 32, offset: 32)
!480 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !470, file: !18, line: 95, type: !473)
!481 = !DILocation(line: 95, column: 40, scope: !470)
!482 = !DILocation(line: 97, column: 26, scope: !470)
!483 = !DILocation(line: 97, column: 47, scope: !470)
!484 = !DILocation(line: 97, column: 55, scope: !470)
!485 = !DILocation(line: 97, column: 76, scope: !470)
!486 = !DILocation(line: 97, column: 5, scope: !470)
!487 = !DILocation(line: 98, column: 1, scope: !470)
!488 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !489, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !491, !111}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!492 = !DILocalVariable(name: "bytes", arg: 1, scope: !488, file: !18, line: 100, type: !491)
!493 = !DILocation(line: 100, column: 38, scope: !488)
!494 = !DILocalVariable(name: "numBytes", arg: 2, scope: !488, file: !18, line: 100, type: !111)
!495 = !DILocation(line: 100, column: 52, scope: !488)
!496 = !DILocalVariable(name: "i", scope: !488, file: !18, line: 102, type: !111)
!497 = !DILocation(line: 102, column: 12, scope: !488)
!498 = !DILocation(line: 103, column: 12, scope: !499)
!499 = distinct !DILexicalBlock(scope: !488, file: !18, line: 103, column: 5)
!500 = !DILocation(line: 103, column: 10, scope: !499)
!501 = !DILocation(line: 103, column: 17, scope: !502)
!502 = distinct !DILexicalBlock(scope: !499, file: !18, line: 103, column: 5)
!503 = !DILocation(line: 103, column: 21, scope: !502)
!504 = !DILocation(line: 103, column: 19, scope: !502)
!505 = !DILocation(line: 103, column: 5, scope: !499)
!506 = !DILocation(line: 105, column: 24, scope: !507)
!507 = distinct !DILexicalBlock(scope: !502, file: !18, line: 104, column: 5)
!508 = !DILocation(line: 105, column: 30, scope: !507)
!509 = !DILocation(line: 105, column: 9, scope: !507)
!510 = !DILocation(line: 106, column: 5, scope: !507)
!511 = !DILocation(line: 103, column: 31, scope: !502)
!512 = !DILocation(line: 103, column: 5, scope: !502)
!513 = distinct !{!513, !505, !514, !94}
!514 = !DILocation(line: 106, column: 5, scope: !499)
!515 = !DILocation(line: 107, column: 5, scope: !488)
!516 = !DILocation(line: 108, column: 1, scope: !488)
!517 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !518, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!518 = !DISubroutineType(types: !519)
!519 = !{!111, !491, !111, !11}
!520 = !DILocalVariable(name: "bytes", arg: 1, scope: !517, file: !18, line: 113, type: !491)
!521 = !DILocation(line: 113, column: 39, scope: !517)
!522 = !DILocalVariable(name: "numBytes", arg: 2, scope: !517, file: !18, line: 113, type: !111)
!523 = !DILocation(line: 113, column: 53, scope: !517)
!524 = !DILocalVariable(name: "hex", arg: 3, scope: !517, file: !18, line: 113, type: !11)
!525 = !DILocation(line: 113, column: 71, scope: !517)
!526 = !DILocalVariable(name: "numWritten", scope: !517, file: !18, line: 115, type: !111)
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
!537 = !DILocalVariable(name: "byte", scope: !538, file: !18, line: 123, type: !6)
!538 = distinct !DILexicalBlock(scope: !517, file: !18, line: 122, column: 5)
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
!550 = distinct !{!550, !528, !551, !94}
!551 = !DILocation(line: 127, column: 5, scope: !517)
!552 = !DILocation(line: 129, column: 12, scope: !517)
!553 = !DILocation(line: 129, column: 5, scope: !517)
!554 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !555, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!555 = !DISubroutineType(types: !556)
!556 = !{!111, !491, !111, !351}
!557 = !DILocalVariable(name: "bytes", arg: 1, scope: !554, file: !18, line: 135, type: !491)
!558 = !DILocation(line: 135, column: 41, scope: !554)
!559 = !DILocalVariable(name: "numBytes", arg: 2, scope: !554, file: !18, line: 135, type: !111)
!560 = !DILocation(line: 135, column: 55, scope: !554)
!561 = !DILocalVariable(name: "hex", arg: 3, scope: !554, file: !18, line: 135, type: !351)
!562 = !DILocation(line: 135, column: 76, scope: !554)
!563 = !DILocalVariable(name: "numWritten", scope: !554, file: !18, line: 137, type: !111)
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
!581 = !DILocalVariable(name: "byte", scope: !582, file: !18, line: 145, type: !6)
!582 = distinct !DILexicalBlock(scope: !554, file: !18, line: 144, column: 5)
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
!594 = distinct !{!594, !565, !595, !94}
!595 = !DILocation(line: 149, column: 5, scope: !554)
!596 = !DILocation(line: 151, column: 12, scope: !554)
!597 = !DILocation(line: 151, column: 5, scope: !554)
!598 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !599, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!599 = !DISubroutineType(types: !600)
!600 = !{!6}
!601 = !DILocation(line: 158, column: 5, scope: !598)
!602 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !599, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!603 = !DILocation(line: 163, column: 5, scope: !602)
!604 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !599, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!605 = !DILocation(line: 168, column: 13, scope: !604)
!606 = !DILocation(line: 168, column: 20, scope: !604)
!607 = !DILocation(line: 168, column: 5, scope: !604)
!608 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !60, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!609 = !DILocation(line: 187, column: 16, scope: !608)
!610 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !60, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!611 = !DILocation(line: 188, column: 16, scope: !610)
!612 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !60, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!613 = !DILocation(line: 189, column: 16, scope: !612)
!614 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !60, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!615 = !DILocation(line: 190, column: 16, scope: !614)
!616 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !60, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!617 = !DILocation(line: 191, column: 16, scope: !616)
!618 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !60, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!619 = !DILocation(line: 192, column: 16, scope: !618)
!620 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !60, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!621 = !DILocation(line: 193, column: 16, scope: !620)
!622 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !60, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!623 = !DILocation(line: 194, column: 16, scope: !622)
!624 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !60, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!625 = !DILocation(line: 195, column: 16, scope: !624)
!626 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !60, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!627 = !DILocation(line: 198, column: 15, scope: !626)
!628 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !60, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!629 = !DILocation(line: 199, column: 15, scope: !628)
!630 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !60, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!631 = !DILocation(line: 200, column: 15, scope: !630)
!632 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !60, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!633 = !DILocation(line: 201, column: 15, scope: !632)
!634 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !60, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!635 = !DILocation(line: 202, column: 15, scope: !634)
!636 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !60, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!637 = !DILocation(line: 203, column: 15, scope: !636)
!638 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !60, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!639 = !DILocation(line: 204, column: 15, scope: !638)
!640 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !60, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!641 = !DILocation(line: 205, column: 15, scope: !640)
!642 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !60, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!643 = !DILocation(line: 206, column: 15, scope: !642)
