; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
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
define dso_local void @badSink(i8* %data) #0 !dbg !52 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %i, metadata !57, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %n, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !62, metadata !DIExpression()), !dbg !63
  %0 = load i8*, i8** %data.addr, align 8, !dbg !64
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !66
  %cmp = icmp eq i32 %call, 1, !dbg !67
  br i1 %cmp, label %if.then, label %if.end, !dbg !68

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !69
  store i32 0, i32* %i, align 4, !dbg !71
  br label %for.cond, !dbg !73

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !74
  %2 = load i32, i32* %n, align 4, !dbg !76
  %cmp1 = icmp slt i32 %1, %2, !dbg !77
  br i1 %cmp1, label %for.body, label %for.end, !dbg !78

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !79
  %inc = add nsw i32 %3, 1, !dbg !79
  store i32 %inc, i32* %intVariable, align 4, !dbg !79
  br label %for.inc, !dbg !81

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !82
  %inc2 = add nsw i32 %4, 1, !dbg !82
  store i32 %inc2, i32* %i, align 4, !dbg !82
  br label %for.cond, !dbg !83, !llvm.loop !84

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !87
  call void @printIntLine(i32 %5), !dbg !88
  br label %if.end, !dbg !89

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !90
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_44_bad() #0 !dbg !91 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !96, metadata !DIExpression()), !dbg !98
  store void (i8*)* @badSink, void (i8*)** %funcPtr, align 8, !dbg !98
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !99, metadata !DIExpression()), !dbg !103
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !103
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !103
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !104
  store i8* %arraydecay, i8** %data, align 8, !dbg !105
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !106, metadata !DIExpression()), !dbg !111
  %1 = load i8*, i8** %data, align 8, !dbg !112
  %call = call i64 @strlen(i8* %1) #8, !dbg !113
  store i64 %call, i64* %dataLen, align 8, !dbg !111
  %2 = load i64, i64* %dataLen, align 8, !dbg !114
  %sub = sub i64 100, %2, !dbg !116
  %cmp = icmp ugt i64 %sub, 1, !dbg !117
  br i1 %cmp, label %if.then, label %if.end18, !dbg !118

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !119
  %4 = load i64, i64* %dataLen, align 8, !dbg !122
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !123
  %5 = load i64, i64* %dataLen, align 8, !dbg !124
  %sub1 = sub i64 100, %5, !dbg !125
  %conv = trunc i64 %sub1 to i32, !dbg !126
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !127
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !128
  %cmp3 = icmp ne i8* %call2, null, !dbg !129
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !130

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !131
  %call6 = call i64 @strlen(i8* %7) #8, !dbg !133
  store i64 %call6, i64* %dataLen, align 8, !dbg !134
  %8 = load i64, i64* %dataLen, align 8, !dbg !135
  %cmp7 = icmp ugt i64 %8, 0, !dbg !137
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !138

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !139
  %10 = load i64, i64* %dataLen, align 8, !dbg !140
  %sub9 = sub i64 %10, 1, !dbg !141
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !139
  %11 = load i8, i8* %arrayidx, align 1, !dbg !139
  %conv10 = sext i8 %11 to i32, !dbg !139
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !142
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !143

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !144
  %13 = load i64, i64* %dataLen, align 8, !dbg !146
  %sub14 = sub i64 %13, 1, !dbg !147
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !144
  store i8 0, i8* %arrayidx15, align 1, !dbg !148
  br label %if.end, !dbg !149

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !150

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)), !dbg !151
  %14 = load i8*, i8** %data, align 8, !dbg !153
  %15 = load i64, i64* %dataLen, align 8, !dbg !154
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !153
  store i8 0, i8* %arrayidx16, align 1, !dbg !155
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !156

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !157
  %17 = load i8*, i8** %data, align 8, !dbg !158
  call void %16(i8* %17), !dbg !157
  ret void, !dbg !159
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !160 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata i32* %i, metadata !163, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata i32* %n, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !168, metadata !DIExpression()), !dbg !169
  %0 = load i8*, i8** %data.addr, align 8, !dbg !170
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !172
  %cmp = icmp eq i32 %call, 1, !dbg !173
  br i1 %cmp, label %if.then, label %if.end, !dbg !174

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !175
  store i32 0, i32* %i, align 4, !dbg !177
  br label %for.cond, !dbg !179

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !180
  %2 = load i32, i32* %n, align 4, !dbg !182
  %cmp1 = icmp slt i32 %1, %2, !dbg !183
  br i1 %cmp1, label %for.body, label %for.end, !dbg !184

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !185
  %inc = add nsw i32 %3, 1, !dbg !185
  store i32 %inc, i32* %intVariable, align 4, !dbg !185
  br label %for.inc, !dbg !187

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !188
  %inc2 = add nsw i32 %4, 1, !dbg !188
  store i32 %inc2, i32* %i, align 4, !dbg !188
  br label %for.cond, !dbg !189, !llvm.loop !190

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !192
  call void @printIntLine(i32 %5), !dbg !193
  br label %if.end, !dbg !194

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !195
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !196 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !199, metadata !DIExpression()), !dbg !200
  store void (i8*)* @goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !200
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !201, metadata !DIExpression()), !dbg !202
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !202
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !202
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !203
  store i8* %arraydecay, i8** %data, align 8, !dbg !204
  %1 = load i8*, i8** %data, align 8, !dbg !205
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !206
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !207
  %3 = load i8*, i8** %data, align 8, !dbg !208
  call void %2(i8* %3), !dbg !207
  ret void, !dbg !209
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !210 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata i32* %i, metadata !213, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata i32* %n, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !218, metadata !DIExpression()), !dbg !219
  %0 = load i8*, i8** %data.addr, align 8, !dbg !220
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !222
  %cmp = icmp eq i32 %call, 1, !dbg !223
  br i1 %cmp, label %if.then, label %if.end5, !dbg !224

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !225
  %cmp1 = icmp slt i32 %1, 10000, !dbg !228
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !229

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !230
  store i32 0, i32* %i, align 4, !dbg !232
  br label %for.cond, !dbg !234

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !235
  %3 = load i32, i32* %n, align 4, !dbg !237
  %cmp3 = icmp slt i32 %2, %3, !dbg !238
  br i1 %cmp3, label %for.body, label %for.end, !dbg !239

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !240
  %inc = add nsw i32 %4, 1, !dbg !240
  store i32 %inc, i32* %intVariable, align 4, !dbg !240
  br label %for.inc, !dbg !242

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !243
  %inc4 = add nsw i32 %5, 1, !dbg !243
  store i32 %inc4, i32* %i, align 4, !dbg !243
  br label %for.cond, !dbg !244, !llvm.loop !245

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !247
  call void @printIntLine(i32 %6), !dbg !248
  br label %if.end, !dbg !249

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !250

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !251
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !252 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !253, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !255, metadata !DIExpression()), !dbg !256
  store void (i8*)* @goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !256
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !257, metadata !DIExpression()), !dbg !258
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !258
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !258
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !259
  store i8* %arraydecay, i8** %data, align 8, !dbg !260
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !261, metadata !DIExpression()), !dbg !263
  %1 = load i8*, i8** %data, align 8, !dbg !264
  %call = call i64 @strlen(i8* %1) #8, !dbg !265
  store i64 %call, i64* %dataLen, align 8, !dbg !263
  %2 = load i64, i64* %dataLen, align 8, !dbg !266
  %sub = sub i64 100, %2, !dbg !268
  %cmp = icmp ugt i64 %sub, 1, !dbg !269
  br i1 %cmp, label %if.then, label %if.end18, !dbg !270

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !271
  %4 = load i64, i64* %dataLen, align 8, !dbg !274
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !275
  %5 = load i64, i64* %dataLen, align 8, !dbg !276
  %sub1 = sub i64 100, %5, !dbg !277
  %conv = trunc i64 %sub1 to i32, !dbg !278
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !279
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !280
  %cmp3 = icmp ne i8* %call2, null, !dbg !281
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !282

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !283
  %call6 = call i64 @strlen(i8* %7) #8, !dbg !285
  store i64 %call6, i64* %dataLen, align 8, !dbg !286
  %8 = load i64, i64* %dataLen, align 8, !dbg !287
  %cmp7 = icmp ugt i64 %8, 0, !dbg !289
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !290

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !291
  %10 = load i64, i64* %dataLen, align 8, !dbg !292
  %sub9 = sub i64 %10, 1, !dbg !293
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !291
  %11 = load i8, i8* %arrayidx, align 1, !dbg !291
  %conv10 = sext i8 %11 to i32, !dbg !291
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !294
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !295

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !296
  %13 = load i64, i64* %dataLen, align 8, !dbg !298
  %sub14 = sub i64 %13, 1, !dbg !299
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !296
  store i8 0, i8* %arrayidx15, align 1, !dbg !300
  br label %if.end, !dbg !301

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !302

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)), !dbg !303
  %14 = load i8*, i8** %data, align 8, !dbg !305
  %15 = load i64, i64* %dataLen, align 8, !dbg !306
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !305
  store i8 0, i8* %arrayidx16, align 1, !dbg !307
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !308

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !309
  %17 = load i8*, i8** %data, align 8, !dbg !310
  call void %16(i8* %17), !dbg !309
  ret void, !dbg !311
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_44_good() #0 !dbg !312 {
entry:
  call void @goodG2B(), !dbg !313
  call void @goodB2G(), !dbg !314
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !316 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !317, metadata !DIExpression()), !dbg !318
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !319
  %0 = load i8*, i8** %line.addr, align 8, !dbg !320
  %cmp = icmp ne i8* %0, null, !dbg !322
  br i1 %cmp, label %if.then, label %if.end, !dbg !323

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !324
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !326
  br label %if.end, !dbg !327

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !328
  ret void, !dbg !329
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !330 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !331, metadata !DIExpression()), !dbg !332
  %0 = load i8*, i8** %line.addr, align 8, !dbg !333
  %cmp = icmp ne i8* %0, null, !dbg !335
  br i1 %cmp, label %if.then, label %if.end, !dbg !336

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !337
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !339
  br label %if.end, !dbg !340

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !341
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !342 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !347, metadata !DIExpression()), !dbg !348
  %0 = load i32*, i32** %line.addr, align 8, !dbg !349
  %cmp = icmp ne i32* %0, null, !dbg !351
  br i1 %cmp, label %if.then, label %if.end, !dbg !352

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !353
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !355
  br label %if.end, !dbg !356

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !357
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !358 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !361, metadata !DIExpression()), !dbg !362
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !363
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !364
  ret void, !dbg !365
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !366 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !370, metadata !DIExpression()), !dbg !371
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !372
  %conv = sext i16 %0 to i32, !dbg !372
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !373
  ret void, !dbg !374
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !375 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !379, metadata !DIExpression()), !dbg !380
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !381
  %conv = fpext float %0 to double, !dbg !381
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !382
  ret void, !dbg !383
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !384 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !388, metadata !DIExpression()), !dbg !389
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !390
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !391
  ret void, !dbg !392
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !393 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !400, metadata !DIExpression()), !dbg !401
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !402
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !403
  ret void, !dbg !404
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !405 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !408, metadata !DIExpression()), !dbg !409
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !410
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !411
  ret void, !dbg !412
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !413 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !416, metadata !DIExpression()), !dbg !417
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !418
  %conv = sext i8 %0 to i32, !dbg !418
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !419
  ret void, !dbg !420
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !421 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !424, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !426, metadata !DIExpression()), !dbg !430
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !431
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !432
  store i32 %0, i32* %arrayidx, align 4, !dbg !433
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !434
  store i32 0, i32* %arrayidx1, align 4, !dbg !435
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !436
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !437
  ret void, !dbg !438
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !439 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !442, metadata !DIExpression()), !dbg !443
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !444
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !447 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !452
  %conv = zext i8 %0 to i32, !dbg !452
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !453
  ret void, !dbg !454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !455 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !459, metadata !DIExpression()), !dbg !460
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !461
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !462
  ret void, !dbg !463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !464 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !474, metadata !DIExpression()), !dbg !475
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !476
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !477
  %1 = load i32, i32* %intOne, align 4, !dbg !477
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !478
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !479
  %3 = load i32, i32* %intTwo, align 4, !dbg !479
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !480
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !482 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !486, metadata !DIExpression()), !dbg !487
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !488, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.declare(metadata i64* %i, metadata !490, metadata !DIExpression()), !dbg !491
  store i64 0, i64* %i, align 8, !dbg !492
  br label %for.cond, !dbg !494

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !495
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !497
  %cmp = icmp ult i64 %0, %1, !dbg !498
  br i1 %cmp, label %for.body, label %for.end, !dbg !499

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !500
  %3 = load i64, i64* %i, align 8, !dbg !502
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !500
  %4 = load i8, i8* %arrayidx, align 1, !dbg !500
  %conv = zext i8 %4 to i32, !dbg !500
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !503
  br label %for.inc, !dbg !504

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !505
  %inc = add i64 %5, 1, !dbg !505
  store i64 %inc, i64* %i, align 8, !dbg !505
  br label %for.cond, !dbg !506, !llvm.loop !507

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !509
  ret void, !dbg !510
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !511 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !514, metadata !DIExpression()), !dbg !515
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !516, metadata !DIExpression()), !dbg !517
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !518, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !520, metadata !DIExpression()), !dbg !521
  store i64 0, i64* %numWritten, align 8, !dbg !521
  br label %while.cond, !dbg !522

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !523
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !524
  %cmp = icmp ult i64 %0, %1, !dbg !525
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !526

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !527
  %2 = load i16*, i16** %call, align 8, !dbg !527
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !527
  %4 = load i64, i64* %numWritten, align 8, !dbg !527
  %mul = mul i64 2, %4, !dbg !527
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !527
  %5 = load i8, i8* %arrayidx, align 1, !dbg !527
  %conv = sext i8 %5 to i32, !dbg !527
  %idxprom = sext i32 %conv to i64, !dbg !527
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !527
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !527
  %conv2 = zext i16 %6 to i32, !dbg !527
  %and = and i32 %conv2, 4096, !dbg !527
  %tobool = icmp ne i32 %and, 0, !dbg !527
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !528

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !529
  %7 = load i16*, i16** %call3, align 8, !dbg !529
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !529
  %9 = load i64, i64* %numWritten, align 8, !dbg !529
  %mul4 = mul i64 2, %9, !dbg !529
  %add = add i64 %mul4, 1, !dbg !529
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !529
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !529
  %conv6 = sext i8 %10 to i32, !dbg !529
  %idxprom7 = sext i32 %conv6 to i64, !dbg !529
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !529
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !529
  %conv9 = zext i16 %11 to i32, !dbg !529
  %and10 = and i32 %conv9, 4096, !dbg !529
  %tobool11 = icmp ne i32 %and10, 0, !dbg !528
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !530
  br i1 %12, label %while.body, label %while.end, !dbg !522

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !531, metadata !DIExpression()), !dbg !533
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !534
  %14 = load i64, i64* %numWritten, align 8, !dbg !535
  %mul12 = mul i64 2, %14, !dbg !536
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !534
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !537
  %15 = load i32, i32* %byte, align 4, !dbg !538
  %conv15 = trunc i32 %15 to i8, !dbg !539
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !540
  %17 = load i64, i64* %numWritten, align 8, !dbg !541
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !540
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !542
  %18 = load i64, i64* %numWritten, align 8, !dbg !543
  %inc = add i64 %18, 1, !dbg !543
  store i64 %inc, i64* %numWritten, align 8, !dbg !543
  br label %while.cond, !dbg !522, !llvm.loop !544

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !546
  ret i64 %19, !dbg !547
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !548 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !551, metadata !DIExpression()), !dbg !552
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !553, metadata !DIExpression()), !dbg !554
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !555, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !557, metadata !DIExpression()), !dbg !558
  store i64 0, i64* %numWritten, align 8, !dbg !558
  br label %while.cond, !dbg !559

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !560
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !561
  %cmp = icmp ult i64 %0, %1, !dbg !562
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !563

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !564
  %3 = load i64, i64* %numWritten, align 8, !dbg !565
  %mul = mul i64 2, %3, !dbg !566
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !564
  %4 = load i32, i32* %arrayidx, align 4, !dbg !564
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !567
  %tobool = icmp ne i32 %call, 0, !dbg !567
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !568

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !569
  %6 = load i64, i64* %numWritten, align 8, !dbg !570
  %mul1 = mul i64 2, %6, !dbg !571
  %add = add i64 %mul1, 1, !dbg !572
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !569
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !569
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !573
  %tobool4 = icmp ne i32 %call3, 0, !dbg !568
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !574
  br i1 %8, label %while.body, label %while.end, !dbg !559

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !575, metadata !DIExpression()), !dbg !577
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !578
  %10 = load i64, i64* %numWritten, align 8, !dbg !579
  %mul5 = mul i64 2, %10, !dbg !580
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !578
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !581
  %11 = load i32, i32* %byte, align 4, !dbg !582
  %conv = trunc i32 %11 to i8, !dbg !583
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !584
  %13 = load i64, i64* %numWritten, align 8, !dbg !585
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !584
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !586
  %14 = load i64, i64* %numWritten, align 8, !dbg !587
  %inc = add i64 %14, 1, !dbg !587
  store i64 %inc, i64* %numWritten, align 8, !dbg !587
  br label %while.cond, !dbg !559, !llvm.loop !588

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !590
  ret i64 %15, !dbg !591
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !592 {
entry:
  ret i32 1, !dbg !595
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !596 {
entry:
  ret i32 0, !dbg !597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !598 {
entry:
  %call = call i32 @rand() #7, !dbg !599
  %rem = srem i32 %call, 2, !dbg !600
  ret i32 %rem, !dbg !601
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !602 {
entry:
  ret void, !dbg !603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !604 {
entry:
  ret void, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !606 {
entry:
  ret void, !dbg !607
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !608 {
entry:
  ret void, !dbg !609
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !610 {
entry:
  ret void, !dbg !611
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !612 {
entry:
  ret void, !dbg !613
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !614 {
entry:
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !616 {
entry:
  ret void, !dbg !617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !618 {
entry:
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !620 {
entry:
  ret void, !dbg !621
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !622 {
entry:
  ret void, !dbg !623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !624 {
entry:
  ret void, !dbg !625
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !626 {
entry:
  ret void, !dbg !627
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !628 {
entry:
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !630 {
entry:
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !632 {
entry:
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !634 {
entry:
  ret void, !dbg !635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !636 {
entry:
  ret void, !dbg !637
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

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_005/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_44.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_005/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "badSink", scope: !45, file: !45, line: 29, type: !53, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !42}
!55 = !DILocalVariable(name: "data", arg: 1, scope: !52, file: !45, line: 29, type: !42)
!56 = !DILocation(line: 29, column: 21, scope: !52)
!57 = !DILocalVariable(name: "i", scope: !58, file: !45, line: 32, type: !23)
!58 = distinct !DILexicalBlock(scope: !52, file: !45, line: 31, column: 5)
!59 = !DILocation(line: 32, column: 13, scope: !58)
!60 = !DILocalVariable(name: "n", scope: !58, file: !45, line: 32, type: !23)
!61 = !DILocation(line: 32, column: 16, scope: !58)
!62 = !DILocalVariable(name: "intVariable", scope: !58, file: !45, line: 32, type: !23)
!63 = !DILocation(line: 32, column: 19, scope: !58)
!64 = !DILocation(line: 33, column: 20, scope: !65)
!65 = distinct !DILexicalBlock(scope: !58, file: !45, line: 33, column: 13)
!66 = !DILocation(line: 33, column: 13, scope: !65)
!67 = !DILocation(line: 33, column: 36, scope: !65)
!68 = !DILocation(line: 33, column: 13, scope: !58)
!69 = !DILocation(line: 36, column: 25, scope: !70)
!70 = distinct !DILexicalBlock(scope: !65, file: !45, line: 34, column: 9)
!71 = !DILocation(line: 37, column: 20, scope: !72)
!72 = distinct !DILexicalBlock(scope: !70, file: !45, line: 37, column: 13)
!73 = !DILocation(line: 37, column: 18, scope: !72)
!74 = !DILocation(line: 37, column: 25, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !45, line: 37, column: 13)
!76 = !DILocation(line: 37, column: 29, scope: !75)
!77 = !DILocation(line: 37, column: 27, scope: !75)
!78 = !DILocation(line: 37, column: 13, scope: !72)
!79 = !DILocation(line: 40, column: 28, scope: !80)
!80 = distinct !DILexicalBlock(scope: !75, file: !45, line: 38, column: 13)
!81 = !DILocation(line: 41, column: 13, scope: !80)
!82 = !DILocation(line: 37, column: 33, scope: !75)
!83 = !DILocation(line: 37, column: 13, scope: !75)
!84 = distinct !{!84, !78, !85, !86}
!85 = !DILocation(line: 41, column: 13, scope: !72)
!86 = !{!"llvm.loop.mustprogress"}
!87 = !DILocation(line: 42, column: 26, scope: !70)
!88 = !DILocation(line: 42, column: 13, scope: !70)
!89 = !DILocation(line: 43, column: 9, scope: !70)
!90 = !DILocation(line: 45, column: 1, scope: !52)
!91 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_44_bad", scope: !45, file: !45, line: 47, type: !92, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!92 = !DISubroutineType(types: !93)
!93 = !{null}
!94 = !DILocalVariable(name: "data", scope: !91, file: !45, line: 49, type: !42)
!95 = !DILocation(line: 49, column: 12, scope: !91)
!96 = !DILocalVariable(name: "funcPtr", scope: !91, file: !45, line: 51, type: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!98 = !DILocation(line: 51, column: 12, scope: !91)
!99 = !DILocalVariable(name: "dataBuffer", scope: !91, file: !45, line: 52, type: !100)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 100)
!103 = !DILocation(line: 52, column: 10, scope: !91)
!104 = !DILocation(line: 53, column: 12, scope: !91)
!105 = !DILocation(line: 53, column: 10, scope: !91)
!106 = !DILocalVariable(name: "dataLen", scope: !107, file: !45, line: 56, type: !108)
!107 = distinct !DILexicalBlock(scope: !91, file: !45, line: 54, column: 5)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 46, baseType: !110)
!109 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!110 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!111 = !DILocation(line: 56, column: 16, scope: !107)
!112 = !DILocation(line: 56, column: 33, scope: !107)
!113 = !DILocation(line: 56, column: 26, scope: !107)
!114 = !DILocation(line: 58, column: 17, scope: !115)
!115 = distinct !DILexicalBlock(scope: !107, file: !45, line: 58, column: 13)
!116 = !DILocation(line: 58, column: 16, scope: !115)
!117 = !DILocation(line: 58, column: 25, scope: !115)
!118 = !DILocation(line: 58, column: 13, scope: !107)
!119 = !DILocation(line: 61, column: 23, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !45, line: 61, column: 17)
!121 = distinct !DILexicalBlock(scope: !115, file: !45, line: 59, column: 9)
!122 = !DILocation(line: 61, column: 28, scope: !120)
!123 = !DILocation(line: 61, column: 27, scope: !120)
!124 = !DILocation(line: 61, column: 47, scope: !120)
!125 = !DILocation(line: 61, column: 46, scope: !120)
!126 = !DILocation(line: 61, column: 37, scope: !120)
!127 = !DILocation(line: 61, column: 57, scope: !120)
!128 = !DILocation(line: 61, column: 17, scope: !120)
!129 = !DILocation(line: 61, column: 64, scope: !120)
!130 = !DILocation(line: 61, column: 17, scope: !121)
!131 = !DILocation(line: 65, column: 34, scope: !132)
!132 = distinct !DILexicalBlock(scope: !120, file: !45, line: 62, column: 13)
!133 = !DILocation(line: 65, column: 27, scope: !132)
!134 = !DILocation(line: 65, column: 25, scope: !132)
!135 = !DILocation(line: 66, column: 21, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !45, line: 66, column: 21)
!137 = !DILocation(line: 66, column: 29, scope: !136)
!138 = !DILocation(line: 66, column: 33, scope: !136)
!139 = !DILocation(line: 66, column: 36, scope: !136)
!140 = !DILocation(line: 66, column: 41, scope: !136)
!141 = !DILocation(line: 66, column: 48, scope: !136)
!142 = !DILocation(line: 66, column: 52, scope: !136)
!143 = !DILocation(line: 66, column: 21, scope: !132)
!144 = !DILocation(line: 68, column: 21, scope: !145)
!145 = distinct !DILexicalBlock(scope: !136, file: !45, line: 67, column: 17)
!146 = !DILocation(line: 68, column: 26, scope: !145)
!147 = !DILocation(line: 68, column: 33, scope: !145)
!148 = !DILocation(line: 68, column: 37, scope: !145)
!149 = !DILocation(line: 69, column: 17, scope: !145)
!150 = !DILocation(line: 70, column: 13, scope: !132)
!151 = !DILocation(line: 73, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !120, file: !45, line: 72, column: 13)
!153 = !DILocation(line: 75, column: 17, scope: !152)
!154 = !DILocation(line: 75, column: 22, scope: !152)
!155 = !DILocation(line: 75, column: 31, scope: !152)
!156 = !DILocation(line: 77, column: 9, scope: !121)
!157 = !DILocation(line: 80, column: 5, scope: !91)
!158 = !DILocation(line: 80, column: 13, scope: !91)
!159 = !DILocation(line: 81, column: 1, scope: !91)
!160 = distinct !DISubprogram(name: "goodG2BSink", scope: !45, file: !45, line: 88, type: !53, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!161 = !DILocalVariable(name: "data", arg: 1, scope: !160, file: !45, line: 88, type: !42)
!162 = !DILocation(line: 88, column: 25, scope: !160)
!163 = !DILocalVariable(name: "i", scope: !164, file: !45, line: 91, type: !23)
!164 = distinct !DILexicalBlock(scope: !160, file: !45, line: 90, column: 5)
!165 = !DILocation(line: 91, column: 13, scope: !164)
!166 = !DILocalVariable(name: "n", scope: !164, file: !45, line: 91, type: !23)
!167 = !DILocation(line: 91, column: 16, scope: !164)
!168 = !DILocalVariable(name: "intVariable", scope: !164, file: !45, line: 91, type: !23)
!169 = !DILocation(line: 91, column: 19, scope: !164)
!170 = !DILocation(line: 92, column: 20, scope: !171)
!171 = distinct !DILexicalBlock(scope: !164, file: !45, line: 92, column: 13)
!172 = !DILocation(line: 92, column: 13, scope: !171)
!173 = !DILocation(line: 92, column: 36, scope: !171)
!174 = !DILocation(line: 92, column: 13, scope: !164)
!175 = !DILocation(line: 95, column: 25, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !45, line: 93, column: 9)
!177 = !DILocation(line: 96, column: 20, scope: !178)
!178 = distinct !DILexicalBlock(scope: !176, file: !45, line: 96, column: 13)
!179 = !DILocation(line: 96, column: 18, scope: !178)
!180 = !DILocation(line: 96, column: 25, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !45, line: 96, column: 13)
!182 = !DILocation(line: 96, column: 29, scope: !181)
!183 = !DILocation(line: 96, column: 27, scope: !181)
!184 = !DILocation(line: 96, column: 13, scope: !178)
!185 = !DILocation(line: 99, column: 28, scope: !186)
!186 = distinct !DILexicalBlock(scope: !181, file: !45, line: 97, column: 13)
!187 = !DILocation(line: 100, column: 13, scope: !186)
!188 = !DILocation(line: 96, column: 33, scope: !181)
!189 = !DILocation(line: 96, column: 13, scope: !181)
!190 = distinct !{!190, !184, !191, !86}
!191 = !DILocation(line: 100, column: 13, scope: !178)
!192 = !DILocation(line: 101, column: 26, scope: !176)
!193 = !DILocation(line: 101, column: 13, scope: !176)
!194 = !DILocation(line: 102, column: 9, scope: !176)
!195 = !DILocation(line: 104, column: 1, scope: !160)
!196 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 106, type: !92, scopeLine: 107, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!197 = !DILocalVariable(name: "data", scope: !196, file: !45, line: 108, type: !42)
!198 = !DILocation(line: 108, column: 12, scope: !196)
!199 = !DILocalVariable(name: "funcPtr", scope: !196, file: !45, line: 109, type: !97)
!200 = !DILocation(line: 109, column: 12, scope: !196)
!201 = !DILocalVariable(name: "dataBuffer", scope: !196, file: !45, line: 110, type: !100)
!202 = !DILocation(line: 110, column: 10, scope: !196)
!203 = !DILocation(line: 111, column: 12, scope: !196)
!204 = !DILocation(line: 111, column: 10, scope: !196)
!205 = !DILocation(line: 113, column: 12, scope: !196)
!206 = !DILocation(line: 113, column: 5, scope: !196)
!207 = !DILocation(line: 114, column: 5, scope: !196)
!208 = !DILocation(line: 114, column: 13, scope: !196)
!209 = !DILocation(line: 115, column: 1, scope: !196)
!210 = distinct !DISubprogram(name: "goodB2GSink", scope: !45, file: !45, line: 118, type: !53, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!211 = !DILocalVariable(name: "data", arg: 1, scope: !210, file: !45, line: 118, type: !42)
!212 = !DILocation(line: 118, column: 25, scope: !210)
!213 = !DILocalVariable(name: "i", scope: !214, file: !45, line: 121, type: !23)
!214 = distinct !DILexicalBlock(scope: !210, file: !45, line: 120, column: 5)
!215 = !DILocation(line: 121, column: 13, scope: !214)
!216 = !DILocalVariable(name: "n", scope: !214, file: !45, line: 121, type: !23)
!217 = !DILocation(line: 121, column: 16, scope: !214)
!218 = !DILocalVariable(name: "intVariable", scope: !214, file: !45, line: 121, type: !23)
!219 = !DILocation(line: 121, column: 19, scope: !214)
!220 = !DILocation(line: 122, column: 20, scope: !221)
!221 = distinct !DILexicalBlock(scope: !214, file: !45, line: 122, column: 13)
!222 = !DILocation(line: 122, column: 13, scope: !221)
!223 = !DILocation(line: 122, column: 36, scope: !221)
!224 = !DILocation(line: 122, column: 13, scope: !214)
!225 = !DILocation(line: 125, column: 17, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !45, line: 125, column: 17)
!227 = distinct !DILexicalBlock(scope: !221, file: !45, line: 123, column: 9)
!228 = !DILocation(line: 125, column: 19, scope: !226)
!229 = !DILocation(line: 125, column: 17, scope: !227)
!230 = !DILocation(line: 127, column: 29, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !45, line: 126, column: 13)
!232 = !DILocation(line: 128, column: 24, scope: !233)
!233 = distinct !DILexicalBlock(scope: !231, file: !45, line: 128, column: 17)
!234 = !DILocation(line: 128, column: 22, scope: !233)
!235 = !DILocation(line: 128, column: 29, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !45, line: 128, column: 17)
!237 = !DILocation(line: 128, column: 33, scope: !236)
!238 = !DILocation(line: 128, column: 31, scope: !236)
!239 = !DILocation(line: 128, column: 17, scope: !233)
!240 = !DILocation(line: 131, column: 32, scope: !241)
!241 = distinct !DILexicalBlock(scope: !236, file: !45, line: 129, column: 17)
!242 = !DILocation(line: 132, column: 17, scope: !241)
!243 = !DILocation(line: 128, column: 37, scope: !236)
!244 = !DILocation(line: 128, column: 17, scope: !236)
!245 = distinct !{!245, !239, !246, !86}
!246 = !DILocation(line: 132, column: 17, scope: !233)
!247 = !DILocation(line: 133, column: 30, scope: !231)
!248 = !DILocation(line: 133, column: 17, scope: !231)
!249 = !DILocation(line: 134, column: 13, scope: !231)
!250 = !DILocation(line: 135, column: 9, scope: !227)
!251 = !DILocation(line: 137, column: 1, scope: !210)
!252 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 139, type: !92, scopeLine: 140, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!253 = !DILocalVariable(name: "data", scope: !252, file: !45, line: 141, type: !42)
!254 = !DILocation(line: 141, column: 12, scope: !252)
!255 = !DILocalVariable(name: "funcPtr", scope: !252, file: !45, line: 142, type: !97)
!256 = !DILocation(line: 142, column: 12, scope: !252)
!257 = !DILocalVariable(name: "dataBuffer", scope: !252, file: !45, line: 143, type: !100)
!258 = !DILocation(line: 143, column: 10, scope: !252)
!259 = !DILocation(line: 144, column: 12, scope: !252)
!260 = !DILocation(line: 144, column: 10, scope: !252)
!261 = !DILocalVariable(name: "dataLen", scope: !262, file: !45, line: 147, type: !108)
!262 = distinct !DILexicalBlock(scope: !252, file: !45, line: 145, column: 5)
!263 = !DILocation(line: 147, column: 16, scope: !262)
!264 = !DILocation(line: 147, column: 33, scope: !262)
!265 = !DILocation(line: 147, column: 26, scope: !262)
!266 = !DILocation(line: 149, column: 17, scope: !267)
!267 = distinct !DILexicalBlock(scope: !262, file: !45, line: 149, column: 13)
!268 = !DILocation(line: 149, column: 16, scope: !267)
!269 = !DILocation(line: 149, column: 25, scope: !267)
!270 = !DILocation(line: 149, column: 13, scope: !262)
!271 = !DILocation(line: 152, column: 23, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !45, line: 152, column: 17)
!273 = distinct !DILexicalBlock(scope: !267, file: !45, line: 150, column: 9)
!274 = !DILocation(line: 152, column: 28, scope: !272)
!275 = !DILocation(line: 152, column: 27, scope: !272)
!276 = !DILocation(line: 152, column: 47, scope: !272)
!277 = !DILocation(line: 152, column: 46, scope: !272)
!278 = !DILocation(line: 152, column: 37, scope: !272)
!279 = !DILocation(line: 152, column: 57, scope: !272)
!280 = !DILocation(line: 152, column: 17, scope: !272)
!281 = !DILocation(line: 152, column: 64, scope: !272)
!282 = !DILocation(line: 152, column: 17, scope: !273)
!283 = !DILocation(line: 156, column: 34, scope: !284)
!284 = distinct !DILexicalBlock(scope: !272, file: !45, line: 153, column: 13)
!285 = !DILocation(line: 156, column: 27, scope: !284)
!286 = !DILocation(line: 156, column: 25, scope: !284)
!287 = !DILocation(line: 157, column: 21, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !45, line: 157, column: 21)
!289 = !DILocation(line: 157, column: 29, scope: !288)
!290 = !DILocation(line: 157, column: 33, scope: !288)
!291 = !DILocation(line: 157, column: 36, scope: !288)
!292 = !DILocation(line: 157, column: 41, scope: !288)
!293 = !DILocation(line: 157, column: 48, scope: !288)
!294 = !DILocation(line: 157, column: 52, scope: !288)
!295 = !DILocation(line: 157, column: 21, scope: !284)
!296 = !DILocation(line: 159, column: 21, scope: !297)
!297 = distinct !DILexicalBlock(scope: !288, file: !45, line: 158, column: 17)
!298 = !DILocation(line: 159, column: 26, scope: !297)
!299 = !DILocation(line: 159, column: 33, scope: !297)
!300 = !DILocation(line: 159, column: 37, scope: !297)
!301 = !DILocation(line: 160, column: 17, scope: !297)
!302 = !DILocation(line: 161, column: 13, scope: !284)
!303 = !DILocation(line: 164, column: 17, scope: !304)
!304 = distinct !DILexicalBlock(scope: !272, file: !45, line: 163, column: 13)
!305 = !DILocation(line: 166, column: 17, scope: !304)
!306 = !DILocation(line: 166, column: 22, scope: !304)
!307 = !DILocation(line: 166, column: 31, scope: !304)
!308 = !DILocation(line: 168, column: 9, scope: !273)
!309 = !DILocation(line: 170, column: 5, scope: !252)
!310 = !DILocation(line: 170, column: 13, scope: !252)
!311 = !DILocation(line: 171, column: 1, scope: !252)
!312 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_44_good", scope: !45, file: !45, line: 173, type: !92, scopeLine: 174, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!313 = !DILocation(line: 175, column: 5, scope: !312)
!314 = !DILocation(line: 176, column: 5, scope: !312)
!315 = !DILocation(line: 177, column: 1, scope: !312)
!316 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !53, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!317 = !DILocalVariable(name: "line", arg: 1, scope: !316, file: !3, line: 11, type: !42)
!318 = !DILocation(line: 11, column: 25, scope: !316)
!319 = !DILocation(line: 13, column: 1, scope: !316)
!320 = !DILocation(line: 14, column: 8, scope: !321)
!321 = distinct !DILexicalBlock(scope: !316, file: !3, line: 14, column: 8)
!322 = !DILocation(line: 14, column: 13, scope: !321)
!323 = !DILocation(line: 14, column: 8, scope: !316)
!324 = !DILocation(line: 16, column: 24, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !3, line: 15, column: 5)
!326 = !DILocation(line: 16, column: 9, scope: !325)
!327 = !DILocation(line: 17, column: 5, scope: !325)
!328 = !DILocation(line: 18, column: 5, scope: !316)
!329 = !DILocation(line: 19, column: 1, scope: !316)
!330 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !53, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!331 = !DILocalVariable(name: "line", arg: 1, scope: !330, file: !3, line: 20, type: !42)
!332 = !DILocation(line: 20, column: 29, scope: !330)
!333 = !DILocation(line: 22, column: 8, scope: !334)
!334 = distinct !DILexicalBlock(scope: !330, file: !3, line: 22, column: 8)
!335 = !DILocation(line: 22, column: 13, scope: !334)
!336 = !DILocation(line: 22, column: 8, scope: !330)
!337 = !DILocation(line: 24, column: 24, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !3, line: 23, column: 5)
!339 = !DILocation(line: 24, column: 9, scope: !338)
!340 = !DILocation(line: 25, column: 5, scope: !338)
!341 = !DILocation(line: 26, column: 1, scope: !330)
!342 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !343, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !345}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !109, line: 74, baseType: !23)
!347 = !DILocalVariable(name: "line", arg: 1, scope: !342, file: !3, line: 27, type: !345)
!348 = !DILocation(line: 27, column: 29, scope: !342)
!349 = !DILocation(line: 29, column: 8, scope: !350)
!350 = distinct !DILexicalBlock(scope: !342, file: !3, line: 29, column: 8)
!351 = !DILocation(line: 29, column: 13, scope: !350)
!352 = !DILocation(line: 29, column: 8, scope: !342)
!353 = !DILocation(line: 31, column: 27, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !3, line: 30, column: 5)
!355 = !DILocation(line: 31, column: 9, scope: !354)
!356 = !DILocation(line: 32, column: 5, scope: !354)
!357 = !DILocation(line: 33, column: 1, scope: !342)
!358 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !359, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !23}
!361 = !DILocalVariable(name: "intNumber", arg: 1, scope: !358, file: !3, line: 35, type: !23)
!362 = !DILocation(line: 35, column: 24, scope: !358)
!363 = !DILocation(line: 37, column: 20, scope: !358)
!364 = !DILocation(line: 37, column: 5, scope: !358)
!365 = !DILocation(line: 38, column: 1, scope: !358)
!366 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !367, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !369}
!369 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!370 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !366, file: !3, line: 40, type: !369)
!371 = !DILocation(line: 40, column: 28, scope: !366)
!372 = !DILocation(line: 42, column: 21, scope: !366)
!373 = !DILocation(line: 42, column: 5, scope: !366)
!374 = !DILocation(line: 43, column: 1, scope: !366)
!375 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !376, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !378}
!378 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!379 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !375, file: !3, line: 45, type: !378)
!380 = !DILocation(line: 45, column: 28, scope: !375)
!381 = !DILocation(line: 47, column: 20, scope: !375)
!382 = !DILocation(line: 47, column: 5, scope: !375)
!383 = !DILocation(line: 48, column: 1, scope: !375)
!384 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !385, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !387}
!387 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!388 = !DILocalVariable(name: "longNumber", arg: 1, scope: !384, file: !3, line: 50, type: !387)
!389 = !DILocation(line: 50, column: 26, scope: !384)
!390 = !DILocation(line: 52, column: 21, scope: !384)
!391 = !DILocation(line: 52, column: 5, scope: !384)
!392 = !DILocation(line: 53, column: 1, scope: !384)
!393 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !394, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !396}
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !397, line: 27, baseType: !398)
!397 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !399, line: 44, baseType: !387)
!399 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!400 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !393, file: !3, line: 55, type: !396)
!401 = !DILocation(line: 55, column: 33, scope: !393)
!402 = !DILocation(line: 57, column: 29, scope: !393)
!403 = !DILocation(line: 57, column: 5, scope: !393)
!404 = !DILocation(line: 58, column: 1, scope: !393)
!405 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !406, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !108}
!408 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !405, file: !3, line: 60, type: !108)
!409 = !DILocation(line: 60, column: 29, scope: !405)
!410 = !DILocation(line: 62, column: 21, scope: !405)
!411 = !DILocation(line: 62, column: 5, scope: !405)
!412 = !DILocation(line: 63, column: 1, scope: !405)
!413 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !414, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !43}
!416 = !DILocalVariable(name: "charHex", arg: 1, scope: !413, file: !3, line: 65, type: !43)
!417 = !DILocation(line: 65, column: 29, scope: !413)
!418 = !DILocation(line: 67, column: 22, scope: !413)
!419 = !DILocation(line: 67, column: 5, scope: !413)
!420 = !DILocation(line: 68, column: 1, scope: !413)
!421 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !422, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !346}
!424 = !DILocalVariable(name: "wideChar", arg: 1, scope: !421, file: !3, line: 70, type: !346)
!425 = !DILocation(line: 70, column: 29, scope: !421)
!426 = !DILocalVariable(name: "s", scope: !421, file: !3, line: 74, type: !427)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 64, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 2)
!430 = !DILocation(line: 74, column: 13, scope: !421)
!431 = !DILocation(line: 75, column: 16, scope: !421)
!432 = !DILocation(line: 75, column: 9, scope: !421)
!433 = !DILocation(line: 75, column: 14, scope: !421)
!434 = !DILocation(line: 76, column: 9, scope: !421)
!435 = !DILocation(line: 76, column: 14, scope: !421)
!436 = !DILocation(line: 77, column: 21, scope: !421)
!437 = !DILocation(line: 77, column: 5, scope: !421)
!438 = !DILocation(line: 78, column: 1, scope: !421)
!439 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !440, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !7}
!442 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !439, file: !3, line: 80, type: !7)
!443 = !DILocation(line: 80, column: 33, scope: !439)
!444 = !DILocation(line: 82, column: 20, scope: !439)
!445 = !DILocation(line: 82, column: 5, scope: !439)
!446 = !DILocation(line: 83, column: 1, scope: !439)
!447 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !448, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !25}
!450 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !447, file: !3, line: 85, type: !25)
!451 = !DILocation(line: 85, column: 45, scope: !447)
!452 = !DILocation(line: 87, column: 22, scope: !447)
!453 = !DILocation(line: 87, column: 5, scope: !447)
!454 = !DILocation(line: 88, column: 1, scope: !447)
!455 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !456, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !458}
!458 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!459 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !455, file: !3, line: 90, type: !458)
!460 = !DILocation(line: 90, column: 29, scope: !455)
!461 = !DILocation(line: 92, column: 20, scope: !455)
!462 = !DILocation(line: 92, column: 5, scope: !455)
!463 = !DILocation(line: 93, column: 1, scope: !455)
!464 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !465, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !467}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !469, line: 100, baseType: !470)
!469 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_005/source_code")
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !469, line: 96, size: 64, elements: !471)
!471 = !{!472, !473}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !470, file: !469, line: 98, baseType: !23, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !470, file: !469, line: 99, baseType: !23, size: 32, offset: 32)
!474 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !464, file: !3, line: 95, type: !467)
!475 = !DILocation(line: 95, column: 40, scope: !464)
!476 = !DILocation(line: 97, column: 26, scope: !464)
!477 = !DILocation(line: 97, column: 47, scope: !464)
!478 = !DILocation(line: 97, column: 55, scope: !464)
!479 = !DILocation(line: 97, column: 76, scope: !464)
!480 = !DILocation(line: 97, column: 5, scope: !464)
!481 = !DILocation(line: 98, column: 1, scope: !464)
!482 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !483, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !485, !108}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!486 = !DILocalVariable(name: "bytes", arg: 1, scope: !482, file: !3, line: 100, type: !485)
!487 = !DILocation(line: 100, column: 38, scope: !482)
!488 = !DILocalVariable(name: "numBytes", arg: 2, scope: !482, file: !3, line: 100, type: !108)
!489 = !DILocation(line: 100, column: 52, scope: !482)
!490 = !DILocalVariable(name: "i", scope: !482, file: !3, line: 102, type: !108)
!491 = !DILocation(line: 102, column: 12, scope: !482)
!492 = !DILocation(line: 103, column: 12, scope: !493)
!493 = distinct !DILexicalBlock(scope: !482, file: !3, line: 103, column: 5)
!494 = !DILocation(line: 103, column: 10, scope: !493)
!495 = !DILocation(line: 103, column: 17, scope: !496)
!496 = distinct !DILexicalBlock(scope: !493, file: !3, line: 103, column: 5)
!497 = !DILocation(line: 103, column: 21, scope: !496)
!498 = !DILocation(line: 103, column: 19, scope: !496)
!499 = !DILocation(line: 103, column: 5, scope: !493)
!500 = !DILocation(line: 105, column: 24, scope: !501)
!501 = distinct !DILexicalBlock(scope: !496, file: !3, line: 104, column: 5)
!502 = !DILocation(line: 105, column: 30, scope: !501)
!503 = !DILocation(line: 105, column: 9, scope: !501)
!504 = !DILocation(line: 106, column: 5, scope: !501)
!505 = !DILocation(line: 103, column: 31, scope: !496)
!506 = !DILocation(line: 103, column: 5, scope: !496)
!507 = distinct !{!507, !499, !508, !86}
!508 = !DILocation(line: 106, column: 5, scope: !493)
!509 = !DILocation(line: 107, column: 5, scope: !482)
!510 = !DILocation(line: 108, column: 1, scope: !482)
!511 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !512, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!512 = !DISubroutineType(types: !513)
!513 = !{!108, !485, !108, !42}
!514 = !DILocalVariable(name: "bytes", arg: 1, scope: !511, file: !3, line: 113, type: !485)
!515 = !DILocation(line: 113, column: 39, scope: !511)
!516 = !DILocalVariable(name: "numBytes", arg: 2, scope: !511, file: !3, line: 113, type: !108)
!517 = !DILocation(line: 113, column: 53, scope: !511)
!518 = !DILocalVariable(name: "hex", arg: 3, scope: !511, file: !3, line: 113, type: !42)
!519 = !DILocation(line: 113, column: 71, scope: !511)
!520 = !DILocalVariable(name: "numWritten", scope: !511, file: !3, line: 115, type: !108)
!521 = !DILocation(line: 115, column: 12, scope: !511)
!522 = !DILocation(line: 121, column: 5, scope: !511)
!523 = !DILocation(line: 121, column: 12, scope: !511)
!524 = !DILocation(line: 121, column: 25, scope: !511)
!525 = !DILocation(line: 121, column: 23, scope: !511)
!526 = !DILocation(line: 121, column: 34, scope: !511)
!527 = !DILocation(line: 121, column: 37, scope: !511)
!528 = !DILocation(line: 121, column: 67, scope: !511)
!529 = !DILocation(line: 121, column: 70, scope: !511)
!530 = !DILocation(line: 0, scope: !511)
!531 = !DILocalVariable(name: "byte", scope: !532, file: !3, line: 123, type: !23)
!532 = distinct !DILexicalBlock(scope: !511, file: !3, line: 122, column: 5)
!533 = !DILocation(line: 123, column: 13, scope: !532)
!534 = !DILocation(line: 124, column: 17, scope: !532)
!535 = !DILocation(line: 124, column: 25, scope: !532)
!536 = !DILocation(line: 124, column: 23, scope: !532)
!537 = !DILocation(line: 124, column: 9, scope: !532)
!538 = !DILocation(line: 125, column: 45, scope: !532)
!539 = !DILocation(line: 125, column: 29, scope: !532)
!540 = !DILocation(line: 125, column: 9, scope: !532)
!541 = !DILocation(line: 125, column: 15, scope: !532)
!542 = !DILocation(line: 125, column: 27, scope: !532)
!543 = !DILocation(line: 126, column: 9, scope: !532)
!544 = distinct !{!544, !522, !545, !86}
!545 = !DILocation(line: 127, column: 5, scope: !511)
!546 = !DILocation(line: 129, column: 12, scope: !511)
!547 = !DILocation(line: 129, column: 5, scope: !511)
!548 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !549, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!549 = !DISubroutineType(types: !550)
!550 = !{!108, !485, !108, !345}
!551 = !DILocalVariable(name: "bytes", arg: 1, scope: !548, file: !3, line: 135, type: !485)
!552 = !DILocation(line: 135, column: 41, scope: !548)
!553 = !DILocalVariable(name: "numBytes", arg: 2, scope: !548, file: !3, line: 135, type: !108)
!554 = !DILocation(line: 135, column: 55, scope: !548)
!555 = !DILocalVariable(name: "hex", arg: 3, scope: !548, file: !3, line: 135, type: !345)
!556 = !DILocation(line: 135, column: 76, scope: !548)
!557 = !DILocalVariable(name: "numWritten", scope: !548, file: !3, line: 137, type: !108)
!558 = !DILocation(line: 137, column: 12, scope: !548)
!559 = !DILocation(line: 143, column: 5, scope: !548)
!560 = !DILocation(line: 143, column: 12, scope: !548)
!561 = !DILocation(line: 143, column: 25, scope: !548)
!562 = !DILocation(line: 143, column: 23, scope: !548)
!563 = !DILocation(line: 143, column: 34, scope: !548)
!564 = !DILocation(line: 143, column: 47, scope: !548)
!565 = !DILocation(line: 143, column: 55, scope: !548)
!566 = !DILocation(line: 143, column: 53, scope: !548)
!567 = !DILocation(line: 143, column: 37, scope: !548)
!568 = !DILocation(line: 143, column: 68, scope: !548)
!569 = !DILocation(line: 143, column: 81, scope: !548)
!570 = !DILocation(line: 143, column: 89, scope: !548)
!571 = !DILocation(line: 143, column: 87, scope: !548)
!572 = !DILocation(line: 143, column: 100, scope: !548)
!573 = !DILocation(line: 143, column: 71, scope: !548)
!574 = !DILocation(line: 0, scope: !548)
!575 = !DILocalVariable(name: "byte", scope: !576, file: !3, line: 145, type: !23)
!576 = distinct !DILexicalBlock(scope: !548, file: !3, line: 144, column: 5)
!577 = !DILocation(line: 145, column: 13, scope: !576)
!578 = !DILocation(line: 146, column: 18, scope: !576)
!579 = !DILocation(line: 146, column: 26, scope: !576)
!580 = !DILocation(line: 146, column: 24, scope: !576)
!581 = !DILocation(line: 146, column: 9, scope: !576)
!582 = !DILocation(line: 147, column: 45, scope: !576)
!583 = !DILocation(line: 147, column: 29, scope: !576)
!584 = !DILocation(line: 147, column: 9, scope: !576)
!585 = !DILocation(line: 147, column: 15, scope: !576)
!586 = !DILocation(line: 147, column: 27, scope: !576)
!587 = !DILocation(line: 148, column: 9, scope: !576)
!588 = distinct !{!588, !559, !589, !86}
!589 = !DILocation(line: 149, column: 5, scope: !548)
!590 = !DILocation(line: 151, column: 12, scope: !548)
!591 = !DILocation(line: 151, column: 5, scope: !548)
!592 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !593, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!593 = !DISubroutineType(types: !594)
!594 = !{!23}
!595 = !DILocation(line: 158, column: 5, scope: !592)
!596 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !593, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!597 = !DILocation(line: 163, column: 5, scope: !596)
!598 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !593, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!599 = !DILocation(line: 168, column: 13, scope: !598)
!600 = !DILocation(line: 168, column: 20, scope: !598)
!601 = !DILocation(line: 168, column: 5, scope: !598)
!602 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !92, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!603 = !DILocation(line: 187, column: 16, scope: !602)
!604 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !92, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!605 = !DILocation(line: 188, column: 16, scope: !604)
!606 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !92, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!607 = !DILocation(line: 189, column: 16, scope: !606)
!608 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !92, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!609 = !DILocation(line: 190, column: 16, scope: !608)
!610 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !92, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!611 = !DILocation(line: 191, column: 16, scope: !610)
!612 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !92, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!613 = !DILocation(line: 192, column: 16, scope: !612)
!614 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !92, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!615 = !DILocation(line: 193, column: 16, scope: !614)
!616 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !92, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!617 = !DILocation(line: 194, column: 16, scope: !616)
!618 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !92, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!619 = !DILocation(line: 195, column: 16, scope: !618)
!620 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !92, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!621 = !DILocation(line: 198, column: 15, scope: !620)
!622 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !92, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!623 = !DILocation(line: 199, column: 15, scope: !622)
!624 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !92, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!625 = !DILocation(line: 200, column: 15, scope: !624)
!626 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !92, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!627 = !DILocation(line: 201, column: 15, scope: !626)
!628 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !92, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!629 = !DILocation(line: 202, column: 15, scope: !628)
!630 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !92, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!631 = !DILocation(line: 203, column: 15, scope: !630)
!632 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !92, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!633 = !DILocation(line: 204, column: 15, scope: !632)
!634 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !92, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!635 = !DILocation(line: 205, column: 15, scope: !634)
!636 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !92, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!637 = !DILocation(line: 206, column: 15, scope: !636)
