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
define dso_local void @badSink(i8* %data) #0 !dbg !52 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !55, metadata !DIExpression()), !dbg !56
  %0 = load i8*, i8** %data.addr, align 8, !dbg !57
  %call = call i32 (i8*, ...) @printf(i8* %0), !dbg !58
  ret void, !dbg !59
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_44_bad() #0 !dbg !60 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !65, metadata !DIExpression()), !dbg !67
  store void (i8*)* @badSink, void (i8*)** %funcPtr, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !68, metadata !DIExpression()), !dbg !72
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !72
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !72
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !73
  store i8* %arraydecay, i8** %data, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !75, metadata !DIExpression()), !dbg !80
  %1 = load i8*, i8** %data, align 8, !dbg !81
  %call = call i64 @strlen(i8* %1) #7, !dbg !82
  store i64 %call, i64* %dataLen, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !83, metadata !DIExpression()), !dbg !84
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !85
  store i8* %call1, i8** %environment, align 8, !dbg !84
  %2 = load i8*, i8** %environment, align 8, !dbg !86
  %cmp = icmp ne i8* %2, null, !dbg !88
  br i1 %cmp, label %if.then, label %if.end, !dbg !89

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !90
  %4 = load i64, i64* %dataLen, align 8, !dbg !92
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !93
  %5 = load i8*, i8** %environment, align 8, !dbg !94
  %6 = load i64, i64* %dataLen, align 8, !dbg !95
  %sub = sub i64 100, %6, !dbg !96
  %sub2 = sub i64 %sub, 1, !dbg !97
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !98
  br label %if.end, !dbg !99

if.end:                                           ; preds = %if.then, %entry
  %7 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !100
  %8 = load i8*, i8** %data, align 8, !dbg !101
  call void %7(i8* %8), !dbg !100
  ret void, !dbg !102
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !103 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !104, metadata !DIExpression()), !dbg !105
  %0 = load i8*, i8** %data.addr, align 8, !dbg !106
  %call = call i32 (i8*, ...) @printf(i8* %0), !dbg !107
  ret void, !dbg !108
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !109 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !112, metadata !DIExpression()), !dbg !113
  store void (i8*)* @goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !113
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !114, metadata !DIExpression()), !dbg !115
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !115
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !115
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !116
  store i8* %arraydecay, i8** %data, align 8, !dbg !117
  %1 = load i8*, i8** %data, align 8, !dbg !118
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !119
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !120
  %3 = load i8*, i8** %data, align 8, !dbg !121
  call void %2(i8* %3), !dbg !120
  ret void, !dbg !122
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !123 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !124, metadata !DIExpression()), !dbg !125
  %0 = load i8*, i8** %data.addr, align 8, !dbg !126
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %0), !dbg !127
  ret void, !dbg !128
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !129 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !132, metadata !DIExpression()), !dbg !133
  store void (i8*)* @goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !133
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !134, metadata !DIExpression()), !dbg !135
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !135
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !135
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !136
  store i8* %arraydecay, i8** %data, align 8, !dbg !137
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !138, metadata !DIExpression()), !dbg !140
  %1 = load i8*, i8** %data, align 8, !dbg !141
  %call = call i64 @strlen(i8* %1) #7, !dbg !142
  store i64 %call, i64* %dataLen, align 8, !dbg !140
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !143, metadata !DIExpression()), !dbg !144
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !145
  store i8* %call1, i8** %environment, align 8, !dbg !144
  %2 = load i8*, i8** %environment, align 8, !dbg !146
  %cmp = icmp ne i8* %2, null, !dbg !148
  br i1 %cmp, label %if.then, label %if.end, !dbg !149

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !150
  %4 = load i64, i64* %dataLen, align 8, !dbg !152
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !153
  %5 = load i8*, i8** %environment, align 8, !dbg !154
  %6 = load i64, i64* %dataLen, align 8, !dbg !155
  %sub = sub i64 100, %6, !dbg !156
  %sub2 = sub i64 %sub, 1, !dbg !157
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !158
  br label %if.end, !dbg !159

if.end:                                           ; preds = %if.then, %entry
  %7 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !160
  %8 = load i8*, i8** %data, align 8, !dbg !161
  call void %7(i8* %8), !dbg !160
  ret void, !dbg !162
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_44_good() #0 !dbg !163 {
entry:
  call void @goodG2B(), !dbg !164
  call void @goodB2G(), !dbg !165
  ret void, !dbg !166
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !167 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !168, metadata !DIExpression()), !dbg !169
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !170
  %0 = load i8*, i8** %line.addr, align 8, !dbg !171
  %cmp = icmp ne i8* %0, null, !dbg !173
  br i1 %cmp, label %if.then, label %if.end, !dbg !174

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !175
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !177
  br label %if.end, !dbg !178

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !179
  ret void, !dbg !180
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !181 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !182, metadata !DIExpression()), !dbg !183
  %0 = load i8*, i8** %line.addr, align 8, !dbg !184
  %cmp = icmp ne i8* %0, null, !dbg !186
  br i1 %cmp, label %if.then, label %if.end, !dbg !187

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !188
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !190
  br label %if.end, !dbg !191

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !192
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !193 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !198, metadata !DIExpression()), !dbg !199
  %0 = load i32*, i32** %line.addr, align 8, !dbg !200
  %cmp = icmp ne i32* %0, null, !dbg !202
  br i1 %cmp, label %if.then, label %if.end, !dbg !203

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !204
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !206
  br label %if.end, !dbg !207

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !208
}

