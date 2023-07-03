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
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_12_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %i36 = alloca i32, align 4
  %n37 = alloca i32, align 4
  %intVariable38 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !57, metadata !DIExpression()), !dbg !61
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !61
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !62
  store i8* %arraydecay, i8** %data, align 8, !dbg !63
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !64
  %tobool = icmp ne i32 %call, 0, !dbg !64
  br i1 %tobool, label %if.then, label %if.else21, !dbg !66

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !73
  %1 = load i8*, i8** %data, align 8, !dbg !74
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !75
  store i64 %call1, i64* %dataLen, align 8, !dbg !73
  %2 = load i64, i64* %dataLen, align 8, !dbg !76
  %sub = sub i64 100, %2, !dbg !78
  %cmp = icmp ugt i64 %sub, 1, !dbg !79
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !80

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !81
  %4 = load i64, i64* %dataLen, align 8, !dbg !84
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !85
  %5 = load i64, i64* %dataLen, align 8, !dbg !86
  %sub3 = sub i64 100, %5, !dbg !87
  %conv = trunc i64 %sub3 to i32, !dbg !88
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !89
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !90
  %cmp5 = icmp ne i8* %call4, null, !dbg !91
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !92

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !93
  %call8 = call i64 @strlen(i8* %7) #7, !dbg !95
  store i64 %call8, i64* %dataLen, align 8, !dbg !96
  %8 = load i64, i64* %dataLen, align 8, !dbg !97
  %cmp9 = icmp ugt i64 %8, 0, !dbg !99
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !100

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !101
  %10 = load i64, i64* %dataLen, align 8, !dbg !102
  %sub11 = sub i64 %10, 1, !dbg !103
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !101
  %11 = load i8, i8* %arrayidx, align 1, !dbg !101
  %conv12 = sext i8 %11 to i32, !dbg !101
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !104
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !105

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !106
  %13 = load i64, i64* %dataLen, align 8, !dbg !108
  %sub16 = sub i64 %13, 1, !dbg !109
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !106
  store i8 0, i8* %arrayidx17, align 1, !dbg !110
  br label %if.end, !dbg !111

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !112

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !113
  %14 = load i8*, i8** %data, align 8, !dbg !115
  %15 = load i64, i64* %dataLen, align 8, !dbg !116
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !115
  store i8 0, i8* %arrayidx18, align 1, !dbg !117
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !118

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end23, !dbg !119

if.else21:                                        ; preds = %entry
  %16 = load i8*, i8** %data, align 8, !dbg !120
  %call22 = call i8* @strcpy(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !122
  br label %if.end23

if.end23:                                         ; preds = %if.else21, %if.end20
  %call24 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !123
  %tobool25 = icmp ne i32 %call24, 0, !dbg !123
  br i1 %tobool25, label %if.then26, label %if.else35, !dbg !125

if.then26:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !126, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata i32* %n, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !132, metadata !DIExpression()), !dbg !133
  %17 = load i8*, i8** %data, align 8, !dbg !134
  %call27 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n) #8, !dbg !136
  %cmp28 = icmp eq i32 %call27, 1, !dbg !137
  br i1 %cmp28, label %if.then30, label %if.end34, !dbg !138

if.then30:                                        ; preds = %if.then26
  store i32 0, i32* %intVariable, align 4, !dbg !139
  store i32 0, i32* %i, align 4, !dbg !141
  br label %for.cond, !dbg !143

for.cond:                                         ; preds = %for.inc, %if.then30
  %18 = load i32, i32* %i, align 4, !dbg !144
  %19 = load i32, i32* %n, align 4, !dbg !146
  %cmp31 = icmp slt i32 %18, %19, !dbg !147
  br i1 %cmp31, label %for.body, label %for.end, !dbg !148

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !149
  %inc = add nsw i32 %20, 1, !dbg !149
  store i32 %inc, i32* %intVariable, align 4, !dbg !149
  br label %for.inc, !dbg !151

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !152
  %inc33 = add nsw i32 %21, 1, !dbg !152
  store i32 %inc33, i32* %i, align 4, !dbg !152
  br label %for.cond, !dbg !153, !llvm.loop !154

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !157
  call void @printIntLine(i32 %22), !dbg !158
  br label %if.end34, !dbg !159

if.end34:                                         ; preds = %for.end, %if.then26
  br label %if.end56, !dbg !160

if.else35:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i36, metadata !161, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata i32* %n37, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata i32* %intVariable38, metadata !167, metadata !DIExpression()), !dbg !168
  %23 = load i8*, i8** %data, align 8, !dbg !169
  %call39 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n37) #8, !dbg !171
  %cmp40 = icmp eq i32 %call39, 1, !dbg !172
  br i1 %cmp40, label %if.then42, label %if.end55, !dbg !173

if.then42:                                        ; preds = %if.else35
  %24 = load i32, i32* %n37, align 4, !dbg !174
  %cmp43 = icmp slt i32 %24, 10000, !dbg !177
  br i1 %cmp43, label %if.then45, label %if.end54, !dbg !178

if.then45:                                        ; preds = %if.then42
  store i32 0, i32* %intVariable38, align 4, !dbg !179
  store i32 0, i32* %i36, align 4, !dbg !181
  br label %for.cond46, !dbg !183

for.cond46:                                       ; preds = %for.inc51, %if.then45
  %25 = load i32, i32* %i36, align 4, !dbg !184
  %26 = load i32, i32* %n37, align 4, !dbg !186
  %cmp47 = icmp slt i32 %25, %26, !dbg !187
  br i1 %cmp47, label %for.body49, label %for.end53, !dbg !188

for.body49:                                       ; preds = %for.cond46
  %27 = load i32, i32* %intVariable38, align 4, !dbg !189
  %inc50 = add nsw i32 %27, 1, !dbg !189
  store i32 %inc50, i32* %intVariable38, align 4, !dbg !189
  br label %for.inc51, !dbg !191

for.inc51:                                        ; preds = %for.body49
  %28 = load i32, i32* %i36, align 4, !dbg !192
  %inc52 = add nsw i32 %28, 1, !dbg !192
  store i32 %inc52, i32* %i36, align 4, !dbg !192
  br label %for.cond46, !dbg !193, !llvm.loop !194

for.end53:                                        ; preds = %for.cond46
  %29 = load i32, i32* %intVariable38, align 4, !dbg !196
  call void @printIntLine(i32 %29), !dbg !197
  br label %if.end54, !dbg !198

if.end54:                                         ; preds = %for.end53, %if.then42
  br label %if.end55, !dbg !199

if.end55:                                         ; preds = %if.end54, %if.else35
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end34
  ret void, !dbg !200
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !201 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %dataLen22 = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %i69 = alloca i32, align 4
  %n70 = alloca i32, align 4
  %intVariable71 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !204, metadata !DIExpression()), !dbg !205
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !205
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !205
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !206
  store i8* %arraydecay, i8** %data, align 8, !dbg !207
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !208
  %tobool = icmp ne i32 %call, 0, !dbg !208
  br i1 %tobool, label %if.then, label %if.else21, !dbg !210

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !211, metadata !DIExpression()), !dbg !214
  %1 = load i8*, i8** %data, align 8, !dbg !215
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !216
  store i64 %call1, i64* %dataLen, align 8, !dbg !214
  %2 = load i64, i64* %dataLen, align 8, !dbg !217
  %sub = sub i64 100, %2, !dbg !219
  %cmp = icmp ugt i64 %sub, 1, !dbg !220
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !221

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !222
  %4 = load i64, i64* %dataLen, align 8, !dbg !225
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !226
  %5 = load i64, i64* %dataLen, align 8, !dbg !227
  %sub3 = sub i64 100, %5, !dbg !228
  %conv = trunc i64 %sub3 to i32, !dbg !229
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !230
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !231
  %cmp5 = icmp ne i8* %call4, null, !dbg !232
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !233

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !234
  %call8 = call i64 @strlen(i8* %7) #7, !dbg !236
  store i64 %call8, i64* %dataLen, align 8, !dbg !237
  %8 = load i64, i64* %dataLen, align 8, !dbg !238
  %cmp9 = icmp ugt i64 %8, 0, !dbg !240
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !241

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !242
  %10 = load i64, i64* %dataLen, align 8, !dbg !243
  %sub11 = sub i64 %10, 1, !dbg !244
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !242
  %11 = load i8, i8* %arrayidx, align 1, !dbg !242
  %conv12 = sext i8 %11 to i32, !dbg !242
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !245
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !246

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !247
  %13 = load i64, i64* %dataLen, align 8, !dbg !249
  %sub16 = sub i64 %13, 1, !dbg !250
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !247
  store i8 0, i8* %arrayidx17, align 1, !dbg !251
  br label %if.end, !dbg !252

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !253

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !254
  %14 = load i8*, i8** %data, align 8, !dbg !256
  %15 = load i64, i64* %dataLen, align 8, !dbg !257
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !256
  store i8 0, i8* %arrayidx18, align 1, !dbg !258
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !259

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end52, !dbg !260

if.else21:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen22, metadata !261, metadata !DIExpression()), !dbg !264
  %16 = load i8*, i8** %data, align 8, !dbg !265
  %call23 = call i64 @strlen(i8* %16) #7, !dbg !266
  store i64 %call23, i64* %dataLen22, align 8, !dbg !264
  %17 = load i64, i64* %dataLen22, align 8, !dbg !267
  %sub24 = sub i64 100, %17, !dbg !269
  %cmp25 = icmp ugt i64 %sub24, 1, !dbg !270
  br i1 %cmp25, label %if.then27, label %if.end51, !dbg !271

