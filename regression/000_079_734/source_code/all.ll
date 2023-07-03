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
@.str.5 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.8 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.9 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_13_bad() #0 !dbg !52 {
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
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !64
  %cmp = icmp eq i32 %1, 5, !dbg !66
  br i1 %cmp, label %if.then, label %if.end6, !dbg !67

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !68, metadata !DIExpression()), !dbg !74
  %2 = load i8*, i8** %data, align 8, !dbg !75
  %call = call i64 @strlen(i8* %2) #7, !dbg !76
  store i64 %call, i64* %dataLen, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !77, metadata !DIExpression()), !dbg !78
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !79
  store i8* %call1, i8** %environment, align 8, !dbg !78
  %3 = load i8*, i8** %environment, align 8, !dbg !80
  %cmp2 = icmp ne i8* %3, null, !dbg !82
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !83

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !84
  %5 = load i64, i64* %dataLen, align 8, !dbg !86
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !87
  %6 = load i8*, i8** %environment, align 8, !dbg !88
  %7 = load i64, i64* %dataLen, align 8, !dbg !89
  %sub = sub i64 100, %7, !dbg !90
  %sub4 = sub i64 %sub, 1, !dbg !91
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #8, !dbg !92
  br label %if.end, !dbg !93

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !94

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !95
  %cmp7 = icmp eq i32 %8, 5, !dbg !97
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !98

if.then8:                                         ; preds = %if.end6
  %9 = load i8*, i8** %data, align 8, !dbg !99
  %call9 = call i32 (i8*, ...) @printf(i8* %9), !dbg !101
  br label %if.end10, !dbg !102

if.end10:                                         ; preds = %if.then8, %if.end6
  ret void, !dbg !103
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
define dso_local void @goodB2G1() #0 !dbg !104 {
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
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !111
  %cmp = icmp eq i32 %1, 5, !dbg !113
  br i1 %cmp, label %if.then, label %if.end6, !dbg !114

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !115, metadata !DIExpression()), !dbg !118
  %2 = load i8*, i8** %data, align 8, !dbg !119
  %call = call i64 @strlen(i8* %2) #7, !dbg !120
  store i64 %call, i64* %dataLen, align 8, !dbg !118
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !121, metadata !DIExpression()), !dbg !122
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !123
  store i8* %call1, i8** %environment, align 8, !dbg !122
  %3 = load i8*, i8** %environment, align 8, !dbg !124
  %cmp2 = icmp ne i8* %3, null, !dbg !126
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !127

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !128
  %5 = load i64, i64* %dataLen, align 8, !dbg !130
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !131
  %6 = load i8*, i8** %environment, align 8, !dbg !132
  %7 = load i64, i64* %dataLen, align 8, !dbg !133
  %sub = sub i64 100, %7, !dbg !134
  %sub4 = sub i64 %sub, 1, !dbg !135
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #8, !dbg !136
  br label %if.end, !dbg !137

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !138

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !139
  %cmp7 = icmp ne i32 %8, 5, !dbg !141
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !142

if.then8:                                         ; preds = %if.end6
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !143
  br label %if.end10, !dbg !145

if.else:                                          ; preds = %if.end6
  %9 = load i8*, i8** %data, align 8, !dbg !146
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %9), !dbg !148
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  ret void, !dbg !149
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !150 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !153, metadata !DIExpression()), !dbg !154
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !154
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !154
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !155
  store i8* %arraydecay, i8** %data, align 8, !dbg !156
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !157
  %cmp = icmp eq i32 %1, 5, !dbg !159
  br i1 %cmp, label %if.then, label %if.end6, !dbg !160

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !161, metadata !DIExpression()), !dbg !164
  %2 = load i8*, i8** %data, align 8, !dbg !165
  %call = call i64 @strlen(i8* %2) #7, !dbg !166
  store i64 %call, i64* %dataLen, align 8, !dbg !164
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !167, metadata !DIExpression()), !dbg !168
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !169
  store i8* %call1, i8** %environment, align 8, !dbg !168
  %3 = load i8*, i8** %environment, align 8, !dbg !170
  %cmp2 = icmp ne i8* %3, null, !dbg !172
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !173

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !174
  %5 = load i64, i64* %dataLen, align 8, !dbg !176
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !177
  %6 = load i8*, i8** %environment, align 8, !dbg !178
  %7 = load i64, i64* %dataLen, align 8, !dbg !179
  %sub = sub i64 100, %7, !dbg !180
  %sub4 = sub i64 %sub, 1, !dbg !181
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #8, !dbg !182
  br label %if.end, !dbg !183

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !184

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !185
  %cmp7 = icmp eq i32 %8, 5, !dbg !187
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !188

if.then8:                                         ; preds = %if.end6
  %9 = load i8*, i8** %data, align 8, !dbg !189
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %9), !dbg !191
  br label %if.end10, !dbg !192

