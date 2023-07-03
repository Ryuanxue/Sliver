; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_07.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_07.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@staticFive = dso_local global i32 5, align 4, !dbg !0
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_07_bad() #0 !dbg !13 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !16, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !20, metadata !DIExpression()), !dbg !24
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !24
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !24
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !25
  store i8* %arraydecay, i8** %data, align 8, !dbg !26
  %1 = load i32, i32* @staticFive, align 4, !dbg !27
  %cmp = icmp eq i32 %1, 5, !dbg !29
  br i1 %cmp, label %if.then, label %if.end21, !dbg !30

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !31, metadata !DIExpression()), !dbg !37
  %2 = load i8*, i8** %data, align 8, !dbg !38
  %call = call i64 @strlen(i8* %2) #6, !dbg !39
  store i64 %call, i64* %dataLen, align 8, !dbg !37
  %3 = load i64, i64* %dataLen, align 8, !dbg !40
  %sub = sub i64 100, %3, !dbg !42
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !43
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !44

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !45
  %5 = load i64, i64* %dataLen, align 8, !dbg !48
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !49
  %6 = load i64, i64* %dataLen, align 8, !dbg !50
  %sub3 = sub i64 100, %6, !dbg !51
  %conv = trunc i64 %sub3 to i32, !dbg !52
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !53
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !54
  %cmp5 = icmp ne i8* %call4, null, !dbg !55
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !56

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !57
  %call8 = call i64 @strlen(i8* %8) #6, !dbg !59
  store i64 %call8, i64* %dataLen, align 8, !dbg !60
  %9 = load i64, i64* %dataLen, align 8, !dbg !61
  %cmp9 = icmp ugt i64 %9, 0, !dbg !63
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !64

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !65
  %11 = load i64, i64* %dataLen, align 8, !dbg !66
  %sub11 = sub i64 %11, 1, !dbg !67
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !65
  %12 = load i8, i8* %arrayidx, align 1, !dbg !65
  %conv12 = sext i8 %12 to i32, !dbg !65
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !68
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !69

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !70
  %14 = load i64, i64* %dataLen, align 8, !dbg !72
  %sub16 = sub i64 %14, 1, !dbg !73
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !70
  store i8 0, i8* %arrayidx17, align 1, !dbg !74
  br label %if.end, !dbg !75

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !76

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !77
  %15 = load i8*, i8** %data, align 8, !dbg !79
  %16 = load i64, i64* %dataLen, align 8, !dbg !80
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !79
  store i8 0, i8* %arrayidx18, align 1, !dbg !81
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !82

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !83

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @staticFive, align 4, !dbg !84
  %cmp22 = icmp eq i32 %17, 5, !dbg !86
  br i1 %cmp22, label %if.then24, label %if.end33, !dbg !87

if.then24:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !88, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %n, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !94, metadata !DIExpression()), !dbg !95
  %18 = load i8*, i8** %data, align 8, !dbg !96
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !98
  %cmp26 = icmp eq i32 %call25, 1, !dbg !99
  br i1 %cmp26, label %if.then28, label %if.end32, !dbg !100

if.then28:                                        ; preds = %if.then24
  store i32 0, i32* %intVariable, align 4, !dbg !101
  store i32 0, i32* %i, align 4, !dbg !103
  br label %for.cond, !dbg !105

for.cond:                                         ; preds = %for.inc, %if.then28
  %19 = load i32, i32* %i, align 4, !dbg !106
  %20 = load i32, i32* %n, align 4, !dbg !108
  %cmp29 = icmp slt i32 %19, %20, !dbg !109
  br i1 %cmp29, label %for.body, label %for.end, !dbg !110

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !111
  %inc = add nsw i32 %21, 1, !dbg !111
  store i32 %inc, i32* %intVariable, align 4, !dbg !111
  br label %for.inc, !dbg !113

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !dbg !114
  %inc31 = add nsw i32 %22, 1, !dbg !114
  store i32 %inc31, i32* %i, align 4, !dbg !114
  br label %for.cond, !dbg !115, !llvm.loop !116

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %intVariable, align 4, !dbg !119
  call void @printIntLine(i32 %23), !dbg !120
  br label %if.end32, !dbg !121

if.end32:                                         ; preds = %for.end, %if.then24
  br label %if.end33, !dbg !122

if.end33:                                         ; preds = %if.end32, %if.end21
  ret void, !dbg !123
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !124 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !127, metadata !DIExpression()), !dbg !128
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !128
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !128
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !129
  store i8* %arraydecay, i8** %data, align 8, !dbg !130
  %1 = load i32, i32* @staticFive, align 4, !dbg !131
  %cmp = icmp eq i32 %1, 5, !dbg !133
  br i1 %cmp, label %if.then, label %if.end21, !dbg !134

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !135, metadata !DIExpression()), !dbg !138
  %2 = load i8*, i8** %data, align 8, !dbg !139
  %call = call i64 @strlen(i8* %2) #6, !dbg !140
  store i64 %call, i64* %dataLen, align 8, !dbg !138
  %3 = load i64, i64* %dataLen, align 8, !dbg !141
  %sub = sub i64 100, %3, !dbg !143
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !144
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !145

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !146
  %5 = load i64, i64* %dataLen, align 8, !dbg !149
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !150
  %6 = load i64, i64* %dataLen, align 8, !dbg !151
  %sub3 = sub i64 100, %6, !dbg !152
  %conv = trunc i64 %sub3 to i32, !dbg !153
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !154
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !155
  %cmp5 = icmp ne i8* %call4, null, !dbg !156
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !157

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !158
  %call8 = call i64 @strlen(i8* %8) #6, !dbg !160
  store i64 %call8, i64* %dataLen, align 8, !dbg !161
  %9 = load i64, i64* %dataLen, align 8, !dbg !162
  %cmp9 = icmp ugt i64 %9, 0, !dbg !164
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !165

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !166
  %11 = load i64, i64* %dataLen, align 8, !dbg !167
  %sub11 = sub i64 %11, 1, !dbg !168
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !166
  %12 = load i8, i8* %arrayidx, align 1, !dbg !166
  %conv12 = sext i8 %12 to i32, !dbg !166
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !169
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !170

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !171
  %14 = load i64, i64* %dataLen, align 8, !dbg !173
  %sub16 = sub i64 %14, 1, !dbg !174
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !171
  store i8 0, i8* %arrayidx17, align 1, !dbg !175
  br label %if.end, !dbg !176

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !177

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !178
  %15 = load i8*, i8** %data, align 8, !dbg !180
  %16 = load i64, i64* %dataLen, align 8, !dbg !181
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !180
  store i8 0, i8* %arrayidx18, align 1, !dbg !182
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !183

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !184

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @staticFive, align 4, !dbg !185
  %cmp22 = icmp ne i32 %17, 5, !dbg !187
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !188

