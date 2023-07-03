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
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_31_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %dataCopy = alloca i8*, align 8
  %data19 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !57, metadata !DIExpression()), !dbg !61
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !61
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !62
  store i8* %arraydecay, i8** %data, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !64, metadata !DIExpression()), !dbg !69
  %1 = load i8*, i8** %data, align 8, !dbg !70
  %call = call i64 @strlen(i8* %1) #7, !dbg !71
  store i64 %call, i64* %dataLen, align 8, !dbg !69
  %2 = load i64, i64* %dataLen, align 8, !dbg !72
  %sub = sub i64 100, %2, !dbg !74
  %cmp = icmp ugt i64 %sub, 1, !dbg !75
  br i1 %cmp, label %if.then, label %if.end18, !dbg !76

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !77
  %4 = load i64, i64* %dataLen, align 8, !dbg !80
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !81
  %5 = load i64, i64* %dataLen, align 8, !dbg !82
  %sub1 = sub i64 100, %5, !dbg !83
  %conv = trunc i64 %sub1 to i32, !dbg !84
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !85
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !86
  %cmp3 = icmp ne i8* %call2, null, !dbg !87
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !88

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !89
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !91
  store i64 %call6, i64* %dataLen, align 8, !dbg !92
  %8 = load i64, i64* %dataLen, align 8, !dbg !93
  %cmp7 = icmp ugt i64 %8, 0, !dbg !95
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !96

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !97
  %10 = load i64, i64* %dataLen, align 8, !dbg !98
  %sub9 = sub i64 %10, 1, !dbg !99
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !97
  %11 = load i8, i8* %arrayidx, align 1, !dbg !97
  %conv10 = sext i8 %11 to i32, !dbg !97
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !100
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !101

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !102
  %13 = load i64, i64* %dataLen, align 8, !dbg !104
  %sub14 = sub i64 %13, 1, !dbg !105
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !102
  store i8 0, i8* %arrayidx15, align 1, !dbg !106
  br label %if.end, !dbg !107

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !108

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !109
  %14 = load i8*, i8** %data, align 8, !dbg !111
  %15 = load i64, i64* %dataLen, align 8, !dbg !112
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !111
  store i8 0, i8* %arrayidx16, align 1, !dbg !113
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !114

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !115, metadata !DIExpression()), !dbg !117
  %16 = load i8*, i8** %data, align 8, !dbg !118
  store i8* %16, i8** %dataCopy, align 8, !dbg !117
  call void @llvm.dbg.declare(metadata i8** %data19, metadata !119, metadata !DIExpression()), !dbg !120
  %17 = load i8*, i8** %dataCopy, align 8, !dbg !121
  store i8* %17, i8** %data19, align 8, !dbg !120
  call void @llvm.dbg.declare(metadata i32* %i, metadata !122, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata i32* %n, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !127, metadata !DIExpression()), !dbg !128
  %18 = load i8*, i8** %data19, align 8, !dbg !129
  %call20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !131
  %cmp21 = icmp eq i32 %call20, 1, !dbg !132
  br i1 %cmp21, label %if.then23, label %if.end27, !dbg !133

if.then23:                                        ; preds = %if.end18
  store i32 0, i32* %intVariable, align 4, !dbg !134
  store i32 0, i32* %i, align 4, !dbg !136
  br label %for.cond, !dbg !138

for.cond:                                         ; preds = %for.inc, %if.then23
  %19 = load i32, i32* %i, align 4, !dbg !139
  %20 = load i32, i32* %n, align 4, !dbg !141
  %cmp24 = icmp slt i32 %19, %20, !dbg !142
  br i1 %cmp24, label %for.body, label %for.end, !dbg !143

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !144
  %inc = add nsw i32 %21, 1, !dbg !144
  store i32 %inc, i32* %intVariable, align 4, !dbg !144
  br label %for.inc, !dbg !146

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !dbg !147
  %inc26 = add nsw i32 %22, 1, !dbg !147
  store i32 %inc26, i32* %i, align 4, !dbg !147
  br label %for.cond, !dbg !148, !llvm.loop !149

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %intVariable, align 4, !dbg !152
  call void @printIntLine(i32 %23), !dbg !153
  br label %if.end27, !dbg !154

if.end27:                                         ; preds = %for.end, %if.end18
  ret void, !dbg !155
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !156 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataCopy = alloca i8*, align 8
  %data1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !159, metadata !DIExpression()), !dbg !160
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !160
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !160
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !161
  store i8* %arraydecay, i8** %data, align 8, !dbg !162
  %1 = load i8*, i8** %data, align 8, !dbg !163
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !164
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !165, metadata !DIExpression()), !dbg !167
  %2 = load i8*, i8** %data, align 8, !dbg !168
  store i8* %2, i8** %dataCopy, align 8, !dbg !167
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !169, metadata !DIExpression()), !dbg !170
  %3 = load i8*, i8** %dataCopy, align 8, !dbg !171
  store i8* %3, i8** %data1, align 8, !dbg !170
  call void @llvm.dbg.declare(metadata i32* %i, metadata !172, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata i32* %n, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !177, metadata !DIExpression()), !dbg !178
  %4 = load i8*, i8** %data1, align 8, !dbg !179
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !181
  %cmp = icmp eq i32 %call2, 1, !dbg !182
  br i1 %cmp, label %if.then, label %if.end, !dbg !183

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !184
  store i32 0, i32* %i, align 4, !dbg !186
  br label %for.cond, !dbg !188

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !189
  %6 = load i32, i32* %n, align 4, !dbg !191
  %cmp3 = icmp slt i32 %5, %6, !dbg !192
  br i1 %cmp3, label %for.body, label %for.end, !dbg !193

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !194
  %inc = add nsw i32 %7, 1, !dbg !194
  store i32 %inc, i32* %intVariable, align 4, !dbg !194
  br label %for.inc, !dbg !196

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !197
  %inc4 = add nsw i32 %8, 1, !dbg !197
  store i32 %inc4, i32* %i, align 4, !dbg !197
  br label %for.cond, !dbg !198, !llvm.loop !199

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !201
  call void @printIntLine(i32 %9), !dbg !202
  br label %if.end, !dbg !203

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !204
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !205 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %dataCopy = alloca i8*, align 8
  %data19 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !208, metadata !DIExpression()), !dbg !209
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !209
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !209
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !210
  store i8* %arraydecay, i8** %data, align 8, !dbg !211
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !212, metadata !DIExpression()), !dbg !214
  %1 = load i8*, i8** %data, align 8, !dbg !215
  %call = call i64 @strlen(i8* %1) #7, !dbg !216
  store i64 %call, i64* %dataLen, align 8, !dbg !214
  %2 = load i64, i64* %dataLen, align 8, !dbg !217
  %sub = sub i64 100, %2, !dbg !219
  %cmp = icmp ugt i64 %sub, 1, !dbg !220
  br i1 %cmp, label %if.then, label %if.end18, !dbg !221

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !222
  %4 = load i64, i64* %dataLen, align 8, !dbg !225
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !226
  %5 = load i64, i64* %dataLen, align 8, !dbg !227
  %sub1 = sub i64 100, %5, !dbg !228
  %conv = trunc i64 %sub1 to i32, !dbg !229
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !230
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !231
  %cmp3 = icmp ne i8* %call2, null, !dbg !232
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !233

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !234
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !236
  store i64 %call6, i64* %dataLen, align 8, !dbg !237
  %8 = load i64, i64* %dataLen, align 8, !dbg !238
  %cmp7 = icmp ugt i64 %8, 0, !dbg !240
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !241

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !242
  %10 = load i64, i64* %dataLen, align 8, !dbg !243
  %sub9 = sub i64 %10, 1, !dbg !244
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !242
  %11 = load i8, i8* %arrayidx, align 1, !dbg !242
  %conv10 = sext i8 %11 to i32, !dbg !242
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !245
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !246

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !247
  %13 = load i64, i64* %dataLen, align 8, !dbg !249
  %sub14 = sub i64 %13, 1, !dbg !250
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !247
  store i8 0, i8* %arrayidx15, align 1, !dbg !251
  br label %if.end, !dbg !252

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !253

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !254
  %14 = load i8*, i8** %data, align 8, !dbg !256
  %15 = load i64, i64* %dataLen, align 8, !dbg !257
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !256
  store i8 0, i8* %arrayidx16, align 1, !dbg !258
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !259

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !260, metadata !DIExpression()), !dbg !262
  %16 = load i8*, i8** %data, align 8, !dbg !263
  store i8* %16, i8** %dataCopy, align 8, !dbg !262
  call void @llvm.dbg.declare(metadata i8** %data19, metadata !264, metadata !DIExpression()), !dbg !265
  %17 = load i8*, i8** %dataCopy, align 8, !dbg !266
  store i8* %17, i8** %data19, align 8, !dbg !265
  call void @llvm.dbg.declare(metadata i32* %i, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata i32* %n, metadata !270, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !272, metadata !DIExpression()), !dbg !273
  %18 = load i8*, i8** %data19, align 8, !dbg !274
  %call20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !276
  %cmp21 = icmp eq i32 %call20, 1, !dbg !277
  br i1 %cmp21, label %if.then23, label %if.end31, !dbg !278