declare dso_local i32 @wprintf(i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !209 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !212, metadata !DIExpression()), !dbg !213
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !214
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !215
  ret void, !dbg !216
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !217 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !221, metadata !DIExpression()), !dbg !222
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !223
  %conv = sext i16 %0 to i32, !dbg !223
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !224
  ret void, !dbg !225
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !226 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !230, metadata !DIExpression()), !dbg !231
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !232
  %conv = fpext float %0 to double, !dbg !232
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !233
  ret void, !dbg !234
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !235 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !239, metadata !DIExpression()), !dbg !240
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !241
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !242
  ret void, !dbg !243
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !244 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !251, metadata !DIExpression()), !dbg !252
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !253
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !254
  ret void, !dbg !255
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !256 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !259, metadata !DIExpression()), !dbg !260
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !261
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !262
  ret void, !dbg !263
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !264 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !267, metadata !DIExpression()), !dbg !268
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !269
  %conv = sext i8 %0 to i32, !dbg !269
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !270
  ret void, !dbg !271
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !272 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !277, metadata !DIExpression()), !dbg !281
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !282
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !283
  store i32 %0, i32* %arrayidx, align 4, !dbg !284
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !285
  store i32 0, i32* %arrayidx1, align 4, !dbg !286
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !287
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !288
  ret void, !dbg !289
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !290 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !293, metadata !DIExpression()), !dbg !294
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !295
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !296
  ret void, !dbg !297
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !298 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !301, metadata !DIExpression()), !dbg !302
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !303
  %conv = zext i8 %0 to i32, !dbg !303
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !304
  ret void, !dbg !305
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !306 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !310, metadata !DIExpression()), !dbg !311
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !312
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !313
  ret void, !dbg !314
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !315 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !325, metadata !DIExpression()), !dbg !326
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !327
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !328
  %1 = load i32, i32* %intOne, align 4, !dbg !328
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !329
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !330
  %3 = load i32, i32* %intTwo, align 4, !dbg !330
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !331
  ret void, !dbg !332
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !333 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !337, metadata !DIExpression()), !dbg !338
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !339, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata i64* %i, metadata !341, metadata !DIExpression()), !dbg !342
  store i64 0, i64* %i, align 8, !dbg !343
  br label %for.cond, !dbg !345

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !346
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !348
  %cmp = icmp ult i64 %0, %1, !dbg !349
  br i1 %cmp, label %for.body, label %for.end, !dbg !350

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !351
  %3 = load i64, i64* %i, align 8, !dbg !353
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !351
  %4 = load i8, i8* %arrayidx, align 1, !dbg !351
  %conv = zext i8 %4 to i32, !dbg !351
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !354
  br label %for.inc, !dbg !355

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !356
  %inc = add i64 %5, 1, !dbg !356
  store i64 %inc, i64* %i, align 8, !dbg !356
  br label %for.cond, !dbg !357, !llvm.loop !358

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !361
  ret void, !dbg !362
}

