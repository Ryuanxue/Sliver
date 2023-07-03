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
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_02_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !57, metadata !DIExpression()), !dbg !61
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !61
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !62
  store i8* %arraydecay, i8** %data, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !64, metadata !DIExpression()), !dbg !71
  %1 = load i8*, i8** %data, align 8, !dbg !72
  %call = call i64 @strlen(i8* %1) #7, !dbg !73
  store i64 %call, i64* %dataLen, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !74, metadata !DIExpression()), !dbg !75
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !76
  store i8* %call1, i8** %environment, align 8, !dbg !75
  %2 = load i8*, i8** %environment, align 8, !dbg !77
  %cmp = icmp ne i8* %2, null, !dbg !79
  br i1 %cmp, label %if.then, label %if.end, !dbg !80

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !81
  %4 = load i64, i64* %dataLen, align 8, !dbg !83
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !84
  %5 = load i8*, i8** %environment, align 8, !dbg !85
  %6 = load i64, i64* %dataLen, align 8, !dbg !86
  %sub = sub i64 100, %6, !dbg !87
  %sub2 = sub i64 %sub, 1, !dbg !88
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !89
  br label %if.end, !dbg !90

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !91
  %call4 = call i32 (i8*, ...) @printf(i8* %7), !dbg !94
  ret void, !dbg !95
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
define dso_local void @goodB2G1() #0 !dbg !96 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !99, metadata !DIExpression()), !dbg !100
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !100
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !100
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !101
  store i8* %arraydecay, i8** %data, align 8, !dbg !102
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !103, metadata !DIExpression()), !dbg !107
  %1 = load i8*, i8** %data, align 8, !dbg !108
  %call = call i64 @strlen(i8* %1) #7, !dbg !109
  store i64 %call, i64* %dataLen, align 8, !dbg !107
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !110, metadata !DIExpression()), !dbg !111
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !112
  store i8* %call1, i8** %environment, align 8, !dbg !111
  %2 = load i8*, i8** %environment, align 8, !dbg !113
  %cmp = icmp ne i8* %2, null, !dbg !115
  br i1 %cmp, label %if.then, label %if.end, !dbg !116

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !117
  %4 = load i64, i64* %dataLen, align 8, !dbg !119
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !120
  %5 = load i8*, i8** %environment, align 8, !dbg !121
  %6 = load i64, i64* %dataLen, align 8, !dbg !122
  %sub = sub i64 100, %6, !dbg !123
  %sub2 = sub i64 %sub, 1, !dbg !124
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !125
  br label %if.end, !dbg !126

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !127
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %7), !dbg !130
  ret void, !dbg !131
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !132 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !135, metadata !DIExpression()), !dbg !136
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !136
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !136
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !137
  store i8* %arraydecay, i8** %data, align 8, !dbg !138
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !139, metadata !DIExpression()), !dbg !143
  %1 = load i8*, i8** %data, align 8, !dbg !144
  %call = call i64 @strlen(i8* %1) #7, !dbg !145
  store i64 %call, i64* %dataLen, align 8, !dbg !143
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !146, metadata !DIExpression()), !dbg !147
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !148
  store i8* %call1, i8** %environment, align 8, !dbg !147
  %2 = load i8*, i8** %environment, align 8, !dbg !149
  %cmp = icmp ne i8* %2, null, !dbg !151
  br i1 %cmp, label %if.then, label %if.end, !dbg !152

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !153
  %4 = load i64, i64* %dataLen, align 8, !dbg !155
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !156
  %5 = load i8*, i8** %environment, align 8, !dbg !157
  %6 = load i64, i64* %dataLen, align 8, !dbg !158
  %sub = sub i64 100, %6, !dbg !159
  %sub2 = sub i64 %sub, 1, !dbg !160
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !161
  br label %if.end, !dbg !162

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !163
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %7), !dbg !166
  ret void, !dbg !167
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !168 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !171, metadata !DIExpression()), !dbg !172
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !172
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !172
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !173
  store i8* %arraydecay, i8** %data, align 8, !dbg !174
  %1 = load i8*, i8** %data, align 8, !dbg !175
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !178
  %2 = load i8*, i8** %data, align 8, !dbg !179
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !182
  ret void, !dbg !183
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !184 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !187, metadata !DIExpression()), !dbg !188
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !188
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !188
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !189
  store i8* %arraydecay, i8** %data, align 8, !dbg !190
  %1 = load i8*, i8** %data, align 8, !dbg !191
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !194
  %2 = load i8*, i8** %data, align 8, !dbg !195
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !198
  ret void, !dbg !199
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_02_good() #0 !dbg !200 {
entry:
  call void @goodB2G1(), !dbg !201
  call void @goodB2G2(), !dbg !202
  call void @goodG2B1(), !dbg !203
  call void @goodG2B2(), !dbg !204
  ret void, !dbg !205
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !206 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !209, metadata !DIExpression()), !dbg !210
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !211
  %0 = load i8*, i8** %line.addr, align 8, !dbg !212
  %cmp = icmp ne i8* %0, null, !dbg !214
  br i1 %cmp, label %if.then, label %if.end, !dbg !215

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !216
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !218
  br label %if.end, !dbg !219

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !220
  ret void, !dbg !221
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !222 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !223, metadata !DIExpression()), !dbg !224
  %0 = load i8*, i8** %line.addr, align 8, !dbg !225
  %cmp = icmp ne i8* %0, null, !dbg !227
  br i1 %cmp, label %if.then, label %if.end, !dbg !228

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !229
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !231
  br label %if.end, !dbg !232

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !233
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !234 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !239, metadata !DIExpression()), !dbg !240
  %0 = load i32*, i32** %line.addr, align 8, !dbg !241
  %cmp = icmp ne i32* %0, null, !dbg !243
  br i1 %cmp, label %if.then, label %if.end, !dbg !244

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !245
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !247
  br label %if.end, !dbg !248

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !249
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !250 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !253, metadata !DIExpression()), !dbg !254
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !255
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !256
  ret void, !dbg !257
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !258 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !262, metadata !DIExpression()), !dbg !263
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !264
  %conv = sext i16 %0 to i32, !dbg !264
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !265
  ret void, !dbg !266
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !267 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !271, metadata !DIExpression()), !dbg !272
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !273
  %conv = fpext float %0 to double, !dbg !273
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !274
  ret void, !dbg !275
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !276 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !282
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !283
  ret void, !dbg !284
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !285 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !292, metadata !DIExpression()), !dbg !293
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !294
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !295
  ret void, !dbg !296
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !297 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !302
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !303
  ret void, !dbg !304
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !305 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !308, metadata !DIExpression()), !dbg !309
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !310
  %conv = sext i8 %0 to i32, !dbg !310
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !311
  ret void, !dbg !312
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !313 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !316, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !318, metadata !DIExpression()), !dbg !322
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !323
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !324
  store i32 %0, i32* %arrayidx, align 4, !dbg !325
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !326
  store i32 0, i32* %arrayidx1, align 4, !dbg !327
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !328
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !329
  ret void, !dbg !330
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !331 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !334, metadata !DIExpression()), !dbg !335
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !336
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !337
  ret void, !dbg !338
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !339 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !344
  %conv = zext i8 %0 to i32, !dbg !344
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !345
  ret void, !dbg !346
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !347 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !351, metadata !DIExpression()), !dbg !352
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !353
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !354
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !356 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !366, metadata !DIExpression()), !dbg !367
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !368
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !369
  %1 = load i32, i32* %intOne, align 4, !dbg !369
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !370
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !371
  %3 = load i32, i32* %intTwo, align 4, !dbg !371
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !372
  ret void, !dbg !373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !374 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !378, metadata !DIExpression()), !dbg !379
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !380, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.declare(metadata i64* %i, metadata !382, metadata !DIExpression()), !dbg !383
  store i64 0, i64* %i, align 8, !dbg !384
  br label %for.cond, !dbg !386

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !387
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !389
  %cmp = icmp ult i64 %0, %1, !dbg !390
  br i1 %cmp, label %for.body, label %for.end, !dbg !391

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !392
  %3 = load i64, i64* %i, align 8, !dbg !394
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !392
  %4 = load i8, i8* %arrayidx, align 1, !dbg !392
  %conv = zext i8 %4 to i32, !dbg !392
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !395
  br label %for.inc, !dbg !396

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !397
  %inc = add i64 %5, 1, !dbg !397
  store i64 %inc, i64* %i, align 8, !dbg !397
  br label %for.cond, !dbg !398, !llvm.loop !399

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !402
  ret void, !dbg !403
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !404 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !407, metadata !DIExpression()), !dbg !408
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !409, metadata !DIExpression()), !dbg !410
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !411, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !413, metadata !DIExpression()), !dbg !414
  store i64 0, i64* %numWritten, align 8, !dbg !414
  br label %while.cond, !dbg !415

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !416
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !417
  %cmp = icmp ult i64 %0, %1, !dbg !418
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !419

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !420
  %2 = load i16*, i16** %call, align 8, !dbg !420
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !420
  %4 = load i64, i64* %numWritten, align 8, !dbg !420
  %mul = mul i64 2, %4, !dbg !420
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !420
  %5 = load i8, i8* %arrayidx, align 1, !dbg !420
  %conv = sext i8 %5 to i32, !dbg !420
  %idxprom = sext i32 %conv to i64, !dbg !420
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !420
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !420
  %conv2 = zext i16 %6 to i32, !dbg !420
  %and = and i32 %conv2, 4096, !dbg !420
  %tobool = icmp ne i32 %and, 0, !dbg !420
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !421

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !422
  %7 = load i16*, i16** %call3, align 8, !dbg !422
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !422
  %9 = load i64, i64* %numWritten, align 8, !dbg !422
  %mul4 = mul i64 2, %9, !dbg !422
  %add = add i64 %mul4, 1, !dbg !422
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !422
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !422
  %conv6 = sext i8 %10 to i32, !dbg !422
  %idxprom7 = sext i32 %conv6 to i64, !dbg !422
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !422
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !422
  %conv9 = zext i16 %11 to i32, !dbg !422
  %and10 = and i32 %conv9, 4096, !dbg !422
  %tobool11 = icmp ne i32 %and10, 0, !dbg !421
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !423
  br i1 %12, label %while.body, label %while.end, !dbg !415

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !424, metadata !DIExpression()), !dbg !426
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !427
  %14 = load i64, i64* %numWritten, align 8, !dbg !428
  %mul12 = mul i64 2, %14, !dbg !429
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !427
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !430
  %15 = load i32, i32* %byte, align 4, !dbg !431
  %conv15 = trunc i32 %15 to i8, !dbg !432
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !433
  %17 = load i64, i64* %numWritten, align 8, !dbg !434
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !433
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !435
  %18 = load i64, i64* %numWritten, align 8, !dbg !436
  %inc = add i64 %18, 1, !dbg !436
  store i64 %inc, i64* %numWritten, align 8, !dbg !436
  br label %while.cond, !dbg !415, !llvm.loop !437

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !439
  ret i64 %19, !dbg !440
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !441 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !444, metadata !DIExpression()), !dbg !445
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !446, metadata !DIExpression()), !dbg !447
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !450, metadata !DIExpression()), !dbg !451
  store i64 0, i64* %numWritten, align 8, !dbg !451
  br label %while.cond, !dbg !452

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !453
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !454
  %cmp = icmp ult i64 %0, %1, !dbg !455
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !456

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !457
  %3 = load i64, i64* %numWritten, align 8, !dbg !458
  %mul = mul i64 2, %3, !dbg !459
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !457
  %4 = load i32, i32* %arrayidx, align 4, !dbg !457
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !460
  %tobool = icmp ne i32 %call, 0, !dbg !460
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !461

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !462
  %6 = load i64, i64* %numWritten, align 8, !dbg !463
  %mul1 = mul i64 2, %6, !dbg !464
  %add = add i64 %mul1, 1, !dbg !465
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !462
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !462
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !466
  %tobool4 = icmp ne i32 %call3, 0, !dbg !461
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !467
  br i1 %8, label %while.body, label %while.end, !dbg !452

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !468, metadata !DIExpression()), !dbg !470
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !471
  %10 = load i64, i64* %numWritten, align 8, !dbg !472
  %mul5 = mul i64 2, %10, !dbg !473
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !471
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !474
  %11 = load i32, i32* %byte, align 4, !dbg !475
  %conv = trunc i32 %11 to i8, !dbg !476
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !477
  %13 = load i64, i64* %numWritten, align 8, !dbg !478
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !477
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !479
  %14 = load i64, i64* %numWritten, align 8, !dbg !480
  %inc = add i64 %14, 1, !dbg !480
  store i64 %inc, i64* %numWritten, align 8, !dbg !480
  br label %while.cond, !dbg !452, !llvm.loop !481

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !483
  ret i64 %15, !dbg !484
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !485 {
entry:
  ret i32 1, !dbg !488
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !489 {
entry:
  ret i32 0, !dbg !490
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !491 {
entry:
  %call = call i32 @rand() #8, !dbg !492
  %rem = srem i32 %call, 2, !dbg !493
  ret i32 %rem, !dbg !494
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !495 {
entry:
  ret void, !dbg !496
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !497 {
entry:
  ret void, !dbg !498
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !499 {
entry:
  ret void, !dbg !500
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !501 {
entry:
  ret void, !dbg !502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !503 {
entry:
  ret void, !dbg !504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !505 {
entry:
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !507 {
entry:
  ret void, !dbg !508
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !509 {
entry:
  ret void, !dbg !510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !511 {
entry:
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !513 {
entry:
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !515 {
entry:
  ret void, !dbg !516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !517 {
entry:
  ret void, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !519 {
entry:
  ret void, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !521 {
entry:
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !523 {
entry:
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !525 {
entry:
  ret void, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !527 {
entry:
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !529 {
entry:
  ret void, !dbg !530
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_723/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_02.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_723/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_02_bad", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 37, type: !42)
!56 = !DILocation(line: 37, column: 12, scope: !52)
!57 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 38, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 100)
!61 = !DILocation(line: 38, column: 10, scope: !52)
!62 = !DILocation(line: 39, column: 12, scope: !52)
!63 = !DILocation(line: 39, column: 10, scope: !52)
!64 = !DILocalVariable(name: "dataLen", scope: !65, file: !45, line: 44, type: !68)
!65 = distinct !DILexicalBlock(scope: !66, file: !45, line: 42, column: 9)
!66 = distinct !DILexicalBlock(scope: !67, file: !45, line: 41, column: 5)
!67 = distinct !DILexicalBlock(scope: !52, file: !45, line: 40, column: 8)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DILocation(line: 44, column: 20, scope: !65)
!72 = !DILocation(line: 44, column: 37, scope: !65)
!73 = !DILocation(line: 44, column: 30, scope: !65)
!74 = !DILocalVariable(name: "environment", scope: !65, file: !45, line: 45, type: !42)
!75 = !DILocation(line: 45, column: 20, scope: !65)
!76 = !DILocation(line: 45, column: 34, scope: !65)
!77 = !DILocation(line: 47, column: 17, scope: !78)
!78 = distinct !DILexicalBlock(scope: !65, file: !45, line: 47, column: 17)
!79 = !DILocation(line: 47, column: 29, scope: !78)
!80 = !DILocation(line: 47, column: 17, scope: !65)
!81 = !DILocation(line: 50, column: 25, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !45, line: 48, column: 13)
!83 = !DILocation(line: 50, column: 30, scope: !82)
!84 = !DILocation(line: 50, column: 29, scope: !82)
!85 = !DILocation(line: 50, column: 39, scope: !82)
!86 = !DILocation(line: 50, column: 56, scope: !82)
!87 = !DILocation(line: 50, column: 55, scope: !82)
!88 = !DILocation(line: 50, column: 63, scope: !82)
!89 = !DILocation(line: 50, column: 17, scope: !82)
!90 = !DILocation(line: 51, column: 13, scope: !82)
!91 = !DILocation(line: 57, column: 16, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !45, line: 55, column: 5)
!93 = distinct !DILexicalBlock(scope: !52, file: !45, line: 54, column: 8)
!94 = !DILocation(line: 57, column: 9, scope: !92)
!95 = !DILocation(line: 59, column: 1, scope: !52)
!96 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 66, type: !53, scopeLine: 67, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!97 = !DILocalVariable(name: "data", scope: !96, file: !45, line: 68, type: !42)
!98 = !DILocation(line: 68, column: 12, scope: !96)
!99 = !DILocalVariable(name: "dataBuffer", scope: !96, file: !45, line: 69, type: !58)
!100 = !DILocation(line: 69, column: 10, scope: !96)
!101 = !DILocation(line: 70, column: 12, scope: !96)
!102 = !DILocation(line: 70, column: 10, scope: !96)
!103 = !DILocalVariable(name: "dataLen", scope: !104, file: !45, line: 75, type: !68)
!104 = distinct !DILexicalBlock(scope: !105, file: !45, line: 73, column: 9)
!105 = distinct !DILexicalBlock(scope: !106, file: !45, line: 72, column: 5)
!106 = distinct !DILexicalBlock(scope: !96, file: !45, line: 71, column: 8)
!107 = !DILocation(line: 75, column: 20, scope: !104)
!108 = !DILocation(line: 75, column: 37, scope: !104)
!109 = !DILocation(line: 75, column: 30, scope: !104)
!110 = !DILocalVariable(name: "environment", scope: !104, file: !45, line: 76, type: !42)
!111 = !DILocation(line: 76, column: 20, scope: !104)
!112 = !DILocation(line: 76, column: 34, scope: !104)
!113 = !DILocation(line: 78, column: 17, scope: !114)
!114 = distinct !DILexicalBlock(scope: !104, file: !45, line: 78, column: 17)
!115 = !DILocation(line: 78, column: 29, scope: !114)
!116 = !DILocation(line: 78, column: 17, scope: !104)
!117 = !DILocation(line: 81, column: 25, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !45, line: 79, column: 13)
!119 = !DILocation(line: 81, column: 30, scope: !118)
!120 = !DILocation(line: 81, column: 29, scope: !118)
!121 = !DILocation(line: 81, column: 39, scope: !118)
!122 = !DILocation(line: 81, column: 56, scope: !118)
!123 = !DILocation(line: 81, column: 55, scope: !118)
!124 = !DILocation(line: 81, column: 63, scope: !118)
!125 = !DILocation(line: 81, column: 17, scope: !118)
!126 = !DILocation(line: 82, column: 13, scope: !118)
!127 = !DILocation(line: 93, column: 24, scope: !128)
!128 = distinct !DILexicalBlock(scope: !129, file: !45, line: 91, column: 5)
!129 = distinct !DILexicalBlock(scope: !96, file: !45, line: 85, column: 8)
!130 = !DILocation(line: 93, column: 9, scope: !128)
!131 = !DILocation(line: 95, column: 1, scope: !96)
!132 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 98, type: !53, scopeLine: 99, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!133 = !DILocalVariable(name: "data", scope: !132, file: !45, line: 100, type: !42)
!134 = !DILocation(line: 100, column: 12, scope: !132)
!135 = !DILocalVariable(name: "dataBuffer", scope: !132, file: !45, line: 101, type: !58)
!136 = !DILocation(line: 101, column: 10, scope: !132)
!137 = !DILocation(line: 102, column: 12, scope: !132)
!138 = !DILocation(line: 102, column: 10, scope: !132)
!139 = !DILocalVariable(name: "dataLen", scope: !140, file: !45, line: 107, type: !68)
!140 = distinct !DILexicalBlock(scope: !141, file: !45, line: 105, column: 9)
!141 = distinct !DILexicalBlock(scope: !142, file: !45, line: 104, column: 5)
!142 = distinct !DILexicalBlock(scope: !132, file: !45, line: 103, column: 8)
!143 = !DILocation(line: 107, column: 20, scope: !140)
!144 = !DILocation(line: 107, column: 37, scope: !140)
!145 = !DILocation(line: 107, column: 30, scope: !140)
!146 = !DILocalVariable(name: "environment", scope: !140, file: !45, line: 108, type: !42)
!147 = !DILocation(line: 108, column: 20, scope: !140)
!148 = !DILocation(line: 108, column: 34, scope: !140)
!149 = !DILocation(line: 110, column: 17, scope: !150)
!150 = distinct !DILexicalBlock(scope: !140, file: !45, line: 110, column: 17)
!151 = !DILocation(line: 110, column: 29, scope: !150)
!152 = !DILocation(line: 110, column: 17, scope: !140)
!153 = !DILocation(line: 113, column: 25, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !45, line: 111, column: 13)
!155 = !DILocation(line: 113, column: 30, scope: !154)
!156 = !DILocation(line: 113, column: 29, scope: !154)
!157 = !DILocation(line: 113, column: 39, scope: !154)
!158 = !DILocation(line: 113, column: 56, scope: !154)
!159 = !DILocation(line: 113, column: 55, scope: !154)
!160 = !DILocation(line: 113, column: 63, scope: !154)
!161 = !DILocation(line: 113, column: 17, scope: !154)
!162 = !DILocation(line: 114, column: 13, scope: !154)
!163 = !DILocation(line: 120, column: 24, scope: !164)
!164 = distinct !DILexicalBlock(scope: !165, file: !45, line: 118, column: 5)
!165 = distinct !DILexicalBlock(scope: !132, file: !45, line: 117, column: 8)
!166 = !DILocation(line: 120, column: 9, scope: !164)
!167 = !DILocation(line: 122, column: 1, scope: !132)
!168 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 125, type: !53, scopeLine: 126, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!169 = !DILocalVariable(name: "data", scope: !168, file: !45, line: 127, type: !42)
!170 = !DILocation(line: 127, column: 12, scope: !168)
!171 = !DILocalVariable(name: "dataBuffer", scope: !168, file: !45, line: 128, type: !58)
!172 = !DILocation(line: 128, column: 10, scope: !168)
!173 = !DILocation(line: 129, column: 12, scope: !168)
!174 = !DILocation(line: 129, column: 10, scope: !168)
!175 = !DILocation(line: 138, column: 16, scope: !176)
!176 = distinct !DILexicalBlock(scope: !177, file: !45, line: 136, column: 5)
!177 = distinct !DILexicalBlock(scope: !168, file: !45, line: 130, column: 8)
!178 = !DILocation(line: 138, column: 9, scope: !176)
!179 = !DILocation(line: 143, column: 16, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !45, line: 141, column: 5)
!181 = distinct !DILexicalBlock(scope: !168, file: !45, line: 140, column: 8)
!182 = !DILocation(line: 143, column: 9, scope: !180)
!183 = !DILocation(line: 145, column: 1, scope: !168)
!184 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 148, type: !53, scopeLine: 149, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!185 = !DILocalVariable(name: "data", scope: !184, file: !45, line: 150, type: !42)
!186 = !DILocation(line: 150, column: 12, scope: !184)
!187 = !DILocalVariable(name: "dataBuffer", scope: !184, file: !45, line: 151, type: !58)
!188 = !DILocation(line: 151, column: 10, scope: !184)
!189 = !DILocation(line: 152, column: 12, scope: !184)
!190 = !DILocation(line: 152, column: 10, scope: !184)
!191 = !DILocation(line: 156, column: 16, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !45, line: 154, column: 5)
!193 = distinct !DILexicalBlock(scope: !184, file: !45, line: 153, column: 8)
!194 = !DILocation(line: 156, column: 9, scope: !192)
!195 = !DILocation(line: 161, column: 16, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !45, line: 159, column: 5)
!197 = distinct !DILexicalBlock(scope: !184, file: !45, line: 158, column: 8)
!198 = !DILocation(line: 161, column: 9, scope: !196)
!199 = !DILocation(line: 163, column: 1, scope: !184)
!200 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_02_good", scope: !45, file: !45, line: 165, type: !53, scopeLine: 166, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!201 = !DILocation(line: 167, column: 5, scope: !200)
!202 = !DILocation(line: 168, column: 5, scope: !200)
!203 = !DILocation(line: 169, column: 5, scope: !200)
!204 = !DILocation(line: 170, column: 5, scope: !200)
!205 = !DILocation(line: 171, column: 1, scope: !200)
!206 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !207, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !42}
!209 = !DILocalVariable(name: "line", arg: 1, scope: !206, file: !3, line: 11, type: !42)
!210 = !DILocation(line: 11, column: 25, scope: !206)
!211 = !DILocation(line: 13, column: 1, scope: !206)
!212 = !DILocation(line: 14, column: 8, scope: !213)
!213 = distinct !DILexicalBlock(scope: !206, file: !3, line: 14, column: 8)
!214 = !DILocation(line: 14, column: 13, scope: !213)
!215 = !DILocation(line: 14, column: 8, scope: !206)
!216 = !DILocation(line: 16, column: 24, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !3, line: 15, column: 5)
!218 = !DILocation(line: 16, column: 9, scope: !217)
!219 = !DILocation(line: 17, column: 5, scope: !217)
!220 = !DILocation(line: 18, column: 5, scope: !206)
!221 = !DILocation(line: 19, column: 1, scope: !206)
!222 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !207, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!223 = !DILocalVariable(name: "line", arg: 1, scope: !222, file: !3, line: 20, type: !42)
!224 = !DILocation(line: 20, column: 29, scope: !222)
!225 = !DILocation(line: 22, column: 8, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !3, line: 22, column: 8)
!227 = !DILocation(line: 22, column: 13, scope: !226)
!228 = !DILocation(line: 22, column: 8, scope: !222)
!229 = !DILocation(line: 24, column: 24, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !3, line: 23, column: 5)
!231 = !DILocation(line: 24, column: 9, scope: !230)
!232 = !DILocation(line: 25, column: 5, scope: !230)
!233 = !DILocation(line: 26, column: 1, scope: !222)
!234 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !235, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !237}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !23)
!239 = !DILocalVariable(name: "line", arg: 1, scope: !234, file: !3, line: 27, type: !237)
!240 = !DILocation(line: 27, column: 29, scope: !234)
!241 = !DILocation(line: 29, column: 8, scope: !242)
!242 = distinct !DILexicalBlock(scope: !234, file: !3, line: 29, column: 8)
!243 = !DILocation(line: 29, column: 13, scope: !242)
!244 = !DILocation(line: 29, column: 8, scope: !234)
!245 = !DILocation(line: 31, column: 27, scope: !246)
!246 = distinct !DILexicalBlock(scope: !242, file: !3, line: 30, column: 5)
!247 = !DILocation(line: 31, column: 9, scope: !246)
!248 = !DILocation(line: 32, column: 5, scope: !246)
!249 = !DILocation(line: 33, column: 1, scope: !234)
!250 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !251, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !23}
!253 = !DILocalVariable(name: "intNumber", arg: 1, scope: !250, file: !3, line: 35, type: !23)
!254 = !DILocation(line: 35, column: 24, scope: !250)
!255 = !DILocation(line: 37, column: 20, scope: !250)
!256 = !DILocation(line: 37, column: 5, scope: !250)
!257 = !DILocation(line: 38, column: 1, scope: !250)
!258 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !259, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !261}
!261 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!262 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !258, file: !3, line: 40, type: !261)
!263 = !DILocation(line: 40, column: 28, scope: !258)
!264 = !DILocation(line: 42, column: 21, scope: !258)
!265 = !DILocation(line: 42, column: 5, scope: !258)
!266 = !DILocation(line: 43, column: 1, scope: !258)
!267 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !268, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !270}
!270 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!271 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !267, file: !3, line: 45, type: !270)
!272 = !DILocation(line: 45, column: 28, scope: !267)
!273 = !DILocation(line: 47, column: 20, scope: !267)
!274 = !DILocation(line: 47, column: 5, scope: !267)
!275 = !DILocation(line: 48, column: 1, scope: !267)
!276 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !277, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !279}
!279 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!280 = !DILocalVariable(name: "longNumber", arg: 1, scope: !276, file: !3, line: 50, type: !279)
!281 = !DILocation(line: 50, column: 26, scope: !276)
!282 = !DILocation(line: 52, column: 21, scope: !276)
!283 = !DILocation(line: 52, column: 5, scope: !276)
!284 = !DILocation(line: 53, column: 1, scope: !276)
!285 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !286, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !288}
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !289, line: 27, baseType: !290)
!289 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !291, line: 44, baseType: !279)
!291 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!292 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !285, file: !3, line: 55, type: !288)
!293 = !DILocation(line: 55, column: 33, scope: !285)
!294 = !DILocation(line: 57, column: 29, scope: !285)
!295 = !DILocation(line: 57, column: 5, scope: !285)
!296 = !DILocation(line: 58, column: 1, scope: !285)
!297 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !298, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !68}
!300 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !297, file: !3, line: 60, type: !68)
!301 = !DILocation(line: 60, column: 29, scope: !297)
!302 = !DILocation(line: 62, column: 21, scope: !297)
!303 = !DILocation(line: 62, column: 5, scope: !297)
!304 = !DILocation(line: 63, column: 1, scope: !297)
!305 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !306, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !43}
!308 = !DILocalVariable(name: "charHex", arg: 1, scope: !305, file: !3, line: 65, type: !43)
!309 = !DILocation(line: 65, column: 29, scope: !305)
!310 = !DILocation(line: 67, column: 22, scope: !305)
!311 = !DILocation(line: 67, column: 5, scope: !305)
!312 = !DILocation(line: 68, column: 1, scope: !305)
!313 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !314, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !238}
!316 = !DILocalVariable(name: "wideChar", arg: 1, scope: !313, file: !3, line: 70, type: !238)
!317 = !DILocation(line: 70, column: 29, scope: !313)
!318 = !DILocalVariable(name: "s", scope: !313, file: !3, line: 74, type: !319)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 64, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 2)
!322 = !DILocation(line: 74, column: 13, scope: !313)
!323 = !DILocation(line: 75, column: 16, scope: !313)
!324 = !DILocation(line: 75, column: 9, scope: !313)
!325 = !DILocation(line: 75, column: 14, scope: !313)
!326 = !DILocation(line: 76, column: 9, scope: !313)
!327 = !DILocation(line: 76, column: 14, scope: !313)
!328 = !DILocation(line: 77, column: 21, scope: !313)
!329 = !DILocation(line: 77, column: 5, scope: !313)
!330 = !DILocation(line: 78, column: 1, scope: !313)
!331 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !332, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !7}
!334 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !331, file: !3, line: 80, type: !7)
!335 = !DILocation(line: 80, column: 33, scope: !331)
!336 = !DILocation(line: 82, column: 20, scope: !331)
!337 = !DILocation(line: 82, column: 5, scope: !331)
!338 = !DILocation(line: 83, column: 1, scope: !331)
!339 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !340, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !25}
!342 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !339, file: !3, line: 85, type: !25)
!343 = !DILocation(line: 85, column: 45, scope: !339)
!344 = !DILocation(line: 87, column: 22, scope: !339)
!345 = !DILocation(line: 87, column: 5, scope: !339)
!346 = !DILocation(line: 88, column: 1, scope: !339)
!347 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !348, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !350}
!350 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!351 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !347, file: !3, line: 90, type: !350)
!352 = !DILocation(line: 90, column: 29, scope: !347)
!353 = !DILocation(line: 92, column: 20, scope: !347)
!354 = !DILocation(line: 92, column: 5, scope: !347)
!355 = !DILocation(line: 93, column: 1, scope: !347)
!356 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !357, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !359}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !361, line: 100, baseType: !362)
!361 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_723/source_code")
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !361, line: 96, size: 64, elements: !363)
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !362, file: !361, line: 98, baseType: !23, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !362, file: !361, line: 99, baseType: !23, size: 32, offset: 32)
!366 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !356, file: !3, line: 95, type: !359)
!367 = !DILocation(line: 95, column: 40, scope: !356)
!368 = !DILocation(line: 97, column: 26, scope: !356)
!369 = !DILocation(line: 97, column: 47, scope: !356)
!370 = !DILocation(line: 97, column: 55, scope: !356)
!371 = !DILocation(line: 97, column: 76, scope: !356)
!372 = !DILocation(line: 97, column: 5, scope: !356)
!373 = !DILocation(line: 98, column: 1, scope: !356)
!374 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !375, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !377, !68}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!378 = !DILocalVariable(name: "bytes", arg: 1, scope: !374, file: !3, line: 100, type: !377)
!379 = !DILocation(line: 100, column: 38, scope: !374)
!380 = !DILocalVariable(name: "numBytes", arg: 2, scope: !374, file: !3, line: 100, type: !68)
!381 = !DILocation(line: 100, column: 52, scope: !374)
!382 = !DILocalVariable(name: "i", scope: !374, file: !3, line: 102, type: !68)
!383 = !DILocation(line: 102, column: 12, scope: !374)
!384 = !DILocation(line: 103, column: 12, scope: !385)
!385 = distinct !DILexicalBlock(scope: !374, file: !3, line: 103, column: 5)
!386 = !DILocation(line: 103, column: 10, scope: !385)
!387 = !DILocation(line: 103, column: 17, scope: !388)
!388 = distinct !DILexicalBlock(scope: !385, file: !3, line: 103, column: 5)
!389 = !DILocation(line: 103, column: 21, scope: !388)
!390 = !DILocation(line: 103, column: 19, scope: !388)
!391 = !DILocation(line: 103, column: 5, scope: !385)
!392 = !DILocation(line: 105, column: 24, scope: !393)
!393 = distinct !DILexicalBlock(scope: !388, file: !3, line: 104, column: 5)
!394 = !DILocation(line: 105, column: 30, scope: !393)
!395 = !DILocation(line: 105, column: 9, scope: !393)
!396 = !DILocation(line: 106, column: 5, scope: !393)
!397 = !DILocation(line: 103, column: 31, scope: !388)
!398 = !DILocation(line: 103, column: 5, scope: !388)
!399 = distinct !{!399, !391, !400, !401}
!400 = !DILocation(line: 106, column: 5, scope: !385)
!401 = !{!"llvm.loop.mustprogress"}
!402 = !DILocation(line: 107, column: 5, scope: !374)
!403 = !DILocation(line: 108, column: 1, scope: !374)
!404 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !405, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!405 = !DISubroutineType(types: !406)
!406 = !{!68, !377, !68, !42}
!407 = !DILocalVariable(name: "bytes", arg: 1, scope: !404, file: !3, line: 113, type: !377)
!408 = !DILocation(line: 113, column: 39, scope: !404)
!409 = !DILocalVariable(name: "numBytes", arg: 2, scope: !404, file: !3, line: 113, type: !68)
!410 = !DILocation(line: 113, column: 53, scope: !404)
!411 = !DILocalVariable(name: "hex", arg: 3, scope: !404, file: !3, line: 113, type: !42)
!412 = !DILocation(line: 113, column: 71, scope: !404)
!413 = !DILocalVariable(name: "numWritten", scope: !404, file: !3, line: 115, type: !68)
!414 = !DILocation(line: 115, column: 12, scope: !404)
!415 = !DILocation(line: 121, column: 5, scope: !404)
!416 = !DILocation(line: 121, column: 12, scope: !404)
!417 = !DILocation(line: 121, column: 25, scope: !404)
!418 = !DILocation(line: 121, column: 23, scope: !404)
!419 = !DILocation(line: 121, column: 34, scope: !404)
!420 = !DILocation(line: 121, column: 37, scope: !404)
!421 = !DILocation(line: 121, column: 67, scope: !404)
!422 = !DILocation(line: 121, column: 70, scope: !404)
!423 = !DILocation(line: 0, scope: !404)
!424 = !DILocalVariable(name: "byte", scope: !425, file: !3, line: 123, type: !23)
!425 = distinct !DILexicalBlock(scope: !404, file: !3, line: 122, column: 5)
!426 = !DILocation(line: 123, column: 13, scope: !425)
!427 = !DILocation(line: 124, column: 17, scope: !425)
!428 = !DILocation(line: 124, column: 25, scope: !425)
!429 = !DILocation(line: 124, column: 23, scope: !425)
!430 = !DILocation(line: 124, column: 9, scope: !425)
!431 = !DILocation(line: 125, column: 45, scope: !425)
!432 = !DILocation(line: 125, column: 29, scope: !425)
!433 = !DILocation(line: 125, column: 9, scope: !425)
!434 = !DILocation(line: 125, column: 15, scope: !425)
!435 = !DILocation(line: 125, column: 27, scope: !425)
!436 = !DILocation(line: 126, column: 9, scope: !425)
!437 = distinct !{!437, !415, !438, !401}
!438 = !DILocation(line: 127, column: 5, scope: !404)
!439 = !DILocation(line: 129, column: 12, scope: !404)
!440 = !DILocation(line: 129, column: 5, scope: !404)
!441 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !442, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!442 = !DISubroutineType(types: !443)
!443 = !{!68, !377, !68, !237}
!444 = !DILocalVariable(name: "bytes", arg: 1, scope: !441, file: !3, line: 135, type: !377)
!445 = !DILocation(line: 135, column: 41, scope: !441)
!446 = !DILocalVariable(name: "numBytes", arg: 2, scope: !441, file: !3, line: 135, type: !68)
!447 = !DILocation(line: 135, column: 55, scope: !441)
!448 = !DILocalVariable(name: "hex", arg: 3, scope: !441, file: !3, line: 135, type: !237)
!449 = !DILocation(line: 135, column: 76, scope: !441)
!450 = !DILocalVariable(name: "numWritten", scope: !441, file: !3, line: 137, type: !68)
!451 = !DILocation(line: 137, column: 12, scope: !441)
!452 = !DILocation(line: 143, column: 5, scope: !441)
!453 = !DILocation(line: 143, column: 12, scope: !441)
!454 = !DILocation(line: 143, column: 25, scope: !441)
!455 = !DILocation(line: 143, column: 23, scope: !441)
!456 = !DILocation(line: 143, column: 34, scope: !441)
!457 = !DILocation(line: 143, column: 47, scope: !441)
!458 = !DILocation(line: 143, column: 55, scope: !441)
!459 = !DILocation(line: 143, column: 53, scope: !441)
!460 = !DILocation(line: 143, column: 37, scope: !441)
!461 = !DILocation(line: 143, column: 68, scope: !441)
!462 = !DILocation(line: 143, column: 81, scope: !441)
!463 = !DILocation(line: 143, column: 89, scope: !441)
!464 = !DILocation(line: 143, column: 87, scope: !441)
!465 = !DILocation(line: 143, column: 100, scope: !441)
!466 = !DILocation(line: 143, column: 71, scope: !441)
!467 = !DILocation(line: 0, scope: !441)
!468 = !DILocalVariable(name: "byte", scope: !469, file: !3, line: 145, type: !23)
!469 = distinct !DILexicalBlock(scope: !441, file: !3, line: 144, column: 5)
!470 = !DILocation(line: 145, column: 13, scope: !469)
!471 = !DILocation(line: 146, column: 18, scope: !469)
!472 = !DILocation(line: 146, column: 26, scope: !469)
!473 = !DILocation(line: 146, column: 24, scope: !469)
!474 = !DILocation(line: 146, column: 9, scope: !469)
!475 = !DILocation(line: 147, column: 45, scope: !469)
!476 = !DILocation(line: 147, column: 29, scope: !469)
!477 = !DILocation(line: 147, column: 9, scope: !469)
!478 = !DILocation(line: 147, column: 15, scope: !469)
!479 = !DILocation(line: 147, column: 27, scope: !469)
!480 = !DILocation(line: 148, column: 9, scope: !469)
!481 = distinct !{!481, !452, !482, !401}
!482 = !DILocation(line: 149, column: 5, scope: !441)
!483 = !DILocation(line: 151, column: 12, scope: !441)
!484 = !DILocation(line: 151, column: 5, scope: !441)
!485 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !486, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!486 = !DISubroutineType(types: !487)
!487 = !{!23}
!488 = !DILocation(line: 158, column: 5, scope: !485)
!489 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !486, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!490 = !DILocation(line: 163, column: 5, scope: !489)
!491 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !486, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!492 = !DILocation(line: 168, column: 13, scope: !491)
!493 = !DILocation(line: 168, column: 20, scope: !491)
!494 = !DILocation(line: 168, column: 5, scope: !491)
!495 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!496 = !DILocation(line: 187, column: 16, scope: !495)
!497 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!498 = !DILocation(line: 188, column: 16, scope: !497)
!499 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!500 = !DILocation(line: 189, column: 16, scope: !499)
!501 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!502 = !DILocation(line: 190, column: 16, scope: !501)
!503 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!504 = !DILocation(line: 191, column: 16, scope: !503)
!505 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!506 = !DILocation(line: 192, column: 16, scope: !505)
!507 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!508 = !DILocation(line: 193, column: 16, scope: !507)
!509 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!510 = !DILocation(line: 194, column: 16, scope: !509)
!511 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!512 = !DILocation(line: 195, column: 16, scope: !511)
!513 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!514 = !DILocation(line: 198, column: 15, scope: !513)
!515 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!516 = !DILocation(line: 199, column: 15, scope: !515)
!517 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!518 = !DILocation(line: 200, column: 15, scope: !517)
!519 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DILocation(line: 201, column: 15, scope: !519)
!521 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DILocation(line: 202, column: 15, scope: !521)
!523 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!524 = !DILocation(line: 203, column: 15, scope: !523)
!525 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DILocation(line: 204, column: 15, scope: !525)
!527 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!528 = !DILocation(line: 205, column: 15, scope: !527)
!529 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DILocation(line: 206, column: 15, scope: !529)
