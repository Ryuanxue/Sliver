; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.7 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.9 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.10 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7.11 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_09_bad() #0 !dbg !52 {
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
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !64
  %tobool = icmp ne i32 %1, 0, !dbg !64
  br i1 %tobool, label %if.then, label %if.end5, !dbg !66

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !73
  %2 = load i8*, i8** %data, align 8, !dbg !74
  %call = call i64 @strlen(i8* %2) #7, !dbg !75
  store i64 %call, i64* %dataLen, align 8, !dbg !73
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !76, metadata !DIExpression()), !dbg !77
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !78
  store i8* %call1, i8** %environment, align 8, !dbg !77
  %3 = load i8*, i8** %environment, align 8, !dbg !79
  %cmp = icmp ne i8* %3, null, !dbg !81
  br i1 %cmp, label %if.then2, label %if.end, !dbg !82

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !83
  %5 = load i64, i64* %dataLen, align 8, !dbg !85
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !86
  %6 = load i8*, i8** %environment, align 8, !dbg !87
  %7 = load i64, i64* %dataLen, align 8, !dbg !88
  %sub = sub i64 100, %7, !dbg !89
  %sub3 = sub i64 %sub, 1, !dbg !90
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #8, !dbg !91
  br label %if.end, !dbg !92

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !93

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !94
  %tobool6 = icmp ne i32 %8, 0, !dbg !94
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !96

if.then7:                                         ; preds = %if.end5
  %9 = load i8*, i8** %data, align 8, !dbg !97
  %call8 = call i32 (i8*, ...) @printf(i8* %9), !dbg !99
  br label %if.end9, !dbg !100

if.end9:                                          ; preds = %if.then7, %if.end5
  ret void, !dbg !101
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
define dso_local void @goodB2G1() #0 !dbg !102 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !105, metadata !DIExpression()), !dbg !106
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !106
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !106
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !107
  store i8* %arraydecay, i8** %data, align 8, !dbg !108
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !109
  %tobool = icmp ne i32 %1, 0, !dbg !109
  br i1 %tobool, label %if.then, label %if.end5, !dbg !111

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !112, metadata !DIExpression()), !dbg !115
  %2 = load i8*, i8** %data, align 8, !dbg !116
  %call = call i64 @strlen(i8* %2) #7, !dbg !117
  store i64 %call, i64* %dataLen, align 8, !dbg !115
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !118, metadata !DIExpression()), !dbg !119
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !120
  store i8* %call1, i8** %environment, align 8, !dbg !119
  %3 = load i8*, i8** %environment, align 8, !dbg !121
  %cmp = icmp ne i8* %3, null, !dbg !123
  br i1 %cmp, label %if.then2, label %if.end, !dbg !124

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !125
  %5 = load i64, i64* %dataLen, align 8, !dbg !127
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !128
  %6 = load i8*, i8** %environment, align 8, !dbg !129
  %7 = load i64, i64* %dataLen, align 8, !dbg !130
  %sub = sub i64 100, %7, !dbg !131
  %sub3 = sub i64 %sub, 1, !dbg !132
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #8, !dbg !133
  br label %if.end, !dbg !134

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !135

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @GLOBAL_CONST_FALSE, align 4, !dbg !136
  %tobool6 = icmp ne i32 %8, 0, !dbg !136
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !138

if.then7:                                         ; preds = %if.end5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !139
  br label %if.end9, !dbg !141

if.else:                                          ; preds = %if.end5
  %9 = load i8*, i8** %data, align 8, !dbg !142
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %9), !dbg !144
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  ret void, !dbg !145
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !146 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !147, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !150
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !150
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !151
  store i8* %arraydecay, i8** %data, align 8, !dbg !152
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !153
  %tobool = icmp ne i32 %1, 0, !dbg !153
  br i1 %tobool, label %if.then, label %if.end5, !dbg !155

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !156, metadata !DIExpression()), !dbg !159
  %2 = load i8*, i8** %data, align 8, !dbg !160
  %call = call i64 @strlen(i8* %2) #7, !dbg !161
  store i64 %call, i64* %dataLen, align 8, !dbg !159
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !162, metadata !DIExpression()), !dbg !163
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !164
  store i8* %call1, i8** %environment, align 8, !dbg !163
  %3 = load i8*, i8** %environment, align 8, !dbg !165
  %cmp = icmp ne i8* %3, null, !dbg !167
  br i1 %cmp, label %if.then2, label %if.end, !dbg !168

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !169
  %5 = load i64, i64* %dataLen, align 8, !dbg !171
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !172
  %6 = load i8*, i8** %environment, align 8, !dbg !173
  %7 = load i64, i64* %dataLen, align 8, !dbg !174
  %sub = sub i64 100, %7, !dbg !175
  %sub3 = sub i64 %sub, 1, !dbg !176
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #8, !dbg !177
  br label %if.end, !dbg !178

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !179

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !180
  %tobool6 = icmp ne i32 %8, 0, !dbg !180
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !182

if.then7:                                         ; preds = %if.end5
  %9 = load i8*, i8** %data, align 8, !dbg !183
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %9), !dbg !185
  br label %if.end9, !dbg !186

