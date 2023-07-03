; ModuleID = 'io.c'
source_filename = "io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
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
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !48 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !52, metadata !DIExpression()), !dbg !53
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !54
  %0 = load i8*, i8** %line.addr, align 8, !dbg !55
  %cmp = icmp ne i8* %0, null, !dbg !57
  br i1 %cmp, label %if.then, label %if.end, !dbg !58

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !59
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !61
  br label %if.end, !dbg !62

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !63
  ret void, !dbg !64
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !65 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !66, metadata !DIExpression()), !dbg !67
  %0 = load i8*, i8** %line.addr, align 8, !dbg !68
  %cmp = icmp ne i8* %0, null, !dbg !70
  br i1 %cmp, label %if.then, label %if.end, !dbg !71

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !72
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !74
  br label %if.end, !dbg !75

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !76
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !77 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !83, metadata !DIExpression()), !dbg !84
  %0 = load i32*, i32** %line.addr, align 8, !dbg !85
  %cmp = icmp ne i32* %0, null, !dbg !87
  br i1 %cmp, label %if.then, label %if.end, !dbg !88

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !89
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !91
  br label %if.end, !dbg !92

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !93
}

declare dso_local i32 @wprintf(i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !94 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !97, metadata !DIExpression()), !dbg !98
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !99
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !100
  ret void, !dbg !101
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !102 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !106, metadata !DIExpression()), !dbg !107
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !108
  %conv = sext i16 %0 to i32, !dbg !108
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !109
  ret void, !dbg !110
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !111 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !115, metadata !DIExpression()), !dbg !116
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !117
  %conv = fpext float %0 to double, !dbg !117
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !118
  ret void, !dbg !119
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !120 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !124, metadata !DIExpression()), !dbg !125
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !126
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !127
  ret void, !dbg !128
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !129 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !136, metadata !DIExpression()), !dbg !137
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !138
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !139
  ret void, !dbg !140
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !141 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !146, metadata !DIExpression()), !dbg !147
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !148
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !149
  ret void, !dbg !150
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !151 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !154, metadata !DIExpression()), !dbg !155
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !156
  %conv = sext i8 %0 to i32, !dbg !156
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !157
  ret void, !dbg !158
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !159 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !164, metadata !DIExpression()), !dbg !168
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !169
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !170
  store i32 %0, i32* %arrayidx, align 4, !dbg !171
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !172
  store i32 0, i32* %arrayidx1, align 4, !dbg !173
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !174
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !175
  ret void, !dbg !176
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !177 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !180, metadata !DIExpression()), !dbg !181
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !182
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !183
  ret void, !dbg !184
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !185 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !188, metadata !DIExpression()), !dbg !189
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !190
  %conv = zext i8 %0 to i32, !dbg !190
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !191
  ret void, !dbg !192
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !193 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !197, metadata !DIExpression()), !dbg !198
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !199
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !200
  ret void, !dbg !201
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !202 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !212, metadata !DIExpression()), !dbg !213
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !214
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !215
  %1 = load i32, i32* %intOne, align 4, !dbg !215
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !216
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !217
  %3 = load i32, i32* %intTwo, align 4, !dbg !217
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !218
  ret void, !dbg !219
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !220 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !224, metadata !DIExpression()), !dbg !225
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.declare(metadata i64* %i, metadata !228, metadata !DIExpression()), !dbg !229
  store i64 0, i64* %i, align 8, !dbg !230
  br label %for.cond, !dbg !232

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !233
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !235
  %cmp = icmp ult i64 %0, %1, !dbg !236
  br i1 %cmp, label %for.body, label %for.end, !dbg !237

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !238
  %3 = load i64, i64* %i, align 8, !dbg !240
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !238
  %4 = load i8, i8* %arrayidx, align 1, !dbg !238
  %conv = zext i8 %4 to i32, !dbg !238
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !241
  br label %for.inc, !dbg !242

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !243
  %inc = add i64 %5, 1, !dbg !243
  store i64 %inc, i64* %i, align 8, !dbg !243
  br label %for.cond, !dbg !244, !llvm.loop !245

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !248
  ret void, !dbg !249
}