if.then23:                                        ; preds = %if.end18
  %19 = load i32, i32* %n, align 4, !dbg !279
  %cmp24 = icmp slt i32 %19, 10000, !dbg !282
  br i1 %cmp24, label %if.then26, label %if.end30, !dbg !283

if.then26:                                        ; preds = %if.then23
  store i32 0, i32* %intVariable, align 4, !dbg !284
  store i32 0, i32* %i, align 4, !dbg !286
  br label %for.cond, !dbg !288

for.cond:                                         ; preds = %for.inc, %if.then26
  %20 = load i32, i32* %i, align 4, !dbg !289
  %21 = load i32, i32* %n, align 4, !dbg !291
  %cmp27 = icmp slt i32 %20, %21, !dbg !292
  br i1 %cmp27, label %for.body, label %for.end, !dbg !293

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !294
  %inc = add nsw i32 %22, 1, !dbg !294
  store i32 %inc, i32* %intVariable, align 4, !dbg !294
  br label %for.inc, !dbg !296

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !297
  %inc29 = add nsw i32 %23, 1, !dbg !297
  store i32 %inc29, i32* %i, align 4, !dbg !297
  br label %for.cond, !dbg !298, !llvm.loop !299

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %intVariable, align 4, !dbg !301
  call void @printIntLine(i32 %24), !dbg !302
  br label %if.end30, !dbg !303

if.end30:                                         ; preds = %for.end, %if.then23
  br label %if.end31, !dbg !304

