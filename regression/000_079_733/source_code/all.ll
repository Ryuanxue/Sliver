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
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad() #0 !dbg !52 {
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
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !64
  %tobool = icmp ne i32 %call, 0, !dbg !64
  br i1 %tobool, label %if.then, label %if.else, !dbg !66

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !73
  %1 = load i8*, i8** %data, align 8, !dbg !74
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !75
  store i64 %call1, i64* %dataLen, align 8, !dbg !73
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !76, metadata !DIExpression()), !dbg !77
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !78
  store i8* %call2, i8** %environment, align 8, !dbg !77
  %2 = load i8*, i8** %environment, align 8, !dbg !79
  %cmp = icmp ne i8* %2, null, !dbg !81
  br i1 %cmp, label %if.then3, label %if.end, !dbg !82

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !83
  %4 = load i64, i64* %dataLen, align 8, !dbg !85
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !86
  %5 = load i8*, i8** %environment, align 8, !dbg !87
  %6 = load i64, i64* %dataLen, align 8, !dbg !88
  %sub = sub i64 100, %6, !dbg !89
  %sub4 = sub i64 %sub, 1, !dbg !90
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #8, !dbg !91
  br label %if.end, !dbg !92

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end7, !dbg !93

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %data, align 8, !dbg !94
  %call6 = call i8* @strcpy(i8* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !96
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  %call8 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !97
  %tobool9 = icmp ne i32 %call8, 0, !dbg !97
  br i1 %tobool9, label %if.then10, label %if.else12, !dbg !99

if.then10:                                        ; preds = %if.end7
  %8 = load i8*, i8** %data, align 8, !dbg !100
  %call11 = call i32 (i8*, ...) @printf(i8* %8), !dbg !102
  br label %if.end14, !dbg !103

if.else12:                                        ; preds = %if.end7
  %9 = load i8*, i8** %data, align 8, !dbg !104
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %9), !dbg !106
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then10
  ret void, !dbg !107
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

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !108 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %dataLen6 = alloca i64, align 8
  %environment8 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !111, metadata !DIExpression()), !dbg !112
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !112
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !112
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !113
  store i8* %arraydecay, i8** %data, align 8, !dbg !114
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !115
  %tobool = icmp ne i32 %call, 0, !dbg !115
  br i1 %tobool, label %if.then, label %if.else, !dbg !117

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !118, metadata !DIExpression()), !dbg !121
  %1 = load i8*, i8** %data, align 8, !dbg !122
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !123
  store i64 %call1, i64* %dataLen, align 8, !dbg !121
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !124, metadata !DIExpression()), !dbg !125
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !126
  store i8* %call2, i8** %environment, align 8, !dbg !125
  %2 = load i8*, i8** %environment, align 8, !dbg !127
  %cmp = icmp ne i8* %2, null, !dbg !129
  br i1 %cmp, label %if.then3, label %if.end, !dbg !130

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !131
  %4 = load i64, i64* %dataLen, align 8, !dbg !133
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !134
  %5 = load i8*, i8** %environment, align 8, !dbg !135
  %6 = load i64, i64* %dataLen, align 8, !dbg !136
  %sub = sub i64 100, %6, !dbg !137
  %sub4 = sub i64 %sub, 1, !dbg !138
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #8, !dbg !139
  br label %if.end, !dbg !140

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end17, !dbg !141

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen6, metadata !142, metadata !DIExpression()), !dbg !145
  %7 = load i8*, i8** %data, align 8, !dbg !146
  %call7 = call i64 @strlen(i8* %7) #7, !dbg !147
  store i64 %call7, i64* %dataLen6, align 8, !dbg !145
  call void @llvm.dbg.declare(metadata i8** %environment8, metadata !148, metadata !DIExpression()), !dbg !149
  %call9 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !150
  store i8* %call9, i8** %environment8, align 8, !dbg !149
  %8 = load i8*, i8** %environment8, align 8, !dbg !151
  %cmp10 = icmp ne i8* %8, null, !dbg !153
  br i1 %cmp10, label %if.then11, label %if.end16, !dbg !154

if.then11:                                        ; preds = %if.else
  %9 = load i8*, i8** %data, align 8, !dbg !155
  %10 = load i64, i64* %dataLen6, align 8, !dbg !157
  %add.ptr12 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !158
  %11 = load i8*, i8** %environment8, align 8, !dbg !159
  %12 = load i64, i64* %dataLen6, align 8, !dbg !160
  %sub13 = sub i64 100, %12, !dbg !161
  %sub14 = sub i64 %sub13, 1, !dbg !162
  %call15 = call i8* @strncat(i8* %add.ptr12, i8* %11, i64 %sub14) #8, !dbg !163
  br label %if.end16, !dbg !164

if.end16:                                         ; preds = %if.then11, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %call18 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !165
  %tobool19 = icmp ne i32 %call18, 0, !dbg !165
  br i1 %tobool19, label %if.then20, label %if.else22, !dbg !167

if.then20:                                        ; preds = %if.end17
  %13 = load i8*, i8** %data, align 8, !dbg !168
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %13), !dbg !170
  br label %if.end24, !dbg !171