declare dso_local i32 @puts(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !250 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !253, metadata !DIExpression()), !dbg !254
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !255, metadata !DIExpression()), !dbg !256
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !259, metadata !DIExpression()), !dbg !260
  store i64 0, i64* %numWritten, align 8, !dbg !260
  br label %while.cond, !dbg !261

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !262
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !263
  %cmp = icmp ult i64 %0, %1, !dbg !264
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !265

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #5, !dbg !266
  %2 = load i16*, i16** %call, align 8, !dbg !266
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !266
  %4 = load i64, i64* %numWritten, align 8, !dbg !266
  %mul = mul i64 2, %4, !dbg !266
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !266
  %5 = load i8, i8* %arrayidx, align 1, !dbg !266
  %conv = sext i8 %5 to i32, !dbg !266
  %idxprom = sext i32 %conv to i64, !dbg !266
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !266
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !266
  %conv2 = zext i16 %6 to i32, !dbg !266
  %and = and i32 %conv2, 4096, !dbg !266
  %tobool = icmp ne i32 %and, 0, !dbg !266
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !267

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #5, !dbg !268
  %7 = load i16*, i16** %call3, align 8, !dbg !268
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !268
  %9 = load i64, i64* %numWritten, align 8, !dbg !268
  %mul4 = mul i64 2, %9, !dbg !268
  %add = add i64 %mul4, 1, !dbg !268
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !268
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !268
  %conv6 = sext i8 %10 to i32, !dbg !268
  %idxprom7 = sext i32 %conv6 to i64, !dbg !268
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !268
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !268
  %conv9 = zext i16 %11 to i32, !dbg !268
  %and10 = and i32 %conv9, 4096, !dbg !268
  %tobool11 = icmp ne i32 %and10, 0, !dbg !267
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !269
  br i1 %12, label %while.body, label %while.end, !dbg !261

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !270, metadata !DIExpression()), !dbg !272
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !273
  %14 = load i64, i64* %numWritten, align 8, !dbg !274
  %mul12 = mul i64 2, %14, !dbg !275
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !273
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #6, !dbg !276
  %15 = load i32, i32* %byte, align 4, !dbg !277
  %conv15 = trunc i32 %15 to i8, !dbg !278
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !279
  %17 = load i64, i64* %numWritten, align 8, !dbg !280
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !279
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !281
  %18 = load i64, i64* %numWritten, align 8, !dbg !282
  %inc = add i64 %18, 1, !dbg !282
  store i64 %inc, i64* %numWritten, align 8, !dbg !282
  br label %while.cond, !dbg !261, !llvm.loop !283

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !285
  ret i64 %19, !dbg !286
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !287 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !290, metadata !DIExpression()), !dbg !291
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !292, metadata !DIExpression()), !dbg !293
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !294, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !296, metadata !DIExpression()), !dbg !297
  store i64 0, i64* %numWritten, align 8, !dbg !297
  br label %while.cond, !dbg !298

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !299
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !300
  %cmp = icmp ult i64 %0, %1, !dbg !301
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !302

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !303
  %3 = load i64, i64* %numWritten, align 8, !dbg !304
  %mul = mul i64 2, %3, !dbg !305
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !303
  %4 = load i32, i32* %arrayidx, align 4, !dbg !303
  %call = call i32 @iswxdigit(i32 %4) #6, !dbg !306
  %tobool = icmp ne i32 %call, 0, !dbg !306
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !307

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !308
  %6 = load i64, i64* %numWritten, align 8, !dbg !309
  %mul1 = mul i64 2, %6, !dbg !310
  %add = add i64 %mul1, 1, !dbg !311
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !308
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !308
  %call3 = call i32 @iswxdigit(i32 %7) #6, !dbg !312
  %tobool4 = icmp ne i32 %call3, 0, !dbg !307
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !313
  br i1 %8, label %while.body, label %while.end, !dbg !298

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !314, metadata !DIExpression()), !dbg !316
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !317
  %10 = load i64, i64* %numWritten, align 8, !dbg !318
  %mul5 = mul i64 2, %10, !dbg !319
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !317
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #6, !dbg !320
  %11 = load i32, i32* %byte, align 4, !dbg !321
  %conv = trunc i32 %11 to i8, !dbg !322
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !323
  %13 = load i64, i64* %numWritten, align 8, !dbg !324
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !323
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !325
  %14 = load i64, i64* %numWritten, align 8, !dbg !326
  %inc = add i64 %14, 1, !dbg !326
  store i64 %inc, i64* %numWritten, align 8, !dbg !326
  br label %while.cond, !dbg !298, !llvm.loop !327

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !329
  ret i64 %15, !dbg !330
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !331 {
entry:
  ret i32 1, !dbg !334
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !335 {
entry:
  ret i32 0, !dbg !336
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !337 {
entry:
  %call = call i32 @rand() #6, !dbg !338
  %rem = srem i32 %call, 2, !dbg !339
  ret i32 %rem, !dbg !340
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !341 {
entry:
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !345 {
entry:
  ret void, !dbg !346
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !347 {
entry:
  ret void, !dbg !348
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !349 {
entry:
  ret void, !dbg !350
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !351 {
entry:
  ret void, !dbg !352
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !353 {
entry:
  ret void, !dbg !354
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !355 {
entry:
  ret void, !dbg !356
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !357 {
entry:
  ret void, !dbg !358
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !359 {
entry:
  ret void, !dbg !360
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !361 {
entry:
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !363 {
entry:
  ret void, !dbg !364
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !365 {
entry:
  ret void, !dbg !366
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !367 {
entry:
  ret void, !dbg !368
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !369 {
entry:
  ret void, !dbg !370
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !371 {
entry:
  ret void, !dbg !372
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !373 {
entry:
  ret void, !dbg !374
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !375 {
entry:
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !377 {
entry:
  ret void, !dbg !378
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!44, !45, !46}
!llvm.ident = !{!47}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_725/source_code")
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
!44 = !{i32 7, !"Dwarf Version", i32 4}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"wchar_size", i32 4}
!47 = !{!"clang version 12.0.0"}
!48 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !49, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !42}
!51 = !{}
!52 = !DILocalVariable(name: "line", arg: 1, scope: !48, file: !3, line: 11, type: !42)
!53 = !DILocation(line: 11, column: 25, scope: !48)
!54 = !DILocation(line: 13, column: 1, scope: !48)
!55 = !DILocation(line: 14, column: 8, scope: !56)
!56 = distinct !DILexicalBlock(scope: !48, file: !3, line: 14, column: 8)
!57 = !DILocation(line: 14, column: 13, scope: !56)
!58 = !DILocation(line: 14, column: 8, scope: !48)
!59 = !DILocation(line: 16, column: 24, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !3, line: 15, column: 5)
!61 = !DILocation(line: 16, column: 9, scope: !60)
!62 = !DILocation(line: 17, column: 5, scope: !60)
!63 = !DILocation(line: 18, column: 5, scope: !48)
!64 = !DILocation(line: 19, column: 1, scope: !48)
!65 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !49, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!66 = !DILocalVariable(name: "line", arg: 1, scope: !65, file: !3, line: 20, type: !42)
!67 = !DILocation(line: 20, column: 29, scope: !65)
!68 = !DILocation(line: 22, column: 8, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !3, line: 22, column: 8)
!70 = !DILocation(line: 22, column: 13, scope: !69)
!71 = !DILocation(line: 22, column: 8, scope: !65)
!72 = !DILocation(line: 24, column: 24, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !3, line: 23, column: 5)
!74 = !DILocation(line: 24, column: 9, scope: !73)
!75 = !DILocation(line: 25, column: 5, scope: !73)
!76 = !DILocation(line: 26, column: 1, scope: !65)
!77 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !78, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !82, line: 74, baseType: !23)
!82 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!83 = !DILocalVariable(name: "line", arg: 1, scope: !77, file: !3, line: 27, type: !80)
!84 = !DILocation(line: 27, column: 29, scope: !77)
!85 = !DILocation(line: 29, column: 8, scope: !86)
!86 = distinct !DILexicalBlock(scope: !77, file: !3, line: 29, column: 8)
!87 = !DILocation(line: 29, column: 13, scope: !86)
!88 = !DILocation(line: 29, column: 8, scope: !77)
!89 = !DILocation(line: 31, column: 27, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !3, line: 30, column: 5)
!91 = !DILocation(line: 31, column: 9, scope: !90)
!92 = !DILocation(line: 32, column: 5, scope: !90)
!93 = !DILocation(line: 33, column: 1, scope: !77)
!94 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !95, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !23}
!97 = !DILocalVariable(name: "intNumber", arg: 1, scope: !94, file: !3, line: 35, type: !23)
!98 = !DILocation(line: 35, column: 24, scope: !94)
!99 = !DILocation(line: 37, column: 20, scope: !94)
!100 = !DILocation(line: 37, column: 5, scope: !94)
!101 = !DILocation(line: 38, column: 1, scope: !94)
!102 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !103, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !105}
!105 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!106 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !102, file: !3, line: 40, type: !105)
!107 = !DILocation(line: 40, column: 28, scope: !102)
!108 = !DILocation(line: 42, column: 21, scope: !102)
!109 = !DILocation(line: 42, column: 5, scope: !102)
!110 = !DILocation(line: 43, column: 1, scope: !102)
!111 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !112, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !114}
!114 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!115 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !111, file: !3, line: 45, type: !114)
!116 = !DILocation(line: 45, column: 28, scope: !111)
!117 = !DILocation(line: 47, column: 20, scope: !111)
!118 = !DILocation(line: 47, column: 5, scope: !111)
!119 = !DILocation(line: 48, column: 1, scope: !111)
!120 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !121, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !123}
!123 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!124 = !DILocalVariable(name: "longNumber", arg: 1, scope: !120, file: !3, line: 50, type: !123)
!125 = !DILocation(line: 50, column: 26, scope: !120)
!126 = !DILocation(line: 52, column: 21, scope: !120)
!127 = !DILocation(line: 52, column: 5, scope: !120)
!128 = !DILocation(line: 53, column: 1, scope: !120)
!129 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !130, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !132}
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !133, line: 27, baseType: !134)
!133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !135, line: 44, baseType: !123)
!135 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!136 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !129, file: !3, line: 55, type: !132)
!137 = !DILocation(line: 55, column: 33, scope: !129)
!138 = !DILocation(line: 57, column: 29, scope: !129)
!139 = !DILocation(line: 57, column: 5, scope: !129)
!140 = !DILocation(line: 58, column: 1, scope: !129)
!141 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !142, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !144}
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !82, line: 46, baseType: !145)
!145 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!146 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !141, file: !3, line: 60, type: !144)
!147 = !DILocation(line: 60, column: 29, scope: !141)
!148 = !DILocation(line: 62, column: 21, scope: !141)
!149 = !DILocation(line: 62, column: 5, scope: !141)
!150 = !DILocation(line: 63, column: 1, scope: !141)
!151 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !152, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !43}
!154 = !DILocalVariable(name: "charHex", arg: 1, scope: !151, file: !3, line: 65, type: !43)
!155 = !DILocation(line: 65, column: 29, scope: !151)
!156 = !DILocation(line: 67, column: 22, scope: !151)
!157 = !DILocation(line: 67, column: 5, scope: !151)
!158 = !DILocation(line: 68, column: 1, scope: !151)
!159 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !160, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !81}
!162 = !DILocalVariable(name: "wideChar", arg: 1, scope: !159, file: !3, line: 70, type: !81)
!163 = !DILocation(line: 70, column: 29, scope: !159)
!164 = !DILocalVariable(name: "s", scope: !159, file: !3, line: 74, type: !165)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 2)
!168 = !DILocation(line: 74, column: 13, scope: !159)
!169 = !DILocation(line: 75, column: 16, scope: !159)
!170 = !DILocation(line: 75, column: 9, scope: !159)
!171 = !DILocation(line: 75, column: 14, scope: !159)
!172 = !DILocation(line: 76, column: 9, scope: !159)
!173 = !DILocation(line: 76, column: 14, scope: !159)
!174 = !DILocation(line: 77, column: 21, scope: !159)
!175 = !DILocation(line: 77, column: 5, scope: !159)
!176 = !DILocation(line: 78, column: 1, scope: !159)
!177 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !178, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !7}
!180 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !177, file: !3, line: 80, type: !7)
!181 = !DILocation(line: 80, column: 33, scope: !177)
!182 = !DILocation(line: 82, column: 20, scope: !177)
!183 = !DILocation(line: 82, column: 5, scope: !177)
!184 = !DILocation(line: 83, column: 1, scope: !177)
!185 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !186, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !25}
!188 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !185, file: !3, line: 85, type: !25)
!189 = !DILocation(line: 85, column: 45, scope: !185)
!190 = !DILocation(line: 87, column: 22, scope: !185)
!191 = !DILocation(line: 87, column: 5, scope: !185)
!192 = !DILocation(line: 88, column: 1, scope: !185)
!193 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !194, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !196}
!196 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!197 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !193, file: !3, line: 90, type: !196)
!198 = !DILocation(line: 90, column: 29, scope: !193)
!199 = !DILocation(line: 92, column: 20, scope: !193)
!200 = !DILocation(line: 92, column: 5, scope: !193)
!201 = !DILocation(line: 93, column: 1, scope: !193)
!202 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !203, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !207, line: 100, baseType: !208)
!207 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_725/source_code")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !207, line: 96, size: 64, elements: !209)
!209 = !{!210, !211}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !208, file: !207, line: 98, baseType: !23, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !208, file: !207, line: 99, baseType: !23, size: 32, offset: 32)
!212 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !202, file: !3, line: 95, type: !205)
!213 = !DILocation(line: 95, column: 40, scope: !202)
!214 = !DILocation(line: 97, column: 26, scope: !202)
!215 = !DILocation(line: 97, column: 47, scope: !202)
!216 = !DILocation(line: 97, column: 55, scope: !202)
!217 = !DILocation(line: 97, column: 76, scope: !202)
!218 = !DILocation(line: 97, column: 5, scope: !202)
!219 = !DILocation(line: 98, column: 1, scope: !202)
!220 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !221, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !223, !144}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!224 = !DILocalVariable(name: "bytes", arg: 1, scope: !220, file: !3, line: 100, type: !223)
!225 = !DILocation(line: 100, column: 38, scope: !220)
!226 = !DILocalVariable(name: "numBytes", arg: 2, scope: !220, file: !3, line: 100, type: !144)
!227 = !DILocation(line: 100, column: 52, scope: !220)
!228 = !DILocalVariable(name: "i", scope: !220, file: !3, line: 102, type: !144)
!229 = !DILocation(line: 102, column: 12, scope: !220)
!230 = !DILocation(line: 103, column: 12, scope: !231)
!231 = distinct !DILexicalBlock(scope: !220, file: !3, line: 103, column: 5)
!232 = !DILocation(line: 103, column: 10, scope: !231)
!233 = !DILocation(line: 103, column: 17, scope: !234)
!234 = distinct !DILexicalBlock(scope: !231, file: !3, line: 103, column: 5)
!235 = !DILocation(line: 103, column: 21, scope: !234)
!236 = !DILocation(line: 103, column: 19, scope: !234)
!237 = !DILocation(line: 103, column: 5, scope: !231)
!238 = !DILocation(line: 105, column: 24, scope: !239)
!239 = distinct !DILexicalBlock(scope: !234, file: !3, line: 104, column: 5)
!240 = !DILocation(line: 105, column: 30, scope: !239)
!241 = !DILocation(line: 105, column: 9, scope: !239)
!242 = !DILocation(line: 106, column: 5, scope: !239)
!243 = !DILocation(line: 103, column: 31, scope: !234)
!244 = !DILocation(line: 103, column: 5, scope: !234)
!245 = distinct !{!245, !237, !246, !247}
!246 = !DILocation(line: 106, column: 5, scope: !231)
!247 = !{!"llvm.loop.mustprogress"}
!248 = !DILocation(line: 107, column: 5, scope: !220)
!249 = !DILocation(line: 108, column: 1, scope: !220)
!250 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !251, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!251 = !DISubroutineType(types: !252)
!252 = !{!144, !223, !144, !42}
!253 = !DILocalVariable(name: "bytes", arg: 1, scope: !250, file: !3, line: 113, type: !223)
!254 = !DILocation(line: 113, column: 39, scope: !250)
!255 = !DILocalVariable(name: "numBytes", arg: 2, scope: !250, file: !3, line: 113, type: !144)
!256 = !DILocation(line: 113, column: 53, scope: !250)
!257 = !DILocalVariable(name: "hex", arg: 3, scope: !250, file: !3, line: 113, type: !42)
!258 = !DILocation(line: 113, column: 71, scope: !250)
!259 = !DILocalVariable(name: "numWritten", scope: !250, file: !3, line: 115, type: !144)
!260 = !DILocation(line: 115, column: 12, scope: !250)
!261 = !DILocation(line: 121, column: 5, scope: !250)
!262 = !DILocation(line: 121, column: 12, scope: !250)
!263 = !DILocation(line: 121, column: 25, scope: !250)
!264 = !DILocation(line: 121, column: 23, scope: !250)
!265 = !DILocation(line: 121, column: 34, scope: !250)
!266 = !DILocation(line: 121, column: 37, scope: !250)
!267 = !DILocation(line: 121, column: 67, scope: !250)
!268 = !DILocation(line: 121, column: 70, scope: !250)
!269 = !DILocation(line: 0, scope: !250)
!270 = !DILocalVariable(name: "byte", scope: !271, file: !3, line: 123, type: !23)
!271 = distinct !DILexicalBlock(scope: !250, file: !3, line: 122, column: 5)
!272 = !DILocation(line: 123, column: 13, scope: !271)
!273 = !DILocation(line: 124, column: 17, scope: !271)
!274 = !DILocation(line: 124, column: 25, scope: !271)
!275 = !DILocation(line: 124, column: 23, scope: !271)
!276 = !DILocation(line: 124, column: 9, scope: !271)
!277 = !DILocation(line: 125, column: 45, scope: !271)
!278 = !DILocation(line: 125, column: 29, scope: !271)
!279 = !DILocation(line: 125, column: 9, scope: !271)
!280 = !DILocation(line: 125, column: 15, scope: !271)
!281 = !DILocation(line: 125, column: 27, scope: !271)
!282 = !DILocation(line: 126, column: 9, scope: !271)
!283 = distinct !{!283, !261, !284, !247}
!284 = !DILocation(line: 127, column: 5, scope: !250)
!285 = !DILocation(line: 129, column: 12, scope: !250)
!286 = !DILocation(line: 129, column: 5, scope: !250)
!287 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !288, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!288 = !DISubroutineType(types: !289)
!289 = !{!144, !223, !144, !80}
!290 = !DILocalVariable(name: "bytes", arg: 1, scope: !287, file: !3, line: 135, type: !223)
!291 = !DILocation(line: 135, column: 41, scope: !287)
!292 = !DILocalVariable(name: "numBytes", arg: 2, scope: !287, file: !3, line: 135, type: !144)
!293 = !DILocation(line: 135, column: 55, scope: !287)
!294 = !DILocalVariable(name: "hex", arg: 3, scope: !287, file: !3, line: 135, type: !80)
!295 = !DILocation(line: 135, column: 76, scope: !287)
!296 = !DILocalVariable(name: "numWritten", scope: !287, file: !3, line: 137, type: !144)
!297 = !DILocation(line: 137, column: 12, scope: !287)
!298 = !DILocation(line: 143, column: 5, scope: !287)
!299 = !DILocation(line: 143, column: 12, scope: !287)
!300 = !DILocation(line: 143, column: 25, scope: !287)
!301 = !DILocation(line: 143, column: 23, scope: !287)
!302 = !DILocation(line: 143, column: 34, scope: !287)
!303 = !DILocation(line: 143, column: 47, scope: !287)
!304 = !DILocation(line: 143, column: 55, scope: !287)
!305 = !DILocation(line: 143, column: 53, scope: !287)
!306 = !DILocation(line: 143, column: 37, scope: !287)
!307 = !DILocation(line: 143, column: 68, scope: !287)
!308 = !DILocation(line: 143, column: 81, scope: !287)
!309 = !DILocation(line: 143, column: 89, scope: !287)
!310 = !DILocation(line: 143, column: 87, scope: !287)
!311 = !DILocation(line: 143, column: 100, scope: !287)
!312 = !DILocation(line: 143, column: 71, scope: !287)
!313 = !DILocation(line: 0, scope: !287)
!314 = !DILocalVariable(name: "byte", scope: !315, file: !3, line: 145, type: !23)
!315 = distinct !DILexicalBlock(scope: !287, file: !3, line: 144, column: 5)
!316 = !DILocation(line: 145, column: 13, scope: !315)
!317 = !DILocation(line: 146, column: 18, scope: !315)
!318 = !DILocation(line: 146, column: 26, scope: !315)
!319 = !DILocation(line: 146, column: 24, scope: !315)
!320 = !DILocation(line: 146, column: 9, scope: !315)
!321 = !DILocation(line: 147, column: 45, scope: !315)
!322 = !DILocation(line: 147, column: 29, scope: !315)
!323 = !DILocation(line: 147, column: 9, scope: !315)
!324 = !DILocation(line: 147, column: 15, scope: !315)
!325 = !DILocation(line: 147, column: 27, scope: !315)
!326 = !DILocation(line: 148, column: 9, scope: !315)
!327 = distinct !{!327, !298, !328, !247}
!328 = !DILocation(line: 149, column: 5, scope: !287)
!329 = !DILocation(line: 151, column: 12, scope: !287)
!330 = !DILocation(line: 151, column: 5, scope: !287)
!331 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !332, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!332 = !DISubroutineType(types: !333)
!333 = !{!23}
!334 = !DILocation(line: 158, column: 5, scope: !331)
!335 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !332, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!336 = !DILocation(line: 163, column: 5, scope: !335)
!337 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !332, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!338 = !DILocation(line: 168, column: 13, scope: !337)
!339 = !DILocation(line: 168, column: 20, scope: !337)
!340 = !DILocation(line: 168, column: 5, scope: !337)
!341 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !342, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!342 = !DISubroutineType(types: !343)
!343 = !{null}
!344 = !DILocation(line: 187, column: 16, scope: !341)
!345 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !342, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!346 = !DILocation(line: 188, column: 16, scope: !345)
!347 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !342, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!348 = !DILocation(line: 189, column: 16, scope: !347)
!349 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !342, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!350 = !DILocation(line: 190, column: 16, scope: !349)
!351 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !342, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!352 = !DILocation(line: 191, column: 16, scope: !351)
!353 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !342, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!354 = !DILocation(line: 192, column: 16, scope: !353)
!355 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !342, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!356 = !DILocation(line: 193, column: 16, scope: !355)
!357 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !342, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!358 = !DILocation(line: 194, column: 16, scope: !357)
!359 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !342, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!360 = !DILocation(line: 195, column: 16, scope: !359)
!361 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !342, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!362 = !DILocation(line: 198, column: 15, scope: !361)
!363 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !342, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!364 = !DILocation(line: 199, column: 15, scope: !363)
!365 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !342, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!366 = !DILocation(line: 200, column: 15, scope: !365)
!367 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !342, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!368 = !DILocation(line: 201, column: 15, scope: !367)
!369 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !342, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!370 = !DILocation(line: 202, column: 15, scope: !369)
!371 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !342, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!372 = !DILocation(line: 203, column: 15, scope: !371)
!373 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !342, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!374 = !DILocation(line: 204, column: 15, scope: !373)
!375 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !342, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!376 = !DILocation(line: 205, column: 15, scope: !375)
!377 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !342, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !51)
!378 = !DILocation(line: 206, column: 15, scope: !377)
