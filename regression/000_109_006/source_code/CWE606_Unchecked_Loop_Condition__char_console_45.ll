; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_45.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_45.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@CWE606_Unchecked_Loop_Condition__char_console_45_badData = dso_local global i8* null, align 8, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@CWE606_Unchecked_Loop_Condition__char_console_45_goodG2BData = dso_local global i8* null, align 8, !dbg !9
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@CWE606_Unchecked_Loop_Condition__char_console_45_goodB2GData = dso_local global i8* null, align 8, !dbg !13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink() #0 !dbg !19 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !22, metadata !DIExpression()), !dbg !23
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_console_45_badData, align 8, !dbg !24
  store i8* %0, i8** %data, align 8, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !25, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %n, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !30, metadata !DIExpression()), !dbg !31
  %1 = load i8*, i8** %data, align 8, !dbg !32
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !34
  %cmp = icmp eq i32 %call, 1, !dbg !35
  br i1 %cmp, label %if.then, label %if.end, !dbg !36

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !37
  store i32 0, i32* %i, align 4, !dbg !39
  br label %for.cond, !dbg !41

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !42
  %3 = load i32, i32* %n, align 4, !dbg !44
  %cmp1 = icmp slt i32 %2, %3, !dbg !45
  br i1 %cmp1, label %for.body, label %for.end, !dbg !46

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !47
  %inc = add nsw i32 %4, 1, !dbg !47
  store i32 %inc, i32* %intVariable, align 4, !dbg !47
  br label %for.inc, !dbg !49

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !50
  %inc2 = add nsw i32 %5, 1, !dbg !50
  store i32 %inc2, i32* %i, align 4, !dbg !50
  br label %for.cond, !dbg !51, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !55
  call void @printIntLine(i32 %6), !dbg !56
  br label %if.end, !dbg !57

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !58
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_45_bad() #0 !dbg !59 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !62, metadata !DIExpression()), !dbg !66
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !66
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !66
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !67
  store i8* %arraydecay, i8** %data, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !69, metadata !DIExpression()), !dbg !74
  %1 = load i8*, i8** %data, align 8, !dbg !75
  %call = call i64 @strlen(i8* %1) #7, !dbg !76
  store i64 %call, i64* %dataLen, align 8, !dbg !74
  %2 = load i64, i64* %dataLen, align 8, !dbg !77
  %sub = sub i64 100, %2, !dbg !79
  %cmp = icmp ugt i64 %sub, 1, !dbg !80
  br i1 %cmp, label %if.then, label %if.end18, !dbg !81

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !82
  %4 = load i64, i64* %dataLen, align 8, !dbg !85
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !86
  %5 = load i64, i64* %dataLen, align 8, !dbg !87
  %sub1 = sub i64 100, %5, !dbg !88
  %conv = trunc i64 %sub1 to i32, !dbg !89
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !90
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !91
  %cmp3 = icmp ne i8* %call2, null, !dbg !92
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !93

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !94
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !96
  store i64 %call6, i64* %dataLen, align 8, !dbg !97
  %8 = load i64, i64* %dataLen, align 8, !dbg !98
  %cmp7 = icmp ugt i64 %8, 0, !dbg !100
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !101

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !102
  %10 = load i64, i64* %dataLen, align 8, !dbg !103
  %sub9 = sub i64 %10, 1, !dbg !104
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !102
  %11 = load i8, i8* %arrayidx, align 1, !dbg !102
  %conv10 = sext i8 %11 to i32, !dbg !102
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !105
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !106

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !107
  %13 = load i64, i64* %dataLen, align 8, !dbg !109
  %sub14 = sub i64 %13, 1, !dbg !110
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !107
  store i8 0, i8* %arrayidx15, align 1, !dbg !111
  br label %if.end, !dbg !112

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !113

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)), !dbg !114
  %14 = load i8*, i8** %data, align 8, !dbg !116
  %15 = load i64, i64* %dataLen, align 8, !dbg !117
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !116
  store i8 0, i8* %arrayidx16, align 1, !dbg !118
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !119

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !120
  store i8* %16, i8** @CWE606_Unchecked_Loop_Condition__char_console_45_badData, align 8, !dbg !121
  call void @badSink(), !dbg !122
  ret void, !dbg !123
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink() #0 !dbg !124 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !125, metadata !DIExpression()), !dbg !126
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_console_45_goodG2BData, align 8, !dbg !127
  store i8* %0, i8** %data, align 8, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %i, metadata !128, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata i32* %n, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !133, metadata !DIExpression()), !dbg !134
  %1 = load i8*, i8** %data, align 8, !dbg !135
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !137
  %cmp = icmp eq i32 %call, 1, !dbg !138
  br i1 %cmp, label %if.then, label %if.end, !dbg !139

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !140
  store i32 0, i32* %i, align 4, !dbg !142
  br label %for.cond, !dbg !144

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !145
  %3 = load i32, i32* %n, align 4, !dbg !147
  %cmp1 = icmp slt i32 %2, %3, !dbg !148
  br i1 %cmp1, label %for.body, label %for.end, !dbg !149

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !150
  %inc = add nsw i32 %4, 1, !dbg !150
  store i32 %inc, i32* %intVariable, align 4, !dbg !150
  br label %for.inc, !dbg !152

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !153
  %inc2 = add nsw i32 %5, 1, !dbg !153
  store i32 %inc2, i32* %i, align 4, !dbg !153
  br label %for.cond, !dbg !154, !llvm.loop !155

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !157
  call void @printIntLine(i32 %6), !dbg !158
  br label %if.end, !dbg !159

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !160
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !161 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !164, metadata !DIExpression()), !dbg !165
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !165
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !165
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !166
  store i8* %arraydecay, i8** %data, align 8, !dbg !167
  %1 = load i8*, i8** %data, align 8, !dbg !168
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !169
  %2 = load i8*, i8** %data, align 8, !dbg !170
  store i8* %2, i8** @CWE606_Unchecked_Loop_Condition__char_console_45_goodG2BData, align 8, !dbg !171
  call void @goodG2BSink(), !dbg !172
  ret void, !dbg !173
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink() #0 !dbg !174 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !175, metadata !DIExpression()), !dbg !176
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_console_45_goodB2GData, align 8, !dbg !177
  store i8* %0, i8** %data, align 8, !dbg !176
  call void @llvm.dbg.declare(metadata i32* %i, metadata !178, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata i32* %n, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !183, metadata !DIExpression()), !dbg !184
  %1 = load i8*, i8** %data, align 8, !dbg !185
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !187
  %cmp = icmp eq i32 %call, 1, !dbg !188
  br i1 %cmp, label %if.then, label %if.end5, !dbg !189

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n, align 4, !dbg !190
  %cmp1 = icmp slt i32 %2, 10000, !dbg !193
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !194

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !195
  store i32 0, i32* %i, align 4, !dbg !197
  br label %for.cond, !dbg !199

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load i32, i32* %i, align 4, !dbg !200
  %4 = load i32, i32* %n, align 4, !dbg !202
  %cmp3 = icmp slt i32 %3, %4, !dbg !203
  br i1 %cmp3, label %for.body, label %for.end, !dbg !204

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !205
  %inc = add nsw i32 %5, 1, !dbg !205
  store i32 %inc, i32* %intVariable, align 4, !dbg !205
  br label %for.inc, !dbg !207

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !208
  %inc4 = add nsw i32 %6, 1, !dbg !208
  store i32 %inc4, i32* %i, align 4, !dbg !208
  br label %for.cond, !dbg !209, !llvm.loop !210

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !212
  call void @printIntLine(i32 %7), !dbg !213
  br label %if.end, !dbg !214

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !215

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !216
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !217 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !220, metadata !DIExpression()), !dbg !221
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !221
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !221
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !222
  store i8* %arraydecay, i8** %data, align 8, !dbg !223
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !224, metadata !DIExpression()), !dbg !226
  %1 = load i8*, i8** %data, align 8, !dbg !227
  %call = call i64 @strlen(i8* %1) #7, !dbg !228
  store i64 %call, i64* %dataLen, align 8, !dbg !226
  %2 = load i64, i64* %dataLen, align 8, !dbg !229
  %sub = sub i64 100, %2, !dbg !231
  %cmp = icmp ugt i64 %sub, 1, !dbg !232
  br i1 %cmp, label %if.then, label %if.end18, !dbg !233

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !234
  %4 = load i64, i64* %dataLen, align 8, !dbg !237
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !238
  %5 = load i64, i64* %dataLen, align 8, !dbg !239
  %sub1 = sub i64 100, %5, !dbg !240
  %conv = trunc i64 %sub1 to i32, !dbg !241
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !242
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !243
  %cmp3 = icmp ne i8* %call2, null, !dbg !244
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !245

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !246
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !248
  store i64 %call6, i64* %dataLen, align 8, !dbg !249
  %8 = load i64, i64* %dataLen, align 8, !dbg !250
  %cmp7 = icmp ugt i64 %8, 0, !dbg !252
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !253

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !254
  %10 = load i64, i64* %dataLen, align 8, !dbg !255
  %sub9 = sub i64 %10, 1, !dbg !256
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !254
  %11 = load i8, i8* %arrayidx, align 1, !dbg !254
  %conv10 = sext i8 %11 to i32, !dbg !254
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !257
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !258

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !259
  %13 = load i64, i64* %dataLen, align 8, !dbg !261
  %sub14 = sub i64 %13, 1, !dbg !262
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !259
  store i8 0, i8* %arrayidx15, align 1, !dbg !263
  br label %if.end, !dbg !264

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !265

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)), !dbg !266
  %14 = load i8*, i8** %data, align 8, !dbg !268
  %15 = load i64, i64* %dataLen, align 8, !dbg !269
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !268
  store i8 0, i8* %arrayidx16, align 1, !dbg !270
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !271

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !272
  store i8* %16, i8** @CWE606_Unchecked_Loop_Condition__char_console_45_goodB2GData, align 8, !dbg !273
  call void @goodB2GSink(), !dbg !274
  ret void, !dbg !275
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_45_good() #0 !dbg !276 {
entry:
  call void @goodG2B(), !dbg !277
  call void @goodB2G(), !dbg !278
  ret void, !dbg !279
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

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
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 12.0.0"}
!19 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 33, type: !20, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null}
!22 = !DILocalVariable(name: "data", scope: !19, file: !3, line: 35, type: !11)
!23 = !DILocation(line: 35, column: 12, scope: !19)
!24 = !DILocation(line: 35, column: 19, scope: !19)
!25 = !DILocalVariable(name: "i", scope: !26, file: !3, line: 37, type: !6)
!26 = distinct !DILexicalBlock(scope: !19, file: !3, line: 36, column: 5)
!27 = !DILocation(line: 37, column: 13, scope: !26)
!28 = !DILocalVariable(name: "n", scope: !26, file: !3, line: 37, type: !6)
!29 = !DILocation(line: 37, column: 16, scope: !26)
!30 = !DILocalVariable(name: "intVariable", scope: !26, file: !3, line: 37, type: !6)
!31 = !DILocation(line: 37, column: 19, scope: !26)
!32 = !DILocation(line: 38, column: 20, scope: !33)
!33 = distinct !DILexicalBlock(scope: !26, file: !3, line: 38, column: 13)
!34 = !DILocation(line: 38, column: 13, scope: !33)
!35 = !DILocation(line: 38, column: 36, scope: !33)
!36 = !DILocation(line: 38, column: 13, scope: !26)
!37 = !DILocation(line: 41, column: 25, scope: !38)
!38 = distinct !DILexicalBlock(scope: !33, file: !3, line: 39, column: 9)
!39 = !DILocation(line: 42, column: 20, scope: !40)
!40 = distinct !DILexicalBlock(scope: !38, file: !3, line: 42, column: 13)
!41 = !DILocation(line: 42, column: 18, scope: !40)
!42 = !DILocation(line: 42, column: 25, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !3, line: 42, column: 13)
!44 = !DILocation(line: 42, column: 29, scope: !43)
!45 = !DILocation(line: 42, column: 27, scope: !43)
!46 = !DILocation(line: 42, column: 13, scope: !40)
!47 = !DILocation(line: 45, column: 28, scope: !48)
!48 = distinct !DILexicalBlock(scope: !43, file: !3, line: 43, column: 13)
!49 = !DILocation(line: 46, column: 13, scope: !48)
!50 = !DILocation(line: 42, column: 33, scope: !43)
!51 = !DILocation(line: 42, column: 13, scope: !43)
!52 = distinct !{!52, !46, !53, !54}
!53 = !DILocation(line: 46, column: 13, scope: !40)
!54 = !{!"llvm.loop.mustprogress"}
!55 = !DILocation(line: 47, column: 26, scope: !38)
!56 = !DILocation(line: 47, column: 13, scope: !38)
!57 = !DILocation(line: 48, column: 9, scope: !38)
!58 = !DILocation(line: 50, column: 1, scope: !19)
!59 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_45_bad", scope: !3, file: !3, line: 52, type: !20, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!60 = !DILocalVariable(name: "data", scope: !59, file: !3, line: 54, type: !11)
!61 = !DILocation(line: 54, column: 12, scope: !59)
!62 = !DILocalVariable(name: "dataBuffer", scope: !59, file: !3, line: 55, type: !63)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 800, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 100)
!66 = !DILocation(line: 55, column: 10, scope: !59)
!67 = !DILocation(line: 56, column: 12, scope: !59)
!68 = !DILocation(line: 56, column: 10, scope: !59)
!69 = !DILocalVariable(name: "dataLen", scope: !70, file: !3, line: 59, type: !71)
!70 = distinct !DILexicalBlock(scope: !59, file: !3, line: 57, column: 5)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 46, baseType: !73)
!72 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!73 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DILocation(line: 59, column: 16, scope: !70)
!75 = !DILocation(line: 59, column: 33, scope: !70)
!76 = !DILocation(line: 59, column: 26, scope: !70)
!77 = !DILocation(line: 61, column: 17, scope: !78)
!78 = distinct !DILexicalBlock(scope: !70, file: !3, line: 61, column: 13)
!79 = !DILocation(line: 61, column: 16, scope: !78)
!80 = !DILocation(line: 61, column: 25, scope: !78)
!81 = !DILocation(line: 61, column: 13, scope: !70)
!82 = !DILocation(line: 64, column: 23, scope: !83)
!83 = distinct !DILexicalBlock(scope: !84, file: !3, line: 64, column: 17)
!84 = distinct !DILexicalBlock(scope: !78, file: !3, line: 62, column: 9)
!85 = !DILocation(line: 64, column: 28, scope: !83)
!86 = !DILocation(line: 64, column: 27, scope: !83)
!87 = !DILocation(line: 64, column: 47, scope: !83)
!88 = !DILocation(line: 64, column: 46, scope: !83)
!89 = !DILocation(line: 64, column: 37, scope: !83)
!90 = !DILocation(line: 64, column: 57, scope: !83)
!91 = !DILocation(line: 64, column: 17, scope: !83)
!92 = !DILocation(line: 64, column: 64, scope: !83)
!93 = !DILocation(line: 64, column: 17, scope: !84)
!94 = !DILocation(line: 68, column: 34, scope: !95)
!95 = distinct !DILexicalBlock(scope: !83, file: !3, line: 65, column: 13)
!96 = !DILocation(line: 68, column: 27, scope: !95)
!97 = !DILocation(line: 68, column: 25, scope: !95)
!98 = !DILocation(line: 69, column: 21, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !3, line: 69, column: 21)
!100 = !DILocation(line: 69, column: 29, scope: !99)
!101 = !DILocation(line: 69, column: 33, scope: !99)
!102 = !DILocation(line: 69, column: 36, scope: !99)
!103 = !DILocation(line: 69, column: 41, scope: !99)
!104 = !DILocation(line: 69, column: 48, scope: !99)
!105 = !DILocation(line: 69, column: 52, scope: !99)
!106 = !DILocation(line: 69, column: 21, scope: !95)
!107 = !DILocation(line: 71, column: 21, scope: !108)
!108 = distinct !DILexicalBlock(scope: !99, file: !3, line: 70, column: 17)
!109 = !DILocation(line: 71, column: 26, scope: !108)
!110 = !DILocation(line: 71, column: 33, scope: !108)
!111 = !DILocation(line: 71, column: 37, scope: !108)
!112 = !DILocation(line: 72, column: 17, scope: !108)
!113 = !DILocation(line: 73, column: 13, scope: !95)
!114 = !DILocation(line: 76, column: 17, scope: !115)
!115 = distinct !DILexicalBlock(scope: !83, file: !3, line: 75, column: 13)
!116 = !DILocation(line: 78, column: 17, scope: !115)
!117 = !DILocation(line: 78, column: 22, scope: !115)
!118 = !DILocation(line: 78, column: 31, scope: !115)
!119 = !DILocation(line: 80, column: 9, scope: !84)
!120 = !DILocation(line: 82, column: 64, scope: !59)
!121 = !DILocation(line: 82, column: 62, scope: !59)
!122 = !DILocation(line: 83, column: 5, scope: !59)
!123 = !DILocation(line: 84, column: 1, scope: !59)
!124 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 91, type: !20, scopeLine: 92, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!125 = !DILocalVariable(name: "data", scope: !124, file: !3, line: 93, type: !11)
!126 = !DILocation(line: 93, column: 12, scope: !124)
!127 = !DILocation(line: 93, column: 19, scope: !124)
!128 = !DILocalVariable(name: "i", scope: !129, file: !3, line: 95, type: !6)
!129 = distinct !DILexicalBlock(scope: !124, file: !3, line: 94, column: 5)
!130 = !DILocation(line: 95, column: 13, scope: !129)
!131 = !DILocalVariable(name: "n", scope: !129, file: !3, line: 95, type: !6)
!132 = !DILocation(line: 95, column: 16, scope: !129)
!133 = !DILocalVariable(name: "intVariable", scope: !129, file: !3, line: 95, type: !6)
!134 = !DILocation(line: 95, column: 19, scope: !129)
!135 = !DILocation(line: 96, column: 20, scope: !136)
!136 = distinct !DILexicalBlock(scope: !129, file: !3, line: 96, column: 13)
!137 = !DILocation(line: 96, column: 13, scope: !136)
!138 = !DILocation(line: 96, column: 36, scope: !136)
!139 = !DILocation(line: 96, column: 13, scope: !129)
!140 = !DILocation(line: 99, column: 25, scope: !141)
!141 = distinct !DILexicalBlock(scope: !136, file: !3, line: 97, column: 9)
!142 = !DILocation(line: 100, column: 20, scope: !143)
!143 = distinct !DILexicalBlock(scope: !141, file: !3, line: 100, column: 13)
!144 = !DILocation(line: 100, column: 18, scope: !143)
!145 = !DILocation(line: 100, column: 25, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !3, line: 100, column: 13)
!147 = !DILocation(line: 100, column: 29, scope: !146)
!148 = !DILocation(line: 100, column: 27, scope: !146)
!149 = !DILocation(line: 100, column: 13, scope: !143)
!150 = !DILocation(line: 103, column: 28, scope: !151)
!151 = distinct !DILexicalBlock(scope: !146, file: !3, line: 101, column: 13)
!152 = !DILocation(line: 104, column: 13, scope: !151)
!153 = !DILocation(line: 100, column: 33, scope: !146)
!154 = !DILocation(line: 100, column: 13, scope: !146)
!155 = distinct !{!155, !149, !156, !54}
!156 = !DILocation(line: 104, column: 13, scope: !143)
!157 = !DILocation(line: 105, column: 26, scope: !141)
!158 = !DILocation(line: 105, column: 13, scope: !141)
!159 = !DILocation(line: 106, column: 9, scope: !141)
!160 = !DILocation(line: 108, column: 1, scope: !124)
!161 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 110, type: !20, scopeLine: 111, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!162 = !DILocalVariable(name: "data", scope: !161, file: !3, line: 112, type: !11)
!163 = !DILocation(line: 112, column: 12, scope: !161)
!164 = !DILocalVariable(name: "dataBuffer", scope: !161, file: !3, line: 113, type: !63)
!165 = !DILocation(line: 113, column: 10, scope: !161)
!166 = !DILocation(line: 114, column: 12, scope: !161)
!167 = !DILocation(line: 114, column: 10, scope: !161)
!168 = !DILocation(line: 116, column: 12, scope: !161)
!169 = !DILocation(line: 116, column: 5, scope: !161)
!170 = !DILocation(line: 117, column: 68, scope: !161)
!171 = !DILocation(line: 117, column: 66, scope: !161)
!172 = !DILocation(line: 118, column: 5, scope: !161)
!173 = !DILocation(line: 119, column: 1, scope: !161)
!174 = distinct !DISubprogram(name: "goodB2GSink", scope: !3, file: !3, line: 122, type: !20, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!175 = !DILocalVariable(name: "data", scope: !174, file: !3, line: 124, type: !11)
!176 = !DILocation(line: 124, column: 12, scope: !174)
!177 = !DILocation(line: 124, column: 19, scope: !174)
!178 = !DILocalVariable(name: "i", scope: !179, file: !3, line: 126, type: !6)
!179 = distinct !DILexicalBlock(scope: !174, file: !3, line: 125, column: 5)
!180 = !DILocation(line: 126, column: 13, scope: !179)
!181 = !DILocalVariable(name: "n", scope: !179, file: !3, line: 126, type: !6)
!182 = !DILocation(line: 126, column: 16, scope: !179)
!183 = !DILocalVariable(name: "intVariable", scope: !179, file: !3, line: 126, type: !6)
!184 = !DILocation(line: 126, column: 19, scope: !179)
!185 = !DILocation(line: 127, column: 20, scope: !186)
!186 = distinct !DILexicalBlock(scope: !179, file: !3, line: 127, column: 13)
!187 = !DILocation(line: 127, column: 13, scope: !186)
!188 = !DILocation(line: 127, column: 36, scope: !186)
!189 = !DILocation(line: 127, column: 13, scope: !179)
!190 = !DILocation(line: 130, column: 17, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !3, line: 130, column: 17)
!192 = distinct !DILexicalBlock(scope: !186, file: !3, line: 128, column: 9)
!193 = !DILocation(line: 130, column: 19, scope: !191)
!194 = !DILocation(line: 130, column: 17, scope: !192)
!195 = !DILocation(line: 132, column: 29, scope: !196)
!196 = distinct !DILexicalBlock(scope: !191, file: !3, line: 131, column: 13)
!197 = !DILocation(line: 133, column: 24, scope: !198)
!198 = distinct !DILexicalBlock(scope: !196, file: !3, line: 133, column: 17)
!199 = !DILocation(line: 133, column: 22, scope: !198)
!200 = !DILocation(line: 133, column: 29, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !3, line: 133, column: 17)
!202 = !DILocation(line: 133, column: 33, scope: !201)
!203 = !DILocation(line: 133, column: 31, scope: !201)
!204 = !DILocation(line: 133, column: 17, scope: !198)
!205 = !DILocation(line: 136, column: 32, scope: !206)
!206 = distinct !DILexicalBlock(scope: !201, file: !3, line: 134, column: 17)
!207 = !DILocation(line: 137, column: 17, scope: !206)
!208 = !DILocation(line: 133, column: 37, scope: !201)
!209 = !DILocation(line: 133, column: 17, scope: !201)
!210 = distinct !{!210, !204, !211, !54}
!211 = !DILocation(line: 137, column: 17, scope: !198)
!212 = !DILocation(line: 138, column: 30, scope: !196)
!213 = !DILocation(line: 138, column: 17, scope: !196)
!214 = !DILocation(line: 139, column: 13, scope: !196)
!215 = !DILocation(line: 140, column: 9, scope: !192)
!216 = !DILocation(line: 142, column: 1, scope: !174)
!217 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 144, type: !20, scopeLine: 145, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!218 = !DILocalVariable(name: "data", scope: !217, file: !3, line: 146, type: !11)
!219 = !DILocation(line: 146, column: 12, scope: !217)
!220 = !DILocalVariable(name: "dataBuffer", scope: !217, file: !3, line: 147, type: !63)
!221 = !DILocation(line: 147, column: 10, scope: !217)
!222 = !DILocation(line: 148, column: 12, scope: !217)
!223 = !DILocation(line: 148, column: 10, scope: !217)
!224 = !DILocalVariable(name: "dataLen", scope: !225, file: !3, line: 151, type: !71)
!225 = distinct !DILexicalBlock(scope: !217, file: !3, line: 149, column: 5)
!226 = !DILocation(line: 151, column: 16, scope: !225)
!227 = !DILocation(line: 151, column: 33, scope: !225)
!228 = !DILocation(line: 151, column: 26, scope: !225)
!229 = !DILocation(line: 153, column: 17, scope: !230)
!230 = distinct !DILexicalBlock(scope: !225, file: !3, line: 153, column: 13)
!231 = !DILocation(line: 153, column: 16, scope: !230)
!232 = !DILocation(line: 153, column: 25, scope: !230)
!233 = !DILocation(line: 153, column: 13, scope: !225)
!234 = !DILocation(line: 156, column: 23, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !3, line: 156, column: 17)
!236 = distinct !DILexicalBlock(scope: !230, file: !3, line: 154, column: 9)
!237 = !DILocation(line: 156, column: 28, scope: !235)
!238 = !DILocation(line: 156, column: 27, scope: !235)
!239 = !DILocation(line: 156, column: 47, scope: !235)
!240 = !DILocation(line: 156, column: 46, scope: !235)
!241 = !DILocation(line: 156, column: 37, scope: !235)
!242 = !DILocation(line: 156, column: 57, scope: !235)
!243 = !DILocation(line: 156, column: 17, scope: !235)
!244 = !DILocation(line: 156, column: 64, scope: !235)
!245 = !DILocation(line: 156, column: 17, scope: !236)
!246 = !DILocation(line: 160, column: 34, scope: !247)
!247 = distinct !DILexicalBlock(scope: !235, file: !3, line: 157, column: 13)
!248 = !DILocation(line: 160, column: 27, scope: !247)
!249 = !DILocation(line: 160, column: 25, scope: !247)
!250 = !DILocation(line: 161, column: 21, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !3, line: 161, column: 21)
!252 = !DILocation(line: 161, column: 29, scope: !251)
!253 = !DILocation(line: 161, column: 33, scope: !251)
!254 = !DILocation(line: 161, column: 36, scope: !251)
!255 = !DILocation(line: 161, column: 41, scope: !251)
!256 = !DILocation(line: 161, column: 48, scope: !251)
!257 = !DILocation(line: 161, column: 52, scope: !251)
!258 = !DILocation(line: 161, column: 21, scope: !247)
!259 = !DILocation(line: 163, column: 21, scope: !260)
!260 = distinct !DILexicalBlock(scope: !251, file: !3, line: 162, column: 17)
!261 = !DILocation(line: 163, column: 26, scope: !260)
!262 = !DILocation(line: 163, column: 33, scope: !260)
!263 = !DILocation(line: 163, column: 37, scope: !260)
!264 = !DILocation(line: 164, column: 17, scope: !260)
!265 = !DILocation(line: 165, column: 13, scope: !247)
!266 = !DILocation(line: 168, column: 17, scope: !267)
!267 = distinct !DILexicalBlock(scope: !235, file: !3, line: 167, column: 13)
!268 = !DILocation(line: 170, column: 17, scope: !267)
!269 = !DILocation(line: 170, column: 22, scope: !267)
!270 = !DILocation(line: 170, column: 31, scope: !267)
!271 = !DILocation(line: 172, column: 9, scope: !236)
!272 = !DILocation(line: 174, column: 68, scope: !217)
!273 = !DILocation(line: 174, column: 66, scope: !217)
!274 = !DILocation(line: 175, column: 5, scope: !217)
!275 = !DILocation(line: 176, column: 1, scope: !217)
!276 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_45_good", scope: !3, file: !3, line: 178, type: !20, scopeLine: 179, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!277 = !DILocation(line: 180, column: 5, scope: !276)
!278 = !DILocation(line: 181, column: 5, scope: !276)
!279 = !DILocation(line: 182, column: 1, scope: !276)
