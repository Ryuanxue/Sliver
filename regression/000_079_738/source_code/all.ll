; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad() #0 !dbg !52 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i32* %i, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %j, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i8** %data, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !61, metadata !DIExpression()), !dbg !65
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !65
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !65
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !66
  store i8* %arraydecay, i8** %data, align 8, !dbg !67
  store i32 0, i32* %i, align 4, !dbg !68
  br label %for.cond, !dbg !70

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !71
  %cmp = icmp slt i32 %1, 1, !dbg !73
  br i1 %cmp, label %for.body, label %for.end, !dbg !74

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !75, metadata !DIExpression()), !dbg !81
  %2 = load i8*, i8** %data, align 8, !dbg !82
  %call = call i64 @strlen(i8* %2) #7, !dbg !83
  store i64 %call, i64* %dataLen, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !84, metadata !DIExpression()), !dbg !85
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !86
  store i8* %call1, i8** %environment, align 8, !dbg !85
  %3 = load i8*, i8** %environment, align 8, !dbg !87
  %cmp2 = icmp ne i8* %3, null, !dbg !89
  br i1 %cmp2, label %if.then, label %if.end, !dbg !90

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %data, align 8, !dbg !91
  %5 = load i64, i64* %dataLen, align 8, !dbg !93
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !94
  %6 = load i8*, i8** %environment, align 8, !dbg !95
  %7 = load i64, i64* %dataLen, align 8, !dbg !96
  %sub = sub i64 100, %7, !dbg !97
  %sub3 = sub i64 %sub, 1, !dbg !98
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #8, !dbg !99
  br label %if.end, !dbg !100

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !101

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !102
  %inc = add nsw i32 %8, 1, !dbg !102
  store i32 %inc, i32* %i, align 4, !dbg !102
  br label %for.cond, !dbg !103, !llvm.loop !104

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !107
  br label %for.cond5, !dbg !109

for.cond5:                                        ; preds = %for.inc9, %for.end
  %9 = load i32, i32* %j, align 4, !dbg !110
  %cmp6 = icmp slt i32 %9, 1, !dbg !112
  br i1 %cmp6, label %for.body7, label %for.end11, !dbg !113

for.body7:                                        ; preds = %for.cond5
  %10 = load i8*, i8** %data, align 8, !dbg !114
  %call8 = call i32 (i8*, ...) @printf(i8* %10), !dbg !116
  br label %for.inc9, !dbg !117

for.inc9:                                         ; preds = %for.body7
  %11 = load i32, i32* %j, align 4, !dbg !118
  %inc10 = add nsw i32 %11, 1, !dbg !118
  store i32 %inc10, i32* %j, align 4, !dbg !118
  br label %for.cond5, !dbg !119, !llvm.loop !120

for.end11:                                        ; preds = %for.cond5
  ret void, !dbg !122
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #4

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !123 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i32* %i, metadata !124, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata i32* %k, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata i8** %data, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !130, metadata !DIExpression()), !dbg !131
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !131
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !131
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !132
  store i8* %arraydecay, i8** %data, align 8, !dbg !133
  store i32 0, i32* %i, align 4, !dbg !134
  br label %for.cond, !dbg !136

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !137
  %cmp = icmp slt i32 %1, 1, !dbg !139
  br i1 %cmp, label %for.body, label %for.end, !dbg !140

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !141, metadata !DIExpression()), !dbg !144
  %2 = load i8*, i8** %data, align 8, !dbg !145
  %call = call i64 @strlen(i8* %2) #7, !dbg !146
  store i64 %call, i64* %dataLen, align 8, !dbg !144
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !147, metadata !DIExpression()), !dbg !148
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !149
  store i8* %call1, i8** %environment, align 8, !dbg !148
  %3 = load i8*, i8** %environment, align 8, !dbg !150
  %cmp2 = icmp ne i8* %3, null, !dbg !152
  br i1 %cmp2, label %if.then, label %if.end, !dbg !153

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %data, align 8, !dbg !154
  %5 = load i64, i64* %dataLen, align 8, !dbg !156
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !157
  %6 = load i8*, i8** %environment, align 8, !dbg !158
  %7 = load i64, i64* %dataLen, align 8, !dbg !159
  %sub = sub i64 100, %7, !dbg !160
  %sub3 = sub i64 %sub, 1, !dbg !161
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #8, !dbg !162
  br label %if.end, !dbg !163

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !164

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !165
  %inc = add nsw i32 %8, 1, !dbg !165
  store i32 %inc, i32* %i, align 4, !dbg !165
  br label %for.cond, !dbg !166, !llvm.loop !167

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !169
  br label %for.cond5, !dbg !171

for.cond5:                                        ; preds = %for.inc9, %for.end
  %9 = load i32, i32* %k, align 4, !dbg !172
  %cmp6 = icmp slt i32 %9, 1, !dbg !174
  br i1 %cmp6, label %for.body7, label %for.end11, !dbg !175

for.body7:                                        ; preds = %for.cond5
  %10 = load i8*, i8** %data, align 8, !dbg !176
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %10), !dbg !178
  br label %for.inc9, !dbg !179

for.inc9:                                         ; preds = %for.body7
  %11 = load i32, i32* %k, align 4, !dbg !180
  %inc10 = add nsw i32 %11, 1, !dbg !180
  store i32 %inc10, i32* %k, align 4, !dbg !180
  br label %for.cond5, !dbg !181, !llvm.loop !182

