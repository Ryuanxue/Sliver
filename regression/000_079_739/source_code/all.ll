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
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad() #0 !dbg !52 {
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
  br label %source, !dbg !64

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !65), !dbg !66
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !72
  %1 = load i8*, i8** %data, align 8, !dbg !73
  %call = call i64 @strlen(i8* %1) #7, !dbg !74
  store i64 %call, i64* %dataLen, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !75, metadata !DIExpression()), !dbg !76
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !77
  store i8* %call1, i8** %environment, align 8, !dbg !76
  %2 = load i8*, i8** %environment, align 8, !dbg !78
  %cmp = icmp ne i8* %2, null, !dbg !80
  br i1 %cmp, label %if.then, label %if.end, !dbg !81

if.then:                                          ; preds = %source
  %3 = load i8*, i8** %data, align 8, !dbg !82
  %4 = load i64, i64* %dataLen, align 8, !dbg !84
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !85
  %5 = load i8*, i8** %environment, align 8, !dbg !86
  %6 = load i64, i64* %dataLen, align 8, !dbg !87
  %sub = sub i64 100, %6, !dbg !88
  %sub2 = sub i64 %sub, 1, !dbg !89
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !90
  br label %if.end, !dbg !91

if.end:                                           ; preds = %if.then, %source
  br label %sink, !dbg !92

sink:                                             ; preds = %if.end
  call void @llvm.dbg.label(metadata !93), !dbg !94
  %7 = load i8*, i8** %data, align 8, !dbg !95
  %call4 = call i32 (i8*, ...) @printf(i8* %7), !dbg !96
  ret void, !dbg !97
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #4

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !98 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !101, metadata !DIExpression()), !dbg !102
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !102
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !102
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !103
  store i8* %arraydecay, i8** %data, align 8, !dbg !104
  br label %source, !dbg !105

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !106), !dbg !107
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !108, metadata !DIExpression()), !dbg !110
  %1 = load i8*, i8** %data, align 8, !dbg !111
  %call = call i64 @strlen(i8* %1) #7, !dbg !112
  store i64 %call, i64* %dataLen, align 8, !dbg !110
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !113, metadata !DIExpression()), !dbg !114
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !115
  store i8* %call1, i8** %environment, align 8, !dbg !114
  %2 = load i8*, i8** %environment, align 8, !dbg !116
  %cmp = icmp ne i8* %2, null, !dbg !118
  br i1 %cmp, label %if.then, label %if.end, !dbg !119

if.then:                                          ; preds = %source
  %3 = load i8*, i8** %data, align 8, !dbg !120
  %4 = load i64, i64* %dataLen, align 8, !dbg !122
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !123
  %5 = load i8*, i8** %environment, align 8, !dbg !124
  %6 = load i64, i64* %dataLen, align 8, !dbg !125
  %sub = sub i64 100, %6, !dbg !126
  %sub2 = sub i64 %sub, 1, !dbg !127
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !128
  br label %if.end, !dbg !129

if.end:                                           ; preds = %if.then, %source
  br label %sink, !dbg !130

sink:                                             ; preds = %if.end
  call void @llvm.dbg.label(metadata !131), !dbg !132
  %7 = load i8*, i8** %data, align 8, !dbg !133
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %7), !dbg !134
  ret void, !dbg !135
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !136 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !139, metadata !DIExpression()), !dbg !140
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !140
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !140
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !141
  store i8* %arraydecay, i8** %data, align 8, !dbg !142
  br label %source, !dbg !143

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !144), !dbg !145
  %1 = load i8*, i8** %data, align 8, !dbg !146
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !147
  br label %sink, !dbg !148