if.end9:                                          ; preds = %if.then7, %if.end5
  ret void, !dbg !187
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !188 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !191, metadata !DIExpression()), !dbg !192
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !192
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !192
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !193
  store i8* %arraydecay, i8** %data, align 8, !dbg !194
  %1 = load i32, i32* @GLOBAL_CONST_FALSE, align 4, !dbg !195
  %tobool = icmp ne i32 %1, 0, !dbg !195
  br i1 %tobool, label %if.then, label %if.else, !dbg !197

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !198
  br label %if.end, !dbg !200

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !201
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !203
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !204
  %tobool1 = icmp ne i32 %3, 0, !dbg !204
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !206

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !207
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !209
  br label %if.end4, !dbg !210

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !211
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !212 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !215, metadata !DIExpression()), !dbg !216
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !216
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !216
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !217
  store i8* %arraydecay, i8** %data, align 8, !dbg !218
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !219
  %tobool = icmp ne i32 %1, 0, !dbg !219
  br i1 %tobool, label %if.then, label %if.end, !dbg !221

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !222
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !224
  br label %if.end, !dbg !225

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !226
  %tobool1 = icmp ne i32 %3, 0, !dbg !226
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !228

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !229
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !231
  br label %if.end4, !dbg !232

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !233
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_09_good() #0 !dbg !234 {
entry:
  call void @goodB2G1(), !dbg !235
  call void @goodB2G2(), !dbg !236
  call void @goodG2B1(), !dbg !237
  call void @goodG2B2(), !dbg !238
  ret void, !dbg !239
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !240 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !243, metadata !DIExpression()), !dbg !244
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)), !dbg !245
  %0 = load i8*, i8** %line.addr, align 8, !dbg !246
  %cmp = icmp ne i8* %0, null, !dbg !248
  br i1 %cmp, label %if.then, label %if.end, !dbg !249

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !250
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.8, i64 0, i64 0), i8* %1), !dbg !252
  br label %if.end, !dbg !253

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.9, i64 0, i64 0)), !dbg !254
  ret void, !dbg !255
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !256 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !257, metadata !DIExpression()), !dbg !258
  %0 = load i8*, i8** %line.addr, align 8, !dbg !259
  %cmp = icmp ne i8* %0, null, !dbg !261
  br i1 %cmp, label %if.then, label %if.end, !dbg !262

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !263
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.8, i64 0, i64 0), i8* %1), !dbg !265
  br label %if.end, !dbg !266

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !267
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !268 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !273, metadata !DIExpression()), !dbg !274
  %0 = load i32*, i32** %line.addr, align 8, !dbg !275
  %cmp = icmp ne i32* %0, null, !dbg !277
  br i1 %cmp, label %if.then, label %if.end, !dbg !278

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !279
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.10, i64 0, i64 0), i32* %1), !dbg !281
  br label %if.end, !dbg !282

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !283
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !284 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !287, metadata !DIExpression()), !dbg !288
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !289
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !290
  ret void, !dbg !291
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !292 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !296, metadata !DIExpression()), !dbg !297
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !298
  %conv = sext i16 %0 to i32, !dbg !298
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !299
  ret void, !dbg !300
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !301 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !305, metadata !DIExpression()), !dbg !306
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !307
  %conv = fpext float %0 to double, !dbg !307
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !308
  ret void, !dbg !309
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !310 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !314, metadata !DIExpression()), !dbg !315
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !316
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.11, i64 0, i64 0), i64 %0), !dbg !317
  ret void, !dbg !318
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !319 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !326, metadata !DIExpression()), !dbg !327
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !328
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.11, i64 0, i64 0), i64 %0), !dbg !329
  ret void, !dbg !330
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !331 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !334, metadata !DIExpression()), !dbg !335
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !336
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !337
  ret void, !dbg !338
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !339 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !344
  %conv = sext i8 %0 to i32, !dbg !344
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !345
  ret void, !dbg !346
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !347 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !350, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !352, metadata !DIExpression()), !dbg !356
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !357
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !358
  store i32 %0, i32* %arrayidx, align 4, !dbg !359
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !360
  store i32 0, i32* %arrayidx1, align 4, !dbg !361
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !362
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !363
  ret void, !dbg !364
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !365 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !368, metadata !DIExpression()), !dbg !369
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !370
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !371
  ret void, !dbg !372
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !373 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !378
  %conv = zext i8 %0 to i32, !dbg !378
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !381 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !387
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !388
  ret void, !dbg !389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !390 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !400, metadata !DIExpression()), !dbg !401
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !402
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !403
  %1 = load i32, i32* %intOne, align 4, !dbg !403
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !404
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !405
  %3 = load i32, i32* %intTwo, align 4, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !408 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !412, metadata !DIExpression()), !dbg !413
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !414, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata i64* %i, metadata !416, metadata !DIExpression()), !dbg !417
  store i64 0, i64* %i, align 8, !dbg !418
  br label %for.cond, !dbg !420

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !421
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !423
  %cmp = icmp ult i64 %0, %1, !dbg !424
  br i1 %cmp, label %for.body, label %for.end, !dbg !425

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !426
  %3 = load i64, i64* %i, align 8, !dbg !428
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !426
  %4 = load i8, i8* %arrayidx, align 1, !dbg !426
  %conv = zext i8 %4 to i32, !dbg !426
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !429
  br label %for.inc, !dbg !430

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !431
  %inc = add i64 %5, 1, !dbg !431
  store i64 %inc, i64* %i, align 8, !dbg !431
  br label %for.cond, !dbg !432, !llvm.loop !433

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !436
  ret void, !dbg !437
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !438 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !441, metadata !DIExpression()), !dbg !442
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !443, metadata !DIExpression()), !dbg !444
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !445, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !447, metadata !DIExpression()), !dbg !448
  store i64 0, i64* %numWritten, align 8, !dbg !448
  br label %while.cond, !dbg !449

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !450
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !451
  %cmp = icmp ult i64 %0, %1, !dbg !452
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !453

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !454
  %2 = load i16*, i16** %call, align 8, !dbg !454
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !454
  %4 = load i64, i64* %numWritten, align 8, !dbg !454
  %mul = mul i64 2, %4, !dbg !454
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !454
  %5 = load i8, i8* %arrayidx, align 1, !dbg !454
  %conv = sext i8 %5 to i32, !dbg !454
  %idxprom = sext i32 %conv to i64, !dbg !454
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !454
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !454
  %conv2 = zext i16 %6 to i32, !dbg !454
  %and = and i32 %conv2, 4096, !dbg !454
  %tobool = icmp ne i32 %and, 0, !dbg !454
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !455

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !456
  %7 = load i16*, i16** %call3, align 8, !dbg !456
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !456
  %9 = load i64, i64* %numWritten, align 8, !dbg !456
  %mul4 = mul i64 2, %9, !dbg !456
  %add = add i64 %mul4, 1, !dbg !456
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !456
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !456
  %conv6 = sext i8 %10 to i32, !dbg !456
  %idxprom7 = sext i32 %conv6 to i64, !dbg !456
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !456
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !456
  %conv9 = zext i16 %11 to i32, !dbg !456
  %and10 = and i32 %conv9, 4096, !dbg !456
  %tobool11 = icmp ne i32 %and10, 0, !dbg !455
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !457
  br i1 %12, label %while.body, label %while.end, !dbg !449

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !458, metadata !DIExpression()), !dbg !460
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !461
  %14 = load i64, i64* %numWritten, align 8, !dbg !462
  %mul12 = mul i64 2, %14, !dbg !463
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !461
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !464
  %15 = load i32, i32* %byte, align 4, !dbg !465
  %conv15 = trunc i32 %15 to i8, !dbg !466
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !467
  %17 = load i64, i64* %numWritten, align 8, !dbg !468
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !467
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !469
  %18 = load i64, i64* %numWritten, align 8, !dbg !470
  %inc = add i64 %18, 1, !dbg !470
  store i64 %inc, i64* %numWritten, align 8, !dbg !470
  br label %while.cond, !dbg !449, !llvm.loop !471

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !473
  ret i64 %19, !dbg !474
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !475 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !478, metadata !DIExpression()), !dbg !479
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !480, metadata !DIExpression()), !dbg !481
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !482, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !484, metadata !DIExpression()), !dbg !485
  store i64 0, i64* %numWritten, align 8, !dbg !485
  br label %while.cond, !dbg !486

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !487
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !488
  %cmp = icmp ult i64 %0, %1, !dbg !489
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !490

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !491
  %3 = load i64, i64* %numWritten, align 8, !dbg !492
  %mul = mul i64 2, %3, !dbg !493
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !491
  %4 = load i32, i32* %arrayidx, align 4, !dbg !491
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !494
  %tobool = icmp ne i32 %call, 0, !dbg !494
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !495

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !496
  %6 = load i64, i64* %numWritten, align 8, !dbg !497
  %mul1 = mul i64 2, %6, !dbg !498
  %add = add i64 %mul1, 1, !dbg !499
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !496
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !496
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !500
  %tobool4 = icmp ne i32 %call3, 0, !dbg !495
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !501
  br i1 %8, label %while.body, label %while.end, !dbg !486

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !502, metadata !DIExpression()), !dbg !504
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !505
  %10 = load i64, i64* %numWritten, align 8, !dbg !506
  %mul5 = mul i64 2, %10, !dbg !507
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !505
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !508
  %11 = load i32, i32* %byte, align 4, !dbg !509
  %conv = trunc i32 %11 to i8, !dbg !510
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !511
  %13 = load i64, i64* %numWritten, align 8, !dbg !512
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !511
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !513
  %14 = load i64, i64* %numWritten, align 8, !dbg !514
  %inc = add i64 %14, 1, !dbg !514
  store i64 %inc, i64* %numWritten, align 8, !dbg !514
  br label %while.cond, !dbg !486, !llvm.loop !515

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !517
  ret i64 %15, !dbg !518
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !519 {
entry:
  ret i32 1, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !523 {
entry:
  ret i32 0, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !525 {
entry:
  %call = call i32 @rand() #8, !dbg !526
  %rem = srem i32 %call, 2, !dbg !527
  ret i32 %rem, !dbg !528
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !529 {
entry:
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !531 {
entry:
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !533 {
entry:
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !535 {
entry:
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !537 {
entry:
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !539 {
entry:
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !541 {
entry:
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !543 {
entry:
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !545 {
entry:
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !547 {
entry:
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !549 {
entry:
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !551 {
entry:
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !553 {
entry:
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !555 {
entry:
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !557 {
entry:
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !559 {
entry:
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !561 {
entry:
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !563 {
entry:
  ret void, !dbg !564
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_730/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_09.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_730/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_09_bad", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!94 = !DILocation(line: 54, column: 8, scope: !95)
!95 = distinct !DILexicalBlock(scope: !52, file: !45, line: 54, column: 8)
!96 = !DILocation(line: 54, column: 8, scope: !52)
!97 = !DILocation(line: 57, column: 16, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !45, line: 55, column: 5)
!99 = !DILocation(line: 57, column: 9, scope: !98)
!100 = !DILocation(line: 58, column: 5, scope: !98)
!101 = !DILocation(line: 59, column: 1, scope: !52)
!102 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 66, type: !53, scopeLine: 67, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!103 = !DILocalVariable(name: "data", scope: !102, file: !45, line: 68, type: !42)
!104 = !DILocation(line: 68, column: 12, scope: !102)
!105 = !DILocalVariable(name: "dataBuffer", scope: !102, file: !45, line: 69, type: !58)
!106 = !DILocation(line: 69, column: 10, scope: !102)
!107 = !DILocation(line: 70, column: 12, scope: !102)
!108 = !DILocation(line: 70, column: 10, scope: !102)
!109 = !DILocation(line: 71, column: 8, scope: !110)
!110 = distinct !DILexicalBlock(scope: !102, file: !45, line: 71, column: 8)
!111 = !DILocation(line: 71, column: 8, scope: !102)
!112 = !DILocalVariable(name: "dataLen", scope: !113, file: !45, line: 75, type: !70)
!113 = distinct !DILexicalBlock(scope: !114, file: !45, line: 73, column: 9)
!114 = distinct !DILexicalBlock(scope: !110, file: !45, line: 72, column: 5)
!115 = !DILocation(line: 75, column: 20, scope: !113)
!116 = !DILocation(line: 75, column: 37, scope: !113)
!117 = !DILocation(line: 75, column: 30, scope: !113)
!118 = !DILocalVariable(name: "environment", scope: !113, file: !45, line: 76, type: !42)
!119 = !DILocation(line: 76, column: 20, scope: !113)
!120 = !DILocation(line: 76, column: 34, scope: !113)
!121 = !DILocation(line: 78, column: 17, scope: !122)
!122 = distinct !DILexicalBlock(scope: !113, file: !45, line: 78, column: 17)
!123 = !DILocation(line: 78, column: 29, scope: !122)
!124 = !DILocation(line: 78, column: 17, scope: !113)
!125 = !DILocation(line: 81, column: 25, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !45, line: 79, column: 13)
!127 = !DILocation(line: 81, column: 30, scope: !126)
!128 = !DILocation(line: 81, column: 29, scope: !126)
!129 = !DILocation(line: 81, column: 39, scope: !126)
!130 = !DILocation(line: 81, column: 56, scope: !126)
!131 = !DILocation(line: 81, column: 55, scope: !126)
!132 = !DILocation(line: 81, column: 63, scope: !126)
!133 = !DILocation(line: 81, column: 17, scope: !126)
!134 = !DILocation(line: 82, column: 13, scope: !126)
!135 = !DILocation(line: 84, column: 5, scope: !114)
!136 = !DILocation(line: 85, column: 8, scope: !137)
!137 = distinct !DILexicalBlock(scope: !102, file: !45, line: 85, column: 8)
!138 = !DILocation(line: 85, column: 8, scope: !102)
!139 = !DILocation(line: 88, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !137, file: !45, line: 86, column: 5)
!141 = !DILocation(line: 89, column: 5, scope: !140)
!142 = !DILocation(line: 93, column: 24, scope: !143)
!143 = distinct !DILexicalBlock(scope: !137, file: !45, line: 91, column: 5)
!144 = !DILocation(line: 93, column: 9, scope: !143)
!145 = !DILocation(line: 95, column: 1, scope: !102)
!146 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 98, type: !53, scopeLine: 99, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!147 = !DILocalVariable(name: "data", scope: !146, file: !45, line: 100, type: !42)
!148 = !DILocation(line: 100, column: 12, scope: !146)
!149 = !DILocalVariable(name: "dataBuffer", scope: !146, file: !45, line: 101, type: !58)
!150 = !DILocation(line: 101, column: 10, scope: !146)
!151 = !DILocation(line: 102, column: 12, scope: !146)
!152 = !DILocation(line: 102, column: 10, scope: !146)
!153 = !DILocation(line: 103, column: 8, scope: !154)
!154 = distinct !DILexicalBlock(scope: !146, file: !45, line: 103, column: 8)
!155 = !DILocation(line: 103, column: 8, scope: !146)
!156 = !DILocalVariable(name: "dataLen", scope: !157, file: !45, line: 107, type: !70)
!157 = distinct !DILexicalBlock(scope: !158, file: !45, line: 105, column: 9)
!158 = distinct !DILexicalBlock(scope: !154, file: !45, line: 104, column: 5)
!159 = !DILocation(line: 107, column: 20, scope: !157)
!160 = !DILocation(line: 107, column: 37, scope: !157)
!161 = !DILocation(line: 107, column: 30, scope: !157)
!162 = !DILocalVariable(name: "environment", scope: !157, file: !45, line: 108, type: !42)
!163 = !DILocation(line: 108, column: 20, scope: !157)
!164 = !DILocation(line: 108, column: 34, scope: !157)
!165 = !DILocation(line: 110, column: 17, scope: !166)
!166 = distinct !DILexicalBlock(scope: !157, file: !45, line: 110, column: 17)
!167 = !DILocation(line: 110, column: 29, scope: !166)
!168 = !DILocation(line: 110, column: 17, scope: !157)
!169 = !DILocation(line: 113, column: 25, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !45, line: 111, column: 13)
!171 = !DILocation(line: 113, column: 30, scope: !170)
!172 = !DILocation(line: 113, column: 29, scope: !170)
!173 = !DILocation(line: 113, column: 39, scope: !170)
!174 = !DILocation(line: 113, column: 56, scope: !170)
!175 = !DILocation(line: 113, column: 55, scope: !170)
!176 = !DILocation(line: 113, column: 63, scope: !170)
!177 = !DILocation(line: 113, column: 17, scope: !170)
!178 = !DILocation(line: 114, column: 13, scope: !170)
!179 = !DILocation(line: 116, column: 5, scope: !158)
!180 = !DILocation(line: 117, column: 8, scope: !181)
!181 = distinct !DILexicalBlock(scope: !146, file: !45, line: 117, column: 8)
!182 = !DILocation(line: 117, column: 8, scope: !146)
!183 = !DILocation(line: 120, column: 24, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !45, line: 118, column: 5)
!185 = !DILocation(line: 120, column: 9, scope: !184)
!186 = !DILocation(line: 121, column: 5, scope: !184)
!187 = !DILocation(line: 122, column: 1, scope: !146)
!188 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 125, type: !53, scopeLine: 126, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!189 = !DILocalVariable(name: "data", scope: !188, file: !45, line: 127, type: !42)
!190 = !DILocation(line: 127, column: 12, scope: !188)
!191 = !DILocalVariable(name: "dataBuffer", scope: !188, file: !45, line: 128, type: !58)
!192 = !DILocation(line: 128, column: 10, scope: !188)
!193 = !DILocation(line: 129, column: 12, scope: !188)
!194 = !DILocation(line: 129, column: 10, scope: !188)
!195 = !DILocation(line: 130, column: 8, scope: !196)
!196 = distinct !DILexicalBlock(scope: !188, file: !45, line: 130, column: 8)
!197 = !DILocation(line: 130, column: 8, scope: !188)
!198 = !DILocation(line: 133, column: 9, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !45, line: 131, column: 5)
!200 = !DILocation(line: 134, column: 5, scope: !199)
!201 = !DILocation(line: 138, column: 16, scope: !202)
!202 = distinct !DILexicalBlock(scope: !196, file: !45, line: 136, column: 5)
!203 = !DILocation(line: 138, column: 9, scope: !202)
!204 = !DILocation(line: 140, column: 8, scope: !205)
!205 = distinct !DILexicalBlock(scope: !188, file: !45, line: 140, column: 8)
!206 = !DILocation(line: 140, column: 8, scope: !188)
!207 = !DILocation(line: 143, column: 16, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !45, line: 141, column: 5)
!209 = !DILocation(line: 143, column: 9, scope: !208)
!210 = !DILocation(line: 144, column: 5, scope: !208)
!211 = !DILocation(line: 145, column: 1, scope: !188)
!212 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 148, type: !53, scopeLine: 149, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!213 = !DILocalVariable(name: "data", scope: !212, file: !45, line: 150, type: !42)
!214 = !DILocation(line: 150, column: 12, scope: !212)
!215 = !DILocalVariable(name: "dataBuffer", scope: !212, file: !45, line: 151, type: !58)
!216 = !DILocation(line: 151, column: 10, scope: !212)
!217 = !DILocation(line: 152, column: 12, scope: !212)
!218 = !DILocation(line: 152, column: 10, scope: !212)
!219 = !DILocation(line: 153, column: 8, scope: !220)
!220 = distinct !DILexicalBlock(scope: !212, file: !45, line: 153, column: 8)
!221 = !DILocation(line: 153, column: 8, scope: !212)
!222 = !DILocation(line: 156, column: 16, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !45, line: 154, column: 5)
!224 = !DILocation(line: 156, column: 9, scope: !223)
!225 = !DILocation(line: 157, column: 5, scope: !223)
!226 = !DILocation(line: 158, column: 8, scope: !227)
!227 = distinct !DILexicalBlock(scope: !212, file: !45, line: 158, column: 8)
!228 = !DILocation(line: 158, column: 8, scope: !212)
!229 = !DILocation(line: 161, column: 16, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !45, line: 159, column: 5)
!231 = !DILocation(line: 161, column: 9, scope: !230)
!232 = !DILocation(line: 162, column: 5, scope: !230)
!233 = !DILocation(line: 163, column: 1, scope: !212)
!234 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_09_good", scope: !45, file: !45, line: 165, type: !53, scopeLine: 166, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!235 = !DILocation(line: 167, column: 5, scope: !234)
!236 = !DILocation(line: 168, column: 5, scope: !234)
!237 = !DILocation(line: 169, column: 5, scope: !234)
!238 = !DILocation(line: 170, column: 5, scope: !234)
!239 = !DILocation(line: 171, column: 1, scope: !234)
!240 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !241, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !42}
!243 = !DILocalVariable(name: "line", arg: 1, scope: !240, file: !3, line: 11, type: !42)
!244 = !DILocation(line: 11, column: 25, scope: !240)
!245 = !DILocation(line: 13, column: 1, scope: !240)
!246 = !DILocation(line: 14, column: 8, scope: !247)
!247 = distinct !DILexicalBlock(scope: !240, file: !3, line: 14, column: 8)
!248 = !DILocation(line: 14, column: 13, scope: !247)
!249 = !DILocation(line: 14, column: 8, scope: !240)
!250 = !DILocation(line: 16, column: 24, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !3, line: 15, column: 5)
!252 = !DILocation(line: 16, column: 9, scope: !251)
!253 = !DILocation(line: 17, column: 5, scope: !251)
!254 = !DILocation(line: 18, column: 5, scope: !240)
!255 = !DILocation(line: 19, column: 1, scope: !240)
!256 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !241, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!257 = !DILocalVariable(name: "line", arg: 1, scope: !256, file: !3, line: 20, type: !42)
!258 = !DILocation(line: 20, column: 29, scope: !256)
!259 = !DILocation(line: 22, column: 8, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !3, line: 22, column: 8)
!261 = !DILocation(line: 22, column: 13, scope: !260)
!262 = !DILocation(line: 22, column: 8, scope: !256)
!263 = !DILocation(line: 24, column: 24, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !3, line: 23, column: 5)
!265 = !DILocation(line: 24, column: 9, scope: !264)
!266 = !DILocation(line: 25, column: 5, scope: !264)
!267 = !DILocation(line: 26, column: 1, scope: !256)
!268 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !269, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !271}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !71, line: 74, baseType: !23)
!273 = !DILocalVariable(name: "line", arg: 1, scope: !268, file: !3, line: 27, type: !271)
!274 = !DILocation(line: 27, column: 29, scope: !268)
!275 = !DILocation(line: 29, column: 8, scope: !276)
!276 = distinct !DILexicalBlock(scope: !268, file: !3, line: 29, column: 8)
!277 = !DILocation(line: 29, column: 13, scope: !276)
!278 = !DILocation(line: 29, column: 8, scope: !268)
!279 = !DILocation(line: 31, column: 27, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !3, line: 30, column: 5)
!281 = !DILocation(line: 31, column: 9, scope: !280)
!282 = !DILocation(line: 32, column: 5, scope: !280)
!283 = !DILocation(line: 33, column: 1, scope: !268)
!284 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !285, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !23}
!287 = !DILocalVariable(name: "intNumber", arg: 1, scope: !284, file: !3, line: 35, type: !23)
!288 = !DILocation(line: 35, column: 24, scope: !284)
!289 = !DILocation(line: 37, column: 20, scope: !284)
!290 = !DILocation(line: 37, column: 5, scope: !284)
!291 = !DILocation(line: 38, column: 1, scope: !284)
!292 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !293, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !295}
!295 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!296 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !292, file: !3, line: 40, type: !295)
!297 = !DILocation(line: 40, column: 28, scope: !292)
!298 = !DILocation(line: 42, column: 21, scope: !292)
!299 = !DILocation(line: 42, column: 5, scope: !292)
!300 = !DILocation(line: 43, column: 1, scope: !292)
!301 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !302, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !304}
!304 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!305 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !301, file: !3, line: 45, type: !304)
!306 = !DILocation(line: 45, column: 28, scope: !301)
!307 = !DILocation(line: 47, column: 20, scope: !301)
!308 = !DILocation(line: 47, column: 5, scope: !301)
!309 = !DILocation(line: 48, column: 1, scope: !301)
!310 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !311, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !313}
!313 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!314 = !DILocalVariable(name: "longNumber", arg: 1, scope: !310, file: !3, line: 50, type: !313)
!315 = !DILocation(line: 50, column: 26, scope: !310)
!316 = !DILocation(line: 52, column: 21, scope: !310)
!317 = !DILocation(line: 52, column: 5, scope: !310)
!318 = !DILocation(line: 53, column: 1, scope: !310)
!319 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !320, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !322}
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !323, line: 27, baseType: !324)
!323 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !325, line: 44, baseType: !313)
!325 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!326 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !319, file: !3, line: 55, type: !322)
!327 = !DILocation(line: 55, column: 33, scope: !319)
!328 = !DILocation(line: 57, column: 29, scope: !319)
!329 = !DILocation(line: 57, column: 5, scope: !319)
!330 = !DILocation(line: 58, column: 1, scope: !319)
!331 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !332, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !70}
!334 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !331, file: !3, line: 60, type: !70)
!335 = !DILocation(line: 60, column: 29, scope: !331)
!336 = !DILocation(line: 62, column: 21, scope: !331)
!337 = !DILocation(line: 62, column: 5, scope: !331)
!338 = !DILocation(line: 63, column: 1, scope: !331)
!339 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !340, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !43}
!342 = !DILocalVariable(name: "charHex", arg: 1, scope: !339, file: !3, line: 65, type: !43)
!343 = !DILocation(line: 65, column: 29, scope: !339)
!344 = !DILocation(line: 67, column: 22, scope: !339)
!345 = !DILocation(line: 67, column: 5, scope: !339)
!346 = !DILocation(line: 68, column: 1, scope: !339)
!347 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !348, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !272}
!350 = !DILocalVariable(name: "wideChar", arg: 1, scope: !347, file: !3, line: 70, type: !272)
!351 = !DILocation(line: 70, column: 29, scope: !347)
!352 = !DILocalVariable(name: "s", scope: !347, file: !3, line: 74, type: !353)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 64, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 2)
!356 = !DILocation(line: 74, column: 13, scope: !347)
!357 = !DILocation(line: 75, column: 16, scope: !347)
!358 = !DILocation(line: 75, column: 9, scope: !347)
!359 = !DILocation(line: 75, column: 14, scope: !347)
!360 = !DILocation(line: 76, column: 9, scope: !347)
!361 = !DILocation(line: 76, column: 14, scope: !347)
!362 = !DILocation(line: 77, column: 21, scope: !347)
!363 = !DILocation(line: 77, column: 5, scope: !347)
!364 = !DILocation(line: 78, column: 1, scope: !347)
!365 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !366, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !7}
!368 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !365, file: !3, line: 80, type: !7)
!369 = !DILocation(line: 80, column: 33, scope: !365)
!370 = !DILocation(line: 82, column: 20, scope: !365)
!371 = !DILocation(line: 82, column: 5, scope: !365)
!372 = !DILocation(line: 83, column: 1, scope: !365)
!373 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !374, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !25}
!376 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !373, file: !3, line: 85, type: !25)
!377 = !DILocation(line: 85, column: 45, scope: !373)
!378 = !DILocation(line: 87, column: 22, scope: !373)
!379 = !DILocation(line: 87, column: 5, scope: !373)
!380 = !DILocation(line: 88, column: 1, scope: !373)
!381 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !382, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !384}
!384 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!385 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !381, file: !3, line: 90, type: !384)
!386 = !DILocation(line: 90, column: 29, scope: !381)
!387 = !DILocation(line: 92, column: 20, scope: !381)
!388 = !DILocation(line: 92, column: 5, scope: !381)
!389 = !DILocation(line: 93, column: 1, scope: !381)
!390 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !391, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !395, line: 100, baseType: !396)
!395 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_730/source_code")
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !395, line: 96, size: 64, elements: !397)
!397 = !{!398, !399}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !396, file: !395, line: 98, baseType: !23, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !396, file: !395, line: 99, baseType: !23, size: 32, offset: 32)
!400 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !390, file: !3, line: 95, type: !393)
!401 = !DILocation(line: 95, column: 40, scope: !390)
!402 = !DILocation(line: 97, column: 26, scope: !390)
!403 = !DILocation(line: 97, column: 47, scope: !390)
!404 = !DILocation(line: 97, column: 55, scope: !390)
!405 = !DILocation(line: 97, column: 76, scope: !390)
!406 = !DILocation(line: 97, column: 5, scope: !390)
!407 = !DILocation(line: 98, column: 1, scope: !390)
!408 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !409, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !411, !70}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!412 = !DILocalVariable(name: "bytes", arg: 1, scope: !408, file: !3, line: 100, type: !411)
!413 = !DILocation(line: 100, column: 38, scope: !408)
!414 = !DILocalVariable(name: "numBytes", arg: 2, scope: !408, file: !3, line: 100, type: !70)
!415 = !DILocation(line: 100, column: 52, scope: !408)
!416 = !DILocalVariable(name: "i", scope: !408, file: !3, line: 102, type: !70)
!417 = !DILocation(line: 102, column: 12, scope: !408)
!418 = !DILocation(line: 103, column: 12, scope: !419)
!419 = distinct !DILexicalBlock(scope: !408, file: !3, line: 103, column: 5)
!420 = !DILocation(line: 103, column: 10, scope: !419)
!421 = !DILocation(line: 103, column: 17, scope: !422)
!422 = distinct !DILexicalBlock(scope: !419, file: !3, line: 103, column: 5)
!423 = !DILocation(line: 103, column: 21, scope: !422)
!424 = !DILocation(line: 103, column: 19, scope: !422)
!425 = !DILocation(line: 103, column: 5, scope: !419)
!426 = !DILocation(line: 105, column: 24, scope: !427)
!427 = distinct !DILexicalBlock(scope: !422, file: !3, line: 104, column: 5)
!428 = !DILocation(line: 105, column: 30, scope: !427)
!429 = !DILocation(line: 105, column: 9, scope: !427)
!430 = !DILocation(line: 106, column: 5, scope: !427)
!431 = !DILocation(line: 103, column: 31, scope: !422)
!432 = !DILocation(line: 103, column: 5, scope: !422)
!433 = distinct !{!433, !425, !434, !435}
!434 = !DILocation(line: 106, column: 5, scope: !419)
!435 = !{!"llvm.loop.mustprogress"}
!436 = !DILocation(line: 107, column: 5, scope: !408)
!437 = !DILocation(line: 108, column: 1, scope: !408)
!438 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !439, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!439 = !DISubroutineType(types: !440)
!440 = !{!70, !411, !70, !42}
!441 = !DILocalVariable(name: "bytes", arg: 1, scope: !438, file: !3, line: 113, type: !411)
!442 = !DILocation(line: 113, column: 39, scope: !438)
!443 = !DILocalVariable(name: "numBytes", arg: 2, scope: !438, file: !3, line: 113, type: !70)
!444 = !DILocation(line: 113, column: 53, scope: !438)
!445 = !DILocalVariable(name: "hex", arg: 3, scope: !438, file: !3, line: 113, type: !42)
!446 = !DILocation(line: 113, column: 71, scope: !438)
!447 = !DILocalVariable(name: "numWritten", scope: !438, file: !3, line: 115, type: !70)
!448 = !DILocation(line: 115, column: 12, scope: !438)
!449 = !DILocation(line: 121, column: 5, scope: !438)
!450 = !DILocation(line: 121, column: 12, scope: !438)
!451 = !DILocation(line: 121, column: 25, scope: !438)
!452 = !DILocation(line: 121, column: 23, scope: !438)
!453 = !DILocation(line: 121, column: 34, scope: !438)
!454 = !DILocation(line: 121, column: 37, scope: !438)
!455 = !DILocation(line: 121, column: 67, scope: !438)
!456 = !DILocation(line: 121, column: 70, scope: !438)
!457 = !DILocation(line: 0, scope: !438)
!458 = !DILocalVariable(name: "byte", scope: !459, file: !3, line: 123, type: !23)
!459 = distinct !DILexicalBlock(scope: !438, file: !3, line: 122, column: 5)
!460 = !DILocation(line: 123, column: 13, scope: !459)
!461 = !DILocation(line: 124, column: 17, scope: !459)
!462 = !DILocation(line: 124, column: 25, scope: !459)
!463 = !DILocation(line: 124, column: 23, scope: !459)
!464 = !DILocation(line: 124, column: 9, scope: !459)
!465 = !DILocation(line: 125, column: 45, scope: !459)
!466 = !DILocation(line: 125, column: 29, scope: !459)
!467 = !DILocation(line: 125, column: 9, scope: !459)
!468 = !DILocation(line: 125, column: 15, scope: !459)
!469 = !DILocation(line: 125, column: 27, scope: !459)
!470 = !DILocation(line: 126, column: 9, scope: !459)
!471 = distinct !{!471, !449, !472, !435}
!472 = !DILocation(line: 127, column: 5, scope: !438)
!473 = !DILocation(line: 129, column: 12, scope: !438)
!474 = !DILocation(line: 129, column: 5, scope: !438)
!475 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !476, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!476 = !DISubroutineType(types: !477)
!477 = !{!70, !411, !70, !271}
!478 = !DILocalVariable(name: "bytes", arg: 1, scope: !475, file: !3, line: 135, type: !411)
!479 = !DILocation(line: 135, column: 41, scope: !475)
!480 = !DILocalVariable(name: "numBytes", arg: 2, scope: !475, file: !3, line: 135, type: !70)
!481 = !DILocation(line: 135, column: 55, scope: !475)
!482 = !DILocalVariable(name: "hex", arg: 3, scope: !475, file: !3, line: 135, type: !271)
!483 = !DILocation(line: 135, column: 76, scope: !475)
!484 = !DILocalVariable(name: "numWritten", scope: !475, file: !3, line: 137, type: !70)
!485 = !DILocation(line: 137, column: 12, scope: !475)
!486 = !DILocation(line: 143, column: 5, scope: !475)
!487 = !DILocation(line: 143, column: 12, scope: !475)
!488 = !DILocation(line: 143, column: 25, scope: !475)
!489 = !DILocation(line: 143, column: 23, scope: !475)
!490 = !DILocation(line: 143, column: 34, scope: !475)
!491 = !DILocation(line: 143, column: 47, scope: !475)
!492 = !DILocation(line: 143, column: 55, scope: !475)
!493 = !DILocation(line: 143, column: 53, scope: !475)
!494 = !DILocation(line: 143, column: 37, scope: !475)
!495 = !DILocation(line: 143, column: 68, scope: !475)
!496 = !DILocation(line: 143, column: 81, scope: !475)
!497 = !DILocation(line: 143, column: 89, scope: !475)
!498 = !DILocation(line: 143, column: 87, scope: !475)
!499 = !DILocation(line: 143, column: 100, scope: !475)
!500 = !DILocation(line: 143, column: 71, scope: !475)
!501 = !DILocation(line: 0, scope: !475)
!502 = !DILocalVariable(name: "byte", scope: !503, file: !3, line: 145, type: !23)
!503 = distinct !DILexicalBlock(scope: !475, file: !3, line: 144, column: 5)
!504 = !DILocation(line: 145, column: 13, scope: !503)
!505 = !DILocation(line: 146, column: 18, scope: !503)
!506 = !DILocation(line: 146, column: 26, scope: !503)
!507 = !DILocation(line: 146, column: 24, scope: !503)
!508 = !DILocation(line: 146, column: 9, scope: !503)
!509 = !DILocation(line: 147, column: 45, scope: !503)
!510 = !DILocation(line: 147, column: 29, scope: !503)
!511 = !DILocation(line: 147, column: 9, scope: !503)
!512 = !DILocation(line: 147, column: 15, scope: !503)
!513 = !DILocation(line: 147, column: 27, scope: !503)
!514 = !DILocation(line: 148, column: 9, scope: !503)
!515 = distinct !{!515, !486, !516, !435}
!516 = !DILocation(line: 149, column: 5, scope: !475)
!517 = !DILocation(line: 151, column: 12, scope: !475)
!518 = !DILocation(line: 151, column: 5, scope: !475)
!519 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !520, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DISubroutineType(types: !521)
!521 = !{!23}
!522 = !DILocation(line: 158, column: 5, scope: !519)
!523 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !520, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!524 = !DILocation(line: 163, column: 5, scope: !523)
!525 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !520, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DILocation(line: 168, column: 13, scope: !525)
!527 = !DILocation(line: 168, column: 20, scope: !525)
!528 = !DILocation(line: 168, column: 5, scope: !525)
!529 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DILocation(line: 187, column: 16, scope: !529)
!531 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DILocation(line: 188, column: 16, scope: !531)
!533 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DILocation(line: 189, column: 16, scope: !533)
!535 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DILocation(line: 190, column: 16, scope: !535)
!537 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DILocation(line: 191, column: 16, scope: !537)
!539 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DILocation(line: 192, column: 16, scope: !539)
!541 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DILocation(line: 193, column: 16, scope: !541)
!543 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DILocation(line: 194, column: 16, scope: !543)
!545 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DILocation(line: 195, column: 16, scope: !545)
!547 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 198, column: 15, scope: !547)
!549 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DILocation(line: 199, column: 15, scope: !549)
!551 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DILocation(line: 200, column: 15, scope: !551)
!553 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DILocation(line: 201, column: 15, scope: !553)
!555 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DILocation(line: 202, column: 15, scope: !555)
!557 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 203, column: 15, scope: !557)
!559 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DILocation(line: 204, column: 15, scope: !559)
!561 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!562 = !DILocation(line: 205, column: 15, scope: !561)
!563 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DILocation(line: 206, column: 15, scope: !563)
