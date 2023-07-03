; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
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
define dso_local i8* @badSource(i8* %data) #0 !dbg !52 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !57, metadata !DIExpression()), !dbg !62
  %0 = load i8*, i8** %data.addr, align 8, !dbg !63
  %call = call i64 @strlen(i8* %0) #7, !dbg !64
  store i64 %call, i64* %dataLen, align 8, !dbg !62
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !65, metadata !DIExpression()), !dbg !66
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !67
  store i8* %call1, i8** %environment, align 8, !dbg !66
  %1 = load i8*, i8** %environment, align 8, !dbg !68
  %cmp = icmp ne i8* %1, null, !dbg !70
  br i1 %cmp, label %if.then, label %if.end, !dbg !71

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !72
  %3 = load i64, i64* %dataLen, align 8, !dbg !74
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !75
  %4 = load i8*, i8** %environment, align 8, !dbg !76
  %5 = load i64, i64* %dataLen, align 8, !dbg !77
  %sub = sub i64 100, %5, !dbg !78
  %sub2 = sub i64 %sub, 1, !dbg !79
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %4, i64 %sub2) #8, !dbg !80
  br label %if.end, !dbg !81

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %data.addr, align 8, !dbg !82
  ret i8* %6, !dbg !83
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_42_bad() #0 !dbg !84 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !89, metadata !DIExpression()), !dbg !93
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !93
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !93
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !94
  store i8* %arraydecay, i8** %data, align 8, !dbg !95
  %1 = load i8*, i8** %data, align 8, !dbg !96
  %call = call i8* @badSource(i8* %1), !dbg !97
  store i8* %call, i8** %data, align 8, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %i, metadata !99, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata i32* %n, metadata !102, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !104, metadata !DIExpression()), !dbg !105
  %2 = load i8*, i8** %data, align 8, !dbg !106
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !108
  %cmp = icmp eq i32 %call1, 1, !dbg !109
  br i1 %cmp, label %if.then, label %if.end, !dbg !110

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !111
  store i32 0, i32* %i, align 4, !dbg !113
  br label %for.cond, !dbg !115

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !116
  %4 = load i32, i32* %n, align 4, !dbg !118
  %cmp2 = icmp slt i32 %3, %4, !dbg !119
  br i1 %cmp2, label %for.body, label %for.end, !dbg !120

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !121
  %inc = add nsw i32 %5, 1, !dbg !121
  store i32 %inc, i32* %intVariable, align 4, !dbg !121
  br label %for.inc, !dbg !123

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !124
  %inc3 = add nsw i32 %6, 1, !dbg !124
  store i32 %inc3, i32* %i, align 4, !dbg !124
  br label %for.cond, !dbg !125, !llvm.loop !126

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !129
  call void @printIntLine(i32 %7), !dbg !130
  br label %if.end, !dbg !131

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !132
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodG2BSource(i8* %data) #0 !dbg !133 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !134, metadata !DIExpression()), !dbg !135
  %0 = load i8*, i8** %data.addr, align 8, !dbg !136
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !137
  %1 = load i8*, i8** %data.addr, align 8, !dbg !138
  ret i8* %1, !dbg !139
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !140 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !143, metadata !DIExpression()), !dbg !144
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !144
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !144
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !145
  store i8* %arraydecay, i8** %data, align 8, !dbg !146
  %1 = load i8*, i8** %data, align 8, !dbg !147
  %call = call i8* @goodG2BSource(i8* %1), !dbg !148
  store i8* %call, i8** %data, align 8, !dbg !149
  call void @llvm.dbg.declare(metadata i32* %i, metadata !150, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata i32* %n, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !155, metadata !DIExpression()), !dbg !156
  %2 = load i8*, i8** %data, align 8, !dbg !157
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !159
  %cmp = icmp eq i32 %call1, 1, !dbg !160
  br i1 %cmp, label %if.then, label %if.end, !dbg !161

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !162
  store i32 0, i32* %i, align 4, !dbg !164
  br label %for.cond, !dbg !166

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !167
  %4 = load i32, i32* %n, align 4, !dbg !169
  %cmp2 = icmp slt i32 %3, %4, !dbg !170
  br i1 %cmp2, label %for.body, label %for.end, !dbg !171

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !172
  %inc = add nsw i32 %5, 1, !dbg !172
  store i32 %inc, i32* %intVariable, align 4, !dbg !172
  br label %for.inc, !dbg !174

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !175
  %inc3 = add nsw i32 %6, 1, !dbg !175
  store i32 %inc3, i32* %i, align 4, !dbg !175
  br label %for.cond, !dbg !176, !llvm.loop !177

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !179
  call void @printIntLine(i32 %7), !dbg !180
  br label %if.end, !dbg !181

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !182
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodB2GSource(i8* %data) #0 !dbg !183 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !186, metadata !DIExpression()), !dbg !188
  %0 = load i8*, i8** %data.addr, align 8, !dbg !189
  %call = call i64 @strlen(i8* %0) #7, !dbg !190
  store i64 %call, i64* %dataLen, align 8, !dbg !188
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !191, metadata !DIExpression()), !dbg !192
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !193
  store i8* %call1, i8** %environment, align 8, !dbg !192
  %1 = load i8*, i8** %environment, align 8, !dbg !194
  %cmp = icmp ne i8* %1, null, !dbg !196
  br i1 %cmp, label %if.then, label %if.end, !dbg !197

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !198
  %3 = load i64, i64* %dataLen, align 8, !dbg !200
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !201
  %4 = load i8*, i8** %environment, align 8, !dbg !202
  %5 = load i64, i64* %dataLen, align 8, !dbg !203
  %sub = sub i64 100, %5, !dbg !204
  %sub2 = sub i64 %sub, 1, !dbg !205
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %4, i64 %sub2) #8, !dbg !206
  br label %if.end, !dbg !207

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %data.addr, align 8, !dbg !208
  ret i8* %6, !dbg !209
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !210 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !213, metadata !DIExpression()), !dbg !214
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !214
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !214
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !215
  store i8* %arraydecay, i8** %data, align 8, !dbg !216
  %1 = load i8*, i8** %data, align 8, !dbg !217
  %call = call i8* @goodB2GSource(i8* %1), !dbg !218
  store i8* %call, i8** %data, align 8, !dbg !219
  call void @llvm.dbg.declare(metadata i32* %i, metadata !220, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata i32* %n, metadata !223, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !225, metadata !DIExpression()), !dbg !226
  %2 = load i8*, i8** %data, align 8, !dbg !227
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !229
  %cmp = icmp eq i32 %call1, 1, !dbg !230
  br i1 %cmp, label %if.then, label %if.end6, !dbg !231

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n, align 4, !dbg !232
  %cmp2 = icmp slt i32 %3, 10000, !dbg !235
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !236