if.then24:                                        ; preds = %if.end21
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !189
  br label %if.end38, !dbg !191

if.else25:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !192, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata i32* %n, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !198, metadata !DIExpression()), !dbg !199
  %18 = load i8*, i8** %data, align 8, !dbg !200
  %call26 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !202
  %cmp27 = icmp eq i32 %call26, 1, !dbg !203
  br i1 %cmp27, label %if.then29, label %if.end37, !dbg !204

if.then29:                                        ; preds = %if.else25
  %19 = load i32, i32* %n, align 4, !dbg !205
  %cmp30 = icmp slt i32 %19, 10000, !dbg !208
  br i1 %cmp30, label %if.then32, label %if.end36, !dbg !209

if.then32:                                        ; preds = %if.then29
  store i32 0, i32* %intVariable, align 4, !dbg !210
  store i32 0, i32* %i, align 4, !dbg !212
  br label %for.cond, !dbg !214

for.cond:                                         ; preds = %for.inc, %if.then32
  %20 = load i32, i32* %i, align 4, !dbg !215
  %21 = load i32, i32* %n, align 4, !dbg !217
  %cmp33 = icmp slt i32 %20, %21, !dbg !218
  br i1 %cmp33, label %for.body, label %for.end, !dbg !219

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !220
  %inc = add nsw i32 %22, 1, !dbg !220
  store i32 %inc, i32* %intVariable, align 4, !dbg !220
  br label %for.inc, !dbg !222

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !223
  %inc35 = add nsw i32 %23, 1, !dbg !223
  store i32 %inc35, i32* %i, align 4, !dbg !223
  br label %for.cond, !dbg !224, !llvm.loop !225

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %intVariable, align 4, !dbg !227
  call void @printIntLine(i32 %24), !dbg !228
  br label %if.end36, !dbg !229

if.end36:                                         ; preds = %for.end, %if.then29
  br label %if.end37, !dbg !230

if.end37:                                         ; preds = %if.end36, %if.else25
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then24
  ret void, !dbg !231
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !232 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !233, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !235, metadata !DIExpression()), !dbg !236
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !236
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !236
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !237
  store i8* %arraydecay, i8** %data, align 8, !dbg !238
  %1 = load i32, i32* @staticFive, align 4, !dbg !239
  %cmp = icmp eq i32 %1, 5, !dbg !241
  br i1 %cmp, label %if.then, label %if.end21, !dbg !242

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !243, metadata !DIExpression()), !dbg !246
  %2 = load i8*, i8** %data, align 8, !dbg !247
  %call = call i64 @strlen(i8* %2) #6, !dbg !248
  store i64 %call, i64* %dataLen, align 8, !dbg !246
  %3 = load i64, i64* %dataLen, align 8, !dbg !249
  %sub = sub i64 100, %3, !dbg !251
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !252
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !253

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !254
  %5 = load i64, i64* %dataLen, align 8, !dbg !257
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !258
  %6 = load i64, i64* %dataLen, align 8, !dbg !259
  %sub3 = sub i64 100, %6, !dbg !260
  %conv = trunc i64 %sub3 to i32, !dbg !261
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !262
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !263
  %cmp5 = icmp ne i8* %call4, null, !dbg !264
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !265

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !266
  %call8 = call i64 @strlen(i8* %8) #6, !dbg !268
  store i64 %call8, i64* %dataLen, align 8, !dbg !269
  %9 = load i64, i64* %dataLen, align 8, !dbg !270
  %cmp9 = icmp ugt i64 %9, 0, !dbg !272
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !273

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !274
  %11 = load i64, i64* %dataLen, align 8, !dbg !275
  %sub11 = sub i64 %11, 1, !dbg !276
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !274
  %12 = load i8, i8* %arrayidx, align 1, !dbg !274
  %conv12 = sext i8 %12 to i32, !dbg !274
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !277
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !278

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !279
  %14 = load i64, i64* %dataLen, align 8, !dbg !281
  %sub16 = sub i64 %14, 1, !dbg !282
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !279
  store i8 0, i8* %arrayidx17, align 1, !dbg !283
  br label %if.end, !dbg !284

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !285

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !286
  %15 = load i8*, i8** %data, align 8, !dbg !288
  %16 = load i64, i64* %dataLen, align 8, !dbg !289
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !288
  store i8 0, i8* %arrayidx18, align 1, !dbg !290
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !291

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !292

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @staticFive, align 4, !dbg !293
  %cmp22 = icmp eq i32 %17, 5, !dbg !295
  br i1 %cmp22, label %if.then24, label %if.end37, !dbg !296

if.then24:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !297, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata i32* %n, metadata !301, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !303, metadata !DIExpression()), !dbg !304
  %18 = load i8*, i8** %data, align 8, !dbg !305
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !307
  %cmp26 = icmp eq i32 %call25, 1, !dbg !308
  br i1 %cmp26, label %if.then28, label %if.end36, !dbg !309

if.then28:                                        ; preds = %if.then24
  %19 = load i32, i32* %n, align 4, !dbg !310
  %cmp29 = icmp slt i32 %19, 10000, !dbg !313
  br i1 %cmp29, label %if.then31, label %if.end35, !dbg !314

if.then31:                                        ; preds = %if.then28
  store i32 0, i32* %intVariable, align 4, !dbg !315
  store i32 0, i32* %i, align 4, !dbg !317
  br label %for.cond, !dbg !319