if.then27:                                        ; preds = %if.else21
  %18 = load i8*, i8** %data, align 8, !dbg !272
  %19 = load i64, i64* %dataLen22, align 8, !dbg !275
  %add.ptr28 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !276
  %20 = load i64, i64* %dataLen22, align 8, !dbg !277
  %sub29 = sub i64 100, %20, !dbg !278
  %conv30 = trunc i64 %sub29 to i32, !dbg !279
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !280
  %call31 = call i8* @fgets(i8* %add.ptr28, i32 %conv30, %struct._IO_FILE* %21), !dbg !281
  %cmp32 = icmp ne i8* %call31, null, !dbg !282
  br i1 %cmp32, label %if.then34, label %if.else48, !dbg !283

if.then34:                                        ; preds = %if.then27
  %22 = load i8*, i8** %data, align 8, !dbg !284
  %call35 = call i64 @strlen(i8* %22) #7, !dbg !286
  store i64 %call35, i64* %dataLen22, align 8, !dbg !287
  %23 = load i64, i64* %dataLen22, align 8, !dbg !288
  %cmp36 = icmp ugt i64 %23, 0, !dbg !290
  br i1 %cmp36, label %land.lhs.true38, label %if.end47, !dbg !291

land.lhs.true38:                                  ; preds = %if.then34
  %24 = load i8*, i8** %data, align 8, !dbg !292
  %25 = load i64, i64* %dataLen22, align 8, !dbg !293
  %sub39 = sub i64 %25, 1, !dbg !294
  %arrayidx40 = getelementptr inbounds i8, i8* %24, i64 %sub39, !dbg !292
  %26 = load i8, i8* %arrayidx40, align 1, !dbg !292
  %conv41 = sext i8 %26 to i32, !dbg !292
  %cmp42 = icmp eq i32 %conv41, 10, !dbg !295
  br i1 %cmp42, label %if.then44, label %if.end47, !dbg !296

if.then44:                                        ; preds = %land.lhs.true38
  %27 = load i8*, i8** %data, align 8, !dbg !297
  %28 = load i64, i64* %dataLen22, align 8, !dbg !299
  %sub45 = sub i64 %28, 1, !dbg !300
  %arrayidx46 = getelementptr inbounds i8, i8* %27, i64 %sub45, !dbg !297
  store i8 0, i8* %arrayidx46, align 1, !dbg !301
  br label %if.end47, !dbg !302

if.end47:                                         ; preds = %if.then44, %land.lhs.true38, %if.then34
  br label %if.end50, !dbg !303

if.else48:                                        ; preds = %if.then27
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !304
  %29 = load i8*, i8** %data, align 8, !dbg !306
  %30 = load i64, i64* %dataLen22, align 8, !dbg !307
  %arrayidx49 = getelementptr inbounds i8, i8* %29, i64 %30, !dbg !306
  store i8 0, i8* %arrayidx49, align 1, !dbg !308
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.end47
  br label %if.end51, !dbg !309

if.end51:                                         ; preds = %if.end50, %if.else21
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end20
  %call53 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !310
  %tobool54 = icmp ne i32 %call53, 0, !dbg !310
  br i1 %tobool54, label %if.then55, label %if.else68, !dbg !312

if.then55:                                        ; preds = %if.end52
  call void @llvm.dbg.declare(metadata i32* %i, metadata !313, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.declare(metadata i32* %n, metadata !317, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !319, metadata !DIExpression()), !dbg !320
  %31 = load i8*, i8** %data, align 8, !dbg !321
  %call56 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n) #8, !dbg !323
  %cmp57 = icmp eq i32 %call56, 1, !dbg !324
  br i1 %cmp57, label %if.then59, label %if.end67, !dbg !325

if.then59:                                        ; preds = %if.then55
  %32 = load i32, i32* %n, align 4, !dbg !326
  %cmp60 = icmp slt i32 %32, 10000, !dbg !329
  br i1 %cmp60, label %if.then62, label %if.end66, !dbg !330

if.then62:                                        ; preds = %if.then59
  store i32 0, i32* %intVariable, align 4, !dbg !331
  store i32 0, i32* %i, align 4, !dbg !333
  br label %for.cond, !dbg !335

for.cond:                                         ; preds = %for.inc, %if.then62
  %33 = load i32, i32* %i, align 4, !dbg !336
  %34 = load i32, i32* %n, align 4, !dbg !338
  %cmp63 = icmp slt i32 %33, %34, !dbg !339
  br i1 %cmp63, label %for.body, label %for.end, !dbg !340

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %intVariable, align 4, !dbg !341
  %inc = add nsw i32 %35, 1, !dbg !341
  store i32 %inc, i32* %intVariable, align 4, !dbg !341
  br label %for.inc, !dbg !343

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !dbg !344
  %inc65 = add nsw i32 %36, 1, !dbg !344
  store i32 %inc65, i32* %i, align 4, !dbg !344
  br label %for.cond, !dbg !345, !llvm.loop !346

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %intVariable, align 4, !dbg !348
  call void @printIntLine(i32 %37), !dbg !349
  br label %if.end66, !dbg !350

if.end66:                                         ; preds = %for.end, %if.then59
  br label %if.end67, !dbg !351

if.end67:                                         ; preds = %if.end66, %if.then55
  br label %if.end89, !dbg !352

if.else68:                                        ; preds = %if.end52
  call void @llvm.dbg.declare(metadata i32* %i69, metadata !353, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.declare(metadata i32* %n70, metadata !357, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata i32* %intVariable71, metadata !359, metadata !DIExpression()), !dbg !360
  %38 = load i8*, i8** %data, align 8, !dbg !361
  %call72 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n70) #8, !dbg !363
  %cmp73 = icmp eq i32 %call72, 1, !dbg !364
  br i1 %cmp73, label %if.then75, label %if.end88, !dbg !365

if.then75:                                        ; preds = %if.else68
  %39 = load i32, i32* %n70, align 4, !dbg !366
  %cmp76 = icmp slt i32 %39, 10000, !dbg !369
  br i1 %cmp76, label %if.then78, label %if.end87, !dbg !370

if.then78:                                        ; preds = %if.then75
  store i32 0, i32* %intVariable71, align 4, !dbg !371
  store i32 0, i32* %i69, align 4, !dbg !373
  br label %for.cond79, !dbg !375

for.cond79:                                       ; preds = %for.inc84, %if.then78
  %40 = load i32, i32* %i69, align 4, !dbg !376
  %41 = load i32, i32* %n70, align 4, !dbg !378
  %cmp80 = icmp slt i32 %40, %41, !dbg !379
  br i1 %cmp80, label %for.body82, label %for.end86, !dbg !380

for.body82:                                       ; preds = %for.cond79
  %42 = load i32, i32* %intVariable71, align 4, !dbg !381
  %inc83 = add nsw i32 %42, 1, !dbg !381
  store i32 %inc83, i32* %intVariable71, align 4, !dbg !381
  br label %for.inc84, !dbg !383

for.inc84:                                        ; preds = %for.body82
  %43 = load i32, i32* %i69, align 4, !dbg !384
  %inc85 = add nsw i32 %43, 1, !dbg !384
  store i32 %inc85, i32* %i69, align 4, !dbg !384
  br label %for.cond79, !dbg !385, !llvm.loop !386

for.end86:                                        ; preds = %for.cond79
  %44 = load i32, i32* %intVariable71, align 4, !dbg !388
  call void @printIntLine(i32 %44), !dbg !389
  br label %if.end87, !dbg !390

if.end87:                                         ; preds = %for.end86, %if.then75
  br label %if.end88, !dbg !391

if.end88:                                         ; preds = %if.end87, %if.else68
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end67
  ret void, !dbg !392
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !393 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %i12 = alloca i32, align 4
  %n13 = alloca i32, align 4
  %intVariable14 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !394, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !396, metadata !DIExpression()), !dbg !397
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !397
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !397
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !398
  store i8* %arraydecay, i8** %data, align 8, !dbg !399
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !400
  %tobool = icmp ne i32 %call, 0, !dbg !400
  br i1 %tobool, label %if.then, label %if.else, !dbg !402

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !403
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !405
  br label %if.end, !dbg !406

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !407
  %call2 = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !409
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !410
  %tobool4 = icmp ne i32 %call3, 0, !dbg !410
  br i1 %tobool4, label %if.then5, label %if.else11, !dbg !412

if.then5:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !413, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.declare(metadata i32* %n, metadata !417, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !419, metadata !DIExpression()), !dbg !420
  %3 = load i8*, i8** %data, align 8, !dbg !421
  %call6 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n) #8, !dbg !423
  %cmp = icmp eq i32 %call6, 1, !dbg !424
  br i1 %cmp, label %if.then7, label %if.end10, !dbg !425

if.then7:                                         ; preds = %if.then5
  store i32 0, i32* %intVariable, align 4, !dbg !426
  store i32 0, i32* %i, align 4, !dbg !428
  br label %for.cond, !dbg !430

for.cond:                                         ; preds = %for.inc, %if.then7
  %4 = load i32, i32* %i, align 4, !dbg !431
  %5 = load i32, i32* %n, align 4, !dbg !433
  %cmp8 = icmp slt i32 %4, %5, !dbg !434
  br i1 %cmp8, label %for.body, label %for.end, !dbg !435

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !436
  %inc = add nsw i32 %6, 1, !dbg !436
  store i32 %inc, i32* %intVariable, align 4, !dbg !436
  br label %for.inc, !dbg !438

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !439
  %inc9 = add nsw i32 %7, 1, !dbg !439
  store i32 %inc9, i32* %i, align 4, !dbg !439
  br label %for.cond, !dbg !440, !llvm.loop !441

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !443
  call void @printIntLine(i32 %8), !dbg !444
  br label %if.end10, !dbg !445

if.end10:                                         ; preds = %for.end, %if.then5
  br label %if.end26, !dbg !446

if.else11:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i12, metadata !447, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.declare(metadata i32* %n13, metadata !451, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.declare(metadata i32* %intVariable14, metadata !453, metadata !DIExpression()), !dbg !454
  %9 = load i8*, i8** %data, align 8, !dbg !455
  %call15 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n13) #8, !dbg !457
  %cmp16 = icmp eq i32 %call15, 1, !dbg !458
  br i1 %cmp16, label %if.then17, label %if.end25, !dbg !459

