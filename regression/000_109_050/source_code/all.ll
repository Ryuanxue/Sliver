; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_41_bad() #0 !dbg !91 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !96, metadata !DIExpression()), !dbg !100
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !100
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !100
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !101
  store i8* %arraydecay, i8** %data, align 8, !dbg !102
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !103, metadata !DIExpression()), !dbg !108
  %1 = load i8*, i8** %data, align 8, !dbg !109
  %call = call i64 @strlen(i8* %1) #8, !dbg !110
  store i64 %call, i64* %dataLen, align 8, !dbg !108
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !111, metadata !DIExpression()), !dbg !112
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !113
  store i8* %call1, i8** %environment, align 8, !dbg !112
  %2 = load i8*, i8** %environment, align 8, !dbg !114
  %cmp = icmp ne i8* %2, null, !dbg !116
  br i1 %cmp, label %if.then, label %if.end, !dbg !117

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !118
  %4 = load i64, i64* %dataLen, align 8, !dbg !120
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !121
  %5 = load i8*, i8** %environment, align 8, !dbg !122
  %6 = load i64, i64* %dataLen, align 8, !dbg !123
  %sub = sub i64 100, %6, !dbg !124
  %sub2 = sub i64 %sub, 1, !dbg !125
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !126
  br label %if.end, !dbg !127

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !128
  call void @badSink(i8* %7), !dbg !129
  ret void, !dbg !130
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !131 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata i32* %i, metadata !134, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %n, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !139, metadata !DIExpression()), !dbg !140
  %0 = load i8*, i8** %data.addr, align 8, !dbg !141
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !143
  %cmp = icmp eq i32 %call, 1, !dbg !144
  br i1 %cmp, label %if.then, label %if.end, !dbg !145

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !146
  store i32 0, i32* %i, align 4, !dbg !148
  br label %for.cond, !dbg !150

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !151
  %2 = load i32, i32* %n, align 4, !dbg !153
  %cmp1 = icmp slt i32 %1, %2, !dbg !154
  br i1 %cmp1, label %for.body, label %for.end, !dbg !155

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !156
  %inc = add nsw i32 %3, 1, !dbg !156
  store i32 %inc, i32* %intVariable, align 4, !dbg !156
  br label %for.inc, !dbg !158

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !159
  %inc2 = add nsw i32 %4, 1, !dbg !159
  store i32 %inc2, i32* %i, align 4, !dbg !159
  br label %for.cond, !dbg !160, !llvm.loop !161

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !163
  call void @printIntLine(i32 %5), !dbg !164
  br label %if.end, !dbg !165

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !166
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !167 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !168, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !170, metadata !DIExpression()), !dbg !171
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !171
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !171
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !172
  store i8* %arraydecay, i8** %data, align 8, !dbg !173
  %1 = load i8*, i8** %data, align 8, !dbg !174
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !175
  %2 = load i8*, i8** %data, align 8, !dbg !176
  call void @goodG2BSink(i8* %2), !dbg !177
  ret void, !dbg !178
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !179 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i32* %i, metadata !182, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata i32* %n, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !187, metadata !DIExpression()), !dbg !188
  %0 = load i8*, i8** %data.addr, align 8, !dbg !189
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !191
  %cmp = icmp eq i32 %call, 1, !dbg !192
  br i1 %cmp, label %if.then, label %if.end5, !dbg !193

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !194
  %cmp1 = icmp slt i32 %1, 10000, !dbg !197
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !198

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !199
  store i32 0, i32* %i, align 4, !dbg !201
  br label %for.cond, !dbg !203

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !204
  %3 = load i32, i32* %n, align 4, !dbg !206
  %cmp3 = icmp slt i32 %2, %3, !dbg !207
  br i1 %cmp3, label %for.body, label %for.end, !dbg !208

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !209
  %inc = add nsw i32 %4, 1, !dbg !209
  store i32 %inc, i32* %intVariable, align 4, !dbg !209
  br label %for.inc, !dbg !211

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !212
  %inc4 = add nsw i32 %5, 1, !dbg !212
  store i32 %inc4, i32* %i, align 4, !dbg !212
  br label %for.cond, !dbg !213, !llvm.loop !214

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !216
  call void @printIntLine(i32 %6), !dbg !217
  br label %if.end, !dbg !218

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !219

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !220
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !221 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !222, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !224, metadata !DIExpression()), !dbg !225
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !225
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !225
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !226
  store i8* %arraydecay, i8** %data, align 8, !dbg !227
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !228, metadata !DIExpression()), !dbg !230
  %1 = load i8*, i8** %data, align 8, !dbg !231
  %call = call i64 @strlen(i8* %1) #8, !dbg !232
  store i64 %call, i64* %dataLen, align 8, !dbg !230
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !233, metadata !DIExpression()), !dbg !234
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !235
  store i8* %call1, i8** %environment, align 8, !dbg !234
  %2 = load i8*, i8** %environment, align 8, !dbg !236
  %cmp = icmp ne i8* %2, null, !dbg !238
  br i1 %cmp, label %if.then, label %if.end, !dbg !239

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !240
  %4 = load i64, i64* %dataLen, align 8, !dbg !242
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !243
  %5 = load i8*, i8** %environment, align 8, !dbg !244
  %6 = load i64, i64* %dataLen, align 8, !dbg !245
  %sub = sub i64 100, %6, !dbg !246
  %sub2 = sub i64 %sub, 1, !dbg !247
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !248
  br label %if.end, !dbg !249

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !250
  call void @goodB2GSink(i8* %7), !dbg !251
  ret void, !dbg !252
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_41_good() #0 !dbg !253 {
entry:
  call void @goodB2G(), !dbg !254
  call void @goodG2B(), !dbg !255
  ret void, !dbg !256
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !257 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !258, metadata !DIExpression()), !dbg !259
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !260
  %0 = load i8*, i8** %line.addr, align 8, !dbg !261
  %cmp = icmp ne i8* %0, null, !dbg !263
  br i1 %cmp, label %if.then, label %if.end, !dbg !264

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !265
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !267
  br label %if.end, !dbg !268

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !269
  ret void, !dbg !270
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !271 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !272, metadata !DIExpression()), !dbg !273
  %0 = load i8*, i8** %line.addr, align 8, !dbg !274
  %cmp = icmp ne i8* %0, null, !dbg !276
  br i1 %cmp, label %if.then, label %if.end, !dbg !277

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !278
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !280
  br label %if.end, !dbg !281

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !282
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !283 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !288, metadata !DIExpression()), !dbg !289
  %0 = load i32*, i32** %line.addr, align 8, !dbg !290
  %cmp = icmp ne i32* %0, null, !dbg !292
  br i1 %cmp, label %if.then, label %if.end, !dbg !293

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !294
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !296
  br label %if.end, !dbg !297

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !298
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !299 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !302, metadata !DIExpression()), !dbg !303
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !304
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !305
  ret void, !dbg !306
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !307 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !311, metadata !DIExpression()), !dbg !312
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !313
  %conv = sext i16 %0 to i32, !dbg !313
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !314
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !316 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !320, metadata !DIExpression()), !dbg !321
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !322
  %conv = fpext float %0 to double, !dbg !322
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !323
  ret void, !dbg !324
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !325 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !329, metadata !DIExpression()), !dbg !330
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !331
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !332
  ret void, !dbg !333
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !334 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !341, metadata !DIExpression()), !dbg !342
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !343
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !344
  ret void, !dbg !345
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !346 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !351
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !352
  ret void, !dbg !353
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !354 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !357, metadata !DIExpression()), !dbg !358
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !359
  %conv = sext i8 %0 to i32, !dbg !359
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !360
  ret void, !dbg !361
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !362 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !365, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !367, metadata !DIExpression()), !dbg !371
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !372
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !373
  store i32 %0, i32* %arrayidx, align 4, !dbg !374
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !375
  store i32 0, i32* %arrayidx1, align 4, !dbg !376
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !377
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !378
  ret void, !dbg !379
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !380 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !386
  ret void, !dbg !387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !388 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !393
  %conv = zext i8 %0 to i32, !dbg !393
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !394
  ret void, !dbg !395
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !396 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !400, metadata !DIExpression()), !dbg !401
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !402
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !403
  ret void, !dbg !404
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !405 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !415, metadata !DIExpression()), !dbg !416
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !417
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !418
  %1 = load i32, i32* %intOne, align 4, !dbg !418
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !419
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !420
  %3 = load i32, i32* %intTwo, align 4, !dbg !420
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !421
  ret void, !dbg !422
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !423 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !427, metadata !DIExpression()), !dbg !428
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !429, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.declare(metadata i64* %i, metadata !431, metadata !DIExpression()), !dbg !432
  store i64 0, i64* %i, align 8, !dbg !433
  br label %for.cond, !dbg !435

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !436
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !438
  %cmp = icmp ult i64 %0, %1, !dbg !439
  br i1 %cmp, label %for.body, label %for.end, !dbg !440

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !441
  %3 = load i64, i64* %i, align 8, !dbg !443
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !441
  %4 = load i8, i8* %arrayidx, align 1, !dbg !441
  %conv = zext i8 %4 to i32, !dbg !441
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !444
  br label %for.inc, !dbg !445

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !446
  %inc = add i64 %5, 1, !dbg !446
  store i64 %inc, i64* %i, align 8, !dbg !446
  br label %for.cond, !dbg !447, !llvm.loop !448

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !450
  ret void, !dbg !451
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !452 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !455, metadata !DIExpression()), !dbg !456
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !457, metadata !DIExpression()), !dbg !458
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !459, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !461, metadata !DIExpression()), !dbg !462
  store i64 0, i64* %numWritten, align 8, !dbg !462
  br label %while.cond, !dbg !463

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !464
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !465
  %cmp = icmp ult i64 %0, %1, !dbg !466
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !467

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !468
  %2 = load i16*, i16** %call, align 8, !dbg !468
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !468
  %4 = load i64, i64* %numWritten, align 8, !dbg !468
  %mul = mul i64 2, %4, !dbg !468
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !468
  %5 = load i8, i8* %arrayidx, align 1, !dbg !468
  %conv = sext i8 %5 to i32, !dbg !468
  %idxprom = sext i32 %conv to i64, !dbg !468
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !468
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !468
  %conv2 = zext i16 %6 to i32, !dbg !468
  %and = and i32 %conv2, 4096, !dbg !468
  %tobool = icmp ne i32 %and, 0, !dbg !468
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !469

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !470
  %7 = load i16*, i16** %call3, align 8, !dbg !470
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !470
  %9 = load i64, i64* %numWritten, align 8, !dbg !470
  %mul4 = mul i64 2, %9, !dbg !470
  %add = add i64 %mul4, 1, !dbg !470
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !470
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !470
  %conv6 = sext i8 %10 to i32, !dbg !470
  %idxprom7 = sext i32 %conv6 to i64, !dbg !470
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !470
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !470
  %conv9 = zext i16 %11 to i32, !dbg !470
  %and10 = and i32 %conv9, 4096, !dbg !470
  %tobool11 = icmp ne i32 %and10, 0, !dbg !469
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !471
  br i1 %12, label %while.body, label %while.end, !dbg !463

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !472, metadata !DIExpression()), !dbg !474
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !475
  %14 = load i64, i64* %numWritten, align 8, !dbg !476
  %mul12 = mul i64 2, %14, !dbg !477
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !475
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !478
  %15 = load i32, i32* %byte, align 4, !dbg !479
  %conv15 = trunc i32 %15 to i8, !dbg !480
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !481
  %17 = load i64, i64* %numWritten, align 8, !dbg !482
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !481
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !483
  %18 = load i64, i64* %numWritten, align 8, !dbg !484
  %inc = add i64 %18, 1, !dbg !484
  store i64 %inc, i64* %numWritten, align 8, !dbg !484
  br label %while.cond, !dbg !463, !llvm.loop !485

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !487
  ret i64 %19, !dbg !488
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !489 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !492, metadata !DIExpression()), !dbg !493
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !494, metadata !DIExpression()), !dbg !495
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !496, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !498, metadata !DIExpression()), !dbg !499
  store i64 0, i64* %numWritten, align 8, !dbg !499
  br label %while.cond, !dbg !500

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !501
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !502
  %cmp = icmp ult i64 %0, %1, !dbg !503
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !504

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !505
  %3 = load i64, i64* %numWritten, align 8, !dbg !506
  %mul = mul i64 2, %3, !dbg !507
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !505
  %4 = load i32, i32* %arrayidx, align 4, !dbg !505
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !508
  %tobool = icmp ne i32 %call, 0, !dbg !508
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !509

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !510
  %6 = load i64, i64* %numWritten, align 8, !dbg !511
  %mul1 = mul i64 2, %6, !dbg !512
  %add = add i64 %mul1, 1, !dbg !513
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !510
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !510
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !514
  %tobool4 = icmp ne i32 %call3, 0, !dbg !509
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !515
  br i1 %8, label %while.body, label %while.end, !dbg !500

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !516, metadata !DIExpression()), !dbg !518
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !519
  %10 = load i64, i64* %numWritten, align 8, !dbg !520
  %mul5 = mul i64 2, %10, !dbg !521
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !519
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !522
  %11 = load i32, i32* %byte, align 4, !dbg !523
  %conv = trunc i32 %11 to i8, !dbg !524
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !525
  %13 = load i64, i64* %numWritten, align 8, !dbg !526
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !525
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !527
  %14 = load i64, i64* %numWritten, align 8, !dbg !528
  %inc = add i64 %14, 1, !dbg !528
  store i64 %inc, i64* %numWritten, align 8, !dbg !528
  br label %while.cond, !dbg !500, !llvm.loop !529

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !531
  ret i64 %15, !dbg !532
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !533 {
entry:
  ret i32 1, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !537 {
entry:
  ret i32 0, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !539 {
entry:
  %call = call i32 @rand() #7, !dbg !540
  %rem = srem i32 %call, 2, !dbg !541
  ret i32 %rem, !dbg !542
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !543 {
entry:
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !545 {
entry:
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !547 {
entry:
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !549 {
entry:
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !551 {
entry:
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !553 {
entry:
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !555 {
entry:
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !557 {
entry:
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !559 {
entry:
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !561 {
entry:
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !563 {
entry:
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !565 {
entry:
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !567 {
entry:
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !569 {
entry:
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !571 {
entry:
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !573 {
entry:
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !575 {
entry:
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !577 {
entry:
  ret void, !dbg !578
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_050/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_41.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_050/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "badSink", scope: !45, file: !45, line: 37, type: !53, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !42}
!55 = !DILocalVariable(name: "data", arg: 1, scope: !52, file: !45, line: 37, type: !42)
!56 = !DILocation(line: 37, column: 21, scope: !52)
!57 = !DILocalVariable(name: "i", scope: !58, file: !45, line: 40, type: !23)
!58 = distinct !DILexicalBlock(scope: !52, file: !45, line: 39, column: 5)
!59 = !DILocation(line: 40, column: 13, scope: !58)
!60 = !DILocalVariable(name: "n", scope: !58, file: !45, line: 40, type: !23)
!61 = !DILocation(line: 40, column: 16, scope: !58)
!62 = !DILocalVariable(name: "intVariable", scope: !58, file: !45, line: 40, type: !23)
!63 = !DILocation(line: 40, column: 19, scope: !58)
!64 = !DILocation(line: 41, column: 20, scope: !65)
!65 = distinct !DILexicalBlock(scope: !58, file: !45, line: 41, column: 13)
!66 = !DILocation(line: 41, column: 13, scope: !65)
!67 = !DILocation(line: 41, column: 36, scope: !65)
!68 = !DILocation(line: 41, column: 13, scope: !58)
!69 = !DILocation(line: 44, column: 25, scope: !70)
!70 = distinct !DILexicalBlock(scope: !65, file: !45, line: 42, column: 9)
!71 = !DILocation(line: 45, column: 20, scope: !72)
!72 = distinct !DILexicalBlock(scope: !70, file: !45, line: 45, column: 13)
!73 = !DILocation(line: 45, column: 18, scope: !72)
!74 = !DILocation(line: 45, column: 25, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !45, line: 45, column: 13)
!76 = !DILocation(line: 45, column: 29, scope: !75)
!77 = !DILocation(line: 45, column: 27, scope: !75)
!78 = !DILocation(line: 45, column: 13, scope: !72)
!79 = !DILocation(line: 48, column: 28, scope: !80)
!80 = distinct !DILexicalBlock(scope: !75, file: !45, line: 46, column: 13)
!81 = !DILocation(line: 49, column: 13, scope: !80)
!82 = !DILocation(line: 45, column: 33, scope: !75)
!83 = !DILocation(line: 45, column: 13, scope: !75)
!84 = distinct !{!84, !78, !85, !86}
!85 = !DILocation(line: 49, column: 13, scope: !72)
!86 = !{!"llvm.loop.mustprogress"}
!87 = !DILocation(line: 50, column: 26, scope: !70)
!88 = !DILocation(line: 50, column: 13, scope: !70)
!89 = !DILocation(line: 51, column: 9, scope: !70)
!90 = !DILocation(line: 53, column: 1, scope: !52)
!91 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_41_bad", scope: !45, file: !45, line: 55, type: !92, scopeLine: 56, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!92 = !DISubroutineType(types: !93)
!93 = !{null}
!94 = !DILocalVariable(name: "data", scope: !91, file: !45, line: 57, type: !42)
!95 = !DILocation(line: 57, column: 12, scope: !91)
!96 = !DILocalVariable(name: "dataBuffer", scope: !91, file: !45, line: 58, type: !97)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 100)
!100 = !DILocation(line: 58, column: 10, scope: !91)
!101 = !DILocation(line: 59, column: 12, scope: !91)
!102 = !DILocation(line: 59, column: 10, scope: !91)
!103 = !DILocalVariable(name: "dataLen", scope: !104, file: !45, line: 62, type: !105)
!104 = distinct !DILexicalBlock(scope: !91, file: !45, line: 60, column: 5)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !106, line: 46, baseType: !107)
!106 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!107 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!108 = !DILocation(line: 62, column: 16, scope: !104)
!109 = !DILocation(line: 62, column: 33, scope: !104)
!110 = !DILocation(line: 62, column: 26, scope: !104)
!111 = !DILocalVariable(name: "environment", scope: !104, file: !45, line: 63, type: !42)
!112 = !DILocation(line: 63, column: 16, scope: !104)
!113 = !DILocation(line: 63, column: 30, scope: !104)
!114 = !DILocation(line: 65, column: 13, scope: !115)
!115 = distinct !DILexicalBlock(scope: !104, file: !45, line: 65, column: 13)
!116 = !DILocation(line: 65, column: 25, scope: !115)
!117 = !DILocation(line: 65, column: 13, scope: !104)
!118 = !DILocation(line: 68, column: 21, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !45, line: 66, column: 9)
!120 = !DILocation(line: 68, column: 26, scope: !119)
!121 = !DILocation(line: 68, column: 25, scope: !119)
!122 = !DILocation(line: 68, column: 35, scope: !119)
!123 = !DILocation(line: 68, column: 52, scope: !119)
!124 = !DILocation(line: 68, column: 51, scope: !119)
!125 = !DILocation(line: 68, column: 59, scope: !119)
!126 = !DILocation(line: 68, column: 13, scope: !119)
!127 = !DILocation(line: 69, column: 9, scope: !119)
!128 = !DILocation(line: 71, column: 13, scope: !91)
!129 = !DILocation(line: 71, column: 5, scope: !91)
!130 = !DILocation(line: 72, column: 1, scope: !91)
!131 = distinct !DISubprogram(name: "goodG2BSink", scope: !45, file: !45, line: 79, type: !53, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!132 = !DILocalVariable(name: "data", arg: 1, scope: !131, file: !45, line: 79, type: !42)
!133 = !DILocation(line: 79, column: 25, scope: !131)
!134 = !DILocalVariable(name: "i", scope: !135, file: !45, line: 82, type: !23)
!135 = distinct !DILexicalBlock(scope: !131, file: !45, line: 81, column: 5)
!136 = !DILocation(line: 82, column: 13, scope: !135)
!137 = !DILocalVariable(name: "n", scope: !135, file: !45, line: 82, type: !23)
!138 = !DILocation(line: 82, column: 16, scope: !135)
!139 = !DILocalVariable(name: "intVariable", scope: !135, file: !45, line: 82, type: !23)
!140 = !DILocation(line: 82, column: 19, scope: !135)
!141 = !DILocation(line: 83, column: 20, scope: !142)
!142 = distinct !DILexicalBlock(scope: !135, file: !45, line: 83, column: 13)
!143 = !DILocation(line: 83, column: 13, scope: !142)
!144 = !DILocation(line: 83, column: 36, scope: !142)
!145 = !DILocation(line: 83, column: 13, scope: !135)
!146 = !DILocation(line: 86, column: 25, scope: !147)
!147 = distinct !DILexicalBlock(scope: !142, file: !45, line: 84, column: 9)
!148 = !DILocation(line: 87, column: 20, scope: !149)
!149 = distinct !DILexicalBlock(scope: !147, file: !45, line: 87, column: 13)
!150 = !DILocation(line: 87, column: 18, scope: !149)
!151 = !DILocation(line: 87, column: 25, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !45, line: 87, column: 13)
!153 = !DILocation(line: 87, column: 29, scope: !152)
!154 = !DILocation(line: 87, column: 27, scope: !152)
!155 = !DILocation(line: 87, column: 13, scope: !149)
!156 = !DILocation(line: 90, column: 28, scope: !157)
!157 = distinct !DILexicalBlock(scope: !152, file: !45, line: 88, column: 13)
!158 = !DILocation(line: 91, column: 13, scope: !157)
!159 = !DILocation(line: 87, column: 33, scope: !152)
!160 = !DILocation(line: 87, column: 13, scope: !152)
!161 = distinct !{!161, !155, !162, !86}
!162 = !DILocation(line: 91, column: 13, scope: !149)
!163 = !DILocation(line: 92, column: 26, scope: !147)
!164 = !DILocation(line: 92, column: 13, scope: !147)
!165 = !DILocation(line: 93, column: 9, scope: !147)
!166 = !DILocation(line: 95, column: 1, scope: !131)
!167 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 97, type: !92, scopeLine: 98, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!168 = !DILocalVariable(name: "data", scope: !167, file: !45, line: 99, type: !42)
!169 = !DILocation(line: 99, column: 12, scope: !167)
!170 = !DILocalVariable(name: "dataBuffer", scope: !167, file: !45, line: 100, type: !97)
!171 = !DILocation(line: 100, column: 10, scope: !167)
!172 = !DILocation(line: 101, column: 12, scope: !167)
!173 = !DILocation(line: 101, column: 10, scope: !167)
!174 = !DILocation(line: 103, column: 12, scope: !167)
!175 = !DILocation(line: 103, column: 5, scope: !167)
!176 = !DILocation(line: 104, column: 17, scope: !167)
!177 = !DILocation(line: 104, column: 5, scope: !167)
!178 = !DILocation(line: 105, column: 1, scope: !167)
!179 = distinct !DISubprogram(name: "goodB2GSink", scope: !45, file: !45, line: 108, type: !53, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!180 = !DILocalVariable(name: "data", arg: 1, scope: !179, file: !45, line: 108, type: !42)
!181 = !DILocation(line: 108, column: 25, scope: !179)
!182 = !DILocalVariable(name: "i", scope: !183, file: !45, line: 111, type: !23)
!183 = distinct !DILexicalBlock(scope: !179, file: !45, line: 110, column: 5)
!184 = !DILocation(line: 111, column: 13, scope: !183)
!185 = !DILocalVariable(name: "n", scope: !183, file: !45, line: 111, type: !23)
!186 = !DILocation(line: 111, column: 16, scope: !183)
!187 = !DILocalVariable(name: "intVariable", scope: !183, file: !45, line: 111, type: !23)
!188 = !DILocation(line: 111, column: 19, scope: !183)
!189 = !DILocation(line: 112, column: 20, scope: !190)
!190 = distinct !DILexicalBlock(scope: !183, file: !45, line: 112, column: 13)
!191 = !DILocation(line: 112, column: 13, scope: !190)
!192 = !DILocation(line: 112, column: 36, scope: !190)
!193 = !DILocation(line: 112, column: 13, scope: !183)
!194 = !DILocation(line: 115, column: 17, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !45, line: 115, column: 17)
!196 = distinct !DILexicalBlock(scope: !190, file: !45, line: 113, column: 9)
!197 = !DILocation(line: 115, column: 19, scope: !195)
!198 = !DILocation(line: 115, column: 17, scope: !196)
!199 = !DILocation(line: 117, column: 29, scope: !200)
!200 = distinct !DILexicalBlock(scope: !195, file: !45, line: 116, column: 13)
!201 = !DILocation(line: 118, column: 24, scope: !202)
!202 = distinct !DILexicalBlock(scope: !200, file: !45, line: 118, column: 17)
!203 = !DILocation(line: 118, column: 22, scope: !202)
!204 = !DILocation(line: 118, column: 29, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !45, line: 118, column: 17)
!206 = !DILocation(line: 118, column: 33, scope: !205)
!207 = !DILocation(line: 118, column: 31, scope: !205)
!208 = !DILocation(line: 118, column: 17, scope: !202)
!209 = !DILocation(line: 121, column: 32, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !45, line: 119, column: 17)
!211 = !DILocation(line: 122, column: 17, scope: !210)
!212 = !DILocation(line: 118, column: 37, scope: !205)
!213 = !DILocation(line: 118, column: 17, scope: !205)
!214 = distinct !{!214, !208, !215, !86}
!215 = !DILocation(line: 122, column: 17, scope: !202)
!216 = !DILocation(line: 123, column: 30, scope: !200)
!217 = !DILocation(line: 123, column: 17, scope: !200)
!218 = !DILocation(line: 124, column: 13, scope: !200)
!219 = !DILocation(line: 125, column: 9, scope: !196)
!220 = !DILocation(line: 127, column: 1, scope: !179)
!221 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 129, type: !92, scopeLine: 130, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!222 = !DILocalVariable(name: "data", scope: !221, file: !45, line: 131, type: !42)
!223 = !DILocation(line: 131, column: 12, scope: !221)
!224 = !DILocalVariable(name: "dataBuffer", scope: !221, file: !45, line: 132, type: !97)
!225 = !DILocation(line: 132, column: 10, scope: !221)
!226 = !DILocation(line: 133, column: 12, scope: !221)
!227 = !DILocation(line: 133, column: 10, scope: !221)
!228 = !DILocalVariable(name: "dataLen", scope: !229, file: !45, line: 136, type: !105)
!229 = distinct !DILexicalBlock(scope: !221, file: !45, line: 134, column: 5)
!230 = !DILocation(line: 136, column: 16, scope: !229)
!231 = !DILocation(line: 136, column: 33, scope: !229)
!232 = !DILocation(line: 136, column: 26, scope: !229)
!233 = !DILocalVariable(name: "environment", scope: !229, file: !45, line: 137, type: !42)
!234 = !DILocation(line: 137, column: 16, scope: !229)
!235 = !DILocation(line: 137, column: 30, scope: !229)
!236 = !DILocation(line: 139, column: 13, scope: !237)
!237 = distinct !DILexicalBlock(scope: !229, file: !45, line: 139, column: 13)
!238 = !DILocation(line: 139, column: 25, scope: !237)
!239 = !DILocation(line: 139, column: 13, scope: !229)
!240 = !DILocation(line: 142, column: 21, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !45, line: 140, column: 9)
!242 = !DILocation(line: 142, column: 26, scope: !241)
!243 = !DILocation(line: 142, column: 25, scope: !241)
!244 = !DILocation(line: 142, column: 35, scope: !241)
!245 = !DILocation(line: 142, column: 52, scope: !241)
!246 = !DILocation(line: 142, column: 51, scope: !241)
!247 = !DILocation(line: 142, column: 59, scope: !241)
!248 = !DILocation(line: 142, column: 13, scope: !241)
!249 = !DILocation(line: 143, column: 9, scope: !241)
!250 = !DILocation(line: 145, column: 17, scope: !221)
!251 = !DILocation(line: 145, column: 5, scope: !221)
!252 = !DILocation(line: 146, column: 1, scope: !221)
!253 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_41_good", scope: !45, file: !45, line: 148, type: !92, scopeLine: 149, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!254 = !DILocation(line: 150, column: 5, scope: !253)
!255 = !DILocation(line: 151, column: 5, scope: !253)
!256 = !DILocation(line: 152, column: 1, scope: !253)
!257 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !53, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!258 = !DILocalVariable(name: "line", arg: 1, scope: !257, file: !3, line: 11, type: !42)
!259 = !DILocation(line: 11, column: 25, scope: !257)
!260 = !DILocation(line: 13, column: 1, scope: !257)
!261 = !DILocation(line: 14, column: 8, scope: !262)
!262 = distinct !DILexicalBlock(scope: !257, file: !3, line: 14, column: 8)
!263 = !DILocation(line: 14, column: 13, scope: !262)
!264 = !DILocation(line: 14, column: 8, scope: !257)
!265 = !DILocation(line: 16, column: 24, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !3, line: 15, column: 5)
!267 = !DILocation(line: 16, column: 9, scope: !266)
!268 = !DILocation(line: 17, column: 5, scope: !266)
!269 = !DILocation(line: 18, column: 5, scope: !257)
!270 = !DILocation(line: 19, column: 1, scope: !257)
!271 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !53, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!272 = !DILocalVariable(name: "line", arg: 1, scope: !271, file: !3, line: 20, type: !42)
!273 = !DILocation(line: 20, column: 29, scope: !271)
!274 = !DILocation(line: 22, column: 8, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !3, line: 22, column: 8)
!276 = !DILocation(line: 22, column: 13, scope: !275)
!277 = !DILocation(line: 22, column: 8, scope: !271)
!278 = !DILocation(line: 24, column: 24, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !3, line: 23, column: 5)
!280 = !DILocation(line: 24, column: 9, scope: !279)
!281 = !DILocation(line: 25, column: 5, scope: !279)
!282 = !DILocation(line: 26, column: 1, scope: !271)
!283 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !284, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !286}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !106, line: 74, baseType: !23)
!288 = !DILocalVariable(name: "line", arg: 1, scope: !283, file: !3, line: 27, type: !286)
!289 = !DILocation(line: 27, column: 29, scope: !283)
!290 = !DILocation(line: 29, column: 8, scope: !291)
!291 = distinct !DILexicalBlock(scope: !283, file: !3, line: 29, column: 8)
!292 = !DILocation(line: 29, column: 13, scope: !291)
!293 = !DILocation(line: 29, column: 8, scope: !283)
!294 = !DILocation(line: 31, column: 27, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !3, line: 30, column: 5)
!296 = !DILocation(line: 31, column: 9, scope: !295)
!297 = !DILocation(line: 32, column: 5, scope: !295)
!298 = !DILocation(line: 33, column: 1, scope: !283)
!299 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !300, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !23}
!302 = !DILocalVariable(name: "intNumber", arg: 1, scope: !299, file: !3, line: 35, type: !23)
!303 = !DILocation(line: 35, column: 24, scope: !299)
!304 = !DILocation(line: 37, column: 20, scope: !299)
!305 = !DILocation(line: 37, column: 5, scope: !299)
!306 = !DILocation(line: 38, column: 1, scope: !299)
!307 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !308, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !310}
!310 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!311 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !307, file: !3, line: 40, type: !310)
!312 = !DILocation(line: 40, column: 28, scope: !307)
!313 = !DILocation(line: 42, column: 21, scope: !307)
!314 = !DILocation(line: 42, column: 5, scope: !307)
!315 = !DILocation(line: 43, column: 1, scope: !307)
!316 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !317, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !319}
!319 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!320 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !316, file: !3, line: 45, type: !319)
!321 = !DILocation(line: 45, column: 28, scope: !316)
!322 = !DILocation(line: 47, column: 20, scope: !316)
!323 = !DILocation(line: 47, column: 5, scope: !316)
!324 = !DILocation(line: 48, column: 1, scope: !316)
!325 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !326, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !328}
!328 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!329 = !DILocalVariable(name: "longNumber", arg: 1, scope: !325, file: !3, line: 50, type: !328)
!330 = !DILocation(line: 50, column: 26, scope: !325)
!331 = !DILocation(line: 52, column: 21, scope: !325)
!332 = !DILocation(line: 52, column: 5, scope: !325)
!333 = !DILocation(line: 53, column: 1, scope: !325)
!334 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !335, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !337}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !338, line: 27, baseType: !339)
!338 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !340, line: 44, baseType: !328)
!340 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!341 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !334, file: !3, line: 55, type: !337)
!342 = !DILocation(line: 55, column: 33, scope: !334)
!343 = !DILocation(line: 57, column: 29, scope: !334)
!344 = !DILocation(line: 57, column: 5, scope: !334)
!345 = !DILocation(line: 58, column: 1, scope: !334)
!346 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !347, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !105}
!349 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !346, file: !3, line: 60, type: !105)
!350 = !DILocation(line: 60, column: 29, scope: !346)
!351 = !DILocation(line: 62, column: 21, scope: !346)
!352 = !DILocation(line: 62, column: 5, scope: !346)
!353 = !DILocation(line: 63, column: 1, scope: !346)
!354 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !355, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !43}
!357 = !DILocalVariable(name: "charHex", arg: 1, scope: !354, file: !3, line: 65, type: !43)
!358 = !DILocation(line: 65, column: 29, scope: !354)
!359 = !DILocation(line: 67, column: 22, scope: !354)
!360 = !DILocation(line: 67, column: 5, scope: !354)
!361 = !DILocation(line: 68, column: 1, scope: !354)
!362 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !363, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !287}
!365 = !DILocalVariable(name: "wideChar", arg: 1, scope: !362, file: !3, line: 70, type: !287)
!366 = !DILocation(line: 70, column: 29, scope: !362)
!367 = !DILocalVariable(name: "s", scope: !362, file: !3, line: 74, type: !368)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 64, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 2)
!371 = !DILocation(line: 74, column: 13, scope: !362)
!372 = !DILocation(line: 75, column: 16, scope: !362)
!373 = !DILocation(line: 75, column: 9, scope: !362)
!374 = !DILocation(line: 75, column: 14, scope: !362)
!375 = !DILocation(line: 76, column: 9, scope: !362)
!376 = !DILocation(line: 76, column: 14, scope: !362)
!377 = !DILocation(line: 77, column: 21, scope: !362)
!378 = !DILocation(line: 77, column: 5, scope: !362)
!379 = !DILocation(line: 78, column: 1, scope: !362)
!380 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !381, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !7}
!383 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !380, file: !3, line: 80, type: !7)
!384 = !DILocation(line: 80, column: 33, scope: !380)
!385 = !DILocation(line: 82, column: 20, scope: !380)
!386 = !DILocation(line: 82, column: 5, scope: !380)
!387 = !DILocation(line: 83, column: 1, scope: !380)
!388 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !389, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !25}
!391 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !388, file: !3, line: 85, type: !25)
!392 = !DILocation(line: 85, column: 45, scope: !388)
!393 = !DILocation(line: 87, column: 22, scope: !388)
!394 = !DILocation(line: 87, column: 5, scope: !388)
!395 = !DILocation(line: 88, column: 1, scope: !388)
!396 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !397, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !399}
!399 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!400 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !396, file: !3, line: 90, type: !399)
!401 = !DILocation(line: 90, column: 29, scope: !396)
!402 = !DILocation(line: 92, column: 20, scope: !396)
!403 = !DILocation(line: 92, column: 5, scope: !396)
!404 = !DILocation(line: 93, column: 1, scope: !396)
!405 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !406, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !408}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !410, line: 100, baseType: !411)
!410 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_050/source_code")
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !410, line: 96, size: 64, elements: !412)
!412 = !{!413, !414}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !411, file: !410, line: 98, baseType: !23, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !411, file: !410, line: 99, baseType: !23, size: 32, offset: 32)
!415 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !405, file: !3, line: 95, type: !408)
!416 = !DILocation(line: 95, column: 40, scope: !405)
!417 = !DILocation(line: 97, column: 26, scope: !405)
!418 = !DILocation(line: 97, column: 47, scope: !405)
!419 = !DILocation(line: 97, column: 55, scope: !405)
!420 = !DILocation(line: 97, column: 76, scope: !405)
!421 = !DILocation(line: 97, column: 5, scope: !405)
!422 = !DILocation(line: 98, column: 1, scope: !405)
!423 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !424, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !426, !105}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!427 = !DILocalVariable(name: "bytes", arg: 1, scope: !423, file: !3, line: 100, type: !426)
!428 = !DILocation(line: 100, column: 38, scope: !423)
!429 = !DILocalVariable(name: "numBytes", arg: 2, scope: !423, file: !3, line: 100, type: !105)
!430 = !DILocation(line: 100, column: 52, scope: !423)
!431 = !DILocalVariable(name: "i", scope: !423, file: !3, line: 102, type: !105)
!432 = !DILocation(line: 102, column: 12, scope: !423)
!433 = !DILocation(line: 103, column: 12, scope: !434)
!434 = distinct !DILexicalBlock(scope: !423, file: !3, line: 103, column: 5)
!435 = !DILocation(line: 103, column: 10, scope: !434)
!436 = !DILocation(line: 103, column: 17, scope: !437)
!437 = distinct !DILexicalBlock(scope: !434, file: !3, line: 103, column: 5)
!438 = !DILocation(line: 103, column: 21, scope: !437)
!439 = !DILocation(line: 103, column: 19, scope: !437)
!440 = !DILocation(line: 103, column: 5, scope: !434)
!441 = !DILocation(line: 105, column: 24, scope: !442)
!442 = distinct !DILexicalBlock(scope: !437, file: !3, line: 104, column: 5)
!443 = !DILocation(line: 105, column: 30, scope: !442)
!444 = !DILocation(line: 105, column: 9, scope: !442)
!445 = !DILocation(line: 106, column: 5, scope: !442)
!446 = !DILocation(line: 103, column: 31, scope: !437)
!447 = !DILocation(line: 103, column: 5, scope: !437)
!448 = distinct !{!448, !440, !449, !86}
!449 = !DILocation(line: 106, column: 5, scope: !434)
!450 = !DILocation(line: 107, column: 5, scope: !423)
!451 = !DILocation(line: 108, column: 1, scope: !423)
!452 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !453, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!453 = !DISubroutineType(types: !454)
!454 = !{!105, !426, !105, !42}
!455 = !DILocalVariable(name: "bytes", arg: 1, scope: !452, file: !3, line: 113, type: !426)
!456 = !DILocation(line: 113, column: 39, scope: !452)
!457 = !DILocalVariable(name: "numBytes", arg: 2, scope: !452, file: !3, line: 113, type: !105)
!458 = !DILocation(line: 113, column: 53, scope: !452)
!459 = !DILocalVariable(name: "hex", arg: 3, scope: !452, file: !3, line: 113, type: !42)
!460 = !DILocation(line: 113, column: 71, scope: !452)
!461 = !DILocalVariable(name: "numWritten", scope: !452, file: !3, line: 115, type: !105)
!462 = !DILocation(line: 115, column: 12, scope: !452)
!463 = !DILocation(line: 121, column: 5, scope: !452)
!464 = !DILocation(line: 121, column: 12, scope: !452)
!465 = !DILocation(line: 121, column: 25, scope: !452)
!466 = !DILocation(line: 121, column: 23, scope: !452)
!467 = !DILocation(line: 121, column: 34, scope: !452)
!468 = !DILocation(line: 121, column: 37, scope: !452)
!469 = !DILocation(line: 121, column: 67, scope: !452)
!470 = !DILocation(line: 121, column: 70, scope: !452)
!471 = !DILocation(line: 0, scope: !452)
!472 = !DILocalVariable(name: "byte", scope: !473, file: !3, line: 123, type: !23)
!473 = distinct !DILexicalBlock(scope: !452, file: !3, line: 122, column: 5)
!474 = !DILocation(line: 123, column: 13, scope: !473)
!475 = !DILocation(line: 124, column: 17, scope: !473)
!476 = !DILocation(line: 124, column: 25, scope: !473)
!477 = !DILocation(line: 124, column: 23, scope: !473)
!478 = !DILocation(line: 124, column: 9, scope: !473)
!479 = !DILocation(line: 125, column: 45, scope: !473)
!480 = !DILocation(line: 125, column: 29, scope: !473)
!481 = !DILocation(line: 125, column: 9, scope: !473)
!482 = !DILocation(line: 125, column: 15, scope: !473)
!483 = !DILocation(line: 125, column: 27, scope: !473)
!484 = !DILocation(line: 126, column: 9, scope: !473)
!485 = distinct !{!485, !463, !486, !86}
!486 = !DILocation(line: 127, column: 5, scope: !452)
!487 = !DILocation(line: 129, column: 12, scope: !452)
!488 = !DILocation(line: 129, column: 5, scope: !452)
!489 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !490, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!490 = !DISubroutineType(types: !491)
!491 = !{!105, !426, !105, !286}
!492 = !DILocalVariable(name: "bytes", arg: 1, scope: !489, file: !3, line: 135, type: !426)
!493 = !DILocation(line: 135, column: 41, scope: !489)
!494 = !DILocalVariable(name: "numBytes", arg: 2, scope: !489, file: !3, line: 135, type: !105)
!495 = !DILocation(line: 135, column: 55, scope: !489)
!496 = !DILocalVariable(name: "hex", arg: 3, scope: !489, file: !3, line: 135, type: !286)
!497 = !DILocation(line: 135, column: 76, scope: !489)
!498 = !DILocalVariable(name: "numWritten", scope: !489, file: !3, line: 137, type: !105)
!499 = !DILocation(line: 137, column: 12, scope: !489)
!500 = !DILocation(line: 143, column: 5, scope: !489)
!501 = !DILocation(line: 143, column: 12, scope: !489)
!502 = !DILocation(line: 143, column: 25, scope: !489)
!503 = !DILocation(line: 143, column: 23, scope: !489)
!504 = !DILocation(line: 143, column: 34, scope: !489)
!505 = !DILocation(line: 143, column: 47, scope: !489)
!506 = !DILocation(line: 143, column: 55, scope: !489)
!507 = !DILocation(line: 143, column: 53, scope: !489)
!508 = !DILocation(line: 143, column: 37, scope: !489)
!509 = !DILocation(line: 143, column: 68, scope: !489)
!510 = !DILocation(line: 143, column: 81, scope: !489)
!511 = !DILocation(line: 143, column: 89, scope: !489)
!512 = !DILocation(line: 143, column: 87, scope: !489)
!513 = !DILocation(line: 143, column: 100, scope: !489)
!514 = !DILocation(line: 143, column: 71, scope: !489)
!515 = !DILocation(line: 0, scope: !489)
!516 = !DILocalVariable(name: "byte", scope: !517, file: !3, line: 145, type: !23)
!517 = distinct !DILexicalBlock(scope: !489, file: !3, line: 144, column: 5)
!518 = !DILocation(line: 145, column: 13, scope: !517)
!519 = !DILocation(line: 146, column: 18, scope: !517)
!520 = !DILocation(line: 146, column: 26, scope: !517)
!521 = !DILocation(line: 146, column: 24, scope: !517)
!522 = !DILocation(line: 146, column: 9, scope: !517)
!523 = !DILocation(line: 147, column: 45, scope: !517)
!524 = !DILocation(line: 147, column: 29, scope: !517)
!525 = !DILocation(line: 147, column: 9, scope: !517)
!526 = !DILocation(line: 147, column: 15, scope: !517)
!527 = !DILocation(line: 147, column: 27, scope: !517)
!528 = !DILocation(line: 148, column: 9, scope: !517)
!529 = distinct !{!529, !500, !530, !86}
!530 = !DILocation(line: 149, column: 5, scope: !489)
!531 = !DILocation(line: 151, column: 12, scope: !489)
!532 = !DILocation(line: 151, column: 5, scope: !489)
!533 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !534, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DISubroutineType(types: !535)
!535 = !{!23}
!536 = !DILocation(line: 158, column: 5, scope: !533)
!537 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !534, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DILocation(line: 163, column: 5, scope: !537)
!539 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !534, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DILocation(line: 168, column: 13, scope: !539)
!541 = !DILocation(line: 168, column: 20, scope: !539)
!542 = !DILocation(line: 168, column: 5, scope: !539)
!543 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !92, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DILocation(line: 187, column: 16, scope: !543)
!545 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !92, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DILocation(line: 188, column: 16, scope: !545)
!547 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !92, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 189, column: 16, scope: !547)
!549 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !92, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DILocation(line: 190, column: 16, scope: !549)
!551 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !92, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DILocation(line: 191, column: 16, scope: !551)
!553 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !92, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DILocation(line: 192, column: 16, scope: !553)
!555 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !92, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DILocation(line: 193, column: 16, scope: !555)
!557 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !92, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 194, column: 16, scope: !557)
!559 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !92, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DILocation(line: 195, column: 16, scope: !559)
!561 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !92, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!562 = !DILocation(line: 198, column: 15, scope: !561)
!563 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !92, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DILocation(line: 199, column: 15, scope: !563)
!565 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !92, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DILocation(line: 200, column: 15, scope: !565)
!567 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !92, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DILocation(line: 201, column: 15, scope: !567)
!569 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !92, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!570 = !DILocation(line: 202, column: 15, scope: !569)
!571 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !92, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DILocation(line: 203, column: 15, scope: !571)
!573 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !92, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DILocation(line: 204, column: 15, scope: !573)
!575 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !92, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DILocation(line: 205, column: 15, scope: !575)
!577 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !92, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 206, column: 15, scope: !577)
