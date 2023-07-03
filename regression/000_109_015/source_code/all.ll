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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_65_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !59, metadata !DIExpression()), !dbg !63
  store void (i8*)* @CWE606_Unchecked_Loop_Condition__char_console_65b_badSink, void (i8*)** %funcPtr, align 8, !dbg !63
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
  %16 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !122
  %17 = load i8*, i8** %data, align 8, !dbg !123
  call void %16(i8* %17), !dbg !122
  ret void, !dbg !124
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !125 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !128, metadata !DIExpression()), !dbg !129
  store void (i8*)* @CWE606_Unchecked_Loop_Condition__char_console_65b_goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !129
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !130, metadata !DIExpression()), !dbg !131
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !131
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !131
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !132
  store i8* %arraydecay, i8** %data, align 8, !dbg !133
  %1 = load i8*, i8** %data, align 8, !dbg !134
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !135
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !136
  %3 = load i8*, i8** %data, align 8, !dbg !137
  call void %2(i8* %3), !dbg !136
  ret void, !dbg !138
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !139 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !142, metadata !DIExpression()), !dbg !143
  store void (i8*)* @CWE606_Unchecked_Loop_Condition__char_console_65b_goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !143
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
  %16 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !196
  %17 = load i8*, i8** %data, align 8, !dbg !197
  call void %16(i8* %17), !dbg !196
  ret void, !dbg !198
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_65_good() #0 !dbg !199 {
entry:
  call void @goodG2B(), !dbg !200
  call void @goodB2G(), !dbg !201
  ret void, !dbg !202
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_65b_badSink(i8* %data) #0 !dbg !203 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata i32* %i, metadata !206, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %n, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !211, metadata !DIExpression()), !dbg !212
  %0 = load i8*, i8** %data.addr, align 8, !dbg !213
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !215
  %cmp = icmp eq i32 %call, 1, !dbg !216
  br i1 %cmp, label %if.then, label %if.end, !dbg !217

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !218
  store i32 0, i32* %i, align 4, !dbg !220
  br label %for.cond, !dbg !222

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !223
  %2 = load i32, i32* %n, align 4, !dbg !225
  %cmp1 = icmp slt i32 %1, %2, !dbg !226
  br i1 %cmp1, label %for.body, label %for.end, !dbg !227

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !228
  %inc = add nsw i32 %3, 1, !dbg !228
  store i32 %inc, i32* %intVariable, align 4, !dbg !228
  br label %for.inc, !dbg !230

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !231
  %inc2 = add nsw i32 %4, 1, !dbg !231
  store i32 %inc2, i32* %i, align 4, !dbg !231
  br label %for.cond, !dbg !232, !llvm.loop !233

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !236
  call void @printIntLine(i32 %5), !dbg !237
  br label %if.end, !dbg !238

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !239
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_65b_goodG2BSink(i8* %data) #0 !dbg !240 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !241, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata i32* %i, metadata !243, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata i32* %n, metadata !246, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !248, metadata !DIExpression()), !dbg !249
  %0 = load i8*, i8** %data.addr, align 8, !dbg !250
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !252
  %cmp = icmp eq i32 %call, 1, !dbg !253
  br i1 %cmp, label %if.then, label %if.end, !dbg !254

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !255
  store i32 0, i32* %i, align 4, !dbg !257
  br label %for.cond, !dbg !259

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !260
  %2 = load i32, i32* %n, align 4, !dbg !262
  %cmp1 = icmp slt i32 %1, %2, !dbg !263
  br i1 %cmp1, label %for.body, label %for.end, !dbg !264

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !265
  %inc = add nsw i32 %3, 1, !dbg !265
  store i32 %inc, i32* %intVariable, align 4, !dbg !265
  br label %for.inc, !dbg !267

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !268
  %inc2 = add nsw i32 %4, 1, !dbg !268
  store i32 %inc2, i32* %i, align 4, !dbg !268
  br label %for.cond, !dbg !269, !llvm.loop !270

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !272
  call void @printIntLine(i32 %5), !dbg !273
  br label %if.end, !dbg !274

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !275
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_65b_goodB2GSink(i8* %data) #0 !dbg !276 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !277, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata i32* %i, metadata !279, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata i32* %n, metadata !282, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !284, metadata !DIExpression()), !dbg !285
  %0 = load i8*, i8** %data.addr, align 8, !dbg !286
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !288
  %cmp = icmp eq i32 %call, 1, !dbg !289
  br i1 %cmp, label %if.then, label %if.end5, !dbg !290

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !291
  %cmp1 = icmp slt i32 %1, 10000, !dbg !294
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !295

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !296
  store i32 0, i32* %i, align 4, !dbg !298
  br label %for.cond, !dbg !300

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !301
  %3 = load i32, i32* %n, align 4, !dbg !303
  %cmp3 = icmp slt i32 %2, %3, !dbg !304
  br i1 %cmp3, label %for.body, label %for.end, !dbg !305

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !306
  %inc = add nsw i32 %4, 1, !dbg !306
  store i32 %inc, i32* %intVariable, align 4, !dbg !306
  br label %for.inc, !dbg !308

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !309
  %inc4 = add nsw i32 %5, 1, !dbg !309
  store i32 %inc4, i32* %i, align 4, !dbg !309
  br label %for.cond, !dbg !310, !llvm.loop !311

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !313
  call void @printIntLine(i32 %6), !dbg !314
  br label %if.end, !dbg !315

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !316

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !317
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !318 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !319, metadata !DIExpression()), !dbg !320
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !321
  %0 = load i8*, i8** %line.addr, align 8, !dbg !322
  %cmp = icmp ne i8* %0, null, !dbg !324
  br i1 %cmp, label %if.then, label %if.end, !dbg !325

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !326
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !328
  br label %if.end, !dbg !329

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !330
  ret void, !dbg !331
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !332 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = load i8*, i8** %line.addr, align 8, !dbg !335
  %cmp = icmp ne i8* %0, null, !dbg !337
  br i1 %cmp, label %if.then, label %if.end, !dbg !338

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !339
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !341
  br label %if.end, !dbg !342

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !344 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load i32*, i32** %line.addr, align 8, !dbg !351
  %cmp = icmp ne i32* %0, null, !dbg !353
  br i1 %cmp, label %if.then, label %if.end, !dbg !354

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !355
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.12, i64 0, i64 0), i32* %1), !dbg !357
  br label %if.end, !dbg !358

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !359
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !360 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !363, metadata !DIExpression()), !dbg !364
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !365
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !368 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !374
  %conv = sext i16 %0 to i32, !dbg !374
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !375
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !377 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !381, metadata !DIExpression()), !dbg !382
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !383
  %conv = fpext float %0 to double, !dbg !383
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !384
  ret void, !dbg !385
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !386 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !390, metadata !DIExpression()), !dbg !391
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !392
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !393
  ret void, !dbg !394
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !395 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !404
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !405
  ret void, !dbg !406
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !407 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !410, metadata !DIExpression()), !dbg !411
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !412
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !413
  ret void, !dbg !414
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !415 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !418, metadata !DIExpression()), !dbg !419
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !420
  %conv = sext i8 %0 to i32, !dbg !420
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !421
  ret void, !dbg !422
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !423 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !426, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !428, metadata !DIExpression()), !dbg !432
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !433
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !434
  store i32 %0, i32* %arrayidx, align 4, !dbg !435
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !436
  store i32 0, i32* %arrayidx1, align 4, !dbg !437
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !438
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.15, i64 0, i64 0), i32* %arraydecay), !dbg !439
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !441 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !444, metadata !DIExpression()), !dbg !445
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !446
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !447
  ret void, !dbg !448
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !449 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !452, metadata !DIExpression()), !dbg !453
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !454
  %conv = zext i8 %0 to i32, !dbg !454
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !455
  ret void, !dbg !456
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !457 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !461, metadata !DIExpression()), !dbg !462
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !463
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !464
  ret void, !dbg !465
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !466 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !476, metadata !DIExpression()), !dbg !477
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !478
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !479
  %1 = load i32, i32* %intOne, align 4, !dbg !479
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !480
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !481
  %3 = load i32, i32* %intTwo, align 4, !dbg !481
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !482
  ret void, !dbg !483
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !484 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !488, metadata !DIExpression()), !dbg !489
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !490, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.declare(metadata i64* %i, metadata !492, metadata !DIExpression()), !dbg !493
  store i64 0, i64* %i, align 8, !dbg !494
  br label %for.cond, !dbg !496

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !497
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !499
  %cmp = icmp ult i64 %0, %1, !dbg !500
  br i1 %cmp, label %for.body, label %for.end, !dbg !501

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !502
  %3 = load i64, i64* %i, align 8, !dbg !504
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !502
  %4 = load i8, i8* %arrayidx, align 1, !dbg !502
  %conv = zext i8 %4 to i32, !dbg !502
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !505
  br label %for.inc, !dbg !506

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !507
  %inc = add i64 %5, 1, !dbg !507
  store i64 %inc, i64* %i, align 8, !dbg !507
  br label %for.cond, !dbg !508, !llvm.loop !509

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !511
  ret void, !dbg !512
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !513 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !516, metadata !DIExpression()), !dbg !517
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !518, metadata !DIExpression()), !dbg !519
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !520, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !522, metadata !DIExpression()), !dbg !523
  store i64 0, i64* %numWritten, align 8, !dbg !523
  br label %while.cond, !dbg !524

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !525
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !526
  %cmp = icmp ult i64 %0, %1, !dbg !527
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !528

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !529
  %2 = load i16*, i16** %call, align 8, !dbg !529
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !529
  %4 = load i64, i64* %numWritten, align 8, !dbg !529
  %mul = mul i64 2, %4, !dbg !529
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !529
  %5 = load i8, i8* %arrayidx, align 1, !dbg !529
  %conv = sext i8 %5 to i32, !dbg !529
  %idxprom = sext i32 %conv to i64, !dbg !529
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !529
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !529
  %conv2 = zext i16 %6 to i32, !dbg !529
  %and = and i32 %conv2, 4096, !dbg !529
  %tobool = icmp ne i32 %and, 0, !dbg !529
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !530

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !531
  %7 = load i16*, i16** %call3, align 8, !dbg !531
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !531
  %9 = load i64, i64* %numWritten, align 8, !dbg !531
  %mul4 = mul i64 2, %9, !dbg !531
  %add = add i64 %mul4, 1, !dbg !531
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !531
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !531
  %conv6 = sext i8 %10 to i32, !dbg !531
  %idxprom7 = sext i32 %conv6 to i64, !dbg !531
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !531
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !531
  %conv9 = zext i16 %11 to i32, !dbg !531
  %and10 = and i32 %conv9, 4096, !dbg !531
  %tobool11 = icmp ne i32 %and10, 0, !dbg !530
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !532
  br i1 %12, label %while.body, label %while.end, !dbg !524

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !533, metadata !DIExpression()), !dbg !535
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !536
  %14 = load i64, i64* %numWritten, align 8, !dbg !537
  %mul12 = mul i64 2, %14, !dbg !538
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !536
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !539
  %15 = load i32, i32* %byte, align 4, !dbg !540
  %conv15 = trunc i32 %15 to i8, !dbg !541
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !542
  %17 = load i64, i64* %numWritten, align 8, !dbg !543
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !542
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !544
  %18 = load i64, i64* %numWritten, align 8, !dbg !545
  %inc = add i64 %18, 1, !dbg !545
  store i64 %inc, i64* %numWritten, align 8, !dbg !545
  br label %while.cond, !dbg !524, !llvm.loop !546

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !548
  ret i64 %19, !dbg !549
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !550 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !553, metadata !DIExpression()), !dbg !554
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !555, metadata !DIExpression()), !dbg !556
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !557, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !559, metadata !DIExpression()), !dbg !560
  store i64 0, i64* %numWritten, align 8, !dbg !560
  br label %while.cond, !dbg !561

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !562
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !563
  %cmp = icmp ult i64 %0, %1, !dbg !564
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !565

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !566
  %3 = load i64, i64* %numWritten, align 8, !dbg !567
  %mul = mul i64 2, %3, !dbg !568
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !566
  %4 = load i32, i32* %arrayidx, align 4, !dbg !566
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !569
  %tobool = icmp ne i32 %call, 0, !dbg !569
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !570

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !571
  %6 = load i64, i64* %numWritten, align 8, !dbg !572
  %mul1 = mul i64 2, %6, !dbg !573
  %add = add i64 %mul1, 1, !dbg !574
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !571
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !571
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !575
  %tobool4 = icmp ne i32 %call3, 0, !dbg !570
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !576
  br i1 %8, label %while.body, label %while.end, !dbg !561

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !577, metadata !DIExpression()), !dbg !579
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !580
  %10 = load i64, i64* %numWritten, align 8, !dbg !581
  %mul5 = mul i64 2, %10, !dbg !582
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !580
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !583
  %11 = load i32, i32* %byte, align 4, !dbg !584
  %conv = trunc i32 %11 to i8, !dbg !585
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !586
  %13 = load i64, i64* %numWritten, align 8, !dbg !587
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !586
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !588
  %14 = load i64, i64* %numWritten, align 8, !dbg !589
  %inc = add i64 %14, 1, !dbg !589
  store i64 %inc, i64* %numWritten, align 8, !dbg !589
  br label %while.cond, !dbg !561, !llvm.loop !590

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !592
  ret i64 %15, !dbg !593
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !594 {
entry:
  ret i32 1, !dbg !597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !598 {
entry:
  ret i32 0, !dbg !599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !600 {
entry:
  %call = call i32 @rand() #8, !dbg !601
  %rem = srem i32 %call, 2, !dbg !602
  ret i32 %rem, !dbg !603
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !604 {
entry:
  ret void, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !606 {
entry:
  ret void, !dbg !607
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !608 {
entry:
  ret void, !dbg !609
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !610 {
entry:
  ret void, !dbg !611
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !612 {
entry:
  ret void, !dbg !613
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !614 {
entry:
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !616 {
entry:
  ret void, !dbg !617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !618 {
entry:
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !620 {
entry:
  ret void, !dbg !621
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !622 {
entry:
  ret void, !dbg !623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !624 {
entry:
  ret void, !dbg !625
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !626 {
entry:
  ret void, !dbg !627
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !628 {
entry:
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !630 {
entry:
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !632 {
entry:
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !634 {
entry:
  ret void, !dbg !635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !636 {
entry:
  ret void, !dbg !637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !638 {
entry:
  ret void, !dbg !639
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_015/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_65a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_015/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_65b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_015/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_65_bad", scope: !45, file: !45, line: 31, type: !55, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 33, type: !42)
!58 = !DILocation(line: 33, column: 12, scope: !54)
!59 = !DILocalVariable(name: "funcPtr", scope: !54, file: !45, line: 35, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !42}
!63 = !DILocation(line: 35, column: 12, scope: !54)
!64 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 36, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 100)
!68 = !DILocation(line: 36, column: 10, scope: !54)
!69 = !DILocation(line: 37, column: 12, scope: !54)
!70 = !DILocation(line: 37, column: 10, scope: !54)
!71 = !DILocalVariable(name: "dataLen", scope: !72, file: !45, line: 40, type: !73)
!72 = distinct !DILexicalBlock(scope: !54, file: !45, line: 38, column: 5)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 46, baseType: !75)
!74 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!75 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!76 = !DILocation(line: 40, column: 16, scope: !72)
!77 = !DILocation(line: 40, column: 33, scope: !72)
!78 = !DILocation(line: 40, column: 26, scope: !72)
!79 = !DILocation(line: 42, column: 17, scope: !80)
!80 = distinct !DILexicalBlock(scope: !72, file: !45, line: 42, column: 13)
!81 = !DILocation(line: 42, column: 16, scope: !80)
!82 = !DILocation(line: 42, column: 25, scope: !80)
!83 = !DILocation(line: 42, column: 13, scope: !72)
!84 = !DILocation(line: 45, column: 23, scope: !85)
!85 = distinct !DILexicalBlock(scope: !86, file: !45, line: 45, column: 17)
!86 = distinct !DILexicalBlock(scope: !80, file: !45, line: 43, column: 9)
!87 = !DILocation(line: 45, column: 28, scope: !85)
!88 = !DILocation(line: 45, column: 27, scope: !85)
!89 = !DILocation(line: 45, column: 47, scope: !85)
!90 = !DILocation(line: 45, column: 46, scope: !85)
!91 = !DILocation(line: 45, column: 37, scope: !85)
!92 = !DILocation(line: 45, column: 57, scope: !85)
!93 = !DILocation(line: 45, column: 17, scope: !85)
!94 = !DILocation(line: 45, column: 64, scope: !85)
!95 = !DILocation(line: 45, column: 17, scope: !86)
!96 = !DILocation(line: 49, column: 34, scope: !97)
!97 = distinct !DILexicalBlock(scope: !85, file: !45, line: 46, column: 13)
!98 = !DILocation(line: 49, column: 27, scope: !97)
!99 = !DILocation(line: 49, column: 25, scope: !97)
!100 = !DILocation(line: 50, column: 21, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !45, line: 50, column: 21)
!102 = !DILocation(line: 50, column: 29, scope: !101)
!103 = !DILocation(line: 50, column: 33, scope: !101)
!104 = !DILocation(line: 50, column: 36, scope: !101)
!105 = !DILocation(line: 50, column: 41, scope: !101)
!106 = !DILocation(line: 50, column: 48, scope: !101)
!107 = !DILocation(line: 50, column: 52, scope: !101)
!108 = !DILocation(line: 50, column: 21, scope: !97)
!109 = !DILocation(line: 52, column: 21, scope: !110)
!110 = distinct !DILexicalBlock(scope: !101, file: !45, line: 51, column: 17)
!111 = !DILocation(line: 52, column: 26, scope: !110)
!112 = !DILocation(line: 52, column: 33, scope: !110)
!113 = !DILocation(line: 52, column: 37, scope: !110)
!114 = !DILocation(line: 53, column: 17, scope: !110)
!115 = !DILocation(line: 54, column: 13, scope: !97)
!116 = !DILocation(line: 57, column: 17, scope: !117)
!117 = distinct !DILexicalBlock(scope: !85, file: !45, line: 56, column: 13)
!118 = !DILocation(line: 59, column: 17, scope: !117)
!119 = !DILocation(line: 59, column: 22, scope: !117)
!120 = !DILocation(line: 59, column: 31, scope: !117)
!121 = !DILocation(line: 61, column: 9, scope: !86)
!122 = !DILocation(line: 64, column: 5, scope: !54)
!123 = !DILocation(line: 64, column: 13, scope: !54)
!124 = !DILocation(line: 65, column: 1, scope: !54)
!125 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 73, type: !55, scopeLine: 74, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!126 = !DILocalVariable(name: "data", scope: !125, file: !45, line: 75, type: !42)
!127 = !DILocation(line: 75, column: 12, scope: !125)
!128 = !DILocalVariable(name: "funcPtr", scope: !125, file: !45, line: 76, type: !60)
!129 = !DILocation(line: 76, column: 12, scope: !125)
!130 = !DILocalVariable(name: "dataBuffer", scope: !125, file: !45, line: 77, type: !65)
!131 = !DILocation(line: 77, column: 10, scope: !125)
!132 = !DILocation(line: 78, column: 12, scope: !125)
!133 = !DILocation(line: 78, column: 10, scope: !125)
!134 = !DILocation(line: 80, column: 12, scope: !125)
!135 = !DILocation(line: 80, column: 5, scope: !125)
!136 = !DILocation(line: 81, column: 5, scope: !125)
!137 = !DILocation(line: 81, column: 13, scope: !125)
!138 = !DILocation(line: 82, column: 1, scope: !125)
!139 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 86, type: !55, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!140 = !DILocalVariable(name: "data", scope: !139, file: !45, line: 88, type: !42)
!141 = !DILocation(line: 88, column: 12, scope: !139)
!142 = !DILocalVariable(name: "funcPtr", scope: !139, file: !45, line: 89, type: !60)
!143 = !DILocation(line: 89, column: 12, scope: !139)
!144 = !DILocalVariable(name: "dataBuffer", scope: !139, file: !45, line: 90, type: !65)
!145 = !DILocation(line: 90, column: 10, scope: !139)
!146 = !DILocation(line: 91, column: 12, scope: !139)
!147 = !DILocation(line: 91, column: 10, scope: !139)
!148 = !DILocalVariable(name: "dataLen", scope: !149, file: !45, line: 94, type: !73)
!149 = distinct !DILexicalBlock(scope: !139, file: !45, line: 92, column: 5)
!150 = !DILocation(line: 94, column: 16, scope: !149)
!151 = !DILocation(line: 94, column: 33, scope: !149)
!152 = !DILocation(line: 94, column: 26, scope: !149)
!153 = !DILocation(line: 96, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !45, line: 96, column: 13)
!155 = !DILocation(line: 96, column: 16, scope: !154)
!156 = !DILocation(line: 96, column: 25, scope: !154)
!157 = !DILocation(line: 96, column: 13, scope: !149)
!158 = !DILocation(line: 99, column: 23, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !45, line: 99, column: 17)
!160 = distinct !DILexicalBlock(scope: !154, file: !45, line: 97, column: 9)
!161 = !DILocation(line: 99, column: 28, scope: !159)
!162 = !DILocation(line: 99, column: 27, scope: !159)
!163 = !DILocation(line: 99, column: 47, scope: !159)
!164 = !DILocation(line: 99, column: 46, scope: !159)
!165 = !DILocation(line: 99, column: 37, scope: !159)
!166 = !DILocation(line: 99, column: 57, scope: !159)
!167 = !DILocation(line: 99, column: 17, scope: !159)
!168 = !DILocation(line: 99, column: 64, scope: !159)
!169 = !DILocation(line: 99, column: 17, scope: !160)
!170 = !DILocation(line: 103, column: 34, scope: !171)
!171 = distinct !DILexicalBlock(scope: !159, file: !45, line: 100, column: 13)
!172 = !DILocation(line: 103, column: 27, scope: !171)
!173 = !DILocation(line: 103, column: 25, scope: !171)
!174 = !DILocation(line: 104, column: 21, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !45, line: 104, column: 21)
!176 = !DILocation(line: 104, column: 29, scope: !175)
!177 = !DILocation(line: 104, column: 33, scope: !175)
!178 = !DILocation(line: 104, column: 36, scope: !175)
!179 = !DILocation(line: 104, column: 41, scope: !175)
!180 = !DILocation(line: 104, column: 48, scope: !175)
!181 = !DILocation(line: 104, column: 52, scope: !175)
!182 = !DILocation(line: 104, column: 21, scope: !171)
!183 = !DILocation(line: 106, column: 21, scope: !184)
!184 = distinct !DILexicalBlock(scope: !175, file: !45, line: 105, column: 17)
!185 = !DILocation(line: 106, column: 26, scope: !184)
!186 = !DILocation(line: 106, column: 33, scope: !184)
!187 = !DILocation(line: 106, column: 37, scope: !184)
!188 = !DILocation(line: 107, column: 17, scope: !184)
!189 = !DILocation(line: 108, column: 13, scope: !171)
!190 = !DILocation(line: 111, column: 17, scope: !191)
!191 = distinct !DILexicalBlock(scope: !159, file: !45, line: 110, column: 13)
!192 = !DILocation(line: 113, column: 17, scope: !191)
!193 = !DILocation(line: 113, column: 22, scope: !191)
!194 = !DILocation(line: 113, column: 31, scope: !191)
!195 = !DILocation(line: 115, column: 9, scope: !160)
!196 = !DILocation(line: 117, column: 5, scope: !139)
!197 = !DILocation(line: 117, column: 13, scope: !139)
!198 = !DILocation(line: 118, column: 1, scope: !139)
!199 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_65_good", scope: !45, file: !45, line: 120, type: !55, scopeLine: 121, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!200 = !DILocation(line: 122, column: 5, scope: !199)
!201 = !DILocation(line: 123, column: 5, scope: !199)
!202 = !DILocation(line: 124, column: 1, scope: !199)
!203 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_65b_badSink", scope: !49, file: !49, line: 28, type: !61, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!204 = !DILocalVariable(name: "data", arg: 1, scope: !203, file: !49, line: 28, type: !42)
!205 = !DILocation(line: 28, column: 71, scope: !203)
!206 = !DILocalVariable(name: "i", scope: !207, file: !49, line: 31, type: !23)
!207 = distinct !DILexicalBlock(scope: !203, file: !49, line: 30, column: 5)
!208 = !DILocation(line: 31, column: 13, scope: !207)
!209 = !DILocalVariable(name: "n", scope: !207, file: !49, line: 31, type: !23)
!210 = !DILocation(line: 31, column: 16, scope: !207)
!211 = !DILocalVariable(name: "intVariable", scope: !207, file: !49, line: 31, type: !23)
!212 = !DILocation(line: 31, column: 19, scope: !207)
!213 = !DILocation(line: 32, column: 20, scope: !214)
!214 = distinct !DILexicalBlock(scope: !207, file: !49, line: 32, column: 13)
!215 = !DILocation(line: 32, column: 13, scope: !214)
!216 = !DILocation(line: 32, column: 36, scope: !214)
!217 = !DILocation(line: 32, column: 13, scope: !207)
!218 = !DILocation(line: 35, column: 25, scope: !219)
!219 = distinct !DILexicalBlock(scope: !214, file: !49, line: 33, column: 9)
!220 = !DILocation(line: 36, column: 20, scope: !221)
!221 = distinct !DILexicalBlock(scope: !219, file: !49, line: 36, column: 13)
!222 = !DILocation(line: 36, column: 18, scope: !221)
!223 = !DILocation(line: 36, column: 25, scope: !224)
!224 = distinct !DILexicalBlock(scope: !221, file: !49, line: 36, column: 13)
!225 = !DILocation(line: 36, column: 29, scope: !224)
!226 = !DILocation(line: 36, column: 27, scope: !224)
!227 = !DILocation(line: 36, column: 13, scope: !221)
!228 = !DILocation(line: 39, column: 28, scope: !229)
!229 = distinct !DILexicalBlock(scope: !224, file: !49, line: 37, column: 13)
!230 = !DILocation(line: 40, column: 13, scope: !229)
!231 = !DILocation(line: 36, column: 33, scope: !224)
!232 = !DILocation(line: 36, column: 13, scope: !224)
!233 = distinct !{!233, !227, !234, !235}
!234 = !DILocation(line: 40, column: 13, scope: !221)
!235 = !{!"llvm.loop.mustprogress"}
!236 = !DILocation(line: 41, column: 26, scope: !219)
!237 = !DILocation(line: 41, column: 13, scope: !219)
!238 = !DILocation(line: 42, column: 9, scope: !219)
!239 = !DILocation(line: 44, column: 1, scope: !203)
!240 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_65b_goodG2BSink", scope: !49, file: !49, line: 51, type: !61, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!241 = !DILocalVariable(name: "data", arg: 1, scope: !240, file: !49, line: 51, type: !42)
!242 = !DILocation(line: 51, column: 75, scope: !240)
!243 = !DILocalVariable(name: "i", scope: !244, file: !49, line: 54, type: !23)
!244 = distinct !DILexicalBlock(scope: !240, file: !49, line: 53, column: 5)
!245 = !DILocation(line: 54, column: 13, scope: !244)
!246 = !DILocalVariable(name: "n", scope: !244, file: !49, line: 54, type: !23)
!247 = !DILocation(line: 54, column: 16, scope: !244)
!248 = !DILocalVariable(name: "intVariable", scope: !244, file: !49, line: 54, type: !23)
!249 = !DILocation(line: 54, column: 19, scope: !244)
!250 = !DILocation(line: 55, column: 20, scope: !251)
!251 = distinct !DILexicalBlock(scope: !244, file: !49, line: 55, column: 13)
!252 = !DILocation(line: 55, column: 13, scope: !251)
!253 = !DILocation(line: 55, column: 36, scope: !251)
!254 = !DILocation(line: 55, column: 13, scope: !244)
!255 = !DILocation(line: 58, column: 25, scope: !256)
!256 = distinct !DILexicalBlock(scope: !251, file: !49, line: 56, column: 9)
!257 = !DILocation(line: 59, column: 20, scope: !258)
!258 = distinct !DILexicalBlock(scope: !256, file: !49, line: 59, column: 13)
!259 = !DILocation(line: 59, column: 18, scope: !258)
!260 = !DILocation(line: 59, column: 25, scope: !261)
!261 = distinct !DILexicalBlock(scope: !258, file: !49, line: 59, column: 13)
!262 = !DILocation(line: 59, column: 29, scope: !261)
!263 = !DILocation(line: 59, column: 27, scope: !261)
!264 = !DILocation(line: 59, column: 13, scope: !258)
!265 = !DILocation(line: 62, column: 28, scope: !266)
!266 = distinct !DILexicalBlock(scope: !261, file: !49, line: 60, column: 13)
!267 = !DILocation(line: 63, column: 13, scope: !266)
!268 = !DILocation(line: 59, column: 33, scope: !261)
!269 = !DILocation(line: 59, column: 13, scope: !261)
!270 = distinct !{!270, !264, !271, !235}
!271 = !DILocation(line: 63, column: 13, scope: !258)
!272 = !DILocation(line: 64, column: 26, scope: !256)
!273 = !DILocation(line: 64, column: 13, scope: !256)
!274 = !DILocation(line: 65, column: 9, scope: !256)
!275 = !DILocation(line: 67, column: 1, scope: !240)
!276 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_65b_goodB2GSink", scope: !49, file: !49, line: 70, type: !61, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!277 = !DILocalVariable(name: "data", arg: 1, scope: !276, file: !49, line: 70, type: !42)
!278 = !DILocation(line: 70, column: 75, scope: !276)
!279 = !DILocalVariable(name: "i", scope: !280, file: !49, line: 73, type: !23)
!280 = distinct !DILexicalBlock(scope: !276, file: !49, line: 72, column: 5)
!281 = !DILocation(line: 73, column: 13, scope: !280)
!282 = !DILocalVariable(name: "n", scope: !280, file: !49, line: 73, type: !23)
!283 = !DILocation(line: 73, column: 16, scope: !280)
!284 = !DILocalVariable(name: "intVariable", scope: !280, file: !49, line: 73, type: !23)
!285 = !DILocation(line: 73, column: 19, scope: !280)
!286 = !DILocation(line: 74, column: 20, scope: !287)
!287 = distinct !DILexicalBlock(scope: !280, file: !49, line: 74, column: 13)
!288 = !DILocation(line: 74, column: 13, scope: !287)
!289 = !DILocation(line: 74, column: 36, scope: !287)
!290 = !DILocation(line: 74, column: 13, scope: !280)
!291 = !DILocation(line: 77, column: 17, scope: !292)
!292 = distinct !DILexicalBlock(scope: !293, file: !49, line: 77, column: 17)
!293 = distinct !DILexicalBlock(scope: !287, file: !49, line: 75, column: 9)
!294 = !DILocation(line: 77, column: 19, scope: !292)
!295 = !DILocation(line: 77, column: 17, scope: !293)
!296 = !DILocation(line: 79, column: 29, scope: !297)
!297 = distinct !DILexicalBlock(scope: !292, file: !49, line: 78, column: 13)
!298 = !DILocation(line: 80, column: 24, scope: !299)
!299 = distinct !DILexicalBlock(scope: !297, file: !49, line: 80, column: 17)
!300 = !DILocation(line: 80, column: 22, scope: !299)
!301 = !DILocation(line: 80, column: 29, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !49, line: 80, column: 17)
!303 = !DILocation(line: 80, column: 33, scope: !302)
!304 = !DILocation(line: 80, column: 31, scope: !302)
!305 = !DILocation(line: 80, column: 17, scope: !299)
!306 = !DILocation(line: 83, column: 32, scope: !307)
!307 = distinct !DILexicalBlock(scope: !302, file: !49, line: 81, column: 17)
!308 = !DILocation(line: 84, column: 17, scope: !307)
!309 = !DILocation(line: 80, column: 37, scope: !302)
!310 = !DILocation(line: 80, column: 17, scope: !302)
!311 = distinct !{!311, !305, !312, !235}
!312 = !DILocation(line: 84, column: 17, scope: !299)
!313 = !DILocation(line: 85, column: 30, scope: !297)
!314 = !DILocation(line: 85, column: 17, scope: !297)
!315 = !DILocation(line: 86, column: 13, scope: !297)
!316 = !DILocation(line: 87, column: 9, scope: !293)
!317 = !DILocation(line: 89, column: 1, scope: !276)
!318 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !61, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!319 = !DILocalVariable(name: "line", arg: 1, scope: !318, file: !3, line: 11, type: !42)
!320 = !DILocation(line: 11, column: 25, scope: !318)
!321 = !DILocation(line: 13, column: 1, scope: !318)
!322 = !DILocation(line: 14, column: 8, scope: !323)
!323 = distinct !DILexicalBlock(scope: !318, file: !3, line: 14, column: 8)
!324 = !DILocation(line: 14, column: 13, scope: !323)
!325 = !DILocation(line: 14, column: 8, scope: !318)
!326 = !DILocation(line: 16, column: 24, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !3, line: 15, column: 5)
!328 = !DILocation(line: 16, column: 9, scope: !327)
!329 = !DILocation(line: 17, column: 5, scope: !327)
!330 = !DILocation(line: 18, column: 5, scope: !318)
!331 = !DILocation(line: 19, column: 1, scope: !318)
!332 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !61, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!333 = !DILocalVariable(name: "line", arg: 1, scope: !332, file: !3, line: 20, type: !42)
!334 = !DILocation(line: 20, column: 29, scope: !332)
!335 = !DILocation(line: 22, column: 8, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !3, line: 22, column: 8)
!337 = !DILocation(line: 22, column: 13, scope: !336)
!338 = !DILocation(line: 22, column: 8, scope: !332)
!339 = !DILocation(line: 24, column: 24, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !3, line: 23, column: 5)
!341 = !DILocation(line: 24, column: 9, scope: !340)
!342 = !DILocation(line: 25, column: 5, scope: !340)
!343 = !DILocation(line: 26, column: 1, scope: !332)
!344 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !345, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !74, line: 74, baseType: !23)
!349 = !DILocalVariable(name: "line", arg: 1, scope: !344, file: !3, line: 27, type: !347)
!350 = !DILocation(line: 27, column: 29, scope: !344)
!351 = !DILocation(line: 29, column: 8, scope: !352)
!352 = distinct !DILexicalBlock(scope: !344, file: !3, line: 29, column: 8)
!353 = !DILocation(line: 29, column: 13, scope: !352)
!354 = !DILocation(line: 29, column: 8, scope: !344)
!355 = !DILocation(line: 31, column: 27, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !3, line: 30, column: 5)
!357 = !DILocation(line: 31, column: 9, scope: !356)
!358 = !DILocation(line: 32, column: 5, scope: !356)
!359 = !DILocation(line: 33, column: 1, scope: !344)
!360 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !361, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !23}
!363 = !DILocalVariable(name: "intNumber", arg: 1, scope: !360, file: !3, line: 35, type: !23)
!364 = !DILocation(line: 35, column: 24, scope: !360)
!365 = !DILocation(line: 37, column: 20, scope: !360)
!366 = !DILocation(line: 37, column: 5, scope: !360)
!367 = !DILocation(line: 38, column: 1, scope: !360)
!368 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !369, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !371}
!371 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!372 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !368, file: !3, line: 40, type: !371)
!373 = !DILocation(line: 40, column: 28, scope: !368)
!374 = !DILocation(line: 42, column: 21, scope: !368)
!375 = !DILocation(line: 42, column: 5, scope: !368)
!376 = !DILocation(line: 43, column: 1, scope: !368)
!377 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !378, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !380}
!380 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!381 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !377, file: !3, line: 45, type: !380)
!382 = !DILocation(line: 45, column: 28, scope: !377)
!383 = !DILocation(line: 47, column: 20, scope: !377)
!384 = !DILocation(line: 47, column: 5, scope: !377)
!385 = !DILocation(line: 48, column: 1, scope: !377)
!386 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !387, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !389}
!389 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!390 = !DILocalVariable(name: "longNumber", arg: 1, scope: !386, file: !3, line: 50, type: !389)
!391 = !DILocation(line: 50, column: 26, scope: !386)
!392 = !DILocation(line: 52, column: 21, scope: !386)
!393 = !DILocation(line: 52, column: 5, scope: !386)
!394 = !DILocation(line: 53, column: 1, scope: !386)
!395 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !396, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !398}
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !399, line: 27, baseType: !400)
!399 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !401, line: 44, baseType: !389)
!401 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!402 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !395, file: !3, line: 55, type: !398)
!403 = !DILocation(line: 55, column: 33, scope: !395)
!404 = !DILocation(line: 57, column: 29, scope: !395)
!405 = !DILocation(line: 57, column: 5, scope: !395)
!406 = !DILocation(line: 58, column: 1, scope: !395)
!407 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !408, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !73}
!410 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !407, file: !3, line: 60, type: !73)
!411 = !DILocation(line: 60, column: 29, scope: !407)
!412 = !DILocation(line: 62, column: 21, scope: !407)
!413 = !DILocation(line: 62, column: 5, scope: !407)
!414 = !DILocation(line: 63, column: 1, scope: !407)
!415 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !416, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !43}
!418 = !DILocalVariable(name: "charHex", arg: 1, scope: !415, file: !3, line: 65, type: !43)
!419 = !DILocation(line: 65, column: 29, scope: !415)
!420 = !DILocation(line: 67, column: 22, scope: !415)
!421 = !DILocation(line: 67, column: 5, scope: !415)
!422 = !DILocation(line: 68, column: 1, scope: !415)
!423 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !424, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !348}
!426 = !DILocalVariable(name: "wideChar", arg: 1, scope: !423, file: !3, line: 70, type: !348)
!427 = !DILocation(line: 70, column: 29, scope: !423)
!428 = !DILocalVariable(name: "s", scope: !423, file: !3, line: 74, type: !429)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 64, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 2)
!432 = !DILocation(line: 74, column: 13, scope: !423)
!433 = !DILocation(line: 75, column: 16, scope: !423)
!434 = !DILocation(line: 75, column: 9, scope: !423)
!435 = !DILocation(line: 75, column: 14, scope: !423)
!436 = !DILocation(line: 76, column: 9, scope: !423)
!437 = !DILocation(line: 76, column: 14, scope: !423)
!438 = !DILocation(line: 77, column: 21, scope: !423)
!439 = !DILocation(line: 77, column: 5, scope: !423)
!440 = !DILocation(line: 78, column: 1, scope: !423)
!441 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !442, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !7}
!444 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !441, file: !3, line: 80, type: !7)
!445 = !DILocation(line: 80, column: 33, scope: !441)
!446 = !DILocation(line: 82, column: 20, scope: !441)
!447 = !DILocation(line: 82, column: 5, scope: !441)
!448 = !DILocation(line: 83, column: 1, scope: !441)
!449 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !450, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !25}
!452 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !449, file: !3, line: 85, type: !25)
!453 = !DILocation(line: 85, column: 45, scope: !449)
!454 = !DILocation(line: 87, column: 22, scope: !449)
!455 = !DILocation(line: 87, column: 5, scope: !449)
!456 = !DILocation(line: 88, column: 1, scope: !449)
!457 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !458, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !460}
!460 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!461 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !457, file: !3, line: 90, type: !460)
!462 = !DILocation(line: 90, column: 29, scope: !457)
!463 = !DILocation(line: 92, column: 20, scope: !457)
!464 = !DILocation(line: 92, column: 5, scope: !457)
!465 = !DILocation(line: 93, column: 1, scope: !457)
!466 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !467, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !471, line: 100, baseType: !472)
!471 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_015/source_code")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !471, line: 96, size: 64, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !472, file: !471, line: 98, baseType: !23, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !472, file: !471, line: 99, baseType: !23, size: 32, offset: 32)
!476 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !466, file: !3, line: 95, type: !469)
!477 = !DILocation(line: 95, column: 40, scope: !466)
!478 = !DILocation(line: 97, column: 26, scope: !466)
!479 = !DILocation(line: 97, column: 47, scope: !466)
!480 = !DILocation(line: 97, column: 55, scope: !466)
!481 = !DILocation(line: 97, column: 76, scope: !466)
!482 = !DILocation(line: 97, column: 5, scope: !466)
!483 = !DILocation(line: 98, column: 1, scope: !466)
!484 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !485, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !487, !73}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!488 = !DILocalVariable(name: "bytes", arg: 1, scope: !484, file: !3, line: 100, type: !487)
!489 = !DILocation(line: 100, column: 38, scope: !484)
!490 = !DILocalVariable(name: "numBytes", arg: 2, scope: !484, file: !3, line: 100, type: !73)
!491 = !DILocation(line: 100, column: 52, scope: !484)
!492 = !DILocalVariable(name: "i", scope: !484, file: !3, line: 102, type: !73)
!493 = !DILocation(line: 102, column: 12, scope: !484)
!494 = !DILocation(line: 103, column: 12, scope: !495)
!495 = distinct !DILexicalBlock(scope: !484, file: !3, line: 103, column: 5)
!496 = !DILocation(line: 103, column: 10, scope: !495)
!497 = !DILocation(line: 103, column: 17, scope: !498)
!498 = distinct !DILexicalBlock(scope: !495, file: !3, line: 103, column: 5)
!499 = !DILocation(line: 103, column: 21, scope: !498)
!500 = !DILocation(line: 103, column: 19, scope: !498)
!501 = !DILocation(line: 103, column: 5, scope: !495)
!502 = !DILocation(line: 105, column: 24, scope: !503)
!503 = distinct !DILexicalBlock(scope: !498, file: !3, line: 104, column: 5)
!504 = !DILocation(line: 105, column: 30, scope: !503)
!505 = !DILocation(line: 105, column: 9, scope: !503)
!506 = !DILocation(line: 106, column: 5, scope: !503)
!507 = !DILocation(line: 103, column: 31, scope: !498)
!508 = !DILocation(line: 103, column: 5, scope: !498)
!509 = distinct !{!509, !501, !510, !235}
!510 = !DILocation(line: 106, column: 5, scope: !495)
!511 = !DILocation(line: 107, column: 5, scope: !484)
!512 = !DILocation(line: 108, column: 1, scope: !484)
!513 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !514, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!514 = !DISubroutineType(types: !515)
!515 = !{!73, !487, !73, !42}
!516 = !DILocalVariable(name: "bytes", arg: 1, scope: !513, file: !3, line: 113, type: !487)
!517 = !DILocation(line: 113, column: 39, scope: !513)
!518 = !DILocalVariable(name: "numBytes", arg: 2, scope: !513, file: !3, line: 113, type: !73)
!519 = !DILocation(line: 113, column: 53, scope: !513)
!520 = !DILocalVariable(name: "hex", arg: 3, scope: !513, file: !3, line: 113, type: !42)
!521 = !DILocation(line: 113, column: 71, scope: !513)
!522 = !DILocalVariable(name: "numWritten", scope: !513, file: !3, line: 115, type: !73)
!523 = !DILocation(line: 115, column: 12, scope: !513)
!524 = !DILocation(line: 121, column: 5, scope: !513)
!525 = !DILocation(line: 121, column: 12, scope: !513)
!526 = !DILocation(line: 121, column: 25, scope: !513)
!527 = !DILocation(line: 121, column: 23, scope: !513)
!528 = !DILocation(line: 121, column: 34, scope: !513)
!529 = !DILocation(line: 121, column: 37, scope: !513)
!530 = !DILocation(line: 121, column: 67, scope: !513)
!531 = !DILocation(line: 121, column: 70, scope: !513)
!532 = !DILocation(line: 0, scope: !513)
!533 = !DILocalVariable(name: "byte", scope: !534, file: !3, line: 123, type: !23)
!534 = distinct !DILexicalBlock(scope: !513, file: !3, line: 122, column: 5)
!535 = !DILocation(line: 123, column: 13, scope: !534)
!536 = !DILocation(line: 124, column: 17, scope: !534)
!537 = !DILocation(line: 124, column: 25, scope: !534)
!538 = !DILocation(line: 124, column: 23, scope: !534)
!539 = !DILocation(line: 124, column: 9, scope: !534)
!540 = !DILocation(line: 125, column: 45, scope: !534)
!541 = !DILocation(line: 125, column: 29, scope: !534)
!542 = !DILocation(line: 125, column: 9, scope: !534)
!543 = !DILocation(line: 125, column: 15, scope: !534)
!544 = !DILocation(line: 125, column: 27, scope: !534)
!545 = !DILocation(line: 126, column: 9, scope: !534)
!546 = distinct !{!546, !524, !547, !235}
!547 = !DILocation(line: 127, column: 5, scope: !513)
!548 = !DILocation(line: 129, column: 12, scope: !513)
!549 = !DILocation(line: 129, column: 5, scope: !513)
!550 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !551, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!551 = !DISubroutineType(types: !552)
!552 = !{!73, !487, !73, !347}
!553 = !DILocalVariable(name: "bytes", arg: 1, scope: !550, file: !3, line: 135, type: !487)
!554 = !DILocation(line: 135, column: 41, scope: !550)
!555 = !DILocalVariable(name: "numBytes", arg: 2, scope: !550, file: !3, line: 135, type: !73)
!556 = !DILocation(line: 135, column: 55, scope: !550)
!557 = !DILocalVariable(name: "hex", arg: 3, scope: !550, file: !3, line: 135, type: !347)
!558 = !DILocation(line: 135, column: 76, scope: !550)
!559 = !DILocalVariable(name: "numWritten", scope: !550, file: !3, line: 137, type: !73)
!560 = !DILocation(line: 137, column: 12, scope: !550)
!561 = !DILocation(line: 143, column: 5, scope: !550)
!562 = !DILocation(line: 143, column: 12, scope: !550)
!563 = !DILocation(line: 143, column: 25, scope: !550)
!564 = !DILocation(line: 143, column: 23, scope: !550)
!565 = !DILocation(line: 143, column: 34, scope: !550)
!566 = !DILocation(line: 143, column: 47, scope: !550)
!567 = !DILocation(line: 143, column: 55, scope: !550)
!568 = !DILocation(line: 143, column: 53, scope: !550)
!569 = !DILocation(line: 143, column: 37, scope: !550)
!570 = !DILocation(line: 143, column: 68, scope: !550)
!571 = !DILocation(line: 143, column: 81, scope: !550)
!572 = !DILocation(line: 143, column: 89, scope: !550)
!573 = !DILocation(line: 143, column: 87, scope: !550)
!574 = !DILocation(line: 143, column: 100, scope: !550)
!575 = !DILocation(line: 143, column: 71, scope: !550)
!576 = !DILocation(line: 0, scope: !550)
!577 = !DILocalVariable(name: "byte", scope: !578, file: !3, line: 145, type: !23)
!578 = distinct !DILexicalBlock(scope: !550, file: !3, line: 144, column: 5)
!579 = !DILocation(line: 145, column: 13, scope: !578)
!580 = !DILocation(line: 146, column: 18, scope: !578)
!581 = !DILocation(line: 146, column: 26, scope: !578)
!582 = !DILocation(line: 146, column: 24, scope: !578)
!583 = !DILocation(line: 146, column: 9, scope: !578)
!584 = !DILocation(line: 147, column: 45, scope: !578)
!585 = !DILocation(line: 147, column: 29, scope: !578)
!586 = !DILocation(line: 147, column: 9, scope: !578)
!587 = !DILocation(line: 147, column: 15, scope: !578)
!588 = !DILocation(line: 147, column: 27, scope: !578)
!589 = !DILocation(line: 148, column: 9, scope: !578)
!590 = distinct !{!590, !561, !591, !235}
!591 = !DILocation(line: 149, column: 5, scope: !550)
!592 = !DILocation(line: 151, column: 12, scope: !550)
!593 = !DILocation(line: 151, column: 5, scope: !550)
!594 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !595, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!595 = !DISubroutineType(types: !596)
!596 = !{!23}
!597 = !DILocation(line: 158, column: 5, scope: !594)
!598 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !595, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!599 = !DILocation(line: 163, column: 5, scope: !598)
!600 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !595, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!601 = !DILocation(line: 168, column: 13, scope: !600)
!602 = !DILocation(line: 168, column: 20, scope: !600)
!603 = !DILocation(line: 168, column: 5, scope: !600)
!604 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!605 = !DILocation(line: 187, column: 16, scope: !604)
!606 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!607 = !DILocation(line: 188, column: 16, scope: !606)
!608 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!609 = !DILocation(line: 189, column: 16, scope: !608)
!610 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!611 = !DILocation(line: 190, column: 16, scope: !610)
!612 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!613 = !DILocation(line: 191, column: 16, scope: !612)
!614 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!615 = !DILocation(line: 192, column: 16, scope: !614)
!616 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!617 = !DILocation(line: 193, column: 16, scope: !616)
!618 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!619 = !DILocation(line: 194, column: 16, scope: !618)
!620 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!621 = !DILocation(line: 195, column: 16, scope: !620)
!622 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!623 = !DILocation(line: 198, column: 15, scope: !622)
!624 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!625 = !DILocation(line: 199, column: 15, scope: !624)
!626 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!627 = !DILocation(line: 200, column: 15, scope: !626)
!628 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!629 = !DILocation(line: 201, column: 15, scope: !628)
!630 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!631 = !DILocation(line: 202, column: 15, scope: !630)
!632 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!633 = !DILocation(line: 203, column: 15, scope: !632)
!634 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!635 = !DILocation(line: 204, column: 15, scope: !634)
!636 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!637 = !DILocation(line: 205, column: 15, scope: !636)
!638 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!639 = !DILocation(line: 206, column: 15, scope: !638)
