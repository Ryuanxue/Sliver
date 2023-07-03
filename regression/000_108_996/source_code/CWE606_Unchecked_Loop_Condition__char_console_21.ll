; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_21.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_21.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@badStatic = dso_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@goodB2G1Static = dso_local global i32 0, align 4, !dbg !9
@goodB2G2Static = dso_local global i32 0, align 4, !dbg !11
@goodG2BStatic = dso_local global i32 0, align 4, !dbg !13
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink(i8* %data) #0 !dbg !19 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !24, metadata !DIExpression()), !dbg !25
  %0 = load i32, i32* @badStatic, align 4, !dbg !26
  %tobool = icmp ne i32 %0, 0, !dbg !26
  br i1 %tobool, label %if.then, label %if.end4, !dbg !28

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !29, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %n, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !35, metadata !DIExpression()), !dbg !36
  %1 = load i8*, i8** %data.addr, align 8, !dbg !37
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !39
  %cmp = icmp eq i32 %call, 1, !dbg !40
  br i1 %cmp, label %if.then1, label %if.end, !dbg !41

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !42
  store i32 0, i32* %i, align 4, !dbg !44
  br label %for.cond, !dbg !46

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !47
  %3 = load i32, i32* %n, align 4, !dbg !49
  %cmp2 = icmp slt i32 %2, %3, !dbg !50
  br i1 %cmp2, label %for.body, label %for.end, !dbg !51

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !52
  %inc = add nsw i32 %4, 1, !dbg !52
  store i32 %inc, i32* %intVariable, align 4, !dbg !52
  br label %for.inc, !dbg !54

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !55
  %inc3 = add nsw i32 %5, 1, !dbg !55
  store i32 %inc3, i32* %i, align 4, !dbg !55
  br label %for.cond, !dbg !56, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !60
  call void @printIntLine(i32 %6), !dbg !61
  br label %if.end, !dbg !62

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !63

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !64
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_21_bad() #0 !dbg !65 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !70, metadata !DIExpression()), !dbg !74
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !74
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !74
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !75
  store i8* %arraydecay, i8** %data, align 8, !dbg !76
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !77, metadata !DIExpression()), !dbg !82
  %1 = load i8*, i8** %data, align 8, !dbg !83
  %call = call i64 @strlen(i8* %1) #7, !dbg !84
  store i64 %call, i64* %dataLen, align 8, !dbg !82
  %2 = load i64, i64* %dataLen, align 8, !dbg !85
  %sub = sub i64 100, %2, !dbg !87
  %cmp = icmp ugt i64 %sub, 1, !dbg !88
  br i1 %cmp, label %if.then, label %if.end18, !dbg !89

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !90
  %4 = load i64, i64* %dataLen, align 8, !dbg !93
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !94
  %5 = load i64, i64* %dataLen, align 8, !dbg !95
  %sub1 = sub i64 100, %5, !dbg !96
  %conv = trunc i64 %sub1 to i32, !dbg !97
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !98
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !99
  %cmp3 = icmp ne i8* %call2, null, !dbg !100
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !101

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !102
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !104
  store i64 %call6, i64* %dataLen, align 8, !dbg !105
  %8 = load i64, i64* %dataLen, align 8, !dbg !106
  %cmp7 = icmp ugt i64 %8, 0, !dbg !108
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !109

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !110
  %10 = load i64, i64* %dataLen, align 8, !dbg !111
  %sub9 = sub i64 %10, 1, !dbg !112
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !110
  %11 = load i8, i8* %arrayidx, align 1, !dbg !110
  %conv10 = sext i8 %11 to i32, !dbg !110
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !113
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !114

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !115
  %13 = load i64, i64* %dataLen, align 8, !dbg !117
  %sub14 = sub i64 %13, 1, !dbg !118
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !115
  store i8 0, i8* %arrayidx15, align 1, !dbg !119
  br label %if.end, !dbg !120

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !121

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)), !dbg !122
  %14 = load i8*, i8** %data, align 8, !dbg !124
  %15 = load i64, i64* %dataLen, align 8, !dbg !125
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !124
  store i8 0, i8* %arrayidx16, align 1, !dbg !126
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !127

if.end18:                                         ; preds = %if.end17, %entry
  store i32 1, i32* @badStatic, align 4, !dbg !128
  %16 = load i8*, i8** %data, align 8, !dbg !129
  call void @badSink(i8* %16), !dbg !130
  ret void, !dbg !131
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1Sink(i8* %data) #0 !dbg !132 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !133, metadata !DIExpression()), !dbg !134
  %0 = load i32, i32* @goodB2G1Static, align 4, !dbg !135
  %tobool = icmp ne i32 %0, 0, !dbg !135
  br i1 %tobool, label %if.then, label %if.else, !dbg !137

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !138
  br label %if.end7, !dbg !140

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !141, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %n, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !147, metadata !DIExpression()), !dbg !148
  %1 = load i8*, i8** %data.addr, align 8, !dbg !149
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !151
  %cmp = icmp eq i32 %call, 1, !dbg !152
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !153