if.then17:                                        ; preds = %if.else11
  store i32 0, i32* %intVariable14, align 4, !dbg !460
  store i32 0, i32* %i12, align 4, !dbg !462
  br label %for.cond18, !dbg !464

for.cond18:                                       ; preds = %for.inc22, %if.then17
  %10 = load i32, i32* %i12, align 4, !dbg !465
  %11 = load i32, i32* %n13, align 4, !dbg !467
  %cmp19 = icmp slt i32 %10, %11, !dbg !468
  br i1 %cmp19, label %for.body20, label %for.end24, !dbg !469

for.body20:                                       ; preds = %for.cond18
  %12 = load i32, i32* %intVariable14, align 4, !dbg !470
  %inc21 = add nsw i32 %12, 1, !dbg !470
  store i32 %inc21, i32* %intVariable14, align 4, !dbg !470
  br label %for.inc22, !dbg !472

for.inc22:                                        ; preds = %for.body20
  %13 = load i32, i32* %i12, align 4, !dbg !473
  %inc23 = add nsw i32 %13, 1, !dbg !473
  store i32 %inc23, i32* %i12, align 4, !dbg !473
  br label %for.cond18, !dbg !474, !llvm.loop !475

for.end24:                                        ; preds = %for.cond18
  %14 = load i32, i32* %intVariable14, align 4, !dbg !477
  call void @printIntLine(i32 %14), !dbg !478
  br label %if.end25, !dbg !479