if.end10:                                         ; preds = %if.then8, %if.end6
  ret void, !dbg !193
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !194 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !197, metadata !DIExpression()), !dbg !198
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !198
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !198
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !199
  store i8* %arraydecay, i8** %data, align 8, !dbg !200
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !201
  %cmp = icmp ne i32 %1, 5, !dbg !203
  br i1 %cmp, label %if.then, label %if.else, !dbg !204

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !205
  br label %if.end, !dbg !207

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !208
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !210
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !211
  %cmp1 = icmp eq i32 %3, 5, !dbg !213
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !214

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !215
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !217
  br label %if.end4, !dbg !218

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !219
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !220 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !223, metadata !DIExpression()), !dbg !224
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !224
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !224
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !225
  store i8* %arraydecay, i8** %data, align 8, !dbg !226
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !227
  %cmp = icmp eq i32 %1, 5, !dbg !229
  br i1 %cmp, label %if.then, label %if.end, !dbg !230

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !231
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !233
  br label %if.end, !dbg !234

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !235
  %cmp1 = icmp eq i32 %3, 5, !dbg !237
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !238

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !239
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !241
  br label %if.end4, !dbg !242

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !243
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_13_good() #0 !dbg !244 {
entry:
  call void @goodB2G1(), !dbg !245
  call void @goodB2G2(), !dbg !246
  call void @goodG2B1(), !dbg !247
  call void @goodG2B2(), !dbg !248
  ret void, !dbg !249
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !250 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !253, metadata !DIExpression()), !dbg !254
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !255
  %0 = load i8*, i8** %line.addr, align 8, !dbg !256
  %cmp = icmp ne i8* %0, null, !dbg !258
  br i1 %cmp, label %if.then, label %if.end, !dbg !259

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !260
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !262
  br label %if.end, !dbg !263

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !264
  ret void, !dbg !265
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !266 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !267, metadata !DIExpression()), !dbg !268
  %0 = load i8*, i8** %line.addr, align 8, !dbg !269
  %cmp = icmp ne i8* %0, null, !dbg !271
  br i1 %cmp, label %if.then, label %if.end, !dbg !272

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !273
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !275
  br label %if.end, !dbg !276

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !277
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !278 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !283, metadata !DIExpression()), !dbg !284
  %0 = load i32*, i32** %line.addr, align 8, !dbg !285
  %cmp = icmp ne i32* %0, null, !dbg !287
  br i1 %cmp, label %if.then, label %if.end, !dbg !288

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !289
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !291
  br label %if.end, !dbg !292

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !293
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !294 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !297, metadata !DIExpression()), !dbg !298
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !299
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !300
  ret void, !dbg !301
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !302 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !306, metadata !DIExpression()), !dbg !307
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !308
  %conv = sext i16 %0 to i32, !dbg !308
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.9, i64 0, i64 0), i32 %conv), !dbg !309
  ret void, !dbg !310
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !311 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !315, metadata !DIExpression()), !dbg !316
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !317
  %conv = fpext float %0 to double, !dbg !317
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !318
  ret void, !dbg !319
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !320 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !324, metadata !DIExpression()), !dbg !325
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !326
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !327
  ret void, !dbg !328
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !329 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !336, metadata !DIExpression()), !dbg !337
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !338
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !339
  ret void, !dbg !340
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !341 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !344, metadata !DIExpression()), !dbg !345
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !346
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !347
  ret void, !dbg !348
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !349 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !352, metadata !DIExpression()), !dbg !353
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !354
  %conv = sext i8 %0 to i32, !dbg !354
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !355
  ret void, !dbg !356
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !357 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !360, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !362, metadata !DIExpression()), !dbg !366
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !367
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !368
  store i32 %0, i32* %arrayidx, align 4, !dbg !369
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !370
  store i32 0, i32* %arrayidx1, align 4, !dbg !371
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !372
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !373
  ret void, !dbg !374
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !375 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !378, metadata !DIExpression()), !dbg !379
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !380
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !381
  ret void, !dbg !382
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !383 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !386, metadata !DIExpression()), !dbg !387
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !388
  %conv = zext i8 %0 to i32, !dbg !388
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !389
  ret void, !dbg !390
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !391 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !395, metadata !DIExpression()), !dbg !396
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !397
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !398
  ret void, !dbg !399
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !400 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !410, metadata !DIExpression()), !dbg !411
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !412
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !413
  %1 = load i32, i32* %intOne, align 4, !dbg !413
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !414
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !415
  %3 = load i32, i32* %intTwo, align 4, !dbg !415
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !416
  ret void, !dbg !417
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !418 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !422, metadata !DIExpression()), !dbg !423
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !424, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.declare(metadata i64* %i, metadata !426, metadata !DIExpression()), !dbg !427
  store i64 0, i64* %i, align 8, !dbg !428
  br label %for.cond, !dbg !430

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !431
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !433
  %cmp = icmp ult i64 %0, %1, !dbg !434
  br i1 %cmp, label %for.body, label %for.end, !dbg !435

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !436
  %3 = load i64, i64* %i, align 8, !dbg !438
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !436
  %4 = load i8, i8* %arrayidx, align 1, !dbg !436
  %conv = zext i8 %4 to i32, !dbg !436
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !439
  br label %for.inc, !dbg !440

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !441
  %inc = add i64 %5, 1, !dbg !441
  store i64 %inc, i64* %i, align 8, !dbg !441
  br label %for.cond, !dbg !442, !llvm.loop !443

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !446
  ret void, !dbg !447
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !448 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !451, metadata !DIExpression()), !dbg !452
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !453, metadata !DIExpression()), !dbg !454
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !457, metadata !DIExpression()), !dbg !458
  store i64 0, i64* %numWritten, align 8, !dbg !458
  br label %while.cond, !dbg !459

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !460
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !461
  %cmp = icmp ult i64 %0, %1, !dbg !462
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !463

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !464
  %2 = load i16*, i16** %call, align 8, !dbg !464
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !464
  %4 = load i64, i64* %numWritten, align 8, !dbg !464
  %mul = mul i64 2, %4, !dbg !464
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !464
  %5 = load i8, i8* %arrayidx, align 1, !dbg !464
  %conv = sext i8 %5 to i32, !dbg !464
  %idxprom = sext i32 %conv to i64, !dbg !464
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !464
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !464
  %conv2 = zext i16 %6 to i32, !dbg !464
  %and = and i32 %conv2, 4096, !dbg !464
  %tobool = icmp ne i32 %and, 0, !dbg !464
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !465

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !466
  %7 = load i16*, i16** %call3, align 8, !dbg !466
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !466
  %9 = load i64, i64* %numWritten, align 8, !dbg !466
  %mul4 = mul i64 2, %9, !dbg !466
  %add = add i64 %mul4, 1, !dbg !466
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !466
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !466
  %conv6 = sext i8 %10 to i32, !dbg !466
  %idxprom7 = sext i32 %conv6 to i64, !dbg !466
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !466
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !466
  %conv9 = zext i16 %11 to i32, !dbg !466
  %and10 = and i32 %conv9, 4096, !dbg !466
  %tobool11 = icmp ne i32 %and10, 0, !dbg !465
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !467
  br i1 %12, label %while.body, label %while.end, !dbg !459

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !468, metadata !DIExpression()), !dbg !470
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !471
  %14 = load i64, i64* %numWritten, align 8, !dbg !472
  %mul12 = mul i64 2, %14, !dbg !473
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !471
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !474
  %15 = load i32, i32* %byte, align 4, !dbg !475
  %conv15 = trunc i32 %15 to i8, !dbg !476
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !477
  %17 = load i64, i64* %numWritten, align 8, !dbg !478
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !477
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !479
  %18 = load i64, i64* %numWritten, align 8, !dbg !480
  %inc = add i64 %18, 1, !dbg !480
  store i64 %inc, i64* %numWritten, align 8, !dbg !480
  br label %while.cond, !dbg !459, !llvm.loop !481

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !483
  ret i64 %19, !dbg !484
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !485 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !488, metadata !DIExpression()), !dbg !489
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !490, metadata !DIExpression()), !dbg !491
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !492, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !494, metadata !DIExpression()), !dbg !495
  store i64 0, i64* %numWritten, align 8, !dbg !495
  br label %while.cond, !dbg !496

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !497
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !498
  %cmp = icmp ult i64 %0, %1, !dbg !499
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !500

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !501
  %3 = load i64, i64* %numWritten, align 8, !dbg !502
  %mul = mul i64 2, %3, !dbg !503
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !501
  %4 = load i32, i32* %arrayidx, align 4, !dbg !501
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !504
  %tobool = icmp ne i32 %call, 0, !dbg !504
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !505

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !506
  %6 = load i64, i64* %numWritten, align 8, !dbg !507
  %mul1 = mul i64 2, %6, !dbg !508
  %add = add i64 %mul1, 1, !dbg !509
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !506
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !506
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !510
  %tobool4 = icmp ne i32 %call3, 0, !dbg !505
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !511
  br i1 %8, label %while.body, label %while.end, !dbg !496

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !512, metadata !DIExpression()), !dbg !514
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !515
  %10 = load i64, i64* %numWritten, align 8, !dbg !516
  %mul5 = mul i64 2, %10, !dbg !517
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !515
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !518
  %11 = load i32, i32* %byte, align 4, !dbg !519
  %conv = trunc i32 %11 to i8, !dbg !520
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !521
  %13 = load i64, i64* %numWritten, align 8, !dbg !522
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !521
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !523
  %14 = load i64, i64* %numWritten, align 8, !dbg !524
  %inc = add i64 %14, 1, !dbg !524
  store i64 %inc, i64* %numWritten, align 8, !dbg !524
  br label %while.cond, !dbg !496, !llvm.loop !525

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !527
  ret i64 %15, !dbg !528
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !529 {
entry:
  ret i32 1, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !533 {
entry:
  ret i32 0, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !535 {
entry:
  %call = call i32 @rand() #8, !dbg !536
  %rem = srem i32 %call, 2, !dbg !537
  ret i32 %rem, !dbg !538
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !539 {
entry:
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !541 {
entry:
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !543 {
entry:
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !545 {
entry:
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !547 {
entry:
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !549 {
entry:
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !551 {
entry:
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !553 {
entry:
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !555 {
entry:
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !557 {
entry:
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !559 {
entry:
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !561 {
entry:
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !563 {
entry:
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !565 {
entry:
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !567 {
entry:
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !569 {
entry:
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !571 {
entry:
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !573 {
entry:
  ret void, !dbg !574
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_734/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_13.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_734/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_13_bad", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!66 = !DILocation(line: 40, column: 25, scope: !65)
!67 = !DILocation(line: 40, column: 8, scope: !52)
!68 = !DILocalVariable(name: "dataLen", scope: !69, file: !45, line: 44, type: !71)
!69 = distinct !DILexicalBlock(scope: !70, file: !45, line: 42, column: 9)
!70 = distinct !DILexicalBlock(scope: !65, file: !45, line: 41, column: 5)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 46, baseType: !73)
!72 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!73 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DILocation(line: 44, column: 20, scope: !69)
!75 = !DILocation(line: 44, column: 37, scope: !69)
!76 = !DILocation(line: 44, column: 30, scope: !69)
!77 = !DILocalVariable(name: "environment", scope: !69, file: !45, line: 45, type: !42)
!78 = !DILocation(line: 45, column: 20, scope: !69)
!79 = !DILocation(line: 45, column: 34, scope: !69)
!80 = !DILocation(line: 47, column: 17, scope: !81)
!81 = distinct !DILexicalBlock(scope: !69, file: !45, line: 47, column: 17)
!82 = !DILocation(line: 47, column: 29, scope: !81)
!83 = !DILocation(line: 47, column: 17, scope: !69)
!84 = !DILocation(line: 50, column: 25, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !45, line: 48, column: 13)
!86 = !DILocation(line: 50, column: 30, scope: !85)
!87 = !DILocation(line: 50, column: 29, scope: !85)
!88 = !DILocation(line: 50, column: 39, scope: !85)
!89 = !DILocation(line: 50, column: 56, scope: !85)
!90 = !DILocation(line: 50, column: 55, scope: !85)
!91 = !DILocation(line: 50, column: 63, scope: !85)
!92 = !DILocation(line: 50, column: 17, scope: !85)
!93 = !DILocation(line: 51, column: 13, scope: !85)
!94 = !DILocation(line: 53, column: 5, scope: !70)
!95 = !DILocation(line: 54, column: 8, scope: !96)
!96 = distinct !DILexicalBlock(scope: !52, file: !45, line: 54, column: 8)
!97 = !DILocation(line: 54, column: 25, scope: !96)
!98 = !DILocation(line: 54, column: 8, scope: !52)
!99 = !DILocation(line: 57, column: 16, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !45, line: 55, column: 5)
!101 = !DILocation(line: 57, column: 9, scope: !100)
!102 = !DILocation(line: 58, column: 5, scope: !100)
!103 = !DILocation(line: 59, column: 1, scope: !52)
!104 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 66, type: !53, scopeLine: 67, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!105 = !DILocalVariable(name: "data", scope: !104, file: !45, line: 68, type: !42)
!106 = !DILocation(line: 68, column: 12, scope: !104)
!107 = !DILocalVariable(name: "dataBuffer", scope: !104, file: !45, line: 69, type: !58)
!108 = !DILocation(line: 69, column: 10, scope: !104)
!109 = !DILocation(line: 70, column: 12, scope: !104)
!110 = !DILocation(line: 70, column: 10, scope: !104)
!111 = !DILocation(line: 71, column: 8, scope: !112)
!112 = distinct !DILexicalBlock(scope: !104, file: !45, line: 71, column: 8)
!113 = !DILocation(line: 71, column: 25, scope: !112)
!114 = !DILocation(line: 71, column: 8, scope: !104)
!115 = !DILocalVariable(name: "dataLen", scope: !116, file: !45, line: 75, type: !71)
!116 = distinct !DILexicalBlock(scope: !117, file: !45, line: 73, column: 9)
!117 = distinct !DILexicalBlock(scope: !112, file: !45, line: 72, column: 5)
!118 = !DILocation(line: 75, column: 20, scope: !116)
!119 = !DILocation(line: 75, column: 37, scope: !116)
!120 = !DILocation(line: 75, column: 30, scope: !116)
!121 = !DILocalVariable(name: "environment", scope: !116, file: !45, line: 76, type: !42)
!122 = !DILocation(line: 76, column: 20, scope: !116)
!123 = !DILocation(line: 76, column: 34, scope: !116)
!124 = !DILocation(line: 78, column: 17, scope: !125)
!125 = distinct !DILexicalBlock(scope: !116, file: !45, line: 78, column: 17)
!126 = !DILocation(line: 78, column: 29, scope: !125)
!127 = !DILocation(line: 78, column: 17, scope: !116)
!128 = !DILocation(line: 81, column: 25, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !45, line: 79, column: 13)
!130 = !DILocation(line: 81, column: 30, scope: !129)
!131 = !DILocation(line: 81, column: 29, scope: !129)
!132 = !DILocation(line: 81, column: 39, scope: !129)
!133 = !DILocation(line: 81, column: 56, scope: !129)
!134 = !DILocation(line: 81, column: 55, scope: !129)
!135 = !DILocation(line: 81, column: 63, scope: !129)
!136 = !DILocation(line: 81, column: 17, scope: !129)
!137 = !DILocation(line: 82, column: 13, scope: !129)
!138 = !DILocation(line: 84, column: 5, scope: !117)
!139 = !DILocation(line: 85, column: 8, scope: !140)
!140 = distinct !DILexicalBlock(scope: !104, file: !45, line: 85, column: 8)
!141 = !DILocation(line: 85, column: 25, scope: !140)
!142 = !DILocation(line: 85, column: 8, scope: !104)
!143 = !DILocation(line: 88, column: 9, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !45, line: 86, column: 5)
!145 = !DILocation(line: 89, column: 5, scope: !144)
!146 = !DILocation(line: 93, column: 24, scope: !147)
!147 = distinct !DILexicalBlock(scope: !140, file: !45, line: 91, column: 5)
!148 = !DILocation(line: 93, column: 9, scope: !147)
!149 = !DILocation(line: 95, column: 1, scope: !104)
!150 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 98, type: !53, scopeLine: 99, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!151 = !DILocalVariable(name: "data", scope: !150, file: !45, line: 100, type: !42)
!152 = !DILocation(line: 100, column: 12, scope: !150)
!153 = !DILocalVariable(name: "dataBuffer", scope: !150, file: !45, line: 101, type: !58)
!154 = !DILocation(line: 101, column: 10, scope: !150)
!155 = !DILocation(line: 102, column: 12, scope: !150)
!156 = !DILocation(line: 102, column: 10, scope: !150)
!157 = !DILocation(line: 103, column: 8, scope: !158)
!158 = distinct !DILexicalBlock(scope: !150, file: !45, line: 103, column: 8)
!159 = !DILocation(line: 103, column: 25, scope: !158)
!160 = !DILocation(line: 103, column: 8, scope: !150)
!161 = !DILocalVariable(name: "dataLen", scope: !162, file: !45, line: 107, type: !71)
!162 = distinct !DILexicalBlock(scope: !163, file: !45, line: 105, column: 9)
!163 = distinct !DILexicalBlock(scope: !158, file: !45, line: 104, column: 5)
!164 = !DILocation(line: 107, column: 20, scope: !162)
!165 = !DILocation(line: 107, column: 37, scope: !162)
!166 = !DILocation(line: 107, column: 30, scope: !162)
!167 = !DILocalVariable(name: "environment", scope: !162, file: !45, line: 108, type: !42)
!168 = !DILocation(line: 108, column: 20, scope: !162)
!169 = !DILocation(line: 108, column: 34, scope: !162)
!170 = !DILocation(line: 110, column: 17, scope: !171)
!171 = distinct !DILexicalBlock(scope: !162, file: !45, line: 110, column: 17)
!172 = !DILocation(line: 110, column: 29, scope: !171)
!173 = !DILocation(line: 110, column: 17, scope: !162)
!174 = !DILocation(line: 113, column: 25, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !45, line: 111, column: 13)
!176 = !DILocation(line: 113, column: 30, scope: !175)
!177 = !DILocation(line: 113, column: 29, scope: !175)
!178 = !DILocation(line: 113, column: 39, scope: !175)
!179 = !DILocation(line: 113, column: 56, scope: !175)
!180 = !DILocation(line: 113, column: 55, scope: !175)
!181 = !DILocation(line: 113, column: 63, scope: !175)
!182 = !DILocation(line: 113, column: 17, scope: !175)
!183 = !DILocation(line: 114, column: 13, scope: !175)
!184 = !DILocation(line: 116, column: 5, scope: !163)
!185 = !DILocation(line: 117, column: 8, scope: !186)
!186 = distinct !DILexicalBlock(scope: !150, file: !45, line: 117, column: 8)
!187 = !DILocation(line: 117, column: 25, scope: !186)
!188 = !DILocation(line: 117, column: 8, scope: !150)
!189 = !DILocation(line: 120, column: 24, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !45, line: 118, column: 5)
!191 = !DILocation(line: 120, column: 9, scope: !190)
!192 = !DILocation(line: 121, column: 5, scope: !190)
!193 = !DILocation(line: 122, column: 1, scope: !150)
!194 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 125, type: !53, scopeLine: 126, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!195 = !DILocalVariable(name: "data", scope: !194, file: !45, line: 127, type: !42)
!196 = !DILocation(line: 127, column: 12, scope: !194)
!197 = !DILocalVariable(name: "dataBuffer", scope: !194, file: !45, line: 128, type: !58)
!198 = !DILocation(line: 128, column: 10, scope: !194)
!199 = !DILocation(line: 129, column: 12, scope: !194)
!200 = !DILocation(line: 129, column: 10, scope: !194)
!201 = !DILocation(line: 130, column: 8, scope: !202)
!202 = distinct !DILexicalBlock(scope: !194, file: !45, line: 130, column: 8)
!203 = !DILocation(line: 130, column: 25, scope: !202)
!204 = !DILocation(line: 130, column: 8, scope: !194)
!205 = !DILocation(line: 133, column: 9, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !45, line: 131, column: 5)
!207 = !DILocation(line: 134, column: 5, scope: !206)
!208 = !DILocation(line: 138, column: 16, scope: !209)
!209 = distinct !DILexicalBlock(scope: !202, file: !45, line: 136, column: 5)
!210 = !DILocation(line: 138, column: 9, scope: !209)
!211 = !DILocation(line: 140, column: 8, scope: !212)
!212 = distinct !DILexicalBlock(scope: !194, file: !45, line: 140, column: 8)
!213 = !DILocation(line: 140, column: 25, scope: !212)
!214 = !DILocation(line: 140, column: 8, scope: !194)
!215 = !DILocation(line: 143, column: 16, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !45, line: 141, column: 5)
!217 = !DILocation(line: 143, column: 9, scope: !216)
!218 = !DILocation(line: 144, column: 5, scope: !216)
!219 = !DILocation(line: 145, column: 1, scope: !194)
!220 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 148, type: !53, scopeLine: 149, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!221 = !DILocalVariable(name: "data", scope: !220, file: !45, line: 150, type: !42)
!222 = !DILocation(line: 150, column: 12, scope: !220)
!223 = !DILocalVariable(name: "dataBuffer", scope: !220, file: !45, line: 151, type: !58)
!224 = !DILocation(line: 151, column: 10, scope: !220)
!225 = !DILocation(line: 152, column: 12, scope: !220)
!226 = !DILocation(line: 152, column: 10, scope: !220)
!227 = !DILocation(line: 153, column: 8, scope: !228)
!228 = distinct !DILexicalBlock(scope: !220, file: !45, line: 153, column: 8)
!229 = !DILocation(line: 153, column: 25, scope: !228)
!230 = !DILocation(line: 153, column: 8, scope: !220)
!231 = !DILocation(line: 156, column: 16, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !45, line: 154, column: 5)
!233 = !DILocation(line: 156, column: 9, scope: !232)
!234 = !DILocation(line: 157, column: 5, scope: !232)
!235 = !DILocation(line: 158, column: 8, scope: !236)
!236 = distinct !DILexicalBlock(scope: !220, file: !45, line: 158, column: 8)
!237 = !DILocation(line: 158, column: 25, scope: !236)
!238 = !DILocation(line: 158, column: 8, scope: !220)
!239 = !DILocation(line: 161, column: 16, scope: !240)
!240 = distinct !DILexicalBlock(scope: !236, file: !45, line: 159, column: 5)
!241 = !DILocation(line: 161, column: 9, scope: !240)
!242 = !DILocation(line: 162, column: 5, scope: !240)
!243 = !DILocation(line: 163, column: 1, scope: !220)
!244 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_13_good", scope: !45, file: !45, line: 165, type: !53, scopeLine: 166, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!245 = !DILocation(line: 167, column: 5, scope: !244)
!246 = !DILocation(line: 168, column: 5, scope: !244)
!247 = !DILocation(line: 169, column: 5, scope: !244)
!248 = !DILocation(line: 170, column: 5, scope: !244)
!249 = !DILocation(line: 171, column: 1, scope: !244)
!250 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !251, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !42}
!253 = !DILocalVariable(name: "line", arg: 1, scope: !250, file: !3, line: 11, type: !42)
!254 = !DILocation(line: 11, column: 25, scope: !250)
!255 = !DILocation(line: 13, column: 1, scope: !250)
!256 = !DILocation(line: 14, column: 8, scope: !257)
!257 = distinct !DILexicalBlock(scope: !250, file: !3, line: 14, column: 8)
!258 = !DILocation(line: 14, column: 13, scope: !257)
!259 = !DILocation(line: 14, column: 8, scope: !250)
!260 = !DILocation(line: 16, column: 24, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !3, line: 15, column: 5)
!262 = !DILocation(line: 16, column: 9, scope: !261)
!263 = !DILocation(line: 17, column: 5, scope: !261)
!264 = !DILocation(line: 18, column: 5, scope: !250)
!265 = !DILocation(line: 19, column: 1, scope: !250)
!266 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !251, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!267 = !DILocalVariable(name: "line", arg: 1, scope: !266, file: !3, line: 20, type: !42)
!268 = !DILocation(line: 20, column: 29, scope: !266)
!269 = !DILocation(line: 22, column: 8, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !3, line: 22, column: 8)
!271 = !DILocation(line: 22, column: 13, scope: !270)
!272 = !DILocation(line: 22, column: 8, scope: !266)
!273 = !DILocation(line: 24, column: 24, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !3, line: 23, column: 5)
!275 = !DILocation(line: 24, column: 9, scope: !274)
!276 = !DILocation(line: 25, column: 5, scope: !274)
!277 = !DILocation(line: 26, column: 1, scope: !266)
!278 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !279, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !281}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !72, line: 74, baseType: !23)
!283 = !DILocalVariable(name: "line", arg: 1, scope: !278, file: !3, line: 27, type: !281)
!284 = !DILocation(line: 27, column: 29, scope: !278)
!285 = !DILocation(line: 29, column: 8, scope: !286)
!286 = distinct !DILexicalBlock(scope: !278, file: !3, line: 29, column: 8)
!287 = !DILocation(line: 29, column: 13, scope: !286)
!288 = !DILocation(line: 29, column: 8, scope: !278)
!289 = !DILocation(line: 31, column: 27, scope: !290)
!290 = distinct !DILexicalBlock(scope: !286, file: !3, line: 30, column: 5)
!291 = !DILocation(line: 31, column: 9, scope: !290)
!292 = !DILocation(line: 32, column: 5, scope: !290)
!293 = !DILocation(line: 33, column: 1, scope: !278)
!294 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !295, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !23}
!297 = !DILocalVariable(name: "intNumber", arg: 1, scope: !294, file: !3, line: 35, type: !23)
!298 = !DILocation(line: 35, column: 24, scope: !294)
!299 = !DILocation(line: 37, column: 20, scope: !294)
!300 = !DILocation(line: 37, column: 5, scope: !294)
!301 = !DILocation(line: 38, column: 1, scope: !294)
!302 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !303, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !305}
!305 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!306 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !302, file: !3, line: 40, type: !305)
!307 = !DILocation(line: 40, column: 28, scope: !302)
!308 = !DILocation(line: 42, column: 21, scope: !302)
!309 = !DILocation(line: 42, column: 5, scope: !302)
!310 = !DILocation(line: 43, column: 1, scope: !302)
!311 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !312, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !314}
!314 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!315 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !311, file: !3, line: 45, type: !314)
!316 = !DILocation(line: 45, column: 28, scope: !311)
!317 = !DILocation(line: 47, column: 20, scope: !311)
!318 = !DILocation(line: 47, column: 5, scope: !311)
!319 = !DILocation(line: 48, column: 1, scope: !311)
!320 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !321, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !323}
!323 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!324 = !DILocalVariable(name: "longNumber", arg: 1, scope: !320, file: !3, line: 50, type: !323)
!325 = !DILocation(line: 50, column: 26, scope: !320)
!326 = !DILocation(line: 52, column: 21, scope: !320)
!327 = !DILocation(line: 52, column: 5, scope: !320)
!328 = !DILocation(line: 53, column: 1, scope: !320)
!329 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !330, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !332}
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !333, line: 27, baseType: !334)
!333 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !335, line: 44, baseType: !323)
!335 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!336 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !329, file: !3, line: 55, type: !332)
!337 = !DILocation(line: 55, column: 33, scope: !329)
!338 = !DILocation(line: 57, column: 29, scope: !329)
!339 = !DILocation(line: 57, column: 5, scope: !329)
!340 = !DILocation(line: 58, column: 1, scope: !329)
!341 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !342, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !71}
!344 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !341, file: !3, line: 60, type: !71)
!345 = !DILocation(line: 60, column: 29, scope: !341)
!346 = !DILocation(line: 62, column: 21, scope: !341)
!347 = !DILocation(line: 62, column: 5, scope: !341)
!348 = !DILocation(line: 63, column: 1, scope: !341)
!349 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !350, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !43}
!352 = !DILocalVariable(name: "charHex", arg: 1, scope: !349, file: !3, line: 65, type: !43)
!353 = !DILocation(line: 65, column: 29, scope: !349)
!354 = !DILocation(line: 67, column: 22, scope: !349)
!355 = !DILocation(line: 67, column: 5, scope: !349)
!356 = !DILocation(line: 68, column: 1, scope: !349)
!357 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !358, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !282}
!360 = !DILocalVariable(name: "wideChar", arg: 1, scope: !357, file: !3, line: 70, type: !282)
!361 = !DILocation(line: 70, column: 29, scope: !357)
!362 = !DILocalVariable(name: "s", scope: !357, file: !3, line: 74, type: !363)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 64, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 2)
!366 = !DILocation(line: 74, column: 13, scope: !357)
!367 = !DILocation(line: 75, column: 16, scope: !357)
!368 = !DILocation(line: 75, column: 9, scope: !357)
!369 = !DILocation(line: 75, column: 14, scope: !357)
!370 = !DILocation(line: 76, column: 9, scope: !357)
!371 = !DILocation(line: 76, column: 14, scope: !357)
!372 = !DILocation(line: 77, column: 21, scope: !357)
!373 = !DILocation(line: 77, column: 5, scope: !357)
!374 = !DILocation(line: 78, column: 1, scope: !357)
!375 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !376, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !7}
!378 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !375, file: !3, line: 80, type: !7)
!379 = !DILocation(line: 80, column: 33, scope: !375)
!380 = !DILocation(line: 82, column: 20, scope: !375)
!381 = !DILocation(line: 82, column: 5, scope: !375)
!382 = !DILocation(line: 83, column: 1, scope: !375)
!383 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !384, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !25}
!386 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !383, file: !3, line: 85, type: !25)
!387 = !DILocation(line: 85, column: 45, scope: !383)
!388 = !DILocation(line: 87, column: 22, scope: !383)
!389 = !DILocation(line: 87, column: 5, scope: !383)
!390 = !DILocation(line: 88, column: 1, scope: !383)
!391 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !392, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !394}
!394 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!395 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !391, file: !3, line: 90, type: !394)
!396 = !DILocation(line: 90, column: 29, scope: !391)
!397 = !DILocation(line: 92, column: 20, scope: !391)
!398 = !DILocation(line: 92, column: 5, scope: !391)
!399 = !DILocation(line: 93, column: 1, scope: !391)
!400 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !401, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !403}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !405, line: 100, baseType: !406)
!405 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_734/source_code")
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !405, line: 96, size: 64, elements: !407)
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !406, file: !405, line: 98, baseType: !23, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !406, file: !405, line: 99, baseType: !23, size: 32, offset: 32)
!410 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !400, file: !3, line: 95, type: !403)
!411 = !DILocation(line: 95, column: 40, scope: !400)
!412 = !DILocation(line: 97, column: 26, scope: !400)
!413 = !DILocation(line: 97, column: 47, scope: !400)
!414 = !DILocation(line: 97, column: 55, scope: !400)
!415 = !DILocation(line: 97, column: 76, scope: !400)
!416 = !DILocation(line: 97, column: 5, scope: !400)
!417 = !DILocation(line: 98, column: 1, scope: !400)
!418 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !419, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !421, !71}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!422 = !DILocalVariable(name: "bytes", arg: 1, scope: !418, file: !3, line: 100, type: !421)
!423 = !DILocation(line: 100, column: 38, scope: !418)
!424 = !DILocalVariable(name: "numBytes", arg: 2, scope: !418, file: !3, line: 100, type: !71)
!425 = !DILocation(line: 100, column: 52, scope: !418)
!426 = !DILocalVariable(name: "i", scope: !418, file: !3, line: 102, type: !71)
!427 = !DILocation(line: 102, column: 12, scope: !418)
!428 = !DILocation(line: 103, column: 12, scope: !429)
!429 = distinct !DILexicalBlock(scope: !418, file: !3, line: 103, column: 5)
!430 = !DILocation(line: 103, column: 10, scope: !429)
!431 = !DILocation(line: 103, column: 17, scope: !432)
!432 = distinct !DILexicalBlock(scope: !429, file: !3, line: 103, column: 5)
!433 = !DILocation(line: 103, column: 21, scope: !432)
!434 = !DILocation(line: 103, column: 19, scope: !432)
!435 = !DILocation(line: 103, column: 5, scope: !429)
!436 = !DILocation(line: 105, column: 24, scope: !437)
!437 = distinct !DILexicalBlock(scope: !432, file: !3, line: 104, column: 5)
!438 = !DILocation(line: 105, column: 30, scope: !437)
!439 = !DILocation(line: 105, column: 9, scope: !437)
!440 = !DILocation(line: 106, column: 5, scope: !437)
!441 = !DILocation(line: 103, column: 31, scope: !432)
!442 = !DILocation(line: 103, column: 5, scope: !432)
!443 = distinct !{!443, !435, !444, !445}
!444 = !DILocation(line: 106, column: 5, scope: !429)
!445 = !{!"llvm.loop.mustprogress"}
!446 = !DILocation(line: 107, column: 5, scope: !418)
!447 = !DILocation(line: 108, column: 1, scope: !418)
!448 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !449, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!449 = !DISubroutineType(types: !450)
!450 = !{!71, !421, !71, !42}
!451 = !DILocalVariable(name: "bytes", arg: 1, scope: !448, file: !3, line: 113, type: !421)
!452 = !DILocation(line: 113, column: 39, scope: !448)
!453 = !DILocalVariable(name: "numBytes", arg: 2, scope: !448, file: !3, line: 113, type: !71)
!454 = !DILocation(line: 113, column: 53, scope: !448)
!455 = !DILocalVariable(name: "hex", arg: 3, scope: !448, file: !3, line: 113, type: !42)
!456 = !DILocation(line: 113, column: 71, scope: !448)
!457 = !DILocalVariable(name: "numWritten", scope: !448, file: !3, line: 115, type: !71)
!458 = !DILocation(line: 115, column: 12, scope: !448)
!459 = !DILocation(line: 121, column: 5, scope: !448)
!460 = !DILocation(line: 121, column: 12, scope: !448)
!461 = !DILocation(line: 121, column: 25, scope: !448)
!462 = !DILocation(line: 121, column: 23, scope: !448)
!463 = !DILocation(line: 121, column: 34, scope: !448)
!464 = !DILocation(line: 121, column: 37, scope: !448)
!465 = !DILocation(line: 121, column: 67, scope: !448)
!466 = !DILocation(line: 121, column: 70, scope: !448)
!467 = !DILocation(line: 0, scope: !448)
!468 = !DILocalVariable(name: "byte", scope: !469, file: !3, line: 123, type: !23)
!469 = distinct !DILexicalBlock(scope: !448, file: !3, line: 122, column: 5)
!470 = !DILocation(line: 123, column: 13, scope: !469)
!471 = !DILocation(line: 124, column: 17, scope: !469)
!472 = !DILocation(line: 124, column: 25, scope: !469)
!473 = !DILocation(line: 124, column: 23, scope: !469)
!474 = !DILocation(line: 124, column: 9, scope: !469)
!475 = !DILocation(line: 125, column: 45, scope: !469)
!476 = !DILocation(line: 125, column: 29, scope: !469)
!477 = !DILocation(line: 125, column: 9, scope: !469)
!478 = !DILocation(line: 125, column: 15, scope: !469)
!479 = !DILocation(line: 125, column: 27, scope: !469)
!480 = !DILocation(line: 126, column: 9, scope: !469)
!481 = distinct !{!481, !459, !482, !445}
!482 = !DILocation(line: 127, column: 5, scope: !448)
!483 = !DILocation(line: 129, column: 12, scope: !448)
!484 = !DILocation(line: 129, column: 5, scope: !448)
!485 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !486, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!486 = !DISubroutineType(types: !487)
!487 = !{!71, !421, !71, !281}
!488 = !DILocalVariable(name: "bytes", arg: 1, scope: !485, file: !3, line: 135, type: !421)
!489 = !DILocation(line: 135, column: 41, scope: !485)
!490 = !DILocalVariable(name: "numBytes", arg: 2, scope: !485, file: !3, line: 135, type: !71)
!491 = !DILocation(line: 135, column: 55, scope: !485)
!492 = !DILocalVariable(name: "hex", arg: 3, scope: !485, file: !3, line: 135, type: !281)
!493 = !DILocation(line: 135, column: 76, scope: !485)
!494 = !DILocalVariable(name: "numWritten", scope: !485, file: !3, line: 137, type: !71)
!495 = !DILocation(line: 137, column: 12, scope: !485)
!496 = !DILocation(line: 143, column: 5, scope: !485)
!497 = !DILocation(line: 143, column: 12, scope: !485)
!498 = !DILocation(line: 143, column: 25, scope: !485)
!499 = !DILocation(line: 143, column: 23, scope: !485)
!500 = !DILocation(line: 143, column: 34, scope: !485)
!501 = !DILocation(line: 143, column: 47, scope: !485)
!502 = !DILocation(line: 143, column: 55, scope: !485)
!503 = !DILocation(line: 143, column: 53, scope: !485)
!504 = !DILocation(line: 143, column: 37, scope: !485)
!505 = !DILocation(line: 143, column: 68, scope: !485)
!506 = !DILocation(line: 143, column: 81, scope: !485)
!507 = !DILocation(line: 143, column: 89, scope: !485)
!508 = !DILocation(line: 143, column: 87, scope: !485)
!509 = !DILocation(line: 143, column: 100, scope: !485)
!510 = !DILocation(line: 143, column: 71, scope: !485)
!511 = !DILocation(line: 0, scope: !485)
!512 = !DILocalVariable(name: "byte", scope: !513, file: !3, line: 145, type: !23)
!513 = distinct !DILexicalBlock(scope: !485, file: !3, line: 144, column: 5)
!514 = !DILocation(line: 145, column: 13, scope: !513)
!515 = !DILocation(line: 146, column: 18, scope: !513)
!516 = !DILocation(line: 146, column: 26, scope: !513)
!517 = !DILocation(line: 146, column: 24, scope: !513)
!518 = !DILocation(line: 146, column: 9, scope: !513)
!519 = !DILocation(line: 147, column: 45, scope: !513)
!520 = !DILocation(line: 147, column: 29, scope: !513)
!521 = !DILocation(line: 147, column: 9, scope: !513)
!522 = !DILocation(line: 147, column: 15, scope: !513)
!523 = !DILocation(line: 147, column: 27, scope: !513)
!524 = !DILocation(line: 148, column: 9, scope: !513)
!525 = distinct !{!525, !496, !526, !445}
!526 = !DILocation(line: 149, column: 5, scope: !485)
!527 = !DILocation(line: 151, column: 12, scope: !485)
!528 = !DILocation(line: 151, column: 5, scope: !485)
!529 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !530, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DISubroutineType(types: !531)
!531 = !{!23}
!532 = !DILocation(line: 158, column: 5, scope: !529)
!533 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !530, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DILocation(line: 163, column: 5, scope: !533)
!535 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !530, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DILocation(line: 168, column: 13, scope: !535)
!537 = !DILocation(line: 168, column: 20, scope: !535)
!538 = !DILocation(line: 168, column: 5, scope: !535)
!539 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DILocation(line: 187, column: 16, scope: !539)
!541 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DILocation(line: 188, column: 16, scope: !541)
!543 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DILocation(line: 189, column: 16, scope: !543)
!545 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DILocation(line: 190, column: 16, scope: !545)
!547 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 191, column: 16, scope: !547)
!549 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DILocation(line: 192, column: 16, scope: !549)
!551 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DILocation(line: 193, column: 16, scope: !551)
!553 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DILocation(line: 194, column: 16, scope: !553)
!555 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DILocation(line: 195, column: 16, scope: !555)
!557 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 198, column: 15, scope: !557)
!559 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DILocation(line: 199, column: 15, scope: !559)
!561 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!562 = !DILocation(line: 200, column: 15, scope: !561)
!563 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DILocation(line: 201, column: 15, scope: !563)
!565 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DILocation(line: 202, column: 15, scope: !565)
!567 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DILocation(line: 203, column: 15, scope: !567)
!569 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!570 = !DILocation(line: 204, column: 15, scope: !569)
!571 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DILocation(line: 205, column: 15, scope: !571)
!573 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DILocation(line: 206, column: 15, scope: !573)