for.end11:                                        ; preds = %for.cond5
  ret void, !dbg !184
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !185 {
entry:
  %h = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i32* %h, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata i32* %j, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata i8** %data, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !192, metadata !DIExpression()), !dbg !193
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !193
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !193
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !194
  store i8* %arraydecay, i8** %data, align 8, !dbg !195
  store i32 0, i32* %h, align 4, !dbg !196
  br label %for.cond, !dbg !198

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %h, align 4, !dbg !199
  %cmp = icmp slt i32 %1, 1, !dbg !201
  br i1 %cmp, label %for.body, label %for.end, !dbg !202

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %data, align 8, !dbg !203
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !205
  br label %for.inc, !dbg !206

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %h, align 4, !dbg !207
  %inc = add nsw i32 %3, 1, !dbg !207
  store i32 %inc, i32* %h, align 4, !dbg !207
  br label %for.cond, !dbg !208, !llvm.loop !209

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !211
  br label %for.cond1, !dbg !213

for.cond1:                                        ; preds = %for.inc5, %for.end
  %4 = load i32, i32* %j, align 4, !dbg !214
  %cmp2 = icmp slt i32 %4, 1, !dbg !216
  br i1 %cmp2, label %for.body3, label %for.end7, !dbg !217

for.body3:                                        ; preds = %for.cond1
  %5 = load i8*, i8** %data, align 8, !dbg !218
  %call4 = call i32 (i8*, ...) @printf(i8* %5), !dbg !220
  br label %for.inc5, !dbg !221

for.inc5:                                         ; preds = %for.body3
  %6 = load i32, i32* %j, align 4, !dbg !222
  %inc6 = add nsw i32 %6, 1, !dbg !222
  store i32 %inc6, i32* %j, align 4, !dbg !222
  br label %for.cond1, !dbg !223, !llvm.loop !224

