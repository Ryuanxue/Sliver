; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_44.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_44.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink(i8* %data) #0 !dbg !10 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %n, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !22, metadata !DIExpression()), !dbg !23
  %0 = load i8*, i8** %data.addr, align 8, !dbg !24
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !26
  %cmp = icmp eq i32 %call, 1, !dbg !27
  br i1 %cmp, label %if.then, label %if.end, !dbg !28

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !29
  store i32 0, i32* %i, align 4, !dbg !31
  br label %for.cond, !dbg !33

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !34
  %2 = load i32, i32* %n, align 4, !dbg !36
  %cmp1 = icmp slt i32 %1, %2, !dbg !37
  br i1 %cmp1, label %for.body, label %for.end, !dbg !38

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !39
  %inc = add nsw i32 %3, 1, !dbg !39
  store i32 %inc, i32* %intVariable, align 4, !dbg !39
  br label %for.inc, !dbg !41

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !42
  %inc2 = add nsw i32 %4, 1, !dbg !42
  store i32 %inc2, i32* %i, align 4, !dbg !42
  br label %for.cond, !dbg !43, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !47
  call void @printIntLine(i32 %5), !dbg !48
  br label %if.end, !dbg !49

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !50
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_44_bad() #0 !dbg !51 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !56, metadata !DIExpression()), !dbg !58
  store void (i8*)* @badSink, void (i8*)** %funcPtr, align 8, !dbg !58
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
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)), !dbg !111
  %14 = load i8*, i8** %data, align 8, !dbg !113
  %15 = load i64, i64* %dataLen, align 8, !dbg !114
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !113
  store i8 0, i8* %arrayidx16, align 1, !dbg !115
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !116

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !117
  %17 = load i8*, i8** %data, align 8, !dbg !118
  call void %16(i8* %17), !dbg !117
  ret void, !dbg !119
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !120 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata i32* %i, metadata !123, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata i32* %n, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !128, metadata !DIExpression()), !dbg !129
  %0 = load i8*, i8** %data.addr, align 8, !dbg !130
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !132
  %cmp = icmp eq i32 %call, 1, !dbg !133
  br i1 %cmp, label %if.then, label %if.end, !dbg !134

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !135
  store i32 0, i32* %i, align 4, !dbg !137
  br label %for.cond, !dbg !139

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !140
  %2 = load i32, i32* %n, align 4, !dbg !142
  %cmp1 = icmp slt i32 %1, %2, !dbg !143
  br i1 %cmp1, label %for.body, label %for.end, !dbg !144

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !145
  %inc = add nsw i32 %3, 1, !dbg !145
  store i32 %inc, i32* %intVariable, align 4, !dbg !145
  br label %for.inc, !dbg !147

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !148
  %inc2 = add nsw i32 %4, 1, !dbg !148
  store i32 %inc2, i32* %i, align 4, !dbg !148
  br label %for.cond, !dbg !149, !llvm.loop !150

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !152
  call void @printIntLine(i32 %5), !dbg !153
  br label %if.end, !dbg !154

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !155
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !156 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !159, metadata !DIExpression()), !dbg !160
  store void (i8*)* @goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !160
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !161, metadata !DIExpression()), !dbg !162
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !162
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !162
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !163
  store i8* %arraydecay, i8** %data, align 8, !dbg !164
  %1 = load i8*, i8** %data, align 8, !dbg !165
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !166
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !167
  %3 = load i8*, i8** %data, align 8, !dbg !168
  call void %2(i8* %3), !dbg !167
  ret void, !dbg !169
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !170 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata i32* %i, metadata !173, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata i32* %n, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !178, metadata !DIExpression()), !dbg !179
  %0 = load i8*, i8** %data.addr, align 8, !dbg !180
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !182
  %cmp = icmp eq i32 %call, 1, !dbg !183
  br i1 %cmp, label %if.then, label %if.end5, !dbg !184

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !185
  %cmp1 = icmp slt i32 %1, 10000, !dbg !188
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !189

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !190
  store i32 0, i32* %i, align 4, !dbg !192
  br label %for.cond, !dbg !194

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !195
  %3 = load i32, i32* %n, align 4, !dbg !197
  %cmp3 = icmp slt i32 %2, %3, !dbg !198
  br i1 %cmp3, label %for.body, label %for.end, !dbg !199

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !200
  %inc = add nsw i32 %4, 1, !dbg !200
  store i32 %inc, i32* %intVariable, align 4, !dbg !200
  br label %for.inc, !dbg !202

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !203
  %inc4 = add nsw i32 %5, 1, !dbg !203
  store i32 %inc4, i32* %i, align 4, !dbg !203
  br label %for.cond, !dbg !204, !llvm.loop !205

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !207
  call void @printIntLine(i32 %6), !dbg !208
  br label %if.end, !dbg !209

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !210

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !211
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !212 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !215, metadata !DIExpression()), !dbg !216
  store void (i8*)* @goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !216
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !217, metadata !DIExpression()), !dbg !218
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !218
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !218
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !219
  store i8* %arraydecay, i8** %data, align 8, !dbg !220
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !221, metadata !DIExpression()), !dbg !223
  %1 = load i8*, i8** %data, align 8, !dbg !224
  %call = call i64 @strlen(i8* %1) #7, !dbg !225
  store i64 %call, i64* %dataLen, align 8, !dbg !223
  %2 = load i64, i64* %dataLen, align 8, !dbg !226
  %sub = sub i64 100, %2, !dbg !228
  %cmp = icmp ugt i64 %sub, 1, !dbg !229
  br i1 %cmp, label %if.then, label %if.end18, !dbg !230

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !231
  %4 = load i64, i64* %dataLen, align 8, !dbg !234
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !235
  %5 = load i64, i64* %dataLen, align 8, !dbg !236
  %sub1 = sub i64 100, %5, !dbg !237
  %conv = trunc i64 %sub1 to i32, !dbg !238
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !239
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !240
  %cmp3 = icmp ne i8* %call2, null, !dbg !241
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !242

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !243
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !245
  store i64 %call6, i64* %dataLen, align 8, !dbg !246
  %8 = load i64, i64* %dataLen, align 8, !dbg !247
  %cmp7 = icmp ugt i64 %8, 0, !dbg !249
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !250

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !251
  %10 = load i64, i64* %dataLen, align 8, !dbg !252
  %sub9 = sub i64 %10, 1, !dbg !253
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !251
  %11 = load i8, i8* %arrayidx, align 1, !dbg !251
  %conv10 = sext i8 %11 to i32, !dbg !251
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !254
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !255

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !256
  %13 = load i64, i64* %dataLen, align 8, !dbg !258
  %sub14 = sub i64 %13, 1, !dbg !259
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !256
  store i8 0, i8* %arrayidx15, align 1, !dbg !260
  br label %if.end, !dbg !261

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !262

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)), !dbg !263
  %14 = load i8*, i8** %data, align 8, !dbg !265
  %15 = load i64, i64* %dataLen, align 8, !dbg !266
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !265
  store i8 0, i8* %arrayidx16, align 1, !dbg !267
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !268

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !269
  %17 = load i8*, i8** %data, align 8, !dbg !270
  call void %16(i8* %17), !dbg !269
  ret void, !dbg !271
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_44_good() #0 !dbg !272 {
entry:
  call void @goodG2B(), !dbg !273
  call void @goodB2G(), !dbg !274
  ret void, !dbg !275
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_44.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_005/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "badSink", scope: !1, file: !1, line: 29, type: !11, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "data", arg: 1, scope: !10, file: !1, line: 29, type: !13)
!16 = !DILocation(line: 29, column: 21, scope: !10)
!17 = !DILocalVariable(name: "i", scope: !18, file: !1, line: 32, type: !4)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 31, column: 5)
!19 = !DILocation(line: 32, column: 13, scope: !18)
!20 = !DILocalVariable(name: "n", scope: !18, file: !1, line: 32, type: !4)
!21 = !DILocation(line: 32, column: 16, scope: !18)
!22 = !DILocalVariable(name: "intVariable", scope: !18, file: !1, line: 32, type: !4)
!23 = !DILocation(line: 32, column: 19, scope: !18)
!24 = !DILocation(line: 33, column: 20, scope: !25)
!25 = distinct !DILexicalBlock(scope: !18, file: !1, line: 33, column: 13)
!26 = !DILocation(line: 33, column: 13, scope: !25)
!27 = !DILocation(line: 33, column: 36, scope: !25)
!28 = !DILocation(line: 33, column: 13, scope: !18)
!29 = !DILocation(line: 36, column: 25, scope: !30)
!30 = distinct !DILexicalBlock(scope: !25, file: !1, line: 34, column: 9)
!31 = !DILocation(line: 37, column: 20, scope: !32)
!32 = distinct !DILexicalBlock(scope: !30, file: !1, line: 37, column: 13)
!33 = !DILocation(line: 37, column: 18, scope: !32)
!34 = !DILocation(line: 37, column: 25, scope: !35)
!35 = distinct !DILexicalBlock(scope: !32, file: !1, line: 37, column: 13)
!36 = !DILocation(line: 37, column: 29, scope: !35)
!37 = !DILocation(line: 37, column: 27, scope: !35)
!38 = !DILocation(line: 37, column: 13, scope: !32)
!39 = !DILocation(line: 40, column: 28, scope: !40)
!40 = distinct !DILexicalBlock(scope: !35, file: !1, line: 38, column: 13)
!41 = !DILocation(line: 41, column: 13, scope: !40)
!42 = !DILocation(line: 37, column: 33, scope: !35)
!43 = !DILocation(line: 37, column: 13, scope: !35)
!44 = distinct !{!44, !38, !45, !46}
!45 = !DILocation(line: 41, column: 13, scope: !32)
!46 = !{!"llvm.loop.mustprogress"}
!47 = !DILocation(line: 42, column: 26, scope: !30)
!48 = !DILocation(line: 42, column: 13, scope: !30)
!49 = !DILocation(line: 43, column: 9, scope: !30)
!50 = !DILocation(line: 45, column: 1, scope: !10)
!51 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_44_bad", scope: !1, file: !1, line: 47, type: !52, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!52 = !DISubroutineType(types: !53)
!53 = !{null}
!54 = !DILocalVariable(name: "data", scope: !51, file: !1, line: 49, type: !13)
!55 = !DILocation(line: 49, column: 12, scope: !51)
!56 = !DILocalVariable(name: "funcPtr", scope: !51, file: !1, line: 51, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!58 = !DILocation(line: 51, column: 12, scope: !51)
!59 = !DILocalVariable(name: "dataBuffer", scope: !51, file: !1, line: 52, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 100)
!63 = !DILocation(line: 52, column: 10, scope: !51)
!64 = !DILocation(line: 53, column: 12, scope: !51)
!65 = !DILocation(line: 53, column: 10, scope: !51)
!66 = !DILocalVariable(name: "dataLen", scope: !67, file: !1, line: 56, type: !68)
!67 = distinct !DILexicalBlock(scope: !51, file: !1, line: 54, column: 5)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DILocation(line: 56, column: 16, scope: !67)
!72 = !DILocation(line: 56, column: 33, scope: !67)
!73 = !DILocation(line: 56, column: 26, scope: !67)
!74 = !DILocation(line: 58, column: 17, scope: !75)
!75 = distinct !DILexicalBlock(scope: !67, file: !1, line: 58, column: 13)
!76 = !DILocation(line: 58, column: 16, scope: !75)
!77 = !DILocation(line: 58, column: 25, scope: !75)
!78 = !DILocation(line: 58, column: 13, scope: !67)
!79 = !DILocation(line: 61, column: 23, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 61, column: 17)
!81 = distinct !DILexicalBlock(scope: !75, file: !1, line: 59, column: 9)
!82 = !DILocation(line: 61, column: 28, scope: !80)
!83 = !DILocation(line: 61, column: 27, scope: !80)
!84 = !DILocation(line: 61, column: 47, scope: !80)
!85 = !DILocation(line: 61, column: 46, scope: !80)
!86 = !DILocation(line: 61, column: 37, scope: !80)
!87 = !DILocation(line: 61, column: 57, scope: !80)
!88 = !DILocation(line: 61, column: 17, scope: !80)
!89 = !DILocation(line: 61, column: 64, scope: !80)
!90 = !DILocation(line: 61, column: 17, scope: !81)
!91 = !DILocation(line: 65, column: 34, scope: !92)
!92 = distinct !DILexicalBlock(scope: !80, file: !1, line: 62, column: 13)
!93 = !DILocation(line: 65, column: 27, scope: !92)
!94 = !DILocation(line: 65, column: 25, scope: !92)
!95 = !DILocation(line: 66, column: 21, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !1, line: 66, column: 21)
!97 = !DILocation(line: 66, column: 29, scope: !96)
!98 = !DILocation(line: 66, column: 33, scope: !96)
!99 = !DILocation(line: 66, column: 36, scope: !96)
!100 = !DILocation(line: 66, column: 41, scope: !96)
!101 = !DILocation(line: 66, column: 48, scope: !96)
!102 = !DILocation(line: 66, column: 52, scope: !96)
!103 = !DILocation(line: 66, column: 21, scope: !92)
!104 = !DILocation(line: 68, column: 21, scope: !105)
!105 = distinct !DILexicalBlock(scope: !96, file: !1, line: 67, column: 17)
!106 = !DILocation(line: 68, column: 26, scope: !105)
!107 = !DILocation(line: 68, column: 33, scope: !105)
!108 = !DILocation(line: 68, column: 37, scope: !105)
!109 = !DILocation(line: 69, column: 17, scope: !105)
!110 = !DILocation(line: 70, column: 13, scope: !92)
!111 = !DILocation(line: 73, column: 17, scope: !112)
!112 = distinct !DILexicalBlock(scope: !80, file: !1, line: 72, column: 13)
!113 = !DILocation(line: 75, column: 17, scope: !112)
!114 = !DILocation(line: 75, column: 22, scope: !112)
!115 = !DILocation(line: 75, column: 31, scope: !112)
!116 = !DILocation(line: 77, column: 9, scope: !81)
!117 = !DILocation(line: 80, column: 5, scope: !51)
!118 = !DILocation(line: 80, column: 13, scope: !51)
!119 = !DILocation(line: 81, column: 1, scope: !51)
!120 = distinct !DISubprogram(name: "goodG2BSink", scope: !1, file: !1, line: 88, type: !11, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!121 = !DILocalVariable(name: "data", arg: 1, scope: !120, file: !1, line: 88, type: !13)
!122 = !DILocation(line: 88, column: 25, scope: !120)
!123 = !DILocalVariable(name: "i", scope: !124, file: !1, line: 91, type: !4)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 90, column: 5)
!125 = !DILocation(line: 91, column: 13, scope: !124)
!126 = !DILocalVariable(name: "n", scope: !124, file: !1, line: 91, type: !4)
!127 = !DILocation(line: 91, column: 16, scope: !124)
!128 = !DILocalVariable(name: "intVariable", scope: !124, file: !1, line: 91, type: !4)
!129 = !DILocation(line: 91, column: 19, scope: !124)
!130 = !DILocation(line: 92, column: 20, scope: !131)
!131 = distinct !DILexicalBlock(scope: !124, file: !1, line: 92, column: 13)
!132 = !DILocation(line: 92, column: 13, scope: !131)
!133 = !DILocation(line: 92, column: 36, scope: !131)
!134 = !DILocation(line: 92, column: 13, scope: !124)
!135 = !DILocation(line: 95, column: 25, scope: !136)
!136 = distinct !DILexicalBlock(scope: !131, file: !1, line: 93, column: 9)
!137 = !DILocation(line: 96, column: 20, scope: !138)
!138 = distinct !DILexicalBlock(scope: !136, file: !1, line: 96, column: 13)
!139 = !DILocation(line: 96, column: 18, scope: !138)
!140 = !DILocation(line: 96, column: 25, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !1, line: 96, column: 13)
!142 = !DILocation(line: 96, column: 29, scope: !141)
!143 = !DILocation(line: 96, column: 27, scope: !141)
!144 = !DILocation(line: 96, column: 13, scope: !138)
!145 = !DILocation(line: 99, column: 28, scope: !146)
!146 = distinct !DILexicalBlock(scope: !141, file: !1, line: 97, column: 13)
!147 = !DILocation(line: 100, column: 13, scope: !146)
!148 = !DILocation(line: 96, column: 33, scope: !141)
!149 = !DILocation(line: 96, column: 13, scope: !141)
!150 = distinct !{!150, !144, !151, !46}
!151 = !DILocation(line: 100, column: 13, scope: !138)
!152 = !DILocation(line: 101, column: 26, scope: !136)
!153 = !DILocation(line: 101, column: 13, scope: !136)
!154 = !DILocation(line: 102, column: 9, scope: !136)
!155 = !DILocation(line: 104, column: 1, scope: !120)
!156 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 106, type: !52, scopeLine: 107, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!157 = !DILocalVariable(name: "data", scope: !156, file: !1, line: 108, type: !13)
!158 = !DILocation(line: 108, column: 12, scope: !156)
!159 = !DILocalVariable(name: "funcPtr", scope: !156, file: !1, line: 109, type: !57)
!160 = !DILocation(line: 109, column: 12, scope: !156)
!161 = !DILocalVariable(name: "dataBuffer", scope: !156, file: !1, line: 110, type: !60)
!162 = !DILocation(line: 110, column: 10, scope: !156)
!163 = !DILocation(line: 111, column: 12, scope: !156)
!164 = !DILocation(line: 111, column: 10, scope: !156)
!165 = !DILocation(line: 113, column: 12, scope: !156)
!166 = !DILocation(line: 113, column: 5, scope: !156)
!167 = !DILocation(line: 114, column: 5, scope: !156)
!168 = !DILocation(line: 114, column: 13, scope: !156)
!169 = !DILocation(line: 115, column: 1, scope: !156)
!170 = distinct !DISubprogram(name: "goodB2GSink", scope: !1, file: !1, line: 118, type: !11, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!171 = !DILocalVariable(name: "data", arg: 1, scope: !170, file: !1, line: 118, type: !13)
!172 = !DILocation(line: 118, column: 25, scope: !170)
!173 = !DILocalVariable(name: "i", scope: !174, file: !1, line: 121, type: !4)
!174 = distinct !DILexicalBlock(scope: !170, file: !1, line: 120, column: 5)
!175 = !DILocation(line: 121, column: 13, scope: !174)
!176 = !DILocalVariable(name: "n", scope: !174, file: !1, line: 121, type: !4)
!177 = !DILocation(line: 121, column: 16, scope: !174)
!178 = !DILocalVariable(name: "intVariable", scope: !174, file: !1, line: 121, type: !4)
!179 = !DILocation(line: 121, column: 19, scope: !174)
!180 = !DILocation(line: 122, column: 20, scope: !181)
!181 = distinct !DILexicalBlock(scope: !174, file: !1, line: 122, column: 13)
!182 = !DILocation(line: 122, column: 13, scope: !181)
!183 = !DILocation(line: 122, column: 36, scope: !181)
!184 = !DILocation(line: 122, column: 13, scope: !174)
!185 = !DILocation(line: 125, column: 17, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 125, column: 17)
!187 = distinct !DILexicalBlock(scope: !181, file: !1, line: 123, column: 9)
!188 = !DILocation(line: 125, column: 19, scope: !186)
!189 = !DILocation(line: 125, column: 17, scope: !187)
!190 = !DILocation(line: 127, column: 29, scope: !191)
!191 = distinct !DILexicalBlock(scope: !186, file: !1, line: 126, column: 13)
!192 = !DILocation(line: 128, column: 24, scope: !193)
!193 = distinct !DILexicalBlock(scope: !191, file: !1, line: 128, column: 17)
!194 = !DILocation(line: 128, column: 22, scope: !193)
!195 = !DILocation(line: 128, column: 29, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !1, line: 128, column: 17)
!197 = !DILocation(line: 128, column: 33, scope: !196)
!198 = !DILocation(line: 128, column: 31, scope: !196)
!199 = !DILocation(line: 128, column: 17, scope: !193)
!200 = !DILocation(line: 131, column: 32, scope: !201)
!201 = distinct !DILexicalBlock(scope: !196, file: !1, line: 129, column: 17)
!202 = !DILocation(line: 132, column: 17, scope: !201)
!203 = !DILocation(line: 128, column: 37, scope: !196)
!204 = !DILocation(line: 128, column: 17, scope: !196)
!205 = distinct !{!205, !199, !206, !46}
!206 = !DILocation(line: 132, column: 17, scope: !193)
!207 = !DILocation(line: 133, column: 30, scope: !191)
!208 = !DILocation(line: 133, column: 17, scope: !191)
!209 = !DILocation(line: 134, column: 13, scope: !191)
!210 = !DILocation(line: 135, column: 9, scope: !187)
!211 = !DILocation(line: 137, column: 1, scope: !170)
!212 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 139, type: !52, scopeLine: 140, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!213 = !DILocalVariable(name: "data", scope: !212, file: !1, line: 141, type: !13)
!214 = !DILocation(line: 141, column: 12, scope: !212)
!215 = !DILocalVariable(name: "funcPtr", scope: !212, file: !1, line: 142, type: !57)
!216 = !DILocation(line: 142, column: 12, scope: !212)
!217 = !DILocalVariable(name: "dataBuffer", scope: !212, file: !1, line: 143, type: !60)
!218 = !DILocation(line: 143, column: 10, scope: !212)
!219 = !DILocation(line: 144, column: 12, scope: !212)
!220 = !DILocation(line: 144, column: 10, scope: !212)
!221 = !DILocalVariable(name: "dataLen", scope: !222, file: !1, line: 147, type: !68)
!222 = distinct !DILexicalBlock(scope: !212, file: !1, line: 145, column: 5)
!223 = !DILocation(line: 147, column: 16, scope: !222)
!224 = !DILocation(line: 147, column: 33, scope: !222)
!225 = !DILocation(line: 147, column: 26, scope: !222)
!226 = !DILocation(line: 149, column: 17, scope: !227)
!227 = distinct !DILexicalBlock(scope: !222, file: !1, line: 149, column: 13)
!228 = !DILocation(line: 149, column: 16, scope: !227)
!229 = !DILocation(line: 149, column: 25, scope: !227)
!230 = !DILocation(line: 149, column: 13, scope: !222)
!231 = !DILocation(line: 152, column: 23, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !1, line: 152, column: 17)
!233 = distinct !DILexicalBlock(scope: !227, file: !1, line: 150, column: 9)
!234 = !DILocation(line: 152, column: 28, scope: !232)
!235 = !DILocation(line: 152, column: 27, scope: !232)
!236 = !DILocation(line: 152, column: 47, scope: !232)
!237 = !DILocation(line: 152, column: 46, scope: !232)
!238 = !DILocation(line: 152, column: 37, scope: !232)
!239 = !DILocation(line: 152, column: 57, scope: !232)
!240 = !DILocation(line: 152, column: 17, scope: !232)
!241 = !DILocation(line: 152, column: 64, scope: !232)
!242 = !DILocation(line: 152, column: 17, scope: !233)
!243 = !DILocation(line: 156, column: 34, scope: !244)
!244 = distinct !DILexicalBlock(scope: !232, file: !1, line: 153, column: 13)
!245 = !DILocation(line: 156, column: 27, scope: !244)
!246 = !DILocation(line: 156, column: 25, scope: !244)
!247 = !DILocation(line: 157, column: 21, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !1, line: 157, column: 21)
!249 = !DILocation(line: 157, column: 29, scope: !248)
!250 = !DILocation(line: 157, column: 33, scope: !248)
!251 = !DILocation(line: 157, column: 36, scope: !248)
!252 = !DILocation(line: 157, column: 41, scope: !248)
!253 = !DILocation(line: 157, column: 48, scope: !248)
!254 = !DILocation(line: 157, column: 52, scope: !248)
!255 = !DILocation(line: 157, column: 21, scope: !244)
!256 = !DILocation(line: 159, column: 21, scope: !257)
!257 = distinct !DILexicalBlock(scope: !248, file: !1, line: 158, column: 17)
!258 = !DILocation(line: 159, column: 26, scope: !257)
!259 = !DILocation(line: 159, column: 33, scope: !257)
!260 = !DILocation(line: 159, column: 37, scope: !257)
!261 = !DILocation(line: 160, column: 17, scope: !257)
!262 = !DILocation(line: 161, column: 13, scope: !244)
!263 = !DILocation(line: 164, column: 17, scope: !264)
!264 = distinct !DILexicalBlock(scope: !232, file: !1, line: 163, column: 13)
!265 = !DILocation(line: 166, column: 17, scope: !264)
!266 = !DILocation(line: 166, column: 22, scope: !264)
!267 = !DILocation(line: 166, column: 31, scope: !264)
!268 = !DILocation(line: 168, column: 9, scope: !233)
!269 = !DILocation(line: 170, column: 5, scope: !212)
!270 = !DILocation(line: 170, column: 13, scope: !212)
!271 = !DILocation(line: 171, column: 1, scope: !212)
!272 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_44_good", scope: !1, file: !1, line: 173, type: !52, scopeLine: 174, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!273 = !DILocation(line: 175, column: 5, scope: !272)
!274 = !DILocation(line: 176, column: 5, scope: !272)
!275 = !DILocation(line: 177, column: 1, scope: !272)