declare dso_local i32 @puts(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !363 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !366, metadata !DIExpression()), !dbg !367
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !368, metadata !DIExpression()), !dbg !369
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !370, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !372, metadata !DIExpression()), !dbg !373
  store i64 0, i64* %numWritten, align 8, !dbg !373
  br label %while.cond, !dbg !374

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !375
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !376
  %cmp = icmp ult i64 %0, %1, !dbg !377
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !378

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !379
  %2 = load i16*, i16** %call, align 8, !dbg !379
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !379
  %4 = load i64, i64* %numWritten, align 8, !dbg !379
  %mul = mul i64 2, %4, !dbg !379
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !379
  %5 = load i8, i8* %arrayidx, align 1, !dbg !379
  %conv = sext i8 %5 to i32, !dbg !379
  %idxprom = sext i32 %conv to i64, !dbg !379
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !379
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !379
  %conv2 = zext i16 %6 to i32, !dbg !379
  %and = and i32 %conv2, 4096, !dbg !379
  %tobool = icmp ne i32 %and, 0, !dbg !379
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !380

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !381
  %7 = load i16*, i16** %call3, align 8, !dbg !381
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !381
  %9 = load i64, i64* %numWritten, align 8, !dbg !381
  %mul4 = mul i64 2, %9, !dbg !381
  %add = add i64 %mul4, 1, !dbg !381
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !381
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !381
  %conv6 = sext i8 %10 to i32, !dbg !381
  %idxprom7 = sext i32 %conv6 to i64, !dbg !381
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !381
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !381
  %conv9 = zext i16 %11 to i32, !dbg !381
  %and10 = and i32 %conv9, 4096, !dbg !381
  %tobool11 = icmp ne i32 %and10, 0, !dbg !380
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !382
  br i1 %12, label %while.body, label %while.end, !dbg !374

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !383, metadata !DIExpression()), !dbg !385
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !386
  %14 = load i64, i64* %numWritten, align 8, !dbg !387
  %mul12 = mul i64 2, %14, !dbg !388
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !386
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !389
  %15 = load i32, i32* %byte, align 4, !dbg !390
  %conv15 = trunc i32 %15 to i8, !dbg !391
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !392
  %17 = load i64, i64* %numWritten, align 8, !dbg !393
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !392
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !394
  %18 = load i64, i64* %numWritten, align 8, !dbg !395
  %inc = add i64 %18, 1, !dbg !395
  store i64 %inc, i64* %numWritten, align 8, !dbg !395
  br label %while.cond, !dbg !374, !llvm.loop !396

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !398
  ret i64 %19, !dbg !399
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !400 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !403, metadata !DIExpression()), !dbg !404
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !405, metadata !DIExpression()), !dbg !406
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !407, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !409, metadata !DIExpression()), !dbg !410
  store i64 0, i64* %numWritten, align 8, !dbg !410
  br label %while.cond, !dbg !411

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !412
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !413
  %cmp = icmp ult i64 %0, %1, !dbg !414
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !415

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !416
  %3 = load i64, i64* %numWritten, align 8, !dbg !417
  %mul = mul i64 2, %3, !dbg !418
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !416
  %4 = load i32, i32* %arrayidx, align 4, !dbg !416
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !419
  %tobool = icmp ne i32 %call, 0, !dbg !419
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !420

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !421
  %6 = load i64, i64* %numWritten, align 8, !dbg !422
  %mul1 = mul i64 2, %6, !dbg !423
  %add = add i64 %mul1, 1, !dbg !424
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !421
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !421
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !425
  %tobool4 = icmp ne i32 %call3, 0, !dbg !420
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !426
  br i1 %8, label %while.body, label %while.end, !dbg !411

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !427, metadata !DIExpression()), !dbg !429
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !430
  %10 = load i64, i64* %numWritten, align 8, !dbg !431
  %mul5 = mul i64 2, %10, !dbg !432
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !430
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !433
  %11 = load i32, i32* %byte, align 4, !dbg !434
  %conv = trunc i32 %11 to i8, !dbg !435
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !436
  %13 = load i64, i64* %numWritten, align 8, !dbg !437
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !436
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !438
  %14 = load i64, i64* %numWritten, align 8, !dbg !439
  %inc = add i64 %14, 1, !dbg !439
  store i64 %inc, i64* %numWritten, align 8, !dbg !439
  br label %while.cond, !dbg !411, !llvm.loop !440

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !442
  ret i64 %15, !dbg !443
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !444 {
entry:
  ret i32 1, !dbg !447
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !448 {
entry:
  ret i32 0, !dbg !449
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !450 {
entry:
  %call = call i32 @rand() #8, !dbg !451
  %rem = srem i32 %call, 2, !dbg !452
  ret i32 %rem, !dbg !453
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !454 {
entry:
  ret void, !dbg !455
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !456 {
entry:
  ret void, !dbg !457
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !458 {
entry:
  ret void, !dbg !459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !460 {
entry:
  ret void, !dbg !461
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !462 {
entry:
  ret void, !dbg !463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !464 {
entry:
  ret void, !dbg !465
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !466 {
entry:
  ret void, !dbg !467
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !468 {
entry:
  ret void, !dbg !469
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !470 {
entry:
  ret void, !dbg !471
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !472 {
entry:
  ret void, !dbg !473
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !474 {
entry:
  ret void, !dbg !475
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !476 {
entry:
  ret void, !dbg !477
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !478 {
entry:
  ret void, !dbg !479
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !480 {
entry:
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !482 {
entry:
  ret void, !dbg !483
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !484 {
entry:
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !486 {
entry:
  ret void, !dbg !487
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !488 {
entry:
  ret void, !dbg !489
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_749/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_44.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_749/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "badSink", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !42}
!55 = !DILocalVariable(name: "data", arg: 1, scope: !52, file: !45, line: 35, type: !42)
!56 = !DILocation(line: 35, column: 21, scope: !52)
!57 = !DILocation(line: 38, column: 12, scope: !52)
!58 = !DILocation(line: 38, column: 5, scope: !52)
!59 = !DILocation(line: 39, column: 1, scope: !52)
!60 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_44_bad", scope: !45, file: !45, line: 41, type: !61, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!61 = !DISubroutineType(types: !62)
!62 = !{null}
!63 = !DILocalVariable(name: "data", scope: !60, file: !45, line: 43, type: !42)
!64 = !DILocation(line: 43, column: 12, scope: !60)
!65 = !DILocalVariable(name: "funcPtr", scope: !60, file: !45, line: 45, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!67 = !DILocation(line: 45, column: 12, scope: !60)
!68 = !DILocalVariable(name: "dataBuffer", scope: !60, file: !45, line: 46, type: !69)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 100)
!72 = !DILocation(line: 46, column: 10, scope: !60)
!73 = !DILocation(line: 47, column: 12, scope: !60)
!74 = !DILocation(line: 47, column: 10, scope: !60)
!75 = !DILocalVariable(name: "dataLen", scope: !76, file: !45, line: 50, type: !77)
!76 = distinct !DILexicalBlock(scope: !60, file: !45, line: 48, column: 5)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 46, baseType: !79)
!78 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!79 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !DILocation(line: 50, column: 16, scope: !76)
!81 = !DILocation(line: 50, column: 33, scope: !76)
!82 = !DILocation(line: 50, column: 26, scope: !76)
!83 = !DILocalVariable(name: "environment", scope: !76, file: !45, line: 51, type: !42)
!84 = !DILocation(line: 51, column: 16, scope: !76)
!85 = !DILocation(line: 51, column: 30, scope: !76)
!86 = !DILocation(line: 53, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !76, file: !45, line: 53, column: 13)
!88 = !DILocation(line: 53, column: 25, scope: !87)
!89 = !DILocation(line: 53, column: 13, scope: !76)
!90 = !DILocation(line: 56, column: 21, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !45, line: 54, column: 9)
!92 = !DILocation(line: 56, column: 26, scope: !91)
!93 = !DILocation(line: 56, column: 25, scope: !91)
!94 = !DILocation(line: 56, column: 35, scope: !91)
!95 = !DILocation(line: 56, column: 52, scope: !91)
!96 = !DILocation(line: 56, column: 51, scope: !91)
!97 = !DILocation(line: 56, column: 59, scope: !91)
!98 = !DILocation(line: 56, column: 13, scope: !91)
!99 = !DILocation(line: 57, column: 9, scope: !91)
!100 = !DILocation(line: 60, column: 5, scope: !60)
!101 = !DILocation(line: 60, column: 13, scope: !60)
!102 = !DILocation(line: 61, column: 1, scope: !60)
!103 = distinct !DISubprogram(name: "goodG2BSink", scope: !45, file: !45, line: 68, type: !53, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!104 = !DILocalVariable(name: "data", arg: 1, scope: !103, file: !45, line: 68, type: !42)
!105 = !DILocation(line: 68, column: 25, scope: !103)
!106 = !DILocation(line: 71, column: 12, scope: !103)
!107 = !DILocation(line: 71, column: 5, scope: !103)
!108 = !DILocation(line: 72, column: 1, scope: !103)
!109 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 74, type: !61, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!110 = !DILocalVariable(name: "data", scope: !109, file: !45, line: 76, type: !42)
!111 = !DILocation(line: 76, column: 12, scope: !109)
!112 = !DILocalVariable(name: "funcPtr", scope: !109, file: !45, line: 77, type: !66)
!113 = !DILocation(line: 77, column: 12, scope: !109)
!114 = !DILocalVariable(name: "dataBuffer", scope: !109, file: !45, line: 78, type: !69)
!115 = !DILocation(line: 78, column: 10, scope: !109)
!116 = !DILocation(line: 79, column: 12, scope: !109)
!117 = !DILocation(line: 79, column: 10, scope: !109)
!118 = !DILocation(line: 81, column: 12, scope: !109)
!119 = !DILocation(line: 81, column: 5, scope: !109)
!120 = !DILocation(line: 82, column: 5, scope: !109)
!121 = !DILocation(line: 82, column: 13, scope: !109)
!122 = !DILocation(line: 83, column: 1, scope: !109)
!123 = distinct !DISubprogram(name: "goodB2GSink", scope: !45, file: !45, line: 86, type: !53, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!124 = !DILocalVariable(name: "data", arg: 1, scope: !123, file: !45, line: 86, type: !42)
!125 = !DILocation(line: 86, column: 25, scope: !123)
!126 = !DILocation(line: 89, column: 20, scope: !123)
!127 = !DILocation(line: 89, column: 5, scope: !123)
!128 = !DILocation(line: 90, column: 1, scope: !123)
!129 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 92, type: !61, scopeLine: 93, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!130 = !DILocalVariable(name: "data", scope: !129, file: !45, line: 94, type: !42)
!131 = !DILocation(line: 94, column: 12, scope: !129)
!132 = !DILocalVariable(name: "funcPtr", scope: !129, file: !45, line: 95, type: !66)
!133 = !DILocation(line: 95, column: 12, scope: !129)
!134 = !DILocalVariable(name: "dataBuffer", scope: !129, file: !45, line: 96, type: !69)
!135 = !DILocation(line: 96, column: 10, scope: !129)
!136 = !DILocation(line: 97, column: 12, scope: !129)
!137 = !DILocation(line: 97, column: 10, scope: !129)
!138 = !DILocalVariable(name: "dataLen", scope: !139, file: !45, line: 100, type: !77)
!139 = distinct !DILexicalBlock(scope: !129, file: !45, line: 98, column: 5)
!140 = !DILocation(line: 100, column: 16, scope: !139)
!141 = !DILocation(line: 100, column: 33, scope: !139)
!142 = !DILocation(line: 100, column: 26, scope: !139)
!143 = !DILocalVariable(name: "environment", scope: !139, file: !45, line: 101, type: !42)
!144 = !DILocation(line: 101, column: 16, scope: !139)
!145 = !DILocation(line: 101, column: 30, scope: !139)
!146 = !DILocation(line: 103, column: 13, scope: !147)
!147 = distinct !DILexicalBlock(scope: !139, file: !45, line: 103, column: 13)
!148 = !DILocation(line: 103, column: 25, scope: !147)
!149 = !DILocation(line: 103, column: 13, scope: !139)
!150 = !DILocation(line: 106, column: 21, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !45, line: 104, column: 9)
!152 = !DILocation(line: 106, column: 26, scope: !151)
!153 = !DILocation(line: 106, column: 25, scope: !151)
!154 = !DILocation(line: 106, column: 35, scope: !151)
!155 = !DILocation(line: 106, column: 52, scope: !151)
!156 = !DILocation(line: 106, column: 51, scope: !151)
!157 = !DILocation(line: 106, column: 59, scope: !151)
!158 = !DILocation(line: 106, column: 13, scope: !151)
!159 = !DILocation(line: 107, column: 9, scope: !151)
!160 = !DILocation(line: 109, column: 5, scope: !129)
!161 = !DILocation(line: 109, column: 13, scope: !129)
!162 = !DILocation(line: 110, column: 1, scope: !129)
!163 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_44_good", scope: !45, file: !45, line: 112, type: !61, scopeLine: 113, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!164 = !DILocation(line: 114, column: 5, scope: !163)
!165 = !DILocation(line: 115, column: 5, scope: !163)
!166 = !DILocation(line: 116, column: 1, scope: !163)
!167 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !53, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!168 = !DILocalVariable(name: "line", arg: 1, scope: !167, file: !3, line: 11, type: !42)
!169 = !DILocation(line: 11, column: 25, scope: !167)
!170 = !DILocation(line: 13, column: 1, scope: !167)
!171 = !DILocation(line: 14, column: 8, scope: !172)
!172 = distinct !DILexicalBlock(scope: !167, file: !3, line: 14, column: 8)
!173 = !DILocation(line: 14, column: 13, scope: !172)
!174 = !DILocation(line: 14, column: 8, scope: !167)
!175 = !DILocation(line: 16, column: 24, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !3, line: 15, column: 5)
!177 = !DILocation(line: 16, column: 9, scope: !176)
!178 = !DILocation(line: 17, column: 5, scope: !176)
!179 = !DILocation(line: 18, column: 5, scope: !167)
!180 = !DILocation(line: 19, column: 1, scope: !167)
!181 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !53, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!182 = !DILocalVariable(name: "line", arg: 1, scope: !181, file: !3, line: 20, type: !42)
!183 = !DILocation(line: 20, column: 29, scope: !181)
!184 = !DILocation(line: 22, column: 8, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !3, line: 22, column: 8)
!186 = !DILocation(line: 22, column: 13, scope: !185)
!187 = !DILocation(line: 22, column: 8, scope: !181)
!188 = !DILocation(line: 24, column: 24, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !3, line: 23, column: 5)
!190 = !DILocation(line: 24, column: 9, scope: !189)
!191 = !DILocation(line: 25, column: 5, scope: !189)
!192 = !DILocation(line: 26, column: 1, scope: !181)
!193 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !194, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !196}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !78, line: 74, baseType: !23)
!198 = !DILocalVariable(name: "line", arg: 1, scope: !193, file: !3, line: 27, type: !196)
!199 = !DILocation(line: 27, column: 29, scope: !193)
!200 = !DILocation(line: 29, column: 8, scope: !201)
!201 = distinct !DILexicalBlock(scope: !193, file: !3, line: 29, column: 8)
!202 = !DILocation(line: 29, column: 13, scope: !201)
!203 = !DILocation(line: 29, column: 8, scope: !193)
!204 = !DILocation(line: 31, column: 27, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !3, line: 30, column: 5)
!206 = !DILocation(line: 31, column: 9, scope: !205)
!207 = !DILocation(line: 32, column: 5, scope: !205)
!208 = !DILocation(line: 33, column: 1, scope: !193)
!209 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !210, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !23}
!212 = !DILocalVariable(name: "intNumber", arg: 1, scope: !209, file: !3, line: 35, type: !23)
!213 = !DILocation(line: 35, column: 24, scope: !209)
!214 = !DILocation(line: 37, column: 20, scope: !209)
!215 = !DILocation(line: 37, column: 5, scope: !209)
!216 = !DILocation(line: 38, column: 1, scope: !209)
!217 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !218, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !220}
!220 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!221 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !217, file: !3, line: 40, type: !220)
!222 = !DILocation(line: 40, column: 28, scope: !217)
!223 = !DILocation(line: 42, column: 21, scope: !217)
!224 = !DILocation(line: 42, column: 5, scope: !217)
!225 = !DILocation(line: 43, column: 1, scope: !217)
!226 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !227, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !229}
!229 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!230 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !226, file: !3, line: 45, type: !229)
!231 = !DILocation(line: 45, column: 28, scope: !226)
!232 = !DILocation(line: 47, column: 20, scope: !226)
!233 = !DILocation(line: 47, column: 5, scope: !226)
!234 = !DILocation(line: 48, column: 1, scope: !226)
!235 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !236, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !238}
!238 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!239 = !DILocalVariable(name: "longNumber", arg: 1, scope: !235, file: !3, line: 50, type: !238)
!240 = !DILocation(line: 50, column: 26, scope: !235)
!241 = !DILocation(line: 52, column: 21, scope: !235)
!242 = !DILocation(line: 52, column: 5, scope: !235)
!243 = !DILocation(line: 53, column: 1, scope: !235)
!244 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !245, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !247}
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !248, line: 27, baseType: !249)
!248 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !250, line: 44, baseType: !238)
!250 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!251 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !244, file: !3, line: 55, type: !247)
!252 = !DILocation(line: 55, column: 33, scope: !244)
!253 = !DILocation(line: 57, column: 29, scope: !244)
!254 = !DILocation(line: 57, column: 5, scope: !244)
!255 = !DILocation(line: 58, column: 1, scope: !244)
!256 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !257, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !77}
!259 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !256, file: !3, line: 60, type: !77)
!260 = !DILocation(line: 60, column: 29, scope: !256)
!261 = !DILocation(line: 62, column: 21, scope: !256)
!262 = !DILocation(line: 62, column: 5, scope: !256)
!263 = !DILocation(line: 63, column: 1, scope: !256)
!264 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !265, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !43}
!267 = !DILocalVariable(name: "charHex", arg: 1, scope: !264, file: !3, line: 65, type: !43)
!268 = !DILocation(line: 65, column: 29, scope: !264)
!269 = !DILocation(line: 67, column: 22, scope: !264)
!270 = !DILocation(line: 67, column: 5, scope: !264)
!271 = !DILocation(line: 68, column: 1, scope: !264)
!272 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !273, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !197}
!275 = !DILocalVariable(name: "wideChar", arg: 1, scope: !272, file: !3, line: 70, type: !197)
!276 = !DILocation(line: 70, column: 29, scope: !272)
!277 = !DILocalVariable(name: "s", scope: !272, file: !3, line: 74, type: !278)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 64, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 2)
!281 = !DILocation(line: 74, column: 13, scope: !272)
!282 = !DILocation(line: 75, column: 16, scope: !272)
!283 = !DILocation(line: 75, column: 9, scope: !272)
!284 = !DILocation(line: 75, column: 14, scope: !272)
!285 = !DILocation(line: 76, column: 9, scope: !272)
!286 = !DILocation(line: 76, column: 14, scope: !272)
!287 = !DILocation(line: 77, column: 21, scope: !272)
!288 = !DILocation(line: 77, column: 5, scope: !272)
!289 = !DILocation(line: 78, column: 1, scope: !272)
!290 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !291, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !7}
!293 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !290, file: !3, line: 80, type: !7)
!294 = !DILocation(line: 80, column: 33, scope: !290)
!295 = !DILocation(line: 82, column: 20, scope: !290)
!296 = !DILocation(line: 82, column: 5, scope: !290)
!297 = !DILocation(line: 83, column: 1, scope: !290)
!298 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !299, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !25}
!301 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !298, file: !3, line: 85, type: !25)
!302 = !DILocation(line: 85, column: 45, scope: !298)
!303 = !DILocation(line: 87, column: 22, scope: !298)
!304 = !DILocation(line: 87, column: 5, scope: !298)
!305 = !DILocation(line: 88, column: 1, scope: !298)
!306 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !307, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !309}
!309 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!310 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !306, file: !3, line: 90, type: !309)
!311 = !DILocation(line: 90, column: 29, scope: !306)
!312 = !DILocation(line: 92, column: 20, scope: !306)
!313 = !DILocation(line: 92, column: 5, scope: !306)
!314 = !DILocation(line: 93, column: 1, scope: !306)
!315 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !316, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !320, line: 100, baseType: !321)
!320 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_749/source_code")
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !320, line: 96, size: 64, elements: !322)
!322 = !{!323, !324}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !321, file: !320, line: 98, baseType: !23, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !321, file: !320, line: 99, baseType: !23, size: 32, offset: 32)
!325 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !315, file: !3, line: 95, type: !318)
!326 = !DILocation(line: 95, column: 40, scope: !315)
!327 = !DILocation(line: 97, column: 26, scope: !315)
!328 = !DILocation(line: 97, column: 47, scope: !315)
!329 = !DILocation(line: 97, column: 55, scope: !315)
!330 = !DILocation(line: 97, column: 76, scope: !315)
!331 = !DILocation(line: 97, column: 5, scope: !315)
!332 = !DILocation(line: 98, column: 1, scope: !315)
!333 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !334, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !336, !77}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!337 = !DILocalVariable(name: "bytes", arg: 1, scope: !333, file: !3, line: 100, type: !336)
!338 = !DILocation(line: 100, column: 38, scope: !333)
!339 = !DILocalVariable(name: "numBytes", arg: 2, scope: !333, file: !3, line: 100, type: !77)
!340 = !DILocation(line: 100, column: 52, scope: !333)
!341 = !DILocalVariable(name: "i", scope: !333, file: !3, line: 102, type: !77)
!342 = !DILocation(line: 102, column: 12, scope: !333)
!343 = !DILocation(line: 103, column: 12, scope: !344)
!344 = distinct !DILexicalBlock(scope: !333, file: !3, line: 103, column: 5)
!345 = !DILocation(line: 103, column: 10, scope: !344)
!346 = !DILocation(line: 103, column: 17, scope: !347)
!347 = distinct !DILexicalBlock(scope: !344, file: !3, line: 103, column: 5)
!348 = !DILocation(line: 103, column: 21, scope: !347)
!349 = !DILocation(line: 103, column: 19, scope: !347)
!350 = !DILocation(line: 103, column: 5, scope: !344)
!351 = !DILocation(line: 105, column: 24, scope: !352)
!352 = distinct !DILexicalBlock(scope: !347, file: !3, line: 104, column: 5)
!353 = !DILocation(line: 105, column: 30, scope: !352)
!354 = !DILocation(line: 105, column: 9, scope: !352)
!355 = !DILocation(line: 106, column: 5, scope: !352)
!356 = !DILocation(line: 103, column: 31, scope: !347)
!357 = !DILocation(line: 103, column: 5, scope: !347)
!358 = distinct !{!358, !350, !359, !360}
!359 = !DILocation(line: 106, column: 5, scope: !344)
!360 = !{!"llvm.loop.mustprogress"}
!361 = !DILocation(line: 107, column: 5, scope: !333)
!362 = !DILocation(line: 108, column: 1, scope: !333)
!363 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !364, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!364 = !DISubroutineType(types: !365)
!365 = !{!77, !336, !77, !42}
!366 = !DILocalVariable(name: "bytes", arg: 1, scope: !363, file: !3, line: 113, type: !336)
!367 = !DILocation(line: 113, column: 39, scope: !363)
!368 = !DILocalVariable(name: "numBytes", arg: 2, scope: !363, file: !3, line: 113, type: !77)
!369 = !DILocation(line: 113, column: 53, scope: !363)
!370 = !DILocalVariable(name: "hex", arg: 3, scope: !363, file: !3, line: 113, type: !42)
!371 = !DILocation(line: 113, column: 71, scope: !363)
!372 = !DILocalVariable(name: "numWritten", scope: !363, file: !3, line: 115, type: !77)
!373 = !DILocation(line: 115, column: 12, scope: !363)
!374 = !DILocation(line: 121, column: 5, scope: !363)
!375 = !DILocation(line: 121, column: 12, scope: !363)
!376 = !DILocation(line: 121, column: 25, scope: !363)
!377 = !DILocation(line: 121, column: 23, scope: !363)
!378 = !DILocation(line: 121, column: 34, scope: !363)
!379 = !DILocation(line: 121, column: 37, scope: !363)
!380 = !DILocation(line: 121, column: 67, scope: !363)
!381 = !DILocation(line: 121, column: 70, scope: !363)
!382 = !DILocation(line: 0, scope: !363)
!383 = !DILocalVariable(name: "byte", scope: !384, file: !3, line: 123, type: !23)
!384 = distinct !DILexicalBlock(scope: !363, file: !3, line: 122, column: 5)
!385 = !DILocation(line: 123, column: 13, scope: !384)
!386 = !DILocation(line: 124, column: 17, scope: !384)
!387 = !DILocation(line: 124, column: 25, scope: !384)
!388 = !DILocation(line: 124, column: 23, scope: !384)
!389 = !DILocation(line: 124, column: 9, scope: !384)
!390 = !DILocation(line: 125, column: 45, scope: !384)
!391 = !DILocation(line: 125, column: 29, scope: !384)
!392 = !DILocation(line: 125, column: 9, scope: !384)
!393 = !DILocation(line: 125, column: 15, scope: !384)
!394 = !DILocation(line: 125, column: 27, scope: !384)
!395 = !DILocation(line: 126, column: 9, scope: !384)
!396 = distinct !{!396, !374, !397, !360}
!397 = !DILocation(line: 127, column: 5, scope: !363)
!398 = !DILocation(line: 129, column: 12, scope: !363)
!399 = !DILocation(line: 129, column: 5, scope: !363)
!400 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !401, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!401 = !DISubroutineType(types: !402)
!402 = !{!77, !336, !77, !196}
!403 = !DILocalVariable(name: "bytes", arg: 1, scope: !400, file: !3, line: 135, type: !336)
!404 = !DILocation(line: 135, column: 41, scope: !400)
!405 = !DILocalVariable(name: "numBytes", arg: 2, scope: !400, file: !3, line: 135, type: !77)
!406 = !DILocation(line: 135, column: 55, scope: !400)
!407 = !DILocalVariable(name: "hex", arg: 3, scope: !400, file: !3, line: 135, type: !196)
!408 = !DILocation(line: 135, column: 76, scope: !400)
!409 = !DILocalVariable(name: "numWritten", scope: !400, file: !3, line: 137, type: !77)
!410 = !DILocation(line: 137, column: 12, scope: !400)
!411 = !DILocation(line: 143, column: 5, scope: !400)
!412 = !DILocation(line: 143, column: 12, scope: !400)
!413 = !DILocation(line: 143, column: 25, scope: !400)
!414 = !DILocation(line: 143, column: 23, scope: !400)
!415 = !DILocation(line: 143, column: 34, scope: !400)
!416 = !DILocation(line: 143, column: 47, scope: !400)
!417 = !DILocation(line: 143, column: 55, scope: !400)
!418 = !DILocation(line: 143, column: 53, scope: !400)
!419 = !DILocation(line: 143, column: 37, scope: !400)
!420 = !DILocation(line: 143, column: 68, scope: !400)
!421 = !DILocation(line: 143, column: 81, scope: !400)
!422 = !DILocation(line: 143, column: 89, scope: !400)
!423 = !DILocation(line: 143, column: 87, scope: !400)
!424 = !DILocation(line: 143, column: 100, scope: !400)
!425 = !DILocation(line: 143, column: 71, scope: !400)
!426 = !DILocation(line: 0, scope: !400)
!427 = !DILocalVariable(name: "byte", scope: !428, file: !3, line: 145, type: !23)
!428 = distinct !DILexicalBlock(scope: !400, file: !3, line: 144, column: 5)
!429 = !DILocation(line: 145, column: 13, scope: !428)
!430 = !DILocation(line: 146, column: 18, scope: !428)
!431 = !DILocation(line: 146, column: 26, scope: !428)
!432 = !DILocation(line: 146, column: 24, scope: !428)
!433 = !DILocation(line: 146, column: 9, scope: !428)
!434 = !DILocation(line: 147, column: 45, scope: !428)
!435 = !DILocation(line: 147, column: 29, scope: !428)
!436 = !DILocation(line: 147, column: 9, scope: !428)
!437 = !DILocation(line: 147, column: 15, scope: !428)
!438 = !DILocation(line: 147, column: 27, scope: !428)
!439 = !DILocation(line: 148, column: 9, scope: !428)
!440 = distinct !{!440, !411, !441, !360}
!441 = !DILocation(line: 149, column: 5, scope: !400)
!442 = !DILocation(line: 151, column: 12, scope: !400)
!443 = !DILocation(line: 151, column: 5, scope: !400)
!444 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !445, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!445 = !DISubroutineType(types: !446)
!446 = !{!23}
!447 = !DILocation(line: 158, column: 5, scope: !444)
!448 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !445, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!449 = !DILocation(line: 163, column: 5, scope: !448)
!450 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !445, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!451 = !DILocation(line: 168, column: 13, scope: !450)
!452 = !DILocation(line: 168, column: 20, scope: !450)
!453 = !DILocation(line: 168, column: 5, scope: !450)
!454 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !61, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!455 = !DILocation(line: 187, column: 16, scope: !454)
!456 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !61, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!457 = !DILocation(line: 188, column: 16, scope: !456)
!458 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !61, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!459 = !DILocation(line: 189, column: 16, scope: !458)
!460 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !61, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!461 = !DILocation(line: 190, column: 16, scope: !460)
!462 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !61, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!463 = !DILocation(line: 191, column: 16, scope: !462)
!464 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !61, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!465 = !DILocation(line: 192, column: 16, scope: !464)
!466 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !61, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!467 = !DILocation(line: 193, column: 16, scope: !466)
!468 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !61, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!469 = !DILocation(line: 194, column: 16, scope: !468)
!470 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !61, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!471 = !DILocation(line: 195, column: 16, scope: !470)
!472 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !61, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!473 = !DILocation(line: 198, column: 15, scope: !472)
!474 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !61, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!475 = !DILocation(line: 199, column: 15, scope: !474)
!476 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !61, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!477 = !DILocation(line: 200, column: 15, scope: !476)
!478 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !61, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!479 = !DILocation(line: 201, column: 15, scope: !478)
!480 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !61, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!481 = !DILocation(line: 202, column: 15, scope: !480)
!482 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !61, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!483 = !DILocation(line: 203, column: 15, scope: !482)
!484 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !61, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!485 = !DILocation(line: 204, column: 15, scope: !484)
!486 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !61, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!487 = !DILocation(line: 205, column: 15, scope: !486)
!488 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !61, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!489 = !DILocation(line: 206, column: 15, scope: !488)
