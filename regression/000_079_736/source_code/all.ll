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
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_15_bad() #0 !dbg !52 {
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
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !64, metadata !DIExpression()), !dbg !69
  %1 = load i8*, i8** %data, align 8, !dbg !70
  %call = call i64 @strlen(i8* %1) #7, !dbg !71
  store i64 %call, i64* %dataLen, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !72, metadata !DIExpression()), !dbg !73
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !74
  store i8* %call1, i8** %environment, align 8, !dbg !73
  %2 = load i8*, i8** %environment, align 8, !dbg !75
  %cmp = icmp ne i8* %2, null, !dbg !77
  br i1 %cmp, label %if.then, label %if.end, !dbg !78

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !79
  %4 = load i64, i64* %dataLen, align 8, !dbg !81
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !82
  %5 = load i8*, i8** %environment, align 8, !dbg !83
  %6 = load i64, i64* %dataLen, align 8, !dbg !84
  %sub = sub i64 100, %6, !dbg !85
  %sub2 = sub i64 %sub, 1, !dbg !86
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !87
  br label %if.end, !dbg !88

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !89
  %call4 = call i32 (i8*, ...) @printf(i8* %7), !dbg !90
  ret void, !dbg !91
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
define dso_local void @goodB2G1() #0 !dbg !92 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !95, metadata !DIExpression()), !dbg !96
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !96
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !96
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !97
  store i8* %arraydecay, i8** %data, align 8, !dbg !98
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !99, metadata !DIExpression()), !dbg !101
  %1 = load i8*, i8** %data, align 8, !dbg !102
  %call = call i64 @strlen(i8* %1) #7, !dbg !103
  store i64 %call, i64* %dataLen, align 8, !dbg !101
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !104, metadata !DIExpression()), !dbg !105
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !106
  store i8* %call1, i8** %environment, align 8, !dbg !105
  %2 = load i8*, i8** %environment, align 8, !dbg !107
  %cmp = icmp ne i8* %2, null, !dbg !109
  br i1 %cmp, label %if.then, label %if.end, !dbg !110

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !111
  %4 = load i64, i64* %dataLen, align 8, !dbg !113
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !114
  %5 = load i8*, i8** %environment, align 8, !dbg !115
  %6 = load i64, i64* %dataLen, align 8, !dbg !116
  %sub = sub i64 100, %6, !dbg !117
  %sub2 = sub i64 %sub, 1, !dbg !118
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !119
  br label %if.end, !dbg !120

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !121
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %7), !dbg !122
  ret void, !dbg !123
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !124 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !127, metadata !DIExpression()), !dbg !128
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !128
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !128
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !129
  store i8* %arraydecay, i8** %data, align 8, !dbg !130
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !131, metadata !DIExpression()), !dbg !133
  %1 = load i8*, i8** %data, align 8, !dbg !134
  %call = call i64 @strlen(i8* %1) #7, !dbg !135
  store i64 %call, i64* %dataLen, align 8, !dbg !133
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !136, metadata !DIExpression()), !dbg !137
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !138
  store i8* %call1, i8** %environment, align 8, !dbg !137
  %2 = load i8*, i8** %environment, align 8, !dbg !139
  %cmp = icmp ne i8* %2, null, !dbg !141
  br i1 %cmp, label %if.then, label %if.end, !dbg !142

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !143
  %4 = load i64, i64* %dataLen, align 8, !dbg !145
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !146
  %5 = load i8*, i8** %environment, align 8, !dbg !147
  %6 = load i64, i64* %dataLen, align 8, !dbg !148
  %sub = sub i64 100, %6, !dbg !149
  %sub2 = sub i64 %sub, 1, !dbg !150
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !151
  br label %if.end, !dbg !152

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !153
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %7), !dbg !154
  ret void, !dbg !155
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !156 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !159, metadata !DIExpression()), !dbg !160
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !160
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !160
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !161
  store i8* %arraydecay, i8** %data, align 8, !dbg !162
  %1 = load i8*, i8** %data, align 8, !dbg !163
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !164
  %2 = load i8*, i8** %data, align 8, !dbg !165
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !166
  ret void, !dbg !167
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !168 {
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
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !176
  %2 = load i8*, i8** %data, align 8, !dbg !177
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !178
  ret void, !dbg !179
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_15_good() #0 !dbg !180 {
entry:
  call void @goodB2G1(), !dbg !181
  call void @goodB2G2(), !dbg !182
  call void @goodG2B1(), !dbg !183
  call void @goodG2B2(), !dbg !184
  ret void, !dbg !185
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !186 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !189, metadata !DIExpression()), !dbg !190
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !191
  %0 = load i8*, i8** %line.addr, align 8, !dbg !192
  %cmp = icmp ne i8* %0, null, !dbg !194
  br i1 %cmp, label %if.then, label %if.end, !dbg !195

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !196
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !198
  br label %if.end, !dbg !199

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !200
  ret void, !dbg !201
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !202 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !203, metadata !DIExpression()), !dbg !204
  %0 = load i8*, i8** %line.addr, align 8, !dbg !205
  %cmp = icmp ne i8* %0, null, !dbg !207
  br i1 %cmp, label %if.then, label %if.end, !dbg !208

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !209
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !211
  br label %if.end, !dbg !212

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !213
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !214 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !219, metadata !DIExpression()), !dbg !220
  %0 = load i32*, i32** %line.addr, align 8, !dbg !221
  %cmp = icmp ne i32* %0, null, !dbg !223
  br i1 %cmp, label %if.then, label %if.end, !dbg !224

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !225
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !227
  br label %if.end, !dbg !228

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !229
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !230 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !233, metadata !DIExpression()), !dbg !234
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !235
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !236
  ret void, !dbg !237
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !238 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !242, metadata !DIExpression()), !dbg !243
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !244
  %conv = sext i16 %0 to i32, !dbg !244
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !245
  ret void, !dbg !246
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !247 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !251, metadata !DIExpression()), !dbg !252
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !253
  %conv = fpext float %0 to double, !dbg !253
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !254
  ret void, !dbg !255
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !256 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !260, metadata !DIExpression()), !dbg !261
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !262
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !263
  ret void, !dbg !264
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !265 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !272, metadata !DIExpression()), !dbg !273
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !274
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !275
  ret void, !dbg !276
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !277 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !282
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !283
  ret void, !dbg !284
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !285 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !288, metadata !DIExpression()), !dbg !289
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !290
  %conv = sext i8 %0 to i32, !dbg !290
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !291
  ret void, !dbg !292
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !293 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !296, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !298, metadata !DIExpression()), !dbg !302
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !303
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !304
  store i32 %0, i32* %arrayidx, align 4, !dbg !305
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !306
  store i32 0, i32* %arrayidx1, align 4, !dbg !307
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !308
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !309
  ret void, !dbg !310
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !311 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !314, metadata !DIExpression()), !dbg !315
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !316
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !317
  ret void, !dbg !318
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !319 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !322, metadata !DIExpression()), !dbg !323
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !324
  %conv = zext i8 %0 to i32, !dbg !324
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !325
  ret void, !dbg !326
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !327 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !331, metadata !DIExpression()), !dbg !332
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !333
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !334
  ret void, !dbg !335
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !336 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !346, metadata !DIExpression()), !dbg !347
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !348
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !349
  %1 = load i32, i32* %intOne, align 4, !dbg !349
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !350
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !351
  %3 = load i32, i32* %intTwo, align 4, !dbg !351
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !352
  ret void, !dbg !353
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !354 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !358, metadata !DIExpression()), !dbg !359
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !360, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.declare(metadata i64* %i, metadata !362, metadata !DIExpression()), !dbg !363
  store i64 0, i64* %i, align 8, !dbg !364
  br label %for.cond, !dbg !366

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !367
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !369
  %cmp = icmp ult i64 %0, %1, !dbg !370
  br i1 %cmp, label %for.body, label %for.end, !dbg !371

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !372
  %3 = load i64, i64* %i, align 8, !dbg !374
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !372
  %4 = load i8, i8* %arrayidx, align 1, !dbg !372
  %conv = zext i8 %4 to i32, !dbg !372
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !375
  br label %for.inc, !dbg !376

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !377
  %inc = add i64 %5, 1, !dbg !377
  store i64 %inc, i64* %i, align 8, !dbg !377
  br label %for.cond, !dbg !378, !llvm.loop !379

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !382
  ret void, !dbg !383
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !384 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !387, metadata !DIExpression()), !dbg !388
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !389, metadata !DIExpression()), !dbg !390
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !391, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !393, metadata !DIExpression()), !dbg !394
  store i64 0, i64* %numWritten, align 8, !dbg !394
  br label %while.cond, !dbg !395

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !396
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !397
  %cmp = icmp ult i64 %0, %1, !dbg !398
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !399

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !400
  %2 = load i16*, i16** %call, align 8, !dbg !400
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !400
  %4 = load i64, i64* %numWritten, align 8, !dbg !400
  %mul = mul i64 2, %4, !dbg !400
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !400
  %5 = load i8, i8* %arrayidx, align 1, !dbg !400
  %conv = sext i8 %5 to i32, !dbg !400
  %idxprom = sext i32 %conv to i64, !dbg !400
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !400
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !400
  %conv2 = zext i16 %6 to i32, !dbg !400
  %and = and i32 %conv2, 4096, !dbg !400
  %tobool = icmp ne i32 %and, 0, !dbg !400
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !401

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !402
  %7 = load i16*, i16** %call3, align 8, !dbg !402
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !402
  %9 = load i64, i64* %numWritten, align 8, !dbg !402
  %mul4 = mul i64 2, %9, !dbg !402
  %add = add i64 %mul4, 1, !dbg !402
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !402
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !402
  %conv6 = sext i8 %10 to i32, !dbg !402
  %idxprom7 = sext i32 %conv6 to i64, !dbg !402
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !402
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !402
  %conv9 = zext i16 %11 to i32, !dbg !402
  %and10 = and i32 %conv9, 4096, !dbg !402
  %tobool11 = icmp ne i32 %and10, 0, !dbg !401
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !403
  br i1 %12, label %while.body, label %while.end, !dbg !395

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !404, metadata !DIExpression()), !dbg !406
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !407
  %14 = load i64, i64* %numWritten, align 8, !dbg !408
  %mul12 = mul i64 2, %14, !dbg !409
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !407
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !410
  %15 = load i32, i32* %byte, align 4, !dbg !411
  %conv15 = trunc i32 %15 to i8, !dbg !412
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !413
  %17 = load i64, i64* %numWritten, align 8, !dbg !414
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !413
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !415
  %18 = load i64, i64* %numWritten, align 8, !dbg !416
  %inc = add i64 %18, 1, !dbg !416
  store i64 %inc, i64* %numWritten, align 8, !dbg !416
  br label %while.cond, !dbg !395, !llvm.loop !417

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !419
  ret i64 %19, !dbg !420
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !421 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !424, metadata !DIExpression()), !dbg !425
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !426, metadata !DIExpression()), !dbg !427
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !428, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !430, metadata !DIExpression()), !dbg !431
  store i64 0, i64* %numWritten, align 8, !dbg !431
  br label %while.cond, !dbg !432

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !433
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !434
  %cmp = icmp ult i64 %0, %1, !dbg !435
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !436

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !437
  %3 = load i64, i64* %numWritten, align 8, !dbg !438
  %mul = mul i64 2, %3, !dbg !439
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !437
  %4 = load i32, i32* %arrayidx, align 4, !dbg !437
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !440
  %tobool = icmp ne i32 %call, 0, !dbg !440
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !441

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !442
  %6 = load i64, i64* %numWritten, align 8, !dbg !443
  %mul1 = mul i64 2, %6, !dbg !444
  %add = add i64 %mul1, 1, !dbg !445
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !442
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !442
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !446
  %tobool4 = icmp ne i32 %call3, 0, !dbg !441
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !447
  br i1 %8, label %while.body, label %while.end, !dbg !432

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !448, metadata !DIExpression()), !dbg !450
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !451
  %10 = load i64, i64* %numWritten, align 8, !dbg !452
  %mul5 = mul i64 2, %10, !dbg !453
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !451
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !454
  %11 = load i32, i32* %byte, align 4, !dbg !455
  %conv = trunc i32 %11 to i8, !dbg !456
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !457
  %13 = load i64, i64* %numWritten, align 8, !dbg !458
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !457
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !459
  %14 = load i64, i64* %numWritten, align 8, !dbg !460
  %inc = add i64 %14, 1, !dbg !460
  store i64 %inc, i64* %numWritten, align 8, !dbg !460
  br label %while.cond, !dbg !432, !llvm.loop !461

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !463
  ret i64 %15, !dbg !464
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !465 {
entry:
  ret i32 1, !dbg !468
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !469 {
entry:
  ret i32 0, !dbg !470
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !471 {
entry:
  %call = call i32 @rand() #8, !dbg !472
  %rem = srem i32 %call, 2, !dbg !473
  ret i32 %rem, !dbg !474
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !475 {
entry:
  ret void, !dbg !476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !477 {
entry:
  ret void, !dbg !478
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !479 {
entry:
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !481 {
entry:
  ret void, !dbg !482
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !483 {
entry:
  ret void, !dbg !484
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !485 {
entry:
  ret void, !dbg !486
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !487 {
entry:
  ret void, !dbg !488
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !489 {
entry:
  ret void, !dbg !490
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !491 {
entry:
  ret void, !dbg !492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !493 {
entry:
  ret void, !dbg !494
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !495 {
entry:
  ret void, !dbg !496
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !497 {
entry:
  ret void, !dbg !498
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !499 {
entry:
  ret void, !dbg !500
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !501 {
entry:
  ret void, !dbg !502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !503 {
entry:
  ret void, !dbg !504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !505 {
entry:
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !507 {
entry:
  ret void, !dbg !508
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !509 {
entry:
  ret void, !dbg !510
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_736/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_15.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_736/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_15_bad", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!64 = !DILocalVariable(name: "dataLen", scope: !65, file: !45, line: 45, type: !66)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 43, column: 5)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 46, baseType: !68)
!67 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!68 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!69 = !DILocation(line: 45, column: 16, scope: !65)
!70 = !DILocation(line: 45, column: 33, scope: !65)
!71 = !DILocation(line: 45, column: 26, scope: !65)
!72 = !DILocalVariable(name: "environment", scope: !65, file: !45, line: 46, type: !42)
!73 = !DILocation(line: 46, column: 16, scope: !65)
!74 = !DILocation(line: 46, column: 30, scope: !65)
!75 = !DILocation(line: 48, column: 13, scope: !76)
!76 = distinct !DILexicalBlock(scope: !65, file: !45, line: 48, column: 13)
!77 = !DILocation(line: 48, column: 25, scope: !76)
!78 = !DILocation(line: 48, column: 13, scope: !65)
!79 = !DILocation(line: 51, column: 21, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !45, line: 49, column: 9)
!81 = !DILocation(line: 51, column: 26, scope: !80)
!82 = !DILocation(line: 51, column: 25, scope: !80)
!83 = !DILocation(line: 51, column: 35, scope: !80)
!84 = !DILocation(line: 51, column: 52, scope: !80)
!85 = !DILocation(line: 51, column: 51, scope: !80)
!86 = !DILocation(line: 51, column: 59, scope: !80)
!87 = !DILocation(line: 51, column: 13, scope: !80)
!88 = !DILocation(line: 52, column: 9, scope: !80)
!89 = !DILocation(line: 64, column: 16, scope: !52)
!90 = !DILocation(line: 64, column: 9, scope: !52)
!91 = !DILocation(line: 71, column: 1, scope: !52)
!92 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 78, type: !53, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!93 = !DILocalVariable(name: "data", scope: !92, file: !45, line: 80, type: !42)
!94 = !DILocation(line: 80, column: 12, scope: !92)
!95 = !DILocalVariable(name: "dataBuffer", scope: !92, file: !45, line: 81, type: !58)
!96 = !DILocation(line: 81, column: 10, scope: !92)
!97 = !DILocation(line: 82, column: 12, scope: !92)
!98 = !DILocation(line: 82, column: 10, scope: !92)
!99 = !DILocalVariable(name: "dataLen", scope: !100, file: !45, line: 88, type: !66)
!100 = distinct !DILexicalBlock(scope: !92, file: !45, line: 86, column: 5)
!101 = !DILocation(line: 88, column: 16, scope: !100)
!102 = !DILocation(line: 88, column: 33, scope: !100)
!103 = !DILocation(line: 88, column: 26, scope: !100)
!104 = !DILocalVariable(name: "environment", scope: !100, file: !45, line: 89, type: !42)
!105 = !DILocation(line: 89, column: 16, scope: !100)
!106 = !DILocation(line: 89, column: 30, scope: !100)
!107 = !DILocation(line: 91, column: 13, scope: !108)
!108 = distinct !DILexicalBlock(scope: !100, file: !45, line: 91, column: 13)
!109 = !DILocation(line: 91, column: 25, scope: !108)
!110 = !DILocation(line: 91, column: 13, scope: !100)
!111 = !DILocation(line: 94, column: 21, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !45, line: 92, column: 9)
!113 = !DILocation(line: 94, column: 26, scope: !112)
!114 = !DILocation(line: 94, column: 25, scope: !112)
!115 = !DILocation(line: 94, column: 35, scope: !112)
!116 = !DILocation(line: 94, column: 52, scope: !112)
!117 = !DILocation(line: 94, column: 51, scope: !112)
!118 = !DILocation(line: 94, column: 59, scope: !112)
!119 = !DILocation(line: 94, column: 13, scope: !112)
!120 = !DILocation(line: 95, column: 9, scope: !112)
!121 = !DILocation(line: 111, column: 24, scope: !92)
!122 = !DILocation(line: 111, column: 9, scope: !92)
!123 = !DILocation(line: 114, column: 1, scope: !92)
!124 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 117, type: !53, scopeLine: 118, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!125 = !DILocalVariable(name: "data", scope: !124, file: !45, line: 119, type: !42)
!126 = !DILocation(line: 119, column: 12, scope: !124)
!127 = !DILocalVariable(name: "dataBuffer", scope: !124, file: !45, line: 120, type: !58)
!128 = !DILocation(line: 120, column: 10, scope: !124)
!129 = !DILocation(line: 121, column: 12, scope: !124)
!130 = !DILocation(line: 121, column: 10, scope: !124)
!131 = !DILocalVariable(name: "dataLen", scope: !132, file: !45, line: 127, type: !66)
!132 = distinct !DILexicalBlock(scope: !124, file: !45, line: 125, column: 5)
!133 = !DILocation(line: 127, column: 16, scope: !132)
!134 = !DILocation(line: 127, column: 33, scope: !132)
!135 = !DILocation(line: 127, column: 26, scope: !132)
!136 = !DILocalVariable(name: "environment", scope: !132, file: !45, line: 128, type: !42)
!137 = !DILocation(line: 128, column: 16, scope: !132)
!138 = !DILocation(line: 128, column: 30, scope: !132)
!139 = !DILocation(line: 130, column: 13, scope: !140)
!140 = distinct !DILexicalBlock(scope: !132, file: !45, line: 130, column: 13)
!141 = !DILocation(line: 130, column: 25, scope: !140)
!142 = !DILocation(line: 130, column: 13, scope: !132)
!143 = !DILocation(line: 133, column: 21, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !45, line: 131, column: 9)
!145 = !DILocation(line: 133, column: 26, scope: !144)
!146 = !DILocation(line: 133, column: 25, scope: !144)
!147 = !DILocation(line: 133, column: 35, scope: !144)
!148 = !DILocation(line: 133, column: 52, scope: !144)
!149 = !DILocation(line: 133, column: 51, scope: !144)
!150 = !DILocation(line: 133, column: 59, scope: !144)
!151 = !DILocation(line: 133, column: 13, scope: !144)
!152 = !DILocation(line: 134, column: 9, scope: !144)
!153 = !DILocation(line: 146, column: 24, scope: !124)
!154 = !DILocation(line: 146, column: 9, scope: !124)
!155 = !DILocation(line: 153, column: 1, scope: !124)
!156 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 156, type: !53, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!157 = !DILocalVariable(name: "data", scope: !156, file: !45, line: 158, type: !42)
!158 = !DILocation(line: 158, column: 12, scope: !156)
!159 = !DILocalVariable(name: "dataBuffer", scope: !156, file: !45, line: 159, type: !58)
!160 = !DILocation(line: 159, column: 10, scope: !156)
!161 = !DILocation(line: 160, column: 12, scope: !156)
!162 = !DILocation(line: 160, column: 10, scope: !156)
!163 = !DILocation(line: 169, column: 16, scope: !156)
!164 = !DILocation(line: 169, column: 9, scope: !156)
!165 = !DILocation(line: 176, column: 16, scope: !156)
!166 = !DILocation(line: 176, column: 9, scope: !156)
!167 = !DILocation(line: 183, column: 1, scope: !156)
!168 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 186, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!169 = !DILocalVariable(name: "data", scope: !168, file: !45, line: 188, type: !42)
!170 = !DILocation(line: 188, column: 12, scope: !168)
!171 = !DILocalVariable(name: "dataBuffer", scope: !168, file: !45, line: 189, type: !58)
!172 = !DILocation(line: 189, column: 10, scope: !168)
!173 = !DILocation(line: 190, column: 12, scope: !168)
!174 = !DILocation(line: 190, column: 10, scope: !168)
!175 = !DILocation(line: 195, column: 16, scope: !168)
!176 = !DILocation(line: 195, column: 9, scope: !168)
!177 = !DILocation(line: 206, column: 16, scope: !168)
!178 = !DILocation(line: 206, column: 9, scope: !168)
!179 = !DILocation(line: 213, column: 1, scope: !168)
!180 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_15_good", scope: !45, file: !45, line: 215, type: !53, scopeLine: 216, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!181 = !DILocation(line: 217, column: 5, scope: !180)
!182 = !DILocation(line: 218, column: 5, scope: !180)
!183 = !DILocation(line: 219, column: 5, scope: !180)
!184 = !DILocation(line: 220, column: 5, scope: !180)
!185 = !DILocation(line: 221, column: 1, scope: !180)
!186 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !187, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !42}
!189 = !DILocalVariable(name: "line", arg: 1, scope: !186, file: !3, line: 11, type: !42)
!190 = !DILocation(line: 11, column: 25, scope: !186)
!191 = !DILocation(line: 13, column: 1, scope: !186)
!192 = !DILocation(line: 14, column: 8, scope: !193)
!193 = distinct !DILexicalBlock(scope: !186, file: !3, line: 14, column: 8)
!194 = !DILocation(line: 14, column: 13, scope: !193)
!195 = !DILocation(line: 14, column: 8, scope: !186)
!196 = !DILocation(line: 16, column: 24, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !3, line: 15, column: 5)
!198 = !DILocation(line: 16, column: 9, scope: !197)
!199 = !DILocation(line: 17, column: 5, scope: !197)
!200 = !DILocation(line: 18, column: 5, scope: !186)
!201 = !DILocation(line: 19, column: 1, scope: !186)
!202 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !187, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!203 = !DILocalVariable(name: "line", arg: 1, scope: !202, file: !3, line: 20, type: !42)
!204 = !DILocation(line: 20, column: 29, scope: !202)
!205 = !DILocation(line: 22, column: 8, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !3, line: 22, column: 8)
!207 = !DILocation(line: 22, column: 13, scope: !206)
!208 = !DILocation(line: 22, column: 8, scope: !202)
!209 = !DILocation(line: 24, column: 24, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !3, line: 23, column: 5)
!211 = !DILocation(line: 24, column: 9, scope: !210)
!212 = !DILocation(line: 25, column: 5, scope: !210)
!213 = !DILocation(line: 26, column: 1, scope: !202)
!214 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !215, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !217}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !67, line: 74, baseType: !23)
!219 = !DILocalVariable(name: "line", arg: 1, scope: !214, file: !3, line: 27, type: !217)
!220 = !DILocation(line: 27, column: 29, scope: !214)
!221 = !DILocation(line: 29, column: 8, scope: !222)
!222 = distinct !DILexicalBlock(scope: !214, file: !3, line: 29, column: 8)
!223 = !DILocation(line: 29, column: 13, scope: !222)
!224 = !DILocation(line: 29, column: 8, scope: !214)
!225 = !DILocation(line: 31, column: 27, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !3, line: 30, column: 5)
!227 = !DILocation(line: 31, column: 9, scope: !226)
!228 = !DILocation(line: 32, column: 5, scope: !226)
!229 = !DILocation(line: 33, column: 1, scope: !214)
!230 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !231, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !23}
!233 = !DILocalVariable(name: "intNumber", arg: 1, scope: !230, file: !3, line: 35, type: !23)
!234 = !DILocation(line: 35, column: 24, scope: !230)
!235 = !DILocation(line: 37, column: 20, scope: !230)
!236 = !DILocation(line: 37, column: 5, scope: !230)
!237 = !DILocation(line: 38, column: 1, scope: !230)
!238 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !239, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !241}
!241 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!242 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !238, file: !3, line: 40, type: !241)
!243 = !DILocation(line: 40, column: 28, scope: !238)
!244 = !DILocation(line: 42, column: 21, scope: !238)
!245 = !DILocation(line: 42, column: 5, scope: !238)
!246 = !DILocation(line: 43, column: 1, scope: !238)
!247 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !248, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !250}
!250 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!251 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !247, file: !3, line: 45, type: !250)
!252 = !DILocation(line: 45, column: 28, scope: !247)
!253 = !DILocation(line: 47, column: 20, scope: !247)
!254 = !DILocation(line: 47, column: 5, scope: !247)
!255 = !DILocation(line: 48, column: 1, scope: !247)
!256 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !257, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !259}
!259 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!260 = !DILocalVariable(name: "longNumber", arg: 1, scope: !256, file: !3, line: 50, type: !259)
!261 = !DILocation(line: 50, column: 26, scope: !256)
!262 = !DILocation(line: 52, column: 21, scope: !256)
!263 = !DILocation(line: 52, column: 5, scope: !256)
!264 = !DILocation(line: 53, column: 1, scope: !256)
!265 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !266, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !268}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !269, line: 27, baseType: !270)
!269 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !271, line: 44, baseType: !259)
!271 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!272 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !265, file: !3, line: 55, type: !268)
!273 = !DILocation(line: 55, column: 33, scope: !265)
!274 = !DILocation(line: 57, column: 29, scope: !265)
!275 = !DILocation(line: 57, column: 5, scope: !265)
!276 = !DILocation(line: 58, column: 1, scope: !265)
!277 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !278, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !66}
!280 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !277, file: !3, line: 60, type: !66)
!281 = !DILocation(line: 60, column: 29, scope: !277)
!282 = !DILocation(line: 62, column: 21, scope: !277)
!283 = !DILocation(line: 62, column: 5, scope: !277)
!284 = !DILocation(line: 63, column: 1, scope: !277)
!285 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !286, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !43}
!288 = !DILocalVariable(name: "charHex", arg: 1, scope: !285, file: !3, line: 65, type: !43)
!289 = !DILocation(line: 65, column: 29, scope: !285)
!290 = !DILocation(line: 67, column: 22, scope: !285)
!291 = !DILocation(line: 67, column: 5, scope: !285)
!292 = !DILocation(line: 68, column: 1, scope: !285)
!293 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !294, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !218}
!296 = !DILocalVariable(name: "wideChar", arg: 1, scope: !293, file: !3, line: 70, type: !218)
!297 = !DILocation(line: 70, column: 29, scope: !293)
!298 = !DILocalVariable(name: "s", scope: !293, file: !3, line: 74, type: !299)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 64, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 2)
!302 = !DILocation(line: 74, column: 13, scope: !293)
!303 = !DILocation(line: 75, column: 16, scope: !293)
!304 = !DILocation(line: 75, column: 9, scope: !293)
!305 = !DILocation(line: 75, column: 14, scope: !293)
!306 = !DILocation(line: 76, column: 9, scope: !293)
!307 = !DILocation(line: 76, column: 14, scope: !293)
!308 = !DILocation(line: 77, column: 21, scope: !293)
!309 = !DILocation(line: 77, column: 5, scope: !293)
!310 = !DILocation(line: 78, column: 1, scope: !293)
!311 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !312, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !7}
!314 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !311, file: !3, line: 80, type: !7)
!315 = !DILocation(line: 80, column: 33, scope: !311)
!316 = !DILocation(line: 82, column: 20, scope: !311)
!317 = !DILocation(line: 82, column: 5, scope: !311)
!318 = !DILocation(line: 83, column: 1, scope: !311)
!319 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !320, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !25}
!322 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !319, file: !3, line: 85, type: !25)
!323 = !DILocation(line: 85, column: 45, scope: !319)
!324 = !DILocation(line: 87, column: 22, scope: !319)
!325 = !DILocation(line: 87, column: 5, scope: !319)
!326 = !DILocation(line: 88, column: 1, scope: !319)
!327 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !328, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !330}
!330 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!331 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !327, file: !3, line: 90, type: !330)
!332 = !DILocation(line: 90, column: 29, scope: !327)
!333 = !DILocation(line: 92, column: 20, scope: !327)
!334 = !DILocation(line: 92, column: 5, scope: !327)
!335 = !DILocation(line: 93, column: 1, scope: !327)
!336 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !337, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !341, line: 100, baseType: !342)
!341 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_736/source_code")
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !341, line: 96, size: 64, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !342, file: !341, line: 98, baseType: !23, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !342, file: !341, line: 99, baseType: !23, size: 32, offset: 32)
!346 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !336, file: !3, line: 95, type: !339)
!347 = !DILocation(line: 95, column: 40, scope: !336)
!348 = !DILocation(line: 97, column: 26, scope: !336)
!349 = !DILocation(line: 97, column: 47, scope: !336)
!350 = !DILocation(line: 97, column: 55, scope: !336)
!351 = !DILocation(line: 97, column: 76, scope: !336)
!352 = !DILocation(line: 97, column: 5, scope: !336)
!353 = !DILocation(line: 98, column: 1, scope: !336)
!354 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !355, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !357, !66}
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!358 = !DILocalVariable(name: "bytes", arg: 1, scope: !354, file: !3, line: 100, type: !357)
!359 = !DILocation(line: 100, column: 38, scope: !354)
!360 = !DILocalVariable(name: "numBytes", arg: 2, scope: !354, file: !3, line: 100, type: !66)
!361 = !DILocation(line: 100, column: 52, scope: !354)
!362 = !DILocalVariable(name: "i", scope: !354, file: !3, line: 102, type: !66)
!363 = !DILocation(line: 102, column: 12, scope: !354)
!364 = !DILocation(line: 103, column: 12, scope: !365)
!365 = distinct !DILexicalBlock(scope: !354, file: !3, line: 103, column: 5)
!366 = !DILocation(line: 103, column: 10, scope: !365)
!367 = !DILocation(line: 103, column: 17, scope: !368)
!368 = distinct !DILexicalBlock(scope: !365, file: !3, line: 103, column: 5)
!369 = !DILocation(line: 103, column: 21, scope: !368)
!370 = !DILocation(line: 103, column: 19, scope: !368)
!371 = !DILocation(line: 103, column: 5, scope: !365)
!372 = !DILocation(line: 105, column: 24, scope: !373)
!373 = distinct !DILexicalBlock(scope: !368, file: !3, line: 104, column: 5)
!374 = !DILocation(line: 105, column: 30, scope: !373)
!375 = !DILocation(line: 105, column: 9, scope: !373)
!376 = !DILocation(line: 106, column: 5, scope: !373)
!377 = !DILocation(line: 103, column: 31, scope: !368)
!378 = !DILocation(line: 103, column: 5, scope: !368)
!379 = distinct !{!379, !371, !380, !381}
!380 = !DILocation(line: 106, column: 5, scope: !365)
!381 = !{!"llvm.loop.mustprogress"}
!382 = !DILocation(line: 107, column: 5, scope: !354)
!383 = !DILocation(line: 108, column: 1, scope: !354)
!384 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !385, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!385 = !DISubroutineType(types: !386)
!386 = !{!66, !357, !66, !42}
!387 = !DILocalVariable(name: "bytes", arg: 1, scope: !384, file: !3, line: 113, type: !357)
!388 = !DILocation(line: 113, column: 39, scope: !384)
!389 = !DILocalVariable(name: "numBytes", arg: 2, scope: !384, file: !3, line: 113, type: !66)
!390 = !DILocation(line: 113, column: 53, scope: !384)
!391 = !DILocalVariable(name: "hex", arg: 3, scope: !384, file: !3, line: 113, type: !42)
!392 = !DILocation(line: 113, column: 71, scope: !384)
!393 = !DILocalVariable(name: "numWritten", scope: !384, file: !3, line: 115, type: !66)
!394 = !DILocation(line: 115, column: 12, scope: !384)
!395 = !DILocation(line: 121, column: 5, scope: !384)
!396 = !DILocation(line: 121, column: 12, scope: !384)
!397 = !DILocation(line: 121, column: 25, scope: !384)
!398 = !DILocation(line: 121, column: 23, scope: !384)
!399 = !DILocation(line: 121, column: 34, scope: !384)
!400 = !DILocation(line: 121, column: 37, scope: !384)
!401 = !DILocation(line: 121, column: 67, scope: !384)
!402 = !DILocation(line: 121, column: 70, scope: !384)
!403 = !DILocation(line: 0, scope: !384)
!404 = !DILocalVariable(name: "byte", scope: !405, file: !3, line: 123, type: !23)
!405 = distinct !DILexicalBlock(scope: !384, file: !3, line: 122, column: 5)
!406 = !DILocation(line: 123, column: 13, scope: !405)
!407 = !DILocation(line: 124, column: 17, scope: !405)
!408 = !DILocation(line: 124, column: 25, scope: !405)
!409 = !DILocation(line: 124, column: 23, scope: !405)
!410 = !DILocation(line: 124, column: 9, scope: !405)
!411 = !DILocation(line: 125, column: 45, scope: !405)
!412 = !DILocation(line: 125, column: 29, scope: !405)
!413 = !DILocation(line: 125, column: 9, scope: !405)
!414 = !DILocation(line: 125, column: 15, scope: !405)
!415 = !DILocation(line: 125, column: 27, scope: !405)
!416 = !DILocation(line: 126, column: 9, scope: !405)
!417 = distinct !{!417, !395, !418, !381}
!418 = !DILocation(line: 127, column: 5, scope: !384)
!419 = !DILocation(line: 129, column: 12, scope: !384)
!420 = !DILocation(line: 129, column: 5, scope: !384)
!421 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !422, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!422 = !DISubroutineType(types: !423)
!423 = !{!66, !357, !66, !217}
!424 = !DILocalVariable(name: "bytes", arg: 1, scope: !421, file: !3, line: 135, type: !357)
!425 = !DILocation(line: 135, column: 41, scope: !421)
!426 = !DILocalVariable(name: "numBytes", arg: 2, scope: !421, file: !3, line: 135, type: !66)
!427 = !DILocation(line: 135, column: 55, scope: !421)
!428 = !DILocalVariable(name: "hex", arg: 3, scope: !421, file: !3, line: 135, type: !217)
!429 = !DILocation(line: 135, column: 76, scope: !421)
!430 = !DILocalVariable(name: "numWritten", scope: !421, file: !3, line: 137, type: !66)
!431 = !DILocation(line: 137, column: 12, scope: !421)
!432 = !DILocation(line: 143, column: 5, scope: !421)
!433 = !DILocation(line: 143, column: 12, scope: !421)
!434 = !DILocation(line: 143, column: 25, scope: !421)
!435 = !DILocation(line: 143, column: 23, scope: !421)
!436 = !DILocation(line: 143, column: 34, scope: !421)
!437 = !DILocation(line: 143, column: 47, scope: !421)
!438 = !DILocation(line: 143, column: 55, scope: !421)
!439 = !DILocation(line: 143, column: 53, scope: !421)
!440 = !DILocation(line: 143, column: 37, scope: !421)
!441 = !DILocation(line: 143, column: 68, scope: !421)
!442 = !DILocation(line: 143, column: 81, scope: !421)
!443 = !DILocation(line: 143, column: 89, scope: !421)
!444 = !DILocation(line: 143, column: 87, scope: !421)
!445 = !DILocation(line: 143, column: 100, scope: !421)
!446 = !DILocation(line: 143, column: 71, scope: !421)
!447 = !DILocation(line: 0, scope: !421)
!448 = !DILocalVariable(name: "byte", scope: !449, file: !3, line: 145, type: !23)
!449 = distinct !DILexicalBlock(scope: !421, file: !3, line: 144, column: 5)
!450 = !DILocation(line: 145, column: 13, scope: !449)
!451 = !DILocation(line: 146, column: 18, scope: !449)
!452 = !DILocation(line: 146, column: 26, scope: !449)
!453 = !DILocation(line: 146, column: 24, scope: !449)
!454 = !DILocation(line: 146, column: 9, scope: !449)
!455 = !DILocation(line: 147, column: 45, scope: !449)
!456 = !DILocation(line: 147, column: 29, scope: !449)
!457 = !DILocation(line: 147, column: 9, scope: !449)
!458 = !DILocation(line: 147, column: 15, scope: !449)
!459 = !DILocation(line: 147, column: 27, scope: !449)
!460 = !DILocation(line: 148, column: 9, scope: !449)
!461 = distinct !{!461, !432, !462, !381}
!462 = !DILocation(line: 149, column: 5, scope: !421)
!463 = !DILocation(line: 151, column: 12, scope: !421)
!464 = !DILocation(line: 151, column: 5, scope: !421)
!465 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !466, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!466 = !DISubroutineType(types: !467)
!467 = !{!23}
!468 = !DILocation(line: 158, column: 5, scope: !465)
!469 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !466, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!470 = !DILocation(line: 163, column: 5, scope: !469)
!471 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !466, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!472 = !DILocation(line: 168, column: 13, scope: !471)
!473 = !DILocation(line: 168, column: 20, scope: !471)
!474 = !DILocation(line: 168, column: 5, scope: !471)
!475 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!476 = !DILocation(line: 187, column: 16, scope: !475)
!477 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!478 = !DILocation(line: 188, column: 16, scope: !477)
!479 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!480 = !DILocation(line: 189, column: 16, scope: !479)
!481 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!482 = !DILocation(line: 190, column: 16, scope: !481)
!483 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!484 = !DILocation(line: 191, column: 16, scope: !483)
!485 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!486 = !DILocation(line: 192, column: 16, scope: !485)
!487 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!488 = !DILocation(line: 193, column: 16, scope: !487)
!489 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!490 = !DILocation(line: 194, column: 16, scope: !489)
!491 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!492 = !DILocation(line: 195, column: 16, scope: !491)
!493 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!494 = !DILocation(line: 198, column: 15, scope: !493)
!495 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!496 = !DILocation(line: 199, column: 15, scope: !495)
!497 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!498 = !DILocation(line: 200, column: 15, scope: !497)
!499 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!500 = !DILocation(line: 201, column: 15, scope: !499)
!501 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!502 = !DILocation(line: 202, column: 15, scope: !501)
!503 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!504 = !DILocation(line: 203, column: 15, scope: !503)
!505 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!506 = !DILocation(line: 204, column: 15, scope: !505)
!507 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!508 = !DILocation(line: 205, column: 15, scope: !507)
!509 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!510 = !DILocation(line: 206, column: 15, scope: !509)