if.then1:                                         ; preds = %if.else
  %2 = load i32, i32* %n, align 4, !dbg !154
  %cmp2 = icmp slt i32 %2, 10000, !dbg !157
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !158

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !159
  store i32 0, i32* %i, align 4, !dbg !161
  br label %for.cond, !dbg !163

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !164
  %4 = load i32, i32* %n, align 4, !dbg !166
  %cmp4 = icmp slt i32 %3, %4, !dbg !167
  br i1 %cmp4, label %for.body, label %for.end, !dbg !168

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !169
  %inc = add nsw i32 %5, 1, !dbg !169
  store i32 %inc, i32* %intVariable, align 4, !dbg !169
  br label %for.inc, !dbg !171

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !172
  %inc5 = add nsw i32 %6, 1, !dbg !172
  store i32 %inc5, i32* %i, align 4, !dbg !172
  br label %for.cond, !dbg !173, !llvm.loop !174

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !176
  call void @printIntLine(i32 %7), !dbg !177
  br label %if.end, !dbg !178

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !179

if.end6:                                          ; preds = %if.end, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then
  ret void, !dbg !180
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !181 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !184, metadata !DIExpression()), !dbg !185
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !185
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !185
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !186
  store i8* %arraydecay, i8** %data, align 8, !dbg !187
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !188, metadata !DIExpression()), !dbg !190
  %1 = load i8*, i8** %data, align 8, !dbg !191
  %call = call i64 @strlen(i8* %1) #7, !dbg !192
  store i64 %call, i64* %dataLen, align 8, !dbg !190
  %2 = load i64, i64* %dataLen, align 8, !dbg !193
  %sub = sub i64 100, %2, !dbg !195
  %cmp = icmp ugt i64 %sub, 1, !dbg !196
  br i1 %cmp, label %if.then, label %if.end18, !dbg !197

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !198
  %4 = load i64, i64* %dataLen, align 8, !dbg !201
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !202
  %5 = load i64, i64* %dataLen, align 8, !dbg !203
  %sub1 = sub i64 100, %5, !dbg !204
  %conv = trunc i64 %sub1 to i32, !dbg !205
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !206
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !207
  %cmp3 = icmp ne i8* %call2, null, !dbg !208
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !209

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !210
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !212
  store i64 %call6, i64* %dataLen, align 8, !dbg !213
  %8 = load i64, i64* %dataLen, align 8, !dbg !214
  %cmp7 = icmp ugt i64 %8, 0, !dbg !216
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !217

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !218
  %10 = load i64, i64* %dataLen, align 8, !dbg !219
  %sub9 = sub i64 %10, 1, !dbg !220
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !218
  %11 = load i8, i8* %arrayidx, align 1, !dbg !218
  %conv10 = sext i8 %11 to i32, !dbg !218
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !221
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !222

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !223
  %13 = load i64, i64* %dataLen, align 8, !dbg !225
  %sub14 = sub i64 %13, 1, !dbg !226
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !223
  store i8 0, i8* %arrayidx15, align 1, !dbg !227
  br label %if.end, !dbg !228

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !229

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)), !dbg !230
  %14 = load i8*, i8** %data, align 8, !dbg !232
  %15 = load i64, i64* %dataLen, align 8, !dbg !233
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !232
  store i8 0, i8* %arrayidx16, align 1, !dbg !234
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !235

if.end18:                                         ; preds = %if.end17, %entry
  store i32 0, i32* @goodB2G1Static, align 4, !dbg !236
  %16 = load i8*, i8** %data, align 8, !dbg !237
  call void @goodB2G1Sink(i8* %16), !dbg !238
  ret void, !dbg !239
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2Sink(i8* %data) #0 !dbg !240 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !241, metadata !DIExpression()), !dbg !242
  %0 = load i32, i32* @goodB2G2Static, align 4, !dbg !243
  %tobool = icmp ne i32 %0, 0, !dbg !243
  br i1 %tobool, label %if.then, label %if.end7, !dbg !245

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !246, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata i32* %n, metadata !250, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !252, metadata !DIExpression()), !dbg !253
  %1 = load i8*, i8** %data.addr, align 8, !dbg !254
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !256
  %cmp = icmp eq i32 %call, 1, !dbg !257
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !258

if.then1:                                         ; preds = %if.then
  %2 = load i32, i32* %n, align 4, !dbg !259
  %cmp2 = icmp slt i32 %2, 10000, !dbg !262
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !263

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !264
  store i32 0, i32* %i, align 4, !dbg !266
  br label %for.cond, !dbg !268

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !269
  %4 = load i32, i32* %n, align 4, !dbg !271
  %cmp4 = icmp slt i32 %3, %4, !dbg !272
  br i1 %cmp4, label %for.body, label %for.end, !dbg !273

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !274
  %inc = add nsw i32 %5, 1, !dbg !274
  store i32 %inc, i32* %intVariable, align 4, !dbg !274
  br label %for.inc, !dbg !276

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !277
  %inc5 = add nsw i32 %6, 1, !dbg !277
  store i32 %inc5, i32* %i, align 4, !dbg !277
  br label %for.cond, !dbg !278, !llvm.loop !279

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !281
  call void @printIntLine(i32 %7), !dbg !282
  br label %if.end, !dbg !283

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !284

if.end6:                                          ; preds = %if.end, %if.then
  br label %if.end7, !dbg !285

