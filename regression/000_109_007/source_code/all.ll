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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_51_bad() #0 !dbg !54 {
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
  %16 = load i8*, i8** %data, align 8, !dbg !117
  call void @CWE606_Unchecked_Loop_Condition__char_console_51b_badSink(i8* %16), !dbg !118
  ret void, !dbg !119
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !120 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !123, metadata !DIExpression()), !dbg !124
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !124
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !124
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !125
  store i8* %arraydecay, i8** %data, align 8, !dbg !126
  %1 = load i8*, i8** %data, align 8, !dbg !127
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !128
  %2 = load i8*, i8** %data, align 8, !dbg !129
  call void @CWE606_Unchecked_Loop_Condition__char_console_51b_goodG2BSink(i8* %2), !dbg !130
  ret void, !dbg !131
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !132 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !135, metadata !DIExpression()), !dbg !136
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !136
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !136
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !137
  store i8* %arraydecay, i8** %data, align 8, !dbg !138
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !139, metadata !DIExpression()), !dbg !141
  %1 = load i8*, i8** %data, align 8, !dbg !142
  %call = call i64 @strlen(i8* %1) #7, !dbg !143
  store i64 %call, i64* %dataLen, align 8, !dbg !141
  %2 = load i64, i64* %dataLen, align 8, !dbg !144
  %sub = sub i64 100, %2, !dbg !146
  %cmp = icmp ugt i64 %sub, 1, !dbg !147
  br i1 %cmp, label %if.then, label %if.end18, !dbg !148

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !149
  %4 = load i64, i64* %dataLen, align 8, !dbg !152
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !153
  %5 = load i64, i64* %dataLen, align 8, !dbg !154
  %sub1 = sub i64 100, %5, !dbg !155
  %conv = trunc i64 %sub1 to i32, !dbg !156
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !157
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !158
  %cmp3 = icmp ne i8* %call2, null, !dbg !159
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !160

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !161
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !163
  store i64 %call6, i64* %dataLen, align 8, !dbg !164
  %8 = load i64, i64* %dataLen, align 8, !dbg !165
  %cmp7 = icmp ugt i64 %8, 0, !dbg !167
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !168

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !169
  %10 = load i64, i64* %dataLen, align 8, !dbg !170
  %sub9 = sub i64 %10, 1, !dbg !171
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !169
  %11 = load i8, i8* %arrayidx, align 1, !dbg !169
  %conv10 = sext i8 %11 to i32, !dbg !169
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !172
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !173

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !174
  %13 = load i64, i64* %dataLen, align 8, !dbg !176
  %sub14 = sub i64 %13, 1, !dbg !177
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !174
  store i8 0, i8* %arrayidx15, align 1, !dbg !178
  br label %if.end, !dbg !179

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !180

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !181
  %14 = load i8*, i8** %data, align 8, !dbg !183
  %15 = load i64, i64* %dataLen, align 8, !dbg !184
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !183
  store i8 0, i8* %arrayidx16, align 1, !dbg !185
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !186

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !187
  call void @CWE606_Unchecked_Loop_Condition__char_console_51b_goodB2GSink(i8* %16), !dbg !188
  ret void, !dbg !189
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_51_good() #0 !dbg !190 {
entry:
  call void @goodG2B(), !dbg !191
  call void @goodB2G(), !dbg !192
  ret void, !dbg !193
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_51b_badSink(i8* %data) #0 !dbg !194 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata i32* %i, metadata !199, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata i32* %n, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !204, metadata !DIExpression()), !dbg !205
  %0 = load i8*, i8** %data.addr, align 8, !dbg !206
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !208
  %cmp = icmp eq i32 %call, 1, !dbg !209
  br i1 %cmp, label %if.then, label %if.end, !dbg !210

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !211
  store i32 0, i32* %i, align 4, !dbg !213
  br label %for.cond, !dbg !215

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !216
  %2 = load i32, i32* %n, align 4, !dbg !218
  %cmp1 = icmp slt i32 %1, %2, !dbg !219
  br i1 %cmp1, label %for.body, label %for.end, !dbg !220

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !221
  %inc = add nsw i32 %3, 1, !dbg !221
  store i32 %inc, i32* %intVariable, align 4, !dbg !221
  br label %for.inc, !dbg !223

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !224
  %inc2 = add nsw i32 %4, 1, !dbg !224
  store i32 %inc2, i32* %i, align 4, !dbg !224
  br label %for.cond, !dbg !225, !llvm.loop !226

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !229
  call void @printIntLine(i32 %5), !dbg !230
  br label %if.end, !dbg !231

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !232
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_51b_goodG2BSink(i8* %data) #0 !dbg !233 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !234, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i32* %i, metadata !236, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata i32* %n, metadata !239, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !241, metadata !DIExpression()), !dbg !242
  %0 = load i8*, i8** %data.addr, align 8, !dbg !243
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !245
  %cmp = icmp eq i32 %call, 1, !dbg !246
  br i1 %cmp, label %if.then, label %if.end, !dbg !247

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !248
  store i32 0, i32* %i, align 4, !dbg !250
  br label %for.cond, !dbg !252

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !253
  %2 = load i32, i32* %n, align 4, !dbg !255
  %cmp1 = icmp slt i32 %1, %2, !dbg !256
  br i1 %cmp1, label %for.body, label %for.end, !dbg !257

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !258
  %inc = add nsw i32 %3, 1, !dbg !258
  store i32 %inc, i32* %intVariable, align 4, !dbg !258
  br label %for.inc, !dbg !260

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !261
  %inc2 = add nsw i32 %4, 1, !dbg !261
  store i32 %inc2, i32* %i, align 4, !dbg !261
  br label %for.cond, !dbg !262, !llvm.loop !263

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !265
  call void @printIntLine(i32 %5), !dbg !266
  br label %if.end, !dbg !267

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !268
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_51b_goodB2GSink(i8* %data) #0 !dbg !269 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !270, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.declare(metadata i32* %i, metadata !272, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.declare(metadata i32* %n, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !277, metadata !DIExpression()), !dbg !278
  %0 = load i8*, i8** %data.addr, align 8, !dbg !279
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !281
  %cmp = icmp eq i32 %call, 1, !dbg !282
  br i1 %cmp, label %if.then, label %if.end5, !dbg !283

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !284
  %cmp1 = icmp slt i32 %1, 10000, !dbg !287
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !288

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !289
  store i32 0, i32* %i, align 4, !dbg !291
  br label %for.cond, !dbg !293

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !294
  %3 = load i32, i32* %n, align 4, !dbg !296
  %cmp3 = icmp slt i32 %2, %3, !dbg !297
  br i1 %cmp3, label %for.body, label %for.end, !dbg !298

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !299
  %inc = add nsw i32 %4, 1, !dbg !299
  store i32 %inc, i32* %intVariable, align 4, !dbg !299
  br label %for.inc, !dbg !301

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !302
  %inc4 = add nsw i32 %5, 1, !dbg !302
  store i32 %inc4, i32* %i, align 4, !dbg !302
  br label %for.cond, !dbg !303, !llvm.loop !304

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !306
  call void @printIntLine(i32 %6), !dbg !307
  br label %if.end, !dbg !308

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !309

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !310
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !311 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !312, metadata !DIExpression()), !dbg !313
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !314
  %0 = load i8*, i8** %line.addr, align 8, !dbg !315
  %cmp = icmp ne i8* %0, null, !dbg !317
  br i1 %cmp, label %if.then, label %if.end, !dbg !318

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !319
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !321
  br label %if.end, !dbg !322

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !323
  ret void, !dbg !324
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !325 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !326, metadata !DIExpression()), !dbg !327
  %0 = load i8*, i8** %line.addr, align 8, !dbg !328
  %cmp = icmp ne i8* %0, null, !dbg !330
  br i1 %cmp, label %if.then, label %if.end, !dbg !331

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !332
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !334
  br label %if.end, !dbg !335

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !337 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = load i32*, i32** %line.addr, align 8, !dbg !344
  %cmp = icmp ne i32* %0, null, !dbg !346
  br i1 %cmp, label %if.then, label %if.end, !dbg !347

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !348
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.12, i64 0, i64 0), i32* %1), !dbg !350
  br label %if.end, !dbg !351

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !352
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !353 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !356, metadata !DIExpression()), !dbg !357
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !358
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !359
  ret void, !dbg !360
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !361 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !365, metadata !DIExpression()), !dbg !366
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !367
  %conv = sext i16 %0 to i32, !dbg !367
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !368
  ret void, !dbg !369
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !370 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !374, metadata !DIExpression()), !dbg !375
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !376
  %conv = fpext float %0 to double, !dbg !376
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !377
  ret void, !dbg !378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !379 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !386
  ret void, !dbg !387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !388 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !395, metadata !DIExpression()), !dbg !396
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !397
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !398
  ret void, !dbg !399
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !400 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !408 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !411, metadata !DIExpression()), !dbg !412
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !413
  %conv = sext i8 %0 to i32, !dbg !413
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !414
  ret void, !dbg !415
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !416 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !419, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !421, metadata !DIExpression()), !dbg !425
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !426
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !427
  store i32 %0, i32* %arrayidx, align 4, !dbg !428
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !429
  store i32 0, i32* %arrayidx1, align 4, !dbg !430
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !431
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.15, i64 0, i64 0), i32* %arraydecay), !dbg !432
  ret void, !dbg !433
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !434 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !437, metadata !DIExpression()), !dbg !438
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !439
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !440
  ret void, !dbg !441
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !442 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !445, metadata !DIExpression()), !dbg !446
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !447
  %conv = zext i8 %0 to i32, !dbg !447
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !448
  ret void, !dbg !449
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !450 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !454, metadata !DIExpression()), !dbg !455
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !456
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !457
  ret void, !dbg !458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !459 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !469, metadata !DIExpression()), !dbg !470
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !471
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !472
  %1 = load i32, i32* %intOne, align 4, !dbg !472
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !473
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !474
  %3 = load i32, i32* %intTwo, align 4, !dbg !474
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !475
  ret void, !dbg !476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !477 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !481, metadata !DIExpression()), !dbg !482
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !483, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.declare(metadata i64* %i, metadata !485, metadata !DIExpression()), !dbg !486
  store i64 0, i64* %i, align 8, !dbg !487
  br label %for.cond, !dbg !489

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !490
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !492
  %cmp = icmp ult i64 %0, %1, !dbg !493
  br i1 %cmp, label %for.body, label %for.end, !dbg !494

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !495
  %3 = load i64, i64* %i, align 8, !dbg !497
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !495
  %4 = load i8, i8* %arrayidx, align 1, !dbg !495
  %conv = zext i8 %4 to i32, !dbg !495
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !498
  br label %for.inc, !dbg !499

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !500
  %inc = add i64 %5, 1, !dbg !500
  store i64 %inc, i64* %i, align 8, !dbg !500
  br label %for.cond, !dbg !501, !llvm.loop !502

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !504
  ret void, !dbg !505
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !506 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !509, metadata !DIExpression()), !dbg !510
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !511, metadata !DIExpression()), !dbg !512
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !513, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !515, metadata !DIExpression()), !dbg !516
  store i64 0, i64* %numWritten, align 8, !dbg !516
  br label %while.cond, !dbg !517

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !518
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !519
  %cmp = icmp ult i64 %0, %1, !dbg !520
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !521

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !522
  %2 = load i16*, i16** %call, align 8, !dbg !522
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !522
  %4 = load i64, i64* %numWritten, align 8, !dbg !522
  %mul = mul i64 2, %4, !dbg !522
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !522
  %5 = load i8, i8* %arrayidx, align 1, !dbg !522
  %conv = sext i8 %5 to i32, !dbg !522
  %idxprom = sext i32 %conv to i64, !dbg !522
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !522
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !522
  %conv2 = zext i16 %6 to i32, !dbg !522
  %and = and i32 %conv2, 4096, !dbg !522
  %tobool = icmp ne i32 %and, 0, !dbg !522
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !523

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !524
  %7 = load i16*, i16** %call3, align 8, !dbg !524
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !524
  %9 = load i64, i64* %numWritten, align 8, !dbg !524
  %mul4 = mul i64 2, %9, !dbg !524
  %add = add i64 %mul4, 1, !dbg !524
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !524
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !524
  %conv6 = sext i8 %10 to i32, !dbg !524
  %idxprom7 = sext i32 %conv6 to i64, !dbg !524
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !524
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !524
  %conv9 = zext i16 %11 to i32, !dbg !524
  %and10 = and i32 %conv9, 4096, !dbg !524
  %tobool11 = icmp ne i32 %and10, 0, !dbg !523
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !525
  br i1 %12, label %while.body, label %while.end, !dbg !517

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !526, metadata !DIExpression()), !dbg !528
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !529
  %14 = load i64, i64* %numWritten, align 8, !dbg !530
  %mul12 = mul i64 2, %14, !dbg !531
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !529
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !532
  %15 = load i32, i32* %byte, align 4, !dbg !533
  %conv15 = trunc i32 %15 to i8, !dbg !534
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !535
  %17 = load i64, i64* %numWritten, align 8, !dbg !536
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !535
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !537
  %18 = load i64, i64* %numWritten, align 8, !dbg !538
  %inc = add i64 %18, 1, !dbg !538
  store i64 %inc, i64* %numWritten, align 8, !dbg !538
  br label %while.cond, !dbg !517, !llvm.loop !539

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !541
  ret i64 %19, !dbg !542
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !543 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !546, metadata !DIExpression()), !dbg !547
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !548, metadata !DIExpression()), !dbg !549
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !550, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !552, metadata !DIExpression()), !dbg !553
  store i64 0, i64* %numWritten, align 8, !dbg !553
  br label %while.cond, !dbg !554

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !555
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !556
  %cmp = icmp ult i64 %0, %1, !dbg !557
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !558

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !559
  %3 = load i64, i64* %numWritten, align 8, !dbg !560
  %mul = mul i64 2, %3, !dbg !561
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !559
  %4 = load i32, i32* %arrayidx, align 4, !dbg !559
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !562
  %tobool = icmp ne i32 %call, 0, !dbg !562
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !563

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !564
  %6 = load i64, i64* %numWritten, align 8, !dbg !565
  %mul1 = mul i64 2, %6, !dbg !566
  %add = add i64 %mul1, 1, !dbg !567
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !564
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !564
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !568
  %tobool4 = icmp ne i32 %call3, 0, !dbg !563
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !569
  br i1 %8, label %while.body, label %while.end, !dbg !554

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !570, metadata !DIExpression()), !dbg !572
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !573
  %10 = load i64, i64* %numWritten, align 8, !dbg !574
  %mul5 = mul i64 2, %10, !dbg !575
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !573
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !576
  %11 = load i32, i32* %byte, align 4, !dbg !577
  %conv = trunc i32 %11 to i8, !dbg !578
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !579
  %13 = load i64, i64* %numWritten, align 8, !dbg !580
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !579
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !581
  %14 = load i64, i64* %numWritten, align 8, !dbg !582
  %inc = add i64 %14, 1, !dbg !582
  store i64 %inc, i64* %numWritten, align 8, !dbg !582
  br label %while.cond, !dbg !554, !llvm.loop !583

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !585
  ret i64 %15, !dbg !586
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !587 {
entry:
  ret i32 1, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !591 {
entry:
  ret i32 0, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !593 {
entry:
  %call = call i32 @rand() #8, !dbg !594
  %rem = srem i32 %call, 2, !dbg !595
  ret i32 %rem, !dbg !596
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !597 {
entry:
  ret void, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !599 {
entry:
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !601 {
entry:
  ret void, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !603 {
entry:
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !605 {
entry:
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !607 {
entry:
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !609 {
entry:
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !611 {
entry:
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !613 {
entry:
  ret void, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !615 {
entry:
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !617 {
entry:
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !619 {
entry:
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !621 {
entry:
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !623 {
entry:
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !625 {
entry:
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !627 {
entry:
  ret void, !dbg !628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !629 {
entry:
  ret void, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !631 {
entry:
  ret void, !dbg !632
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_007/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_51a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_007/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_51b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_007/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_51_bad", scope: !45, file: !45, line: 31, type: !55, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!117 = !DILocation(line: 61, column: 63, scope: !54)
!118 = !DILocation(line: 61, column: 5, scope: !54)
!119 = !DILocation(line: 62, column: 1, scope: !54)
!120 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 70, type: !55, scopeLine: 71, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!121 = !DILocalVariable(name: "data", scope: !120, file: !45, line: 72, type: !42)
!122 = !DILocation(line: 72, column: 12, scope: !120)
!123 = !DILocalVariable(name: "dataBuffer", scope: !120, file: !45, line: 73, type: !60)
!124 = !DILocation(line: 73, column: 10, scope: !120)
!125 = !DILocation(line: 74, column: 12, scope: !120)
!126 = !DILocation(line: 74, column: 10, scope: !120)
!127 = !DILocation(line: 76, column: 12, scope: !120)
!128 = !DILocation(line: 76, column: 5, scope: !120)
!129 = !DILocation(line: 77, column: 67, scope: !120)
!130 = !DILocation(line: 77, column: 5, scope: !120)
!131 = !DILocation(line: 78, column: 1, scope: !120)
!132 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 82, type: !55, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!133 = !DILocalVariable(name: "data", scope: !132, file: !45, line: 84, type: !42)
!134 = !DILocation(line: 84, column: 12, scope: !132)
!135 = !DILocalVariable(name: "dataBuffer", scope: !132, file: !45, line: 85, type: !60)
!136 = !DILocation(line: 85, column: 10, scope: !132)
!137 = !DILocation(line: 86, column: 12, scope: !132)
!138 = !DILocation(line: 86, column: 10, scope: !132)
!139 = !DILocalVariable(name: "dataLen", scope: !140, file: !45, line: 89, type: !68)
!140 = distinct !DILexicalBlock(scope: !132, file: !45, line: 87, column: 5)
!141 = !DILocation(line: 89, column: 16, scope: !140)
!142 = !DILocation(line: 89, column: 33, scope: !140)
!143 = !DILocation(line: 89, column: 26, scope: !140)
!144 = !DILocation(line: 91, column: 17, scope: !145)
!145 = distinct !DILexicalBlock(scope: !140, file: !45, line: 91, column: 13)
!146 = !DILocation(line: 91, column: 16, scope: !145)
!147 = !DILocation(line: 91, column: 25, scope: !145)
!148 = !DILocation(line: 91, column: 13, scope: !140)
!149 = !DILocation(line: 94, column: 23, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !45, line: 94, column: 17)
!151 = distinct !DILexicalBlock(scope: !145, file: !45, line: 92, column: 9)
!152 = !DILocation(line: 94, column: 28, scope: !150)
!153 = !DILocation(line: 94, column: 27, scope: !150)
!154 = !DILocation(line: 94, column: 47, scope: !150)
!155 = !DILocation(line: 94, column: 46, scope: !150)
!156 = !DILocation(line: 94, column: 37, scope: !150)
!157 = !DILocation(line: 94, column: 57, scope: !150)
!158 = !DILocation(line: 94, column: 17, scope: !150)
!159 = !DILocation(line: 94, column: 64, scope: !150)
!160 = !DILocation(line: 94, column: 17, scope: !151)
!161 = !DILocation(line: 98, column: 34, scope: !162)
!162 = distinct !DILexicalBlock(scope: !150, file: !45, line: 95, column: 13)
!163 = !DILocation(line: 98, column: 27, scope: !162)
!164 = !DILocation(line: 98, column: 25, scope: !162)
!165 = !DILocation(line: 99, column: 21, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !45, line: 99, column: 21)
!167 = !DILocation(line: 99, column: 29, scope: !166)
!168 = !DILocation(line: 99, column: 33, scope: !166)
!169 = !DILocation(line: 99, column: 36, scope: !166)
!170 = !DILocation(line: 99, column: 41, scope: !166)
!171 = !DILocation(line: 99, column: 48, scope: !166)
!172 = !DILocation(line: 99, column: 52, scope: !166)
!173 = !DILocation(line: 99, column: 21, scope: !162)
!174 = !DILocation(line: 101, column: 21, scope: !175)
!175 = distinct !DILexicalBlock(scope: !166, file: !45, line: 100, column: 17)
!176 = !DILocation(line: 101, column: 26, scope: !175)
!177 = !DILocation(line: 101, column: 33, scope: !175)
!178 = !DILocation(line: 101, column: 37, scope: !175)
!179 = !DILocation(line: 102, column: 17, scope: !175)
!180 = !DILocation(line: 103, column: 13, scope: !162)
!181 = !DILocation(line: 106, column: 17, scope: !182)
!182 = distinct !DILexicalBlock(scope: !150, file: !45, line: 105, column: 13)
!183 = !DILocation(line: 108, column: 17, scope: !182)
!184 = !DILocation(line: 108, column: 22, scope: !182)
!185 = !DILocation(line: 108, column: 31, scope: !182)
!186 = !DILocation(line: 110, column: 9, scope: !151)
!187 = !DILocation(line: 112, column: 67, scope: !132)
!188 = !DILocation(line: 112, column: 5, scope: !132)
!189 = !DILocation(line: 113, column: 1, scope: !132)
!190 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_51_good", scope: !45, file: !45, line: 115, type: !55, scopeLine: 116, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!191 = !DILocation(line: 117, column: 5, scope: !190)
!192 = !DILocation(line: 118, column: 5, scope: !190)
!193 = !DILocation(line: 119, column: 1, scope: !190)
!194 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_51b_badSink", scope: !49, file: !49, line: 28, type: !195, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !42}
!197 = !DILocalVariable(name: "data", arg: 1, scope: !194, file: !49, line: 28, type: !42)
!198 = !DILocation(line: 28, column: 71, scope: !194)
!199 = !DILocalVariable(name: "i", scope: !200, file: !49, line: 31, type: !23)
!200 = distinct !DILexicalBlock(scope: !194, file: !49, line: 30, column: 5)
!201 = !DILocation(line: 31, column: 13, scope: !200)
!202 = !DILocalVariable(name: "n", scope: !200, file: !49, line: 31, type: !23)
!203 = !DILocation(line: 31, column: 16, scope: !200)
!204 = !DILocalVariable(name: "intVariable", scope: !200, file: !49, line: 31, type: !23)
!205 = !DILocation(line: 31, column: 19, scope: !200)
!206 = !DILocation(line: 32, column: 20, scope: !207)
!207 = distinct !DILexicalBlock(scope: !200, file: !49, line: 32, column: 13)
!208 = !DILocation(line: 32, column: 13, scope: !207)
!209 = !DILocation(line: 32, column: 36, scope: !207)
!210 = !DILocation(line: 32, column: 13, scope: !200)
!211 = !DILocation(line: 35, column: 25, scope: !212)
!212 = distinct !DILexicalBlock(scope: !207, file: !49, line: 33, column: 9)
!213 = !DILocation(line: 36, column: 20, scope: !214)
!214 = distinct !DILexicalBlock(scope: !212, file: !49, line: 36, column: 13)
!215 = !DILocation(line: 36, column: 18, scope: !214)
!216 = !DILocation(line: 36, column: 25, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !49, line: 36, column: 13)
!218 = !DILocation(line: 36, column: 29, scope: !217)
!219 = !DILocation(line: 36, column: 27, scope: !217)
!220 = !DILocation(line: 36, column: 13, scope: !214)
!221 = !DILocation(line: 39, column: 28, scope: !222)
!222 = distinct !DILexicalBlock(scope: !217, file: !49, line: 37, column: 13)
!223 = !DILocation(line: 40, column: 13, scope: !222)
!224 = !DILocation(line: 36, column: 33, scope: !217)
!225 = !DILocation(line: 36, column: 13, scope: !217)
!226 = distinct !{!226, !220, !227, !228}
!227 = !DILocation(line: 40, column: 13, scope: !214)
!228 = !{!"llvm.loop.mustprogress"}
!229 = !DILocation(line: 41, column: 26, scope: !212)
!230 = !DILocation(line: 41, column: 13, scope: !212)
!231 = !DILocation(line: 42, column: 9, scope: !212)
!232 = !DILocation(line: 44, column: 1, scope: !194)
!233 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_51b_goodG2BSink", scope: !49, file: !49, line: 51, type: !195, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!234 = !DILocalVariable(name: "data", arg: 1, scope: !233, file: !49, line: 51, type: !42)
!235 = !DILocation(line: 51, column: 75, scope: !233)
!236 = !DILocalVariable(name: "i", scope: !237, file: !49, line: 54, type: !23)
!237 = distinct !DILexicalBlock(scope: !233, file: !49, line: 53, column: 5)
!238 = !DILocation(line: 54, column: 13, scope: !237)
!239 = !DILocalVariable(name: "n", scope: !237, file: !49, line: 54, type: !23)
!240 = !DILocation(line: 54, column: 16, scope: !237)
!241 = !DILocalVariable(name: "intVariable", scope: !237, file: !49, line: 54, type: !23)
!242 = !DILocation(line: 54, column: 19, scope: !237)
!243 = !DILocation(line: 55, column: 20, scope: !244)
!244 = distinct !DILexicalBlock(scope: !237, file: !49, line: 55, column: 13)
!245 = !DILocation(line: 55, column: 13, scope: !244)
!246 = !DILocation(line: 55, column: 36, scope: !244)
!247 = !DILocation(line: 55, column: 13, scope: !237)
!248 = !DILocation(line: 58, column: 25, scope: !249)
!249 = distinct !DILexicalBlock(scope: !244, file: !49, line: 56, column: 9)
!250 = !DILocation(line: 59, column: 20, scope: !251)
!251 = distinct !DILexicalBlock(scope: !249, file: !49, line: 59, column: 13)
!252 = !DILocation(line: 59, column: 18, scope: !251)
!253 = !DILocation(line: 59, column: 25, scope: !254)
!254 = distinct !DILexicalBlock(scope: !251, file: !49, line: 59, column: 13)
!255 = !DILocation(line: 59, column: 29, scope: !254)
!256 = !DILocation(line: 59, column: 27, scope: !254)
!257 = !DILocation(line: 59, column: 13, scope: !251)
!258 = !DILocation(line: 62, column: 28, scope: !259)
!259 = distinct !DILexicalBlock(scope: !254, file: !49, line: 60, column: 13)
!260 = !DILocation(line: 63, column: 13, scope: !259)
!261 = !DILocation(line: 59, column: 33, scope: !254)
!262 = !DILocation(line: 59, column: 13, scope: !254)
!263 = distinct !{!263, !257, !264, !228}
!264 = !DILocation(line: 63, column: 13, scope: !251)
!265 = !DILocation(line: 64, column: 26, scope: !249)
!266 = !DILocation(line: 64, column: 13, scope: !249)
!267 = !DILocation(line: 65, column: 9, scope: !249)
!268 = !DILocation(line: 67, column: 1, scope: !233)
!269 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_51b_goodB2GSink", scope: !49, file: !49, line: 70, type: !195, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!270 = !DILocalVariable(name: "data", arg: 1, scope: !269, file: !49, line: 70, type: !42)
!271 = !DILocation(line: 70, column: 75, scope: !269)
!272 = !DILocalVariable(name: "i", scope: !273, file: !49, line: 73, type: !23)
!273 = distinct !DILexicalBlock(scope: !269, file: !49, line: 72, column: 5)
!274 = !DILocation(line: 73, column: 13, scope: !273)
!275 = !DILocalVariable(name: "n", scope: !273, file: !49, line: 73, type: !23)
!276 = !DILocation(line: 73, column: 16, scope: !273)
!277 = !DILocalVariable(name: "intVariable", scope: !273, file: !49, line: 73, type: !23)
!278 = !DILocation(line: 73, column: 19, scope: !273)
!279 = !DILocation(line: 74, column: 20, scope: !280)
!280 = distinct !DILexicalBlock(scope: !273, file: !49, line: 74, column: 13)
!281 = !DILocation(line: 74, column: 13, scope: !280)
!282 = !DILocation(line: 74, column: 36, scope: !280)
!283 = !DILocation(line: 74, column: 13, scope: !273)
!284 = !DILocation(line: 77, column: 17, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !49, line: 77, column: 17)
!286 = distinct !DILexicalBlock(scope: !280, file: !49, line: 75, column: 9)
!287 = !DILocation(line: 77, column: 19, scope: !285)
!288 = !DILocation(line: 77, column: 17, scope: !286)
!289 = !DILocation(line: 79, column: 29, scope: !290)
!290 = distinct !DILexicalBlock(scope: !285, file: !49, line: 78, column: 13)
!291 = !DILocation(line: 80, column: 24, scope: !292)
!292 = distinct !DILexicalBlock(scope: !290, file: !49, line: 80, column: 17)
!293 = !DILocation(line: 80, column: 22, scope: !292)
!294 = !DILocation(line: 80, column: 29, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !49, line: 80, column: 17)
!296 = !DILocation(line: 80, column: 33, scope: !295)
!297 = !DILocation(line: 80, column: 31, scope: !295)
!298 = !DILocation(line: 80, column: 17, scope: !292)
!299 = !DILocation(line: 83, column: 32, scope: !300)
!300 = distinct !DILexicalBlock(scope: !295, file: !49, line: 81, column: 17)
!301 = !DILocation(line: 84, column: 17, scope: !300)
!302 = !DILocation(line: 80, column: 37, scope: !295)
!303 = !DILocation(line: 80, column: 17, scope: !295)
!304 = distinct !{!304, !298, !305, !228}
!305 = !DILocation(line: 84, column: 17, scope: !292)
!306 = !DILocation(line: 85, column: 30, scope: !290)
!307 = !DILocation(line: 85, column: 17, scope: !290)
!308 = !DILocation(line: 86, column: 13, scope: !290)
!309 = !DILocation(line: 87, column: 9, scope: !286)
!310 = !DILocation(line: 89, column: 1, scope: !269)
!311 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !195, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!312 = !DILocalVariable(name: "line", arg: 1, scope: !311, file: !3, line: 11, type: !42)
!313 = !DILocation(line: 11, column: 25, scope: !311)
!314 = !DILocation(line: 13, column: 1, scope: !311)
!315 = !DILocation(line: 14, column: 8, scope: !316)
!316 = distinct !DILexicalBlock(scope: !311, file: !3, line: 14, column: 8)
!317 = !DILocation(line: 14, column: 13, scope: !316)
!318 = !DILocation(line: 14, column: 8, scope: !311)
!319 = !DILocation(line: 16, column: 24, scope: !320)
!320 = distinct !DILexicalBlock(scope: !316, file: !3, line: 15, column: 5)
!321 = !DILocation(line: 16, column: 9, scope: !320)
!322 = !DILocation(line: 17, column: 5, scope: !320)
!323 = !DILocation(line: 18, column: 5, scope: !311)
!324 = !DILocation(line: 19, column: 1, scope: !311)
!325 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !195, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!326 = !DILocalVariable(name: "line", arg: 1, scope: !325, file: !3, line: 20, type: !42)
!327 = !DILocation(line: 20, column: 29, scope: !325)
!328 = !DILocation(line: 22, column: 8, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !3, line: 22, column: 8)
!330 = !DILocation(line: 22, column: 13, scope: !329)
!331 = !DILocation(line: 22, column: 8, scope: !325)
!332 = !DILocation(line: 24, column: 24, scope: !333)
!333 = distinct !DILexicalBlock(scope: !329, file: !3, line: 23, column: 5)
!334 = !DILocation(line: 24, column: 9, scope: !333)
!335 = !DILocation(line: 25, column: 5, scope: !333)
!336 = !DILocation(line: 26, column: 1, scope: !325)
!337 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !338, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !23)
!342 = !DILocalVariable(name: "line", arg: 1, scope: !337, file: !3, line: 27, type: !340)
!343 = !DILocation(line: 27, column: 29, scope: !337)
!344 = !DILocation(line: 29, column: 8, scope: !345)
!345 = distinct !DILexicalBlock(scope: !337, file: !3, line: 29, column: 8)
!346 = !DILocation(line: 29, column: 13, scope: !345)
!347 = !DILocation(line: 29, column: 8, scope: !337)
!348 = !DILocation(line: 31, column: 27, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !3, line: 30, column: 5)
!350 = !DILocation(line: 31, column: 9, scope: !349)
!351 = !DILocation(line: 32, column: 5, scope: !349)
!352 = !DILocation(line: 33, column: 1, scope: !337)
!353 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !354, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !23}
!356 = !DILocalVariable(name: "intNumber", arg: 1, scope: !353, file: !3, line: 35, type: !23)
!357 = !DILocation(line: 35, column: 24, scope: !353)
!358 = !DILocation(line: 37, column: 20, scope: !353)
!359 = !DILocation(line: 37, column: 5, scope: !353)
!360 = !DILocation(line: 38, column: 1, scope: !353)
!361 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !362, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !364}
!364 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!365 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !361, file: !3, line: 40, type: !364)
!366 = !DILocation(line: 40, column: 28, scope: !361)
!367 = !DILocation(line: 42, column: 21, scope: !361)
!368 = !DILocation(line: 42, column: 5, scope: !361)
!369 = !DILocation(line: 43, column: 1, scope: !361)
!370 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !371, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !373}
!373 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!374 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !370, file: !3, line: 45, type: !373)
!375 = !DILocation(line: 45, column: 28, scope: !370)
!376 = !DILocation(line: 47, column: 20, scope: !370)
!377 = !DILocation(line: 47, column: 5, scope: !370)
!378 = !DILocation(line: 48, column: 1, scope: !370)
!379 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !380, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !382}
!382 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!383 = !DILocalVariable(name: "longNumber", arg: 1, scope: !379, file: !3, line: 50, type: !382)
!384 = !DILocation(line: 50, column: 26, scope: !379)
!385 = !DILocation(line: 52, column: 21, scope: !379)
!386 = !DILocation(line: 52, column: 5, scope: !379)
!387 = !DILocation(line: 53, column: 1, scope: !379)
!388 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !389, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !391}
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !392, line: 27, baseType: !393)
!392 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !394, line: 44, baseType: !382)
!394 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!395 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !388, file: !3, line: 55, type: !391)
!396 = !DILocation(line: 55, column: 33, scope: !388)
!397 = !DILocation(line: 57, column: 29, scope: !388)
!398 = !DILocation(line: 57, column: 5, scope: !388)
!399 = !DILocation(line: 58, column: 1, scope: !388)
!400 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !401, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !68}
!403 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !400, file: !3, line: 60, type: !68)
!404 = !DILocation(line: 60, column: 29, scope: !400)
!405 = !DILocation(line: 62, column: 21, scope: !400)
!406 = !DILocation(line: 62, column: 5, scope: !400)
!407 = !DILocation(line: 63, column: 1, scope: !400)
!408 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !409, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !43}
!411 = !DILocalVariable(name: "charHex", arg: 1, scope: !408, file: !3, line: 65, type: !43)
!412 = !DILocation(line: 65, column: 29, scope: !408)
!413 = !DILocation(line: 67, column: 22, scope: !408)
!414 = !DILocation(line: 67, column: 5, scope: !408)
!415 = !DILocation(line: 68, column: 1, scope: !408)
!416 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !417, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !341}
!419 = !DILocalVariable(name: "wideChar", arg: 1, scope: !416, file: !3, line: 70, type: !341)
!420 = !DILocation(line: 70, column: 29, scope: !416)
!421 = !DILocalVariable(name: "s", scope: !416, file: !3, line: 74, type: !422)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 64, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 2)
!425 = !DILocation(line: 74, column: 13, scope: !416)
!426 = !DILocation(line: 75, column: 16, scope: !416)
!427 = !DILocation(line: 75, column: 9, scope: !416)
!428 = !DILocation(line: 75, column: 14, scope: !416)
!429 = !DILocation(line: 76, column: 9, scope: !416)
!430 = !DILocation(line: 76, column: 14, scope: !416)
!431 = !DILocation(line: 77, column: 21, scope: !416)
!432 = !DILocation(line: 77, column: 5, scope: !416)
!433 = !DILocation(line: 78, column: 1, scope: !416)
!434 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !435, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !7}
!437 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !434, file: !3, line: 80, type: !7)
!438 = !DILocation(line: 80, column: 33, scope: !434)
!439 = !DILocation(line: 82, column: 20, scope: !434)
!440 = !DILocation(line: 82, column: 5, scope: !434)
!441 = !DILocation(line: 83, column: 1, scope: !434)
!442 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !443, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !25}
!445 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !442, file: !3, line: 85, type: !25)
!446 = !DILocation(line: 85, column: 45, scope: !442)
!447 = !DILocation(line: 87, column: 22, scope: !442)
!448 = !DILocation(line: 87, column: 5, scope: !442)
!449 = !DILocation(line: 88, column: 1, scope: !442)
!450 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !451, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !453}
!453 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!454 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !450, file: !3, line: 90, type: !453)
!455 = !DILocation(line: 90, column: 29, scope: !450)
!456 = !DILocation(line: 92, column: 20, scope: !450)
!457 = !DILocation(line: 92, column: 5, scope: !450)
!458 = !DILocation(line: 93, column: 1, scope: !450)
!459 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !460, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !464, line: 100, baseType: !465)
!464 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_007/source_code")
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !464, line: 96, size: 64, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !465, file: !464, line: 98, baseType: !23, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !465, file: !464, line: 99, baseType: !23, size: 32, offset: 32)
!469 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !459, file: !3, line: 95, type: !462)
!470 = !DILocation(line: 95, column: 40, scope: !459)
!471 = !DILocation(line: 97, column: 26, scope: !459)
!472 = !DILocation(line: 97, column: 47, scope: !459)
!473 = !DILocation(line: 97, column: 55, scope: !459)
!474 = !DILocation(line: 97, column: 76, scope: !459)
!475 = !DILocation(line: 97, column: 5, scope: !459)
!476 = !DILocation(line: 98, column: 1, scope: !459)
!477 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !478, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !480, !68}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!481 = !DILocalVariable(name: "bytes", arg: 1, scope: !477, file: !3, line: 100, type: !480)
!482 = !DILocation(line: 100, column: 38, scope: !477)
!483 = !DILocalVariable(name: "numBytes", arg: 2, scope: !477, file: !3, line: 100, type: !68)
!484 = !DILocation(line: 100, column: 52, scope: !477)
!485 = !DILocalVariable(name: "i", scope: !477, file: !3, line: 102, type: !68)
!486 = !DILocation(line: 102, column: 12, scope: !477)
!487 = !DILocation(line: 103, column: 12, scope: !488)
!488 = distinct !DILexicalBlock(scope: !477, file: !3, line: 103, column: 5)
!489 = !DILocation(line: 103, column: 10, scope: !488)
!490 = !DILocation(line: 103, column: 17, scope: !491)
!491 = distinct !DILexicalBlock(scope: !488, file: !3, line: 103, column: 5)
!492 = !DILocation(line: 103, column: 21, scope: !491)
!493 = !DILocation(line: 103, column: 19, scope: !491)
!494 = !DILocation(line: 103, column: 5, scope: !488)
!495 = !DILocation(line: 105, column: 24, scope: !496)
!496 = distinct !DILexicalBlock(scope: !491, file: !3, line: 104, column: 5)
!497 = !DILocation(line: 105, column: 30, scope: !496)
!498 = !DILocation(line: 105, column: 9, scope: !496)
!499 = !DILocation(line: 106, column: 5, scope: !496)
!500 = !DILocation(line: 103, column: 31, scope: !491)
!501 = !DILocation(line: 103, column: 5, scope: !491)
!502 = distinct !{!502, !494, !503, !228}
!503 = !DILocation(line: 106, column: 5, scope: !488)
!504 = !DILocation(line: 107, column: 5, scope: !477)
!505 = !DILocation(line: 108, column: 1, scope: !477)
!506 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !507, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!507 = !DISubroutineType(types: !508)
!508 = !{!68, !480, !68, !42}
!509 = !DILocalVariable(name: "bytes", arg: 1, scope: !506, file: !3, line: 113, type: !480)
!510 = !DILocation(line: 113, column: 39, scope: !506)
!511 = !DILocalVariable(name: "numBytes", arg: 2, scope: !506, file: !3, line: 113, type: !68)
!512 = !DILocation(line: 113, column: 53, scope: !506)
!513 = !DILocalVariable(name: "hex", arg: 3, scope: !506, file: !3, line: 113, type: !42)
!514 = !DILocation(line: 113, column: 71, scope: !506)
!515 = !DILocalVariable(name: "numWritten", scope: !506, file: !3, line: 115, type: !68)
!516 = !DILocation(line: 115, column: 12, scope: !506)
!517 = !DILocation(line: 121, column: 5, scope: !506)
!518 = !DILocation(line: 121, column: 12, scope: !506)
!519 = !DILocation(line: 121, column: 25, scope: !506)
!520 = !DILocation(line: 121, column: 23, scope: !506)
!521 = !DILocation(line: 121, column: 34, scope: !506)
!522 = !DILocation(line: 121, column: 37, scope: !506)
!523 = !DILocation(line: 121, column: 67, scope: !506)
!524 = !DILocation(line: 121, column: 70, scope: !506)
!525 = !DILocation(line: 0, scope: !506)
!526 = !DILocalVariable(name: "byte", scope: !527, file: !3, line: 123, type: !23)
!527 = distinct !DILexicalBlock(scope: !506, file: !3, line: 122, column: 5)
!528 = !DILocation(line: 123, column: 13, scope: !527)
!529 = !DILocation(line: 124, column: 17, scope: !527)
!530 = !DILocation(line: 124, column: 25, scope: !527)
!531 = !DILocation(line: 124, column: 23, scope: !527)
!532 = !DILocation(line: 124, column: 9, scope: !527)
!533 = !DILocation(line: 125, column: 45, scope: !527)
!534 = !DILocation(line: 125, column: 29, scope: !527)
!535 = !DILocation(line: 125, column: 9, scope: !527)
!536 = !DILocation(line: 125, column: 15, scope: !527)
!537 = !DILocation(line: 125, column: 27, scope: !527)
!538 = !DILocation(line: 126, column: 9, scope: !527)
!539 = distinct !{!539, !517, !540, !228}
!540 = !DILocation(line: 127, column: 5, scope: !506)
!541 = !DILocation(line: 129, column: 12, scope: !506)
!542 = !DILocation(line: 129, column: 5, scope: !506)
!543 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !544, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DISubroutineType(types: !545)
!545 = !{!68, !480, !68, !340}
!546 = !DILocalVariable(name: "bytes", arg: 1, scope: !543, file: !3, line: 135, type: !480)
!547 = !DILocation(line: 135, column: 41, scope: !543)
!548 = !DILocalVariable(name: "numBytes", arg: 2, scope: !543, file: !3, line: 135, type: !68)
!549 = !DILocation(line: 135, column: 55, scope: !543)
!550 = !DILocalVariable(name: "hex", arg: 3, scope: !543, file: !3, line: 135, type: !340)
!551 = !DILocation(line: 135, column: 76, scope: !543)
!552 = !DILocalVariable(name: "numWritten", scope: !543, file: !3, line: 137, type: !68)
!553 = !DILocation(line: 137, column: 12, scope: !543)
!554 = !DILocation(line: 143, column: 5, scope: !543)
!555 = !DILocation(line: 143, column: 12, scope: !543)
!556 = !DILocation(line: 143, column: 25, scope: !543)
!557 = !DILocation(line: 143, column: 23, scope: !543)
!558 = !DILocation(line: 143, column: 34, scope: !543)
!559 = !DILocation(line: 143, column: 47, scope: !543)
!560 = !DILocation(line: 143, column: 55, scope: !543)
!561 = !DILocation(line: 143, column: 53, scope: !543)
!562 = !DILocation(line: 143, column: 37, scope: !543)
!563 = !DILocation(line: 143, column: 68, scope: !543)
!564 = !DILocation(line: 143, column: 81, scope: !543)
!565 = !DILocation(line: 143, column: 89, scope: !543)
!566 = !DILocation(line: 143, column: 87, scope: !543)
!567 = !DILocation(line: 143, column: 100, scope: !543)
!568 = !DILocation(line: 143, column: 71, scope: !543)
!569 = !DILocation(line: 0, scope: !543)
!570 = !DILocalVariable(name: "byte", scope: !571, file: !3, line: 145, type: !23)
!571 = distinct !DILexicalBlock(scope: !543, file: !3, line: 144, column: 5)
!572 = !DILocation(line: 145, column: 13, scope: !571)
!573 = !DILocation(line: 146, column: 18, scope: !571)
!574 = !DILocation(line: 146, column: 26, scope: !571)
!575 = !DILocation(line: 146, column: 24, scope: !571)
!576 = !DILocation(line: 146, column: 9, scope: !571)
!577 = !DILocation(line: 147, column: 45, scope: !571)
!578 = !DILocation(line: 147, column: 29, scope: !571)
!579 = !DILocation(line: 147, column: 9, scope: !571)
!580 = !DILocation(line: 147, column: 15, scope: !571)
!581 = !DILocation(line: 147, column: 27, scope: !571)
!582 = !DILocation(line: 148, column: 9, scope: !571)
!583 = distinct !{!583, !554, !584, !228}
!584 = !DILocation(line: 149, column: 5, scope: !543)
!585 = !DILocation(line: 151, column: 12, scope: !543)
!586 = !DILocation(line: 151, column: 5, scope: !543)
!587 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !588, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DISubroutineType(types: !589)
!589 = !{!23}
!590 = !DILocation(line: 158, column: 5, scope: !587)
!591 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !588, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!592 = !DILocation(line: 163, column: 5, scope: !591)
!593 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !588, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DILocation(line: 168, column: 13, scope: !593)
!595 = !DILocation(line: 168, column: 20, scope: !593)
!596 = !DILocation(line: 168, column: 5, scope: !593)
!597 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DILocation(line: 187, column: 16, scope: !597)
!599 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DILocation(line: 188, column: 16, scope: !599)
!601 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!602 = !DILocation(line: 189, column: 16, scope: !601)
!603 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DILocation(line: 190, column: 16, scope: !603)
!605 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DILocation(line: 191, column: 16, scope: !605)
!607 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 192, column: 16, scope: !607)
!609 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DILocation(line: 193, column: 16, scope: !609)
!611 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DILocation(line: 194, column: 16, scope: !611)
!613 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DILocation(line: 195, column: 16, scope: !613)
!615 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!616 = !DILocation(line: 198, column: 15, scope: !615)
!617 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!618 = !DILocation(line: 199, column: 15, scope: !617)
!619 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!620 = !DILocation(line: 200, column: 15, scope: !619)
!621 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!622 = !DILocation(line: 201, column: 15, scope: !621)
!623 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!624 = !DILocation(line: 202, column: 15, scope: !623)
!625 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!626 = !DILocation(line: 203, column: 15, scope: !625)
!627 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!628 = !DILocation(line: 204, column: 15, scope: !627)
!629 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!630 = !DILocation(line: 205, column: 15, scope: !629)
!631 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!632 = !DILocation(line: 206, column: 15, scope: !631)