if.end25:                                         ; preds = %for.end24, %if.else11
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end10
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_12_good() #0 !dbg !481 {
entry:
  call void @goodB2G(), !dbg !482
  call void @goodG2B(), !dbg !483
  ret void, !dbg !484
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !485 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !488, metadata !DIExpression()), !dbg !489
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !490
  %0 = load i8*, i8** %line.addr, align 8, !dbg !491
  %cmp = icmp ne i8* %0, null, !dbg !493
  br i1 %cmp, label %if.then, label %if.end, !dbg !494

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !495
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !497
  br label %if.end, !dbg !498

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !499
  ret void, !dbg !500
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !501 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !502, metadata !DIExpression()), !dbg !503
  %0 = load i8*, i8** %line.addr, align 8, !dbg !504
  %cmp = icmp ne i8* %0, null, !dbg !506
  br i1 %cmp, label %if.then, label %if.end, !dbg !507

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !508
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !510
  br label %if.end, !dbg !511

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !513 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !518, metadata !DIExpression()), !dbg !519
  %0 = load i32*, i32** %line.addr, align 8, !dbg !520
  %cmp = icmp ne i32* %0, null, !dbg !522
  br i1 %cmp, label %if.then, label %if.end, !dbg !523

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !524
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !526
  br label %if.end, !dbg !527

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !528
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !529 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !532, metadata !DIExpression()), !dbg !533
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !534
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !535
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !537 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !541, metadata !DIExpression()), !dbg !542
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !543
  %conv = sext i16 %0 to i32, !dbg !543
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !544
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !546 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !550, metadata !DIExpression()), !dbg !551
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !552
  %conv = fpext float %0 to double, !dbg !552
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !553
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !555 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !559, metadata !DIExpression()), !dbg !560
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !561
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !562
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !564 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !571, metadata !DIExpression()), !dbg !572
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !573
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !574
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !576 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !579, metadata !DIExpression()), !dbg !580
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !581
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !582
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !584 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !587, metadata !DIExpression()), !dbg !588
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !589
  %conv = sext i8 %0 to i32, !dbg !589
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !590
  ret void, !dbg !591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !592 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !595, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !597, metadata !DIExpression()), !dbg !601
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !602
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !603
  store i32 %0, i32* %arrayidx, align 4, !dbg !604
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !605
  store i32 0, i32* %arrayidx1, align 4, !dbg !606
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !607
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !608
  ret void, !dbg !609
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !610 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !613, metadata !DIExpression()), !dbg !614
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !615
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !616
  ret void, !dbg !617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !618 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !621, metadata !DIExpression()), !dbg !622
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !623
  %conv = zext i8 %0 to i32, !dbg !623
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !624
  ret void, !dbg !625
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !626 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !630, metadata !DIExpression()), !dbg !631
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !632
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !633
  ret void, !dbg !634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !635 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !645, metadata !DIExpression()), !dbg !646
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !647
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !648
  %1 = load i32, i32* %intOne, align 4, !dbg !648
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !649
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !650
  %3 = load i32, i32* %intTwo, align 4, !dbg !650
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !651
  ret void, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !653 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !657, metadata !DIExpression()), !dbg !658
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !659, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.declare(metadata i64* %i, metadata !661, metadata !DIExpression()), !dbg !662
  store i64 0, i64* %i, align 8, !dbg !663
  br label %for.cond, !dbg !665

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !666
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !668
  %cmp = icmp ult i64 %0, %1, !dbg !669
  br i1 %cmp, label %for.body, label %for.end, !dbg !670

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !671
  %3 = load i64, i64* %i, align 8, !dbg !673
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !671
  %4 = load i8, i8* %arrayidx, align 1, !dbg !671
  %conv = zext i8 %4 to i32, !dbg !671
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !674
  br label %for.inc, !dbg !675

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !676
  %inc = add i64 %5, 1, !dbg !676
  store i64 %inc, i64* %i, align 8, !dbg !676
  br label %for.cond, !dbg !677, !llvm.loop !678

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !680
  ret void, !dbg !681
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !682 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !685, metadata !DIExpression()), !dbg !686
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !687, metadata !DIExpression()), !dbg !688
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !689, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !691, metadata !DIExpression()), !dbg !692
  store i64 0, i64* %numWritten, align 8, !dbg !692
  br label %while.cond, !dbg !693

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !694
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !695
  %cmp = icmp ult i64 %0, %1, !dbg !696
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !697

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !698
  %2 = load i16*, i16** %call, align 8, !dbg !698
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !698
  %4 = load i64, i64* %numWritten, align 8, !dbg !698
  %mul = mul i64 2, %4, !dbg !698
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !698
  %5 = load i8, i8* %arrayidx, align 1, !dbg !698
  %conv = sext i8 %5 to i32, !dbg !698
  %idxprom = sext i32 %conv to i64, !dbg !698
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !698
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !698
  %conv2 = zext i16 %6 to i32, !dbg !698
  %and = and i32 %conv2, 4096, !dbg !698
  %tobool = icmp ne i32 %and, 0, !dbg !698
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !699

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !700
  %7 = load i16*, i16** %call3, align 8, !dbg !700
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !700
  %9 = load i64, i64* %numWritten, align 8, !dbg !700
  %mul4 = mul i64 2, %9, !dbg !700
  %add = add i64 %mul4, 1, !dbg !700
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !700
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !700
  %conv6 = sext i8 %10 to i32, !dbg !700
  %idxprom7 = sext i32 %conv6 to i64, !dbg !700
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !700
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !700
  %conv9 = zext i16 %11 to i32, !dbg !700
  %and10 = and i32 %conv9, 4096, !dbg !700
  %tobool11 = icmp ne i32 %and10, 0, !dbg !699
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !701
  br i1 %12, label %while.body, label %while.end, !dbg !693

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !702, metadata !DIExpression()), !dbg !704
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !705
  %14 = load i64, i64* %numWritten, align 8, !dbg !706
  %mul12 = mul i64 2, %14, !dbg !707
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !705
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !708
  %15 = load i32, i32* %byte, align 4, !dbg !709
  %conv15 = trunc i32 %15 to i8, !dbg !710
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !711
  %17 = load i64, i64* %numWritten, align 8, !dbg !712
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !711
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !713
  %18 = load i64, i64* %numWritten, align 8, !dbg !714
  %inc = add i64 %18, 1, !dbg !714
  store i64 %inc, i64* %numWritten, align 8, !dbg !714
  br label %while.cond, !dbg !693, !llvm.loop !715

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !717
  ret i64 %19, !dbg !718
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !719 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !722, metadata !DIExpression()), !dbg !723
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !724, metadata !DIExpression()), !dbg !725
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !726, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !728, metadata !DIExpression()), !dbg !729
  store i64 0, i64* %numWritten, align 8, !dbg !729
  br label %while.cond, !dbg !730

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !731
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !732
  %cmp = icmp ult i64 %0, %1, !dbg !733
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !734

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !735
  %3 = load i64, i64* %numWritten, align 8, !dbg !736
  %mul = mul i64 2, %3, !dbg !737
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !735
  %4 = load i32, i32* %arrayidx, align 4, !dbg !735
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !738
  %tobool = icmp ne i32 %call, 0, !dbg !738
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !739

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !740
  %6 = load i64, i64* %numWritten, align 8, !dbg !741
  %mul1 = mul i64 2, %6, !dbg !742
  %add = add i64 %mul1, 1, !dbg !743
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !740
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !740
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !744
  %tobool4 = icmp ne i32 %call3, 0, !dbg !739
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !745
  br i1 %8, label %while.body, label %while.end, !dbg !730

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !746, metadata !DIExpression()), !dbg !748
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !749
  %10 = load i64, i64* %numWritten, align 8, !dbg !750
  %mul5 = mul i64 2, %10, !dbg !751
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !749
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !752
  %11 = load i32, i32* %byte, align 4, !dbg !753
  %conv = trunc i32 %11 to i8, !dbg !754
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !755
  %13 = load i64, i64* %numWritten, align 8, !dbg !756
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !755
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !757
  %14 = load i64, i64* %numWritten, align 8, !dbg !758
  %inc = add i64 %14, 1, !dbg !758
  store i64 %inc, i64* %numWritten, align 8, !dbg !758
  br label %while.cond, !dbg !730, !llvm.loop !759

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !761
  ret i64 %15, !dbg !762
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !763 {
entry:
  ret i32 1, !dbg !766
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !767 {
entry:
  ret i32 0, !dbg !768
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !769 {
entry:
  %call = call i32 @rand() #8, !dbg !770
  %rem = srem i32 %call, 2, !dbg !771
  ret i32 %rem, !dbg !772
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !773 {
entry:
  ret void, !dbg !774
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !775 {
entry:
  ret void, !dbg !776
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !777 {
entry:
  ret void, !dbg !778
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !779 {
entry:
  ret void, !dbg !780
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !781 {
entry:
  ret void, !dbg !782
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !783 {
entry:
  ret void, !dbg !784
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !785 {
entry:
  ret void, !dbg !786
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !787 {
entry:
  ret void, !dbg !788
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !789 {
entry:
  ret void, !dbg !790
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !791 {
entry:
  ret void, !dbg !792
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !793 {
entry:
  ret void, !dbg !794
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !795 {
entry:
  ret void, !dbg !796
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !797 {
entry:
  ret void, !dbg !798
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !799 {
entry:
  ret void, !dbg !800
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !801 {
entry:
  ret void, !dbg !802
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !803 {
entry:
  ret void, !dbg !804
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !805 {
entry:
  ret void, !dbg !806
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !807 {
entry:
  ret void, !dbg !808
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_989/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_12.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_989/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_12_bad", scope: !45, file: !45, line: 29, type: !53, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!64 = !DILocation(line: 34, column: 8, scope: !65)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 34, column: 8)
!66 = !DILocation(line: 34, column: 8, scope: !52)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !45, line: 38, type: !70)
!68 = distinct !DILexicalBlock(scope: !69, file: !45, line: 36, column: 9)
!69 = distinct !DILexicalBlock(scope: !65, file: !45, line: 35, column: 5)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DILocation(line: 38, column: 20, scope: !68)
!74 = !DILocation(line: 38, column: 37, scope: !68)
!75 = !DILocation(line: 38, column: 30, scope: !68)
!76 = !DILocation(line: 40, column: 21, scope: !77)
!77 = distinct !DILexicalBlock(scope: !68, file: !45, line: 40, column: 17)
!78 = !DILocation(line: 40, column: 20, scope: !77)
!79 = !DILocation(line: 40, column: 29, scope: !77)
!80 = !DILocation(line: 40, column: 17, scope: !68)
!81 = !DILocation(line: 43, column: 27, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !45, line: 43, column: 21)
!83 = distinct !DILexicalBlock(scope: !77, file: !45, line: 41, column: 13)
!84 = !DILocation(line: 43, column: 32, scope: !82)
!85 = !DILocation(line: 43, column: 31, scope: !82)
!86 = !DILocation(line: 43, column: 51, scope: !82)
!87 = !DILocation(line: 43, column: 50, scope: !82)
!88 = !DILocation(line: 43, column: 41, scope: !82)
!89 = !DILocation(line: 43, column: 61, scope: !82)
!90 = !DILocation(line: 43, column: 21, scope: !82)
!91 = !DILocation(line: 43, column: 68, scope: !82)
!92 = !DILocation(line: 43, column: 21, scope: !83)
!93 = !DILocation(line: 47, column: 38, scope: !94)
!94 = distinct !DILexicalBlock(scope: !82, file: !45, line: 44, column: 17)
!95 = !DILocation(line: 47, column: 31, scope: !94)
!96 = !DILocation(line: 47, column: 29, scope: !94)
!97 = !DILocation(line: 48, column: 25, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !45, line: 48, column: 25)
!99 = !DILocation(line: 48, column: 33, scope: !98)
!100 = !DILocation(line: 48, column: 37, scope: !98)
!101 = !DILocation(line: 48, column: 40, scope: !98)
!102 = !DILocation(line: 48, column: 45, scope: !98)
!103 = !DILocation(line: 48, column: 52, scope: !98)
!104 = !DILocation(line: 48, column: 56, scope: !98)
!105 = !DILocation(line: 48, column: 25, scope: !94)
!106 = !DILocation(line: 50, column: 25, scope: !107)
!107 = distinct !DILexicalBlock(scope: !98, file: !45, line: 49, column: 21)
!108 = !DILocation(line: 50, column: 30, scope: !107)
!109 = !DILocation(line: 50, column: 37, scope: !107)
!110 = !DILocation(line: 50, column: 41, scope: !107)
!111 = !DILocation(line: 51, column: 21, scope: !107)
!112 = !DILocation(line: 52, column: 17, scope: !94)
!113 = !DILocation(line: 55, column: 21, scope: !114)
!114 = distinct !DILexicalBlock(scope: !82, file: !45, line: 54, column: 17)
!115 = !DILocation(line: 57, column: 21, scope: !114)
!116 = !DILocation(line: 57, column: 26, scope: !114)
!117 = !DILocation(line: 57, column: 35, scope: !114)
!118 = !DILocation(line: 59, column: 13, scope: !83)
!119 = !DILocation(line: 61, column: 5, scope: !69)
!120 = !DILocation(line: 65, column: 16, scope: !121)
!121 = distinct !DILexicalBlock(scope: !65, file: !45, line: 63, column: 5)
!122 = !DILocation(line: 65, column: 9, scope: !121)
!123 = !DILocation(line: 67, column: 8, scope: !124)
!124 = distinct !DILexicalBlock(scope: !52, file: !45, line: 67, column: 8)
!125 = !DILocation(line: 67, column: 8, scope: !52)
!126 = !DILocalVariable(name: "i", scope: !127, file: !45, line: 70, type: !23)
!127 = distinct !DILexicalBlock(scope: !128, file: !45, line: 69, column: 9)
!128 = distinct !DILexicalBlock(scope: !124, file: !45, line: 68, column: 5)
!129 = !DILocation(line: 70, column: 17, scope: !127)
!130 = !DILocalVariable(name: "n", scope: !127, file: !45, line: 70, type: !23)
!131 = !DILocation(line: 70, column: 20, scope: !127)
!132 = !DILocalVariable(name: "intVariable", scope: !127, file: !45, line: 70, type: !23)
!133 = !DILocation(line: 70, column: 23, scope: !127)
!134 = !DILocation(line: 71, column: 24, scope: !135)
!135 = distinct !DILexicalBlock(scope: !127, file: !45, line: 71, column: 17)
!136 = !DILocation(line: 71, column: 17, scope: !135)
!137 = !DILocation(line: 71, column: 40, scope: !135)
!138 = !DILocation(line: 71, column: 17, scope: !127)
!139 = !DILocation(line: 74, column: 29, scope: !140)
!140 = distinct !DILexicalBlock(scope: !135, file: !45, line: 72, column: 13)
!141 = !DILocation(line: 75, column: 24, scope: !142)
!142 = distinct !DILexicalBlock(scope: !140, file: !45, line: 75, column: 17)
!143 = !DILocation(line: 75, column: 22, scope: !142)
!144 = !DILocation(line: 75, column: 29, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !45, line: 75, column: 17)
!146 = !DILocation(line: 75, column: 33, scope: !145)
!147 = !DILocation(line: 75, column: 31, scope: !145)
!148 = !DILocation(line: 75, column: 17, scope: !142)
!149 = !DILocation(line: 78, column: 32, scope: !150)
!150 = distinct !DILexicalBlock(scope: !145, file: !45, line: 76, column: 17)
!151 = !DILocation(line: 79, column: 17, scope: !150)
!152 = !DILocation(line: 75, column: 37, scope: !145)
!153 = !DILocation(line: 75, column: 17, scope: !145)
!154 = distinct !{!154, !148, !155, !156}
!155 = !DILocation(line: 79, column: 17, scope: !142)
!156 = !{!"llvm.loop.mustprogress"}
!157 = !DILocation(line: 80, column: 30, scope: !140)
!158 = !DILocation(line: 80, column: 17, scope: !140)
!159 = !DILocation(line: 81, column: 13, scope: !140)
!160 = !DILocation(line: 83, column: 5, scope: !128)
!161 = !DILocalVariable(name: "i", scope: !162, file: !45, line: 87, type: !23)
!162 = distinct !DILexicalBlock(scope: !163, file: !45, line: 86, column: 9)
!163 = distinct !DILexicalBlock(scope: !124, file: !45, line: 85, column: 5)
!164 = !DILocation(line: 87, column: 17, scope: !162)
!165 = !DILocalVariable(name: "n", scope: !162, file: !45, line: 87, type: !23)
!166 = !DILocation(line: 87, column: 20, scope: !162)
!167 = !DILocalVariable(name: "intVariable", scope: !162, file: !45, line: 87, type: !23)
!168 = !DILocation(line: 87, column: 23, scope: !162)
!169 = !DILocation(line: 88, column: 24, scope: !170)
!170 = distinct !DILexicalBlock(scope: !162, file: !45, line: 88, column: 17)
!171 = !DILocation(line: 88, column: 17, scope: !170)
!172 = !DILocation(line: 88, column: 40, scope: !170)
!173 = !DILocation(line: 88, column: 17, scope: !162)
!174 = !DILocation(line: 91, column: 21, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !45, line: 91, column: 21)
!176 = distinct !DILexicalBlock(scope: !170, file: !45, line: 89, column: 13)
!177 = !DILocation(line: 91, column: 23, scope: !175)
!178 = !DILocation(line: 91, column: 21, scope: !176)
!179 = !DILocation(line: 93, column: 33, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !45, line: 92, column: 17)
!181 = !DILocation(line: 94, column: 28, scope: !182)
!182 = distinct !DILexicalBlock(scope: !180, file: !45, line: 94, column: 21)
!183 = !DILocation(line: 94, column: 26, scope: !182)
!184 = !DILocation(line: 94, column: 33, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !45, line: 94, column: 21)
!186 = !DILocation(line: 94, column: 37, scope: !185)
!187 = !DILocation(line: 94, column: 35, scope: !185)
!188 = !DILocation(line: 94, column: 21, scope: !182)
!189 = !DILocation(line: 97, column: 36, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !45, line: 95, column: 21)
!191 = !DILocation(line: 98, column: 21, scope: !190)
!192 = !DILocation(line: 94, column: 41, scope: !185)
!193 = !DILocation(line: 94, column: 21, scope: !185)
!194 = distinct !{!194, !188, !195, !156}
!195 = !DILocation(line: 98, column: 21, scope: !182)
!196 = !DILocation(line: 99, column: 34, scope: !180)
!197 = !DILocation(line: 99, column: 21, scope: !180)
!198 = !DILocation(line: 100, column: 17, scope: !180)
!199 = !DILocation(line: 101, column: 13, scope: !176)
!200 = !DILocation(line: 104, column: 1, scope: !52)
!201 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 113, type: !53, scopeLine: 114, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!202 = !DILocalVariable(name: "data", scope: !201, file: !45, line: 115, type: !42)
!203 = !DILocation(line: 115, column: 12, scope: !201)
!204 = !DILocalVariable(name: "dataBuffer", scope: !201, file: !45, line: 116, type: !58)
!205 = !DILocation(line: 116, column: 10, scope: !201)
!206 = !DILocation(line: 117, column: 12, scope: !201)
!207 = !DILocation(line: 117, column: 10, scope: !201)
!208 = !DILocation(line: 118, column: 8, scope: !209)
!209 = distinct !DILexicalBlock(scope: !201, file: !45, line: 118, column: 8)
!210 = !DILocation(line: 118, column: 8, scope: !201)
!211 = !DILocalVariable(name: "dataLen", scope: !212, file: !45, line: 122, type: !70)
!212 = distinct !DILexicalBlock(scope: !213, file: !45, line: 120, column: 9)
!213 = distinct !DILexicalBlock(scope: !209, file: !45, line: 119, column: 5)
!214 = !DILocation(line: 122, column: 20, scope: !212)
!215 = !DILocation(line: 122, column: 37, scope: !212)
!216 = !DILocation(line: 122, column: 30, scope: !212)
!217 = !DILocation(line: 124, column: 21, scope: !218)
!218 = distinct !DILexicalBlock(scope: !212, file: !45, line: 124, column: 17)
!219 = !DILocation(line: 124, column: 20, scope: !218)
!220 = !DILocation(line: 124, column: 29, scope: !218)
!221 = !DILocation(line: 124, column: 17, scope: !212)
!222 = !DILocation(line: 127, column: 27, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !45, line: 127, column: 21)
!224 = distinct !DILexicalBlock(scope: !218, file: !45, line: 125, column: 13)
!225 = !DILocation(line: 127, column: 32, scope: !223)
!226 = !DILocation(line: 127, column: 31, scope: !223)
!227 = !DILocation(line: 127, column: 51, scope: !223)
!228 = !DILocation(line: 127, column: 50, scope: !223)
!229 = !DILocation(line: 127, column: 41, scope: !223)
!230 = !DILocation(line: 127, column: 61, scope: !223)
!231 = !DILocation(line: 127, column: 21, scope: !223)
!232 = !DILocation(line: 127, column: 68, scope: !223)
!233 = !DILocation(line: 127, column: 21, scope: !224)
!234 = !DILocation(line: 131, column: 38, scope: !235)
!235 = distinct !DILexicalBlock(scope: !223, file: !45, line: 128, column: 17)
!236 = !DILocation(line: 131, column: 31, scope: !235)
!237 = !DILocation(line: 131, column: 29, scope: !235)
!238 = !DILocation(line: 132, column: 25, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !45, line: 132, column: 25)
!240 = !DILocation(line: 132, column: 33, scope: !239)
!241 = !DILocation(line: 132, column: 37, scope: !239)
!242 = !DILocation(line: 132, column: 40, scope: !239)
!243 = !DILocation(line: 132, column: 45, scope: !239)
!244 = !DILocation(line: 132, column: 52, scope: !239)
!245 = !DILocation(line: 132, column: 56, scope: !239)
!246 = !DILocation(line: 132, column: 25, scope: !235)
!247 = !DILocation(line: 134, column: 25, scope: !248)
!248 = distinct !DILexicalBlock(scope: !239, file: !45, line: 133, column: 21)
!249 = !DILocation(line: 134, column: 30, scope: !248)
!250 = !DILocation(line: 134, column: 37, scope: !248)
!251 = !DILocation(line: 134, column: 41, scope: !248)
!252 = !DILocation(line: 135, column: 21, scope: !248)
!253 = !DILocation(line: 136, column: 17, scope: !235)
!254 = !DILocation(line: 139, column: 21, scope: !255)
!255 = distinct !DILexicalBlock(scope: !223, file: !45, line: 138, column: 17)
!256 = !DILocation(line: 141, column: 21, scope: !255)
!257 = !DILocation(line: 141, column: 26, scope: !255)
!258 = !DILocation(line: 141, column: 35, scope: !255)
!259 = !DILocation(line: 143, column: 13, scope: !224)
!260 = !DILocation(line: 145, column: 5, scope: !213)
!261 = !DILocalVariable(name: "dataLen", scope: !262, file: !45, line: 150, type: !70)
!262 = distinct !DILexicalBlock(scope: !263, file: !45, line: 148, column: 9)
!263 = distinct !DILexicalBlock(scope: !209, file: !45, line: 147, column: 5)
!264 = !DILocation(line: 150, column: 20, scope: !262)
!265 = !DILocation(line: 150, column: 37, scope: !262)
!266 = !DILocation(line: 150, column: 30, scope: !262)
!267 = !DILocation(line: 152, column: 21, scope: !268)
!268 = distinct !DILexicalBlock(scope: !262, file: !45, line: 152, column: 17)
!269 = !DILocation(line: 152, column: 20, scope: !268)
!270 = !DILocation(line: 152, column: 29, scope: !268)
!271 = !DILocation(line: 152, column: 17, scope: !262)
!272 = !DILocation(line: 155, column: 27, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !45, line: 155, column: 21)
!274 = distinct !DILexicalBlock(scope: !268, file: !45, line: 153, column: 13)
!275 = !DILocation(line: 155, column: 32, scope: !273)
!276 = !DILocation(line: 155, column: 31, scope: !273)
!277 = !DILocation(line: 155, column: 51, scope: !273)
!278 = !DILocation(line: 155, column: 50, scope: !273)
!279 = !DILocation(line: 155, column: 41, scope: !273)
!280 = !DILocation(line: 155, column: 61, scope: !273)
!281 = !DILocation(line: 155, column: 21, scope: !273)
!282 = !DILocation(line: 155, column: 68, scope: !273)
!283 = !DILocation(line: 155, column: 21, scope: !274)
!284 = !DILocation(line: 159, column: 38, scope: !285)
!285 = distinct !DILexicalBlock(scope: !273, file: !45, line: 156, column: 17)
!286 = !DILocation(line: 159, column: 31, scope: !285)
!287 = !DILocation(line: 159, column: 29, scope: !285)
!288 = !DILocation(line: 160, column: 25, scope: !289)
!289 = distinct !DILexicalBlock(scope: !285, file: !45, line: 160, column: 25)
!290 = !DILocation(line: 160, column: 33, scope: !289)
!291 = !DILocation(line: 160, column: 37, scope: !289)
!292 = !DILocation(line: 160, column: 40, scope: !289)
!293 = !DILocation(line: 160, column: 45, scope: !289)
!294 = !DILocation(line: 160, column: 52, scope: !289)
!295 = !DILocation(line: 160, column: 56, scope: !289)
!296 = !DILocation(line: 160, column: 25, scope: !285)
!297 = !DILocation(line: 162, column: 25, scope: !298)
!298 = distinct !DILexicalBlock(scope: !289, file: !45, line: 161, column: 21)
!299 = !DILocation(line: 162, column: 30, scope: !298)
!300 = !DILocation(line: 162, column: 37, scope: !298)
!301 = !DILocation(line: 162, column: 41, scope: !298)
!302 = !DILocation(line: 163, column: 21, scope: !298)
!303 = !DILocation(line: 164, column: 17, scope: !285)
!304 = !DILocation(line: 167, column: 21, scope: !305)
!305 = distinct !DILexicalBlock(scope: !273, file: !45, line: 166, column: 17)
!306 = !DILocation(line: 169, column: 21, scope: !305)
!307 = !DILocation(line: 169, column: 26, scope: !305)
!308 = !DILocation(line: 169, column: 35, scope: !305)
!309 = !DILocation(line: 171, column: 13, scope: !274)
!310 = !DILocation(line: 174, column: 8, scope: !311)
!311 = distinct !DILexicalBlock(scope: !201, file: !45, line: 174, column: 8)
!312 = !DILocation(line: 174, column: 8, scope: !201)
!313 = !DILocalVariable(name: "i", scope: !314, file: !45, line: 177, type: !23)
!314 = distinct !DILexicalBlock(scope: !315, file: !45, line: 176, column: 9)
!315 = distinct !DILexicalBlock(scope: !311, file: !45, line: 175, column: 5)
!316 = !DILocation(line: 177, column: 17, scope: !314)
!317 = !DILocalVariable(name: "n", scope: !314, file: !45, line: 177, type: !23)
!318 = !DILocation(line: 177, column: 20, scope: !314)
!319 = !DILocalVariable(name: "intVariable", scope: !314, file: !45, line: 177, type: !23)
!320 = !DILocation(line: 177, column: 23, scope: !314)
!321 = !DILocation(line: 178, column: 24, scope: !322)
!322 = distinct !DILexicalBlock(scope: !314, file: !45, line: 178, column: 17)
!323 = !DILocation(line: 178, column: 17, scope: !322)
!324 = !DILocation(line: 178, column: 40, scope: !322)
!325 = !DILocation(line: 178, column: 17, scope: !314)
!326 = !DILocation(line: 181, column: 21, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !45, line: 181, column: 21)
!328 = distinct !DILexicalBlock(scope: !322, file: !45, line: 179, column: 13)
!329 = !DILocation(line: 181, column: 23, scope: !327)
!330 = !DILocation(line: 181, column: 21, scope: !328)
!331 = !DILocation(line: 183, column: 33, scope: !332)
!332 = distinct !DILexicalBlock(scope: !327, file: !45, line: 182, column: 17)
!333 = !DILocation(line: 184, column: 28, scope: !334)
!334 = distinct !DILexicalBlock(scope: !332, file: !45, line: 184, column: 21)
!335 = !DILocation(line: 184, column: 26, scope: !334)
!336 = !DILocation(line: 184, column: 33, scope: !337)
!337 = distinct !DILexicalBlock(scope: !334, file: !45, line: 184, column: 21)
!338 = !DILocation(line: 184, column: 37, scope: !337)
!339 = !DILocation(line: 184, column: 35, scope: !337)
!340 = !DILocation(line: 184, column: 21, scope: !334)
!341 = !DILocation(line: 187, column: 36, scope: !342)
!342 = distinct !DILexicalBlock(scope: !337, file: !45, line: 185, column: 21)
!343 = !DILocation(line: 188, column: 21, scope: !342)
!344 = !DILocation(line: 184, column: 41, scope: !337)
!345 = !DILocation(line: 184, column: 21, scope: !337)
!346 = distinct !{!346, !340, !347, !156}
!347 = !DILocation(line: 188, column: 21, scope: !334)
!348 = !DILocation(line: 189, column: 34, scope: !332)
!349 = !DILocation(line: 189, column: 21, scope: !332)
!350 = !DILocation(line: 190, column: 17, scope: !332)
!351 = !DILocation(line: 191, column: 13, scope: !328)
!352 = !DILocation(line: 193, column: 5, scope: !315)
!353 = !DILocalVariable(name: "i", scope: !354, file: !45, line: 197, type: !23)
!354 = distinct !DILexicalBlock(scope: !355, file: !45, line: 196, column: 9)
!355 = distinct !DILexicalBlock(scope: !311, file: !45, line: 195, column: 5)
!356 = !DILocation(line: 197, column: 17, scope: !354)
!357 = !DILocalVariable(name: "n", scope: !354, file: !45, line: 197, type: !23)
!358 = !DILocation(line: 197, column: 20, scope: !354)
!359 = !DILocalVariable(name: "intVariable", scope: !354, file: !45, line: 197, type: !23)
!360 = !DILocation(line: 197, column: 23, scope: !354)
!361 = !DILocation(line: 198, column: 24, scope: !362)
!362 = distinct !DILexicalBlock(scope: !354, file: !45, line: 198, column: 17)
!363 = !DILocation(line: 198, column: 17, scope: !362)
!364 = !DILocation(line: 198, column: 40, scope: !362)
!365 = !DILocation(line: 198, column: 17, scope: !354)
!366 = !DILocation(line: 201, column: 21, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !45, line: 201, column: 21)
!368 = distinct !DILexicalBlock(scope: !362, file: !45, line: 199, column: 13)
!369 = !DILocation(line: 201, column: 23, scope: !367)
!370 = !DILocation(line: 201, column: 21, scope: !368)
!371 = !DILocation(line: 203, column: 33, scope: !372)
!372 = distinct !DILexicalBlock(scope: !367, file: !45, line: 202, column: 17)
!373 = !DILocation(line: 204, column: 28, scope: !374)
!374 = distinct !DILexicalBlock(scope: !372, file: !45, line: 204, column: 21)
!375 = !DILocation(line: 204, column: 26, scope: !374)
!376 = !DILocation(line: 204, column: 33, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !45, line: 204, column: 21)
!378 = !DILocation(line: 204, column: 37, scope: !377)
!379 = !DILocation(line: 204, column: 35, scope: !377)
!380 = !DILocation(line: 204, column: 21, scope: !374)
!381 = !DILocation(line: 207, column: 36, scope: !382)
!382 = distinct !DILexicalBlock(scope: !377, file: !45, line: 205, column: 21)
!383 = !DILocation(line: 208, column: 21, scope: !382)
!384 = !DILocation(line: 204, column: 41, scope: !377)
!385 = !DILocation(line: 204, column: 21, scope: !377)
!386 = distinct !{!386, !380, !387, !156}
!387 = !DILocation(line: 208, column: 21, scope: !374)
!388 = !DILocation(line: 209, column: 34, scope: !372)
!389 = !DILocation(line: 209, column: 21, scope: !372)
!390 = !DILocation(line: 210, column: 17, scope: !372)
!391 = !DILocation(line: 211, column: 13, scope: !368)
!392 = !DILocation(line: 214, column: 1, scope: !201)
!393 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 219, type: !53, scopeLine: 220, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!394 = !DILocalVariable(name: "data", scope: !393, file: !45, line: 221, type: !42)
!395 = !DILocation(line: 221, column: 12, scope: !393)
!396 = !DILocalVariable(name: "dataBuffer", scope: !393, file: !45, line: 222, type: !58)
!397 = !DILocation(line: 222, column: 10, scope: !393)
!398 = !DILocation(line: 223, column: 12, scope: !393)
!399 = !DILocation(line: 223, column: 10, scope: !393)
!400 = !DILocation(line: 224, column: 8, scope: !401)
!401 = distinct !DILexicalBlock(scope: !393, file: !45, line: 224, column: 8)
!402 = !DILocation(line: 224, column: 8, scope: !393)
!403 = !DILocation(line: 227, column: 16, scope: !404)
!404 = distinct !DILexicalBlock(scope: !401, file: !45, line: 225, column: 5)
!405 = !DILocation(line: 227, column: 9, scope: !404)
!406 = !DILocation(line: 228, column: 5, scope: !404)
!407 = !DILocation(line: 232, column: 16, scope: !408)
!408 = distinct !DILexicalBlock(scope: !401, file: !45, line: 230, column: 5)
!409 = !DILocation(line: 232, column: 9, scope: !408)
!410 = !DILocation(line: 234, column: 8, scope: !411)
!411 = distinct !DILexicalBlock(scope: !393, file: !45, line: 234, column: 8)
!412 = !DILocation(line: 234, column: 8, scope: !393)
!413 = !DILocalVariable(name: "i", scope: !414, file: !45, line: 237, type: !23)
!414 = distinct !DILexicalBlock(scope: !415, file: !45, line: 236, column: 9)
!415 = distinct !DILexicalBlock(scope: !411, file: !45, line: 235, column: 5)
!416 = !DILocation(line: 237, column: 17, scope: !414)
!417 = !DILocalVariable(name: "n", scope: !414, file: !45, line: 237, type: !23)
!418 = !DILocation(line: 237, column: 20, scope: !414)
!419 = !DILocalVariable(name: "intVariable", scope: !414, file: !45, line: 237, type: !23)
!420 = !DILocation(line: 237, column: 23, scope: !414)
!421 = !DILocation(line: 238, column: 24, scope: !422)
!422 = distinct !DILexicalBlock(scope: !414, file: !45, line: 238, column: 17)
!423 = !DILocation(line: 238, column: 17, scope: !422)
!424 = !DILocation(line: 238, column: 40, scope: !422)
!425 = !DILocation(line: 238, column: 17, scope: !414)
!426 = !DILocation(line: 241, column: 29, scope: !427)
!427 = distinct !DILexicalBlock(scope: !422, file: !45, line: 239, column: 13)
!428 = !DILocation(line: 242, column: 24, scope: !429)
!429 = distinct !DILexicalBlock(scope: !427, file: !45, line: 242, column: 17)
!430 = !DILocation(line: 242, column: 22, scope: !429)
!431 = !DILocation(line: 242, column: 29, scope: !432)
!432 = distinct !DILexicalBlock(scope: !429, file: !45, line: 242, column: 17)
!433 = !DILocation(line: 242, column: 33, scope: !432)
!434 = !DILocation(line: 242, column: 31, scope: !432)
!435 = !DILocation(line: 242, column: 17, scope: !429)
!436 = !DILocation(line: 245, column: 32, scope: !437)
!437 = distinct !DILexicalBlock(scope: !432, file: !45, line: 243, column: 17)
!438 = !DILocation(line: 246, column: 17, scope: !437)
!439 = !DILocation(line: 242, column: 37, scope: !432)
!440 = !DILocation(line: 242, column: 17, scope: !432)
!441 = distinct !{!441, !435, !442, !156}
!442 = !DILocation(line: 246, column: 17, scope: !429)
!443 = !DILocation(line: 247, column: 30, scope: !427)
!444 = !DILocation(line: 247, column: 17, scope: !427)
!445 = !DILocation(line: 248, column: 13, scope: !427)
!446 = !DILocation(line: 250, column: 5, scope: !415)
!447 = !DILocalVariable(name: "i", scope: !448, file: !45, line: 254, type: !23)
!448 = distinct !DILexicalBlock(scope: !449, file: !45, line: 253, column: 9)
!449 = distinct !DILexicalBlock(scope: !411, file: !45, line: 252, column: 5)
!450 = !DILocation(line: 254, column: 17, scope: !448)
!451 = !DILocalVariable(name: "n", scope: !448, file: !45, line: 254, type: !23)
!452 = !DILocation(line: 254, column: 20, scope: !448)
!453 = !DILocalVariable(name: "intVariable", scope: !448, file: !45, line: 254, type: !23)
!454 = !DILocation(line: 254, column: 23, scope: !448)
!455 = !DILocation(line: 255, column: 24, scope: !456)
!456 = distinct !DILexicalBlock(scope: !448, file: !45, line: 255, column: 17)
!457 = !DILocation(line: 255, column: 17, scope: !456)
!458 = !DILocation(line: 255, column: 40, scope: !456)
!459 = !DILocation(line: 255, column: 17, scope: !448)
!460 = !DILocation(line: 258, column: 29, scope: !461)
!461 = distinct !DILexicalBlock(scope: !456, file: !45, line: 256, column: 13)
!462 = !DILocation(line: 259, column: 24, scope: !463)
!463 = distinct !DILexicalBlock(scope: !461, file: !45, line: 259, column: 17)
!464 = !DILocation(line: 259, column: 22, scope: !463)
!465 = !DILocation(line: 259, column: 29, scope: !466)
!466 = distinct !DILexicalBlock(scope: !463, file: !45, line: 259, column: 17)
!467 = !DILocation(line: 259, column: 33, scope: !466)
!468 = !DILocation(line: 259, column: 31, scope: !466)
!469 = !DILocation(line: 259, column: 17, scope: !463)
!470 = !DILocation(line: 262, column: 32, scope: !471)
!471 = distinct !DILexicalBlock(scope: !466, file: !45, line: 260, column: 17)
!472 = !DILocation(line: 263, column: 17, scope: !471)
!473 = !DILocation(line: 259, column: 37, scope: !466)
!474 = !DILocation(line: 259, column: 17, scope: !466)
!475 = distinct !{!475, !469, !476, !156}
!476 = !DILocation(line: 263, column: 17, scope: !463)
!477 = !DILocation(line: 264, column: 30, scope: !461)
!478 = !DILocation(line: 264, column: 17, scope: !461)
!479 = !DILocation(line: 265, column: 13, scope: !461)
!480 = !DILocation(line: 268, column: 1, scope: !393)
!481 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_12_good", scope: !45, file: !45, line: 270, type: !53, scopeLine: 271, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!482 = !DILocation(line: 272, column: 5, scope: !481)
!483 = !DILocation(line: 273, column: 5, scope: !481)
!484 = !DILocation(line: 274, column: 1, scope: !481)
!485 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !486, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !42}
!488 = !DILocalVariable(name: "line", arg: 1, scope: !485, file: !3, line: 11, type: !42)
!489 = !DILocation(line: 11, column: 25, scope: !485)
!490 = !DILocation(line: 13, column: 1, scope: !485)
!491 = !DILocation(line: 14, column: 8, scope: !492)
!492 = distinct !DILexicalBlock(scope: !485, file: !3, line: 14, column: 8)
!493 = !DILocation(line: 14, column: 13, scope: !492)
!494 = !DILocation(line: 14, column: 8, scope: !485)
!495 = !DILocation(line: 16, column: 24, scope: !496)
!496 = distinct !DILexicalBlock(scope: !492, file: !3, line: 15, column: 5)
!497 = !DILocation(line: 16, column: 9, scope: !496)
!498 = !DILocation(line: 17, column: 5, scope: !496)
!499 = !DILocation(line: 18, column: 5, scope: !485)
!500 = !DILocation(line: 19, column: 1, scope: !485)
!501 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !486, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!502 = !DILocalVariable(name: "line", arg: 1, scope: !501, file: !3, line: 20, type: !42)
!503 = !DILocation(line: 20, column: 29, scope: !501)
!504 = !DILocation(line: 22, column: 8, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !3, line: 22, column: 8)
!506 = !DILocation(line: 22, column: 13, scope: !505)
!507 = !DILocation(line: 22, column: 8, scope: !501)
!508 = !DILocation(line: 24, column: 24, scope: !509)
!509 = distinct !DILexicalBlock(scope: !505, file: !3, line: 23, column: 5)
!510 = !DILocation(line: 24, column: 9, scope: !509)
!511 = !DILocation(line: 25, column: 5, scope: !509)
!512 = !DILocation(line: 26, column: 1, scope: !501)
!513 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !514, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !516}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !71, line: 74, baseType: !23)
!518 = !DILocalVariable(name: "line", arg: 1, scope: !513, file: !3, line: 27, type: !516)
!519 = !DILocation(line: 27, column: 29, scope: !513)
!520 = !DILocation(line: 29, column: 8, scope: !521)
!521 = distinct !DILexicalBlock(scope: !513, file: !3, line: 29, column: 8)
!522 = !DILocation(line: 29, column: 13, scope: !521)
!523 = !DILocation(line: 29, column: 8, scope: !513)
!524 = !DILocation(line: 31, column: 27, scope: !525)
!525 = distinct !DILexicalBlock(scope: !521, file: !3, line: 30, column: 5)
!526 = !DILocation(line: 31, column: 9, scope: !525)
!527 = !DILocation(line: 32, column: 5, scope: !525)
!528 = !DILocation(line: 33, column: 1, scope: !513)
!529 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !530, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !23}
!532 = !DILocalVariable(name: "intNumber", arg: 1, scope: !529, file: !3, line: 35, type: !23)
!533 = !DILocation(line: 35, column: 24, scope: !529)
!534 = !DILocation(line: 37, column: 20, scope: !529)
!535 = !DILocation(line: 37, column: 5, scope: !529)
!536 = !DILocation(line: 38, column: 1, scope: !529)
!537 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !538, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !540}
!540 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!541 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !537, file: !3, line: 40, type: !540)
!542 = !DILocation(line: 40, column: 28, scope: !537)
!543 = !DILocation(line: 42, column: 21, scope: !537)
!544 = !DILocation(line: 42, column: 5, scope: !537)
!545 = !DILocation(line: 43, column: 1, scope: !537)
!546 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !547, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !549}
!549 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!550 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !546, file: !3, line: 45, type: !549)
!551 = !DILocation(line: 45, column: 28, scope: !546)
!552 = !DILocation(line: 47, column: 20, scope: !546)
!553 = !DILocation(line: 47, column: 5, scope: !546)
!554 = !DILocation(line: 48, column: 1, scope: !546)
!555 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !556, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !558}
!558 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!559 = !DILocalVariable(name: "longNumber", arg: 1, scope: !555, file: !3, line: 50, type: !558)
!560 = !DILocation(line: 50, column: 26, scope: !555)
!561 = !DILocation(line: 52, column: 21, scope: !555)
!562 = !DILocation(line: 52, column: 5, scope: !555)
!563 = !DILocation(line: 53, column: 1, scope: !555)
!564 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !565, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !567}
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !568, line: 27, baseType: !569)
!568 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !570, line: 44, baseType: !558)
!570 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!571 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !564, file: !3, line: 55, type: !567)
!572 = !DILocation(line: 55, column: 33, scope: !564)
!573 = !DILocation(line: 57, column: 29, scope: !564)
!574 = !DILocation(line: 57, column: 5, scope: !564)
!575 = !DILocation(line: 58, column: 1, scope: !564)
!576 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !577, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !70}
!579 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !576, file: !3, line: 60, type: !70)
!580 = !DILocation(line: 60, column: 29, scope: !576)
!581 = !DILocation(line: 62, column: 21, scope: !576)
!582 = !DILocation(line: 62, column: 5, scope: !576)
!583 = !DILocation(line: 63, column: 1, scope: !576)
!584 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !585, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !43}
!587 = !DILocalVariable(name: "charHex", arg: 1, scope: !584, file: !3, line: 65, type: !43)
!588 = !DILocation(line: 65, column: 29, scope: !584)
!589 = !DILocation(line: 67, column: 22, scope: !584)
!590 = !DILocation(line: 67, column: 5, scope: !584)
!591 = !DILocation(line: 68, column: 1, scope: !584)
!592 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !593, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !517}
!595 = !DILocalVariable(name: "wideChar", arg: 1, scope: !592, file: !3, line: 70, type: !517)
!596 = !DILocation(line: 70, column: 29, scope: !592)
!597 = !DILocalVariable(name: "s", scope: !592, file: !3, line: 74, type: !598)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 64, elements: !599)
!599 = !{!600}
!600 = !DISubrange(count: 2)
!601 = !DILocation(line: 74, column: 13, scope: !592)
!602 = !DILocation(line: 75, column: 16, scope: !592)
!603 = !DILocation(line: 75, column: 9, scope: !592)
!604 = !DILocation(line: 75, column: 14, scope: !592)
!605 = !DILocation(line: 76, column: 9, scope: !592)
!606 = !DILocation(line: 76, column: 14, scope: !592)
!607 = !DILocation(line: 77, column: 21, scope: !592)
!608 = !DILocation(line: 77, column: 5, scope: !592)
!609 = !DILocation(line: 78, column: 1, scope: !592)
!610 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !611, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !7}
!613 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !610, file: !3, line: 80, type: !7)
!614 = !DILocation(line: 80, column: 33, scope: !610)
!615 = !DILocation(line: 82, column: 20, scope: !610)
!616 = !DILocation(line: 82, column: 5, scope: !610)
!617 = !DILocation(line: 83, column: 1, scope: !610)
!618 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !619, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !25}
!621 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !618, file: !3, line: 85, type: !25)
!622 = !DILocation(line: 85, column: 45, scope: !618)
!623 = !DILocation(line: 87, column: 22, scope: !618)
!624 = !DILocation(line: 87, column: 5, scope: !618)
!625 = !DILocation(line: 88, column: 1, scope: !618)
!626 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !627, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !629}
!629 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!630 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !626, file: !3, line: 90, type: !629)
!631 = !DILocation(line: 90, column: 29, scope: !626)
!632 = !DILocation(line: 92, column: 20, scope: !626)
!633 = !DILocation(line: 92, column: 5, scope: !626)
!634 = !DILocation(line: 93, column: 1, scope: !626)
!635 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !636, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !638}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !640, line: 100, baseType: !641)
!640 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_989/source_code")
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !640, line: 96, size: 64, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !641, file: !640, line: 98, baseType: !23, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !641, file: !640, line: 99, baseType: !23, size: 32, offset: 32)
!645 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !635, file: !3, line: 95, type: !638)
!646 = !DILocation(line: 95, column: 40, scope: !635)
!647 = !DILocation(line: 97, column: 26, scope: !635)
!648 = !DILocation(line: 97, column: 47, scope: !635)
!649 = !DILocation(line: 97, column: 55, scope: !635)
!650 = !DILocation(line: 97, column: 76, scope: !635)
!651 = !DILocation(line: 97, column: 5, scope: !635)
!652 = !DILocation(line: 98, column: 1, scope: !635)
!653 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !654, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !656, !70}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!657 = !DILocalVariable(name: "bytes", arg: 1, scope: !653, file: !3, line: 100, type: !656)
!658 = !DILocation(line: 100, column: 38, scope: !653)
!659 = !DILocalVariable(name: "numBytes", arg: 2, scope: !653, file: !3, line: 100, type: !70)
!660 = !DILocation(line: 100, column: 52, scope: !653)
!661 = !DILocalVariable(name: "i", scope: !653, file: !3, line: 102, type: !70)
!662 = !DILocation(line: 102, column: 12, scope: !653)
!663 = !DILocation(line: 103, column: 12, scope: !664)
!664 = distinct !DILexicalBlock(scope: !653, file: !3, line: 103, column: 5)
!665 = !DILocation(line: 103, column: 10, scope: !664)
!666 = !DILocation(line: 103, column: 17, scope: !667)
!667 = distinct !DILexicalBlock(scope: !664, file: !3, line: 103, column: 5)
!668 = !DILocation(line: 103, column: 21, scope: !667)
!669 = !DILocation(line: 103, column: 19, scope: !667)
!670 = !DILocation(line: 103, column: 5, scope: !664)
!671 = !DILocation(line: 105, column: 24, scope: !672)
!672 = distinct !DILexicalBlock(scope: !667, file: !3, line: 104, column: 5)
!673 = !DILocation(line: 105, column: 30, scope: !672)
!674 = !DILocation(line: 105, column: 9, scope: !672)
!675 = !DILocation(line: 106, column: 5, scope: !672)
!676 = !DILocation(line: 103, column: 31, scope: !667)
!677 = !DILocation(line: 103, column: 5, scope: !667)
!678 = distinct !{!678, !670, !679, !156}
!679 = !DILocation(line: 106, column: 5, scope: !664)
!680 = !DILocation(line: 107, column: 5, scope: !653)
!681 = !DILocation(line: 108, column: 1, scope: !653)
!682 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !683, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!683 = !DISubroutineType(types: !684)
!684 = !{!70, !656, !70, !42}
!685 = !DILocalVariable(name: "bytes", arg: 1, scope: !682, file: !3, line: 113, type: !656)
!686 = !DILocation(line: 113, column: 39, scope: !682)
!687 = !DILocalVariable(name: "numBytes", arg: 2, scope: !682, file: !3, line: 113, type: !70)
!688 = !DILocation(line: 113, column: 53, scope: !682)
!689 = !DILocalVariable(name: "hex", arg: 3, scope: !682, file: !3, line: 113, type: !42)
!690 = !DILocation(line: 113, column: 71, scope: !682)
!691 = !DILocalVariable(name: "numWritten", scope: !682, file: !3, line: 115, type: !70)
!692 = !DILocation(line: 115, column: 12, scope: !682)
!693 = !DILocation(line: 121, column: 5, scope: !682)
!694 = !DILocation(line: 121, column: 12, scope: !682)
!695 = !DILocation(line: 121, column: 25, scope: !682)
!696 = !DILocation(line: 121, column: 23, scope: !682)
!697 = !DILocation(line: 121, column: 34, scope: !682)
!698 = !DILocation(line: 121, column: 37, scope: !682)
!699 = !DILocation(line: 121, column: 67, scope: !682)
!700 = !DILocation(line: 121, column: 70, scope: !682)
!701 = !DILocation(line: 0, scope: !682)
!702 = !DILocalVariable(name: "byte", scope: !703, file: !3, line: 123, type: !23)
!703 = distinct !DILexicalBlock(scope: !682, file: !3, line: 122, column: 5)
!704 = !DILocation(line: 123, column: 13, scope: !703)
!705 = !DILocation(line: 124, column: 17, scope: !703)
!706 = !DILocation(line: 124, column: 25, scope: !703)
!707 = !DILocation(line: 124, column: 23, scope: !703)
!708 = !DILocation(line: 124, column: 9, scope: !703)
!709 = !DILocation(line: 125, column: 45, scope: !703)
!710 = !DILocation(line: 125, column: 29, scope: !703)
!711 = !DILocation(line: 125, column: 9, scope: !703)
!712 = !DILocation(line: 125, column: 15, scope: !703)
!713 = !DILocation(line: 125, column: 27, scope: !703)
!714 = !DILocation(line: 126, column: 9, scope: !703)
!715 = distinct !{!715, !693, !716, !156}
!716 = !DILocation(line: 127, column: 5, scope: !682)
!717 = !DILocation(line: 129, column: 12, scope: !682)
!718 = !DILocation(line: 129, column: 5, scope: !682)
!719 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !720, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!720 = !DISubroutineType(types: !721)
!721 = !{!70, !656, !70, !516}
!722 = !DILocalVariable(name: "bytes", arg: 1, scope: !719, file: !3, line: 135, type: !656)
!723 = !DILocation(line: 135, column: 41, scope: !719)
!724 = !DILocalVariable(name: "numBytes", arg: 2, scope: !719, file: !3, line: 135, type: !70)
!725 = !DILocation(line: 135, column: 55, scope: !719)
!726 = !DILocalVariable(name: "hex", arg: 3, scope: !719, file: !3, line: 135, type: !516)
!727 = !DILocation(line: 135, column: 76, scope: !719)
!728 = !DILocalVariable(name: "numWritten", scope: !719, file: !3, line: 137, type: !70)
!729 = !DILocation(line: 137, column: 12, scope: !719)
!730 = !DILocation(line: 143, column: 5, scope: !719)
!731 = !DILocation(line: 143, column: 12, scope: !719)
!732 = !DILocation(line: 143, column: 25, scope: !719)
!733 = !DILocation(line: 143, column: 23, scope: !719)
!734 = !DILocation(line: 143, column: 34, scope: !719)
!735 = !DILocation(line: 143, column: 47, scope: !719)
!736 = !DILocation(line: 143, column: 55, scope: !719)
!737 = !DILocation(line: 143, column: 53, scope: !719)
!738 = !DILocation(line: 143, column: 37, scope: !719)
!739 = !DILocation(line: 143, column: 68, scope: !719)
!740 = !DILocation(line: 143, column: 81, scope: !719)
!741 = !DILocation(line: 143, column: 89, scope: !719)
!742 = !DILocation(line: 143, column: 87, scope: !719)
!743 = !DILocation(line: 143, column: 100, scope: !719)
!744 = !DILocation(line: 143, column: 71, scope: !719)
!745 = !DILocation(line: 0, scope: !719)
!746 = !DILocalVariable(name: "byte", scope: !747, file: !3, line: 145, type: !23)
!747 = distinct !DILexicalBlock(scope: !719, file: !3, line: 144, column: 5)
!748 = !DILocation(line: 145, column: 13, scope: !747)
!749 = !DILocation(line: 146, column: 18, scope: !747)
!750 = !DILocation(line: 146, column: 26, scope: !747)
!751 = !DILocation(line: 146, column: 24, scope: !747)
!752 = !DILocation(line: 146, column: 9, scope: !747)
!753 = !DILocation(line: 147, column: 45, scope: !747)
!754 = !DILocation(line: 147, column: 29, scope: !747)
!755 = !DILocation(line: 147, column: 9, scope: !747)
!756 = !DILocation(line: 147, column: 15, scope: !747)
!757 = !DILocation(line: 147, column: 27, scope: !747)
!758 = !DILocation(line: 148, column: 9, scope: !747)
!759 = distinct !{!759, !730, !760, !156}
!760 = !DILocation(line: 149, column: 5, scope: !719)
!761 = !DILocation(line: 151, column: 12, scope: !719)
!762 = !DILocation(line: 151, column: 5, scope: !719)
!763 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !764, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!764 = !DISubroutineType(types: !765)
!765 = !{!23}
!766 = !DILocation(line: 158, column: 5, scope: !763)
!767 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !764, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!768 = !DILocation(line: 163, column: 5, scope: !767)
!769 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !764, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!770 = !DILocation(line: 168, column: 13, scope: !769)
!771 = !DILocation(line: 168, column: 20, scope: !769)
!772 = !DILocation(line: 168, column: 5, scope: !769)
!773 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!774 = !DILocation(line: 187, column: 16, scope: !773)
!775 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!776 = !DILocation(line: 188, column: 16, scope: !775)
!777 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!778 = !DILocation(line: 189, column: 16, scope: !777)
!779 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!780 = !DILocation(line: 190, column: 16, scope: !779)
!781 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!782 = !DILocation(line: 191, column: 16, scope: !781)
!783 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!784 = !DILocation(line: 192, column: 16, scope: !783)
!785 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!786 = !DILocation(line: 193, column: 16, scope: !785)
!787 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!788 = !DILocation(line: 194, column: 16, scope: !787)
!789 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!790 = !DILocation(line: 195, column: 16, scope: !789)
!791 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!792 = !DILocation(line: 198, column: 15, scope: !791)
!793 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!794 = !DILocation(line: 199, column: 15, scope: !793)
!795 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!796 = !DILocation(line: 200, column: 15, scope: !795)
!797 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!798 = !DILocation(line: 201, column: 15, scope: !797)
!799 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!800 = !DILocation(line: 202, column: 15, scope: !799)
!801 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!802 = !DILocation(line: 203, column: 15, scope: !801)
!803 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!804 = !DILocation(line: 204, column: 15, scope: !803)
!805 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!806 = !DILocation(line: 205, column: 15, scope: !805)
!807 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!808 = !DILocation(line: 206, column: 15, scope: !807)