if.then3:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !237
  store i32 0, i32* %i, align 4, !dbg !239
  br label %for.cond, !dbg !241

for.cond:                                         ; preds = %for.inc, %if.then3
  %4 = load i32, i32* %i, align 4, !dbg !242
  %5 = load i32, i32* %n, align 4, !dbg !244
  %cmp4 = icmp slt i32 %4, %5, !dbg !245
  br i1 %cmp4, label %for.body, label %for.end, !dbg !246

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !247
  %inc = add nsw i32 %6, 1, !dbg !247
  store i32 %inc, i32* %intVariable, align 4, !dbg !247
  br label %for.inc, !dbg !249

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !250
  %inc5 = add nsw i32 %7, 1, !dbg !250
  store i32 %inc5, i32* %i, align 4, !dbg !250
  br label %for.cond, !dbg !251, !llvm.loop !252

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !254
  call void @printIntLine(i32 %8), !dbg !255
  br label %if.end, !dbg !256

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end6, !dbg !257

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !258
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_42_good() #0 !dbg !259 {
entry:
  call void @goodB2G(), !dbg !260
  call void @goodG2B(), !dbg !261
  ret void, !dbg !262
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !263 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !266, metadata !DIExpression()), !dbg !267
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !268
  %0 = load i8*, i8** %line.addr, align 8, !dbg !269
  %cmp = icmp ne i8* %0, null, !dbg !271
  br i1 %cmp, label %if.then, label %if.end, !dbg !272

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !273
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !275
  br label %if.end, !dbg !276

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !277
  ret void, !dbg !278
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !279 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = load i8*, i8** %line.addr, align 8, !dbg !282
  %cmp = icmp ne i8* %0, null, !dbg !284
  br i1 %cmp, label %if.then, label %if.end, !dbg !285

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !286
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !288
  br label %if.end, !dbg !289

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !290
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !291 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !296, metadata !DIExpression()), !dbg !297
  %0 = load i32*, i32** %line.addr, align 8, !dbg !298
  %cmp = icmp ne i32* %0, null, !dbg !300
  br i1 %cmp, label %if.then, label %if.end, !dbg !301

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !302
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !304
  br label %if.end, !dbg !305

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !306
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !307 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !310, metadata !DIExpression()), !dbg !311
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !312
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !313
  ret void, !dbg !314
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !315 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !319, metadata !DIExpression()), !dbg !320
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !321
  %conv = sext i16 %0 to i32, !dbg !321
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !322
  ret void, !dbg !323
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !324 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !328, metadata !DIExpression()), !dbg !329
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !330
  %conv = fpext float %0 to double, !dbg !330
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !331
  ret void, !dbg !332
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !333 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !337, metadata !DIExpression()), !dbg !338
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !339
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !340
  ret void, !dbg !341
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !342 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !351
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !352
  ret void, !dbg !353
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !354 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !357, metadata !DIExpression()), !dbg !358
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !359
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !360
  ret void, !dbg !361
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !362 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !365, metadata !DIExpression()), !dbg !366
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !367
  %conv = sext i8 %0 to i32, !dbg !367
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !368
  ret void, !dbg !369
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !370 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !373, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !375, metadata !DIExpression()), !dbg !379
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !380
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !381
  store i32 %0, i32* %arrayidx, align 4, !dbg !382
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !383
  store i32 0, i32* %arrayidx1, align 4, !dbg !384
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !386
  ret void, !dbg !387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !388 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !393
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !394
  ret void, !dbg !395
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !396 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !399, metadata !DIExpression()), !dbg !400
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !401
  %conv = zext i8 %0 to i32, !dbg !401
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !402
  ret void, !dbg !403
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !404 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !408, metadata !DIExpression()), !dbg !409
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !410
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !411
  ret void, !dbg !412
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !413 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !423, metadata !DIExpression()), !dbg !424
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !425
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !426
  %1 = load i32, i32* %intOne, align 4, !dbg !426
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !427
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !428
  %3 = load i32, i32* %intTwo, align 4, !dbg !428
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !429
  ret void, !dbg !430
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !431 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !435, metadata !DIExpression()), !dbg !436
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !437, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.declare(metadata i64* %i, metadata !439, metadata !DIExpression()), !dbg !440
  store i64 0, i64* %i, align 8, !dbg !441
  br label %for.cond, !dbg !443

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !444
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !446
  %cmp = icmp ult i64 %0, %1, !dbg !447
  br i1 %cmp, label %for.body, label %for.end, !dbg !448

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !449
  %3 = load i64, i64* %i, align 8, !dbg !451
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !449
  %4 = load i8, i8* %arrayidx, align 1, !dbg !449
  %conv = zext i8 %4 to i32, !dbg !449
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !452
  br label %for.inc, !dbg !453

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !454
  %inc = add i64 %5, 1, !dbg !454
  store i64 %inc, i64* %i, align 8, !dbg !454
  br label %for.cond, !dbg !455, !llvm.loop !456

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !458
  ret void, !dbg !459
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !460 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !463, metadata !DIExpression()), !dbg !464
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !465, metadata !DIExpression()), !dbg !466
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !467, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !469, metadata !DIExpression()), !dbg !470
  store i64 0, i64* %numWritten, align 8, !dbg !470
  br label %while.cond, !dbg !471

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !472
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !473
  %cmp = icmp ult i64 %0, %1, !dbg !474
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !475

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !476
  %2 = load i16*, i16** %call, align 8, !dbg !476
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !476
  %4 = load i64, i64* %numWritten, align 8, !dbg !476
  %mul = mul i64 2, %4, !dbg !476
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !476
  %5 = load i8, i8* %arrayidx, align 1, !dbg !476
  %conv = sext i8 %5 to i32, !dbg !476
  %idxprom = sext i32 %conv to i64, !dbg !476
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !476
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !476
  %conv2 = zext i16 %6 to i32, !dbg !476
  %and = and i32 %conv2, 4096, !dbg !476
  %tobool = icmp ne i32 %and, 0, !dbg !476
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !477

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !478
  %7 = load i16*, i16** %call3, align 8, !dbg !478
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !478
  %9 = load i64, i64* %numWritten, align 8, !dbg !478
  %mul4 = mul i64 2, %9, !dbg !478
  %add = add i64 %mul4, 1, !dbg !478
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !478
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !478
  %conv6 = sext i8 %10 to i32, !dbg !478
  %idxprom7 = sext i32 %conv6 to i64, !dbg !478
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !478
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !478
  %conv9 = zext i16 %11 to i32, !dbg !478
  %and10 = and i32 %conv9, 4096, !dbg !478
  %tobool11 = icmp ne i32 %and10, 0, !dbg !477
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !479
  br i1 %12, label %while.body, label %while.end, !dbg !471

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !480, metadata !DIExpression()), !dbg !482
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !483
  %14 = load i64, i64* %numWritten, align 8, !dbg !484
  %mul12 = mul i64 2, %14, !dbg !485
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !483
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !486
  %15 = load i32, i32* %byte, align 4, !dbg !487
  %conv15 = trunc i32 %15 to i8, !dbg !488
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !489
  %17 = load i64, i64* %numWritten, align 8, !dbg !490
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !489
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !491
  %18 = load i64, i64* %numWritten, align 8, !dbg !492
  %inc = add i64 %18, 1, !dbg !492
  store i64 %inc, i64* %numWritten, align 8, !dbg !492
  br label %while.cond, !dbg !471, !llvm.loop !493

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !495
  ret i64 %19, !dbg !496
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !497 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !500, metadata !DIExpression()), !dbg !501
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !502, metadata !DIExpression()), !dbg !503
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !504, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !506, metadata !DIExpression()), !dbg !507
  store i64 0, i64* %numWritten, align 8, !dbg !507
  br label %while.cond, !dbg !508

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !509
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !510
  %cmp = icmp ult i64 %0, %1, !dbg !511
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !512

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !513
  %3 = load i64, i64* %numWritten, align 8, !dbg !514
  %mul = mul i64 2, %3, !dbg !515
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !513
  %4 = load i32, i32* %arrayidx, align 4, !dbg !513
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !516
  %tobool = icmp ne i32 %call, 0, !dbg !516
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !517

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !518
  %6 = load i64, i64* %numWritten, align 8, !dbg !519
  %mul1 = mul i64 2, %6, !dbg !520
  %add = add i64 %mul1, 1, !dbg !521
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !518
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !518
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !522
  %tobool4 = icmp ne i32 %call3, 0, !dbg !517
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !523
  br i1 %8, label %while.body, label %while.end, !dbg !508

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !524, metadata !DIExpression()), !dbg !526
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !527
  %10 = load i64, i64* %numWritten, align 8, !dbg !528
  %mul5 = mul i64 2, %10, !dbg !529
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !527
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !530
  %11 = load i32, i32* %byte, align 4, !dbg !531
  %conv = trunc i32 %11 to i8, !dbg !532
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !533
  %13 = load i64, i64* %numWritten, align 8, !dbg !534
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !533
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !535
  %14 = load i64, i64* %numWritten, align 8, !dbg !536
  %inc = add i64 %14, 1, !dbg !536
  store i64 %inc, i64* %numWritten, align 8, !dbg !536
  br label %while.cond, !dbg !508, !llvm.loop !537

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !539
  ret i64 %15, !dbg !540
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !541 {
entry:
  ret i32 1, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !545 {
entry:
  ret i32 0, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !547 {
entry:
  %call = call i32 @rand() #8, !dbg !548
  %rem = srem i32 %call, 2, !dbg !549
  ret i32 %rem, !dbg !550
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !551 {
entry:
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !553 {
entry:
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !555 {
entry:
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !557 {
entry:
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !559 {
entry:
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !561 {
entry:
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !563 {
entry:
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !565 {
entry:
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !567 {
entry:
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !569 {
entry:
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !571 {
entry:
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !573 {
entry:
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !575 {
entry:
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !577 {
entry:
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !579 {
entry:
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !581 {
entry:
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !583 {
entry:
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !585 {
entry:
  ret void, !dbg !586
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_051/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_42.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_051/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "badSource", scope: !45, file: !45, line: 37, type: !53, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{!42, !42}
!55 = !DILocalVariable(name: "data", arg: 1, scope: !52, file: !45, line: 37, type: !42)
!56 = !DILocation(line: 37, column: 25, scope: !52)
!57 = !DILocalVariable(name: "dataLen", scope: !58, file: !45, line: 41, type: !59)
!58 = distinct !DILexicalBlock(scope: !52, file: !45, line: 39, column: 5)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !60, line: 46, baseType: !61)
!60 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!61 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!62 = !DILocation(line: 41, column: 16, scope: !58)
!63 = !DILocation(line: 41, column: 33, scope: !58)
!64 = !DILocation(line: 41, column: 26, scope: !58)
!65 = !DILocalVariable(name: "environment", scope: !58, file: !45, line: 42, type: !42)
!66 = !DILocation(line: 42, column: 16, scope: !58)
!67 = !DILocation(line: 42, column: 30, scope: !58)
!68 = !DILocation(line: 44, column: 13, scope: !69)
!69 = distinct !DILexicalBlock(scope: !58, file: !45, line: 44, column: 13)
!70 = !DILocation(line: 44, column: 25, scope: !69)
!71 = !DILocation(line: 44, column: 13, scope: !58)
!72 = !DILocation(line: 47, column: 21, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !45, line: 45, column: 9)
!74 = !DILocation(line: 47, column: 26, scope: !73)
!75 = !DILocation(line: 47, column: 25, scope: !73)
!76 = !DILocation(line: 47, column: 35, scope: !73)
!77 = !DILocation(line: 47, column: 52, scope: !73)
!78 = !DILocation(line: 47, column: 51, scope: !73)
!79 = !DILocation(line: 47, column: 59, scope: !73)
!80 = !DILocation(line: 47, column: 13, scope: !73)
!81 = !DILocation(line: 48, column: 9, scope: !73)
!82 = !DILocation(line: 50, column: 12, scope: !52)
!83 = !DILocation(line: 50, column: 5, scope: !52)
!84 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_42_bad", scope: !45, file: !45, line: 53, type: !85, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!85 = !DISubroutineType(types: !86)
!86 = !{null}
!87 = !DILocalVariable(name: "data", scope: !84, file: !45, line: 55, type: !42)
!88 = !DILocation(line: 55, column: 12, scope: !84)
!89 = !DILocalVariable(name: "dataBuffer", scope: !84, file: !45, line: 56, type: !90)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 100)
!93 = !DILocation(line: 56, column: 10, scope: !84)
!94 = !DILocation(line: 57, column: 12, scope: !84)
!95 = !DILocation(line: 57, column: 10, scope: !84)
!96 = !DILocation(line: 58, column: 22, scope: !84)
!97 = !DILocation(line: 58, column: 12, scope: !84)
!98 = !DILocation(line: 58, column: 10, scope: !84)
!99 = !DILocalVariable(name: "i", scope: !100, file: !45, line: 60, type: !23)
!100 = distinct !DILexicalBlock(scope: !84, file: !45, line: 59, column: 5)
!101 = !DILocation(line: 60, column: 13, scope: !100)
!102 = !DILocalVariable(name: "n", scope: !100, file: !45, line: 60, type: !23)
!103 = !DILocation(line: 60, column: 16, scope: !100)
!104 = !DILocalVariable(name: "intVariable", scope: !100, file: !45, line: 60, type: !23)
!105 = !DILocation(line: 60, column: 19, scope: !100)
!106 = !DILocation(line: 61, column: 20, scope: !107)
!107 = distinct !DILexicalBlock(scope: !100, file: !45, line: 61, column: 13)
!108 = !DILocation(line: 61, column: 13, scope: !107)
!109 = !DILocation(line: 61, column: 36, scope: !107)
!110 = !DILocation(line: 61, column: 13, scope: !100)
!111 = !DILocation(line: 64, column: 25, scope: !112)
!112 = distinct !DILexicalBlock(scope: !107, file: !45, line: 62, column: 9)
!113 = !DILocation(line: 65, column: 20, scope: !114)
!114 = distinct !DILexicalBlock(scope: !112, file: !45, line: 65, column: 13)
!115 = !DILocation(line: 65, column: 18, scope: !114)
!116 = !DILocation(line: 65, column: 25, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !45, line: 65, column: 13)
!118 = !DILocation(line: 65, column: 29, scope: !117)
!119 = !DILocation(line: 65, column: 27, scope: !117)
!120 = !DILocation(line: 65, column: 13, scope: !114)
!121 = !DILocation(line: 68, column: 28, scope: !122)
!122 = distinct !DILexicalBlock(scope: !117, file: !45, line: 66, column: 13)
!123 = !DILocation(line: 69, column: 13, scope: !122)
!124 = !DILocation(line: 65, column: 33, scope: !117)
!125 = !DILocation(line: 65, column: 13, scope: !117)
!126 = distinct !{!126, !120, !127, !128}
!127 = !DILocation(line: 69, column: 13, scope: !114)
!128 = !{!"llvm.loop.mustprogress"}
!129 = !DILocation(line: 70, column: 26, scope: !112)
!130 = !DILocation(line: 70, column: 13, scope: !112)
!131 = !DILocation(line: 71, column: 9, scope: !112)
!132 = !DILocation(line: 73, column: 1, scope: !84)
!133 = distinct !DISubprogram(name: "goodG2BSource", scope: !45, file: !45, line: 80, type: !53, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!134 = !DILocalVariable(name: "data", arg: 1, scope: !133, file: !45, line: 80, type: !42)
!135 = !DILocation(line: 80, column: 29, scope: !133)
!136 = !DILocation(line: 83, column: 12, scope: !133)
!137 = !DILocation(line: 83, column: 5, scope: !133)
!138 = !DILocation(line: 84, column: 12, scope: !133)
!139 = !DILocation(line: 84, column: 5, scope: !133)
!140 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 87, type: !85, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!141 = !DILocalVariable(name: "data", scope: !140, file: !45, line: 89, type: !42)
!142 = !DILocation(line: 89, column: 12, scope: !140)
!143 = !DILocalVariable(name: "dataBuffer", scope: !140, file: !45, line: 90, type: !90)
!144 = !DILocation(line: 90, column: 10, scope: !140)
!145 = !DILocation(line: 91, column: 12, scope: !140)
!146 = !DILocation(line: 91, column: 10, scope: !140)
!147 = !DILocation(line: 92, column: 26, scope: !140)
!148 = !DILocation(line: 92, column: 12, scope: !140)
!149 = !DILocation(line: 92, column: 10, scope: !140)
!150 = !DILocalVariable(name: "i", scope: !151, file: !45, line: 94, type: !23)
!151 = distinct !DILexicalBlock(scope: !140, file: !45, line: 93, column: 5)
!152 = !DILocation(line: 94, column: 13, scope: !151)
!153 = !DILocalVariable(name: "n", scope: !151, file: !45, line: 94, type: !23)
!154 = !DILocation(line: 94, column: 16, scope: !151)
!155 = !DILocalVariable(name: "intVariable", scope: !151, file: !45, line: 94, type: !23)
!156 = !DILocation(line: 94, column: 19, scope: !151)
!157 = !DILocation(line: 95, column: 20, scope: !158)
!158 = distinct !DILexicalBlock(scope: !151, file: !45, line: 95, column: 13)
!159 = !DILocation(line: 95, column: 13, scope: !158)
!160 = !DILocation(line: 95, column: 36, scope: !158)
!161 = !DILocation(line: 95, column: 13, scope: !151)
!162 = !DILocation(line: 98, column: 25, scope: !163)
!163 = distinct !DILexicalBlock(scope: !158, file: !45, line: 96, column: 9)
!164 = !DILocation(line: 99, column: 20, scope: !165)
!165 = distinct !DILexicalBlock(scope: !163, file: !45, line: 99, column: 13)
!166 = !DILocation(line: 99, column: 18, scope: !165)
!167 = !DILocation(line: 99, column: 25, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !45, line: 99, column: 13)
!169 = !DILocation(line: 99, column: 29, scope: !168)
!170 = !DILocation(line: 99, column: 27, scope: !168)
!171 = !DILocation(line: 99, column: 13, scope: !165)
!172 = !DILocation(line: 102, column: 28, scope: !173)
!173 = distinct !DILexicalBlock(scope: !168, file: !45, line: 100, column: 13)
!174 = !DILocation(line: 103, column: 13, scope: !173)
!175 = !DILocation(line: 99, column: 33, scope: !168)
!176 = !DILocation(line: 99, column: 13, scope: !168)
!177 = distinct !{!177, !171, !178, !128}
!178 = !DILocation(line: 103, column: 13, scope: !165)
!179 = !DILocation(line: 104, column: 26, scope: !163)
!180 = !DILocation(line: 104, column: 13, scope: !163)
!181 = !DILocation(line: 105, column: 9, scope: !163)
!182 = !DILocation(line: 107, column: 1, scope: !140)
!183 = distinct !DISubprogram(name: "goodB2GSource", scope: !45, file: !45, line: 110, type: !53, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!184 = !DILocalVariable(name: "data", arg: 1, scope: !183, file: !45, line: 110, type: !42)
!185 = !DILocation(line: 110, column: 29, scope: !183)
!186 = !DILocalVariable(name: "dataLen", scope: !187, file: !45, line: 114, type: !59)
!187 = distinct !DILexicalBlock(scope: !183, file: !45, line: 112, column: 5)
!188 = !DILocation(line: 114, column: 16, scope: !187)
!189 = !DILocation(line: 114, column: 33, scope: !187)
!190 = !DILocation(line: 114, column: 26, scope: !187)
!191 = !DILocalVariable(name: "environment", scope: !187, file: !45, line: 115, type: !42)
!192 = !DILocation(line: 115, column: 16, scope: !187)
!193 = !DILocation(line: 115, column: 30, scope: !187)
!194 = !DILocation(line: 117, column: 13, scope: !195)
!195 = distinct !DILexicalBlock(scope: !187, file: !45, line: 117, column: 13)
!196 = !DILocation(line: 117, column: 25, scope: !195)
!197 = !DILocation(line: 117, column: 13, scope: !187)
!198 = !DILocation(line: 120, column: 21, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !45, line: 118, column: 9)
!200 = !DILocation(line: 120, column: 26, scope: !199)
!201 = !DILocation(line: 120, column: 25, scope: !199)
!202 = !DILocation(line: 120, column: 35, scope: !199)
!203 = !DILocation(line: 120, column: 52, scope: !199)
!204 = !DILocation(line: 120, column: 51, scope: !199)
!205 = !DILocation(line: 120, column: 59, scope: !199)
!206 = !DILocation(line: 120, column: 13, scope: !199)
!207 = !DILocation(line: 121, column: 9, scope: !199)
!208 = !DILocation(line: 123, column: 12, scope: !183)
!209 = !DILocation(line: 123, column: 5, scope: !183)
!210 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 126, type: !85, scopeLine: 127, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!211 = !DILocalVariable(name: "data", scope: !210, file: !45, line: 128, type: !42)
!212 = !DILocation(line: 128, column: 12, scope: !210)
!213 = !DILocalVariable(name: "dataBuffer", scope: !210, file: !45, line: 129, type: !90)
!214 = !DILocation(line: 129, column: 10, scope: !210)
!215 = !DILocation(line: 130, column: 12, scope: !210)
!216 = !DILocation(line: 130, column: 10, scope: !210)
!217 = !DILocation(line: 131, column: 26, scope: !210)
!218 = !DILocation(line: 131, column: 12, scope: !210)
!219 = !DILocation(line: 131, column: 10, scope: !210)
!220 = !DILocalVariable(name: "i", scope: !221, file: !45, line: 133, type: !23)
!221 = distinct !DILexicalBlock(scope: !210, file: !45, line: 132, column: 5)
!222 = !DILocation(line: 133, column: 13, scope: !221)
!223 = !DILocalVariable(name: "n", scope: !221, file: !45, line: 133, type: !23)
!224 = !DILocation(line: 133, column: 16, scope: !221)
!225 = !DILocalVariable(name: "intVariable", scope: !221, file: !45, line: 133, type: !23)
!226 = !DILocation(line: 133, column: 19, scope: !221)
!227 = !DILocation(line: 134, column: 20, scope: !228)
!228 = distinct !DILexicalBlock(scope: !221, file: !45, line: 134, column: 13)
!229 = !DILocation(line: 134, column: 13, scope: !228)
!230 = !DILocation(line: 134, column: 36, scope: !228)
!231 = !DILocation(line: 134, column: 13, scope: !221)
!232 = !DILocation(line: 137, column: 17, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !45, line: 137, column: 17)
!234 = distinct !DILexicalBlock(scope: !228, file: !45, line: 135, column: 9)
!235 = !DILocation(line: 137, column: 19, scope: !233)
!236 = !DILocation(line: 137, column: 17, scope: !234)
!237 = !DILocation(line: 139, column: 29, scope: !238)
!238 = distinct !DILexicalBlock(scope: !233, file: !45, line: 138, column: 13)
!239 = !DILocation(line: 140, column: 24, scope: !240)
!240 = distinct !DILexicalBlock(scope: !238, file: !45, line: 140, column: 17)
!241 = !DILocation(line: 140, column: 22, scope: !240)
!242 = !DILocation(line: 140, column: 29, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !45, line: 140, column: 17)
!244 = !DILocation(line: 140, column: 33, scope: !243)
!245 = !DILocation(line: 140, column: 31, scope: !243)
!246 = !DILocation(line: 140, column: 17, scope: !240)
!247 = !DILocation(line: 143, column: 32, scope: !248)
!248 = distinct !DILexicalBlock(scope: !243, file: !45, line: 141, column: 17)
!249 = !DILocation(line: 144, column: 17, scope: !248)
!250 = !DILocation(line: 140, column: 37, scope: !243)
!251 = !DILocation(line: 140, column: 17, scope: !243)
!252 = distinct !{!252, !246, !253, !128}
!253 = !DILocation(line: 144, column: 17, scope: !240)
!254 = !DILocation(line: 145, column: 30, scope: !238)
!255 = !DILocation(line: 145, column: 17, scope: !238)
!256 = !DILocation(line: 146, column: 13, scope: !238)
!257 = !DILocation(line: 147, column: 9, scope: !234)
!258 = !DILocation(line: 149, column: 1, scope: !210)
!259 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_42_good", scope: !45, file: !45, line: 151, type: !85, scopeLine: 152, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!260 = !DILocation(line: 153, column: 5, scope: !259)
!261 = !DILocation(line: 154, column: 5, scope: !259)
!262 = !DILocation(line: 155, column: 1, scope: !259)
!263 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !264, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !42}
!266 = !DILocalVariable(name: "line", arg: 1, scope: !263, file: !3, line: 11, type: !42)
!267 = !DILocation(line: 11, column: 25, scope: !263)
!268 = !DILocation(line: 13, column: 1, scope: !263)
!269 = !DILocation(line: 14, column: 8, scope: !270)
!270 = distinct !DILexicalBlock(scope: !263, file: !3, line: 14, column: 8)
!271 = !DILocation(line: 14, column: 13, scope: !270)
!272 = !DILocation(line: 14, column: 8, scope: !263)
!273 = !DILocation(line: 16, column: 24, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !3, line: 15, column: 5)
!275 = !DILocation(line: 16, column: 9, scope: !274)
!276 = !DILocation(line: 17, column: 5, scope: !274)
!277 = !DILocation(line: 18, column: 5, scope: !263)
!278 = !DILocation(line: 19, column: 1, scope: !263)
!279 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !264, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!280 = !DILocalVariable(name: "line", arg: 1, scope: !279, file: !3, line: 20, type: !42)
!281 = !DILocation(line: 20, column: 29, scope: !279)
!282 = !DILocation(line: 22, column: 8, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !3, line: 22, column: 8)
!284 = !DILocation(line: 22, column: 13, scope: !283)
!285 = !DILocation(line: 22, column: 8, scope: !279)
!286 = !DILocation(line: 24, column: 24, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !3, line: 23, column: 5)
!288 = !DILocation(line: 24, column: 9, scope: !287)
!289 = !DILocation(line: 25, column: 5, scope: !287)
!290 = !DILocation(line: 26, column: 1, scope: !279)
!291 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !292, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !60, line: 74, baseType: !23)
!296 = !DILocalVariable(name: "line", arg: 1, scope: !291, file: !3, line: 27, type: !294)
!297 = !DILocation(line: 27, column: 29, scope: !291)
!298 = !DILocation(line: 29, column: 8, scope: !299)
!299 = distinct !DILexicalBlock(scope: !291, file: !3, line: 29, column: 8)
!300 = !DILocation(line: 29, column: 13, scope: !299)
!301 = !DILocation(line: 29, column: 8, scope: !291)
!302 = !DILocation(line: 31, column: 27, scope: !303)
!303 = distinct !DILexicalBlock(scope: !299, file: !3, line: 30, column: 5)
!304 = !DILocation(line: 31, column: 9, scope: !303)
!305 = !DILocation(line: 32, column: 5, scope: !303)
!306 = !DILocation(line: 33, column: 1, scope: !291)
!307 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !308, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !23}
!310 = !DILocalVariable(name: "intNumber", arg: 1, scope: !307, file: !3, line: 35, type: !23)
!311 = !DILocation(line: 35, column: 24, scope: !307)
!312 = !DILocation(line: 37, column: 20, scope: !307)
!313 = !DILocation(line: 37, column: 5, scope: !307)
!314 = !DILocation(line: 38, column: 1, scope: !307)
!315 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !316, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !318}
!318 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!319 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !315, file: !3, line: 40, type: !318)
!320 = !DILocation(line: 40, column: 28, scope: !315)
!321 = !DILocation(line: 42, column: 21, scope: !315)
!322 = !DILocation(line: 42, column: 5, scope: !315)
!323 = !DILocation(line: 43, column: 1, scope: !315)
!324 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !325, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !327}
!327 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!328 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !324, file: !3, line: 45, type: !327)
!329 = !DILocation(line: 45, column: 28, scope: !324)
!330 = !DILocation(line: 47, column: 20, scope: !324)
!331 = !DILocation(line: 47, column: 5, scope: !324)
!332 = !DILocation(line: 48, column: 1, scope: !324)
!333 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !334, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !336}
!336 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!337 = !DILocalVariable(name: "longNumber", arg: 1, scope: !333, file: !3, line: 50, type: !336)
!338 = !DILocation(line: 50, column: 26, scope: !333)
!339 = !DILocation(line: 52, column: 21, scope: !333)
!340 = !DILocation(line: 52, column: 5, scope: !333)
!341 = !DILocation(line: 53, column: 1, scope: !333)
!342 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !343, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !345}
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !346, line: 27, baseType: !347)
!346 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !348, line: 44, baseType: !336)
!348 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!349 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !342, file: !3, line: 55, type: !345)
!350 = !DILocation(line: 55, column: 33, scope: !342)
!351 = !DILocation(line: 57, column: 29, scope: !342)
!352 = !DILocation(line: 57, column: 5, scope: !342)
!353 = !DILocation(line: 58, column: 1, scope: !342)
!354 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !355, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !59}
!357 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !354, file: !3, line: 60, type: !59)
!358 = !DILocation(line: 60, column: 29, scope: !354)
!359 = !DILocation(line: 62, column: 21, scope: !354)
!360 = !DILocation(line: 62, column: 5, scope: !354)
!361 = !DILocation(line: 63, column: 1, scope: !354)
!362 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !363, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !43}
!365 = !DILocalVariable(name: "charHex", arg: 1, scope: !362, file: !3, line: 65, type: !43)
!366 = !DILocation(line: 65, column: 29, scope: !362)
!367 = !DILocation(line: 67, column: 22, scope: !362)
!368 = !DILocation(line: 67, column: 5, scope: !362)
!369 = !DILocation(line: 68, column: 1, scope: !362)
!370 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !371, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !295}
!373 = !DILocalVariable(name: "wideChar", arg: 1, scope: !370, file: !3, line: 70, type: !295)
!374 = !DILocation(line: 70, column: 29, scope: !370)
!375 = !DILocalVariable(name: "s", scope: !370, file: !3, line: 74, type: !376)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 64, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 2)
!379 = !DILocation(line: 74, column: 13, scope: !370)
!380 = !DILocation(line: 75, column: 16, scope: !370)
!381 = !DILocation(line: 75, column: 9, scope: !370)
!382 = !DILocation(line: 75, column: 14, scope: !370)
!383 = !DILocation(line: 76, column: 9, scope: !370)
!384 = !DILocation(line: 76, column: 14, scope: !370)
!385 = !DILocation(line: 77, column: 21, scope: !370)
!386 = !DILocation(line: 77, column: 5, scope: !370)
!387 = !DILocation(line: 78, column: 1, scope: !370)
!388 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !389, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !7}
!391 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !388, file: !3, line: 80, type: !7)
!392 = !DILocation(line: 80, column: 33, scope: !388)
!393 = !DILocation(line: 82, column: 20, scope: !388)
!394 = !DILocation(line: 82, column: 5, scope: !388)
!395 = !DILocation(line: 83, column: 1, scope: !388)
!396 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !397, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !25}
!399 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !396, file: !3, line: 85, type: !25)
!400 = !DILocation(line: 85, column: 45, scope: !396)
!401 = !DILocation(line: 87, column: 22, scope: !396)
!402 = !DILocation(line: 87, column: 5, scope: !396)
!403 = !DILocation(line: 88, column: 1, scope: !396)
!404 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !405, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !407}
!407 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!408 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !404, file: !3, line: 90, type: !407)
!409 = !DILocation(line: 90, column: 29, scope: !404)
!410 = !DILocation(line: 92, column: 20, scope: !404)
!411 = !DILocation(line: 92, column: 5, scope: !404)
!412 = !DILocation(line: 93, column: 1, scope: !404)
!413 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !414, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !416}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !418, line: 100, baseType: !419)
!418 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_051/source_code")
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !418, line: 96, size: 64, elements: !420)
!420 = !{!421, !422}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !419, file: !418, line: 98, baseType: !23, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !419, file: !418, line: 99, baseType: !23, size: 32, offset: 32)
!423 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !413, file: !3, line: 95, type: !416)
!424 = !DILocation(line: 95, column: 40, scope: !413)
!425 = !DILocation(line: 97, column: 26, scope: !413)
!426 = !DILocation(line: 97, column: 47, scope: !413)
!427 = !DILocation(line: 97, column: 55, scope: !413)
!428 = !DILocation(line: 97, column: 76, scope: !413)
!429 = !DILocation(line: 97, column: 5, scope: !413)
!430 = !DILocation(line: 98, column: 1, scope: !413)
!431 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !432, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !434, !59}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!435 = !DILocalVariable(name: "bytes", arg: 1, scope: !431, file: !3, line: 100, type: !434)
!436 = !DILocation(line: 100, column: 38, scope: !431)
!437 = !DILocalVariable(name: "numBytes", arg: 2, scope: !431, file: !3, line: 100, type: !59)
!438 = !DILocation(line: 100, column: 52, scope: !431)
!439 = !DILocalVariable(name: "i", scope: !431, file: !3, line: 102, type: !59)
!440 = !DILocation(line: 102, column: 12, scope: !431)
!441 = !DILocation(line: 103, column: 12, scope: !442)
!442 = distinct !DILexicalBlock(scope: !431, file: !3, line: 103, column: 5)
!443 = !DILocation(line: 103, column: 10, scope: !442)
!444 = !DILocation(line: 103, column: 17, scope: !445)
!445 = distinct !DILexicalBlock(scope: !442, file: !3, line: 103, column: 5)
!446 = !DILocation(line: 103, column: 21, scope: !445)
!447 = !DILocation(line: 103, column: 19, scope: !445)
!448 = !DILocation(line: 103, column: 5, scope: !442)
!449 = !DILocation(line: 105, column: 24, scope: !450)
!450 = distinct !DILexicalBlock(scope: !445, file: !3, line: 104, column: 5)
!451 = !DILocation(line: 105, column: 30, scope: !450)
!452 = !DILocation(line: 105, column: 9, scope: !450)
!453 = !DILocation(line: 106, column: 5, scope: !450)
!454 = !DILocation(line: 103, column: 31, scope: !445)
!455 = !DILocation(line: 103, column: 5, scope: !445)
!456 = distinct !{!456, !448, !457, !128}
!457 = !DILocation(line: 106, column: 5, scope: !442)
!458 = !DILocation(line: 107, column: 5, scope: !431)
!459 = !DILocation(line: 108, column: 1, scope: !431)
!460 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !461, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!461 = !DISubroutineType(types: !462)
!462 = !{!59, !434, !59, !42}
!463 = !DILocalVariable(name: "bytes", arg: 1, scope: !460, file: !3, line: 113, type: !434)
!464 = !DILocation(line: 113, column: 39, scope: !460)
!465 = !DILocalVariable(name: "numBytes", arg: 2, scope: !460, file: !3, line: 113, type: !59)
!466 = !DILocation(line: 113, column: 53, scope: !460)
!467 = !DILocalVariable(name: "hex", arg: 3, scope: !460, file: !3, line: 113, type: !42)
!468 = !DILocation(line: 113, column: 71, scope: !460)
!469 = !DILocalVariable(name: "numWritten", scope: !460, file: !3, line: 115, type: !59)
!470 = !DILocation(line: 115, column: 12, scope: !460)
!471 = !DILocation(line: 121, column: 5, scope: !460)
!472 = !DILocation(line: 121, column: 12, scope: !460)
!473 = !DILocation(line: 121, column: 25, scope: !460)
!474 = !DILocation(line: 121, column: 23, scope: !460)
!475 = !DILocation(line: 121, column: 34, scope: !460)
!476 = !DILocation(line: 121, column: 37, scope: !460)
!477 = !DILocation(line: 121, column: 67, scope: !460)
!478 = !DILocation(line: 121, column: 70, scope: !460)
!479 = !DILocation(line: 0, scope: !460)
!480 = !DILocalVariable(name: "byte", scope: !481, file: !3, line: 123, type: !23)
!481 = distinct !DILexicalBlock(scope: !460, file: !3, line: 122, column: 5)
!482 = !DILocation(line: 123, column: 13, scope: !481)
!483 = !DILocation(line: 124, column: 17, scope: !481)
!484 = !DILocation(line: 124, column: 25, scope: !481)
!485 = !DILocation(line: 124, column: 23, scope: !481)
!486 = !DILocation(line: 124, column: 9, scope: !481)
!487 = !DILocation(line: 125, column: 45, scope: !481)
!488 = !DILocation(line: 125, column: 29, scope: !481)
!489 = !DILocation(line: 125, column: 9, scope: !481)
!490 = !DILocation(line: 125, column: 15, scope: !481)
!491 = !DILocation(line: 125, column: 27, scope: !481)
!492 = !DILocation(line: 126, column: 9, scope: !481)
!493 = distinct !{!493, !471, !494, !128}
!494 = !DILocation(line: 127, column: 5, scope: !460)
!495 = !DILocation(line: 129, column: 12, scope: !460)
!496 = !DILocation(line: 129, column: 5, scope: !460)
!497 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !498, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!498 = !DISubroutineType(types: !499)
!499 = !{!59, !434, !59, !294}
!500 = !DILocalVariable(name: "bytes", arg: 1, scope: !497, file: !3, line: 135, type: !434)
!501 = !DILocation(line: 135, column: 41, scope: !497)
!502 = !DILocalVariable(name: "numBytes", arg: 2, scope: !497, file: !3, line: 135, type: !59)
!503 = !DILocation(line: 135, column: 55, scope: !497)
!504 = !DILocalVariable(name: "hex", arg: 3, scope: !497, file: !3, line: 135, type: !294)
!505 = !DILocation(line: 135, column: 76, scope: !497)
!506 = !DILocalVariable(name: "numWritten", scope: !497, file: !3, line: 137, type: !59)
!507 = !DILocation(line: 137, column: 12, scope: !497)
!508 = !DILocation(line: 143, column: 5, scope: !497)
!509 = !DILocation(line: 143, column: 12, scope: !497)
!510 = !DILocation(line: 143, column: 25, scope: !497)
!511 = !DILocation(line: 143, column: 23, scope: !497)
!512 = !DILocation(line: 143, column: 34, scope: !497)
!513 = !DILocation(line: 143, column: 47, scope: !497)
!514 = !DILocation(line: 143, column: 55, scope: !497)
!515 = !DILocation(line: 143, column: 53, scope: !497)
!516 = !DILocation(line: 143, column: 37, scope: !497)
!517 = !DILocation(line: 143, column: 68, scope: !497)
!518 = !DILocation(line: 143, column: 81, scope: !497)
!519 = !DILocation(line: 143, column: 89, scope: !497)
!520 = !DILocation(line: 143, column: 87, scope: !497)
!521 = !DILocation(line: 143, column: 100, scope: !497)
!522 = !DILocation(line: 143, column: 71, scope: !497)
!523 = !DILocation(line: 0, scope: !497)
!524 = !DILocalVariable(name: "byte", scope: !525, file: !3, line: 145, type: !23)
!525 = distinct !DILexicalBlock(scope: !497, file: !3, line: 144, column: 5)
!526 = !DILocation(line: 145, column: 13, scope: !525)
!527 = !DILocation(line: 146, column: 18, scope: !525)
!528 = !DILocation(line: 146, column: 26, scope: !525)
!529 = !DILocation(line: 146, column: 24, scope: !525)
!530 = !DILocation(line: 146, column: 9, scope: !525)
!531 = !DILocation(line: 147, column: 45, scope: !525)
!532 = !DILocation(line: 147, column: 29, scope: !525)
!533 = !DILocation(line: 147, column: 9, scope: !525)
!534 = !DILocation(line: 147, column: 15, scope: !525)
!535 = !DILocation(line: 147, column: 27, scope: !525)
!536 = !DILocation(line: 148, column: 9, scope: !525)
!537 = distinct !{!537, !508, !538, !128}
!538 = !DILocation(line: 149, column: 5, scope: !497)
!539 = !DILocation(line: 151, column: 12, scope: !497)
!540 = !DILocation(line: 151, column: 5, scope: !497)
!541 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !542, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DISubroutineType(types: !543)
!543 = !{!23}
!544 = !DILocation(line: 158, column: 5, scope: !541)
!545 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !542, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DILocation(line: 163, column: 5, scope: !545)
!547 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !542, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 168, column: 13, scope: !547)
!549 = !DILocation(line: 168, column: 20, scope: !547)
!550 = !DILocation(line: 168, column: 5, scope: !547)
!551 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !85, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DILocation(line: 187, column: 16, scope: !551)
!553 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !85, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DILocation(line: 188, column: 16, scope: !553)
!555 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !85, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DILocation(line: 189, column: 16, scope: !555)
!557 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !85, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 190, column: 16, scope: !557)
!559 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !85, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DILocation(line: 191, column: 16, scope: !559)
!561 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !85, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!562 = !DILocation(line: 192, column: 16, scope: !561)
!563 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !85, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DILocation(line: 193, column: 16, scope: !563)
!565 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !85, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DILocation(line: 194, column: 16, scope: !565)
!567 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !85, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DILocation(line: 195, column: 16, scope: !567)
!569 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !85, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!570 = !DILocation(line: 198, column: 15, scope: !569)
!571 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !85, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DILocation(line: 199, column: 15, scope: !571)
!573 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !85, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DILocation(line: 200, column: 15, scope: !573)
!575 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !85, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DILocation(line: 201, column: 15, scope: !575)
!577 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !85, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 202, column: 15, scope: !577)
!579 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !85, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 203, column: 15, scope: !579)
!581 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !85, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!582 = !DILocation(line: 204, column: 15, scope: !581)
!583 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !85, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DILocation(line: 205, column: 15, scope: !583)
!585 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !85, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DILocation(line: 206, column: 15, scope: !585)