if.end7:                                          ; preds = %if.end6, %entry
  ret void, !dbg !286
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !287 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !288, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !290, metadata !DIExpression()), !dbg !291
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !291
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !291
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !292
  store i8* %arraydecay, i8** %data, align 8, !dbg !293
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !294, metadata !DIExpression()), !dbg !296
  %1 = load i8*, i8** %data, align 8, !dbg !297
  %call = call i64 @strlen(i8* %1) #7, !dbg !298
  store i64 %call, i64* %dataLen, align 8, !dbg !296
  %2 = load i64, i64* %dataLen, align 8, !dbg !299
  %sub = sub i64 100, %2, !dbg !301
  %cmp = icmp ugt i64 %sub, 1, !dbg !302
  br i1 %cmp, label %if.then, label %if.end18, !dbg !303

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !304
  %4 = load i64, i64* %dataLen, align 8, !dbg !307
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !308
  %5 = load i64, i64* %dataLen, align 8, !dbg !309
  %sub1 = sub i64 100, %5, !dbg !310
  %conv = trunc i64 %sub1 to i32, !dbg !311
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !312
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !313
  %cmp3 = icmp ne i8* %call2, null, !dbg !314
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !315

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !316
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !318
  store i64 %call6, i64* %dataLen, align 8, !dbg !319
  %8 = load i64, i64* %dataLen, align 8, !dbg !320
  %cmp7 = icmp ugt i64 %8, 0, !dbg !322
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !323

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !324
  %10 = load i64, i64* %dataLen, align 8, !dbg !325
  %sub9 = sub i64 %10, 1, !dbg !326
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !324
  %11 = load i8, i8* %arrayidx, align 1, !dbg !324
  %conv10 = sext i8 %11 to i32, !dbg !324
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !327
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !328

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !329
  %13 = load i64, i64* %dataLen, align 8, !dbg !331
  %sub14 = sub i64 %13, 1, !dbg !332
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !329
  store i8 0, i8* %arrayidx15, align 1, !dbg !333
  br label %if.end, !dbg !334

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !335

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)), !dbg !336
  %14 = load i8*, i8** %data, align 8, !dbg !338
  %15 = load i64, i64* %dataLen, align 8, !dbg !339
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !338
  store i8 0, i8* %arrayidx16, align 1, !dbg !340
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !341

