; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@STATIC_CONST_FIVE = dso_local global i32 5, align 4, !dbg !0
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !9
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !34
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !36
@globalTrue = dso_local global i32 1, align 4, !dbg !38
@globalFalse = dso_local global i32 0, align 4, !dbg !40
@globalFive = dso_local global i32 5, align 4, !dbg !42
@globalArgc = dso_local global i32 0, align 4, !dbg !44
@globalArgv = dso_local global i8** null, align 8, !dbg !46
@.str.4 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.6 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.7 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_06_bad() #0 !dbg !55 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !60, metadata !DIExpression()), !dbg !64
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !64
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !64
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !65
  store i8* %arraydecay, i8** %data, align 8, !dbg !66
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !67
  %cmp = icmp eq i32 %1, 5, !dbg !69
  br i1 %cmp, label %if.then, label %if.end6, !dbg !70

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !71, metadata !DIExpression()), !dbg !77
  %2 = load i8*, i8** %data, align 8, !dbg !78
  %call = call i64 @strlen(i8* %2) #7, !dbg !79
  store i64 %call, i64* %dataLen, align 8, !dbg !77
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !80, metadata !DIExpression()), !dbg !81
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !82
  store i8* %call1, i8** %environment, align 8, !dbg !81
  %3 = load i8*, i8** %environment, align 8, !dbg !83
  %cmp2 = icmp ne i8* %3, null, !dbg !85
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !86

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !87
  %5 = load i64, i64* %dataLen, align 8, !dbg !89
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !90
  %6 = load i8*, i8** %environment, align 8, !dbg !91
  %7 = load i64, i64* %dataLen, align 8, !dbg !92
  %sub = sub i64 100, %7, !dbg !93
  %sub4 = sub i64 %sub, 1, !dbg !94
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #8, !dbg !95
  br label %if.end, !dbg !96

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !97

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !98
  %cmp7 = icmp eq i32 %8, 5, !dbg !100
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !101

if.then8:                                         ; preds = %if.end6
  %9 = load i8*, i8** %data, align 8, !dbg !102
  %call9 = call i32 (i8*, ...) @printf(i8* %9), !dbg !104
  br label %if.end10, !dbg !105

if.end10:                                         ; preds = %if.then8, %if.end6
  ret void, !dbg !106
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
define dso_local void @goodB2G1() #0 !dbg !107 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !110, metadata !DIExpression()), !dbg !111
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !111
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !111
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !112
  store i8* %arraydecay, i8** %data, align 8, !dbg !113
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !114
  %cmp = icmp eq i32 %1, 5, !dbg !116
  br i1 %cmp, label %if.then, label %if.end6, !dbg !117

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !118, metadata !DIExpression()), !dbg !121
  %2 = load i8*, i8** %data, align 8, !dbg !122
  %call = call i64 @strlen(i8* %2) #7, !dbg !123
  store i64 %call, i64* %dataLen, align 8, !dbg !121
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !124, metadata !DIExpression()), !dbg !125
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !126
  store i8* %call1, i8** %environment, align 8, !dbg !125
  %3 = load i8*, i8** %environment, align 8, !dbg !127
  %cmp2 = icmp ne i8* %3, null, !dbg !129
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !130

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !131
  %5 = load i64, i64* %dataLen, align 8, !dbg !133
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !134
  %6 = load i8*, i8** %environment, align 8, !dbg !135
  %7 = load i64, i64* %dataLen, align 8, !dbg !136
  %sub = sub i64 100, %7, !dbg !137
  %sub4 = sub i64 %sub, 1, !dbg !138
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #8, !dbg !139
  br label %if.end, !dbg !140

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !141

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !142
  %cmp7 = icmp ne i32 %8, 5, !dbg !144
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !145

if.then8:                                         ; preds = %if.end6
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !146
  br label %if.end10, !dbg !148

if.else:                                          ; preds = %if.end6
  %9 = load i8*, i8** %data, align 8, !dbg !149
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %9), !dbg !151
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  ret void, !dbg !152
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !153 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !156, metadata !DIExpression()), !dbg !157
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !157
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !157
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !158
  store i8* %arraydecay, i8** %data, align 8, !dbg !159
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !160
  %cmp = icmp eq i32 %1, 5, !dbg !162
  br i1 %cmp, label %if.then, label %if.end6, !dbg !163

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !164, metadata !DIExpression()), !dbg !167
  %2 = load i8*, i8** %data, align 8, !dbg !168
  %call = call i64 @strlen(i8* %2) #7, !dbg !169
  store i64 %call, i64* %dataLen, align 8, !dbg !167
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !170, metadata !DIExpression()), !dbg !171
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !172
  store i8* %call1, i8** %environment, align 8, !dbg !171
  %3 = load i8*, i8** %environment, align 8, !dbg !173
  %cmp2 = icmp ne i8* %3, null, !dbg !175
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !176

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !177
  %5 = load i64, i64* %dataLen, align 8, !dbg !179
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !180
  %6 = load i8*, i8** %environment, align 8, !dbg !181
  %7 = load i64, i64* %dataLen, align 8, !dbg !182
  %sub = sub i64 100, %7, !dbg !183
  %sub4 = sub i64 %sub, 1, !dbg !184
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #8, !dbg !185
  br label %if.end, !dbg !186

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !187

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !188
  %cmp7 = icmp eq i32 %8, 5, !dbg !190
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !191

if.then8:                                         ; preds = %if.end6
  %9 = load i8*, i8** %data, align 8, !dbg !192
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %9), !dbg !194
  br label %if.end10, !dbg !195