for.cond:                                         ; preds = %for.inc, %if.then31
  %20 = load i32, i32* %i, align 4, !dbg !320
  %21 = load i32, i32* %n, align 4, !dbg !322
  %cmp32 = icmp slt i32 %20, %21, !dbg !323
  br i1 %cmp32, label %for.body, label %for.end, !dbg !324

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !325
  %inc = add nsw i32 %22, 1, !dbg !325
  store i32 %inc, i32* %intVariable, align 4, !dbg !325
  br label %for.inc, !dbg !327

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !328
  %inc34 = add nsw i32 %23, 1, !dbg !328
  store i32 %inc34, i32* %i, align 4, !dbg !328
  br label %for.cond, !dbg !329, !llvm.loop !330

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %intVariable, align 4, !dbg !332
  call void @printIntLine(i32 %24), !dbg !333
  br label %if.end35, !dbg !334

if.end35:                                         ; preds = %for.end, %if.then28
  br label %if.end36, !dbg !335

if.end36:                                         ; preds = %if.end35, %if.then24
  br label %if.end37, !dbg !336

if.end37:                                         ; preds = %if.end36, %if.end21
  ret void, !dbg !337
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !338 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !339, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !341, metadata !DIExpression()), !dbg !342
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !342
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !342
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !343
  store i8* %arraydecay, i8** %data, align 8, !dbg !344
  %1 = load i32, i32* @staticFive, align 4, !dbg !345
  %cmp = icmp ne i32 %1, 5, !dbg !347
  br i1 %cmp, label %if.then, label %if.else, !dbg !348

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !349
  br label %if.end, !dbg !351

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !352
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !354
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @staticFive, align 4, !dbg !355
  %cmp1 = icmp eq i32 %3, 5, !dbg !357
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !358

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !359, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.declare(metadata i32* %n, metadata !363, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !365, metadata !DIExpression()), !dbg !366
  %4 = load i8*, i8** %data, align 8, !dbg !367
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !369
  %cmp4 = icmp eq i32 %call3, 1, !dbg !370
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !371

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !372
  store i32 0, i32* %i, align 4, !dbg !374
  br label %for.cond, !dbg !376

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !377
  %6 = load i32, i32* %n, align 4, !dbg !379
  %cmp6 = icmp slt i32 %5, %6, !dbg !380
  br i1 %cmp6, label %for.body, label %for.end, !dbg !381

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !382
  %inc = add nsw i32 %7, 1, !dbg !382
  store i32 %inc, i32* %intVariable, align 4, !dbg !382
  br label %for.inc, !dbg !384

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !385
  %inc7 = add nsw i32 %8, 1, !dbg !385
  store i32 %inc7, i32* %i, align 4, !dbg !385
  br label %for.cond, !dbg !386, !llvm.loop !387

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !389
  call void @printIntLine(i32 %9), !dbg !390
  br label %if.end8, !dbg !391

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !392

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !393
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !394 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !395, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !397, metadata !DIExpression()), !dbg !398
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !398
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !398
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !399
  store i8* %arraydecay, i8** %data, align 8, !dbg !400
  %1 = load i32, i32* @staticFive, align 4, !dbg !401
  %cmp = icmp eq i32 %1, 5, !dbg !403
  br i1 %cmp, label %if.then, label %if.end, !dbg !404

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !405
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !407
  br label %if.end, !dbg !408

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @staticFive, align 4, !dbg !409
  %cmp1 = icmp eq i32 %3, 5, !dbg !411
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !412

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !413, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.declare(metadata i32* %n, metadata !417, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !419, metadata !DIExpression()), !dbg !420
  %4 = load i8*, i8** %data, align 8, !dbg !421
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !423
  %cmp4 = icmp eq i32 %call3, 1, !dbg !424
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !425

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !426
  store i32 0, i32* %i, align 4, !dbg !428
  br label %for.cond, !dbg !430

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !431
  %6 = load i32, i32* %n, align 4, !dbg !433
  %cmp6 = icmp slt i32 %5, %6, !dbg !434
  br i1 %cmp6, label %for.body, label %for.end, !dbg !435

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !436
  %inc = add nsw i32 %7, 1, !dbg !436
  store i32 %inc, i32* %intVariable, align 4, !dbg !436
  br label %for.inc, !dbg !438

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !439
  %inc7 = add nsw i32 %8, 1, !dbg !439
  store i32 %inc7, i32* %i, align 4, !dbg !439
  br label %for.cond, !dbg !440, !llvm.loop !441

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !443
  call void @printIntLine(i32 %9), !dbg !444
  br label %if.end8, !dbg !445

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !446

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !447
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_07_good() #0 !dbg !448 {
entry:
  call void @goodB2G1(), !dbg !449
  call void @goodB2G2(), !dbg !450
  call void @goodG2B1(), !dbg !451
  call void @goodG2B2(), !dbg !452
  ret void, !dbg !453
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "staticFive", scope: !2, file: !3, line: 30, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_07.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_984/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0}
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 12.0.0"}
!13 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_07_bad", scope: !3, file: !3, line: 34, type: !14, scopeLine: 35, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!14 = !DISubroutineType(types: !15)
!15 = !{null}
!16 = !DILocalVariable(name: "data", scope: !13, file: !3, line: 36, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DILocation(line: 36, column: 12, scope: !13)
!20 = !DILocalVariable(name: "dataBuffer", scope: !13, file: !3, line: 37, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 800, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 100)
!24 = !DILocation(line: 37, column: 10, scope: !13)
!25 = !DILocation(line: 38, column: 12, scope: !13)
!26 = !DILocation(line: 38, column: 10, scope: !13)
!27 = !DILocation(line: 39, column: 8, scope: !28)
!28 = distinct !DILexicalBlock(scope: !13, file: !3, line: 39, column: 8)
!29 = !DILocation(line: 39, column: 18, scope: !28)
!30 = !DILocation(line: 39, column: 8, scope: !13)
!31 = !DILocalVariable(name: "dataLen", scope: !32, file: !3, line: 43, type: !34)
!32 = distinct !DILexicalBlock(scope: !33, file: !3, line: 41, column: 9)
!33 = distinct !DILexicalBlock(scope: !28, file: !3, line: 40, column: 5)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 43, column: 20, scope: !32)
!38 = !DILocation(line: 43, column: 37, scope: !32)
!39 = !DILocation(line: 43, column: 30, scope: !32)
!40 = !DILocation(line: 45, column: 21, scope: !41)
!41 = distinct !DILexicalBlock(scope: !32, file: !3, line: 45, column: 17)
!42 = !DILocation(line: 45, column: 20, scope: !41)
!43 = !DILocation(line: 45, column: 29, scope: !41)
!44 = !DILocation(line: 45, column: 17, scope: !32)
!45 = !DILocation(line: 48, column: 27, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !3, line: 48, column: 21)
!47 = distinct !DILexicalBlock(scope: !41, file: !3, line: 46, column: 13)
!48 = !DILocation(line: 48, column: 32, scope: !46)
!49 = !DILocation(line: 48, column: 31, scope: !46)
!50 = !DILocation(line: 48, column: 51, scope: !46)
!51 = !DILocation(line: 48, column: 50, scope: !46)
!52 = !DILocation(line: 48, column: 41, scope: !46)
!53 = !DILocation(line: 48, column: 61, scope: !46)
!54 = !DILocation(line: 48, column: 21, scope: !46)
!55 = !DILocation(line: 48, column: 68, scope: !46)
!56 = !DILocation(line: 48, column: 21, scope: !47)
!57 = !DILocation(line: 52, column: 38, scope: !58)
!58 = distinct !DILexicalBlock(scope: !46, file: !3, line: 49, column: 17)
!59 = !DILocation(line: 52, column: 31, scope: !58)
!60 = !DILocation(line: 52, column: 29, scope: !58)
!61 = !DILocation(line: 53, column: 25, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !3, line: 53, column: 25)
!63 = !DILocation(line: 53, column: 33, scope: !62)
!64 = !DILocation(line: 53, column: 37, scope: !62)
!65 = !DILocation(line: 53, column: 40, scope: !62)
!66 = !DILocation(line: 53, column: 45, scope: !62)
!67 = !DILocation(line: 53, column: 52, scope: !62)
!68 = !DILocation(line: 53, column: 56, scope: !62)
!69 = !DILocation(line: 53, column: 25, scope: !58)
!70 = !DILocation(line: 55, column: 25, scope: !71)
!71 = distinct !DILexicalBlock(scope: !62, file: !3, line: 54, column: 21)
!72 = !DILocation(line: 55, column: 30, scope: !71)
!73 = !DILocation(line: 55, column: 37, scope: !71)
!74 = !DILocation(line: 55, column: 41, scope: !71)
!75 = !DILocation(line: 56, column: 21, scope: !71)
!76 = !DILocation(line: 57, column: 17, scope: !58)
!77 = !DILocation(line: 60, column: 21, scope: !78)
!78 = distinct !DILexicalBlock(scope: !46, file: !3, line: 59, column: 17)
!79 = !DILocation(line: 62, column: 21, scope: !78)
!80 = !DILocation(line: 62, column: 26, scope: !78)
!81 = !DILocation(line: 62, column: 35, scope: !78)
!82 = !DILocation(line: 64, column: 13, scope: !47)
!83 = !DILocation(line: 66, column: 5, scope: !33)
!84 = !DILocation(line: 67, column: 8, scope: !85)
!85 = distinct !DILexicalBlock(scope: !13, file: !3, line: 67, column: 8)
!86 = !DILocation(line: 67, column: 18, scope: !85)
!87 = !DILocation(line: 67, column: 8, scope: !13)
!88 = !DILocalVariable(name: "i", scope: !89, file: !3, line: 70, type: !6)
!89 = distinct !DILexicalBlock(scope: !90, file: !3, line: 69, column: 9)
!90 = distinct !DILexicalBlock(scope: !85, file: !3, line: 68, column: 5)
!91 = !DILocation(line: 70, column: 17, scope: !89)
!92 = !DILocalVariable(name: "n", scope: !89, file: !3, line: 70, type: !6)
!93 = !DILocation(line: 70, column: 20, scope: !89)
!94 = !DILocalVariable(name: "intVariable", scope: !89, file: !3, line: 70, type: !6)
!95 = !DILocation(line: 70, column: 23, scope: !89)
!96 = !DILocation(line: 71, column: 24, scope: !97)
!97 = distinct !DILexicalBlock(scope: !89, file: !3, line: 71, column: 17)
!98 = !DILocation(line: 71, column: 17, scope: !97)
!99 = !DILocation(line: 71, column: 40, scope: !97)
!100 = !DILocation(line: 71, column: 17, scope: !89)
!101 = !DILocation(line: 74, column: 29, scope: !102)
!102 = distinct !DILexicalBlock(scope: !97, file: !3, line: 72, column: 13)
!103 = !DILocation(line: 75, column: 24, scope: !104)
!104 = distinct !DILexicalBlock(scope: !102, file: !3, line: 75, column: 17)
!105 = !DILocation(line: 75, column: 22, scope: !104)
!106 = !DILocation(line: 75, column: 29, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !3, line: 75, column: 17)
!108 = !DILocation(line: 75, column: 33, scope: !107)
!109 = !DILocation(line: 75, column: 31, scope: !107)
!110 = !DILocation(line: 75, column: 17, scope: !104)
!111 = !DILocation(line: 78, column: 32, scope: !112)
!112 = distinct !DILexicalBlock(scope: !107, file: !3, line: 76, column: 17)
!113 = !DILocation(line: 79, column: 17, scope: !112)
!114 = !DILocation(line: 75, column: 37, scope: !107)
!115 = !DILocation(line: 75, column: 17, scope: !107)
!116 = distinct !{!116, !110, !117, !118}
!117 = !DILocation(line: 79, column: 17, scope: !104)
!118 = !{!"llvm.loop.mustprogress"}
!119 = !DILocation(line: 80, column: 30, scope: !102)
!120 = !DILocation(line: 80, column: 17, scope: !102)
!121 = !DILocation(line: 81, column: 13, scope: !102)
!122 = !DILocation(line: 83, column: 5, scope: !90)
!123 = !DILocation(line: 84, column: 1, scope: !13)
!124 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 91, type: !14, scopeLine: 92, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!125 = !DILocalVariable(name: "data", scope: !124, file: !3, line: 93, type: !17)
!126 = !DILocation(line: 93, column: 12, scope: !124)
!127 = !DILocalVariable(name: "dataBuffer", scope: !124, file: !3, line: 94, type: !21)
!128 = !DILocation(line: 94, column: 10, scope: !124)
!129 = !DILocation(line: 95, column: 12, scope: !124)
!130 = !DILocation(line: 95, column: 10, scope: !124)
!131 = !DILocation(line: 96, column: 8, scope: !132)
!132 = distinct !DILexicalBlock(scope: !124, file: !3, line: 96, column: 8)
!133 = !DILocation(line: 96, column: 18, scope: !132)
!134 = !DILocation(line: 96, column: 8, scope: !124)
!135 = !DILocalVariable(name: "dataLen", scope: !136, file: !3, line: 100, type: !34)
!136 = distinct !DILexicalBlock(scope: !137, file: !3, line: 98, column: 9)
!137 = distinct !DILexicalBlock(scope: !132, file: !3, line: 97, column: 5)
!138 = !DILocation(line: 100, column: 20, scope: !136)
!139 = !DILocation(line: 100, column: 37, scope: !136)
!140 = !DILocation(line: 100, column: 30, scope: !136)
!141 = !DILocation(line: 102, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !136, file: !3, line: 102, column: 17)
!143 = !DILocation(line: 102, column: 20, scope: !142)
!144 = !DILocation(line: 102, column: 29, scope: !142)
!145 = !DILocation(line: 102, column: 17, scope: !136)
!146 = !DILocation(line: 105, column: 27, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !3, line: 105, column: 21)
!148 = distinct !DILexicalBlock(scope: !142, file: !3, line: 103, column: 13)
!149 = !DILocation(line: 105, column: 32, scope: !147)
!150 = !DILocation(line: 105, column: 31, scope: !147)
!151 = !DILocation(line: 105, column: 51, scope: !147)
!152 = !DILocation(line: 105, column: 50, scope: !147)
!153 = !DILocation(line: 105, column: 41, scope: !147)
!154 = !DILocation(line: 105, column: 61, scope: !147)
!155 = !DILocation(line: 105, column: 21, scope: !147)
!156 = !DILocation(line: 105, column: 68, scope: !147)
!157 = !DILocation(line: 105, column: 21, scope: !148)
!158 = !DILocation(line: 109, column: 38, scope: !159)
!159 = distinct !DILexicalBlock(scope: !147, file: !3, line: 106, column: 17)
!160 = !DILocation(line: 109, column: 31, scope: !159)
!161 = !DILocation(line: 109, column: 29, scope: !159)
!162 = !DILocation(line: 110, column: 25, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !3, line: 110, column: 25)
!164 = !DILocation(line: 110, column: 33, scope: !163)
!165 = !DILocation(line: 110, column: 37, scope: !163)
!166 = !DILocation(line: 110, column: 40, scope: !163)
!167 = !DILocation(line: 110, column: 45, scope: !163)
!168 = !DILocation(line: 110, column: 52, scope: !163)
!169 = !DILocation(line: 110, column: 56, scope: !163)
!170 = !DILocation(line: 110, column: 25, scope: !159)
!171 = !DILocation(line: 112, column: 25, scope: !172)
!172 = distinct !DILexicalBlock(scope: !163, file: !3, line: 111, column: 21)
!173 = !DILocation(line: 112, column: 30, scope: !172)
!174 = !DILocation(line: 112, column: 37, scope: !172)
!175 = !DILocation(line: 112, column: 41, scope: !172)
!176 = !DILocation(line: 113, column: 21, scope: !172)
!177 = !DILocation(line: 114, column: 17, scope: !159)
!178 = !DILocation(line: 117, column: 21, scope: !179)
!179 = distinct !DILexicalBlock(scope: !147, file: !3, line: 116, column: 17)
!180 = !DILocation(line: 119, column: 21, scope: !179)
!181 = !DILocation(line: 119, column: 26, scope: !179)
!182 = !DILocation(line: 119, column: 35, scope: !179)
!183 = !DILocation(line: 121, column: 13, scope: !148)
!184 = !DILocation(line: 123, column: 5, scope: !137)
!185 = !DILocation(line: 124, column: 8, scope: !186)
!186 = distinct !DILexicalBlock(scope: !124, file: !3, line: 124, column: 8)
!187 = !DILocation(line: 124, column: 18, scope: !186)
!188 = !DILocation(line: 124, column: 8, scope: !124)
!189 = !DILocation(line: 127, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !3, line: 125, column: 5)
!191 = !DILocation(line: 128, column: 5, scope: !190)
!192 = !DILocalVariable(name: "i", scope: !193, file: !3, line: 132, type: !6)
!193 = distinct !DILexicalBlock(scope: !194, file: !3, line: 131, column: 9)
!194 = distinct !DILexicalBlock(scope: !186, file: !3, line: 130, column: 5)
!195 = !DILocation(line: 132, column: 17, scope: !193)
!196 = !DILocalVariable(name: "n", scope: !193, file: !3, line: 132, type: !6)
!197 = !DILocation(line: 132, column: 20, scope: !193)
!198 = !DILocalVariable(name: "intVariable", scope: !193, file: !3, line: 132, type: !6)
!199 = !DILocation(line: 132, column: 23, scope: !193)
!200 = !DILocation(line: 133, column: 24, scope: !201)
!201 = distinct !DILexicalBlock(scope: !193, file: !3, line: 133, column: 17)
!202 = !DILocation(line: 133, column: 17, scope: !201)
!203 = !DILocation(line: 133, column: 40, scope: !201)
!204 = !DILocation(line: 133, column: 17, scope: !193)
!205 = !DILocation(line: 136, column: 21, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !3, line: 136, column: 21)
!207 = distinct !DILexicalBlock(scope: !201, file: !3, line: 134, column: 13)
!208 = !DILocation(line: 136, column: 23, scope: !206)
!209 = !DILocation(line: 136, column: 21, scope: !207)
!210 = !DILocation(line: 138, column: 33, scope: !211)
!211 = distinct !DILexicalBlock(scope: !206, file: !3, line: 137, column: 17)
!212 = !DILocation(line: 139, column: 28, scope: !213)
!213 = distinct !DILexicalBlock(scope: !211, file: !3, line: 139, column: 21)
!214 = !DILocation(line: 139, column: 26, scope: !213)
!215 = !DILocation(line: 139, column: 33, scope: !216)
!216 = distinct !DILexicalBlock(scope: !213, file: !3, line: 139, column: 21)
!217 = !DILocation(line: 139, column: 37, scope: !216)
!218 = !DILocation(line: 139, column: 35, scope: !216)
!219 = !DILocation(line: 139, column: 21, scope: !213)
!220 = !DILocation(line: 142, column: 36, scope: !221)
!221 = distinct !DILexicalBlock(scope: !216, file: !3, line: 140, column: 21)
!222 = !DILocation(line: 143, column: 21, scope: !221)
!223 = !DILocation(line: 139, column: 41, scope: !216)
!224 = !DILocation(line: 139, column: 21, scope: !216)
!225 = distinct !{!225, !219, !226, !118}
!226 = !DILocation(line: 143, column: 21, scope: !213)
!227 = !DILocation(line: 144, column: 34, scope: !211)
!228 = !DILocation(line: 144, column: 21, scope: !211)
!229 = !DILocation(line: 145, column: 17, scope: !211)
!230 = !DILocation(line: 146, column: 13, scope: !207)
!231 = !DILocation(line: 149, column: 1, scope: !124)
!232 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 152, type: !14, scopeLine: 153, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!233 = !DILocalVariable(name: "data", scope: !232, file: !3, line: 154, type: !17)
!234 = !DILocation(line: 154, column: 12, scope: !232)
!235 = !DILocalVariable(name: "dataBuffer", scope: !232, file: !3, line: 155, type: !21)
!236 = !DILocation(line: 155, column: 10, scope: !232)
!237 = !DILocation(line: 156, column: 12, scope: !232)
!238 = !DILocation(line: 156, column: 10, scope: !232)
!239 = !DILocation(line: 157, column: 8, scope: !240)
!240 = distinct !DILexicalBlock(scope: !232, file: !3, line: 157, column: 8)
!241 = !DILocation(line: 157, column: 18, scope: !240)
!242 = !DILocation(line: 157, column: 8, scope: !232)
!243 = !DILocalVariable(name: "dataLen", scope: !244, file: !3, line: 161, type: !34)
!244 = distinct !DILexicalBlock(scope: !245, file: !3, line: 159, column: 9)
!245 = distinct !DILexicalBlock(scope: !240, file: !3, line: 158, column: 5)
!246 = !DILocation(line: 161, column: 20, scope: !244)
!247 = !DILocation(line: 161, column: 37, scope: !244)
!248 = !DILocation(line: 161, column: 30, scope: !244)
!249 = !DILocation(line: 163, column: 21, scope: !250)
!250 = distinct !DILexicalBlock(scope: !244, file: !3, line: 163, column: 17)
!251 = !DILocation(line: 163, column: 20, scope: !250)
!252 = !DILocation(line: 163, column: 29, scope: !250)
!253 = !DILocation(line: 163, column: 17, scope: !244)
!254 = !DILocation(line: 166, column: 27, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 166, column: 21)
!256 = distinct !DILexicalBlock(scope: !250, file: !3, line: 164, column: 13)
!257 = !DILocation(line: 166, column: 32, scope: !255)
!258 = !DILocation(line: 166, column: 31, scope: !255)
!259 = !DILocation(line: 166, column: 51, scope: !255)
!260 = !DILocation(line: 166, column: 50, scope: !255)
!261 = !DILocation(line: 166, column: 41, scope: !255)
!262 = !DILocation(line: 166, column: 61, scope: !255)
!263 = !DILocation(line: 166, column: 21, scope: !255)
!264 = !DILocation(line: 166, column: 68, scope: !255)
!265 = !DILocation(line: 166, column: 21, scope: !256)
!266 = !DILocation(line: 170, column: 38, scope: !267)
!267 = distinct !DILexicalBlock(scope: !255, file: !3, line: 167, column: 17)
!268 = !DILocation(line: 170, column: 31, scope: !267)
!269 = !DILocation(line: 170, column: 29, scope: !267)
!270 = !DILocation(line: 171, column: 25, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !3, line: 171, column: 25)
!272 = !DILocation(line: 171, column: 33, scope: !271)
!273 = !DILocation(line: 171, column: 37, scope: !271)
!274 = !DILocation(line: 171, column: 40, scope: !271)
!275 = !DILocation(line: 171, column: 45, scope: !271)
!276 = !DILocation(line: 171, column: 52, scope: !271)
!277 = !DILocation(line: 171, column: 56, scope: !271)
!278 = !DILocation(line: 171, column: 25, scope: !267)
!279 = !DILocation(line: 173, column: 25, scope: !280)
!280 = distinct !DILexicalBlock(scope: !271, file: !3, line: 172, column: 21)
!281 = !DILocation(line: 173, column: 30, scope: !280)
!282 = !DILocation(line: 173, column: 37, scope: !280)
!283 = !DILocation(line: 173, column: 41, scope: !280)
!284 = !DILocation(line: 174, column: 21, scope: !280)
!285 = !DILocation(line: 175, column: 17, scope: !267)
!286 = !DILocation(line: 178, column: 21, scope: !287)
!287 = distinct !DILexicalBlock(scope: !255, file: !3, line: 177, column: 17)
!288 = !DILocation(line: 180, column: 21, scope: !287)
!289 = !DILocation(line: 180, column: 26, scope: !287)
!290 = !DILocation(line: 180, column: 35, scope: !287)
!291 = !DILocation(line: 182, column: 13, scope: !256)
!292 = !DILocation(line: 184, column: 5, scope: !245)
!293 = !DILocation(line: 185, column: 8, scope: !294)
!294 = distinct !DILexicalBlock(scope: !232, file: !3, line: 185, column: 8)
!295 = !DILocation(line: 185, column: 18, scope: !294)
!296 = !DILocation(line: 185, column: 8, scope: !232)
!297 = !DILocalVariable(name: "i", scope: !298, file: !3, line: 188, type: !6)
!298 = distinct !DILexicalBlock(scope: !299, file: !3, line: 187, column: 9)
!299 = distinct !DILexicalBlock(scope: !294, file: !3, line: 186, column: 5)
!300 = !DILocation(line: 188, column: 17, scope: !298)
!301 = !DILocalVariable(name: "n", scope: !298, file: !3, line: 188, type: !6)
!302 = !DILocation(line: 188, column: 20, scope: !298)
!303 = !DILocalVariable(name: "intVariable", scope: !298, file: !3, line: 188, type: !6)
!304 = !DILocation(line: 188, column: 23, scope: !298)
!305 = !DILocation(line: 189, column: 24, scope: !306)
!306 = distinct !DILexicalBlock(scope: !298, file: !3, line: 189, column: 17)
!307 = !DILocation(line: 189, column: 17, scope: !306)
!308 = !DILocation(line: 189, column: 40, scope: !306)
!309 = !DILocation(line: 189, column: 17, scope: !298)
!310 = !DILocation(line: 192, column: 21, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !3, line: 192, column: 21)
!312 = distinct !DILexicalBlock(scope: !306, file: !3, line: 190, column: 13)
!313 = !DILocation(line: 192, column: 23, scope: !311)
!314 = !DILocation(line: 192, column: 21, scope: !312)
!315 = !DILocation(line: 194, column: 33, scope: !316)
!316 = distinct !DILexicalBlock(scope: !311, file: !3, line: 193, column: 17)
!317 = !DILocation(line: 195, column: 28, scope: !318)
!318 = distinct !DILexicalBlock(scope: !316, file: !3, line: 195, column: 21)
!319 = !DILocation(line: 195, column: 26, scope: !318)
!320 = !DILocation(line: 195, column: 33, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !3, line: 195, column: 21)
!322 = !DILocation(line: 195, column: 37, scope: !321)
!323 = !DILocation(line: 195, column: 35, scope: !321)
!324 = !DILocation(line: 195, column: 21, scope: !318)
!325 = !DILocation(line: 198, column: 36, scope: !326)
!326 = distinct !DILexicalBlock(scope: !321, file: !3, line: 196, column: 21)
!327 = !DILocation(line: 199, column: 21, scope: !326)
!328 = !DILocation(line: 195, column: 41, scope: !321)
!329 = !DILocation(line: 195, column: 21, scope: !321)
!330 = distinct !{!330, !324, !331, !118}
!331 = !DILocation(line: 199, column: 21, scope: !318)
!332 = !DILocation(line: 200, column: 34, scope: !316)
!333 = !DILocation(line: 200, column: 21, scope: !316)
!334 = !DILocation(line: 201, column: 17, scope: !316)
!335 = !DILocation(line: 202, column: 13, scope: !312)
!336 = !DILocation(line: 204, column: 5, scope: !299)
!337 = !DILocation(line: 205, column: 1, scope: !232)
!338 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 208, type: !14, scopeLine: 209, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!339 = !DILocalVariable(name: "data", scope: !338, file: !3, line: 210, type: !17)
!340 = !DILocation(line: 210, column: 12, scope: !338)
!341 = !DILocalVariable(name: "dataBuffer", scope: !338, file: !3, line: 211, type: !21)
!342 = !DILocation(line: 211, column: 10, scope: !338)
!343 = !DILocation(line: 212, column: 12, scope: !338)
!344 = !DILocation(line: 212, column: 10, scope: !338)
!345 = !DILocation(line: 213, column: 8, scope: !346)
!346 = distinct !DILexicalBlock(scope: !338, file: !3, line: 213, column: 8)
!347 = !DILocation(line: 213, column: 18, scope: !346)
!348 = !DILocation(line: 213, column: 8, scope: !338)
!349 = !DILocation(line: 216, column: 9, scope: !350)
!350 = distinct !DILexicalBlock(scope: !346, file: !3, line: 214, column: 5)
!351 = !DILocation(line: 217, column: 5, scope: !350)
!352 = !DILocation(line: 221, column: 16, scope: !353)
!353 = distinct !DILexicalBlock(scope: !346, file: !3, line: 219, column: 5)
!354 = !DILocation(line: 221, column: 9, scope: !353)
!355 = !DILocation(line: 223, column: 8, scope: !356)
!356 = distinct !DILexicalBlock(scope: !338, file: !3, line: 223, column: 8)
!357 = !DILocation(line: 223, column: 18, scope: !356)
!358 = !DILocation(line: 223, column: 8, scope: !338)
!359 = !DILocalVariable(name: "i", scope: !360, file: !3, line: 226, type: !6)
!360 = distinct !DILexicalBlock(scope: !361, file: !3, line: 225, column: 9)
!361 = distinct !DILexicalBlock(scope: !356, file: !3, line: 224, column: 5)
!362 = !DILocation(line: 226, column: 17, scope: !360)
!363 = !DILocalVariable(name: "n", scope: !360, file: !3, line: 226, type: !6)
!364 = !DILocation(line: 226, column: 20, scope: !360)
!365 = !DILocalVariable(name: "intVariable", scope: !360, file: !3, line: 226, type: !6)
!366 = !DILocation(line: 226, column: 23, scope: !360)
!367 = !DILocation(line: 227, column: 24, scope: !368)
!368 = distinct !DILexicalBlock(scope: !360, file: !3, line: 227, column: 17)
!369 = !DILocation(line: 227, column: 17, scope: !368)
!370 = !DILocation(line: 227, column: 40, scope: !368)
!371 = !DILocation(line: 227, column: 17, scope: !360)
!372 = !DILocation(line: 230, column: 29, scope: !373)
!373 = distinct !DILexicalBlock(scope: !368, file: !3, line: 228, column: 13)
!374 = !DILocation(line: 231, column: 24, scope: !375)
!375 = distinct !DILexicalBlock(scope: !373, file: !3, line: 231, column: 17)
!376 = !DILocation(line: 231, column: 22, scope: !375)
!377 = !DILocation(line: 231, column: 29, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !3, line: 231, column: 17)
!379 = !DILocation(line: 231, column: 33, scope: !378)
!380 = !DILocation(line: 231, column: 31, scope: !378)
!381 = !DILocation(line: 231, column: 17, scope: !375)
!382 = !DILocation(line: 234, column: 32, scope: !383)
!383 = distinct !DILexicalBlock(scope: !378, file: !3, line: 232, column: 17)
!384 = !DILocation(line: 235, column: 17, scope: !383)
!385 = !DILocation(line: 231, column: 37, scope: !378)
!386 = !DILocation(line: 231, column: 17, scope: !378)
!387 = distinct !{!387, !381, !388, !118}
!388 = !DILocation(line: 235, column: 17, scope: !375)
!389 = !DILocation(line: 236, column: 30, scope: !373)
!390 = !DILocation(line: 236, column: 17, scope: !373)
!391 = !DILocation(line: 237, column: 13, scope: !373)
!392 = !DILocation(line: 239, column: 5, scope: !361)
!393 = !DILocation(line: 240, column: 1, scope: !338)
!394 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 243, type: !14, scopeLine: 244, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!395 = !DILocalVariable(name: "data", scope: !394, file: !3, line: 245, type: !17)
!396 = !DILocation(line: 245, column: 12, scope: !394)
!397 = !DILocalVariable(name: "dataBuffer", scope: !394, file: !3, line: 246, type: !21)
!398 = !DILocation(line: 246, column: 10, scope: !394)
!399 = !DILocation(line: 247, column: 12, scope: !394)
!400 = !DILocation(line: 247, column: 10, scope: !394)
!401 = !DILocation(line: 248, column: 8, scope: !402)
!402 = distinct !DILexicalBlock(scope: !394, file: !3, line: 248, column: 8)
!403 = !DILocation(line: 248, column: 18, scope: !402)
!404 = !DILocation(line: 248, column: 8, scope: !394)
!405 = !DILocation(line: 251, column: 16, scope: !406)
!406 = distinct !DILexicalBlock(scope: !402, file: !3, line: 249, column: 5)
!407 = !DILocation(line: 251, column: 9, scope: !406)
!408 = !DILocation(line: 252, column: 5, scope: !406)
!409 = !DILocation(line: 253, column: 8, scope: !410)
!410 = distinct !DILexicalBlock(scope: !394, file: !3, line: 253, column: 8)
!411 = !DILocation(line: 253, column: 18, scope: !410)
!412 = !DILocation(line: 253, column: 8, scope: !394)
!413 = !DILocalVariable(name: "i", scope: !414, file: !3, line: 256, type: !6)
!414 = distinct !DILexicalBlock(scope: !415, file: !3, line: 255, column: 9)
!415 = distinct !DILexicalBlock(scope: !410, file: !3, line: 254, column: 5)
!416 = !DILocation(line: 256, column: 17, scope: !414)
!417 = !DILocalVariable(name: "n", scope: !414, file: !3, line: 256, type: !6)
!418 = !DILocation(line: 256, column: 20, scope: !414)
!419 = !DILocalVariable(name: "intVariable", scope: !414, file: !3, line: 256, type: !6)
!420 = !DILocation(line: 256, column: 23, scope: !414)
!421 = !DILocation(line: 257, column: 24, scope: !422)
!422 = distinct !DILexicalBlock(scope: !414, file: !3, line: 257, column: 17)
!423 = !DILocation(line: 257, column: 17, scope: !422)
!424 = !DILocation(line: 257, column: 40, scope: !422)
!425 = !DILocation(line: 257, column: 17, scope: !414)
!426 = !DILocation(line: 260, column: 29, scope: !427)
!427 = distinct !DILexicalBlock(scope: !422, file: !3, line: 258, column: 13)
!428 = !DILocation(line: 261, column: 24, scope: !429)
!429 = distinct !DILexicalBlock(scope: !427, file: !3, line: 261, column: 17)
!430 = !DILocation(line: 261, column: 22, scope: !429)
!431 = !DILocation(line: 261, column: 29, scope: !432)
!432 = distinct !DILexicalBlock(scope: !429, file: !3, line: 261, column: 17)
!433 = !DILocation(line: 261, column: 33, scope: !432)
!434 = !DILocation(line: 261, column: 31, scope: !432)
!435 = !DILocation(line: 261, column: 17, scope: !429)
!436 = !DILocation(line: 264, column: 32, scope: !437)
!437 = distinct !DILexicalBlock(scope: !432, file: !3, line: 262, column: 17)
!438 = !DILocation(line: 265, column: 17, scope: !437)
!439 = !DILocation(line: 261, column: 37, scope: !432)
!440 = !DILocation(line: 261, column: 17, scope: !432)
!441 = distinct !{!441, !435, !442, !118}
!442 = !DILocation(line: 265, column: 17, scope: !429)
!443 = !DILocation(line: 266, column: 30, scope: !427)
!444 = !DILocation(line: 266, column: 17, scope: !427)
!445 = !DILocation(line: 267, column: 13, scope: !427)
!446 = !DILocation(line: 269, column: 5, scope: !415)
!447 = !DILocation(line: 270, column: 1, scope: !394)
!448 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_07_good", scope: !3, file: !3, line: 272, type: !14, scopeLine: 273, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!449 = !DILocation(line: 274, column: 5, scope: !448)
!450 = !DILocation(line: 275, column: 5, scope: !448)
!451 = !DILocation(line: 276, column: 5, scope: !448)
!452 = !DILocation(line: 277, column: 5, scope: !448)
!453 = !DILocation(line: 278, column: 1, scope: !448)