if.end31:                                         ; preds = %if.end30, %if.end18
  ret void, !dbg !305
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_31_good() #0 !dbg !306 {
entry:
  call void @goodG2B(), !dbg !307
  call void @goodB2G(), !dbg !308
  ret void, !dbg !309
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !310 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !313, metadata !DIExpression()), !dbg !314
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !315
  %0 = load i8*, i8** %line.addr, align 8, !dbg !316
  %cmp = icmp ne i8* %0, null, !dbg !318
  br i1 %cmp, label %if.then, label %if.end, !dbg !319

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !320
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !322
  br label %if.end, !dbg !323

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !324
  ret void, !dbg !325
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !326 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !327, metadata !DIExpression()), !dbg !328
  %0 = load i8*, i8** %line.addr, align 8, !dbg !329
  %cmp = icmp ne i8* %0, null, !dbg !331
  br i1 %cmp, label %if.then, label %if.end, !dbg !332

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !333
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !335
  br label %if.end, !dbg !336

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !337
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !338 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !343, metadata !DIExpression()), !dbg !344
  %0 = load i32*, i32** %line.addr, align 8, !dbg !345
  %cmp = icmp ne i32* %0, null, !dbg !347
  br i1 %cmp, label %if.then, label %if.end, !dbg !348

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !349
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !351
  br label %if.end, !dbg !352

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !353
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !354 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !357, metadata !DIExpression()), !dbg !358
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !359
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !360
  ret void, !dbg !361
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !362 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !366, metadata !DIExpression()), !dbg !367
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !368
  %conv = sext i16 %0 to i32, !dbg !368
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !369
  ret void, !dbg !370
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !371 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !375, metadata !DIExpression()), !dbg !376
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !377
  %conv = fpext float %0 to double, !dbg !377
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !378
  ret void, !dbg !379
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !380 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !384, metadata !DIExpression()), !dbg !385
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !386
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !387
  ret void, !dbg !388
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !389 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !396, metadata !DIExpression()), !dbg !397
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !398
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !399
  ret void, !dbg !400
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !401 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !404, metadata !DIExpression()), !dbg !405
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !406
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !407
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !409 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !412, metadata !DIExpression()), !dbg !413
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !414
  %conv = sext i8 %0 to i32, !dbg !414
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !415
  ret void, !dbg !416
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !417 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !420, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !422, metadata !DIExpression()), !dbg !426
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !427
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !428
  store i32 %0, i32* %arrayidx, align 4, !dbg !429
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !430
  store i32 0, i32* %arrayidx1, align 4, !dbg !431
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !432
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !433
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !435 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !438, metadata !DIExpression()), !dbg !439
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !440
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !441
  ret void, !dbg !442
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !443 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !446, metadata !DIExpression()), !dbg !447
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !448
  %conv = zext i8 %0 to i32, !dbg !448
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !449
  ret void, !dbg !450
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !451 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !455, metadata !DIExpression()), !dbg !456
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !457
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !458
  ret void, !dbg !459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !460 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !470, metadata !DIExpression()), !dbg !471
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !472
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !473
  %1 = load i32, i32* %intOne, align 4, !dbg !473
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !474
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !475
  %3 = load i32, i32* %intTwo, align 4, !dbg !475
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !476
  ret void, !dbg !477
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !478 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !482, metadata !DIExpression()), !dbg !483
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !484, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.declare(metadata i64* %i, metadata !486, metadata !DIExpression()), !dbg !487
  store i64 0, i64* %i, align 8, !dbg !488
  br label %for.cond, !dbg !490

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !491
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !493
  %cmp = icmp ult i64 %0, %1, !dbg !494
  br i1 %cmp, label %for.body, label %for.end, !dbg !495

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !496
  %3 = load i64, i64* %i, align 8, !dbg !498
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !496
  %4 = load i8, i8* %arrayidx, align 1, !dbg !496
  %conv = zext i8 %4 to i32, !dbg !496
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !499
  br label %for.inc, !dbg !500

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !501
  %inc = add i64 %5, 1, !dbg !501
  store i64 %inc, i64* %i, align 8, !dbg !501
  br label %for.cond, !dbg !502, !llvm.loop !503

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !505
  ret void, !dbg !506
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !507 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !510, metadata !DIExpression()), !dbg !511
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !512, metadata !DIExpression()), !dbg !513
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !514, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !516, metadata !DIExpression()), !dbg !517
  store i64 0, i64* %numWritten, align 8, !dbg !517
  br label %while.cond, !dbg !518

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !519
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !520
  %cmp = icmp ult i64 %0, %1, !dbg !521
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !522

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !523
  %2 = load i16*, i16** %call, align 8, !dbg !523
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !523
  %4 = load i64, i64* %numWritten, align 8, !dbg !523
  %mul = mul i64 2, %4, !dbg !523
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !523
  %5 = load i8, i8* %arrayidx, align 1, !dbg !523
  %conv = sext i8 %5 to i32, !dbg !523
  %idxprom = sext i32 %conv to i64, !dbg !523
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !523
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !523
  %conv2 = zext i16 %6 to i32, !dbg !523
  %and = and i32 %conv2, 4096, !dbg !523
  %tobool = icmp ne i32 %and, 0, !dbg !523
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !524

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !525
  %7 = load i16*, i16** %call3, align 8, !dbg !525
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !525
  %9 = load i64, i64* %numWritten, align 8, !dbg !525
  %mul4 = mul i64 2, %9, !dbg !525
  %add = add i64 %mul4, 1, !dbg !525
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !525
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !525
  %conv6 = sext i8 %10 to i32, !dbg !525
  %idxprom7 = sext i32 %conv6 to i64, !dbg !525
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !525
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !525
  %conv9 = zext i16 %11 to i32, !dbg !525
  %and10 = and i32 %conv9, 4096, !dbg !525
  %tobool11 = icmp ne i32 %and10, 0, !dbg !524
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !526
  br i1 %12, label %while.body, label %while.end, !dbg !518

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !527, metadata !DIExpression()), !dbg !529
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !530
  %14 = load i64, i64* %numWritten, align 8, !dbg !531
  %mul12 = mul i64 2, %14, !dbg !532
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !530
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !533
  %15 = load i32, i32* %byte, align 4, !dbg !534
  %conv15 = trunc i32 %15 to i8, !dbg !535
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !536
  %17 = load i64, i64* %numWritten, align 8, !dbg !537
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !536
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !538
  %18 = load i64, i64* %numWritten, align 8, !dbg !539
  %inc = add i64 %18, 1, !dbg !539
  store i64 %inc, i64* %numWritten, align 8, !dbg !539
  br label %while.cond, !dbg !518, !llvm.loop !540

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !542
  ret i64 %19, !dbg !543
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !544 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !547, metadata !DIExpression()), !dbg !548
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !549, metadata !DIExpression()), !dbg !550
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !551, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !553, metadata !DIExpression()), !dbg !554
  store i64 0, i64* %numWritten, align 8, !dbg !554
  br label %while.cond, !dbg !555

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !556
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !557
  %cmp = icmp ult i64 %0, %1, !dbg !558
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !559

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !560
  %3 = load i64, i64* %numWritten, align 8, !dbg !561
  %mul = mul i64 2, %3, !dbg !562
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !560
  %4 = load i32, i32* %arrayidx, align 4, !dbg !560
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !563
  %tobool = icmp ne i32 %call, 0, !dbg !563
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !564

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !565
  %6 = load i64, i64* %numWritten, align 8, !dbg !566
  %mul1 = mul i64 2, %6, !dbg !567
  %add = add i64 %mul1, 1, !dbg !568
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !565
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !565
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !569
  %tobool4 = icmp ne i32 %call3, 0, !dbg !564
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !570
  br i1 %8, label %while.body, label %while.end, !dbg !555

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !571, metadata !DIExpression()), !dbg !573
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !574
  %10 = load i64, i64* %numWritten, align 8, !dbg !575
  %mul5 = mul i64 2, %10, !dbg !576
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !574
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !577
  %11 = load i32, i32* %byte, align 4, !dbg !578
  %conv = trunc i32 %11 to i8, !dbg !579
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !580
  %13 = load i64, i64* %numWritten, align 8, !dbg !581
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !580
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !582
  %14 = load i64, i64* %numWritten, align 8, !dbg !583
  %inc = add i64 %14, 1, !dbg !583
  store i64 %inc, i64* %numWritten, align 8, !dbg !583
  br label %while.cond, !dbg !555, !llvm.loop !584

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !586
  ret i64 %15, !dbg !587
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !588 {
entry:
  ret i32 1, !dbg !591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !592 {
entry:
  ret i32 0, !dbg !593
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !594 {
entry:
  %call = call i32 @rand() #8, !dbg !595
  %rem = srem i32 %call, 2, !dbg !596
  ret i32 %rem, !dbg !597
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !598 {
entry:
  ret void, !dbg !599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !600 {
entry:
  ret void, !dbg !601
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !602 {
entry:
  ret void, !dbg !603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !604 {
entry:
  ret void, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !606 {
entry:
  ret void, !dbg !607
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !608 {
entry:
  ret void, !dbg !609
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !610 {
entry:
  ret void, !dbg !611
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !612 {
entry:
  ret void, !dbg !613
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !614 {
entry:
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !616 {
entry:
  ret void, !dbg !617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !618 {
entry:
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !620 {
entry:
  ret void, !dbg !621
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !622 {
entry:
  ret void, !dbg !623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !624 {
entry:
  ret void, !dbg !625
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !626 {
entry:
  ret void, !dbg !627
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !628 {
entry:
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !630 {
entry:
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !632 {
entry:
  ret void, !dbg !633
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

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_998/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_31.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_998/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_31_bad", scope: !45, file: !45, line: 29, type: !53, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 31, type: !42)
!56 = !DILocation(line: 31, column: 12, scope: !52)
!57 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 32, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 100)
!61 = !DILocation(line: 32, column: 10, scope: !52)
!62 = !DILocation(line: 33, column: 12, scope: !52)
!63 = !DILocation(line: 33, column: 10, scope: !52)
!64 = !DILocalVariable(name: "dataLen", scope: !65, file: !45, line: 36, type: !66)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 34, column: 5)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 46, baseType: !68)
!67 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!68 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!69 = !DILocation(line: 36, column: 16, scope: !65)
!70 = !DILocation(line: 36, column: 33, scope: !65)
!71 = !DILocation(line: 36, column: 26, scope: !65)
!72 = !DILocation(line: 38, column: 17, scope: !73)
!73 = distinct !DILexicalBlock(scope: !65, file: !45, line: 38, column: 13)
!74 = !DILocation(line: 38, column: 16, scope: !73)
!75 = !DILocation(line: 38, column: 25, scope: !73)
!76 = !DILocation(line: 38, column: 13, scope: !65)
!77 = !DILocation(line: 41, column: 23, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !45, line: 41, column: 17)
!79 = distinct !DILexicalBlock(scope: !73, file: !45, line: 39, column: 9)
!80 = !DILocation(line: 41, column: 28, scope: !78)
!81 = !DILocation(line: 41, column: 27, scope: !78)
!82 = !DILocation(line: 41, column: 47, scope: !78)
!83 = !DILocation(line: 41, column: 46, scope: !78)
!84 = !DILocation(line: 41, column: 37, scope: !78)
!85 = !DILocation(line: 41, column: 57, scope: !78)
!86 = !DILocation(line: 41, column: 17, scope: !78)
!87 = !DILocation(line: 41, column: 64, scope: !78)
!88 = !DILocation(line: 41, column: 17, scope: !79)
!89 = !DILocation(line: 45, column: 34, scope: !90)
!90 = distinct !DILexicalBlock(scope: !78, file: !45, line: 42, column: 13)
!91 = !DILocation(line: 45, column: 27, scope: !90)
!92 = !DILocation(line: 45, column: 25, scope: !90)
!93 = !DILocation(line: 46, column: 21, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !45, line: 46, column: 21)
!95 = !DILocation(line: 46, column: 29, scope: !94)
!96 = !DILocation(line: 46, column: 33, scope: !94)
!97 = !DILocation(line: 46, column: 36, scope: !94)
!98 = !DILocation(line: 46, column: 41, scope: !94)
!99 = !DILocation(line: 46, column: 48, scope: !94)
!100 = !DILocation(line: 46, column: 52, scope: !94)
!101 = !DILocation(line: 46, column: 21, scope: !90)
!102 = !DILocation(line: 48, column: 21, scope: !103)
!103 = distinct !DILexicalBlock(scope: !94, file: !45, line: 47, column: 17)
!104 = !DILocation(line: 48, column: 26, scope: !103)
!105 = !DILocation(line: 48, column: 33, scope: !103)
!106 = !DILocation(line: 48, column: 37, scope: !103)
!107 = !DILocation(line: 49, column: 17, scope: !103)
!108 = !DILocation(line: 50, column: 13, scope: !90)
!109 = !DILocation(line: 53, column: 17, scope: !110)
!110 = distinct !DILexicalBlock(scope: !78, file: !45, line: 52, column: 13)
!111 = !DILocation(line: 55, column: 17, scope: !110)
!112 = !DILocation(line: 55, column: 22, scope: !110)
!113 = !DILocation(line: 55, column: 31, scope: !110)
!114 = !DILocation(line: 57, column: 9, scope: !79)
!115 = !DILocalVariable(name: "dataCopy", scope: !116, file: !45, line: 60, type: !42)
!116 = distinct !DILexicalBlock(scope: !52, file: !45, line: 59, column: 5)
!117 = !DILocation(line: 60, column: 16, scope: !116)
!118 = !DILocation(line: 60, column: 27, scope: !116)
!119 = !DILocalVariable(name: "data", scope: !116, file: !45, line: 61, type: !42)
!120 = !DILocation(line: 61, column: 16, scope: !116)
!121 = !DILocation(line: 61, column: 23, scope: !116)
!122 = !DILocalVariable(name: "i", scope: !123, file: !45, line: 63, type: !23)
!123 = distinct !DILexicalBlock(scope: !116, file: !45, line: 62, column: 9)
!124 = !DILocation(line: 63, column: 17, scope: !123)
!125 = !DILocalVariable(name: "n", scope: !123, file: !45, line: 63, type: !23)
!126 = !DILocation(line: 63, column: 20, scope: !123)
!127 = !DILocalVariable(name: "intVariable", scope: !123, file: !45, line: 63, type: !23)
!128 = !DILocation(line: 63, column: 23, scope: !123)
!129 = !DILocation(line: 64, column: 24, scope: !130)
!130 = distinct !DILexicalBlock(scope: !123, file: !45, line: 64, column: 17)
!131 = !DILocation(line: 64, column: 17, scope: !130)
!132 = !DILocation(line: 64, column: 40, scope: !130)
!133 = !DILocation(line: 64, column: 17, scope: !123)
!134 = !DILocation(line: 67, column: 29, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !45, line: 65, column: 13)
!136 = !DILocation(line: 68, column: 24, scope: !137)
!137 = distinct !DILexicalBlock(scope: !135, file: !45, line: 68, column: 17)
!138 = !DILocation(line: 68, column: 22, scope: !137)
!139 = !DILocation(line: 68, column: 29, scope: !140)
!140 = distinct !DILexicalBlock(scope: !137, file: !45, line: 68, column: 17)
!141 = !DILocation(line: 68, column: 33, scope: !140)
!142 = !DILocation(line: 68, column: 31, scope: !140)
!143 = !DILocation(line: 68, column: 17, scope: !137)
!144 = !DILocation(line: 71, column: 32, scope: !145)
!145 = distinct !DILexicalBlock(scope: !140, file: !45, line: 69, column: 17)
!146 = !DILocation(line: 72, column: 17, scope: !145)
!147 = !DILocation(line: 68, column: 37, scope: !140)
!148 = !DILocation(line: 68, column: 17, scope: !140)
!149 = distinct !{!149, !143, !150, !151}
!150 = !DILocation(line: 72, column: 17, scope: !137)
!151 = !{!"llvm.loop.mustprogress"}
!152 = !DILocation(line: 73, column: 30, scope: !135)
!153 = !DILocation(line: 73, column: 17, scope: !135)
!154 = !DILocation(line: 74, column: 13, scope: !135)
!155 = !DILocation(line: 77, column: 1, scope: !52)
!156 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 84, type: !53, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!157 = !DILocalVariable(name: "data", scope: !156, file: !45, line: 86, type: !42)
!158 = !DILocation(line: 86, column: 12, scope: !156)
!159 = !DILocalVariable(name: "dataBuffer", scope: !156, file: !45, line: 87, type: !58)
!160 = !DILocation(line: 87, column: 10, scope: !156)
!161 = !DILocation(line: 88, column: 12, scope: !156)
!162 = !DILocation(line: 88, column: 10, scope: !156)
!163 = !DILocation(line: 90, column: 12, scope: !156)
!164 = !DILocation(line: 90, column: 5, scope: !156)
!165 = !DILocalVariable(name: "dataCopy", scope: !166, file: !45, line: 92, type: !42)
!166 = distinct !DILexicalBlock(scope: !156, file: !45, line: 91, column: 5)
!167 = !DILocation(line: 92, column: 16, scope: !166)
!168 = !DILocation(line: 92, column: 27, scope: !166)
!169 = !DILocalVariable(name: "data", scope: !166, file: !45, line: 93, type: !42)
!170 = !DILocation(line: 93, column: 16, scope: !166)
!171 = !DILocation(line: 93, column: 23, scope: !166)
!172 = !DILocalVariable(name: "i", scope: !173, file: !45, line: 95, type: !23)
!173 = distinct !DILexicalBlock(scope: !166, file: !45, line: 94, column: 9)
!174 = !DILocation(line: 95, column: 17, scope: !173)
!175 = !DILocalVariable(name: "n", scope: !173, file: !45, line: 95, type: !23)
!176 = !DILocation(line: 95, column: 20, scope: !173)
!177 = !DILocalVariable(name: "intVariable", scope: !173, file: !45, line: 95, type: !23)
!178 = !DILocation(line: 95, column: 23, scope: !173)
!179 = !DILocation(line: 96, column: 24, scope: !180)
!180 = distinct !DILexicalBlock(scope: !173, file: !45, line: 96, column: 17)
!181 = !DILocation(line: 96, column: 17, scope: !180)
!182 = !DILocation(line: 96, column: 40, scope: !180)
!183 = !DILocation(line: 96, column: 17, scope: !173)
!184 = !DILocation(line: 99, column: 29, scope: !185)
!185 = distinct !DILexicalBlock(scope: !180, file: !45, line: 97, column: 13)
!186 = !DILocation(line: 100, column: 24, scope: !187)
!187 = distinct !DILexicalBlock(scope: !185, file: !45, line: 100, column: 17)
!188 = !DILocation(line: 100, column: 22, scope: !187)
!189 = !DILocation(line: 100, column: 29, scope: !190)
!190 = distinct !DILexicalBlock(scope: !187, file: !45, line: 100, column: 17)
!191 = !DILocation(line: 100, column: 33, scope: !190)
!192 = !DILocation(line: 100, column: 31, scope: !190)
!193 = !DILocation(line: 100, column: 17, scope: !187)
!194 = !DILocation(line: 103, column: 32, scope: !195)
!195 = distinct !DILexicalBlock(scope: !190, file: !45, line: 101, column: 17)
!196 = !DILocation(line: 104, column: 17, scope: !195)
!197 = !DILocation(line: 100, column: 37, scope: !190)
!198 = !DILocation(line: 100, column: 17, scope: !190)
!199 = distinct !{!199, !193, !200, !151}
!200 = !DILocation(line: 104, column: 17, scope: !187)
!201 = !DILocation(line: 105, column: 30, scope: !185)
!202 = !DILocation(line: 105, column: 17, scope: !185)
!203 = !DILocation(line: 106, column: 13, scope: !185)
!204 = !DILocation(line: 109, column: 1, scope: !156)
!205 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 112, type: !53, scopeLine: 113, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!206 = !DILocalVariable(name: "data", scope: !205, file: !45, line: 114, type: !42)
!207 = !DILocation(line: 114, column: 12, scope: !205)
!208 = !DILocalVariable(name: "dataBuffer", scope: !205, file: !45, line: 115, type: !58)
!209 = !DILocation(line: 115, column: 10, scope: !205)
!210 = !DILocation(line: 116, column: 12, scope: !205)
!211 = !DILocation(line: 116, column: 10, scope: !205)
!212 = !DILocalVariable(name: "dataLen", scope: !213, file: !45, line: 119, type: !66)
!213 = distinct !DILexicalBlock(scope: !205, file: !45, line: 117, column: 5)
!214 = !DILocation(line: 119, column: 16, scope: !213)
!215 = !DILocation(line: 119, column: 33, scope: !213)
!216 = !DILocation(line: 119, column: 26, scope: !213)
!217 = !DILocation(line: 121, column: 17, scope: !218)
!218 = distinct !DILexicalBlock(scope: !213, file: !45, line: 121, column: 13)
!219 = !DILocation(line: 121, column: 16, scope: !218)
!220 = !DILocation(line: 121, column: 25, scope: !218)
!221 = !DILocation(line: 121, column: 13, scope: !213)
!222 = !DILocation(line: 124, column: 23, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !45, line: 124, column: 17)
!224 = distinct !DILexicalBlock(scope: !218, file: !45, line: 122, column: 9)
!225 = !DILocation(line: 124, column: 28, scope: !223)
!226 = !DILocation(line: 124, column: 27, scope: !223)
!227 = !DILocation(line: 124, column: 47, scope: !223)
!228 = !DILocation(line: 124, column: 46, scope: !223)
!229 = !DILocation(line: 124, column: 37, scope: !223)
!230 = !DILocation(line: 124, column: 57, scope: !223)
!231 = !DILocation(line: 124, column: 17, scope: !223)
!232 = !DILocation(line: 124, column: 64, scope: !223)
!233 = !DILocation(line: 124, column: 17, scope: !224)
!234 = !DILocation(line: 128, column: 34, scope: !235)
!235 = distinct !DILexicalBlock(scope: !223, file: !45, line: 125, column: 13)
!236 = !DILocation(line: 128, column: 27, scope: !235)
!237 = !DILocation(line: 128, column: 25, scope: !235)
!238 = !DILocation(line: 129, column: 21, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !45, line: 129, column: 21)
!240 = !DILocation(line: 129, column: 29, scope: !239)
!241 = !DILocation(line: 129, column: 33, scope: !239)
!242 = !DILocation(line: 129, column: 36, scope: !239)
!243 = !DILocation(line: 129, column: 41, scope: !239)
!244 = !DILocation(line: 129, column: 48, scope: !239)
!245 = !DILocation(line: 129, column: 52, scope: !239)
!246 = !DILocation(line: 129, column: 21, scope: !235)
!247 = !DILocation(line: 131, column: 21, scope: !248)
!248 = distinct !DILexicalBlock(scope: !239, file: !45, line: 130, column: 17)
!249 = !DILocation(line: 131, column: 26, scope: !248)
!250 = !DILocation(line: 131, column: 33, scope: !248)
!251 = !DILocation(line: 131, column: 37, scope: !248)
!252 = !DILocation(line: 132, column: 17, scope: !248)
!253 = !DILocation(line: 133, column: 13, scope: !235)
!254 = !DILocation(line: 136, column: 17, scope: !255)
!255 = distinct !DILexicalBlock(scope: !223, file: !45, line: 135, column: 13)
!256 = !DILocation(line: 138, column: 17, scope: !255)
!257 = !DILocation(line: 138, column: 22, scope: !255)
!258 = !DILocation(line: 138, column: 31, scope: !255)
!259 = !DILocation(line: 140, column: 9, scope: !224)
!260 = !DILocalVariable(name: "dataCopy", scope: !261, file: !45, line: 143, type: !42)
!261 = distinct !DILexicalBlock(scope: !205, file: !45, line: 142, column: 5)
!262 = !DILocation(line: 143, column: 16, scope: !261)
!263 = !DILocation(line: 143, column: 27, scope: !261)
!264 = !DILocalVariable(name: "data", scope: !261, file: !45, line: 144, type: !42)
!265 = !DILocation(line: 144, column: 16, scope: !261)
!266 = !DILocation(line: 144, column: 23, scope: !261)
!267 = !DILocalVariable(name: "i", scope: !268, file: !45, line: 146, type: !23)
!268 = distinct !DILexicalBlock(scope: !261, file: !45, line: 145, column: 9)
!269 = !DILocation(line: 146, column: 17, scope: !268)
!270 = !DILocalVariable(name: "n", scope: !268, file: !45, line: 146, type: !23)
!271 = !DILocation(line: 146, column: 20, scope: !268)
!272 = !DILocalVariable(name: "intVariable", scope: !268, file: !45, line: 146, type: !23)
!273 = !DILocation(line: 146, column: 23, scope: !268)
!274 = !DILocation(line: 147, column: 24, scope: !275)
!275 = distinct !DILexicalBlock(scope: !268, file: !45, line: 147, column: 17)
!276 = !DILocation(line: 147, column: 17, scope: !275)
!277 = !DILocation(line: 147, column: 40, scope: !275)
!278 = !DILocation(line: 147, column: 17, scope: !268)
!279 = !DILocation(line: 150, column: 21, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !45, line: 150, column: 21)
!281 = distinct !DILexicalBlock(scope: !275, file: !45, line: 148, column: 13)
!282 = !DILocation(line: 150, column: 23, scope: !280)
!283 = !DILocation(line: 150, column: 21, scope: !281)
!284 = !DILocation(line: 152, column: 33, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !45, line: 151, column: 17)
!286 = !DILocation(line: 153, column: 28, scope: !287)
!287 = distinct !DILexicalBlock(scope: !285, file: !45, line: 153, column: 21)
!288 = !DILocation(line: 153, column: 26, scope: !287)
!289 = !DILocation(line: 153, column: 33, scope: !290)
!290 = distinct !DILexicalBlock(scope: !287, file: !45, line: 153, column: 21)
!291 = !DILocation(line: 153, column: 37, scope: !290)
!292 = !DILocation(line: 153, column: 35, scope: !290)
!293 = !DILocation(line: 153, column: 21, scope: !287)
!294 = !DILocation(line: 156, column: 36, scope: !295)
!295 = distinct !DILexicalBlock(scope: !290, file: !45, line: 154, column: 21)
!296 = !DILocation(line: 157, column: 21, scope: !295)
!297 = !DILocation(line: 153, column: 41, scope: !290)
!298 = !DILocation(line: 153, column: 21, scope: !290)
!299 = distinct !{!299, !293, !300, !151}
!300 = !DILocation(line: 157, column: 21, scope: !287)
!301 = !DILocation(line: 158, column: 34, scope: !285)
!302 = !DILocation(line: 158, column: 21, scope: !285)
!303 = !DILocation(line: 159, column: 17, scope: !285)
!304 = !DILocation(line: 160, column: 13, scope: !281)
!305 = !DILocation(line: 163, column: 1, scope: !205)
!306 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_31_good", scope: !45, file: !45, line: 165, type: !53, scopeLine: 166, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!307 = !DILocation(line: 167, column: 5, scope: !306)
!308 = !DILocation(line: 168, column: 5, scope: !306)
!309 = !DILocation(line: 169, column: 1, scope: !306)
!310 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !311, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !42}
!313 = !DILocalVariable(name: "line", arg: 1, scope: !310, file: !3, line: 11, type: !42)
!314 = !DILocation(line: 11, column: 25, scope: !310)
!315 = !DILocation(line: 13, column: 1, scope: !310)
!316 = !DILocation(line: 14, column: 8, scope: !317)
!317 = distinct !DILexicalBlock(scope: !310, file: !3, line: 14, column: 8)
!318 = !DILocation(line: 14, column: 13, scope: !317)
!319 = !DILocation(line: 14, column: 8, scope: !310)
!320 = !DILocation(line: 16, column: 24, scope: !321)
!321 = distinct !DILexicalBlock(scope: !317, file: !3, line: 15, column: 5)
!322 = !DILocation(line: 16, column: 9, scope: !321)
!323 = !DILocation(line: 17, column: 5, scope: !321)
!324 = !DILocation(line: 18, column: 5, scope: !310)
!325 = !DILocation(line: 19, column: 1, scope: !310)
!326 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !311, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!327 = !DILocalVariable(name: "line", arg: 1, scope: !326, file: !3, line: 20, type: !42)
!328 = !DILocation(line: 20, column: 29, scope: !326)
!329 = !DILocation(line: 22, column: 8, scope: !330)
!330 = distinct !DILexicalBlock(scope: !326, file: !3, line: 22, column: 8)
!331 = !DILocation(line: 22, column: 13, scope: !330)
!332 = !DILocation(line: 22, column: 8, scope: !326)
!333 = !DILocation(line: 24, column: 24, scope: !334)
!334 = distinct !DILexicalBlock(scope: !330, file: !3, line: 23, column: 5)
!335 = !DILocation(line: 24, column: 9, scope: !334)
!336 = !DILocation(line: 25, column: 5, scope: !334)
!337 = !DILocation(line: 26, column: 1, scope: !326)
!338 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !339, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !67, line: 74, baseType: !23)
!343 = !DILocalVariable(name: "line", arg: 1, scope: !338, file: !3, line: 27, type: !341)
!344 = !DILocation(line: 27, column: 29, scope: !338)
!345 = !DILocation(line: 29, column: 8, scope: !346)
!346 = distinct !DILexicalBlock(scope: !338, file: !3, line: 29, column: 8)
!347 = !DILocation(line: 29, column: 13, scope: !346)
!348 = !DILocation(line: 29, column: 8, scope: !338)
!349 = !DILocation(line: 31, column: 27, scope: !350)
!350 = distinct !DILexicalBlock(scope: !346, file: !3, line: 30, column: 5)
!351 = !DILocation(line: 31, column: 9, scope: !350)
!352 = !DILocation(line: 32, column: 5, scope: !350)
!353 = !DILocation(line: 33, column: 1, scope: !338)
!354 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !355, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !23}
!357 = !DILocalVariable(name: "intNumber", arg: 1, scope: !354, file: !3, line: 35, type: !23)
!358 = !DILocation(line: 35, column: 24, scope: !354)
!359 = !DILocation(line: 37, column: 20, scope: !354)
!360 = !DILocation(line: 37, column: 5, scope: !354)
!361 = !DILocation(line: 38, column: 1, scope: !354)
!362 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !363, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !365}
!365 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!366 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !362, file: !3, line: 40, type: !365)
!367 = !DILocation(line: 40, column: 28, scope: !362)
!368 = !DILocation(line: 42, column: 21, scope: !362)
!369 = !DILocation(line: 42, column: 5, scope: !362)
!370 = !DILocation(line: 43, column: 1, scope: !362)
!371 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !372, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !374}
!374 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!375 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !371, file: !3, line: 45, type: !374)
!376 = !DILocation(line: 45, column: 28, scope: !371)
!377 = !DILocation(line: 47, column: 20, scope: !371)
!378 = !DILocation(line: 47, column: 5, scope: !371)
!379 = !DILocation(line: 48, column: 1, scope: !371)
!380 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !381, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !383}
!383 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!384 = !DILocalVariable(name: "longNumber", arg: 1, scope: !380, file: !3, line: 50, type: !383)
!385 = !DILocation(line: 50, column: 26, scope: !380)
!386 = !DILocation(line: 52, column: 21, scope: !380)
!387 = !DILocation(line: 52, column: 5, scope: !380)
!388 = !DILocation(line: 53, column: 1, scope: !380)
!389 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !390, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !392}
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !393, line: 27, baseType: !394)
!393 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !395, line: 44, baseType: !383)
!395 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!396 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !389, file: !3, line: 55, type: !392)
!397 = !DILocation(line: 55, column: 33, scope: !389)
!398 = !DILocation(line: 57, column: 29, scope: !389)
!399 = !DILocation(line: 57, column: 5, scope: !389)
!400 = !DILocation(line: 58, column: 1, scope: !389)
!401 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !402, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !66}
!404 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !401, file: !3, line: 60, type: !66)
!405 = !DILocation(line: 60, column: 29, scope: !401)
!406 = !DILocation(line: 62, column: 21, scope: !401)
!407 = !DILocation(line: 62, column: 5, scope: !401)
!408 = !DILocation(line: 63, column: 1, scope: !401)
!409 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !410, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !43}
!412 = !DILocalVariable(name: "charHex", arg: 1, scope: !409, file: !3, line: 65, type: !43)
!413 = !DILocation(line: 65, column: 29, scope: !409)
!414 = !DILocation(line: 67, column: 22, scope: !409)
!415 = !DILocation(line: 67, column: 5, scope: !409)
!416 = !DILocation(line: 68, column: 1, scope: !409)
!417 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !418, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !342}
!420 = !DILocalVariable(name: "wideChar", arg: 1, scope: !417, file: !3, line: 70, type: !342)
!421 = !DILocation(line: 70, column: 29, scope: !417)
!422 = !DILocalVariable(name: "s", scope: !417, file: !3, line: 74, type: !423)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 64, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 2)
!426 = !DILocation(line: 74, column: 13, scope: !417)
!427 = !DILocation(line: 75, column: 16, scope: !417)
!428 = !DILocation(line: 75, column: 9, scope: !417)
!429 = !DILocation(line: 75, column: 14, scope: !417)
!430 = !DILocation(line: 76, column: 9, scope: !417)
!431 = !DILocation(line: 76, column: 14, scope: !417)
!432 = !DILocation(line: 77, column: 21, scope: !417)
!433 = !DILocation(line: 77, column: 5, scope: !417)
!434 = !DILocation(line: 78, column: 1, scope: !417)
!435 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !436, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !7}
!438 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !435, file: !3, line: 80, type: !7)
!439 = !DILocation(line: 80, column: 33, scope: !435)
!440 = !DILocation(line: 82, column: 20, scope: !435)
!441 = !DILocation(line: 82, column: 5, scope: !435)
!442 = !DILocation(line: 83, column: 1, scope: !435)
!443 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !444, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !25}
!446 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !443, file: !3, line: 85, type: !25)
!447 = !DILocation(line: 85, column: 45, scope: !443)
!448 = !DILocation(line: 87, column: 22, scope: !443)
!449 = !DILocation(line: 87, column: 5, scope: !443)
!450 = !DILocation(line: 88, column: 1, scope: !443)
!451 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !452, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !454}
!454 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!455 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !451, file: !3, line: 90, type: !454)
!456 = !DILocation(line: 90, column: 29, scope: !451)
!457 = !DILocation(line: 92, column: 20, scope: !451)
!458 = !DILocation(line: 92, column: 5, scope: !451)
!459 = !DILocation(line: 93, column: 1, scope: !451)
!460 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !461, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !465, line: 100, baseType: !466)
!465 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_998/source_code")
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !465, line: 96, size: 64, elements: !467)
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !466, file: !465, line: 98, baseType: !23, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !466, file: !465, line: 99, baseType: !23, size: 32, offset: 32)
!470 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !460, file: !3, line: 95, type: !463)
!471 = !DILocation(line: 95, column: 40, scope: !460)
!472 = !DILocation(line: 97, column: 26, scope: !460)
!473 = !DILocation(line: 97, column: 47, scope: !460)
!474 = !DILocation(line: 97, column: 55, scope: !460)
!475 = !DILocation(line: 97, column: 76, scope: !460)
!476 = !DILocation(line: 97, column: 5, scope: !460)
!477 = !DILocation(line: 98, column: 1, scope: !460)
!478 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !479, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !481, !66}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!482 = !DILocalVariable(name: "bytes", arg: 1, scope: !478, file: !3, line: 100, type: !481)
!483 = !DILocation(line: 100, column: 38, scope: !478)
!484 = !DILocalVariable(name: "numBytes", arg: 2, scope: !478, file: !3, line: 100, type: !66)
!485 = !DILocation(line: 100, column: 52, scope: !478)
!486 = !DILocalVariable(name: "i", scope: !478, file: !3, line: 102, type: !66)
!487 = !DILocation(line: 102, column: 12, scope: !478)
!488 = !DILocation(line: 103, column: 12, scope: !489)
!489 = distinct !DILexicalBlock(scope: !478, file: !3, line: 103, column: 5)
!490 = !DILocation(line: 103, column: 10, scope: !489)
!491 = !DILocation(line: 103, column: 17, scope: !492)
!492 = distinct !DILexicalBlock(scope: !489, file: !3, line: 103, column: 5)
!493 = !DILocation(line: 103, column: 21, scope: !492)
!494 = !DILocation(line: 103, column: 19, scope: !492)
!495 = !DILocation(line: 103, column: 5, scope: !489)
!496 = !DILocation(line: 105, column: 24, scope: !497)
!497 = distinct !DILexicalBlock(scope: !492, file: !3, line: 104, column: 5)
!498 = !DILocation(line: 105, column: 30, scope: !497)
!499 = !DILocation(line: 105, column: 9, scope: !497)
!500 = !DILocation(line: 106, column: 5, scope: !497)
!501 = !DILocation(line: 103, column: 31, scope: !492)
!502 = !DILocation(line: 103, column: 5, scope: !492)
!503 = distinct !{!503, !495, !504, !151}
!504 = !DILocation(line: 106, column: 5, scope: !489)
!505 = !DILocation(line: 107, column: 5, scope: !478)
!506 = !DILocation(line: 108, column: 1, scope: !478)
!507 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !508, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!508 = !DISubroutineType(types: !509)
!509 = !{!66, !481, !66, !42}
!510 = !DILocalVariable(name: "bytes", arg: 1, scope: !507, file: !3, line: 113, type: !481)
!511 = !DILocation(line: 113, column: 39, scope: !507)
!512 = !DILocalVariable(name: "numBytes", arg: 2, scope: !507, file: !3, line: 113, type: !66)
!513 = !DILocation(line: 113, column: 53, scope: !507)
!514 = !DILocalVariable(name: "hex", arg: 3, scope: !507, file: !3, line: 113, type: !42)
!515 = !DILocation(line: 113, column: 71, scope: !507)
!516 = !DILocalVariable(name: "numWritten", scope: !507, file: !3, line: 115, type: !66)
!517 = !DILocation(line: 115, column: 12, scope: !507)
!518 = !DILocation(line: 121, column: 5, scope: !507)
!519 = !DILocation(line: 121, column: 12, scope: !507)
!520 = !DILocation(line: 121, column: 25, scope: !507)
!521 = !DILocation(line: 121, column: 23, scope: !507)
!522 = !DILocation(line: 121, column: 34, scope: !507)
!523 = !DILocation(line: 121, column: 37, scope: !507)
!524 = !DILocation(line: 121, column: 67, scope: !507)
!525 = !DILocation(line: 121, column: 70, scope: !507)
!526 = !DILocation(line: 0, scope: !507)
!527 = !DILocalVariable(name: "byte", scope: !528, file: !3, line: 123, type: !23)
!528 = distinct !DILexicalBlock(scope: !507, file: !3, line: 122, column: 5)
!529 = !DILocation(line: 123, column: 13, scope: !528)
!530 = !DILocation(line: 124, column: 17, scope: !528)
!531 = !DILocation(line: 124, column: 25, scope: !528)
!532 = !DILocation(line: 124, column: 23, scope: !528)
!533 = !DILocation(line: 124, column: 9, scope: !528)
!534 = !DILocation(line: 125, column: 45, scope: !528)
!535 = !DILocation(line: 125, column: 29, scope: !528)
!536 = !DILocation(line: 125, column: 9, scope: !528)
!537 = !DILocation(line: 125, column: 15, scope: !528)
!538 = !DILocation(line: 125, column: 27, scope: !528)
!539 = !DILocation(line: 126, column: 9, scope: !528)
!540 = distinct !{!540, !518, !541, !151}
!541 = !DILocation(line: 127, column: 5, scope: !507)
!542 = !DILocation(line: 129, column: 12, scope: !507)
!543 = !DILocation(line: 129, column: 5, scope: !507)
!544 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !545, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!545 = !DISubroutineType(types: !546)
!546 = !{!66, !481, !66, !341}
!547 = !DILocalVariable(name: "bytes", arg: 1, scope: !544, file: !3, line: 135, type: !481)
!548 = !DILocation(line: 135, column: 41, scope: !544)
!549 = !DILocalVariable(name: "numBytes", arg: 2, scope: !544, file: !3, line: 135, type: !66)
!550 = !DILocation(line: 135, column: 55, scope: !544)
!551 = !DILocalVariable(name: "hex", arg: 3, scope: !544, file: !3, line: 135, type: !341)
!552 = !DILocation(line: 135, column: 76, scope: !544)
!553 = !DILocalVariable(name: "numWritten", scope: !544, file: !3, line: 137, type: !66)
!554 = !DILocation(line: 137, column: 12, scope: !544)
!555 = !DILocation(line: 143, column: 5, scope: !544)
!556 = !DILocation(line: 143, column: 12, scope: !544)
!557 = !DILocation(line: 143, column: 25, scope: !544)
!558 = !DILocation(line: 143, column: 23, scope: !544)
!559 = !DILocation(line: 143, column: 34, scope: !544)
!560 = !DILocation(line: 143, column: 47, scope: !544)
!561 = !DILocation(line: 143, column: 55, scope: !544)
!562 = !DILocation(line: 143, column: 53, scope: !544)
!563 = !DILocation(line: 143, column: 37, scope: !544)
!564 = !DILocation(line: 143, column: 68, scope: !544)
!565 = !DILocation(line: 143, column: 81, scope: !544)
!566 = !DILocation(line: 143, column: 89, scope: !544)
!567 = !DILocation(line: 143, column: 87, scope: !544)
!568 = !DILocation(line: 143, column: 100, scope: !544)
!569 = !DILocation(line: 143, column: 71, scope: !544)
!570 = !DILocation(line: 0, scope: !544)
!571 = !DILocalVariable(name: "byte", scope: !572, file: !3, line: 145, type: !23)
!572 = distinct !DILexicalBlock(scope: !544, file: !3, line: 144, column: 5)
!573 = !DILocation(line: 145, column: 13, scope: !572)
!574 = !DILocation(line: 146, column: 18, scope: !572)
!575 = !DILocation(line: 146, column: 26, scope: !572)
!576 = !DILocation(line: 146, column: 24, scope: !572)
!577 = !DILocation(line: 146, column: 9, scope: !572)
!578 = !DILocation(line: 147, column: 45, scope: !572)
!579 = !DILocation(line: 147, column: 29, scope: !572)
!580 = !DILocation(line: 147, column: 9, scope: !572)
!581 = !DILocation(line: 147, column: 15, scope: !572)
!582 = !DILocation(line: 147, column: 27, scope: !572)
!583 = !DILocation(line: 148, column: 9, scope: !572)
!584 = distinct !{!584, !555, !585, !151}
!585 = !DILocation(line: 149, column: 5, scope: !544)
!586 = !DILocation(line: 151, column: 12, scope: !544)
!587 = !DILocation(line: 151, column: 5, scope: !544)
!588 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !589, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!589 = !DISubroutineType(types: !590)
!590 = !{!23}
!591 = !DILocation(line: 158, column: 5, scope: !588)
!592 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !589, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!593 = !DILocation(line: 163, column: 5, scope: !592)
!594 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !589, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!595 = !DILocation(line: 168, column: 13, scope: !594)
!596 = !DILocation(line: 168, column: 20, scope: !594)
!597 = !DILocation(line: 168, column: 5, scope: !594)
!598 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!599 = !DILocation(line: 187, column: 16, scope: !598)
!600 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!601 = !DILocation(line: 188, column: 16, scope: !600)
!602 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!603 = !DILocation(line: 189, column: 16, scope: !602)
!604 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!605 = !DILocation(line: 190, column: 16, scope: !604)
!606 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!607 = !DILocation(line: 191, column: 16, scope: !606)
!608 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!609 = !DILocation(line: 192, column: 16, scope: !608)
!610 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!611 = !DILocation(line: 193, column: 16, scope: !610)
!612 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!613 = !DILocation(line: 194, column: 16, scope: !612)
!614 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!615 = !DILocation(line: 195, column: 16, scope: !614)
!616 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!617 = !DILocation(line: 198, column: 15, scope: !616)
!618 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!619 = !DILocation(line: 199, column: 15, scope: !618)
!620 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!621 = !DILocation(line: 200, column: 15, scope: !620)
!622 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!623 = !DILocation(line: 201, column: 15, scope: !622)
!624 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!625 = !DILocation(line: 202, column: 15, scope: !624)
!626 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!627 = !DILocation(line: 203, column: 15, scope: !626)
!628 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!629 = !DILocation(line: 204, column: 15, scope: !628)
!630 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!631 = !DILocation(line: 205, column: 15, scope: !630)
!632 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!633 = !DILocation(line: 206, column: 15, scope: !632)