sink:                                             ; preds = %source
  call void @llvm.dbg.label(metadata !149), !dbg !150
  %2 = load i8*, i8** %data, align 8, !dbg !151
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !152
  ret void, !dbg !153
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_18_good() #0 !dbg !154 {
entry:
  call void @goodB2G(), !dbg !155
  call void @goodG2B(), !dbg !156
  ret void, !dbg !157
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !158 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !161, metadata !DIExpression()), !dbg !162
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !163
  %0 = load i8*, i8** %line.addr, align 8, !dbg !164
  %cmp = icmp ne i8* %0, null, !dbg !166
  br i1 %cmp, label %if.then, label %if.end, !dbg !167

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !168
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !170
  br label %if.end, !dbg !171

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !172
  ret void, !dbg !173
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !174 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !175, metadata !DIExpression()), !dbg !176
  %0 = load i8*, i8** %line.addr, align 8, !dbg !177
  %cmp = icmp ne i8* %0, null, !dbg !179
  br i1 %cmp, label %if.then, label %if.end, !dbg !180

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !181
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !183
  br label %if.end, !dbg !184

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !185
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !186 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !191, metadata !DIExpression()), !dbg !192
  %0 = load i32*, i32** %line.addr, align 8, !dbg !193
  %cmp = icmp ne i32* %0, null, !dbg !195
  br i1 %cmp, label %if.then, label %if.end, !dbg !196

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !197
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !199
  br label %if.end, !dbg !200

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !201
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !202 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !205, metadata !DIExpression()), !dbg !206
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !207
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !208
  ret void, !dbg !209
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !210 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !214, metadata !DIExpression()), !dbg !215
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !216
  %conv = sext i16 %0 to i32, !dbg !216
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !217
  ret void, !dbg !218
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !219 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !223, metadata !DIExpression()), !dbg !224
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !225
  %conv = fpext float %0 to double, !dbg !225
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !226
  ret void, !dbg !227
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !228 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !232, metadata !DIExpression()), !dbg !233
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !234
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !235
  ret void, !dbg !236
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !237 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !244, metadata !DIExpression()), !dbg !245
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !246
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !247
  ret void, !dbg !248
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !249 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !252, metadata !DIExpression()), !dbg !253
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !254
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !255
  ret void, !dbg !256
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !257 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !260, metadata !DIExpression()), !dbg !261
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !262
  %conv = sext i8 %0 to i32, !dbg !262
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !263
  ret void, !dbg !264
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !265 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !268, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !270, metadata !DIExpression()), !dbg !274
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !275
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !276
  store i32 %0, i32* %arrayidx, align 4, !dbg !277
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !278
  store i32 0, i32* %arrayidx1, align 4, !dbg !279
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !280
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !281
  ret void, !dbg !282
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !283 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !286, metadata !DIExpression()), !dbg !287
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !288
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !289
  ret void, !dbg !290
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !291 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !294, metadata !DIExpression()), !dbg !295
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !296
  %conv = zext i8 %0 to i32, !dbg !296
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !297
  ret void, !dbg !298
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !299 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !303, metadata !DIExpression()), !dbg !304
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !305
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !306
  ret void, !dbg !307
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !308 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !318, metadata !DIExpression()), !dbg !319
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !320
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !321
  %1 = load i32, i32* %intOne, align 4, !dbg !321
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !322
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !323
  %3 = load i32, i32* %intTwo, align 4, !dbg !323
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !324
  ret void, !dbg !325
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !326 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !330, metadata !DIExpression()), !dbg !331
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !332, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.declare(metadata i64* %i, metadata !334, metadata !DIExpression()), !dbg !335
  store i64 0, i64* %i, align 8, !dbg !336
  br label %for.cond, !dbg !338

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !339
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !341
  %cmp = icmp ult i64 %0, %1, !dbg !342
  br i1 %cmp, label %for.body, label %for.end, !dbg !343

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !344
  %3 = load i64, i64* %i, align 8, !dbg !346
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !344
  %4 = load i8, i8* %arrayidx, align 1, !dbg !344
  %conv = zext i8 %4 to i32, !dbg !344
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !347
  br label %for.inc, !dbg !348

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !349
  %inc = add i64 %5, 1, !dbg !349
  store i64 %inc, i64* %i, align 8, !dbg !349
  br label %for.cond, !dbg !350, !llvm.loop !351

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !354
  ret void, !dbg !355
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !356 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !359, metadata !DIExpression()), !dbg !360
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !361, metadata !DIExpression()), !dbg !362
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !363, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !365, metadata !DIExpression()), !dbg !366
  store i64 0, i64* %numWritten, align 8, !dbg !366
  br label %while.cond, !dbg !367

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !368
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !369
  %cmp = icmp ult i64 %0, %1, !dbg !370
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !371

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !372
  %2 = load i16*, i16** %call, align 8, !dbg !372
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !372
  %4 = load i64, i64* %numWritten, align 8, !dbg !372
  %mul = mul i64 2, %4, !dbg !372
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !372
  %5 = load i8, i8* %arrayidx, align 1, !dbg !372
  %conv = sext i8 %5 to i32, !dbg !372
  %idxprom = sext i32 %conv to i64, !dbg !372
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !372
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !372
  %conv2 = zext i16 %6 to i32, !dbg !372
  %and = and i32 %conv2, 4096, !dbg !372
  %tobool = icmp ne i32 %and, 0, !dbg !372
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !373

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !374
  %7 = load i16*, i16** %call3, align 8, !dbg !374
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !374
  %9 = load i64, i64* %numWritten, align 8, !dbg !374
  %mul4 = mul i64 2, %9, !dbg !374
  %add = add i64 %mul4, 1, !dbg !374
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !374
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !374
  %conv6 = sext i8 %10 to i32, !dbg !374
  %idxprom7 = sext i32 %conv6 to i64, !dbg !374
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !374
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !374
  %conv9 = zext i16 %11 to i32, !dbg !374
  %and10 = and i32 %conv9, 4096, !dbg !374
  %tobool11 = icmp ne i32 %and10, 0, !dbg !373
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !375
  br i1 %12, label %while.body, label %while.end, !dbg !367

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !376, metadata !DIExpression()), !dbg !378
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !379
  %14 = load i64, i64* %numWritten, align 8, !dbg !380
  %mul12 = mul i64 2, %14, !dbg !381
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !379
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !382
  %15 = load i32, i32* %byte, align 4, !dbg !383
  %conv15 = trunc i32 %15 to i8, !dbg !384
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !385
  %17 = load i64, i64* %numWritten, align 8, !dbg !386
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !385
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !387
  %18 = load i64, i64* %numWritten, align 8, !dbg !388
  %inc = add i64 %18, 1, !dbg !388
  store i64 %inc, i64* %numWritten, align 8, !dbg !388
  br label %while.cond, !dbg !367, !llvm.loop !389

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !391
  ret i64 %19, !dbg !392
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !393 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !396, metadata !DIExpression()), !dbg !397
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !398, metadata !DIExpression()), !dbg !399
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !400, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !402, metadata !DIExpression()), !dbg !403
  store i64 0, i64* %numWritten, align 8, !dbg !403
  br label %while.cond, !dbg !404

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !405
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !406
  %cmp = icmp ult i64 %0, %1, !dbg !407
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !408

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !409
  %3 = load i64, i64* %numWritten, align 8, !dbg !410
  %mul = mul i64 2, %3, !dbg !411
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !409
  %4 = load i32, i32* %arrayidx, align 4, !dbg !409
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !412
  %tobool = icmp ne i32 %call, 0, !dbg !412
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !413

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !414
  %6 = load i64, i64* %numWritten, align 8, !dbg !415
  %mul1 = mul i64 2, %6, !dbg !416
  %add = add i64 %mul1, 1, !dbg !417
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !414
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !414
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !418
  %tobool4 = icmp ne i32 %call3, 0, !dbg !413
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !419
  br i1 %8, label %while.body, label %while.end, !dbg !404

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !420, metadata !DIExpression()), !dbg !422
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !423
  %10 = load i64, i64* %numWritten, align 8, !dbg !424
  %mul5 = mul i64 2, %10, !dbg !425
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !423
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !426
  %11 = load i32, i32* %byte, align 4, !dbg !427
  %conv = trunc i32 %11 to i8, !dbg !428
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !429
  %13 = load i64, i64* %numWritten, align 8, !dbg !430
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !429
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !431
  %14 = load i64, i64* %numWritten, align 8, !dbg !432
  %inc = add i64 %14, 1, !dbg !432
  store i64 %inc, i64* %numWritten, align 8, !dbg !432
  br label %while.cond, !dbg !404, !llvm.loop !433

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !435
  ret i64 %15, !dbg !436
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !437 {
entry:
  ret i32 1, !dbg !440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !441 {
entry:
  ret i32 0, !dbg !442
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !443 {
entry:
  %call = call i32 @rand() #8, !dbg !444
  %rem = srem i32 %call, 2, !dbg !445
  ret i32 %rem, !dbg !446
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !447 {
entry:
  ret void, !dbg !448
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !449 {
entry:
  ret void, !dbg !450
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !451 {
entry:
  ret void, !dbg !452
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !453 {
entry:
  ret void, !dbg !454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !455 {
entry:
  ret void, !dbg !456
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !457 {
entry:
  ret void, !dbg !458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !459 {
entry:
  ret void, !dbg !460
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !461 {
entry:
  ret void, !dbg !462
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !463 {
entry:
  ret void, !dbg !464
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !465 {
entry:
  ret void, !dbg !466
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !467 {
entry:
  ret void, !dbg !468
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !469 {
entry:
  ret void, !dbg !470
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !471 {
entry:
  ret void, !dbg !472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !473 {
entry:
  ret void, !dbg !474
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !475 {
entry:
  ret void, !dbg !476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !477 {
entry:
  ret void, !dbg !478
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !479 {
entry:
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !481 {
entry:
  ret void, !dbg !482
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_739/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_18.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_739/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!64 = !DILocation(line: 40, column: 5, scope: !52)
!65 = !DILabel(scope: !52, name: "source", file: !45, line: 41)
!66 = !DILocation(line: 41, column: 1, scope: !52)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !45, line: 44, type: !69)
!68 = distinct !DILexicalBlock(scope: !52, file: !45, line: 42, column: 5)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!71 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DILocation(line: 44, column: 16, scope: !68)
!73 = !DILocation(line: 44, column: 33, scope: !68)
!74 = !DILocation(line: 44, column: 26, scope: !68)
!75 = !DILocalVariable(name: "environment", scope: !68, file: !45, line: 45, type: !42)
!76 = !DILocation(line: 45, column: 16, scope: !68)
!77 = !DILocation(line: 45, column: 30, scope: !68)
!78 = !DILocation(line: 47, column: 13, scope: !79)
!79 = distinct !DILexicalBlock(scope: !68, file: !45, line: 47, column: 13)
!80 = !DILocation(line: 47, column: 25, scope: !79)
!81 = !DILocation(line: 47, column: 13, scope: !68)
!82 = !DILocation(line: 50, column: 21, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !45, line: 48, column: 9)
!84 = !DILocation(line: 50, column: 26, scope: !83)
!85 = !DILocation(line: 50, column: 25, scope: !83)
!86 = !DILocation(line: 50, column: 35, scope: !83)
!87 = !DILocation(line: 50, column: 52, scope: !83)
!88 = !DILocation(line: 50, column: 51, scope: !83)
!89 = !DILocation(line: 50, column: 59, scope: !83)
!90 = !DILocation(line: 50, column: 13, scope: !83)
!91 = !DILocation(line: 51, column: 9, scope: !83)
!92 = !DILocation(line: 53, column: 5, scope: !52)
!93 = !DILabel(scope: !52, name: "sink", file: !45, line: 54)
!94 = !DILocation(line: 54, column: 1, scope: !52)
!95 = !DILocation(line: 56, column: 12, scope: !52)
!96 = !DILocation(line: 56, column: 5, scope: !52)
!97 = !DILocation(line: 57, column: 1, scope: !52)
!98 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 64, type: !53, scopeLine: 65, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!99 = !DILocalVariable(name: "data", scope: !98, file: !45, line: 66, type: !42)
!100 = !DILocation(line: 66, column: 12, scope: !98)
!101 = !DILocalVariable(name: "dataBuffer", scope: !98, file: !45, line: 67, type: !58)
!102 = !DILocation(line: 67, column: 10, scope: !98)
!103 = !DILocation(line: 68, column: 12, scope: !98)
!104 = !DILocation(line: 68, column: 10, scope: !98)
!105 = !DILocation(line: 69, column: 5, scope: !98)
!106 = !DILabel(scope: !98, name: "source", file: !45, line: 70)
!107 = !DILocation(line: 70, column: 1, scope: !98)
!108 = !DILocalVariable(name: "dataLen", scope: !109, file: !45, line: 73, type: !69)
!109 = distinct !DILexicalBlock(scope: !98, file: !45, line: 71, column: 5)
!110 = !DILocation(line: 73, column: 16, scope: !109)
!111 = !DILocation(line: 73, column: 33, scope: !109)
!112 = !DILocation(line: 73, column: 26, scope: !109)
!113 = !DILocalVariable(name: "environment", scope: !109, file: !45, line: 74, type: !42)
!114 = !DILocation(line: 74, column: 16, scope: !109)
!115 = !DILocation(line: 74, column: 30, scope: !109)
!116 = !DILocation(line: 76, column: 13, scope: !117)
!117 = distinct !DILexicalBlock(scope: !109, file: !45, line: 76, column: 13)
!118 = !DILocation(line: 76, column: 25, scope: !117)
!119 = !DILocation(line: 76, column: 13, scope: !109)
!120 = !DILocation(line: 79, column: 21, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !45, line: 77, column: 9)
!122 = !DILocation(line: 79, column: 26, scope: !121)
!123 = !DILocation(line: 79, column: 25, scope: !121)
!124 = !DILocation(line: 79, column: 35, scope: !121)
!125 = !DILocation(line: 79, column: 52, scope: !121)
!126 = !DILocation(line: 79, column: 51, scope: !121)
!127 = !DILocation(line: 79, column: 59, scope: !121)
!128 = !DILocation(line: 79, column: 13, scope: !121)
!129 = !DILocation(line: 80, column: 9, scope: !121)
!130 = !DILocation(line: 82, column: 5, scope: !98)
!131 = !DILabel(scope: !98, name: "sink", file: !45, line: 83)
!132 = !DILocation(line: 83, column: 1, scope: !98)
!133 = !DILocation(line: 85, column: 20, scope: !98)
!134 = !DILocation(line: 85, column: 5, scope: !98)
!135 = !DILocation(line: 86, column: 1, scope: !98)
!136 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 89, type: !53, scopeLine: 90, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!137 = !DILocalVariable(name: "data", scope: !136, file: !45, line: 91, type: !42)
!138 = !DILocation(line: 91, column: 12, scope: !136)
!139 = !DILocalVariable(name: "dataBuffer", scope: !136, file: !45, line: 92, type: !58)
!140 = !DILocation(line: 92, column: 10, scope: !136)
!141 = !DILocation(line: 93, column: 12, scope: !136)
!142 = !DILocation(line: 93, column: 10, scope: !136)
!143 = !DILocation(line: 94, column: 5, scope: !136)
!144 = !DILabel(scope: !136, name: "source", file: !45, line: 95)
!145 = !DILocation(line: 95, column: 1, scope: !136)
!146 = !DILocation(line: 97, column: 12, scope: !136)
!147 = !DILocation(line: 97, column: 5, scope: !136)
!148 = !DILocation(line: 98, column: 5, scope: !136)
!149 = !DILabel(scope: !136, name: "sink", file: !45, line: 99)
!150 = !DILocation(line: 99, column: 1, scope: !136)
!151 = !DILocation(line: 101, column: 12, scope: !136)
!152 = !DILocation(line: 101, column: 5, scope: !136)
!153 = !DILocation(line: 102, column: 1, scope: !136)
!154 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_18_good", scope: !45, file: !45, line: 104, type: !53, scopeLine: 105, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!155 = !DILocation(line: 106, column: 5, scope: !154)
!156 = !DILocation(line: 107, column: 5, scope: !154)
!157 = !DILocation(line: 108, column: 1, scope: !154)
!158 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !159, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !42}
!161 = !DILocalVariable(name: "line", arg: 1, scope: !158, file: !3, line: 11, type: !42)
!162 = !DILocation(line: 11, column: 25, scope: !158)
!163 = !DILocation(line: 13, column: 1, scope: !158)
!164 = !DILocation(line: 14, column: 8, scope: !165)
!165 = distinct !DILexicalBlock(scope: !158, file: !3, line: 14, column: 8)
!166 = !DILocation(line: 14, column: 13, scope: !165)
!167 = !DILocation(line: 14, column: 8, scope: !158)
!168 = !DILocation(line: 16, column: 24, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !3, line: 15, column: 5)
!170 = !DILocation(line: 16, column: 9, scope: !169)
!171 = !DILocation(line: 17, column: 5, scope: !169)
!172 = !DILocation(line: 18, column: 5, scope: !158)
!173 = !DILocation(line: 19, column: 1, scope: !158)
!174 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !159, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!175 = !DILocalVariable(name: "line", arg: 1, scope: !174, file: !3, line: 20, type: !42)
!176 = !DILocation(line: 20, column: 29, scope: !174)
!177 = !DILocation(line: 22, column: 8, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !3, line: 22, column: 8)
!179 = !DILocation(line: 22, column: 13, scope: !178)
!180 = !DILocation(line: 22, column: 8, scope: !174)
!181 = !DILocation(line: 24, column: 24, scope: !182)
!182 = distinct !DILexicalBlock(scope: !178, file: !3, line: 23, column: 5)
!183 = !DILocation(line: 24, column: 9, scope: !182)
!184 = !DILocation(line: 25, column: 5, scope: !182)
!185 = !DILocation(line: 26, column: 1, scope: !174)
!186 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !187, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !23)
!191 = !DILocalVariable(name: "line", arg: 1, scope: !186, file: !3, line: 27, type: !189)
!192 = !DILocation(line: 27, column: 29, scope: !186)
!193 = !DILocation(line: 29, column: 8, scope: !194)
!194 = distinct !DILexicalBlock(scope: !186, file: !3, line: 29, column: 8)
!195 = !DILocation(line: 29, column: 13, scope: !194)
!196 = !DILocation(line: 29, column: 8, scope: !186)
!197 = !DILocation(line: 31, column: 27, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !3, line: 30, column: 5)
!199 = !DILocation(line: 31, column: 9, scope: !198)
!200 = !DILocation(line: 32, column: 5, scope: !198)
!201 = !DILocation(line: 33, column: 1, scope: !186)
!202 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !203, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !23}
!205 = !DILocalVariable(name: "intNumber", arg: 1, scope: !202, file: !3, line: 35, type: !23)
!206 = !DILocation(line: 35, column: 24, scope: !202)
!207 = !DILocation(line: 37, column: 20, scope: !202)
!208 = !DILocation(line: 37, column: 5, scope: !202)
!209 = !DILocation(line: 38, column: 1, scope: !202)
!210 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !211, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !213}
!213 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!214 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !210, file: !3, line: 40, type: !213)
!215 = !DILocation(line: 40, column: 28, scope: !210)
!216 = !DILocation(line: 42, column: 21, scope: !210)
!217 = !DILocation(line: 42, column: 5, scope: !210)
!218 = !DILocation(line: 43, column: 1, scope: !210)
!219 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !220, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !222}
!222 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!223 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !219, file: !3, line: 45, type: !222)
!224 = !DILocation(line: 45, column: 28, scope: !219)
!225 = !DILocation(line: 47, column: 20, scope: !219)
!226 = !DILocation(line: 47, column: 5, scope: !219)
!227 = !DILocation(line: 48, column: 1, scope: !219)
!228 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !229, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !231}
!231 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!232 = !DILocalVariable(name: "longNumber", arg: 1, scope: !228, file: !3, line: 50, type: !231)
!233 = !DILocation(line: 50, column: 26, scope: !228)
!234 = !DILocation(line: 52, column: 21, scope: !228)
!235 = !DILocation(line: 52, column: 5, scope: !228)
!236 = !DILocation(line: 53, column: 1, scope: !228)
!237 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !238, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !240}
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !241, line: 27, baseType: !242)
!241 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !243, line: 44, baseType: !231)
!243 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!244 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !237, file: !3, line: 55, type: !240)
!245 = !DILocation(line: 55, column: 33, scope: !237)
!246 = !DILocation(line: 57, column: 29, scope: !237)
!247 = !DILocation(line: 57, column: 5, scope: !237)
!248 = !DILocation(line: 58, column: 1, scope: !237)
!249 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !250, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !69}
!252 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !249, file: !3, line: 60, type: !69)
!253 = !DILocation(line: 60, column: 29, scope: !249)
!254 = !DILocation(line: 62, column: 21, scope: !249)
!255 = !DILocation(line: 62, column: 5, scope: !249)
!256 = !DILocation(line: 63, column: 1, scope: !249)
!257 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !258, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !43}
!260 = !DILocalVariable(name: "charHex", arg: 1, scope: !257, file: !3, line: 65, type: !43)
!261 = !DILocation(line: 65, column: 29, scope: !257)
!262 = !DILocation(line: 67, column: 22, scope: !257)
!263 = !DILocation(line: 67, column: 5, scope: !257)
!264 = !DILocation(line: 68, column: 1, scope: !257)
!265 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !266, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !190}
!268 = !DILocalVariable(name: "wideChar", arg: 1, scope: !265, file: !3, line: 70, type: !190)
!269 = !DILocation(line: 70, column: 29, scope: !265)
!270 = !DILocalVariable(name: "s", scope: !265, file: !3, line: 74, type: !271)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 64, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 2)
!274 = !DILocation(line: 74, column: 13, scope: !265)
!275 = !DILocation(line: 75, column: 16, scope: !265)
!276 = !DILocation(line: 75, column: 9, scope: !265)
!277 = !DILocation(line: 75, column: 14, scope: !265)
!278 = !DILocation(line: 76, column: 9, scope: !265)
!279 = !DILocation(line: 76, column: 14, scope: !265)
!280 = !DILocation(line: 77, column: 21, scope: !265)
!281 = !DILocation(line: 77, column: 5, scope: !265)
!282 = !DILocation(line: 78, column: 1, scope: !265)
!283 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !284, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !7}
!286 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !283, file: !3, line: 80, type: !7)
!287 = !DILocation(line: 80, column: 33, scope: !283)
!288 = !DILocation(line: 82, column: 20, scope: !283)
!289 = !DILocation(line: 82, column: 5, scope: !283)
!290 = !DILocation(line: 83, column: 1, scope: !283)
!291 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !292, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !25}
!294 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !291, file: !3, line: 85, type: !25)
!295 = !DILocation(line: 85, column: 45, scope: !291)
!296 = !DILocation(line: 87, column: 22, scope: !291)
!297 = !DILocation(line: 87, column: 5, scope: !291)
!298 = !DILocation(line: 88, column: 1, scope: !291)
!299 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !300, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !302}
!302 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!303 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !299, file: !3, line: 90, type: !302)
!304 = !DILocation(line: 90, column: 29, scope: !299)
!305 = !DILocation(line: 92, column: 20, scope: !299)
!306 = !DILocation(line: 92, column: 5, scope: !299)
!307 = !DILocation(line: 93, column: 1, scope: !299)
!308 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !309, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !311}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !313, line: 100, baseType: !314)
!313 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_739/source_code")
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !313, line: 96, size: 64, elements: !315)
!315 = !{!316, !317}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !314, file: !313, line: 98, baseType: !23, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !314, file: !313, line: 99, baseType: !23, size: 32, offset: 32)
!318 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !308, file: !3, line: 95, type: !311)
!319 = !DILocation(line: 95, column: 40, scope: !308)
!320 = !DILocation(line: 97, column: 26, scope: !308)
!321 = !DILocation(line: 97, column: 47, scope: !308)
!322 = !DILocation(line: 97, column: 55, scope: !308)
!323 = !DILocation(line: 97, column: 76, scope: !308)
!324 = !DILocation(line: 97, column: 5, scope: !308)
!325 = !DILocation(line: 98, column: 1, scope: !308)
!326 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !327, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !329, !69}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!330 = !DILocalVariable(name: "bytes", arg: 1, scope: !326, file: !3, line: 100, type: !329)
!331 = !DILocation(line: 100, column: 38, scope: !326)
!332 = !DILocalVariable(name: "numBytes", arg: 2, scope: !326, file: !3, line: 100, type: !69)
!333 = !DILocation(line: 100, column: 52, scope: !326)
!334 = !DILocalVariable(name: "i", scope: !326, file: !3, line: 102, type: !69)
!335 = !DILocation(line: 102, column: 12, scope: !326)
!336 = !DILocation(line: 103, column: 12, scope: !337)
!337 = distinct !DILexicalBlock(scope: !326, file: !3, line: 103, column: 5)
!338 = !DILocation(line: 103, column: 10, scope: !337)
!339 = !DILocation(line: 103, column: 17, scope: !340)
!340 = distinct !DILexicalBlock(scope: !337, file: !3, line: 103, column: 5)
!341 = !DILocation(line: 103, column: 21, scope: !340)
!342 = !DILocation(line: 103, column: 19, scope: !340)
!343 = !DILocation(line: 103, column: 5, scope: !337)
!344 = !DILocation(line: 105, column: 24, scope: !345)
!345 = distinct !DILexicalBlock(scope: !340, file: !3, line: 104, column: 5)
!346 = !DILocation(line: 105, column: 30, scope: !345)
!347 = !DILocation(line: 105, column: 9, scope: !345)
!348 = !DILocation(line: 106, column: 5, scope: !345)
!349 = !DILocation(line: 103, column: 31, scope: !340)
!350 = !DILocation(line: 103, column: 5, scope: !340)
!351 = distinct !{!351, !343, !352, !353}
!352 = !DILocation(line: 106, column: 5, scope: !337)
!353 = !{!"llvm.loop.mustprogress"}
!354 = !DILocation(line: 107, column: 5, scope: !326)
!355 = !DILocation(line: 108, column: 1, scope: !326)
!356 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !357, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!357 = !DISubroutineType(types: !358)
!358 = !{!69, !329, !69, !42}
!359 = !DILocalVariable(name: "bytes", arg: 1, scope: !356, file: !3, line: 113, type: !329)
!360 = !DILocation(line: 113, column: 39, scope: !356)
!361 = !DILocalVariable(name: "numBytes", arg: 2, scope: !356, file: !3, line: 113, type: !69)
!362 = !DILocation(line: 113, column: 53, scope: !356)
!363 = !DILocalVariable(name: "hex", arg: 3, scope: !356, file: !3, line: 113, type: !42)
!364 = !DILocation(line: 113, column: 71, scope: !356)
!365 = !DILocalVariable(name: "numWritten", scope: !356, file: !3, line: 115, type: !69)
!366 = !DILocation(line: 115, column: 12, scope: !356)
!367 = !DILocation(line: 121, column: 5, scope: !356)
!368 = !DILocation(line: 121, column: 12, scope: !356)
!369 = !DILocation(line: 121, column: 25, scope: !356)
!370 = !DILocation(line: 121, column: 23, scope: !356)
!371 = !DILocation(line: 121, column: 34, scope: !356)
!372 = !DILocation(line: 121, column: 37, scope: !356)
!373 = !DILocation(line: 121, column: 67, scope: !356)
!374 = !DILocation(line: 121, column: 70, scope: !356)
!375 = !DILocation(line: 0, scope: !356)
!376 = !DILocalVariable(name: "byte", scope: !377, file: !3, line: 123, type: !23)
!377 = distinct !DILexicalBlock(scope: !356, file: !3, line: 122, column: 5)
!378 = !DILocation(line: 123, column: 13, scope: !377)
!379 = !DILocation(line: 124, column: 17, scope: !377)
!380 = !DILocation(line: 124, column: 25, scope: !377)
!381 = !DILocation(line: 124, column: 23, scope: !377)
!382 = !DILocation(line: 124, column: 9, scope: !377)
!383 = !DILocation(line: 125, column: 45, scope: !377)
!384 = !DILocation(line: 125, column: 29, scope: !377)
!385 = !DILocation(line: 125, column: 9, scope: !377)
!386 = !DILocation(line: 125, column: 15, scope: !377)
!387 = !DILocation(line: 125, column: 27, scope: !377)
!388 = !DILocation(line: 126, column: 9, scope: !377)
!389 = distinct !{!389, !367, !390, !353}
!390 = !DILocation(line: 127, column: 5, scope: !356)
!391 = !DILocation(line: 129, column: 12, scope: !356)
!392 = !DILocation(line: 129, column: 5, scope: !356)
!393 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !394, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!394 = !DISubroutineType(types: !395)
!395 = !{!69, !329, !69, !189}
!396 = !DILocalVariable(name: "bytes", arg: 1, scope: !393, file: !3, line: 135, type: !329)
!397 = !DILocation(line: 135, column: 41, scope: !393)
!398 = !DILocalVariable(name: "numBytes", arg: 2, scope: !393, file: !3, line: 135, type: !69)
!399 = !DILocation(line: 135, column: 55, scope: !393)
!400 = !DILocalVariable(name: "hex", arg: 3, scope: !393, file: !3, line: 135, type: !189)
!401 = !DILocation(line: 135, column: 76, scope: !393)
!402 = !DILocalVariable(name: "numWritten", scope: !393, file: !3, line: 137, type: !69)
!403 = !DILocation(line: 137, column: 12, scope: !393)
!404 = !DILocation(line: 143, column: 5, scope: !393)
!405 = !DILocation(line: 143, column: 12, scope: !393)
!406 = !DILocation(line: 143, column: 25, scope: !393)
!407 = !DILocation(line: 143, column: 23, scope: !393)
!408 = !DILocation(line: 143, column: 34, scope: !393)
!409 = !DILocation(line: 143, column: 47, scope: !393)
!410 = !DILocation(line: 143, column: 55, scope: !393)
!411 = !DILocation(line: 143, column: 53, scope: !393)
!412 = !DILocation(line: 143, column: 37, scope: !393)
!413 = !DILocation(line: 143, column: 68, scope: !393)
!414 = !DILocation(line: 143, column: 81, scope: !393)
!415 = !DILocation(line: 143, column: 89, scope: !393)
!416 = !DILocation(line: 143, column: 87, scope: !393)
!417 = !DILocation(line: 143, column: 100, scope: !393)
!418 = !DILocation(line: 143, column: 71, scope: !393)
!419 = !DILocation(line: 0, scope: !393)
!420 = !DILocalVariable(name: "byte", scope: !421, file: !3, line: 145, type: !23)
!421 = distinct !DILexicalBlock(scope: !393, file: !3, line: 144, column: 5)
!422 = !DILocation(line: 145, column: 13, scope: !421)
!423 = !DILocation(line: 146, column: 18, scope: !421)
!424 = !DILocation(line: 146, column: 26, scope: !421)
!425 = !DILocation(line: 146, column: 24, scope: !421)
!426 = !DILocation(line: 146, column: 9, scope: !421)
!427 = !DILocation(line: 147, column: 45, scope: !421)
!428 = !DILocation(line: 147, column: 29, scope: !421)
!429 = !DILocation(line: 147, column: 9, scope: !421)
!430 = !DILocation(line: 147, column: 15, scope: !421)
!431 = !DILocation(line: 147, column: 27, scope: !421)
!432 = !DILocation(line: 148, column: 9, scope: !421)
!433 = distinct !{!433, !404, !434, !353}
!434 = !DILocation(line: 149, column: 5, scope: !393)
!435 = !DILocation(line: 151, column: 12, scope: !393)
!436 = !DILocation(line: 151, column: 5, scope: !393)
!437 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !438, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!438 = !DISubroutineType(types: !439)
!439 = !{!23}
!440 = !DILocation(line: 158, column: 5, scope: !437)
!441 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !438, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!442 = !DILocation(line: 163, column: 5, scope: !441)
!443 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !438, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!444 = !DILocation(line: 168, column: 13, scope: !443)
!445 = !DILocation(line: 168, column: 20, scope: !443)
!446 = !DILocation(line: 168, column: 5, scope: !443)
!447 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!448 = !DILocation(line: 187, column: 16, scope: !447)
!449 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!450 = !DILocation(line: 188, column: 16, scope: !449)
!451 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!452 = !DILocation(line: 189, column: 16, scope: !451)
!453 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!454 = !DILocation(line: 190, column: 16, scope: !453)
!455 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!456 = !DILocation(line: 191, column: 16, scope: !455)
!457 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!458 = !DILocation(line: 192, column: 16, scope: !457)
!459 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!460 = !DILocation(line: 193, column: 16, scope: !459)
!461 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!462 = !DILocation(line: 194, column: 16, scope: !461)
!463 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!464 = !DILocation(line: 195, column: 16, scope: !463)
!465 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!466 = !DILocation(line: 198, column: 15, scope: !465)
!467 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!468 = !DILocation(line: 199, column: 15, scope: !467)
!469 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!470 = !DILocation(line: 200, column: 15, scope: !469)
!471 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!472 = !DILocation(line: 201, column: 15, scope: !471)
!473 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!474 = !DILocation(line: 202, column: 15, scope: !473)
!475 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!476 = !DILocation(line: 203, column: 15, scope: !475)
!477 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!478 = !DILocation(line: 204, column: 15, scope: !477)
!479 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!480 = !DILocation(line: 205, column: 15, scope: !479)
!481 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!482 = !DILocation(line: 206, column: 15, scope: !481)