if.end10:                                         ; preds = %if.then8, %if.end6
  ret void, !dbg !196
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !197 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !200, metadata !DIExpression()), !dbg !201
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !201
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !201
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !202
  store i8* %arraydecay, i8** %data, align 8, !dbg !203
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !204
  %cmp = icmp ne i32 %1, 5, !dbg !206
  br i1 %cmp, label %if.then, label %if.else, !dbg !207

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !208
  br label %if.end, !dbg !210

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !211
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !213
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !214
  %cmp1 = icmp eq i32 %3, 5, !dbg !216
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !217

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !218
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !220
  br label %if.end4, !dbg !221

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !222
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !223 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !226, metadata !DIExpression()), !dbg !227
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !227
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !227
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !228
  store i8* %arraydecay, i8** %data, align 8, !dbg !229
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !230
  %cmp = icmp eq i32 %1, 5, !dbg !232
  br i1 %cmp, label %if.then, label %if.end, !dbg !233

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !234
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !236
  br label %if.end, !dbg !237

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !238
  %cmp1 = icmp eq i32 %3, 5, !dbg !240
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !241

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !242
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !244
  br label %if.end4, !dbg !245

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !246
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_06_good() #0 !dbg !247 {
entry:
  call void @goodB2G1(), !dbg !248
  call void @goodB2G2(), !dbg !249
  call void @goodG2B1(), !dbg !250
  call void @goodG2B2(), !dbg !251
  ret void, !dbg !252
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !253 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !256, metadata !DIExpression()), !dbg !257
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !258
  %0 = load i8*, i8** %line.addr, align 8, !dbg !259
  %cmp = icmp ne i8* %0, null, !dbg !261
  br i1 %cmp, label %if.then, label %if.end, !dbg !262

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !263
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !265
  br label %if.end, !dbg !266

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !267
  ret void, !dbg !268
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !269 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !270, metadata !DIExpression()), !dbg !271
  %0 = load i8*, i8** %line.addr, align 8, !dbg !272
  %cmp = icmp ne i8* %0, null, !dbg !274
  br i1 %cmp, label %if.then, label %if.end, !dbg !275

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !276
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !278
  br label %if.end, !dbg !279

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !280
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !281 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !286, metadata !DIExpression()), !dbg !287
  %0 = load i32*, i32** %line.addr, align 8, !dbg !288
  %cmp = icmp ne i32* %0, null, !dbg !290
  br i1 %cmp, label %if.then, label %if.end, !dbg !291

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !292
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !294
  br label %if.end, !dbg !295

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !296
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !297 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !302
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.8, i64 0, i64 0), i32 %0), !dbg !303
  ret void, !dbg !304
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !305 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !309, metadata !DIExpression()), !dbg !310
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !311
  %conv = sext i16 %0 to i32, !dbg !311
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !312
  ret void, !dbg !313
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !314 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !318, metadata !DIExpression()), !dbg !319
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !320
  %conv = fpext float %0 to double, !dbg !320
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !321
  ret void, !dbg !322
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !323 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !327, metadata !DIExpression()), !dbg !328
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !329
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !330
  ret void, !dbg !331
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !332 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !339, metadata !DIExpression()), !dbg !340
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !341
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !342
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !344 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !347, metadata !DIExpression()), !dbg !348
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !349
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !350
  ret void, !dbg !351
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !352 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !355, metadata !DIExpression()), !dbg !356
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !357
  %conv = sext i8 %0 to i32, !dbg !357
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !358
  ret void, !dbg !359
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !360 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !363, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !365, metadata !DIExpression()), !dbg !369
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !370
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !371
  store i32 %0, i32* %arrayidx, align 4, !dbg !372
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !373
  store i32 0, i32* %arrayidx1, align 4, !dbg !374
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !375
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !376
  ret void, !dbg !377
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !378 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !381, metadata !DIExpression()), !dbg !382
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !383
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !384
  ret void, !dbg !385
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !386 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !389, metadata !DIExpression()), !dbg !390
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !391
  %conv = zext i8 %0 to i32, !dbg !391
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !392
  ret void, !dbg !393
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !394 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !400
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !401
  ret void, !dbg !402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !403 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !413, metadata !DIExpression()), !dbg !414
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !415
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !416
  %1 = load i32, i32* %intOne, align 4, !dbg !416
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !417
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !418
  %3 = load i32, i32* %intTwo, align 4, !dbg !418
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !419
  ret void, !dbg !420
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !421 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !425, metadata !DIExpression()), !dbg !426
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !427, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.declare(metadata i64* %i, metadata !429, metadata !DIExpression()), !dbg !430
  store i64 0, i64* %i, align 8, !dbg !431
  br label %for.cond, !dbg !433

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !434
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !436
  %cmp = icmp ult i64 %0, %1, !dbg !437
  br i1 %cmp, label %for.body, label %for.end, !dbg !438

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !439
  %3 = load i64, i64* %i, align 8, !dbg !441
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !439
  %4 = load i8, i8* %arrayidx, align 1, !dbg !439
  %conv = zext i8 %4 to i32, !dbg !439
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !442
  br label %for.inc, !dbg !443

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !444
  %inc = add i64 %5, 1, !dbg !444
  store i64 %inc, i64* %i, align 8, !dbg !444
  br label %for.cond, !dbg !445, !llvm.loop !446

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !449
  ret void, !dbg !450
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !451 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !454, metadata !DIExpression()), !dbg !455
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !456, metadata !DIExpression()), !dbg !457
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !458, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !460, metadata !DIExpression()), !dbg !461
  store i64 0, i64* %numWritten, align 8, !dbg !461
  br label %while.cond, !dbg !462

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !463
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !464
  %cmp = icmp ult i64 %0, %1, !dbg !465
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !466

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !467
  %2 = load i16*, i16** %call, align 8, !dbg !467
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !467
  %4 = load i64, i64* %numWritten, align 8, !dbg !467
  %mul = mul i64 2, %4, !dbg !467
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !467
  %5 = load i8, i8* %arrayidx, align 1, !dbg !467
  %conv = sext i8 %5 to i32, !dbg !467
  %idxprom = sext i32 %conv to i64, !dbg !467
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !467
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !467
  %conv2 = zext i16 %6 to i32, !dbg !467
  %and = and i32 %conv2, 4096, !dbg !467
  %tobool = icmp ne i32 %and, 0, !dbg !467
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !468

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !469
  %7 = load i16*, i16** %call3, align 8, !dbg !469
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !469
  %9 = load i64, i64* %numWritten, align 8, !dbg !469
  %mul4 = mul i64 2, %9, !dbg !469
  %add = add i64 %mul4, 1, !dbg !469
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !469
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !469
  %conv6 = sext i8 %10 to i32, !dbg !469
  %idxprom7 = sext i32 %conv6 to i64, !dbg !469
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !469
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !469
  %conv9 = zext i16 %11 to i32, !dbg !469
  %and10 = and i32 %conv9, 4096, !dbg !469
  %tobool11 = icmp ne i32 %and10, 0, !dbg !468
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !470
  br i1 %12, label %while.body, label %while.end, !dbg !462

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !471, metadata !DIExpression()), !dbg !473
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !474
  %14 = load i64, i64* %numWritten, align 8, !dbg !475
  %mul12 = mul i64 2, %14, !dbg !476
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !474
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !477
  %15 = load i32, i32* %byte, align 4, !dbg !478
  %conv15 = trunc i32 %15 to i8, !dbg !479
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !480
  %17 = load i64, i64* %numWritten, align 8, !dbg !481
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !480
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !482
  %18 = load i64, i64* %numWritten, align 8, !dbg !483
  %inc = add i64 %18, 1, !dbg !483
  store i64 %inc, i64* %numWritten, align 8, !dbg !483
  br label %while.cond, !dbg !462, !llvm.loop !484

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !486
  ret i64 %19, !dbg !487
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !488 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !491, metadata !DIExpression()), !dbg !492
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !493, metadata !DIExpression()), !dbg !494
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !495, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !497, metadata !DIExpression()), !dbg !498
  store i64 0, i64* %numWritten, align 8, !dbg !498
  br label %while.cond, !dbg !499

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !500
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !501
  %cmp = icmp ult i64 %0, %1, !dbg !502
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !503

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !504
  %3 = load i64, i64* %numWritten, align 8, !dbg !505
  %mul = mul i64 2, %3, !dbg !506
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !504
  %4 = load i32, i32* %arrayidx, align 4, !dbg !504
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !507
  %tobool = icmp ne i32 %call, 0, !dbg !507
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !508

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !509
  %6 = load i64, i64* %numWritten, align 8, !dbg !510
  %mul1 = mul i64 2, %6, !dbg !511
  %add = add i64 %mul1, 1, !dbg !512
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !509
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !509
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !513
  %tobool4 = icmp ne i32 %call3, 0, !dbg !508
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !514
  br i1 %8, label %while.body, label %while.end, !dbg !499

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !515, metadata !DIExpression()), !dbg !517
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !518
  %10 = load i64, i64* %numWritten, align 8, !dbg !519
  %mul5 = mul i64 2, %10, !dbg !520
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !518
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !521
  %11 = load i32, i32* %byte, align 4, !dbg !522
  %conv = trunc i32 %11 to i8, !dbg !523
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !524
  %13 = load i64, i64* %numWritten, align 8, !dbg !525
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !524
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !526
  %14 = load i64, i64* %numWritten, align 8, !dbg !527
  %inc = add i64 %14, 1, !dbg !527
  store i64 %inc, i64* %numWritten, align 8, !dbg !527
  br label %while.cond, !dbg !499, !llvm.loop !528

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !530
  ret i64 %15, !dbg !531
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !532 {
entry:
  ret i32 1, !dbg !535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !536 {
entry:
  ret i32 0, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !538 {
entry:
  %call = call i32 @rand() #8, !dbg !539
  %rem = srem i32 %call, 2, !dbg !540
  ret i32 %rem, !dbg !541
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !542 {
entry:
  ret void, !dbg !543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !544 {
entry:
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !546 {
entry:
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !548 {
entry:
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !550 {
entry:
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !552 {
entry:
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !554 {
entry:
  ret void, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !556 {
entry:
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !558 {
entry:
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !560 {
entry:
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !562 {
entry:
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !564 {
entry:
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !566 {
entry:
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !568 {
entry:
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !570 {
entry:
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !572 {
entry:
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !574 {
entry:
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !576 {
entry:
  ret void, !dbg !577
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

!llvm.dbg.cu = !{!2, !11}
!llvm.ident = !{!51, !51}
!llvm.module.flags = !{!52, !53, !54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "STATIC_CONST_FIVE", scope: !2, file: !3, line: 36, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_06.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_727/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0}
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !11, file: !12, line: 174, type: !8, isLocal: false, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, retainedTypes: !30, globals: !33, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_727/source_code")
!13 = !{!14}
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 46, baseType: !16, size: 32, elements: !17)
!15 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!18 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!21 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!22 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!23 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!30 = !{!6, !8, !31, !32}
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!9, !34, !36, !38, !40, !42, !44, !46}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !11, file: !12, line: 175, type: !8, isLocal: false, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !11, file: !12, line: 176, type: !8, isLocal: false, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "globalTrue", scope: !11, file: !12, line: 181, type: !8, isLocal: false, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "globalFalse", scope: !11, file: !12, line: 182, type: !8, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "globalFive", scope: !11, file: !12, line: 183, type: !8, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalArgc", scope: !11, file: !12, line: 214, type: !8, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalArgv", scope: !11, file: !12, line: 215, type: !48, isLocal: false, isDefinition: true)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !{!"clang version 12.0.0"}
!52 = !{i32 7, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_06_bad", scope: !3, file: !3, line: 40, type: !56, scopeLine: 41, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!56 = !DISubroutineType(types: !57)
!57 = !{null}
!58 = !DILocalVariable(name: "data", scope: !55, file: !3, line: 42, type: !49)
!59 = !DILocation(line: 42, column: 12, scope: !55)
!60 = !DILocalVariable(name: "dataBuffer", scope: !55, file: !3, line: 43, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 800, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 100)
!64 = !DILocation(line: 43, column: 10, scope: !55)
!65 = !DILocation(line: 44, column: 12, scope: !55)
!66 = !DILocation(line: 44, column: 10, scope: !55)
!67 = !DILocation(line: 45, column: 8, scope: !68)
!68 = distinct !DILexicalBlock(scope: !55, file: !3, line: 45, column: 8)
!69 = !DILocation(line: 45, column: 25, scope: !68)
!70 = !DILocation(line: 45, column: 8, scope: !55)
!71 = !DILocalVariable(name: "dataLen", scope: !72, file: !3, line: 49, type: !74)
!72 = distinct !DILexicalBlock(scope: !73, file: !3, line: 47, column: 9)
!73 = distinct !DILexicalBlock(scope: !68, file: !3, line: 46, column: 5)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!76 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !DILocation(line: 49, column: 20, scope: !72)
!78 = !DILocation(line: 49, column: 37, scope: !72)
!79 = !DILocation(line: 49, column: 30, scope: !72)
!80 = !DILocalVariable(name: "environment", scope: !72, file: !3, line: 50, type: !49)
!81 = !DILocation(line: 50, column: 20, scope: !72)
!82 = !DILocation(line: 50, column: 34, scope: !72)
!83 = !DILocation(line: 52, column: 17, scope: !84)
!84 = distinct !DILexicalBlock(scope: !72, file: !3, line: 52, column: 17)
!85 = !DILocation(line: 52, column: 29, scope: !84)
!86 = !DILocation(line: 52, column: 17, scope: !72)
!87 = !DILocation(line: 55, column: 25, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !3, line: 53, column: 13)
!89 = !DILocation(line: 55, column: 30, scope: !88)
!90 = !DILocation(line: 55, column: 29, scope: !88)
!91 = !DILocation(line: 55, column: 39, scope: !88)
!92 = !DILocation(line: 55, column: 56, scope: !88)
!93 = !DILocation(line: 55, column: 55, scope: !88)
!94 = !DILocation(line: 55, column: 63, scope: !88)
!95 = !DILocation(line: 55, column: 17, scope: !88)
!96 = !DILocation(line: 56, column: 13, scope: !88)
!97 = !DILocation(line: 58, column: 5, scope: !73)
!98 = !DILocation(line: 59, column: 8, scope: !99)
!99 = distinct !DILexicalBlock(scope: !55, file: !3, line: 59, column: 8)
!100 = !DILocation(line: 59, column: 25, scope: !99)
!101 = !DILocation(line: 59, column: 8, scope: !55)
!102 = !DILocation(line: 62, column: 16, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !3, line: 60, column: 5)
!104 = !DILocation(line: 62, column: 9, scope: !103)
!105 = !DILocation(line: 63, column: 5, scope: !103)
!106 = !DILocation(line: 64, column: 1, scope: !55)
!107 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 71, type: !56, scopeLine: 72, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!108 = !DILocalVariable(name: "data", scope: !107, file: !3, line: 73, type: !49)
!109 = !DILocation(line: 73, column: 12, scope: !107)
!110 = !DILocalVariable(name: "dataBuffer", scope: !107, file: !3, line: 74, type: !61)
!111 = !DILocation(line: 74, column: 10, scope: !107)
!112 = !DILocation(line: 75, column: 12, scope: !107)
!113 = !DILocation(line: 75, column: 10, scope: !107)
!114 = !DILocation(line: 76, column: 8, scope: !115)
!115 = distinct !DILexicalBlock(scope: !107, file: !3, line: 76, column: 8)
!116 = !DILocation(line: 76, column: 25, scope: !115)
!117 = !DILocation(line: 76, column: 8, scope: !107)
!118 = !DILocalVariable(name: "dataLen", scope: !119, file: !3, line: 80, type: !74)
!119 = distinct !DILexicalBlock(scope: !120, file: !3, line: 78, column: 9)
!120 = distinct !DILexicalBlock(scope: !115, file: !3, line: 77, column: 5)
!121 = !DILocation(line: 80, column: 20, scope: !119)
!122 = !DILocation(line: 80, column: 37, scope: !119)
!123 = !DILocation(line: 80, column: 30, scope: !119)
!124 = !DILocalVariable(name: "environment", scope: !119, file: !3, line: 81, type: !49)
!125 = !DILocation(line: 81, column: 20, scope: !119)
!126 = !DILocation(line: 81, column: 34, scope: !119)
!127 = !DILocation(line: 83, column: 17, scope: !128)
!128 = distinct !DILexicalBlock(scope: !119, file: !3, line: 83, column: 17)
!129 = !DILocation(line: 83, column: 29, scope: !128)
!130 = !DILocation(line: 83, column: 17, scope: !119)
!131 = !DILocation(line: 86, column: 25, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !3, line: 84, column: 13)
!133 = !DILocation(line: 86, column: 30, scope: !132)
!134 = !DILocation(line: 86, column: 29, scope: !132)
!135 = !DILocation(line: 86, column: 39, scope: !132)
!136 = !DILocation(line: 86, column: 56, scope: !132)
!137 = !DILocation(line: 86, column: 55, scope: !132)
!138 = !DILocation(line: 86, column: 63, scope: !132)
!139 = !DILocation(line: 86, column: 17, scope: !132)
!140 = !DILocation(line: 87, column: 13, scope: !132)
!141 = !DILocation(line: 89, column: 5, scope: !120)
!142 = !DILocation(line: 90, column: 8, scope: !143)
!143 = distinct !DILexicalBlock(scope: !107, file: !3, line: 90, column: 8)
!144 = !DILocation(line: 90, column: 25, scope: !143)
!145 = !DILocation(line: 90, column: 8, scope: !107)
!146 = !DILocation(line: 93, column: 9, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !3, line: 91, column: 5)
!148 = !DILocation(line: 94, column: 5, scope: !147)
!149 = !DILocation(line: 98, column: 24, scope: !150)
!150 = distinct !DILexicalBlock(scope: !143, file: !3, line: 96, column: 5)
!151 = !DILocation(line: 98, column: 9, scope: !150)
!152 = !DILocation(line: 100, column: 1, scope: !107)
!153 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 103, type: !56, scopeLine: 104, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!154 = !DILocalVariable(name: "data", scope: !153, file: !3, line: 105, type: !49)
!155 = !DILocation(line: 105, column: 12, scope: !153)
!156 = !DILocalVariable(name: "dataBuffer", scope: !153, file: !3, line: 106, type: !61)
!157 = !DILocation(line: 106, column: 10, scope: !153)
!158 = !DILocation(line: 107, column: 12, scope: !153)
!159 = !DILocation(line: 107, column: 10, scope: !153)
!160 = !DILocation(line: 108, column: 8, scope: !161)
!161 = distinct !DILexicalBlock(scope: !153, file: !3, line: 108, column: 8)
!162 = !DILocation(line: 108, column: 25, scope: !161)
!163 = !DILocation(line: 108, column: 8, scope: !153)
!164 = !DILocalVariable(name: "dataLen", scope: !165, file: !3, line: 112, type: !74)
!165 = distinct !DILexicalBlock(scope: !166, file: !3, line: 110, column: 9)
!166 = distinct !DILexicalBlock(scope: !161, file: !3, line: 109, column: 5)
!167 = !DILocation(line: 112, column: 20, scope: !165)
!168 = !DILocation(line: 112, column: 37, scope: !165)
!169 = !DILocation(line: 112, column: 30, scope: !165)
!170 = !DILocalVariable(name: "environment", scope: !165, file: !3, line: 113, type: !49)
!171 = !DILocation(line: 113, column: 20, scope: !165)
!172 = !DILocation(line: 113, column: 34, scope: !165)
!173 = !DILocation(line: 115, column: 17, scope: !174)
!174 = distinct !DILexicalBlock(scope: !165, file: !3, line: 115, column: 17)
!175 = !DILocation(line: 115, column: 29, scope: !174)
!176 = !DILocation(line: 115, column: 17, scope: !165)
!177 = !DILocation(line: 118, column: 25, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !3, line: 116, column: 13)
!179 = !DILocation(line: 118, column: 30, scope: !178)
!180 = !DILocation(line: 118, column: 29, scope: !178)
!181 = !DILocation(line: 118, column: 39, scope: !178)
!182 = !DILocation(line: 118, column: 56, scope: !178)
!183 = !DILocation(line: 118, column: 55, scope: !178)
!184 = !DILocation(line: 118, column: 63, scope: !178)
!185 = !DILocation(line: 118, column: 17, scope: !178)
!186 = !DILocation(line: 119, column: 13, scope: !178)
!187 = !DILocation(line: 121, column: 5, scope: !166)
!188 = !DILocation(line: 122, column: 8, scope: !189)
!189 = distinct !DILexicalBlock(scope: !153, file: !3, line: 122, column: 8)
!190 = !DILocation(line: 122, column: 25, scope: !189)
!191 = !DILocation(line: 122, column: 8, scope: !153)
!192 = !DILocation(line: 125, column: 24, scope: !193)
!193 = distinct !DILexicalBlock(scope: !189, file: !3, line: 123, column: 5)
!194 = !DILocation(line: 125, column: 9, scope: !193)
!195 = !DILocation(line: 126, column: 5, scope: !193)
!196 = !DILocation(line: 127, column: 1, scope: !153)
!197 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 130, type: !56, scopeLine: 131, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!198 = !DILocalVariable(name: "data", scope: !197, file: !3, line: 132, type: !49)
!199 = !DILocation(line: 132, column: 12, scope: !197)
!200 = !DILocalVariable(name: "dataBuffer", scope: !197, file: !3, line: 133, type: !61)
!201 = !DILocation(line: 133, column: 10, scope: !197)
!202 = !DILocation(line: 134, column: 12, scope: !197)
!203 = !DILocation(line: 134, column: 10, scope: !197)
!204 = !DILocation(line: 135, column: 8, scope: !205)
!205 = distinct !DILexicalBlock(scope: !197, file: !3, line: 135, column: 8)
!206 = !DILocation(line: 135, column: 25, scope: !205)
!207 = !DILocation(line: 135, column: 8, scope: !197)
!208 = !DILocation(line: 138, column: 9, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !3, line: 136, column: 5)
!210 = !DILocation(line: 139, column: 5, scope: !209)
!211 = !DILocation(line: 143, column: 16, scope: !212)
!212 = distinct !DILexicalBlock(scope: !205, file: !3, line: 141, column: 5)
!213 = !DILocation(line: 143, column: 9, scope: !212)
!214 = !DILocation(line: 145, column: 8, scope: !215)
!215 = distinct !DILexicalBlock(scope: !197, file: !3, line: 145, column: 8)
!216 = !DILocation(line: 145, column: 25, scope: !215)
!217 = !DILocation(line: 145, column: 8, scope: !197)
!218 = !DILocation(line: 148, column: 16, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !3, line: 146, column: 5)
!220 = !DILocation(line: 148, column: 9, scope: !219)
!221 = !DILocation(line: 149, column: 5, scope: !219)
!222 = !DILocation(line: 150, column: 1, scope: !197)
!223 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 153, type: !56, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!224 = !DILocalVariable(name: "data", scope: !223, file: !3, line: 155, type: !49)
!225 = !DILocation(line: 155, column: 12, scope: !223)
!226 = !DILocalVariable(name: "dataBuffer", scope: !223, file: !3, line: 156, type: !61)
!227 = !DILocation(line: 156, column: 10, scope: !223)
!228 = !DILocation(line: 157, column: 12, scope: !223)
!229 = !DILocation(line: 157, column: 10, scope: !223)
!230 = !DILocation(line: 158, column: 8, scope: !231)
!231 = distinct !DILexicalBlock(scope: !223, file: !3, line: 158, column: 8)
!232 = !DILocation(line: 158, column: 25, scope: !231)
!233 = !DILocation(line: 158, column: 8, scope: !223)
!234 = !DILocation(line: 161, column: 16, scope: !235)
!235 = distinct !DILexicalBlock(scope: !231, file: !3, line: 159, column: 5)
!236 = !DILocation(line: 161, column: 9, scope: !235)
!237 = !DILocation(line: 162, column: 5, scope: !235)
!238 = !DILocation(line: 163, column: 8, scope: !239)
!239 = distinct !DILexicalBlock(scope: !223, file: !3, line: 163, column: 8)
!240 = !DILocation(line: 163, column: 25, scope: !239)
!241 = !DILocation(line: 163, column: 8, scope: !223)
!242 = !DILocation(line: 166, column: 16, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !3, line: 164, column: 5)
!244 = !DILocation(line: 166, column: 9, scope: !243)
!245 = !DILocation(line: 167, column: 5, scope: !243)
!246 = !DILocation(line: 168, column: 1, scope: !223)
!247 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_06_good", scope: !3, file: !3, line: 170, type: !56, scopeLine: 171, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!248 = !DILocation(line: 172, column: 5, scope: !247)
!249 = !DILocation(line: 173, column: 5, scope: !247)
!250 = !DILocation(line: 174, column: 5, scope: !247)
!251 = !DILocation(line: 175, column: 5, scope: !247)
!252 = !DILocation(line: 176, column: 1, scope: !247)
!253 = distinct !DISubprogram(name: "printLine", scope: !12, file: !12, line: 11, type: !254, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !49}
!256 = !DILocalVariable(name: "line", arg: 1, scope: !253, file: !12, line: 11, type: !49)
!257 = !DILocation(line: 11, column: 25, scope: !253)
!258 = !DILocation(line: 13, column: 1, scope: !253)
!259 = !DILocation(line: 14, column: 8, scope: !260)
!260 = distinct !DILexicalBlock(scope: !253, file: !12, line: 14, column: 8)
!261 = !DILocation(line: 14, column: 13, scope: !260)
!262 = !DILocation(line: 14, column: 8, scope: !253)
!263 = !DILocation(line: 16, column: 24, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !12, line: 15, column: 5)
!265 = !DILocation(line: 16, column: 9, scope: !264)
!266 = !DILocation(line: 17, column: 5, scope: !264)
!267 = !DILocation(line: 18, column: 5, scope: !253)
!268 = !DILocation(line: 19, column: 1, scope: !253)
!269 = distinct !DISubprogram(name: "printSinkLine", scope: !12, file: !12, line: 20, type: !254, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!270 = !DILocalVariable(name: "line", arg: 1, scope: !269, file: !12, line: 20, type: !49)
!271 = !DILocation(line: 20, column: 29, scope: !269)
!272 = !DILocation(line: 22, column: 8, scope: !273)
!273 = distinct !DILexicalBlock(scope: !269, file: !12, line: 22, column: 8)
!274 = !DILocation(line: 22, column: 13, scope: !273)
!275 = !DILocation(line: 22, column: 8, scope: !269)
!276 = !DILocation(line: 24, column: 24, scope: !277)
!277 = distinct !DILexicalBlock(scope: !273, file: !12, line: 23, column: 5)
!278 = !DILocation(line: 24, column: 9, scope: !277)
!279 = !DILocation(line: 25, column: 5, scope: !277)
!280 = !DILocation(line: 26, column: 1, scope: !269)
!281 = distinct !DISubprogram(name: "printWLine", scope: !12, file: !12, line: 27, type: !282, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !75, line: 74, baseType: !8)
!286 = !DILocalVariable(name: "line", arg: 1, scope: !281, file: !12, line: 27, type: !284)
!287 = !DILocation(line: 27, column: 29, scope: !281)
!288 = !DILocation(line: 29, column: 8, scope: !289)
!289 = distinct !DILexicalBlock(scope: !281, file: !12, line: 29, column: 8)
!290 = !DILocation(line: 29, column: 13, scope: !289)
!291 = !DILocation(line: 29, column: 8, scope: !281)
!292 = !DILocation(line: 31, column: 27, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !12, line: 30, column: 5)
!294 = !DILocation(line: 31, column: 9, scope: !293)
!295 = !DILocation(line: 32, column: 5, scope: !293)
!296 = !DILocation(line: 33, column: 1, scope: !281)
!297 = distinct !DISubprogram(name: "printIntLine", scope: !12, file: !12, line: 35, type: !298, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !8}
!300 = !DILocalVariable(name: "intNumber", arg: 1, scope: !297, file: !12, line: 35, type: !8)
!301 = !DILocation(line: 35, column: 24, scope: !297)
!302 = !DILocation(line: 37, column: 20, scope: !297)
!303 = !DILocation(line: 37, column: 5, scope: !297)
!304 = !DILocation(line: 38, column: 1, scope: !297)
!305 = distinct !DISubprogram(name: "printShortLine", scope: !12, file: !12, line: 40, type: !306, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !308}
!308 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!309 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !305, file: !12, line: 40, type: !308)
!310 = !DILocation(line: 40, column: 28, scope: !305)
!311 = !DILocation(line: 42, column: 21, scope: !305)
!312 = !DILocation(line: 42, column: 5, scope: !305)
!313 = !DILocation(line: 43, column: 1, scope: !305)
!314 = distinct !DISubprogram(name: "printFloatLine", scope: !12, file: !12, line: 45, type: !315, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !317}
!317 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!318 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !314, file: !12, line: 45, type: !317)
!319 = !DILocation(line: 45, column: 28, scope: !314)
!320 = !DILocation(line: 47, column: 20, scope: !314)
!321 = !DILocation(line: 47, column: 5, scope: !314)
!322 = !DILocation(line: 48, column: 1, scope: !314)
!323 = distinct !DISubprogram(name: "printLongLine", scope: !12, file: !12, line: 50, type: !324, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !326}
!326 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!327 = !DILocalVariable(name: "longNumber", arg: 1, scope: !323, file: !12, line: 50, type: !326)
!328 = !DILocation(line: 50, column: 26, scope: !323)
!329 = !DILocation(line: 52, column: 21, scope: !323)
!330 = !DILocation(line: 52, column: 5, scope: !323)
!331 = !DILocation(line: 53, column: 1, scope: !323)
!332 = distinct !DISubprogram(name: "printLongLongLine", scope: !12, file: !12, line: 55, type: !333, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !335}
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !336, line: 27, baseType: !337)
!336 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !338, line: 44, baseType: !326)
!338 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!339 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !332, file: !12, line: 55, type: !335)
!340 = !DILocation(line: 55, column: 33, scope: !332)
!341 = !DILocation(line: 57, column: 29, scope: !332)
!342 = !DILocation(line: 57, column: 5, scope: !332)
!343 = !DILocation(line: 58, column: 1, scope: !332)
!344 = distinct !DISubprogram(name: "printSizeTLine", scope: !12, file: !12, line: 60, type: !345, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !74}
!347 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !344, file: !12, line: 60, type: !74)
!348 = !DILocation(line: 60, column: 29, scope: !344)
!349 = !DILocation(line: 62, column: 21, scope: !344)
!350 = !DILocation(line: 62, column: 5, scope: !344)
!351 = !DILocation(line: 63, column: 1, scope: !344)
!352 = distinct !DISubprogram(name: "printHexCharLine", scope: !12, file: !12, line: 65, type: !353, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !50}
!355 = !DILocalVariable(name: "charHex", arg: 1, scope: !352, file: !12, line: 65, type: !50)
!356 = !DILocation(line: 65, column: 29, scope: !352)
!357 = !DILocation(line: 67, column: 22, scope: !352)
!358 = !DILocation(line: 67, column: 5, scope: !352)
!359 = !DILocation(line: 68, column: 1, scope: !352)
!360 = distinct !DISubprogram(name: "printWcharLine", scope: !12, file: !12, line: 70, type: !361, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !285}
!363 = !DILocalVariable(name: "wideChar", arg: 1, scope: !360, file: !12, line: 70, type: !285)
!364 = !DILocation(line: 70, column: 29, scope: !360)
!365 = !DILocalVariable(name: "s", scope: !360, file: !12, line: 74, type: !366)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 64, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 2)
!369 = !DILocation(line: 74, column: 13, scope: !360)
!370 = !DILocation(line: 75, column: 16, scope: !360)
!371 = !DILocation(line: 75, column: 9, scope: !360)
!372 = !DILocation(line: 75, column: 14, scope: !360)
!373 = !DILocation(line: 76, column: 9, scope: !360)
!374 = !DILocation(line: 76, column: 14, scope: !360)
!375 = !DILocation(line: 77, column: 21, scope: !360)
!376 = !DILocation(line: 77, column: 5, scope: !360)
!377 = !DILocation(line: 78, column: 1, scope: !360)
!378 = distinct !DISubprogram(name: "printUnsignedLine", scope: !12, file: !12, line: 80, type: !379, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !16}
!381 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !378, file: !12, line: 80, type: !16)
!382 = !DILocation(line: 80, column: 33, scope: !378)
!383 = !DILocation(line: 82, column: 20, scope: !378)
!384 = !DILocation(line: 82, column: 5, scope: !378)
!385 = !DILocation(line: 83, column: 1, scope: !378)
!386 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !12, file: !12, line: 85, type: !387, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !32}
!389 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !386, file: !12, line: 85, type: !32)
!390 = !DILocation(line: 85, column: 45, scope: !386)
!391 = !DILocation(line: 87, column: 22, scope: !386)
!392 = !DILocation(line: 87, column: 5, scope: !386)
!393 = !DILocation(line: 88, column: 1, scope: !386)
!394 = distinct !DISubprogram(name: "printDoubleLine", scope: !12, file: !12, line: 90, type: !395, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !397}
!397 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!398 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !394, file: !12, line: 90, type: !397)
!399 = !DILocation(line: 90, column: 29, scope: !394)
!400 = !DILocation(line: 92, column: 20, scope: !394)
!401 = !DILocation(line: 92, column: 5, scope: !394)
!402 = !DILocation(line: 93, column: 1, scope: !394)
!403 = distinct !DISubprogram(name: "printStructLine", scope: !12, file: !12, line: 95, type: !404, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !406}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !408, line: 100, baseType: !409)
!408 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_727/source_code")
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !408, line: 96, size: 64, elements: !410)
!410 = !{!411, !412}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !409, file: !408, line: 98, baseType: !8, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !409, file: !408, line: 99, baseType: !8, size: 32, offset: 32)
!413 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !403, file: !12, line: 95, type: !406)
!414 = !DILocation(line: 95, column: 40, scope: !403)
!415 = !DILocation(line: 97, column: 26, scope: !403)
!416 = !DILocation(line: 97, column: 47, scope: !403)
!417 = !DILocation(line: 97, column: 55, scope: !403)
!418 = !DILocation(line: 97, column: 76, scope: !403)
!419 = !DILocation(line: 97, column: 5, scope: !403)
!420 = !DILocation(line: 98, column: 1, scope: !403)
!421 = distinct !DISubprogram(name: "printBytesLine", scope: !12, file: !12, line: 100, type: !422, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !424, !74}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!425 = !DILocalVariable(name: "bytes", arg: 1, scope: !421, file: !12, line: 100, type: !424)
!426 = !DILocation(line: 100, column: 38, scope: !421)
!427 = !DILocalVariable(name: "numBytes", arg: 2, scope: !421, file: !12, line: 100, type: !74)
!428 = !DILocation(line: 100, column: 52, scope: !421)
!429 = !DILocalVariable(name: "i", scope: !421, file: !12, line: 102, type: !74)
!430 = !DILocation(line: 102, column: 12, scope: !421)
!431 = !DILocation(line: 103, column: 12, scope: !432)
!432 = distinct !DILexicalBlock(scope: !421, file: !12, line: 103, column: 5)
!433 = !DILocation(line: 103, column: 10, scope: !432)
!434 = !DILocation(line: 103, column: 17, scope: !435)
!435 = distinct !DILexicalBlock(scope: !432, file: !12, line: 103, column: 5)
!436 = !DILocation(line: 103, column: 21, scope: !435)
!437 = !DILocation(line: 103, column: 19, scope: !435)
!438 = !DILocation(line: 103, column: 5, scope: !432)
!439 = !DILocation(line: 105, column: 24, scope: !440)
!440 = distinct !DILexicalBlock(scope: !435, file: !12, line: 104, column: 5)
!441 = !DILocation(line: 105, column: 30, scope: !440)
!442 = !DILocation(line: 105, column: 9, scope: !440)
!443 = !DILocation(line: 106, column: 5, scope: !440)
!444 = !DILocation(line: 103, column: 31, scope: !435)
!445 = !DILocation(line: 103, column: 5, scope: !435)
!446 = distinct !{!446, !438, !447, !448}
!447 = !DILocation(line: 106, column: 5, scope: !432)
!448 = !{!"llvm.loop.mustprogress"}
!449 = !DILocation(line: 107, column: 5, scope: !421)
!450 = !DILocation(line: 108, column: 1, scope: !421)
!451 = distinct !DISubprogram(name: "decodeHexChars", scope: !12, file: !12, line: 113, type: !452, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!452 = !DISubroutineType(types: !453)
!453 = !{!74, !424, !74, !49}
!454 = !DILocalVariable(name: "bytes", arg: 1, scope: !451, file: !12, line: 113, type: !424)
!455 = !DILocation(line: 113, column: 39, scope: !451)
!456 = !DILocalVariable(name: "numBytes", arg: 2, scope: !451, file: !12, line: 113, type: !74)
!457 = !DILocation(line: 113, column: 53, scope: !451)
!458 = !DILocalVariable(name: "hex", arg: 3, scope: !451, file: !12, line: 113, type: !49)
!459 = !DILocation(line: 113, column: 71, scope: !451)
!460 = !DILocalVariable(name: "numWritten", scope: !451, file: !12, line: 115, type: !74)
!461 = !DILocation(line: 115, column: 12, scope: !451)
!462 = !DILocation(line: 121, column: 5, scope: !451)
!463 = !DILocation(line: 121, column: 12, scope: !451)
!464 = !DILocation(line: 121, column: 25, scope: !451)
!465 = !DILocation(line: 121, column: 23, scope: !451)
!466 = !DILocation(line: 121, column: 34, scope: !451)
!467 = !DILocation(line: 121, column: 37, scope: !451)
!468 = !DILocation(line: 121, column: 67, scope: !451)
!469 = !DILocation(line: 121, column: 70, scope: !451)
!470 = !DILocation(line: 0, scope: !451)
!471 = !DILocalVariable(name: "byte", scope: !472, file: !12, line: 123, type: !8)
!472 = distinct !DILexicalBlock(scope: !451, file: !12, line: 122, column: 5)
!473 = !DILocation(line: 123, column: 13, scope: !472)
!474 = !DILocation(line: 124, column: 17, scope: !472)
!475 = !DILocation(line: 124, column: 25, scope: !472)
!476 = !DILocation(line: 124, column: 23, scope: !472)
!477 = !DILocation(line: 124, column: 9, scope: !472)
!478 = !DILocation(line: 125, column: 45, scope: !472)
!479 = !DILocation(line: 125, column: 29, scope: !472)
!480 = !DILocation(line: 125, column: 9, scope: !472)
!481 = !DILocation(line: 125, column: 15, scope: !472)
!482 = !DILocation(line: 125, column: 27, scope: !472)
!483 = !DILocation(line: 126, column: 9, scope: !472)
!484 = distinct !{!484, !462, !485, !448}
!485 = !DILocation(line: 127, column: 5, scope: !451)
!486 = !DILocation(line: 129, column: 12, scope: !451)
!487 = !DILocation(line: 129, column: 5, scope: !451)
!488 = distinct !DISubprogram(name: "decodeHexWChars", scope: !12, file: !12, line: 135, type: !489, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!489 = !DISubroutineType(types: !490)
!490 = !{!74, !424, !74, !284}
!491 = !DILocalVariable(name: "bytes", arg: 1, scope: !488, file: !12, line: 135, type: !424)
!492 = !DILocation(line: 135, column: 41, scope: !488)
!493 = !DILocalVariable(name: "numBytes", arg: 2, scope: !488, file: !12, line: 135, type: !74)
!494 = !DILocation(line: 135, column: 55, scope: !488)
!495 = !DILocalVariable(name: "hex", arg: 3, scope: !488, file: !12, line: 135, type: !284)
!496 = !DILocation(line: 135, column: 76, scope: !488)
!497 = !DILocalVariable(name: "numWritten", scope: !488, file: !12, line: 137, type: !74)
!498 = !DILocation(line: 137, column: 12, scope: !488)
!499 = !DILocation(line: 143, column: 5, scope: !488)
!500 = !DILocation(line: 143, column: 12, scope: !488)
!501 = !DILocation(line: 143, column: 25, scope: !488)
!502 = !DILocation(line: 143, column: 23, scope: !488)
!503 = !DILocation(line: 143, column: 34, scope: !488)
!504 = !DILocation(line: 143, column: 47, scope: !488)
!505 = !DILocation(line: 143, column: 55, scope: !488)
!506 = !DILocation(line: 143, column: 53, scope: !488)
!507 = !DILocation(line: 143, column: 37, scope: !488)
!508 = !DILocation(line: 143, column: 68, scope: !488)
!509 = !DILocation(line: 143, column: 81, scope: !488)
!510 = !DILocation(line: 143, column: 89, scope: !488)
!511 = !DILocation(line: 143, column: 87, scope: !488)
!512 = !DILocation(line: 143, column: 100, scope: !488)
!513 = !DILocation(line: 143, column: 71, scope: !488)
!514 = !DILocation(line: 0, scope: !488)
!515 = !DILocalVariable(name: "byte", scope: !516, file: !12, line: 145, type: !8)
!516 = distinct !DILexicalBlock(scope: !488, file: !12, line: 144, column: 5)
!517 = !DILocation(line: 145, column: 13, scope: !516)
!518 = !DILocation(line: 146, column: 18, scope: !516)
!519 = !DILocation(line: 146, column: 26, scope: !516)
!520 = !DILocation(line: 146, column: 24, scope: !516)
!521 = !DILocation(line: 146, column: 9, scope: !516)
!522 = !DILocation(line: 147, column: 45, scope: !516)
!523 = !DILocation(line: 147, column: 29, scope: !516)
!524 = !DILocation(line: 147, column: 9, scope: !516)
!525 = !DILocation(line: 147, column: 15, scope: !516)
!526 = !DILocation(line: 147, column: 27, scope: !516)
!527 = !DILocation(line: 148, column: 9, scope: !516)
!528 = distinct !{!528, !499, !529, !448}
!529 = !DILocation(line: 149, column: 5, scope: !488)
!530 = !DILocation(line: 151, column: 12, scope: !488)
!531 = !DILocation(line: 151, column: 5, scope: !488)
!532 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !12, file: !12, line: 156, type: !533, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!533 = !DISubroutineType(types: !534)
!534 = !{!8}
!535 = !DILocation(line: 158, column: 5, scope: !532)
!536 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !12, file: !12, line: 161, type: !533, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!537 = !DILocation(line: 163, column: 5, scope: !536)
!538 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !12, file: !12, line: 166, type: !533, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!539 = !DILocation(line: 168, column: 13, scope: !538)
!540 = !DILocation(line: 168, column: 20, scope: !538)
!541 = !DILocation(line: 168, column: 5, scope: !538)
!542 = distinct !DISubprogram(name: "good1", scope: !12, file: !12, line: 187, type: !56, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!543 = !DILocation(line: 187, column: 16, scope: !542)
!544 = distinct !DISubprogram(name: "good2", scope: !12, file: !12, line: 188, type: !56, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!545 = !DILocation(line: 188, column: 16, scope: !544)
!546 = distinct !DISubprogram(name: "good3", scope: !12, file: !12, line: 189, type: !56, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!547 = !DILocation(line: 189, column: 16, scope: !546)
!548 = distinct !DISubprogram(name: "good4", scope: !12, file: !12, line: 190, type: !56, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!549 = !DILocation(line: 190, column: 16, scope: !548)
!550 = distinct !DISubprogram(name: "good5", scope: !12, file: !12, line: 191, type: !56, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!551 = !DILocation(line: 191, column: 16, scope: !550)
!552 = distinct !DISubprogram(name: "good6", scope: !12, file: !12, line: 192, type: !56, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!553 = !DILocation(line: 192, column: 16, scope: !552)
!554 = distinct !DISubprogram(name: "good7", scope: !12, file: !12, line: 193, type: !56, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!555 = !DILocation(line: 193, column: 16, scope: !554)
!556 = distinct !DISubprogram(name: "good8", scope: !12, file: !12, line: 194, type: !56, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!557 = !DILocation(line: 194, column: 16, scope: !556)
!558 = distinct !DISubprogram(name: "good9", scope: !12, file: !12, line: 195, type: !56, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!559 = !DILocation(line: 195, column: 16, scope: !558)
!560 = distinct !DISubprogram(name: "bad1", scope: !12, file: !12, line: 198, type: !56, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!561 = !DILocation(line: 198, column: 15, scope: !560)
!562 = distinct !DISubprogram(name: "bad2", scope: !12, file: !12, line: 199, type: !56, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!563 = !DILocation(line: 199, column: 15, scope: !562)
!564 = distinct !DISubprogram(name: "bad3", scope: !12, file: !12, line: 200, type: !56, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!565 = !DILocation(line: 200, column: 15, scope: !564)
!566 = distinct !DISubprogram(name: "bad4", scope: !12, file: !12, line: 201, type: !56, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!567 = !DILocation(line: 201, column: 15, scope: !566)
!568 = distinct !DISubprogram(name: "bad5", scope: !12, file: !12, line: 202, type: !56, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!569 = !DILocation(line: 202, column: 15, scope: !568)
!570 = distinct !DISubprogram(name: "bad6", scope: !12, file: !12, line: 203, type: !56, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!571 = !DILocation(line: 203, column: 15, scope: !570)
!572 = distinct !DISubprogram(name: "bad7", scope: !12, file: !12, line: 204, type: !56, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!573 = !DILocation(line: 204, column: 15, scope: !572)
!574 = distinct !DISubprogram(name: "bad8", scope: !12, file: !12, line: 205, type: !56, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!575 = !DILocation(line: 205, column: 15, scope: !574)
!576 = distinct !DISubprogram(name: "bad9", scope: !12, file: !12, line: 206, type: !56, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!577 = !DILocation(line: 206, column: 15, scope: !576)