if.end18:                                         ; preds = %if.end17, %entry
  store i32 1, i32* @goodB2G2Static, align 4, !dbg !342
  %16 = load i8*, i8** %data, align 8, !dbg !343
  call void @goodB2G2Sink(i8* %16), !dbg !344
  ret void, !dbg !345
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !346 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !347, metadata !DIExpression()), !dbg !348
  %0 = load i32, i32* @goodG2BStatic, align 4, !dbg !349
  %tobool = icmp ne i32 %0, 0, !dbg !349
  br i1 %tobool, label %if.then, label %if.end4, !dbg !351

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !352, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.declare(metadata i32* %n, metadata !356, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !358, metadata !DIExpression()), !dbg !359
  %1 = load i8*, i8** %data.addr, align 8, !dbg !360
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !362
  %cmp = icmp eq i32 %call, 1, !dbg !363
  br i1 %cmp, label %if.then1, label %if.end, !dbg !364

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !365
  store i32 0, i32* %i, align 4, !dbg !367
  br label %for.cond, !dbg !369

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !370
  %3 = load i32, i32* %n, align 4, !dbg !372
  %cmp2 = icmp slt i32 %2, %3, !dbg !373
  br i1 %cmp2, label %for.body, label %for.end, !dbg !374

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !375
  %inc = add nsw i32 %4, 1, !dbg !375
  store i32 %inc, i32* %intVariable, align 4, !dbg !375
  br label %for.inc, !dbg !377

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !378
  %inc3 = add nsw i32 %5, 1, !dbg !378
  store i32 %inc3, i32* %i, align 4, !dbg !378
  br label %for.cond, !dbg !379, !llvm.loop !380

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !382
  call void @printIntLine(i32 %6), !dbg !383
  br label %if.end, !dbg !384

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !385

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !386
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !387 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !388, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !390, metadata !DIExpression()), !dbg !391
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !391
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !391
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !392
  store i8* %arraydecay, i8** %data, align 8, !dbg !393
  %1 = load i8*, i8** %data, align 8, !dbg !394
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !395
  store i32 1, i32* @goodG2BStatic, align 4, !dbg !396
  %2 = load i8*, i8** %data, align 8, !dbg !397
  call void @goodG2BSink(i8* %2), !dbg !398
  ret void, !dbg !399
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_21_good() #0 !dbg !400 {
entry:
  call void @goodB2G1(), !dbg !401
  call void @goodB2G2(), !dbg !402
  call void @goodG2B(), !dbg !403
  ret void, !dbg !404
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
!1 = distinct !DIGlobalVariable(name: "badStatic", scope: !2, file: !3, line: 30, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_21.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_996/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0, !9, !11, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "goodB2G1Static", scope: !2, file: !3, line: 92, type: !6, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "goodB2G2Static", scope: !2, file: !3, line: 93, type: !6, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "goodG2BStatic", scope: !2, file: !3, line: 94, type: !6, isLocal: false, isDefinition: true)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 12.0.0"}
!19 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 32, type: !20, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DILocalVariable(name: "data", arg: 1, scope: !19, file: !3, line: 32, type: !22)
!25 = !DILocation(line: 32, column: 21, scope: !19)
!26 = !DILocation(line: 34, column: 8, scope: !27)
!27 = distinct !DILexicalBlock(scope: !19, file: !3, line: 34, column: 8)
!28 = !DILocation(line: 34, column: 8, scope: !19)
!29 = !DILocalVariable(name: "i", scope: !30, file: !3, line: 37, type: !6)
!30 = distinct !DILexicalBlock(scope: !31, file: !3, line: 36, column: 9)
!31 = distinct !DILexicalBlock(scope: !27, file: !3, line: 35, column: 5)
!32 = !DILocation(line: 37, column: 17, scope: !30)
!33 = !DILocalVariable(name: "n", scope: !30, file: !3, line: 37, type: !6)
!34 = !DILocation(line: 37, column: 20, scope: !30)
!35 = !DILocalVariable(name: "intVariable", scope: !30, file: !3, line: 37, type: !6)
!36 = !DILocation(line: 37, column: 23, scope: !30)
!37 = !DILocation(line: 38, column: 24, scope: !38)
!38 = distinct !DILexicalBlock(scope: !30, file: !3, line: 38, column: 17)
!39 = !DILocation(line: 38, column: 17, scope: !38)
!40 = !DILocation(line: 38, column: 40, scope: !38)
!41 = !DILocation(line: 38, column: 17, scope: !30)
!42 = !DILocation(line: 41, column: 29, scope: !43)
!43 = distinct !DILexicalBlock(scope: !38, file: !3, line: 39, column: 13)
!44 = !DILocation(line: 42, column: 24, scope: !45)
!45 = distinct !DILexicalBlock(scope: !43, file: !3, line: 42, column: 17)
!46 = !DILocation(line: 42, column: 22, scope: !45)
!47 = !DILocation(line: 42, column: 29, scope: !48)
!48 = distinct !DILexicalBlock(scope: !45, file: !3, line: 42, column: 17)
!49 = !DILocation(line: 42, column: 33, scope: !48)
!50 = !DILocation(line: 42, column: 31, scope: !48)
!51 = !DILocation(line: 42, column: 17, scope: !45)
!52 = !DILocation(line: 45, column: 32, scope: !53)
!53 = distinct !DILexicalBlock(scope: !48, file: !3, line: 43, column: 17)
!54 = !DILocation(line: 46, column: 17, scope: !53)
!55 = !DILocation(line: 42, column: 37, scope: !48)
!56 = !DILocation(line: 42, column: 17, scope: !48)
!57 = distinct !{!57, !51, !58, !59}
!58 = !DILocation(line: 46, column: 17, scope: !45)
!59 = !{!"llvm.loop.mustprogress"}
!60 = !DILocation(line: 47, column: 30, scope: !43)
!61 = !DILocation(line: 47, column: 17, scope: !43)
!62 = !DILocation(line: 48, column: 13, scope: !43)
!63 = !DILocation(line: 50, column: 5, scope: !31)
!64 = !DILocation(line: 51, column: 1, scope: !19)
!65 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_21_bad", scope: !3, file: !3, line: 53, type: !66, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!66 = !DISubroutineType(types: !67)
!67 = !{null}
!68 = !DILocalVariable(name: "data", scope: !65, file: !3, line: 55, type: !22)
!69 = !DILocation(line: 55, column: 12, scope: !65)
!70 = !DILocalVariable(name: "dataBuffer", scope: !65, file: !3, line: 56, type: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 800, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 100)
!74 = !DILocation(line: 56, column: 10, scope: !65)
!75 = !DILocation(line: 57, column: 12, scope: !65)
!76 = !DILocation(line: 57, column: 10, scope: !65)
!77 = !DILocalVariable(name: "dataLen", scope: !78, file: !3, line: 60, type: !79)
!78 = distinct !DILexicalBlock(scope: !65, file: !3, line: 58, column: 5)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !80, line: 46, baseType: !81)
!80 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!81 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!82 = !DILocation(line: 60, column: 16, scope: !78)
!83 = !DILocation(line: 60, column: 33, scope: !78)
!84 = !DILocation(line: 60, column: 26, scope: !78)
!85 = !DILocation(line: 62, column: 17, scope: !86)
!86 = distinct !DILexicalBlock(scope: !78, file: !3, line: 62, column: 13)
!87 = !DILocation(line: 62, column: 16, scope: !86)
!88 = !DILocation(line: 62, column: 25, scope: !86)
!89 = !DILocation(line: 62, column: 13, scope: !78)
!90 = !DILocation(line: 65, column: 23, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !3, line: 65, column: 17)
!92 = distinct !DILexicalBlock(scope: !86, file: !3, line: 63, column: 9)
!93 = !DILocation(line: 65, column: 28, scope: !91)
!94 = !DILocation(line: 65, column: 27, scope: !91)
!95 = !DILocation(line: 65, column: 47, scope: !91)
!96 = !DILocation(line: 65, column: 46, scope: !91)
!97 = !DILocation(line: 65, column: 37, scope: !91)
!98 = !DILocation(line: 65, column: 57, scope: !91)
!99 = !DILocation(line: 65, column: 17, scope: !91)
!100 = !DILocation(line: 65, column: 64, scope: !91)
!101 = !DILocation(line: 65, column: 17, scope: !92)
!102 = !DILocation(line: 69, column: 34, scope: !103)
!103 = distinct !DILexicalBlock(scope: !91, file: !3, line: 66, column: 13)
!104 = !DILocation(line: 69, column: 27, scope: !103)
!105 = !DILocation(line: 69, column: 25, scope: !103)
!106 = !DILocation(line: 70, column: 21, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !3, line: 70, column: 21)
!108 = !DILocation(line: 70, column: 29, scope: !107)
!109 = !DILocation(line: 70, column: 33, scope: !107)
!110 = !DILocation(line: 70, column: 36, scope: !107)
!111 = !DILocation(line: 70, column: 41, scope: !107)
!112 = !DILocation(line: 70, column: 48, scope: !107)
!113 = !DILocation(line: 70, column: 52, scope: !107)
!114 = !DILocation(line: 70, column: 21, scope: !103)
!115 = !DILocation(line: 72, column: 21, scope: !116)
!116 = distinct !DILexicalBlock(scope: !107, file: !3, line: 71, column: 17)
!117 = !DILocation(line: 72, column: 26, scope: !116)
!118 = !DILocation(line: 72, column: 33, scope: !116)
!119 = !DILocation(line: 72, column: 37, scope: !116)
!120 = !DILocation(line: 73, column: 17, scope: !116)
!121 = !DILocation(line: 74, column: 13, scope: !103)
!122 = !DILocation(line: 77, column: 17, scope: !123)
!123 = distinct !DILexicalBlock(scope: !91, file: !3, line: 76, column: 13)
!124 = !DILocation(line: 79, column: 17, scope: !123)
!125 = !DILocation(line: 79, column: 22, scope: !123)
!126 = !DILocation(line: 79, column: 31, scope: !123)
!127 = !DILocation(line: 81, column: 9, scope: !92)
!128 = !DILocation(line: 83, column: 15, scope: !65)
!129 = !DILocation(line: 84, column: 13, scope: !65)
!130 = !DILocation(line: 84, column: 5, scope: !65)
!131 = !DILocation(line: 85, column: 1, scope: !65)
!132 = distinct !DISubprogram(name: "goodB2G1Sink", scope: !3, file: !3, line: 97, type: !20, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!133 = !DILocalVariable(name: "data", arg: 1, scope: !132, file: !3, line: 97, type: !22)
!134 = !DILocation(line: 97, column: 26, scope: !132)
!135 = !DILocation(line: 99, column: 8, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !3, line: 99, column: 8)
!137 = !DILocation(line: 99, column: 8, scope: !132)
!138 = !DILocation(line: 102, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !3, line: 100, column: 5)
!140 = !DILocation(line: 103, column: 5, scope: !139)
!141 = !DILocalVariable(name: "i", scope: !142, file: !3, line: 107, type: !6)
!142 = distinct !DILexicalBlock(scope: !143, file: !3, line: 106, column: 9)
!143 = distinct !DILexicalBlock(scope: !136, file: !3, line: 105, column: 5)
!144 = !DILocation(line: 107, column: 17, scope: !142)
!145 = !DILocalVariable(name: "n", scope: !142, file: !3, line: 107, type: !6)
!146 = !DILocation(line: 107, column: 20, scope: !142)
!147 = !DILocalVariable(name: "intVariable", scope: !142, file: !3, line: 107, type: !6)
!148 = !DILocation(line: 107, column: 23, scope: !142)
!149 = !DILocation(line: 108, column: 24, scope: !150)
!150 = distinct !DILexicalBlock(scope: !142, file: !3, line: 108, column: 17)
!151 = !DILocation(line: 108, column: 17, scope: !150)
!152 = !DILocation(line: 108, column: 40, scope: !150)
!153 = !DILocation(line: 108, column: 17, scope: !142)
!154 = !DILocation(line: 111, column: 21, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !3, line: 111, column: 21)
!156 = distinct !DILexicalBlock(scope: !150, file: !3, line: 109, column: 13)
!157 = !DILocation(line: 111, column: 23, scope: !155)
!158 = !DILocation(line: 111, column: 21, scope: !156)
!159 = !DILocation(line: 113, column: 33, scope: !160)
!160 = distinct !DILexicalBlock(scope: !155, file: !3, line: 112, column: 17)
!161 = !DILocation(line: 114, column: 28, scope: !162)
!162 = distinct !DILexicalBlock(scope: !160, file: !3, line: 114, column: 21)
!163 = !DILocation(line: 114, column: 26, scope: !162)
!164 = !DILocation(line: 114, column: 33, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !3, line: 114, column: 21)
!166 = !DILocation(line: 114, column: 37, scope: !165)
!167 = !DILocation(line: 114, column: 35, scope: !165)
!168 = !DILocation(line: 114, column: 21, scope: !162)
!169 = !DILocation(line: 117, column: 36, scope: !170)
!170 = distinct !DILexicalBlock(scope: !165, file: !3, line: 115, column: 21)
!171 = !DILocation(line: 118, column: 21, scope: !170)
!172 = !DILocation(line: 114, column: 41, scope: !165)
!173 = !DILocation(line: 114, column: 21, scope: !165)
!174 = distinct !{!174, !168, !175, !59}
!175 = !DILocation(line: 118, column: 21, scope: !162)
!176 = !DILocation(line: 119, column: 34, scope: !160)
!177 = !DILocation(line: 119, column: 21, scope: !160)
!178 = !DILocation(line: 120, column: 17, scope: !160)
!179 = !DILocation(line: 121, column: 13, scope: !156)
!180 = !DILocation(line: 124, column: 1, scope: !132)
!181 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 126, type: !66, scopeLine: 127, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!182 = !DILocalVariable(name: "data", scope: !181, file: !3, line: 128, type: !22)
!183 = !DILocation(line: 128, column: 12, scope: !181)
!184 = !DILocalVariable(name: "dataBuffer", scope: !181, file: !3, line: 129, type: !71)
!185 = !DILocation(line: 129, column: 10, scope: !181)
!186 = !DILocation(line: 130, column: 12, scope: !181)
!187 = !DILocation(line: 130, column: 10, scope: !181)
!188 = !DILocalVariable(name: "dataLen", scope: !189, file: !3, line: 133, type: !79)
!189 = distinct !DILexicalBlock(scope: !181, file: !3, line: 131, column: 5)
!190 = !DILocation(line: 133, column: 16, scope: !189)
!191 = !DILocation(line: 133, column: 33, scope: !189)
!192 = !DILocation(line: 133, column: 26, scope: !189)
!193 = !DILocation(line: 135, column: 17, scope: !194)
!194 = distinct !DILexicalBlock(scope: !189, file: !3, line: 135, column: 13)
!195 = !DILocation(line: 135, column: 16, scope: !194)
!196 = !DILocation(line: 135, column: 25, scope: !194)
!197 = !DILocation(line: 135, column: 13, scope: !189)
!198 = !DILocation(line: 138, column: 23, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !3, line: 138, column: 17)
!200 = distinct !DILexicalBlock(scope: !194, file: !3, line: 136, column: 9)
!201 = !DILocation(line: 138, column: 28, scope: !199)
!202 = !DILocation(line: 138, column: 27, scope: !199)
!203 = !DILocation(line: 138, column: 47, scope: !199)
!204 = !DILocation(line: 138, column: 46, scope: !199)
!205 = !DILocation(line: 138, column: 37, scope: !199)
!206 = !DILocation(line: 138, column: 57, scope: !199)
!207 = !DILocation(line: 138, column: 17, scope: !199)
!208 = !DILocation(line: 138, column: 64, scope: !199)
!209 = !DILocation(line: 138, column: 17, scope: !200)
!210 = !DILocation(line: 142, column: 34, scope: !211)
!211 = distinct !DILexicalBlock(scope: !199, file: !3, line: 139, column: 13)
!212 = !DILocation(line: 142, column: 27, scope: !211)
!213 = !DILocation(line: 142, column: 25, scope: !211)
!214 = !DILocation(line: 143, column: 21, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !3, line: 143, column: 21)
!216 = !DILocation(line: 143, column: 29, scope: !215)
!217 = !DILocation(line: 143, column: 33, scope: !215)
!218 = !DILocation(line: 143, column: 36, scope: !215)
!219 = !DILocation(line: 143, column: 41, scope: !215)
!220 = !DILocation(line: 143, column: 48, scope: !215)
!221 = !DILocation(line: 143, column: 52, scope: !215)
!222 = !DILocation(line: 143, column: 21, scope: !211)
!223 = !DILocation(line: 145, column: 21, scope: !224)
!224 = distinct !DILexicalBlock(scope: !215, file: !3, line: 144, column: 17)
!225 = !DILocation(line: 145, column: 26, scope: !224)
!226 = !DILocation(line: 145, column: 33, scope: !224)
!227 = !DILocation(line: 145, column: 37, scope: !224)
!228 = !DILocation(line: 146, column: 17, scope: !224)
!229 = !DILocation(line: 147, column: 13, scope: !211)
!230 = !DILocation(line: 150, column: 17, scope: !231)
!231 = distinct !DILexicalBlock(scope: !199, file: !3, line: 149, column: 13)
!232 = !DILocation(line: 152, column: 17, scope: !231)
!233 = !DILocation(line: 152, column: 22, scope: !231)
!234 = !DILocation(line: 152, column: 31, scope: !231)
!235 = !DILocation(line: 154, column: 9, scope: !200)
!236 = !DILocation(line: 156, column: 20, scope: !181)
!237 = !DILocation(line: 157, column: 18, scope: !181)
!238 = !DILocation(line: 157, column: 5, scope: !181)
!239 = !DILocation(line: 158, column: 1, scope: !181)
!240 = distinct !DISubprogram(name: "goodB2G2Sink", scope: !3, file: !3, line: 161, type: !20, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!241 = !DILocalVariable(name: "data", arg: 1, scope: !240, file: !3, line: 161, type: !22)
!242 = !DILocation(line: 161, column: 26, scope: !240)
!243 = !DILocation(line: 163, column: 8, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !3, line: 163, column: 8)
!245 = !DILocation(line: 163, column: 8, scope: !240)
!246 = !DILocalVariable(name: "i", scope: !247, file: !3, line: 166, type: !6)
!247 = distinct !DILexicalBlock(scope: !248, file: !3, line: 165, column: 9)
!248 = distinct !DILexicalBlock(scope: !244, file: !3, line: 164, column: 5)
!249 = !DILocation(line: 166, column: 17, scope: !247)
!250 = !DILocalVariable(name: "n", scope: !247, file: !3, line: 166, type: !6)
!251 = !DILocation(line: 166, column: 20, scope: !247)
!252 = !DILocalVariable(name: "intVariable", scope: !247, file: !3, line: 166, type: !6)
!253 = !DILocation(line: 166, column: 23, scope: !247)
!254 = !DILocation(line: 167, column: 24, scope: !255)
!255 = distinct !DILexicalBlock(scope: !247, file: !3, line: 167, column: 17)
!256 = !DILocation(line: 167, column: 17, scope: !255)
!257 = !DILocation(line: 167, column: 40, scope: !255)
!258 = !DILocation(line: 167, column: 17, scope: !247)
!259 = !DILocation(line: 170, column: 21, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !3, line: 170, column: 21)
!261 = distinct !DILexicalBlock(scope: !255, file: !3, line: 168, column: 13)
!262 = !DILocation(line: 170, column: 23, scope: !260)
!263 = !DILocation(line: 170, column: 21, scope: !261)
!264 = !DILocation(line: 172, column: 33, scope: !265)
!265 = distinct !DILexicalBlock(scope: !260, file: !3, line: 171, column: 17)
!266 = !DILocation(line: 173, column: 28, scope: !267)
!267 = distinct !DILexicalBlock(scope: !265, file: !3, line: 173, column: 21)
!268 = !DILocation(line: 173, column: 26, scope: !267)
!269 = !DILocation(line: 173, column: 33, scope: !270)
!270 = distinct !DILexicalBlock(scope: !267, file: !3, line: 173, column: 21)
!271 = !DILocation(line: 173, column: 37, scope: !270)
!272 = !DILocation(line: 173, column: 35, scope: !270)
!273 = !DILocation(line: 173, column: 21, scope: !267)
!274 = !DILocation(line: 176, column: 36, scope: !275)
!275 = distinct !DILexicalBlock(scope: !270, file: !3, line: 174, column: 21)
!276 = !DILocation(line: 177, column: 21, scope: !275)
!277 = !DILocation(line: 173, column: 41, scope: !270)
!278 = !DILocation(line: 173, column: 21, scope: !270)
!279 = distinct !{!279, !273, !280, !59}
!280 = !DILocation(line: 177, column: 21, scope: !267)
!281 = !DILocation(line: 178, column: 34, scope: !265)
!282 = !DILocation(line: 178, column: 21, scope: !265)
!283 = !DILocation(line: 179, column: 17, scope: !265)
!284 = !DILocation(line: 180, column: 13, scope: !261)
!285 = !DILocation(line: 182, column: 5, scope: !248)
!286 = !DILocation(line: 183, column: 1, scope: !240)
!287 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 185, type: !66, scopeLine: 186, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!288 = !DILocalVariable(name: "data", scope: !287, file: !3, line: 187, type: !22)
!289 = !DILocation(line: 187, column: 12, scope: !287)
!290 = !DILocalVariable(name: "dataBuffer", scope: !287, file: !3, line: 188, type: !71)
!291 = !DILocation(line: 188, column: 10, scope: !287)
!292 = !DILocation(line: 189, column: 12, scope: !287)
!293 = !DILocation(line: 189, column: 10, scope: !287)
!294 = !DILocalVariable(name: "dataLen", scope: !295, file: !3, line: 192, type: !79)
!295 = distinct !DILexicalBlock(scope: !287, file: !3, line: 190, column: 5)
!296 = !DILocation(line: 192, column: 16, scope: !295)
!297 = !DILocation(line: 192, column: 33, scope: !295)
!298 = !DILocation(line: 192, column: 26, scope: !295)
!299 = !DILocation(line: 194, column: 17, scope: !300)
!300 = distinct !DILexicalBlock(scope: !295, file: !3, line: 194, column: 13)
!301 = !DILocation(line: 194, column: 16, scope: !300)
!302 = !DILocation(line: 194, column: 25, scope: !300)
!303 = !DILocation(line: 194, column: 13, scope: !295)
!304 = !DILocation(line: 197, column: 23, scope: !305)
!305 = distinct !DILexicalBlock(scope: !306, file: !3, line: 197, column: 17)
!306 = distinct !DILexicalBlock(scope: !300, file: !3, line: 195, column: 9)
!307 = !DILocation(line: 197, column: 28, scope: !305)
!308 = !DILocation(line: 197, column: 27, scope: !305)
!309 = !DILocation(line: 197, column: 47, scope: !305)
!310 = !DILocation(line: 197, column: 46, scope: !305)
!311 = !DILocation(line: 197, column: 37, scope: !305)
!312 = !DILocation(line: 197, column: 57, scope: !305)
!313 = !DILocation(line: 197, column: 17, scope: !305)
!314 = !DILocation(line: 197, column: 64, scope: !305)
!315 = !DILocation(line: 197, column: 17, scope: !306)
!316 = !DILocation(line: 201, column: 34, scope: !317)
!317 = distinct !DILexicalBlock(scope: !305, file: !3, line: 198, column: 13)
!318 = !DILocation(line: 201, column: 27, scope: !317)
!319 = !DILocation(line: 201, column: 25, scope: !317)
!320 = !DILocation(line: 202, column: 21, scope: !321)
!321 = distinct !DILexicalBlock(scope: !317, file: !3, line: 202, column: 21)
!322 = !DILocation(line: 202, column: 29, scope: !321)
!323 = !DILocation(line: 202, column: 33, scope: !321)
!324 = !DILocation(line: 202, column: 36, scope: !321)
!325 = !DILocation(line: 202, column: 41, scope: !321)
!326 = !DILocation(line: 202, column: 48, scope: !321)
!327 = !DILocation(line: 202, column: 52, scope: !321)
!328 = !DILocation(line: 202, column: 21, scope: !317)
!329 = !DILocation(line: 204, column: 21, scope: !330)
!330 = distinct !DILexicalBlock(scope: !321, file: !3, line: 203, column: 17)
!331 = !DILocation(line: 204, column: 26, scope: !330)
!332 = !DILocation(line: 204, column: 33, scope: !330)
!333 = !DILocation(line: 204, column: 37, scope: !330)
!334 = !DILocation(line: 205, column: 17, scope: !330)
!335 = !DILocation(line: 206, column: 13, scope: !317)
!336 = !DILocation(line: 209, column: 17, scope: !337)
!337 = distinct !DILexicalBlock(scope: !305, file: !3, line: 208, column: 13)
!338 = !DILocation(line: 211, column: 17, scope: !337)
!339 = !DILocation(line: 211, column: 22, scope: !337)
!340 = !DILocation(line: 211, column: 31, scope: !337)
!341 = !DILocation(line: 213, column: 9, scope: !306)
!342 = !DILocation(line: 215, column: 20, scope: !287)
!343 = !DILocation(line: 216, column: 18, scope: !287)
!344 = !DILocation(line: 216, column: 5, scope: !287)
!345 = !DILocation(line: 217, column: 1, scope: !287)
!346 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 220, type: !20, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!347 = !DILocalVariable(name: "data", arg: 1, scope: !346, file: !3, line: 220, type: !22)
!348 = !DILocation(line: 220, column: 25, scope: !346)
!349 = !DILocation(line: 222, column: 8, scope: !350)
!350 = distinct !DILexicalBlock(scope: !346, file: !3, line: 222, column: 8)
!351 = !DILocation(line: 222, column: 8, scope: !346)
!352 = !DILocalVariable(name: "i", scope: !353, file: !3, line: 225, type: !6)
!353 = distinct !DILexicalBlock(scope: !354, file: !3, line: 224, column: 9)
!354 = distinct !DILexicalBlock(scope: !350, file: !3, line: 223, column: 5)
!355 = !DILocation(line: 225, column: 17, scope: !353)
!356 = !DILocalVariable(name: "n", scope: !353, file: !3, line: 225, type: !6)
!357 = !DILocation(line: 225, column: 20, scope: !353)
!358 = !DILocalVariable(name: "intVariable", scope: !353, file: !3, line: 225, type: !6)
!359 = !DILocation(line: 225, column: 23, scope: !353)
!360 = !DILocation(line: 226, column: 24, scope: !361)
!361 = distinct !DILexicalBlock(scope: !353, file: !3, line: 226, column: 17)
!362 = !DILocation(line: 226, column: 17, scope: !361)
!363 = !DILocation(line: 226, column: 40, scope: !361)
!364 = !DILocation(line: 226, column: 17, scope: !353)
!365 = !DILocation(line: 229, column: 29, scope: !366)
!366 = distinct !DILexicalBlock(scope: !361, file: !3, line: 227, column: 13)
!367 = !DILocation(line: 230, column: 24, scope: !368)
!368 = distinct !DILexicalBlock(scope: !366, file: !3, line: 230, column: 17)
!369 = !DILocation(line: 230, column: 22, scope: !368)
!370 = !DILocation(line: 230, column: 29, scope: !371)
!371 = distinct !DILexicalBlock(scope: !368, file: !3, line: 230, column: 17)
!372 = !DILocation(line: 230, column: 33, scope: !371)
!373 = !DILocation(line: 230, column: 31, scope: !371)
!374 = !DILocation(line: 230, column: 17, scope: !368)
!375 = !DILocation(line: 233, column: 32, scope: !376)
!376 = distinct !DILexicalBlock(scope: !371, file: !3, line: 231, column: 17)
!377 = !DILocation(line: 234, column: 17, scope: !376)
!378 = !DILocation(line: 230, column: 37, scope: !371)
!379 = !DILocation(line: 230, column: 17, scope: !371)
!380 = distinct !{!380, !374, !381, !59}
!381 = !DILocation(line: 234, column: 17, scope: !368)
!382 = !DILocation(line: 235, column: 30, scope: !366)
!383 = !DILocation(line: 235, column: 17, scope: !366)
!384 = !DILocation(line: 236, column: 13, scope: !366)
!385 = !DILocation(line: 238, column: 5, scope: !354)
!386 = !DILocation(line: 239, column: 1, scope: !346)
!387 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 241, type: !66, scopeLine: 242, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!388 = !DILocalVariable(name: "data", scope: !387, file: !3, line: 243, type: !22)
!389 = !DILocation(line: 243, column: 12, scope: !387)
!390 = !DILocalVariable(name: "dataBuffer", scope: !387, file: !3, line: 244, type: !71)
!391 = !DILocation(line: 244, column: 10, scope: !387)
!392 = !DILocation(line: 245, column: 12, scope: !387)
!393 = !DILocation(line: 245, column: 10, scope: !387)
!394 = !DILocation(line: 247, column: 12, scope: !387)
!395 = !DILocation(line: 247, column: 5, scope: !387)
!396 = !DILocation(line: 248, column: 19, scope: !387)
!397 = !DILocation(line: 249, column: 17, scope: !387)
!398 = !DILocation(line: 249, column: 5, scope: !387)
!399 = !DILocation(line: 250, column: 1, scope: !387)
!400 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_21_good", scope: !3, file: !3, line: 252, type: !66, scopeLine: 253, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!401 = !DILocation(line: 254, column: 5, scope: !400)
!402 = !DILocation(line: 255, column: 5, scope: !400)
!403 = !DILocation(line: 256, column: 5, scope: !400)
!404 = !DILocation(line: 257, column: 1, scope: !400)
