; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_01_bad() #0 !dbg !52 {
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
define dso_local void @goodG2B() #0 !dbg !92 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !95, metadata !DIExpression()), !dbg !96
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !96
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !96
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !97
  store i8* %arraydecay, i8** %data, align 8, !dbg !98
  %1 = load i8*, i8** %data, align 8, !dbg !99
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !100
  %2 = load i8*, i8** %data, align 8, !dbg !101
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !102
  ret void, !dbg !103
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !104 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !107, metadata !DIExpression()), !dbg !108
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !108
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !108
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !109
  store i8* %arraydecay, i8** %data, align 8, !dbg !110
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !111, metadata !DIExpression()), !dbg !113
  %1 = load i8*, i8** %data, align 8, !dbg !114
  %call = call i64 @strlen(i8* %1) #7, !dbg !115
  store i64 %call, i64* %dataLen, align 8, !dbg !113
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !116, metadata !DIExpression()), !dbg !117
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !118
  store i8* %call1, i8** %environment, align 8, !dbg !117
  %2 = load i8*, i8** %environment, align 8, !dbg !119
  %cmp = icmp ne i8* %2, null, !dbg !121
  br i1 %cmp, label %if.then, label %if.end, !dbg !122

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !123
  %4 = load i64, i64* %dataLen, align 8, !dbg !125
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !126
  %5 = load i8*, i8** %environment, align 8, !dbg !127
  %6 = load i64, i64* %dataLen, align 8, !dbg !128
  %sub = sub i64 100, %6, !dbg !129
  %sub2 = sub i64 %sub, 1, !dbg !130
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !131
  br label %if.end, !dbg !132

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !133
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %7), !dbg !134
  ret void, !dbg !135
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_01_good() #0 !dbg !136 {
entry:
  call void @goodG2B(), !dbg !137
  call void @goodB2G(), !dbg !138
  ret void, !dbg !139
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !140 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !143, metadata !DIExpression()), !dbg !144
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !145
  %0 = load i8*, i8** %line.addr, align 8, !dbg !146
  %cmp = icmp ne i8* %0, null, !dbg !148
  br i1 %cmp, label %if.then, label %if.end, !dbg !149

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !150
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !152
  br label %if.end, !dbg !153

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !154
  ret void, !dbg !155
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !156 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !157, metadata !DIExpression()), !dbg !158
  %0 = load i8*, i8** %line.addr, align 8, !dbg !159
  %cmp = icmp ne i8* %0, null, !dbg !161
  br i1 %cmp, label %if.then, label %if.end, !dbg !162

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !163
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !165
  br label %if.end, !dbg !166

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !167
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !168 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !173, metadata !DIExpression()), !dbg !174
  %0 = load i32*, i32** %line.addr, align 8, !dbg !175
  %cmp = icmp ne i32* %0, null, !dbg !177
  br i1 %cmp, label %if.then, label %if.end, !dbg !178

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !179
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !181
  br label %if.end, !dbg !182

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !183
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !184 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !187, metadata !DIExpression()), !dbg !188
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !189
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !190
  ret void, !dbg !191
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !192 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !196, metadata !DIExpression()), !dbg !197
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !198
  %conv = sext i16 %0 to i32, !dbg !198
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !199
  ret void, !dbg !200
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !201 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !205, metadata !DIExpression()), !dbg !206
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !207
  %conv = fpext float %0 to double, !dbg !207
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !208
  ret void, !dbg !209
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !210 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !214, metadata !DIExpression()), !dbg !215
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !216
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !217
  ret void, !dbg !218
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !219 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !226, metadata !DIExpression()), !dbg !227
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !228
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !229
  ret void, !dbg !230
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !231 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !234, metadata !DIExpression()), !dbg !235
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !236
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !237
  ret void, !dbg !238
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !239 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !242, metadata !DIExpression()), !dbg !243
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !244
  %conv = sext i8 %0 to i32, !dbg !244
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !245
  ret void, !dbg !246
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !247 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !250, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !252, metadata !DIExpression()), !dbg !256
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !257
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !258
  store i32 %0, i32* %arrayidx, align 4, !dbg !259
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !260
  store i32 0, i32* %arrayidx1, align 4, !dbg !261
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !262
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !263
  ret void, !dbg !264
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !265 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !268, metadata !DIExpression()), !dbg !269
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !270
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !271
  ret void, !dbg !272
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !273 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !276, metadata !DIExpression()), !dbg !277
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !278
  %conv = zext i8 %0 to i32, !dbg !278
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !279
  ret void, !dbg !280
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !281 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !285, metadata !DIExpression()), !dbg !286
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !287
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !288
  ret void, !dbg !289
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !290 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !302
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !303
  %1 = load i32, i32* %intOne, align 4, !dbg !303
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !304
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !305
  %3 = load i32, i32* %intTwo, align 4, !dbg !305
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !306
  ret void, !dbg !307
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !308 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !312, metadata !DIExpression()), !dbg !313
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !314, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.declare(metadata i64* %i, metadata !316, metadata !DIExpression()), !dbg !317
  store i64 0, i64* %i, align 8, !dbg !318
  br label %for.cond, !dbg !320

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !321
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !323
  %cmp = icmp ult i64 %0, %1, !dbg !324
  br i1 %cmp, label %for.body, label %for.end, !dbg !325

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !326
  %3 = load i64, i64* %i, align 8, !dbg !328
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !326
  %4 = load i8, i8* %arrayidx, align 1, !dbg !326
  %conv = zext i8 %4 to i32, !dbg !326
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !329
  br label %for.inc, !dbg !330

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !331
  %inc = add i64 %5, 1, !dbg !331
  store i64 %inc, i64* %i, align 8, !dbg !331
  br label %for.cond, !dbg !332, !llvm.loop !333

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !336
  ret void, !dbg !337
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !338 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !341, metadata !DIExpression()), !dbg !342
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !343, metadata !DIExpression()), !dbg !344
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !347, metadata !DIExpression()), !dbg !348
  store i64 0, i64* %numWritten, align 8, !dbg !348
  br label %while.cond, !dbg !349

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !350
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !351
  %cmp = icmp ult i64 %0, %1, !dbg !352
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !353

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !354
  %2 = load i16*, i16** %call, align 8, !dbg !354
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !354
  %4 = load i64, i64* %numWritten, align 8, !dbg !354
  %mul = mul i64 2, %4, !dbg !354
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !354
  %5 = load i8, i8* %arrayidx, align 1, !dbg !354
  %conv = sext i8 %5 to i32, !dbg !354
  %idxprom = sext i32 %conv to i64, !dbg !354
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !354
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !354
  %conv2 = zext i16 %6 to i32, !dbg !354
  %and = and i32 %conv2, 4096, !dbg !354
  %tobool = icmp ne i32 %and, 0, !dbg !354
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !355

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !356
  %7 = load i16*, i16** %call3, align 8, !dbg !356
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !356
  %9 = load i64, i64* %numWritten, align 8, !dbg !356
  %mul4 = mul i64 2, %9, !dbg !356
  %add = add i64 %mul4, 1, !dbg !356
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !356
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !356
  %conv6 = sext i8 %10 to i32, !dbg !356
  %idxprom7 = sext i32 %conv6 to i64, !dbg !356
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !356
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !356
  %conv9 = zext i16 %11 to i32, !dbg !356
  %and10 = and i32 %conv9, 4096, !dbg !356
  %tobool11 = icmp ne i32 %and10, 0, !dbg !355
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !357
  br i1 %12, label %while.body, label %while.end, !dbg !349

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !358, metadata !DIExpression()), !dbg !360
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !361
  %14 = load i64, i64* %numWritten, align 8, !dbg !362
  %mul12 = mul i64 2, %14, !dbg !363
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !361
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !364
  %15 = load i32, i32* %byte, align 4, !dbg !365
  %conv15 = trunc i32 %15 to i8, !dbg !366
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !367
  %17 = load i64, i64* %numWritten, align 8, !dbg !368
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !367
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !369
  %18 = load i64, i64* %numWritten, align 8, !dbg !370
  %inc = add i64 %18, 1, !dbg !370
  store i64 %inc, i64* %numWritten, align 8, !dbg !370
  br label %while.cond, !dbg !349, !llvm.loop !371

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !373
  ret i64 %19, !dbg !374
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !375 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !378, metadata !DIExpression()), !dbg !379
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !380, metadata !DIExpression()), !dbg !381
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !382, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !384, metadata !DIExpression()), !dbg !385
  store i64 0, i64* %numWritten, align 8, !dbg !385
  br label %while.cond, !dbg !386

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !387
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !388
  %cmp = icmp ult i64 %0, %1, !dbg !389
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !390

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !391
  %3 = load i64, i64* %numWritten, align 8, !dbg !392
  %mul = mul i64 2, %3, !dbg !393
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !391
  %4 = load i32, i32* %arrayidx, align 4, !dbg !391
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !394
  %tobool = icmp ne i32 %call, 0, !dbg !394
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !395

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !396
  %6 = load i64, i64* %numWritten, align 8, !dbg !397
  %mul1 = mul i64 2, %6, !dbg !398
  %add = add i64 %mul1, 1, !dbg !399
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !396
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !396
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !400
  %tobool4 = icmp ne i32 %call3, 0, !dbg !395
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !401
  br i1 %8, label %while.body, label %while.end, !dbg !386

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !402, metadata !DIExpression()), !dbg !404
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !405
  %10 = load i64, i64* %numWritten, align 8, !dbg !406
  %mul5 = mul i64 2, %10, !dbg !407
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !405
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !408
  %11 = load i32, i32* %byte, align 4, !dbg !409
  %conv = trunc i32 %11 to i8, !dbg !410
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !411
  %13 = load i64, i64* %numWritten, align 8, !dbg !412
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !411
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !413
  %14 = load i64, i64* %numWritten, align 8, !dbg !414
  %inc = add i64 %14, 1, !dbg !414
  store i64 %inc, i64* %numWritten, align 8, !dbg !414
  br label %while.cond, !dbg !386, !llvm.loop !415

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !417
  ret i64 %15, !dbg !418
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !419 {
entry:
  ret i32 1, !dbg !422
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !423 {
entry:
  ret i32 0, !dbg !424
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !425 {
entry:
  %call = call i32 @rand() #8, !dbg !426
  %rem = srem i32 %call, 2, !dbg !427
  ret i32 %rem, !dbg !428
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !429 {
entry:
  ret void, !dbg !430
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !431 {
entry:
  ret void, !dbg !432
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !433 {
entry:
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !435 {
entry:
  ret void, !dbg !436
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !437 {
entry:
  ret void, !dbg !438
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !439 {
entry:
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !441 {
entry:
  ret void, !dbg !442
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !443 {
entry:
  ret void, !dbg !444
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !445 {
entry:
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !447 {
entry:
  ret void, !dbg !448
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !449 {
entry:
  ret void, !dbg !450
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !451 {
entry:
  ret void, !dbg !452
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !453 {
entry:
  ret void, !dbg !454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !455 {
entry:
  ret void, !dbg !456
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !457 {
entry:
  ret void, !dbg !458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !459 {
entry:
  ret void, !dbg !460
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !461 {
entry:
  ret void, !dbg !462
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !463 {
entry:
  ret void, !dbg !464
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_722/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_01.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_722/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_01_bad", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!64 = !DILocalVariable(name: "dataLen", scope: !65, file: !45, line: 42, type: !66)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 40, column: 5)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 46, baseType: !68)
!67 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!68 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!69 = !DILocation(line: 42, column: 16, scope: !65)
!70 = !DILocation(line: 42, column: 33, scope: !65)
!71 = !DILocation(line: 42, column: 26, scope: !65)
!72 = !DILocalVariable(name: "environment", scope: !65, file: !45, line: 43, type: !42)
!73 = !DILocation(line: 43, column: 16, scope: !65)
!74 = !DILocation(line: 43, column: 30, scope: !65)
!75 = !DILocation(line: 45, column: 13, scope: !76)
!76 = distinct !DILexicalBlock(scope: !65, file: !45, line: 45, column: 13)
!77 = !DILocation(line: 45, column: 25, scope: !76)
!78 = !DILocation(line: 45, column: 13, scope: !65)
!79 = !DILocation(line: 48, column: 21, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !45, line: 46, column: 9)
!81 = !DILocation(line: 48, column: 26, scope: !80)
!82 = !DILocation(line: 48, column: 25, scope: !80)
!83 = !DILocation(line: 48, column: 35, scope: !80)
!84 = !DILocation(line: 48, column: 52, scope: !80)
!85 = !DILocation(line: 48, column: 51, scope: !80)
!86 = !DILocation(line: 48, column: 59, scope: !80)
!87 = !DILocation(line: 48, column: 13, scope: !80)
!88 = !DILocation(line: 49, column: 9, scope: !80)
!89 = !DILocation(line: 52, column: 12, scope: !52)
!90 = !DILocation(line: 52, column: 5, scope: !52)
!91 = !DILocation(line: 53, column: 1, scope: !52)
!92 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 60, type: !53, scopeLine: 61, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!93 = !DILocalVariable(name: "data", scope: !92, file: !45, line: 62, type: !42)
!94 = !DILocation(line: 62, column: 12, scope: !92)
!95 = !DILocalVariable(name: "dataBuffer", scope: !92, file: !45, line: 63, type: !58)
!96 = !DILocation(line: 63, column: 10, scope: !92)
!97 = !DILocation(line: 64, column: 12, scope: !92)
!98 = !DILocation(line: 64, column: 10, scope: !92)
!99 = !DILocation(line: 66, column: 12, scope: !92)
!100 = !DILocation(line: 66, column: 5, scope: !92)
!101 = !DILocation(line: 68, column: 12, scope: !92)
!102 = !DILocation(line: 68, column: 5, scope: !92)
!103 = !DILocation(line: 69, column: 1, scope: !92)
!104 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 72, type: !53, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!105 = !DILocalVariable(name: "data", scope: !104, file: !45, line: 74, type: !42)
!106 = !DILocation(line: 74, column: 12, scope: !104)
!107 = !DILocalVariable(name: "dataBuffer", scope: !104, file: !45, line: 75, type: !58)
!108 = !DILocation(line: 75, column: 10, scope: !104)
!109 = !DILocation(line: 76, column: 12, scope: !104)
!110 = !DILocation(line: 76, column: 10, scope: !104)
!111 = !DILocalVariable(name: "dataLen", scope: !112, file: !45, line: 79, type: !66)
!112 = distinct !DILexicalBlock(scope: !104, file: !45, line: 77, column: 5)
!113 = !DILocation(line: 79, column: 16, scope: !112)
!114 = !DILocation(line: 79, column: 33, scope: !112)
!115 = !DILocation(line: 79, column: 26, scope: !112)
!116 = !DILocalVariable(name: "environment", scope: !112, file: !45, line: 80, type: !42)
!117 = !DILocation(line: 80, column: 16, scope: !112)
!118 = !DILocation(line: 80, column: 30, scope: !112)
!119 = !DILocation(line: 82, column: 13, scope: !120)
!120 = distinct !DILexicalBlock(scope: !112, file: !45, line: 82, column: 13)
!121 = !DILocation(line: 82, column: 25, scope: !120)
!122 = !DILocation(line: 82, column: 13, scope: !112)
!123 = !DILocation(line: 85, column: 21, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !45, line: 83, column: 9)
!125 = !DILocation(line: 85, column: 26, scope: !124)
!126 = !DILocation(line: 85, column: 25, scope: !124)
!127 = !DILocation(line: 85, column: 35, scope: !124)
!128 = !DILocation(line: 85, column: 52, scope: !124)
!129 = !DILocation(line: 85, column: 51, scope: !124)
!130 = !DILocation(line: 85, column: 59, scope: !124)
!131 = !DILocation(line: 85, column: 13, scope: !124)
!132 = !DILocation(line: 86, column: 9, scope: !124)
!133 = !DILocation(line: 89, column: 20, scope: !104)
!134 = !DILocation(line: 89, column: 5, scope: !104)
!135 = !DILocation(line: 90, column: 1, scope: !104)
!136 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_01_good", scope: !45, file: !45, line: 92, type: !53, scopeLine: 93, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!137 = !DILocation(line: 94, column: 5, scope: !136)
!138 = !DILocation(line: 95, column: 5, scope: !136)
!139 = !DILocation(line: 96, column: 1, scope: !136)
!140 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !141, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !42}
!143 = !DILocalVariable(name: "line", arg: 1, scope: !140, file: !3, line: 11, type: !42)
!144 = !DILocation(line: 11, column: 25, scope: !140)
!145 = !DILocation(line: 13, column: 1, scope: !140)
!146 = !DILocation(line: 14, column: 8, scope: !147)
!147 = distinct !DILexicalBlock(scope: !140, file: !3, line: 14, column: 8)
!148 = !DILocation(line: 14, column: 13, scope: !147)
!149 = !DILocation(line: 14, column: 8, scope: !140)
!150 = !DILocation(line: 16, column: 24, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !3, line: 15, column: 5)
!152 = !DILocation(line: 16, column: 9, scope: !151)
!153 = !DILocation(line: 17, column: 5, scope: !151)
!154 = !DILocation(line: 18, column: 5, scope: !140)
!155 = !DILocation(line: 19, column: 1, scope: !140)
!156 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !141, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!157 = !DILocalVariable(name: "line", arg: 1, scope: !156, file: !3, line: 20, type: !42)
!158 = !DILocation(line: 20, column: 29, scope: !156)
!159 = !DILocation(line: 22, column: 8, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !3, line: 22, column: 8)
!161 = !DILocation(line: 22, column: 13, scope: !160)
!162 = !DILocation(line: 22, column: 8, scope: !156)
!163 = !DILocation(line: 24, column: 24, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !3, line: 23, column: 5)
!165 = !DILocation(line: 24, column: 9, scope: !164)
!166 = !DILocation(line: 25, column: 5, scope: !164)
!167 = !DILocation(line: 26, column: 1, scope: !156)
!168 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !169, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !67, line: 74, baseType: !23)
!173 = !DILocalVariable(name: "line", arg: 1, scope: !168, file: !3, line: 27, type: !171)
!174 = !DILocation(line: 27, column: 29, scope: !168)
!175 = !DILocation(line: 29, column: 8, scope: !176)
!176 = distinct !DILexicalBlock(scope: !168, file: !3, line: 29, column: 8)
!177 = !DILocation(line: 29, column: 13, scope: !176)
!178 = !DILocation(line: 29, column: 8, scope: !168)
!179 = !DILocation(line: 31, column: 27, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !3, line: 30, column: 5)
!181 = !DILocation(line: 31, column: 9, scope: !180)
!182 = !DILocation(line: 32, column: 5, scope: !180)
!183 = !DILocation(line: 33, column: 1, scope: !168)
!184 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !185, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !23}
!187 = !DILocalVariable(name: "intNumber", arg: 1, scope: !184, file: !3, line: 35, type: !23)
!188 = !DILocation(line: 35, column: 24, scope: !184)
!189 = !DILocation(line: 37, column: 20, scope: !184)
!190 = !DILocation(line: 37, column: 5, scope: !184)
!191 = !DILocation(line: 38, column: 1, scope: !184)
!192 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !193, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !195}
!195 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!196 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !192, file: !3, line: 40, type: !195)
!197 = !DILocation(line: 40, column: 28, scope: !192)
!198 = !DILocation(line: 42, column: 21, scope: !192)
!199 = !DILocation(line: 42, column: 5, scope: !192)
!200 = !DILocation(line: 43, column: 1, scope: !192)
!201 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !202, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !204}
!204 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!205 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !201, file: !3, line: 45, type: !204)
!206 = !DILocation(line: 45, column: 28, scope: !201)
!207 = !DILocation(line: 47, column: 20, scope: !201)
!208 = !DILocation(line: 47, column: 5, scope: !201)
!209 = !DILocation(line: 48, column: 1, scope: !201)
!210 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !211, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !213}
!213 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!214 = !DILocalVariable(name: "longNumber", arg: 1, scope: !210, file: !3, line: 50, type: !213)
!215 = !DILocation(line: 50, column: 26, scope: !210)
!216 = !DILocation(line: 52, column: 21, scope: !210)
!217 = !DILocation(line: 52, column: 5, scope: !210)
!218 = !DILocation(line: 53, column: 1, scope: !210)
!219 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !220, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !222}
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !223, line: 27, baseType: !224)
!223 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !225, line: 44, baseType: !213)
!225 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!226 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !219, file: !3, line: 55, type: !222)
!227 = !DILocation(line: 55, column: 33, scope: !219)
!228 = !DILocation(line: 57, column: 29, scope: !219)
!229 = !DILocation(line: 57, column: 5, scope: !219)
!230 = !DILocation(line: 58, column: 1, scope: !219)
!231 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !232, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !66}
!234 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !231, file: !3, line: 60, type: !66)
!235 = !DILocation(line: 60, column: 29, scope: !231)
!236 = !DILocation(line: 62, column: 21, scope: !231)
!237 = !DILocation(line: 62, column: 5, scope: !231)
!238 = !DILocation(line: 63, column: 1, scope: !231)
!239 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !240, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !43}
!242 = !DILocalVariable(name: "charHex", arg: 1, scope: !239, file: !3, line: 65, type: !43)
!243 = !DILocation(line: 65, column: 29, scope: !239)
!244 = !DILocation(line: 67, column: 22, scope: !239)
!245 = !DILocation(line: 67, column: 5, scope: !239)
!246 = !DILocation(line: 68, column: 1, scope: !239)
!247 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !248, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !172}
!250 = !DILocalVariable(name: "wideChar", arg: 1, scope: !247, file: !3, line: 70, type: !172)
!251 = !DILocation(line: 70, column: 29, scope: !247)
!252 = !DILocalVariable(name: "s", scope: !247, file: !3, line: 74, type: !253)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 64, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 2)
!256 = !DILocation(line: 74, column: 13, scope: !247)
!257 = !DILocation(line: 75, column: 16, scope: !247)
!258 = !DILocation(line: 75, column: 9, scope: !247)
!259 = !DILocation(line: 75, column: 14, scope: !247)
!260 = !DILocation(line: 76, column: 9, scope: !247)
!261 = !DILocation(line: 76, column: 14, scope: !247)
!262 = !DILocation(line: 77, column: 21, scope: !247)
!263 = !DILocation(line: 77, column: 5, scope: !247)
!264 = !DILocation(line: 78, column: 1, scope: !247)
!265 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !266, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !7}
!268 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !265, file: !3, line: 80, type: !7)
!269 = !DILocation(line: 80, column: 33, scope: !265)
!270 = !DILocation(line: 82, column: 20, scope: !265)
!271 = !DILocation(line: 82, column: 5, scope: !265)
!272 = !DILocation(line: 83, column: 1, scope: !265)
!273 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !274, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !25}
!276 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !273, file: !3, line: 85, type: !25)
!277 = !DILocation(line: 85, column: 45, scope: !273)
!278 = !DILocation(line: 87, column: 22, scope: !273)
!279 = !DILocation(line: 87, column: 5, scope: !273)
!280 = !DILocation(line: 88, column: 1, scope: !273)
!281 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !282, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !284}
!284 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!285 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !281, file: !3, line: 90, type: !284)
!286 = !DILocation(line: 90, column: 29, scope: !281)
!287 = !DILocation(line: 92, column: 20, scope: !281)
!288 = !DILocation(line: 92, column: 5, scope: !281)
!289 = !DILocation(line: 93, column: 1, scope: !281)
!290 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !291, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !295, line: 100, baseType: !296)
!295 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_722/source_code")
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !295, line: 96, size: 64, elements: !297)
!297 = !{!298, !299}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !296, file: !295, line: 98, baseType: !23, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !296, file: !295, line: 99, baseType: !23, size: 32, offset: 32)
!300 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !290, file: !3, line: 95, type: !293)
!301 = !DILocation(line: 95, column: 40, scope: !290)
!302 = !DILocation(line: 97, column: 26, scope: !290)
!303 = !DILocation(line: 97, column: 47, scope: !290)
!304 = !DILocation(line: 97, column: 55, scope: !290)
!305 = !DILocation(line: 97, column: 76, scope: !290)
!306 = !DILocation(line: 97, column: 5, scope: !290)
!307 = !DILocation(line: 98, column: 1, scope: !290)
!308 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !309, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !311, !66}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!312 = !DILocalVariable(name: "bytes", arg: 1, scope: !308, file: !3, line: 100, type: !311)
!313 = !DILocation(line: 100, column: 38, scope: !308)
!314 = !DILocalVariable(name: "numBytes", arg: 2, scope: !308, file: !3, line: 100, type: !66)
!315 = !DILocation(line: 100, column: 52, scope: !308)
!316 = !DILocalVariable(name: "i", scope: !308, file: !3, line: 102, type: !66)
!317 = !DILocation(line: 102, column: 12, scope: !308)
!318 = !DILocation(line: 103, column: 12, scope: !319)
!319 = distinct !DILexicalBlock(scope: !308, file: !3, line: 103, column: 5)
!320 = !DILocation(line: 103, column: 10, scope: !319)
!321 = !DILocation(line: 103, column: 17, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !3, line: 103, column: 5)
!323 = !DILocation(line: 103, column: 21, scope: !322)
!324 = !DILocation(line: 103, column: 19, scope: !322)
!325 = !DILocation(line: 103, column: 5, scope: !319)
!326 = !DILocation(line: 105, column: 24, scope: !327)
!327 = distinct !DILexicalBlock(scope: !322, file: !3, line: 104, column: 5)
!328 = !DILocation(line: 105, column: 30, scope: !327)
!329 = !DILocation(line: 105, column: 9, scope: !327)
!330 = !DILocation(line: 106, column: 5, scope: !327)
!331 = !DILocation(line: 103, column: 31, scope: !322)
!332 = !DILocation(line: 103, column: 5, scope: !322)
!333 = distinct !{!333, !325, !334, !335}
!334 = !DILocation(line: 106, column: 5, scope: !319)
!335 = !{!"llvm.loop.mustprogress"}
!336 = !DILocation(line: 107, column: 5, scope: !308)
!337 = !DILocation(line: 108, column: 1, scope: !308)
!338 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !339, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!339 = !DISubroutineType(types: !340)
!340 = !{!66, !311, !66, !42}
!341 = !DILocalVariable(name: "bytes", arg: 1, scope: !338, file: !3, line: 113, type: !311)
!342 = !DILocation(line: 113, column: 39, scope: !338)
!343 = !DILocalVariable(name: "numBytes", arg: 2, scope: !338, file: !3, line: 113, type: !66)
!344 = !DILocation(line: 113, column: 53, scope: !338)
!345 = !DILocalVariable(name: "hex", arg: 3, scope: !338, file: !3, line: 113, type: !42)
!346 = !DILocation(line: 113, column: 71, scope: !338)
!347 = !DILocalVariable(name: "numWritten", scope: !338, file: !3, line: 115, type: !66)
!348 = !DILocation(line: 115, column: 12, scope: !338)
!349 = !DILocation(line: 121, column: 5, scope: !338)
!350 = !DILocation(line: 121, column: 12, scope: !338)
!351 = !DILocation(line: 121, column: 25, scope: !338)
!352 = !DILocation(line: 121, column: 23, scope: !338)
!353 = !DILocation(line: 121, column: 34, scope: !338)
!354 = !DILocation(line: 121, column: 37, scope: !338)
!355 = !DILocation(line: 121, column: 67, scope: !338)
!356 = !DILocation(line: 121, column: 70, scope: !338)
!357 = !DILocation(line: 0, scope: !338)
!358 = !DILocalVariable(name: "byte", scope: !359, file: !3, line: 123, type: !23)
!359 = distinct !DILexicalBlock(scope: !338, file: !3, line: 122, column: 5)
!360 = !DILocation(line: 123, column: 13, scope: !359)
!361 = !DILocation(line: 124, column: 17, scope: !359)
!362 = !DILocation(line: 124, column: 25, scope: !359)
!363 = !DILocation(line: 124, column: 23, scope: !359)
!364 = !DILocation(line: 124, column: 9, scope: !359)
!365 = !DILocation(line: 125, column: 45, scope: !359)
!366 = !DILocation(line: 125, column: 29, scope: !359)
!367 = !DILocation(line: 125, column: 9, scope: !359)
!368 = !DILocation(line: 125, column: 15, scope: !359)
!369 = !DILocation(line: 125, column: 27, scope: !359)
!370 = !DILocation(line: 126, column: 9, scope: !359)
!371 = distinct !{!371, !349, !372, !335}
!372 = !DILocation(line: 127, column: 5, scope: !338)
!373 = !DILocation(line: 129, column: 12, scope: !338)
!374 = !DILocation(line: 129, column: 5, scope: !338)
!375 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !376, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!376 = !DISubroutineType(types: !377)
!377 = !{!66, !311, !66, !171}
!378 = !DILocalVariable(name: "bytes", arg: 1, scope: !375, file: !3, line: 135, type: !311)
!379 = !DILocation(line: 135, column: 41, scope: !375)
!380 = !DILocalVariable(name: "numBytes", arg: 2, scope: !375, file: !3, line: 135, type: !66)
!381 = !DILocation(line: 135, column: 55, scope: !375)
!382 = !DILocalVariable(name: "hex", arg: 3, scope: !375, file: !3, line: 135, type: !171)
!383 = !DILocation(line: 135, column: 76, scope: !375)
!384 = !DILocalVariable(name: "numWritten", scope: !375, file: !3, line: 137, type: !66)
!385 = !DILocation(line: 137, column: 12, scope: !375)
!386 = !DILocation(line: 143, column: 5, scope: !375)
!387 = !DILocation(line: 143, column: 12, scope: !375)
!388 = !DILocation(line: 143, column: 25, scope: !375)
!389 = !DILocation(line: 143, column: 23, scope: !375)
!390 = !DILocation(line: 143, column: 34, scope: !375)
!391 = !DILocation(line: 143, column: 47, scope: !375)
!392 = !DILocation(line: 143, column: 55, scope: !375)
!393 = !DILocation(line: 143, column: 53, scope: !375)
!394 = !DILocation(line: 143, column: 37, scope: !375)
!395 = !DILocation(line: 143, column: 68, scope: !375)
!396 = !DILocation(line: 143, column: 81, scope: !375)
!397 = !DILocation(line: 143, column: 89, scope: !375)
!398 = !DILocation(line: 143, column: 87, scope: !375)
!399 = !DILocation(line: 143, column: 100, scope: !375)
!400 = !DILocation(line: 143, column: 71, scope: !375)
!401 = !DILocation(line: 0, scope: !375)
!402 = !DILocalVariable(name: "byte", scope: !403, file: !3, line: 145, type: !23)
!403 = distinct !DILexicalBlock(scope: !375, file: !3, line: 144, column: 5)
!404 = !DILocation(line: 145, column: 13, scope: !403)
!405 = !DILocation(line: 146, column: 18, scope: !403)
!406 = !DILocation(line: 146, column: 26, scope: !403)
!407 = !DILocation(line: 146, column: 24, scope: !403)
!408 = !DILocation(line: 146, column: 9, scope: !403)
!409 = !DILocation(line: 147, column: 45, scope: !403)
!410 = !DILocation(line: 147, column: 29, scope: !403)
!411 = !DILocation(line: 147, column: 9, scope: !403)
!412 = !DILocation(line: 147, column: 15, scope: !403)
!413 = !DILocation(line: 147, column: 27, scope: !403)
!414 = !DILocation(line: 148, column: 9, scope: !403)
!415 = distinct !{!415, !386, !416, !335}
!416 = !DILocation(line: 149, column: 5, scope: !375)
!417 = !DILocation(line: 151, column: 12, scope: !375)
!418 = !DILocation(line: 151, column: 5, scope: !375)
!419 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !420, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!420 = !DISubroutineType(types: !421)
!421 = !{!23}
!422 = !DILocation(line: 158, column: 5, scope: !419)
!423 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !420, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!424 = !DILocation(line: 163, column: 5, scope: !423)
!425 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !420, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!426 = !DILocation(line: 168, column: 13, scope: !425)
!427 = !DILocation(line: 168, column: 20, scope: !425)
!428 = !DILocation(line: 168, column: 5, scope: !425)
!429 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!430 = !DILocation(line: 187, column: 16, scope: !429)
!431 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!432 = !DILocation(line: 188, column: 16, scope: !431)
!433 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!434 = !DILocation(line: 189, column: 16, scope: !433)
!435 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!436 = !DILocation(line: 190, column: 16, scope: !435)
!437 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!438 = !DILocation(line: 191, column: 16, scope: !437)
!439 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!440 = !DILocation(line: 192, column: 16, scope: !439)
!441 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!442 = !DILocation(line: 193, column: 16, scope: !441)
!443 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!444 = !DILocation(line: 194, column: 16, scope: !443)
!445 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!446 = !DILocation(line: 195, column: 16, scope: !445)
!447 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!448 = !DILocation(line: 198, column: 15, scope: !447)
!449 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!450 = !DILocation(line: 199, column: 15, scope: !449)
!451 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!452 = !DILocation(line: 200, column: 15, scope: !451)
!453 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!454 = !DILocation(line: 201, column: 15, scope: !453)
!455 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!456 = !DILocation(line: 202, column: 15, scope: !455)
!457 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!458 = !DILocation(line: 203, column: 15, scope: !457)
!459 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!460 = !DILocation(line: 204, column: 15, scope: !459)
!461 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!462 = !DILocation(line: 205, column: 15, scope: !461)
!463 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!464 = !DILocation(line: 206, column: 15, scope: !463)