if.else22:                                        ; preds = %if.end17
  %14 = load i8*, i8** %data, align 8, !dbg !172
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %14), !dbg !174
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then20
  ret void, !dbg !175
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !176 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !179, metadata !DIExpression()), !dbg !180
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !180
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !180
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !181
  store i8* %arraydecay, i8** %data, align 8, !dbg !182
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !183
  %tobool = icmp ne i32 %call, 0, !dbg !183
  br i1 %tobool, label %if.then, label %if.else, !dbg !185

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !186
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !188
  br label %if.end, !dbg !189

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !190
  %call2 = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !192
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !193
  %tobool4 = icmp ne i32 %call3, 0, !dbg !193
  br i1 %tobool4, label %if.then5, label %if.else7, !dbg !195

if.then5:                                         ; preds = %if.end
  %3 = load i8*, i8** %data, align 8, !dbg !196
  %call6 = call i32 (i8*, ...) @printf(i8* %3), !dbg !198
  br label %if.end9, !dbg !199

if.else7:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !200
  %call8 = call i32 (i8*, ...) @printf(i8* %4), !dbg !202
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.then5
  ret void, !dbg !203
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_12_good() #0 !dbg !204 {
entry:
  call void @goodB2G(), !dbg !205
  call void @goodG2B(), !dbg !206
  ret void, !dbg !207
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !208 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !211, metadata !DIExpression()), !dbg !212
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !213
  %0 = load i8*, i8** %line.addr, align 8, !dbg !214
  %cmp = icmp ne i8* %0, null, !dbg !216
  br i1 %cmp, label %if.then, label %if.end, !dbg !217

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !218
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !220
  br label %if.end, !dbg !221

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !222
  ret void, !dbg !223
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !224 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !225, metadata !DIExpression()), !dbg !226
  %0 = load i8*, i8** %line.addr, align 8, !dbg !227
  %cmp = icmp ne i8* %0, null, !dbg !229
  br i1 %cmp, label %if.then, label %if.end, !dbg !230

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !231
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !233
  br label %if.end, !dbg !234

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !235
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !236 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !241, metadata !DIExpression()), !dbg !242
  %0 = load i32*, i32** %line.addr, align 8, !dbg !243
  %cmp = icmp ne i32* %0, null, !dbg !245
  br i1 %cmp, label %if.then, label %if.end, !dbg !246

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !247
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !249
  br label %if.end, !dbg !250

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !251
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !252 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !255, metadata !DIExpression()), !dbg !256
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !257
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !258
  ret void, !dbg !259
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !260 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !264, metadata !DIExpression()), !dbg !265
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !266
  %conv = sext i16 %0 to i32, !dbg !266
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !267
  ret void, !dbg !268
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !269 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !273, metadata !DIExpression()), !dbg !274
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !275
  %conv = fpext float %0 to double, !dbg !275
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !276
  ret void, !dbg !277
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !278 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !282, metadata !DIExpression()), !dbg !283
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !284
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !285
  ret void, !dbg !286
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !287 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !294, metadata !DIExpression()), !dbg !295
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !296
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !297
  ret void, !dbg !298
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !299 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !302, metadata !DIExpression()), !dbg !303
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !304
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !305
  ret void, !dbg !306
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !307 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !310, metadata !DIExpression()), !dbg !311
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !312
  %conv = sext i8 %0 to i32, !dbg !312
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !313
  ret void, !dbg !314
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !315 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !318, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !320, metadata !DIExpression()), !dbg !324
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !325
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !326
  store i32 %0, i32* %arrayidx, align 4, !dbg !327
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !328
  store i32 0, i32* %arrayidx1, align 4, !dbg !329
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !330
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !331
  ret void, !dbg !332
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !333 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !336, metadata !DIExpression()), !dbg !337
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !338
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !339
  ret void, !dbg !340
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !341 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !344, metadata !DIExpression()), !dbg !345
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !346
  %conv = zext i8 %0 to i32, !dbg !346
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !347
  ret void, !dbg !348
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !349 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !353, metadata !DIExpression()), !dbg !354
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !355
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !356
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !358 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !368, metadata !DIExpression()), !dbg !369
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !370
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !371
  %1 = load i32, i32* %intOne, align 4, !dbg !371
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !372
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !373
  %3 = load i32, i32* %intTwo, align 4, !dbg !373
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !374
  ret void, !dbg !375
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !376 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !380, metadata !DIExpression()), !dbg !381
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !382, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.declare(metadata i64* %i, metadata !384, metadata !DIExpression()), !dbg !385
  store i64 0, i64* %i, align 8, !dbg !386
  br label %for.cond, !dbg !388

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !389
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !391
  %cmp = icmp ult i64 %0, %1, !dbg !392
  br i1 %cmp, label %for.body, label %for.end, !dbg !393

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !394
  %3 = load i64, i64* %i, align 8, !dbg !396
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !394
  %4 = load i8, i8* %arrayidx, align 1, !dbg !394
  %conv = zext i8 %4 to i32, !dbg !394
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !397
  br label %for.inc, !dbg !398

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !399
  %inc = add i64 %5, 1, !dbg !399
  store i64 %inc, i64* %i, align 8, !dbg !399
  br label %for.cond, !dbg !400, !llvm.loop !401

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !404
  ret void, !dbg !405
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !406 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !409, metadata !DIExpression()), !dbg !410
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !411, metadata !DIExpression()), !dbg !412
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !413, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !415, metadata !DIExpression()), !dbg !416
  store i64 0, i64* %numWritten, align 8, !dbg !416
  br label %while.cond, !dbg !417

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !418
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !419
  %cmp = icmp ult i64 %0, %1, !dbg !420
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !421

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !422
  %2 = load i16*, i16** %call, align 8, !dbg !422
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !422
  %4 = load i64, i64* %numWritten, align 8, !dbg !422
  %mul = mul i64 2, %4, !dbg !422
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !422
  %5 = load i8, i8* %arrayidx, align 1, !dbg !422
  %conv = sext i8 %5 to i32, !dbg !422
  %idxprom = sext i32 %conv to i64, !dbg !422
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !422
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !422
  %conv2 = zext i16 %6 to i32, !dbg !422
  %and = and i32 %conv2, 4096, !dbg !422
  %tobool = icmp ne i32 %and, 0, !dbg !422
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !423

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !424
  %7 = load i16*, i16** %call3, align 8, !dbg !424
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !424
  %9 = load i64, i64* %numWritten, align 8, !dbg !424
  %mul4 = mul i64 2, %9, !dbg !424
  %add = add i64 %mul4, 1, !dbg !424
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !424
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !424
  %conv6 = sext i8 %10 to i32, !dbg !424
  %idxprom7 = sext i32 %conv6 to i64, !dbg !424
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !424
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !424
  %conv9 = zext i16 %11 to i32, !dbg !424
  %and10 = and i32 %conv9, 4096, !dbg !424
  %tobool11 = icmp ne i32 %and10, 0, !dbg !423
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !425
  br i1 %12, label %while.body, label %while.end, !dbg !417

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !426, metadata !DIExpression()), !dbg !428
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !429
  %14 = load i64, i64* %numWritten, align 8, !dbg !430
  %mul12 = mul i64 2, %14, !dbg !431
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !429
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !432
  %15 = load i32, i32* %byte, align 4, !dbg !433
  %conv15 = trunc i32 %15 to i8, !dbg !434
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !435
  %17 = load i64, i64* %numWritten, align 8, !dbg !436
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !435
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !437
  %18 = load i64, i64* %numWritten, align 8, !dbg !438
  %inc = add i64 %18, 1, !dbg !438
  store i64 %inc, i64* %numWritten, align 8, !dbg !438
  br label %while.cond, !dbg !417, !llvm.loop !439

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !441
  ret i64 %19, !dbg !442
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !443 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !446, metadata !DIExpression()), !dbg !447
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !448, metadata !DIExpression()), !dbg !449
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !450, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !452, metadata !DIExpression()), !dbg !453
  store i64 0, i64* %numWritten, align 8, !dbg !453
  br label %while.cond, !dbg !454

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !455
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !456
  %cmp = icmp ult i64 %0, %1, !dbg !457
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !458

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !459
  %3 = load i64, i64* %numWritten, align 8, !dbg !460
  %mul = mul i64 2, %3, !dbg !461
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !459
  %4 = load i32, i32* %arrayidx, align 4, !dbg !459
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !462
  %tobool = icmp ne i32 %call, 0, !dbg !462
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !463

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !464
  %6 = load i64, i64* %numWritten, align 8, !dbg !465
  %mul1 = mul i64 2, %6, !dbg !466
  %add = add i64 %mul1, 1, !dbg !467
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !464
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !464
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !468
  %tobool4 = icmp ne i32 %call3, 0, !dbg !463
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !469
  br i1 %8, label %while.body, label %while.end, !dbg !454

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !470, metadata !DIExpression()), !dbg !472
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !473
  %10 = load i64, i64* %numWritten, align 8, !dbg !474
  %mul5 = mul i64 2, %10, !dbg !475
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !473
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !476
  %11 = load i32, i32* %byte, align 4, !dbg !477
  %conv = trunc i32 %11 to i8, !dbg !478
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !479
  %13 = load i64, i64* %numWritten, align 8, !dbg !480
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !479
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !481
  %14 = load i64, i64* %numWritten, align 8, !dbg !482
  %inc = add i64 %14, 1, !dbg !482
  store i64 %inc, i64* %numWritten, align 8, !dbg !482
  br label %while.cond, !dbg !454, !llvm.loop !483

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !485
  ret i64 %15, !dbg !486
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !487 {
entry:
  ret i32 1, !dbg !490
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !491 {
entry:
  ret i32 0, !dbg !492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !493 {
entry:
  %call = call i32 @rand() #8, !dbg !494
  %rem = srem i32 %call, 2, !dbg !495
  ret i32 %rem, !dbg !496
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !497 {
entry:
  ret void, !dbg !498
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !499 {
entry:
  ret void, !dbg !500
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !501 {
entry:
  ret void, !dbg !502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !503 {
entry:
  ret void, !dbg !504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !505 {
entry:
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !507 {
entry:
  ret void, !dbg !508
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !509 {
entry:
  ret void, !dbg !510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !511 {
entry:
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !513 {
entry:
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !515 {
entry:
  ret void, !dbg !516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !517 {
entry:
  ret void, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !519 {
entry:
  ret void, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !521 {
entry:
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !523 {
entry:
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !525 {
entry:
  ret void, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !527 {
entry:
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !529 {
entry:
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !531 {
entry:
  ret void, !dbg !532
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_733/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_12.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_733/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!64 = !DILocation(line: 40, column: 8, scope: !65)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 40, column: 8)
!66 = !DILocation(line: 40, column: 8, scope: !52)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !45, line: 44, type: !70)
!68 = distinct !DILexicalBlock(scope: !69, file: !45, line: 42, column: 9)
!69 = distinct !DILexicalBlock(scope: !65, file: !45, line: 41, column: 5)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DILocation(line: 44, column: 20, scope: !68)
!74 = !DILocation(line: 44, column: 37, scope: !68)
!75 = !DILocation(line: 44, column: 30, scope: !68)
!76 = !DILocalVariable(name: "environment", scope: !68, file: !45, line: 45, type: !42)
!77 = !DILocation(line: 45, column: 20, scope: !68)
!78 = !DILocation(line: 45, column: 34, scope: !68)
!79 = !DILocation(line: 47, column: 17, scope: !80)
!80 = distinct !DILexicalBlock(scope: !68, file: !45, line: 47, column: 17)
!81 = !DILocation(line: 47, column: 29, scope: !80)
!82 = !DILocation(line: 47, column: 17, scope: !68)
!83 = !DILocation(line: 50, column: 25, scope: !84)
!84 = distinct !DILexicalBlock(scope: !80, file: !45, line: 48, column: 13)
!85 = !DILocation(line: 50, column: 30, scope: !84)
!86 = !DILocation(line: 50, column: 29, scope: !84)
!87 = !DILocation(line: 50, column: 39, scope: !84)
!88 = !DILocation(line: 50, column: 56, scope: !84)
!89 = !DILocation(line: 50, column: 55, scope: !84)
!90 = !DILocation(line: 50, column: 63, scope: !84)
!91 = !DILocation(line: 50, column: 17, scope: !84)
!92 = !DILocation(line: 51, column: 13, scope: !84)
!93 = !DILocation(line: 53, column: 5, scope: !69)
!94 = !DILocation(line: 57, column: 16, scope: !95)
!95 = distinct !DILexicalBlock(scope: !65, file: !45, line: 55, column: 5)
!96 = !DILocation(line: 57, column: 9, scope: !95)
!97 = !DILocation(line: 59, column: 8, scope: !98)
!98 = distinct !DILexicalBlock(scope: !52, file: !45, line: 59, column: 8)
!99 = !DILocation(line: 59, column: 8, scope: !52)
!100 = !DILocation(line: 62, column: 16, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !45, line: 60, column: 5)
!102 = !DILocation(line: 62, column: 9, scope: !101)
!103 = !DILocation(line: 63, column: 5, scope: !101)
!104 = !DILocation(line: 67, column: 24, scope: !105)
!105 = distinct !DILexicalBlock(scope: !98, file: !45, line: 65, column: 5)
!106 = !DILocation(line: 67, column: 9, scope: !105)
!107 = !DILocation(line: 69, column: 1, scope: !52)
!108 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 78, type: !53, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!109 = !DILocalVariable(name: "data", scope: !108, file: !45, line: 80, type: !42)
!110 = !DILocation(line: 80, column: 12, scope: !108)
!111 = !DILocalVariable(name: "dataBuffer", scope: !108, file: !45, line: 81, type: !58)
!112 = !DILocation(line: 81, column: 10, scope: !108)
!113 = !DILocation(line: 82, column: 12, scope: !108)
!114 = !DILocation(line: 82, column: 10, scope: !108)
!115 = !DILocation(line: 83, column: 8, scope: !116)
!116 = distinct !DILexicalBlock(scope: !108, file: !45, line: 83, column: 8)
!117 = !DILocation(line: 83, column: 8, scope: !108)
!118 = !DILocalVariable(name: "dataLen", scope: !119, file: !45, line: 87, type: !70)
!119 = distinct !DILexicalBlock(scope: !120, file: !45, line: 85, column: 9)
!120 = distinct !DILexicalBlock(scope: !116, file: !45, line: 84, column: 5)
!121 = !DILocation(line: 87, column: 20, scope: !119)
!122 = !DILocation(line: 87, column: 37, scope: !119)
!123 = !DILocation(line: 87, column: 30, scope: !119)
!124 = !DILocalVariable(name: "environment", scope: !119, file: !45, line: 88, type: !42)
!125 = !DILocation(line: 88, column: 20, scope: !119)
!126 = !DILocation(line: 88, column: 34, scope: !119)
!127 = !DILocation(line: 90, column: 17, scope: !128)
!128 = distinct !DILexicalBlock(scope: !119, file: !45, line: 90, column: 17)
!129 = !DILocation(line: 90, column: 29, scope: !128)
!130 = !DILocation(line: 90, column: 17, scope: !119)
!131 = !DILocation(line: 93, column: 25, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !45, line: 91, column: 13)
!133 = !DILocation(line: 93, column: 30, scope: !132)
!134 = !DILocation(line: 93, column: 29, scope: !132)
!135 = !DILocation(line: 93, column: 39, scope: !132)
!136 = !DILocation(line: 93, column: 56, scope: !132)
!137 = !DILocation(line: 93, column: 55, scope: !132)
!138 = !DILocation(line: 93, column: 63, scope: !132)
!139 = !DILocation(line: 93, column: 17, scope: !132)
!140 = !DILocation(line: 94, column: 13, scope: !132)
!141 = !DILocation(line: 96, column: 5, scope: !120)
!142 = !DILocalVariable(name: "dataLen", scope: !143, file: !45, line: 101, type: !70)
!143 = distinct !DILexicalBlock(scope: !144, file: !45, line: 99, column: 9)
!144 = distinct !DILexicalBlock(scope: !116, file: !45, line: 98, column: 5)
!145 = !DILocation(line: 101, column: 20, scope: !143)
!146 = !DILocation(line: 101, column: 37, scope: !143)
!147 = !DILocation(line: 101, column: 30, scope: !143)
!148 = !DILocalVariable(name: "environment", scope: !143, file: !45, line: 102, type: !42)
!149 = !DILocation(line: 102, column: 20, scope: !143)
!150 = !DILocation(line: 102, column: 34, scope: !143)
!151 = !DILocation(line: 104, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !143, file: !45, line: 104, column: 17)
!153 = !DILocation(line: 104, column: 29, scope: !152)
!154 = !DILocation(line: 104, column: 17, scope: !143)
!155 = !DILocation(line: 107, column: 25, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !45, line: 105, column: 13)
!157 = !DILocation(line: 107, column: 30, scope: !156)
!158 = !DILocation(line: 107, column: 29, scope: !156)
!159 = !DILocation(line: 107, column: 39, scope: !156)
!160 = !DILocation(line: 107, column: 56, scope: !156)
!161 = !DILocation(line: 107, column: 55, scope: !156)
!162 = !DILocation(line: 107, column: 63, scope: !156)
!163 = !DILocation(line: 107, column: 17, scope: !156)
!164 = !DILocation(line: 108, column: 13, scope: !156)
!165 = !DILocation(line: 111, column: 8, scope: !166)
!166 = distinct !DILexicalBlock(scope: !108, file: !45, line: 111, column: 8)
!167 = !DILocation(line: 111, column: 8, scope: !108)
!168 = !DILocation(line: 114, column: 24, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !45, line: 112, column: 5)
!170 = !DILocation(line: 114, column: 9, scope: !169)
!171 = !DILocation(line: 115, column: 5, scope: !169)
!172 = !DILocation(line: 119, column: 24, scope: !173)
!173 = distinct !DILexicalBlock(scope: !166, file: !45, line: 117, column: 5)
!174 = !DILocation(line: 119, column: 9, scope: !173)
!175 = !DILocation(line: 121, column: 1, scope: !108)
!176 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 126, type: !53, scopeLine: 127, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!177 = !DILocalVariable(name: "data", scope: !176, file: !45, line: 128, type: !42)
!178 = !DILocation(line: 128, column: 12, scope: !176)
!179 = !DILocalVariable(name: "dataBuffer", scope: !176, file: !45, line: 129, type: !58)
!180 = !DILocation(line: 129, column: 10, scope: !176)
!181 = !DILocation(line: 130, column: 12, scope: !176)
!182 = !DILocation(line: 130, column: 10, scope: !176)
!183 = !DILocation(line: 131, column: 8, scope: !184)
!184 = distinct !DILexicalBlock(scope: !176, file: !45, line: 131, column: 8)
!185 = !DILocation(line: 131, column: 8, scope: !176)
!186 = !DILocation(line: 134, column: 16, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !45, line: 132, column: 5)
!188 = !DILocation(line: 134, column: 9, scope: !187)
!189 = !DILocation(line: 135, column: 5, scope: !187)
!190 = !DILocation(line: 139, column: 16, scope: !191)
!191 = distinct !DILexicalBlock(scope: !184, file: !45, line: 137, column: 5)
!192 = !DILocation(line: 139, column: 9, scope: !191)
!193 = !DILocation(line: 141, column: 8, scope: !194)
!194 = distinct !DILexicalBlock(scope: !176, file: !45, line: 141, column: 8)
!195 = !DILocation(line: 141, column: 8, scope: !176)
!196 = !DILocation(line: 144, column: 16, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !45, line: 142, column: 5)
!198 = !DILocation(line: 144, column: 9, scope: !197)
!199 = !DILocation(line: 145, column: 5, scope: !197)
!200 = !DILocation(line: 149, column: 16, scope: !201)
!201 = distinct !DILexicalBlock(scope: !194, file: !45, line: 147, column: 5)
!202 = !DILocation(line: 149, column: 9, scope: !201)
!203 = !DILocation(line: 151, column: 1, scope: !176)
!204 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_12_good", scope: !45, file: !45, line: 153, type: !53, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!205 = !DILocation(line: 155, column: 5, scope: !204)
!206 = !DILocation(line: 156, column: 5, scope: !204)
!207 = !DILocation(line: 157, column: 1, scope: !204)
!208 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !209, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !42}
!211 = !DILocalVariable(name: "line", arg: 1, scope: !208, file: !3, line: 11, type: !42)
!212 = !DILocation(line: 11, column: 25, scope: !208)
!213 = !DILocation(line: 13, column: 1, scope: !208)
!214 = !DILocation(line: 14, column: 8, scope: !215)
!215 = distinct !DILexicalBlock(scope: !208, file: !3, line: 14, column: 8)
!216 = !DILocation(line: 14, column: 13, scope: !215)
!217 = !DILocation(line: 14, column: 8, scope: !208)
!218 = !DILocation(line: 16, column: 24, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !3, line: 15, column: 5)
!220 = !DILocation(line: 16, column: 9, scope: !219)
!221 = !DILocation(line: 17, column: 5, scope: !219)
!222 = !DILocation(line: 18, column: 5, scope: !208)
!223 = !DILocation(line: 19, column: 1, scope: !208)
!224 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !209, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!225 = !DILocalVariable(name: "line", arg: 1, scope: !224, file: !3, line: 20, type: !42)
!226 = !DILocation(line: 20, column: 29, scope: !224)
!227 = !DILocation(line: 22, column: 8, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !3, line: 22, column: 8)
!229 = !DILocation(line: 22, column: 13, scope: !228)
!230 = !DILocation(line: 22, column: 8, scope: !224)
!231 = !DILocation(line: 24, column: 24, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !3, line: 23, column: 5)
!233 = !DILocation(line: 24, column: 9, scope: !232)
!234 = !DILocation(line: 25, column: 5, scope: !232)
!235 = !DILocation(line: 26, column: 1, scope: !224)
!236 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !237, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !239}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !71, line: 74, baseType: !23)
!241 = !DILocalVariable(name: "line", arg: 1, scope: !236, file: !3, line: 27, type: !239)
!242 = !DILocation(line: 27, column: 29, scope: !236)
!243 = !DILocation(line: 29, column: 8, scope: !244)
!244 = distinct !DILexicalBlock(scope: !236, file: !3, line: 29, column: 8)
!245 = !DILocation(line: 29, column: 13, scope: !244)
!246 = !DILocation(line: 29, column: 8, scope: !236)
!247 = !DILocation(line: 31, column: 27, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !3, line: 30, column: 5)
!249 = !DILocation(line: 31, column: 9, scope: !248)
!250 = !DILocation(line: 32, column: 5, scope: !248)
!251 = !DILocation(line: 33, column: 1, scope: !236)
!252 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !253, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !23}
!255 = !DILocalVariable(name: "intNumber", arg: 1, scope: !252, file: !3, line: 35, type: !23)
!256 = !DILocation(line: 35, column: 24, scope: !252)
!257 = !DILocation(line: 37, column: 20, scope: !252)
!258 = !DILocation(line: 37, column: 5, scope: !252)
!259 = !DILocation(line: 38, column: 1, scope: !252)
!260 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !261, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !263}
!263 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!264 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !260, file: !3, line: 40, type: !263)
!265 = !DILocation(line: 40, column: 28, scope: !260)
!266 = !DILocation(line: 42, column: 21, scope: !260)
!267 = !DILocation(line: 42, column: 5, scope: !260)
!268 = !DILocation(line: 43, column: 1, scope: !260)
!269 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !270, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !272}
!272 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!273 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !269, file: !3, line: 45, type: !272)
!274 = !DILocation(line: 45, column: 28, scope: !269)
!275 = !DILocation(line: 47, column: 20, scope: !269)
!276 = !DILocation(line: 47, column: 5, scope: !269)
!277 = !DILocation(line: 48, column: 1, scope: !269)
!278 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !279, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !281}
!281 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!282 = !DILocalVariable(name: "longNumber", arg: 1, scope: !278, file: !3, line: 50, type: !281)
!283 = !DILocation(line: 50, column: 26, scope: !278)
!284 = !DILocation(line: 52, column: 21, scope: !278)
!285 = !DILocation(line: 52, column: 5, scope: !278)
!286 = !DILocation(line: 53, column: 1, scope: !278)
!287 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !288, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !290}
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !291, line: 27, baseType: !292)
!291 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !293, line: 44, baseType: !281)
!293 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!294 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !287, file: !3, line: 55, type: !290)
!295 = !DILocation(line: 55, column: 33, scope: !287)
!296 = !DILocation(line: 57, column: 29, scope: !287)
!297 = !DILocation(line: 57, column: 5, scope: !287)
!298 = !DILocation(line: 58, column: 1, scope: !287)
!299 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !300, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !70}
!302 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !299, file: !3, line: 60, type: !70)
!303 = !DILocation(line: 60, column: 29, scope: !299)
!304 = !DILocation(line: 62, column: 21, scope: !299)
!305 = !DILocation(line: 62, column: 5, scope: !299)
!306 = !DILocation(line: 63, column: 1, scope: !299)
!307 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !308, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !43}
!310 = !DILocalVariable(name: "charHex", arg: 1, scope: !307, file: !3, line: 65, type: !43)
!311 = !DILocation(line: 65, column: 29, scope: !307)
!312 = !DILocation(line: 67, column: 22, scope: !307)
!313 = !DILocation(line: 67, column: 5, scope: !307)
!314 = !DILocation(line: 68, column: 1, scope: !307)
!315 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !316, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !240}
!318 = !DILocalVariable(name: "wideChar", arg: 1, scope: !315, file: !3, line: 70, type: !240)
!319 = !DILocation(line: 70, column: 29, scope: !315)
!320 = !DILocalVariable(name: "s", scope: !315, file: !3, line: 74, type: !321)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 64, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 2)
!324 = !DILocation(line: 74, column: 13, scope: !315)
!325 = !DILocation(line: 75, column: 16, scope: !315)
!326 = !DILocation(line: 75, column: 9, scope: !315)
!327 = !DILocation(line: 75, column: 14, scope: !315)
!328 = !DILocation(line: 76, column: 9, scope: !315)
!329 = !DILocation(line: 76, column: 14, scope: !315)
!330 = !DILocation(line: 77, column: 21, scope: !315)
!331 = !DILocation(line: 77, column: 5, scope: !315)
!332 = !DILocation(line: 78, column: 1, scope: !315)
!333 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !334, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !7}
!336 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !333, file: !3, line: 80, type: !7)
!337 = !DILocation(line: 80, column: 33, scope: !333)
!338 = !DILocation(line: 82, column: 20, scope: !333)
!339 = !DILocation(line: 82, column: 5, scope: !333)
!340 = !DILocation(line: 83, column: 1, scope: !333)
!341 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !342, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !25}
!344 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !341, file: !3, line: 85, type: !25)
!345 = !DILocation(line: 85, column: 45, scope: !341)
!346 = !DILocation(line: 87, column: 22, scope: !341)
!347 = !DILocation(line: 87, column: 5, scope: !341)
!348 = !DILocation(line: 88, column: 1, scope: !341)
!349 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !350, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !352}
!352 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!353 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !349, file: !3, line: 90, type: !352)
!354 = !DILocation(line: 90, column: 29, scope: !349)
!355 = !DILocation(line: 92, column: 20, scope: !349)
!356 = !DILocation(line: 92, column: 5, scope: !349)
!357 = !DILocation(line: 93, column: 1, scope: !349)
!358 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !359, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !363, line: 100, baseType: !364)
!363 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_733/source_code")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !363, line: 96, size: 64, elements: !365)
!365 = !{!366, !367}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !364, file: !363, line: 98, baseType: !23, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !364, file: !363, line: 99, baseType: !23, size: 32, offset: 32)
!368 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !358, file: !3, line: 95, type: !361)
!369 = !DILocation(line: 95, column: 40, scope: !358)
!370 = !DILocation(line: 97, column: 26, scope: !358)
!371 = !DILocation(line: 97, column: 47, scope: !358)
!372 = !DILocation(line: 97, column: 55, scope: !358)
!373 = !DILocation(line: 97, column: 76, scope: !358)
!374 = !DILocation(line: 97, column: 5, scope: !358)
!375 = !DILocation(line: 98, column: 1, scope: !358)
!376 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !377, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379, !70}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!380 = !DILocalVariable(name: "bytes", arg: 1, scope: !376, file: !3, line: 100, type: !379)
!381 = !DILocation(line: 100, column: 38, scope: !376)
!382 = !DILocalVariable(name: "numBytes", arg: 2, scope: !376, file: !3, line: 100, type: !70)
!383 = !DILocation(line: 100, column: 52, scope: !376)
!384 = !DILocalVariable(name: "i", scope: !376, file: !3, line: 102, type: !70)
!385 = !DILocation(line: 102, column: 12, scope: !376)
!386 = !DILocation(line: 103, column: 12, scope: !387)
!387 = distinct !DILexicalBlock(scope: !376, file: !3, line: 103, column: 5)
!388 = !DILocation(line: 103, column: 10, scope: !387)
!389 = !DILocation(line: 103, column: 17, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !3, line: 103, column: 5)
!391 = !DILocation(line: 103, column: 21, scope: !390)
!392 = !DILocation(line: 103, column: 19, scope: !390)
!393 = !DILocation(line: 103, column: 5, scope: !387)
!394 = !DILocation(line: 105, column: 24, scope: !395)
!395 = distinct !DILexicalBlock(scope: !390, file: !3, line: 104, column: 5)
!396 = !DILocation(line: 105, column: 30, scope: !395)
!397 = !DILocation(line: 105, column: 9, scope: !395)
!398 = !DILocation(line: 106, column: 5, scope: !395)
!399 = !DILocation(line: 103, column: 31, scope: !390)
!400 = !DILocation(line: 103, column: 5, scope: !390)
!401 = distinct !{!401, !393, !402, !403}
!402 = !DILocation(line: 106, column: 5, scope: !387)
!403 = !{!"llvm.loop.mustprogress"}
!404 = !DILocation(line: 107, column: 5, scope: !376)
!405 = !DILocation(line: 108, column: 1, scope: !376)
!406 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !407, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!407 = !DISubroutineType(types: !408)
!408 = !{!70, !379, !70, !42}
!409 = !DILocalVariable(name: "bytes", arg: 1, scope: !406, file: !3, line: 113, type: !379)
!410 = !DILocation(line: 113, column: 39, scope: !406)
!411 = !DILocalVariable(name: "numBytes", arg: 2, scope: !406, file: !3, line: 113, type: !70)
!412 = !DILocation(line: 113, column: 53, scope: !406)
!413 = !DILocalVariable(name: "hex", arg: 3, scope: !406, file: !3, line: 113, type: !42)
!414 = !DILocation(line: 113, column: 71, scope: !406)
!415 = !DILocalVariable(name: "numWritten", scope: !406, file: !3, line: 115, type: !70)
!416 = !DILocation(line: 115, column: 12, scope: !406)
!417 = !DILocation(line: 121, column: 5, scope: !406)
!418 = !DILocation(line: 121, column: 12, scope: !406)
!419 = !DILocation(line: 121, column: 25, scope: !406)
!420 = !DILocation(line: 121, column: 23, scope: !406)
!421 = !DILocation(line: 121, column: 34, scope: !406)
!422 = !DILocation(line: 121, column: 37, scope: !406)
!423 = !DILocation(line: 121, column: 67, scope: !406)
!424 = !DILocation(line: 121, column: 70, scope: !406)
!425 = !DILocation(line: 0, scope: !406)
!426 = !DILocalVariable(name: "byte", scope: !427, file: !3, line: 123, type: !23)
!427 = distinct !DILexicalBlock(scope: !406, file: !3, line: 122, column: 5)
!428 = !DILocation(line: 123, column: 13, scope: !427)
!429 = !DILocation(line: 124, column: 17, scope: !427)
!430 = !DILocation(line: 124, column: 25, scope: !427)
!431 = !DILocation(line: 124, column: 23, scope: !427)
!432 = !DILocation(line: 124, column: 9, scope: !427)
!433 = !DILocation(line: 125, column: 45, scope: !427)
!434 = !DILocation(line: 125, column: 29, scope: !427)
!435 = !DILocation(line: 125, column: 9, scope: !427)
!436 = !DILocation(line: 125, column: 15, scope: !427)
!437 = !DILocation(line: 125, column: 27, scope: !427)
!438 = !DILocation(line: 126, column: 9, scope: !427)
!439 = distinct !{!439, !417, !440, !403}
!440 = !DILocation(line: 127, column: 5, scope: !406)
!441 = !DILocation(line: 129, column: 12, scope: !406)
!442 = !DILocation(line: 129, column: 5, scope: !406)
!443 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !444, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!444 = !DISubroutineType(types: !445)
!445 = !{!70, !379, !70, !239}
!446 = !DILocalVariable(name: "bytes", arg: 1, scope: !443, file: !3, line: 135, type: !379)
!447 = !DILocation(line: 135, column: 41, scope: !443)
!448 = !DILocalVariable(name: "numBytes", arg: 2, scope: !443, file: !3, line: 135, type: !70)
!449 = !DILocation(line: 135, column: 55, scope: !443)
!450 = !DILocalVariable(name: "hex", arg: 3, scope: !443, file: !3, line: 135, type: !239)
!451 = !DILocation(line: 135, column: 76, scope: !443)
!452 = !DILocalVariable(name: "numWritten", scope: !443, file: !3, line: 137, type: !70)
!453 = !DILocation(line: 137, column: 12, scope: !443)
!454 = !DILocation(line: 143, column: 5, scope: !443)
!455 = !DILocation(line: 143, column: 12, scope: !443)
!456 = !DILocation(line: 143, column: 25, scope: !443)
!457 = !DILocation(line: 143, column: 23, scope: !443)
!458 = !DILocation(line: 143, column: 34, scope: !443)
!459 = !DILocation(line: 143, column: 47, scope: !443)
!460 = !DILocation(line: 143, column: 55, scope: !443)
!461 = !DILocation(line: 143, column: 53, scope: !443)
!462 = !DILocation(line: 143, column: 37, scope: !443)
!463 = !DILocation(line: 143, column: 68, scope: !443)
!464 = !DILocation(line: 143, column: 81, scope: !443)
!465 = !DILocation(line: 143, column: 89, scope: !443)
!466 = !DILocation(line: 143, column: 87, scope: !443)
!467 = !DILocation(line: 143, column: 100, scope: !443)
!468 = !DILocation(line: 143, column: 71, scope: !443)
!469 = !DILocation(line: 0, scope: !443)
!470 = !DILocalVariable(name: "byte", scope: !471, file: !3, line: 145, type: !23)
!471 = distinct !DILexicalBlock(scope: !443, file: !3, line: 144, column: 5)
!472 = !DILocation(line: 145, column: 13, scope: !471)
!473 = !DILocation(line: 146, column: 18, scope: !471)
!474 = !DILocation(line: 146, column: 26, scope: !471)
!475 = !DILocation(line: 146, column: 24, scope: !471)
!476 = !DILocation(line: 146, column: 9, scope: !471)
!477 = !DILocation(line: 147, column: 45, scope: !471)
!478 = !DILocation(line: 147, column: 29, scope: !471)
!479 = !DILocation(line: 147, column: 9, scope: !471)
!480 = !DILocation(line: 147, column: 15, scope: !471)
!481 = !DILocation(line: 147, column: 27, scope: !471)
!482 = !DILocation(line: 148, column: 9, scope: !471)
!483 = distinct !{!483, !454, !484, !403}
!484 = !DILocation(line: 149, column: 5, scope: !443)
!485 = !DILocation(line: 151, column: 12, scope: !443)
!486 = !DILocation(line: 151, column: 5, scope: !443)
!487 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !488, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!488 = !DISubroutineType(types: !489)
!489 = !{!23}
!490 = !DILocation(line: 158, column: 5, scope: !487)
!491 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !488, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!492 = !DILocation(line: 163, column: 5, scope: !491)
!493 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !488, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!494 = !DILocation(line: 168, column: 13, scope: !493)
!495 = !DILocation(line: 168, column: 20, scope: !493)
!496 = !DILocation(line: 168, column: 5, scope: !493)
!497 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!498 = !DILocation(line: 187, column: 16, scope: !497)
!499 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!500 = !DILocation(line: 188, column: 16, scope: !499)
!501 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!502 = !DILocation(line: 189, column: 16, scope: !501)
!503 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!504 = !DILocation(line: 190, column: 16, scope: !503)
!505 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!506 = !DILocation(line: 191, column: 16, scope: !505)
!507 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!508 = !DILocation(line: 192, column: 16, scope: !507)
!509 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!510 = !DILocation(line: 193, column: 16, scope: !509)
!511 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!512 = !DILocation(line: 194, column: 16, scope: !511)
!513 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!514 = !DILocation(line: 195, column: 16, scope: !513)
!515 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!516 = !DILocation(line: 198, column: 15, scope: !515)
!517 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!518 = !DILocation(line: 199, column: 15, scope: !517)
!519 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DILocation(line: 200, column: 15, scope: !519)
!521 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DILocation(line: 201, column: 15, scope: !521)
!523 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!524 = !DILocation(line: 202, column: 15, scope: !523)
!525 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DILocation(line: 203, column: 15, scope: !525)
!527 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!528 = !DILocation(line: 204, column: 15, scope: !527)
!529 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DILocation(line: 205, column: 15, scope: !529)
!531 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DILocation(line: 206, column: 15, scope: !531)