for.end7:                                         ; preds = %for.cond1
  ret void, !dbg !226
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_17_good() #0 !dbg !227 {
entry:
  call void @goodB2G(), !dbg !228
  call void @goodG2B(), !dbg !229
  ret void, !dbg !230
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !231 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !234, metadata !DIExpression()), !dbg !235
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !236
  %0 = load i8*, i8** %line.addr, align 8, !dbg !237
  %cmp = icmp ne i8* %0, null, !dbg !239
  br i1 %cmp, label %if.then, label %if.end, !dbg !240

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !241
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !243
  br label %if.end, !dbg !244

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !245
  ret void, !dbg !246
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !247 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !248, metadata !DIExpression()), !dbg !249
  %0 = load i8*, i8** %line.addr, align 8, !dbg !250
  %cmp = icmp ne i8* %0, null, !dbg !252
  br i1 %cmp, label %if.then, label %if.end, !dbg !253

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !254
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !256
  br label %if.end, !dbg !257

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !258
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !259 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !264, metadata !DIExpression()), !dbg !265
  %0 = load i32*, i32** %line.addr, align 8, !dbg !266
  %cmp = icmp ne i32* %0, null, !dbg !268
  br i1 %cmp, label %if.then, label %if.end, !dbg !269

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !270
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !272
  br label %if.end, !dbg !273

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !274
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !275 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !278, metadata !DIExpression()), !dbg !279
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !280
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !281
  ret void, !dbg !282
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !283 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !287, metadata !DIExpression()), !dbg !288
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !289
  %conv = sext i16 %0 to i32, !dbg !289
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !290
  ret void, !dbg !291
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !292 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !296, metadata !DIExpression()), !dbg !297
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !298
  %conv = fpext float %0 to double, !dbg !298
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !299
  ret void, !dbg !300
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !301 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !305, metadata !DIExpression()), !dbg !306
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !307
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !308
  ret void, !dbg !309
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !310 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !317, metadata !DIExpression()), !dbg !318
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !319
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !320
  ret void, !dbg !321
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !322 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !325, metadata !DIExpression()), !dbg !326
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !327
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !328
  ret void, !dbg !329
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !330 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !335
  %conv = sext i8 %0 to i32, !dbg !335
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !336
  ret void, !dbg !337
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !338 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !343, metadata !DIExpression()), !dbg !347
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !348
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !349
  store i32 %0, i32* %arrayidx, align 4, !dbg !350
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !351
  store i32 0, i32* %arrayidx1, align 4, !dbg !352
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !353
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !354
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !356 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !359, metadata !DIExpression()), !dbg !360
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !361
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !362
  ret void, !dbg !363
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !364 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !367, metadata !DIExpression()), !dbg !368
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !369
  %conv = zext i8 %0 to i32, !dbg !369
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !370
  ret void, !dbg !371
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !372 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !378
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !381 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !393
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !394
  %1 = load i32, i32* %intOne, align 4, !dbg !394
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !395
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !396
  %3 = load i32, i32* %intTwo, align 4, !dbg !396
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !397
  ret void, !dbg !398
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !399 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !403, metadata !DIExpression()), !dbg !404
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !405, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.declare(metadata i64* %i, metadata !407, metadata !DIExpression()), !dbg !408
  store i64 0, i64* %i, align 8, !dbg !409
  br label %for.cond, !dbg !411

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !412
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !414
  %cmp = icmp ult i64 %0, %1, !dbg !415
  br i1 %cmp, label %for.body, label %for.end, !dbg !416

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !417
  %3 = load i64, i64* %i, align 8, !dbg !419
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !417
  %4 = load i8, i8* %arrayidx, align 1, !dbg !417
  %conv = zext i8 %4 to i32, !dbg !417
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !420
  br label %for.inc, !dbg !421

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !422
  %inc = add i64 %5, 1, !dbg !422
  store i64 %inc, i64* %i, align 8, !dbg !422
  br label %for.cond, !dbg !423, !llvm.loop !424

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !426
  ret void, !dbg !427
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !428 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !431, metadata !DIExpression()), !dbg !432
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !433, metadata !DIExpression()), !dbg !434
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !435, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !437, metadata !DIExpression()), !dbg !438
  store i64 0, i64* %numWritten, align 8, !dbg !438
  br label %while.cond, !dbg !439

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !440
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !441
  %cmp = icmp ult i64 %0, %1, !dbg !442
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !443

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !444
  %2 = load i16*, i16** %call, align 8, !dbg !444
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !444
  %4 = load i64, i64* %numWritten, align 8, !dbg !444
  %mul = mul i64 2, %4, !dbg !444
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !444
  %5 = load i8, i8* %arrayidx, align 1, !dbg !444
  %conv = sext i8 %5 to i32, !dbg !444
  %idxprom = sext i32 %conv to i64, !dbg !444
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !444
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !444
  %conv2 = zext i16 %6 to i32, !dbg !444
  %and = and i32 %conv2, 4096, !dbg !444
  %tobool = icmp ne i32 %and, 0, !dbg !444
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !445

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !446
  %7 = load i16*, i16** %call3, align 8, !dbg !446
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !446
  %9 = load i64, i64* %numWritten, align 8, !dbg !446
  %mul4 = mul i64 2, %9, !dbg !446
  %add = add i64 %mul4, 1, !dbg !446
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !446
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !446
  %conv6 = sext i8 %10 to i32, !dbg !446
  %idxprom7 = sext i32 %conv6 to i64, !dbg !446
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !446
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !446
  %conv9 = zext i16 %11 to i32, !dbg !446
  %and10 = and i32 %conv9, 4096, !dbg !446
  %tobool11 = icmp ne i32 %and10, 0, !dbg !445
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !447
  br i1 %12, label %while.body, label %while.end, !dbg !439

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !448, metadata !DIExpression()), !dbg !450
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !451
  %14 = load i64, i64* %numWritten, align 8, !dbg !452
  %mul12 = mul i64 2, %14, !dbg !453
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !451
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !454
  %15 = load i32, i32* %byte, align 4, !dbg !455
  %conv15 = trunc i32 %15 to i8, !dbg !456
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !457
  %17 = load i64, i64* %numWritten, align 8, !dbg !458
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !457
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !459
  %18 = load i64, i64* %numWritten, align 8, !dbg !460
  %inc = add i64 %18, 1, !dbg !460
  store i64 %inc, i64* %numWritten, align 8, !dbg !460
  br label %while.cond, !dbg !439, !llvm.loop !461

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !463
  ret i64 %19, !dbg !464
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !465 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !468, metadata !DIExpression()), !dbg !469
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !470, metadata !DIExpression()), !dbg !471
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !472, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !474, metadata !DIExpression()), !dbg !475
  store i64 0, i64* %numWritten, align 8, !dbg !475
  br label %while.cond, !dbg !476

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !477
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !478
  %cmp = icmp ult i64 %0, %1, !dbg !479
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !480

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !481
  %3 = load i64, i64* %numWritten, align 8, !dbg !482
  %mul = mul i64 2, %3, !dbg !483
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !481
  %4 = load i32, i32* %arrayidx, align 4, !dbg !481
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !484
  %tobool = icmp ne i32 %call, 0, !dbg !484
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !485

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !486
  %6 = load i64, i64* %numWritten, align 8, !dbg !487
  %mul1 = mul i64 2, %6, !dbg !488
  %add = add i64 %mul1, 1, !dbg !489
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !486
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !486
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !490
  %tobool4 = icmp ne i32 %call3, 0, !dbg !485
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !491
  br i1 %8, label %while.body, label %while.end, !dbg !476

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !492, metadata !DIExpression()), !dbg !494
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !495
  %10 = load i64, i64* %numWritten, align 8, !dbg !496
  %mul5 = mul i64 2, %10, !dbg !497
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !495
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !498
  %11 = load i32, i32* %byte, align 4, !dbg !499
  %conv = trunc i32 %11 to i8, !dbg !500
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !501
  %13 = load i64, i64* %numWritten, align 8, !dbg !502
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !501
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !503
  %14 = load i64, i64* %numWritten, align 8, !dbg !504
  %inc = add i64 %14, 1, !dbg !504
  store i64 %inc, i64* %numWritten, align 8, !dbg !504
  br label %while.cond, !dbg !476, !llvm.loop !505

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !507
  ret i64 %15, !dbg !508
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !509 {
entry:
  ret i32 1, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !513 {
entry:
  ret i32 0, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !515 {
entry:
  %call = call i32 @rand() #8, !dbg !516
  %rem = srem i32 %call, 2, !dbg !517
  ret i32 %rem, !dbg !518
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !519 {
entry:
  ret void, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !521 {
entry:
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !523 {
entry:
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !525 {
entry:
  ret void, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !527 {
entry:
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !529 {
entry:
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !531 {
entry:
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !533 {
entry:
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !535 {
entry:
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !537 {
entry:
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !539 {
entry:
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !541 {
entry:
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !543 {
entry:
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !545 {
entry:
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !547 {
entry:
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !549 {
entry:
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !551 {
entry:
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !553 {
entry:
  ret void, !dbg !554
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_738/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_17.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_738/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "i", scope: !52, file: !45, line: 37, type: !23)
!56 = !DILocation(line: 37, column: 9, scope: !52)
!57 = !DILocalVariable(name: "j", scope: !52, file: !45, line: 37, type: !23)
!58 = !DILocation(line: 37, column: 11, scope: !52)
!59 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 38, type: !42)
!60 = !DILocation(line: 38, column: 12, scope: !52)
!61 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 39, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 100)
!65 = !DILocation(line: 39, column: 10, scope: !52)
!66 = !DILocation(line: 40, column: 12, scope: !52)
!67 = !DILocation(line: 40, column: 10, scope: !52)
!68 = !DILocation(line: 41, column: 11, scope: !69)
!69 = distinct !DILexicalBlock(scope: !52, file: !45, line: 41, column: 5)
!70 = !DILocation(line: 41, column: 9, scope: !69)
!71 = !DILocation(line: 41, column: 16, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !45, line: 41, column: 5)
!73 = !DILocation(line: 41, column: 18, scope: !72)
!74 = !DILocation(line: 41, column: 5, scope: !69)
!75 = !DILocalVariable(name: "dataLen", scope: !76, file: !45, line: 45, type: !78)
!76 = distinct !DILexicalBlock(scope: !77, file: !45, line: 43, column: 9)
!77 = distinct !DILexicalBlock(scope: !72, file: !45, line: 42, column: 5)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !79, line: 46, baseType: !80)
!79 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!80 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!81 = !DILocation(line: 45, column: 20, scope: !76)
!82 = !DILocation(line: 45, column: 37, scope: !76)
!83 = !DILocation(line: 45, column: 30, scope: !76)
!84 = !DILocalVariable(name: "environment", scope: !76, file: !45, line: 46, type: !42)
!85 = !DILocation(line: 46, column: 20, scope: !76)
!86 = !DILocation(line: 46, column: 34, scope: !76)
!87 = !DILocation(line: 48, column: 17, scope: !88)
!88 = distinct !DILexicalBlock(scope: !76, file: !45, line: 48, column: 17)
!89 = !DILocation(line: 48, column: 29, scope: !88)
!90 = !DILocation(line: 48, column: 17, scope: !76)
!91 = !DILocation(line: 51, column: 25, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !45, line: 49, column: 13)
!93 = !DILocation(line: 51, column: 30, scope: !92)
!94 = !DILocation(line: 51, column: 29, scope: !92)
!95 = !DILocation(line: 51, column: 39, scope: !92)
!96 = !DILocation(line: 51, column: 56, scope: !92)
!97 = !DILocation(line: 51, column: 55, scope: !92)
!98 = !DILocation(line: 51, column: 63, scope: !92)
!99 = !DILocation(line: 51, column: 17, scope: !92)
!100 = !DILocation(line: 52, column: 13, scope: !92)
!101 = !DILocation(line: 54, column: 5, scope: !77)
!102 = !DILocation(line: 41, column: 24, scope: !72)
!103 = !DILocation(line: 41, column: 5, scope: !72)
!104 = distinct !{!104, !74, !105, !106}
!105 = !DILocation(line: 54, column: 5, scope: !69)
!106 = !{!"llvm.loop.mustprogress"}
!107 = !DILocation(line: 55, column: 11, scope: !108)
!108 = distinct !DILexicalBlock(scope: !52, file: !45, line: 55, column: 5)
!109 = !DILocation(line: 55, column: 9, scope: !108)
!110 = !DILocation(line: 55, column: 16, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !45, line: 55, column: 5)
!112 = !DILocation(line: 55, column: 18, scope: !111)
!113 = !DILocation(line: 55, column: 5, scope: !108)
!114 = !DILocation(line: 58, column: 16, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !45, line: 56, column: 5)
!116 = !DILocation(line: 58, column: 9, scope: !115)
!117 = !DILocation(line: 59, column: 5, scope: !115)
!118 = !DILocation(line: 55, column: 24, scope: !111)
!119 = !DILocation(line: 55, column: 5, scope: !111)
!120 = distinct !{!120, !113, !121, !106}
!121 = !DILocation(line: 59, column: 5, scope: !108)
!122 = !DILocation(line: 60, column: 1, scope: !52)
!123 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 67, type: !53, scopeLine: 68, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!124 = !DILocalVariable(name: "i", scope: !123, file: !45, line: 69, type: !23)
!125 = !DILocation(line: 69, column: 9, scope: !123)
!126 = !DILocalVariable(name: "k", scope: !123, file: !45, line: 69, type: !23)
!127 = !DILocation(line: 69, column: 11, scope: !123)
!128 = !DILocalVariable(name: "data", scope: !123, file: !45, line: 70, type: !42)
!129 = !DILocation(line: 70, column: 12, scope: !123)
!130 = !DILocalVariable(name: "dataBuffer", scope: !123, file: !45, line: 71, type: !62)
!131 = !DILocation(line: 71, column: 10, scope: !123)
!132 = !DILocation(line: 72, column: 12, scope: !123)
!133 = !DILocation(line: 72, column: 10, scope: !123)
!134 = !DILocation(line: 73, column: 11, scope: !135)
!135 = distinct !DILexicalBlock(scope: !123, file: !45, line: 73, column: 5)
!136 = !DILocation(line: 73, column: 9, scope: !135)
!137 = !DILocation(line: 73, column: 16, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !45, line: 73, column: 5)
!139 = !DILocation(line: 73, column: 18, scope: !138)
!140 = !DILocation(line: 73, column: 5, scope: !135)
!141 = !DILocalVariable(name: "dataLen", scope: !142, file: !45, line: 77, type: !78)
!142 = distinct !DILexicalBlock(scope: !143, file: !45, line: 75, column: 9)
!143 = distinct !DILexicalBlock(scope: !138, file: !45, line: 74, column: 5)
!144 = !DILocation(line: 77, column: 20, scope: !142)
!145 = !DILocation(line: 77, column: 37, scope: !142)
!146 = !DILocation(line: 77, column: 30, scope: !142)
!147 = !DILocalVariable(name: "environment", scope: !142, file: !45, line: 78, type: !42)
!148 = !DILocation(line: 78, column: 20, scope: !142)
!149 = !DILocation(line: 78, column: 34, scope: !142)
!150 = !DILocation(line: 80, column: 17, scope: !151)
!151 = distinct !DILexicalBlock(scope: !142, file: !45, line: 80, column: 17)
!152 = !DILocation(line: 80, column: 29, scope: !151)
!153 = !DILocation(line: 80, column: 17, scope: !142)
!154 = !DILocation(line: 83, column: 25, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !45, line: 81, column: 13)
!156 = !DILocation(line: 83, column: 30, scope: !155)
!157 = !DILocation(line: 83, column: 29, scope: !155)
!158 = !DILocation(line: 83, column: 39, scope: !155)
!159 = !DILocation(line: 83, column: 56, scope: !155)
!160 = !DILocation(line: 83, column: 55, scope: !155)
!161 = !DILocation(line: 83, column: 63, scope: !155)
!162 = !DILocation(line: 83, column: 17, scope: !155)
!163 = !DILocation(line: 84, column: 13, scope: !155)
!164 = !DILocation(line: 86, column: 5, scope: !143)
!165 = !DILocation(line: 73, column: 24, scope: !138)
!166 = !DILocation(line: 73, column: 5, scope: !138)
!167 = distinct !{!167, !140, !168, !106}
!168 = !DILocation(line: 86, column: 5, scope: !135)
!169 = !DILocation(line: 87, column: 11, scope: !170)
!170 = distinct !DILexicalBlock(scope: !123, file: !45, line: 87, column: 5)
!171 = !DILocation(line: 87, column: 9, scope: !170)
!172 = !DILocation(line: 87, column: 16, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !45, line: 87, column: 5)
!174 = !DILocation(line: 87, column: 18, scope: !173)
!175 = !DILocation(line: 87, column: 5, scope: !170)
!176 = !DILocation(line: 90, column: 24, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !45, line: 88, column: 5)
!178 = !DILocation(line: 90, column: 9, scope: !177)
!179 = !DILocation(line: 91, column: 5, scope: !177)
!180 = !DILocation(line: 87, column: 24, scope: !173)
!181 = !DILocation(line: 87, column: 5, scope: !173)
!182 = distinct !{!182, !175, !183, !106}
!183 = !DILocation(line: 91, column: 5, scope: !170)
!184 = !DILocation(line: 92, column: 1, scope: !123)
!185 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 95, type: !53, scopeLine: 96, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!186 = !DILocalVariable(name: "h", scope: !185, file: !45, line: 97, type: !23)
!187 = !DILocation(line: 97, column: 9, scope: !185)
!188 = !DILocalVariable(name: "j", scope: !185, file: !45, line: 97, type: !23)
!189 = !DILocation(line: 97, column: 11, scope: !185)
!190 = !DILocalVariable(name: "data", scope: !185, file: !45, line: 98, type: !42)
!191 = !DILocation(line: 98, column: 12, scope: !185)
!192 = !DILocalVariable(name: "dataBuffer", scope: !185, file: !45, line: 99, type: !62)
!193 = !DILocation(line: 99, column: 10, scope: !185)
!194 = !DILocation(line: 100, column: 12, scope: !185)
!195 = !DILocation(line: 100, column: 10, scope: !185)
!196 = !DILocation(line: 101, column: 11, scope: !197)
!197 = distinct !DILexicalBlock(scope: !185, file: !45, line: 101, column: 5)
!198 = !DILocation(line: 101, column: 9, scope: !197)
!199 = !DILocation(line: 101, column: 16, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !45, line: 101, column: 5)
!201 = !DILocation(line: 101, column: 18, scope: !200)
!202 = !DILocation(line: 101, column: 5, scope: !197)
!203 = !DILocation(line: 104, column: 16, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !45, line: 102, column: 5)
!205 = !DILocation(line: 104, column: 9, scope: !204)
!206 = !DILocation(line: 105, column: 5, scope: !204)
!207 = !DILocation(line: 101, column: 24, scope: !200)
!208 = !DILocation(line: 101, column: 5, scope: !200)
!209 = distinct !{!209, !202, !210, !106}
!210 = !DILocation(line: 105, column: 5, scope: !197)
!211 = !DILocation(line: 106, column: 11, scope: !212)
!212 = distinct !DILexicalBlock(scope: !185, file: !45, line: 106, column: 5)
!213 = !DILocation(line: 106, column: 9, scope: !212)
!214 = !DILocation(line: 106, column: 16, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !45, line: 106, column: 5)
!216 = !DILocation(line: 106, column: 18, scope: !215)
!217 = !DILocation(line: 106, column: 5, scope: !212)
!218 = !DILocation(line: 109, column: 16, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !45, line: 107, column: 5)
!220 = !DILocation(line: 109, column: 9, scope: !219)
!221 = !DILocation(line: 110, column: 5, scope: !219)
!222 = !DILocation(line: 106, column: 24, scope: !215)
!223 = !DILocation(line: 106, column: 5, scope: !215)
!224 = distinct !{!224, !217, !225, !106}
!225 = !DILocation(line: 110, column: 5, scope: !212)
!226 = !DILocation(line: 111, column: 1, scope: !185)
!227 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_17_good", scope: !45, file: !45, line: 113, type: !53, scopeLine: 114, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!228 = !DILocation(line: 115, column: 5, scope: !227)
!229 = !DILocation(line: 116, column: 5, scope: !227)
!230 = !DILocation(line: 117, column: 1, scope: !227)
!231 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !232, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !42}
!234 = !DILocalVariable(name: "line", arg: 1, scope: !231, file: !3, line: 11, type: !42)
!235 = !DILocation(line: 11, column: 25, scope: !231)
!236 = !DILocation(line: 13, column: 1, scope: !231)
!237 = !DILocation(line: 14, column: 8, scope: !238)
!238 = distinct !DILexicalBlock(scope: !231, file: !3, line: 14, column: 8)
!239 = !DILocation(line: 14, column: 13, scope: !238)
!240 = !DILocation(line: 14, column: 8, scope: !231)
!241 = !DILocation(line: 16, column: 24, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !3, line: 15, column: 5)
!243 = !DILocation(line: 16, column: 9, scope: !242)
!244 = !DILocation(line: 17, column: 5, scope: !242)
!245 = !DILocation(line: 18, column: 5, scope: !231)
!246 = !DILocation(line: 19, column: 1, scope: !231)
!247 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !232, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!248 = !DILocalVariable(name: "line", arg: 1, scope: !247, file: !3, line: 20, type: !42)
!249 = !DILocation(line: 20, column: 29, scope: !247)
!250 = !DILocation(line: 22, column: 8, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !3, line: 22, column: 8)
!252 = !DILocation(line: 22, column: 13, scope: !251)
!253 = !DILocation(line: 22, column: 8, scope: !247)
!254 = !DILocation(line: 24, column: 24, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !3, line: 23, column: 5)
!256 = !DILocation(line: 24, column: 9, scope: !255)
!257 = !DILocation(line: 25, column: 5, scope: !255)
!258 = !DILocation(line: 26, column: 1, scope: !247)
!259 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !260, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !262}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !79, line: 74, baseType: !23)
!264 = !DILocalVariable(name: "line", arg: 1, scope: !259, file: !3, line: 27, type: !262)
!265 = !DILocation(line: 27, column: 29, scope: !259)
!266 = !DILocation(line: 29, column: 8, scope: !267)
!267 = distinct !DILexicalBlock(scope: !259, file: !3, line: 29, column: 8)
!268 = !DILocation(line: 29, column: 13, scope: !267)
!269 = !DILocation(line: 29, column: 8, scope: !259)
!270 = !DILocation(line: 31, column: 27, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !3, line: 30, column: 5)
!272 = !DILocation(line: 31, column: 9, scope: !271)
!273 = !DILocation(line: 32, column: 5, scope: !271)
!274 = !DILocation(line: 33, column: 1, scope: !259)
!275 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !276, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !23}
!278 = !DILocalVariable(name: "intNumber", arg: 1, scope: !275, file: !3, line: 35, type: !23)
!279 = !DILocation(line: 35, column: 24, scope: !275)
!280 = !DILocation(line: 37, column: 20, scope: !275)
!281 = !DILocation(line: 37, column: 5, scope: !275)
!282 = !DILocation(line: 38, column: 1, scope: !275)
!283 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !284, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !286}
!286 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!287 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !283, file: !3, line: 40, type: !286)
!288 = !DILocation(line: 40, column: 28, scope: !283)
!289 = !DILocation(line: 42, column: 21, scope: !283)
!290 = !DILocation(line: 42, column: 5, scope: !283)
!291 = !DILocation(line: 43, column: 1, scope: !283)
!292 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !293, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !295}
!295 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!296 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !292, file: !3, line: 45, type: !295)
!297 = !DILocation(line: 45, column: 28, scope: !292)
!298 = !DILocation(line: 47, column: 20, scope: !292)
!299 = !DILocation(line: 47, column: 5, scope: !292)
!300 = !DILocation(line: 48, column: 1, scope: !292)
!301 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !302, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !304}
!304 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!305 = !DILocalVariable(name: "longNumber", arg: 1, scope: !301, file: !3, line: 50, type: !304)
!306 = !DILocation(line: 50, column: 26, scope: !301)
!307 = !DILocation(line: 52, column: 21, scope: !301)
!308 = !DILocation(line: 52, column: 5, scope: !301)
!309 = !DILocation(line: 53, column: 1, scope: !301)
!310 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !311, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !313}
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !314, line: 27, baseType: !315)
!314 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !316, line: 44, baseType: !304)
!316 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!317 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !310, file: !3, line: 55, type: !313)
!318 = !DILocation(line: 55, column: 33, scope: !310)
!319 = !DILocation(line: 57, column: 29, scope: !310)
!320 = !DILocation(line: 57, column: 5, scope: !310)
!321 = !DILocation(line: 58, column: 1, scope: !310)
!322 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !323, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !78}
!325 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !322, file: !3, line: 60, type: !78)
!326 = !DILocation(line: 60, column: 29, scope: !322)
!327 = !DILocation(line: 62, column: 21, scope: !322)
!328 = !DILocation(line: 62, column: 5, scope: !322)
!329 = !DILocation(line: 63, column: 1, scope: !322)
!330 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !331, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !43}
!333 = !DILocalVariable(name: "charHex", arg: 1, scope: !330, file: !3, line: 65, type: !43)
!334 = !DILocation(line: 65, column: 29, scope: !330)
!335 = !DILocation(line: 67, column: 22, scope: !330)
!336 = !DILocation(line: 67, column: 5, scope: !330)
!337 = !DILocation(line: 68, column: 1, scope: !330)
!338 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !339, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !263}
!341 = !DILocalVariable(name: "wideChar", arg: 1, scope: !338, file: !3, line: 70, type: !263)
!342 = !DILocation(line: 70, column: 29, scope: !338)
!343 = !DILocalVariable(name: "s", scope: !338, file: !3, line: 74, type: !344)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 64, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 2)
!347 = !DILocation(line: 74, column: 13, scope: !338)
!348 = !DILocation(line: 75, column: 16, scope: !338)
!349 = !DILocation(line: 75, column: 9, scope: !338)
!350 = !DILocation(line: 75, column: 14, scope: !338)
!351 = !DILocation(line: 76, column: 9, scope: !338)
!352 = !DILocation(line: 76, column: 14, scope: !338)
!353 = !DILocation(line: 77, column: 21, scope: !338)
!354 = !DILocation(line: 77, column: 5, scope: !338)
!355 = !DILocation(line: 78, column: 1, scope: !338)
!356 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !357, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !7}
!359 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !356, file: !3, line: 80, type: !7)
!360 = !DILocation(line: 80, column: 33, scope: !356)
!361 = !DILocation(line: 82, column: 20, scope: !356)
!362 = !DILocation(line: 82, column: 5, scope: !356)
!363 = !DILocation(line: 83, column: 1, scope: !356)
!364 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !365, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !25}
!367 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !364, file: !3, line: 85, type: !25)
!368 = !DILocation(line: 85, column: 45, scope: !364)
!369 = !DILocation(line: 87, column: 22, scope: !364)
!370 = !DILocation(line: 87, column: 5, scope: !364)
!371 = !DILocation(line: 88, column: 1, scope: !364)
!372 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !373, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !375}
!375 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!376 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !372, file: !3, line: 90, type: !375)
!377 = !DILocation(line: 90, column: 29, scope: !372)
!378 = !DILocation(line: 92, column: 20, scope: !372)
!379 = !DILocation(line: 92, column: 5, scope: !372)
!380 = !DILocation(line: 93, column: 1, scope: !372)
!381 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !382, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !386, line: 100, baseType: !387)
!386 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_738/source_code")
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !386, line: 96, size: 64, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !387, file: !386, line: 98, baseType: !23, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !387, file: !386, line: 99, baseType: !23, size: 32, offset: 32)
!391 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !381, file: !3, line: 95, type: !384)
!392 = !DILocation(line: 95, column: 40, scope: !381)
!393 = !DILocation(line: 97, column: 26, scope: !381)
!394 = !DILocation(line: 97, column: 47, scope: !381)
!395 = !DILocation(line: 97, column: 55, scope: !381)
!396 = !DILocation(line: 97, column: 76, scope: !381)
!397 = !DILocation(line: 97, column: 5, scope: !381)
!398 = !DILocation(line: 98, column: 1, scope: !381)
!399 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !400, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !402, !78}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!403 = !DILocalVariable(name: "bytes", arg: 1, scope: !399, file: !3, line: 100, type: !402)
!404 = !DILocation(line: 100, column: 38, scope: !399)
!405 = !DILocalVariable(name: "numBytes", arg: 2, scope: !399, file: !3, line: 100, type: !78)
!406 = !DILocation(line: 100, column: 52, scope: !399)
!407 = !DILocalVariable(name: "i", scope: !399, file: !3, line: 102, type: !78)
!408 = !DILocation(line: 102, column: 12, scope: !399)
!409 = !DILocation(line: 103, column: 12, scope: !410)
!410 = distinct !DILexicalBlock(scope: !399, file: !3, line: 103, column: 5)
!411 = !DILocation(line: 103, column: 10, scope: !410)
!412 = !DILocation(line: 103, column: 17, scope: !413)
!413 = distinct !DILexicalBlock(scope: !410, file: !3, line: 103, column: 5)
!414 = !DILocation(line: 103, column: 21, scope: !413)
!415 = !DILocation(line: 103, column: 19, scope: !413)
!416 = !DILocation(line: 103, column: 5, scope: !410)
!417 = !DILocation(line: 105, column: 24, scope: !418)
!418 = distinct !DILexicalBlock(scope: !413, file: !3, line: 104, column: 5)
!419 = !DILocation(line: 105, column: 30, scope: !418)
!420 = !DILocation(line: 105, column: 9, scope: !418)
!421 = !DILocation(line: 106, column: 5, scope: !418)
!422 = !DILocation(line: 103, column: 31, scope: !413)
!423 = !DILocation(line: 103, column: 5, scope: !413)
!424 = distinct !{!424, !416, !425, !106}
!425 = !DILocation(line: 106, column: 5, scope: !410)
!426 = !DILocation(line: 107, column: 5, scope: !399)
!427 = !DILocation(line: 108, column: 1, scope: !399)
!428 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !429, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!429 = !DISubroutineType(types: !430)
!430 = !{!78, !402, !78, !42}
!431 = !DILocalVariable(name: "bytes", arg: 1, scope: !428, file: !3, line: 113, type: !402)
!432 = !DILocation(line: 113, column: 39, scope: !428)
!433 = !DILocalVariable(name: "numBytes", arg: 2, scope: !428, file: !3, line: 113, type: !78)
!434 = !DILocation(line: 113, column: 53, scope: !428)
!435 = !DILocalVariable(name: "hex", arg: 3, scope: !428, file: !3, line: 113, type: !42)
!436 = !DILocation(line: 113, column: 71, scope: !428)
!437 = !DILocalVariable(name: "numWritten", scope: !428, file: !3, line: 115, type: !78)
!438 = !DILocation(line: 115, column: 12, scope: !428)
!439 = !DILocation(line: 121, column: 5, scope: !428)
!440 = !DILocation(line: 121, column: 12, scope: !428)
!441 = !DILocation(line: 121, column: 25, scope: !428)
!442 = !DILocation(line: 121, column: 23, scope: !428)
!443 = !DILocation(line: 121, column: 34, scope: !428)
!444 = !DILocation(line: 121, column: 37, scope: !428)
!445 = !DILocation(line: 121, column: 67, scope: !428)
!446 = !DILocation(line: 121, column: 70, scope: !428)
!447 = !DILocation(line: 0, scope: !428)
!448 = !DILocalVariable(name: "byte", scope: !449, file: !3, line: 123, type: !23)
!449 = distinct !DILexicalBlock(scope: !428, file: !3, line: 122, column: 5)
!450 = !DILocation(line: 123, column: 13, scope: !449)
!451 = !DILocation(line: 124, column: 17, scope: !449)
!452 = !DILocation(line: 124, column: 25, scope: !449)
!453 = !DILocation(line: 124, column: 23, scope: !449)
!454 = !DILocation(line: 124, column: 9, scope: !449)
!455 = !DILocation(line: 125, column: 45, scope: !449)
!456 = !DILocation(line: 125, column: 29, scope: !449)
!457 = !DILocation(line: 125, column: 9, scope: !449)
!458 = !DILocation(line: 125, column: 15, scope: !449)
!459 = !DILocation(line: 125, column: 27, scope: !449)
!460 = !DILocation(line: 126, column: 9, scope: !449)
!461 = distinct !{!461, !439, !462, !106}
!462 = !DILocation(line: 127, column: 5, scope: !428)
!463 = !DILocation(line: 129, column: 12, scope: !428)
!464 = !DILocation(line: 129, column: 5, scope: !428)
!465 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !466, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!466 = !DISubroutineType(types: !467)
!467 = !{!78, !402, !78, !262}
!468 = !DILocalVariable(name: "bytes", arg: 1, scope: !465, file: !3, line: 135, type: !402)
!469 = !DILocation(line: 135, column: 41, scope: !465)
!470 = !DILocalVariable(name: "numBytes", arg: 2, scope: !465, file: !3, line: 135, type: !78)
!471 = !DILocation(line: 135, column: 55, scope: !465)
!472 = !DILocalVariable(name: "hex", arg: 3, scope: !465, file: !3, line: 135, type: !262)
!473 = !DILocation(line: 135, column: 76, scope: !465)
!474 = !DILocalVariable(name: "numWritten", scope: !465, file: !3, line: 137, type: !78)
!475 = !DILocation(line: 137, column: 12, scope: !465)
!476 = !DILocation(line: 143, column: 5, scope: !465)
!477 = !DILocation(line: 143, column: 12, scope: !465)
!478 = !DILocation(line: 143, column: 25, scope: !465)
!479 = !DILocation(line: 143, column: 23, scope: !465)
!480 = !DILocation(line: 143, column: 34, scope: !465)
!481 = !DILocation(line: 143, column: 47, scope: !465)
!482 = !DILocation(line: 143, column: 55, scope: !465)
!483 = !DILocation(line: 143, column: 53, scope: !465)
!484 = !DILocation(line: 143, column: 37, scope: !465)
!485 = !DILocation(line: 143, column: 68, scope: !465)
!486 = !DILocation(line: 143, column: 81, scope: !465)
!487 = !DILocation(line: 143, column: 89, scope: !465)
!488 = !DILocation(line: 143, column: 87, scope: !465)
!489 = !DILocation(line: 143, column: 100, scope: !465)
!490 = !DILocation(line: 143, column: 71, scope: !465)
!491 = !DILocation(line: 0, scope: !465)
!492 = !DILocalVariable(name: "byte", scope: !493, file: !3, line: 145, type: !23)
!493 = distinct !DILexicalBlock(scope: !465, file: !3, line: 144, column: 5)
!494 = !DILocation(line: 145, column: 13, scope: !493)
!495 = !DILocation(line: 146, column: 18, scope: !493)
!496 = !DILocation(line: 146, column: 26, scope: !493)
!497 = !DILocation(line: 146, column: 24, scope: !493)
!498 = !DILocation(line: 146, column: 9, scope: !493)
!499 = !DILocation(line: 147, column: 45, scope: !493)
!500 = !DILocation(line: 147, column: 29, scope: !493)
!501 = !DILocation(line: 147, column: 9, scope: !493)
!502 = !DILocation(line: 147, column: 15, scope: !493)
!503 = !DILocation(line: 147, column: 27, scope: !493)
!504 = !DILocation(line: 148, column: 9, scope: !493)
!505 = distinct !{!505, !476, !506, !106}
!506 = !DILocation(line: 149, column: 5, scope: !465)
!507 = !DILocation(line: 151, column: 12, scope: !465)
!508 = !DILocation(line: 151, column: 5, scope: !465)
!509 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !510, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!510 = !DISubroutineType(types: !511)
!511 = !{!23}
!512 = !DILocation(line: 158, column: 5, scope: !509)
!513 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !510, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!514 = !DILocation(line: 163, column: 5, scope: !513)
!515 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !510, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!516 = !DILocation(line: 168, column: 13, scope: !515)
!517 = !DILocation(line: 168, column: 20, scope: !515)
!518 = !DILocation(line: 168, column: 5, scope: !515)
!519 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DILocation(line: 187, column: 16, scope: !519)
!521 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DILocation(line: 188, column: 16, scope: !521)
!523 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!524 = !DILocation(line: 189, column: 16, scope: !523)
!525 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DILocation(line: 190, column: 16, scope: !525)
!527 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!528 = !DILocation(line: 191, column: 16, scope: !527)
!529 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DILocation(line: 192, column: 16, scope: !529)
!531 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DILocation(line: 193, column: 16, scope: !531)
!533 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DILocation(line: 194, column: 16, scope: !533)
!535 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DILocation(line: 195, column: 16, scope: !535)
!537 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DILocation(line: 198, column: 15, scope: !537)
!539 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DILocation(line: 199, column: 15, scope: !539)
!541 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DILocation(line: 200, column: 15, scope: !541)
!543 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DILocation(line: 201, column: 15, scope: !543)
!545 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DILocation(line: 202, column: 15, scope: !545)
!547 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 203, column: 15, scope: !547)
!549 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DILocation(line: 204, column: 15, scope: !549)
!551 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DILocation(line: 205, column: 15, scope: !551)
!553 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DILocation(line: 206, column: 15, scope: !553)
