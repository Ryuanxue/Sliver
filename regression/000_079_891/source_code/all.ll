; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
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
define dso_local i8* @badSource(i8* %data) #0 !dbg !52 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !57, metadata !DIExpression()), !dbg !62
  %0 = load i8*, i8** %data.addr, align 8, !dbg !63
  %call = call i64 @strlen(i8* %0) #8, !dbg !64
  store i64 %call, i64* %dataLen, align 8, !dbg !62
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !65, metadata !DIExpression()), !dbg !66
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #9, !dbg !67
  store i8* %call1, i8** %environment, align 8, !dbg !66
  %1 = load i8*, i8** %environment, align 8, !dbg !68
  %cmp = icmp ne i8* %1, null, !dbg !70
  br i1 %cmp, label %if.then, label %if.end, !dbg !71

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !72
  %3 = load i64, i64* %dataLen, align 8, !dbg !74
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !75
  %4 = load i8*, i8** %environment, align 8, !dbg !76
  %5 = load i64, i64* %dataLen, align 8, !dbg !77
  %sub = sub i64 100, %5, !dbg !78
  %sub2 = sub i64 %sub, 1, !dbg !79
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %4, i64 %sub2) #9, !dbg !80
  br label %if.end, !dbg !81

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %data.addr, align 8, !dbg !82
  ret i8* %6, !dbg !83
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !84 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !89, metadata !DIExpression()), !dbg !105
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !106
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !106
  call void @llvm.va_start(i8* %arraydecay1), !dbg !106
  %0 = load i8*, i8** %data.addr, align 8, !dbg !107
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !108
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !109
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !110
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !110
  call void @llvm.va_end(i8* %arraydecay34), !dbg !110
  ret void, !dbg !111
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #4

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #5

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_42_bad() #0 !dbg !112 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !117, metadata !DIExpression()), !dbg !121
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !121
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !121
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !122
  store i8* %arraydecay, i8** %data, align 8, !dbg !123
  %1 = load i8*, i8** %data, align 8, !dbg !124
  %call = call i8* @badSource(i8* %1), !dbg !125
  store i8* %call, i8** %data, align 8, !dbg !126
  %2 = load i8*, i8** %data, align 8, !dbg !127
  %3 = load i8*, i8** %data, align 8, !dbg !128
  call void (i8*, ...) @badVaSink(i8* %2, i8* %3), !dbg !129
  ret void, !dbg !130
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodG2BSource(i8* %data) #0 !dbg !131 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !132, metadata !DIExpression()), !dbg !133
  %0 = load i8*, i8** %data.addr, align 8, !dbg !134
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !135
  %1 = load i8*, i8** %data.addr, align 8, !dbg !136
  ret i8* %1, !dbg !137
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !138 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !141, metadata !DIExpression()), !dbg !143
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !144
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !144
  call void @llvm.va_start(i8* %arraydecay1), !dbg !144
  %0 = load i8*, i8** %data.addr, align 8, !dbg !145
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !146
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !147
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !148
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !148
  call void @llvm.va_end(i8* %arraydecay34), !dbg !148
  ret void, !dbg !149
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !150 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !153, metadata !DIExpression()), !dbg !154
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !154
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !154
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !155
  store i8* %arraydecay, i8** %data, align 8, !dbg !156
  %1 = load i8*, i8** %data, align 8, !dbg !157
  %call = call i8* @goodG2BSource(i8* %1), !dbg !158
  store i8* %call, i8** %data, align 8, !dbg !159
  %2 = load i8*, i8** %data, align 8, !dbg !160
  %3 = load i8*, i8** %data, align 8, !dbg !161
  call void (i8*, ...) @goodG2BVaSink(i8* %2, i8* %3), !dbg !162
  ret void, !dbg !163
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodB2GSource(i8* %data) #0 !dbg !164 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !167, metadata !DIExpression()), !dbg !169
  %0 = load i8*, i8** %data.addr, align 8, !dbg !170
  %call = call i64 @strlen(i8* %0) #8, !dbg !171
  store i64 %call, i64* %dataLen, align 8, !dbg !169
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !172, metadata !DIExpression()), !dbg !173
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #9, !dbg !174
  store i8* %call1, i8** %environment, align 8, !dbg !173
  %1 = load i8*, i8** %environment, align 8, !dbg !175
  %cmp = icmp ne i8* %1, null, !dbg !177
  br i1 %cmp, label %if.then, label %if.end, !dbg !178

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !179
  %3 = load i64, i64* %dataLen, align 8, !dbg !181
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !182
  %4 = load i8*, i8** %environment, align 8, !dbg !183
  %5 = load i64, i64* %dataLen, align 8, !dbg !184
  %sub = sub i64 100, %5, !dbg !185
  %sub2 = sub i64 %sub, 1, !dbg !186
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %4, i64 %sub2) #9, !dbg !187
  br label %if.end, !dbg !188

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %data.addr, align 8, !dbg !189
  ret i8* %6, !dbg !190
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !191 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !192, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !194, metadata !DIExpression()), !dbg !196
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !197
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !197
  call void @llvm.va_start(i8* %arraydecay1), !dbg !197
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !198
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !199
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !200
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !200
  call void @llvm.va_end(i8* %arraydecay34), !dbg !200
  ret void, !dbg !201
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !202 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !203, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !205, metadata !DIExpression()), !dbg !206
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !206
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !206
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !207
  store i8* %arraydecay, i8** %data, align 8, !dbg !208
  %1 = load i8*, i8** %data, align 8, !dbg !209
  %call = call i8* @goodB2GSource(i8* %1), !dbg !210
  store i8* %call, i8** %data, align 8, !dbg !211
  %2 = load i8*, i8** %data, align 8, !dbg !212
  %3 = load i8*, i8** %data, align 8, !dbg !213
  call void (i8*, ...) @goodB2GVaSink(i8* %2, i8* %3), !dbg !214
  ret void, !dbg !215
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_42_good() #0 !dbg !216 {
entry:
  call void @goodG2B(), !dbg !217
  call void @goodB2G(), !dbg !218
  ret void, !dbg !219
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !220 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !223, metadata !DIExpression()), !dbg !224
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !225
  %0 = load i8*, i8** %line.addr, align 8, !dbg !226
  %cmp = icmp ne i8* %0, null, !dbg !228
  br i1 %cmp, label %if.then, label %if.end, !dbg !229

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !230
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !232
  br label %if.end, !dbg !233

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !234
  ret void, !dbg !235
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !236 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !237, metadata !DIExpression()), !dbg !238
  %0 = load i8*, i8** %line.addr, align 8, !dbg !239
  %cmp = icmp ne i8* %0, null, !dbg !241
  br i1 %cmp, label %if.then, label %if.end, !dbg !242

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !243
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !245
  br label %if.end, !dbg !246

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !247
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !248 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !253, metadata !DIExpression()), !dbg !254
  %0 = load i32*, i32** %line.addr, align 8, !dbg !255
  %cmp = icmp ne i32* %0, null, !dbg !257
  br i1 %cmp, label %if.then, label %if.end, !dbg !258

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !259
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !261
  br label %if.end, !dbg !262

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !263
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !264 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !267, metadata !DIExpression()), !dbg !268
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !269
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !270
  ret void, !dbg !271
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !272 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !276, metadata !DIExpression()), !dbg !277
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !278
  %conv = sext i16 %0 to i32, !dbg !278
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !279
  ret void, !dbg !280
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !281 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !285, metadata !DIExpression()), !dbg !286
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !287
  %conv = fpext float %0 to double, !dbg !287
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !288
  ret void, !dbg !289
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !290 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !294, metadata !DIExpression()), !dbg !295
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !296
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !297
  ret void, !dbg !298
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !299 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !306, metadata !DIExpression()), !dbg !307
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !308
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !309
  ret void, !dbg !310
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !311 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !314, metadata !DIExpression()), !dbg !315
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !316
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !317
  ret void, !dbg !318
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !319 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !322, metadata !DIExpression()), !dbg !323
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !324
  %conv = sext i8 %0 to i32, !dbg !324
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !325
  ret void, !dbg !326
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !327 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !330, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !332, metadata !DIExpression()), !dbg !336
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !337
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !338
  store i32 %0, i32* %arrayidx, align 4, !dbg !339
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !340
  store i32 0, i32* %arrayidx1, align 4, !dbg !341
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !342
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !343
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !345 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !348, metadata !DIExpression()), !dbg !349
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !350
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !351
  ret void, !dbg !352
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !353 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !356, metadata !DIExpression()), !dbg !357
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !358
  %conv = zext i8 %0 to i32, !dbg !358
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !359
  ret void, !dbg !360
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !361 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !365, metadata !DIExpression()), !dbg !366
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !367
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !368
  ret void, !dbg !369
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !370 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !380, metadata !DIExpression()), !dbg !381
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !382
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !383
  %1 = load i32, i32* %intOne, align 4, !dbg !383
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !384
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !385
  %3 = load i32, i32* %intTwo, align 4, !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !386
  ret void, !dbg !387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !388 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !392, metadata !DIExpression()), !dbg !393
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !394, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.declare(metadata i64* %i, metadata !396, metadata !DIExpression()), !dbg !397
  store i64 0, i64* %i, align 8, !dbg !398
  br label %for.cond, !dbg !400

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !401
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !403
  %cmp = icmp ult i64 %0, %1, !dbg !404
  br i1 %cmp, label %for.body, label %for.end, !dbg !405

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !406
  %3 = load i64, i64* %i, align 8, !dbg !408
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !406
  %4 = load i8, i8* %arrayidx, align 1, !dbg !406
  %conv = zext i8 %4 to i32, !dbg !406
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !409
  br label %for.inc, !dbg !410

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !411
  %inc = add i64 %5, 1, !dbg !411
  store i64 %inc, i64* %i, align 8, !dbg !411
  br label %for.cond, !dbg !412, !llvm.loop !413

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !416
  ret void, !dbg !417
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !418 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !421, metadata !DIExpression()), !dbg !422
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !423, metadata !DIExpression()), !dbg !424
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !425, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !427, metadata !DIExpression()), !dbg !428
  store i64 0, i64* %numWritten, align 8, !dbg !428
  br label %while.cond, !dbg !429

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !430
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !431
  %cmp = icmp ult i64 %0, %1, !dbg !432
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !433

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #10, !dbg !434
  %2 = load i16*, i16** %call, align 8, !dbg !434
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !434
  %4 = load i64, i64* %numWritten, align 8, !dbg !434
  %mul = mul i64 2, %4, !dbg !434
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !434
  %5 = load i8, i8* %arrayidx, align 1, !dbg !434
  %conv = sext i8 %5 to i32, !dbg !434
  %idxprom = sext i32 %conv to i64, !dbg !434
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !434
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !434
  %conv2 = zext i16 %6 to i32, !dbg !434
  %and = and i32 %conv2, 4096, !dbg !434
  %tobool = icmp ne i32 %and, 0, !dbg !434
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !435

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #10, !dbg !436
  %7 = load i16*, i16** %call3, align 8, !dbg !436
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !436
  %9 = load i64, i64* %numWritten, align 8, !dbg !436
  %mul4 = mul i64 2, %9, !dbg !436
  %add = add i64 %mul4, 1, !dbg !436
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !436
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !436
  %conv6 = sext i8 %10 to i32, !dbg !436
  %idxprom7 = sext i32 %conv6 to i64, !dbg !436
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !436
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !436
  %conv9 = zext i16 %11 to i32, !dbg !436
  %and10 = and i32 %conv9, 4096, !dbg !436
  %tobool11 = icmp ne i32 %and10, 0, !dbg !435
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !437
  br i1 %12, label %while.body, label %while.end, !dbg !429

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !438, metadata !DIExpression()), !dbg !440
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !441
  %14 = load i64, i64* %numWritten, align 8, !dbg !442
  %mul12 = mul i64 2, %14, !dbg !443
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !441
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !444
  %15 = load i32, i32* %byte, align 4, !dbg !445
  %conv15 = trunc i32 %15 to i8, !dbg !446
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !447
  %17 = load i64, i64* %numWritten, align 8, !dbg !448
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !447
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !449
  %18 = load i64, i64* %numWritten, align 8, !dbg !450
  %inc = add i64 %18, 1, !dbg !450
  store i64 %inc, i64* %numWritten, align 8, !dbg !450
  br label %while.cond, !dbg !429, !llvm.loop !451

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !453
  ret i64 %19, !dbg !454
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !455 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !458, metadata !DIExpression()), !dbg !459
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !460, metadata !DIExpression()), !dbg !461
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !462, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !464, metadata !DIExpression()), !dbg !465
  store i64 0, i64* %numWritten, align 8, !dbg !465
  br label %while.cond, !dbg !466

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !467
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !468
  %cmp = icmp ult i64 %0, %1, !dbg !469
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !470

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !471
  %3 = load i64, i64* %numWritten, align 8, !dbg !472
  %mul = mul i64 2, %3, !dbg !473
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !471
  %4 = load i32, i32* %arrayidx, align 4, !dbg !471
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !474
  %tobool = icmp ne i32 %call, 0, !dbg !474
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !475

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !476
  %6 = load i64, i64* %numWritten, align 8, !dbg !477
  %mul1 = mul i64 2, %6, !dbg !478
  %add = add i64 %mul1, 1, !dbg !479
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !476
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !476
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !480
  %tobool4 = icmp ne i32 %call3, 0, !dbg !475
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !481
  br i1 %8, label %while.body, label %while.end, !dbg !466

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !482, metadata !DIExpression()), !dbg !484
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !485
  %10 = load i64, i64* %numWritten, align 8, !dbg !486
  %mul5 = mul i64 2, %10, !dbg !487
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !485
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !488
  %11 = load i32, i32* %byte, align 4, !dbg !489
  %conv = trunc i32 %11 to i8, !dbg !490
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !491
  %13 = load i64, i64* %numWritten, align 8, !dbg !492
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !491
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !493
  %14 = load i64, i64* %numWritten, align 8, !dbg !494
  %inc = add i64 %14, 1, !dbg !494
  store i64 %inc, i64* %numWritten, align 8, !dbg !494
  br label %while.cond, !dbg !466, !llvm.loop !495

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !497
  ret i64 %15, !dbg !498
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !499 {
entry:
  ret i32 1, !dbg !502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !503 {
entry:
  ret i32 0, !dbg !504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !505 {
entry:
  %call = call i32 @rand() #9, !dbg !506
  %rem = srem i32 %call, 2, !dbg !507
  ret i32 %rem, !dbg !508
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !509 {
entry:
  ret void, !dbg !510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !511 {
entry:
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !513 {
entry:
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !515 {
entry:
  ret void, !dbg !516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !517 {
entry:
  ret void, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !519 {
entry:
  ret void, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !521 {
entry:
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !523 {
entry:
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !525 {
entry:
  ret void, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !527 {
entry:
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !529 {
entry:
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !531 {
entry:
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !533 {
entry:
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !535 {
entry:
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !537 {
entry:
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !539 {
entry:
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !541 {
entry:
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !543 {
entry:
  ret void, !dbg !544
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nosync nounwind willreturn }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #7 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_891/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_42.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_891/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "badSource", scope: !45, file: !45, line: 36, type: !53, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{!42, !42}
!55 = !DILocalVariable(name: "data", arg: 1, scope: !52, file: !45, line: 36, type: !42)
!56 = !DILocation(line: 36, column: 25, scope: !52)
!57 = !DILocalVariable(name: "dataLen", scope: !58, file: !45, line: 40, type: !59)
!58 = distinct !DILexicalBlock(scope: !52, file: !45, line: 38, column: 5)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !60, line: 46, baseType: !61)
!60 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!61 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!62 = !DILocation(line: 40, column: 16, scope: !58)
!63 = !DILocation(line: 40, column: 33, scope: !58)
!64 = !DILocation(line: 40, column: 26, scope: !58)
!65 = !DILocalVariable(name: "environment", scope: !58, file: !45, line: 41, type: !42)
!66 = !DILocation(line: 41, column: 16, scope: !58)
!67 = !DILocation(line: 41, column: 30, scope: !58)
!68 = !DILocation(line: 43, column: 13, scope: !69)
!69 = distinct !DILexicalBlock(scope: !58, file: !45, line: 43, column: 13)
!70 = !DILocation(line: 43, column: 25, scope: !69)
!71 = !DILocation(line: 43, column: 13, scope: !58)
!72 = !DILocation(line: 46, column: 21, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !45, line: 44, column: 9)
!74 = !DILocation(line: 46, column: 26, scope: !73)
!75 = !DILocation(line: 46, column: 25, scope: !73)
!76 = !DILocation(line: 46, column: 35, scope: !73)
!77 = !DILocation(line: 46, column: 52, scope: !73)
!78 = !DILocation(line: 46, column: 51, scope: !73)
!79 = !DILocation(line: 46, column: 59, scope: !73)
!80 = !DILocation(line: 46, column: 13, scope: !73)
!81 = !DILocation(line: 47, column: 9, scope: !73)
!82 = !DILocation(line: 49, column: 12, scope: !52)
!83 = !DILocation(line: 49, column: 5, scope: !52)
!84 = distinct !DISubprogram(name: "badVaSink", scope: !45, file: !45, line: 52, type: !85, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !42, null}
!87 = !DILocalVariable(name: "data", arg: 1, scope: !84, file: !45, line: 52, type: !42)
!88 = !DILocation(line: 52, column: 23, scope: !84)
!89 = !DILocalVariable(name: "args", scope: !90, file: !45, line: 55, type: !91)
!90 = distinct !DILexicalBlock(scope: !84, file: !45, line: 54, column: 5)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !92, line: 52, baseType: !93)
!92 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !94, line: 32, baseType: !95)
!94 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !45, baseType: !96)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 192, elements: !103)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !98)
!98 = !{!99, !100, !101, !102}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !97, file: !45, line: 55, baseType: !7, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !97, file: !45, line: 55, baseType: !7, size: 32, offset: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !97, file: !45, line: 55, baseType: !22, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !97, file: !45, line: 55, baseType: !22, size: 64, offset: 128)
!103 = !{!104}
!104 = !DISubrange(count: 1)
!105 = !DILocation(line: 55, column: 17, scope: !90)
!106 = !DILocation(line: 56, column: 9, scope: !90)
!107 = !DILocation(line: 58, column: 17, scope: !90)
!108 = !DILocation(line: 58, column: 23, scope: !90)
!109 = !DILocation(line: 58, column: 9, scope: !90)
!110 = !DILocation(line: 59, column: 9, scope: !90)
!111 = !DILocation(line: 61, column: 1, scope: !84)
!112 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_42_bad", scope: !45, file: !45, line: 63, type: !113, scopeLine: 64, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!113 = !DISubroutineType(types: !114)
!114 = !{null}
!115 = !DILocalVariable(name: "data", scope: !112, file: !45, line: 65, type: !42)
!116 = !DILocation(line: 65, column: 12, scope: !112)
!117 = !DILocalVariable(name: "dataBuffer", scope: !112, file: !45, line: 66, type: !118)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 100)
!121 = !DILocation(line: 66, column: 10, scope: !112)
!122 = !DILocation(line: 67, column: 12, scope: !112)
!123 = !DILocation(line: 67, column: 10, scope: !112)
!124 = !DILocation(line: 68, column: 22, scope: !112)
!125 = !DILocation(line: 68, column: 12, scope: !112)
!126 = !DILocation(line: 68, column: 10, scope: !112)
!127 = !DILocation(line: 69, column: 15, scope: !112)
!128 = !DILocation(line: 69, column: 21, scope: !112)
!129 = !DILocation(line: 69, column: 5, scope: !112)
!130 = !DILocation(line: 70, column: 1, scope: !112)
!131 = distinct !DISubprogram(name: "goodG2BSource", scope: !45, file: !45, line: 77, type: !53, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!132 = !DILocalVariable(name: "data", arg: 1, scope: !131, file: !45, line: 77, type: !42)
!133 = !DILocation(line: 77, column: 29, scope: !131)
!134 = !DILocation(line: 80, column: 12, scope: !131)
!135 = !DILocation(line: 80, column: 5, scope: !131)
!136 = !DILocation(line: 81, column: 12, scope: !131)
!137 = !DILocation(line: 81, column: 5, scope: !131)
!138 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !45, file: !45, line: 84, type: !85, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!139 = !DILocalVariable(name: "data", arg: 1, scope: !138, file: !45, line: 84, type: !42)
!140 = !DILocation(line: 84, column: 27, scope: !138)
!141 = !DILocalVariable(name: "args", scope: !142, file: !45, line: 87, type: !91)
!142 = distinct !DILexicalBlock(scope: !138, file: !45, line: 86, column: 5)
!143 = !DILocation(line: 87, column: 17, scope: !142)
!144 = !DILocation(line: 88, column: 9, scope: !142)
!145 = !DILocation(line: 90, column: 17, scope: !142)
!146 = !DILocation(line: 90, column: 23, scope: !142)
!147 = !DILocation(line: 90, column: 9, scope: !142)
!148 = !DILocation(line: 91, column: 9, scope: !142)
!149 = !DILocation(line: 93, column: 1, scope: !138)
!150 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 95, type: !113, scopeLine: 96, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!151 = !DILocalVariable(name: "data", scope: !150, file: !45, line: 97, type: !42)
!152 = !DILocation(line: 97, column: 12, scope: !150)
!153 = !DILocalVariable(name: "dataBuffer", scope: !150, file: !45, line: 98, type: !118)
!154 = !DILocation(line: 98, column: 10, scope: !150)
!155 = !DILocation(line: 99, column: 12, scope: !150)
!156 = !DILocation(line: 99, column: 10, scope: !150)
!157 = !DILocation(line: 100, column: 26, scope: !150)
!158 = !DILocation(line: 100, column: 12, scope: !150)
!159 = !DILocation(line: 100, column: 10, scope: !150)
!160 = !DILocation(line: 101, column: 19, scope: !150)
!161 = !DILocation(line: 101, column: 25, scope: !150)
!162 = !DILocation(line: 101, column: 5, scope: !150)
!163 = !DILocation(line: 102, column: 1, scope: !150)
!164 = distinct !DISubprogram(name: "goodB2GSource", scope: !45, file: !45, line: 105, type: !53, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!165 = !DILocalVariable(name: "data", arg: 1, scope: !164, file: !45, line: 105, type: !42)
!166 = !DILocation(line: 105, column: 29, scope: !164)
!167 = !DILocalVariable(name: "dataLen", scope: !168, file: !45, line: 109, type: !59)
!168 = distinct !DILexicalBlock(scope: !164, file: !45, line: 107, column: 5)
!169 = !DILocation(line: 109, column: 16, scope: !168)
!170 = !DILocation(line: 109, column: 33, scope: !168)
!171 = !DILocation(line: 109, column: 26, scope: !168)
!172 = !DILocalVariable(name: "environment", scope: !168, file: !45, line: 110, type: !42)
!173 = !DILocation(line: 110, column: 16, scope: !168)
!174 = !DILocation(line: 110, column: 30, scope: !168)
!175 = !DILocation(line: 112, column: 13, scope: !176)
!176 = distinct !DILexicalBlock(scope: !168, file: !45, line: 112, column: 13)
!177 = !DILocation(line: 112, column: 25, scope: !176)
!178 = !DILocation(line: 112, column: 13, scope: !168)
!179 = !DILocation(line: 115, column: 21, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !45, line: 113, column: 9)
!181 = !DILocation(line: 115, column: 26, scope: !180)
!182 = !DILocation(line: 115, column: 25, scope: !180)
!183 = !DILocation(line: 115, column: 35, scope: !180)
!184 = !DILocation(line: 115, column: 52, scope: !180)
!185 = !DILocation(line: 115, column: 51, scope: !180)
!186 = !DILocation(line: 115, column: 59, scope: !180)
!187 = !DILocation(line: 115, column: 13, scope: !180)
!188 = !DILocation(line: 116, column: 9, scope: !180)
!189 = !DILocation(line: 118, column: 12, scope: !164)
!190 = !DILocation(line: 118, column: 5, scope: !164)
!191 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !45, file: !45, line: 121, type: !85, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!192 = !DILocalVariable(name: "data", arg: 1, scope: !191, file: !45, line: 121, type: !42)
!193 = !DILocation(line: 121, column: 27, scope: !191)
!194 = !DILocalVariable(name: "args", scope: !195, file: !45, line: 124, type: !91)
!195 = distinct !DILexicalBlock(scope: !191, file: !45, line: 123, column: 5)
!196 = !DILocation(line: 124, column: 17, scope: !195)
!197 = !DILocation(line: 125, column: 9, scope: !195)
!198 = !DILocation(line: 127, column: 23, scope: !195)
!199 = !DILocation(line: 127, column: 9, scope: !195)
!200 = !DILocation(line: 128, column: 9, scope: !195)
!201 = !DILocation(line: 130, column: 1, scope: !191)
!202 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 132, type: !113, scopeLine: 133, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!203 = !DILocalVariable(name: "data", scope: !202, file: !45, line: 134, type: !42)
!204 = !DILocation(line: 134, column: 12, scope: !202)
!205 = !DILocalVariable(name: "dataBuffer", scope: !202, file: !45, line: 135, type: !118)
!206 = !DILocation(line: 135, column: 10, scope: !202)
!207 = !DILocation(line: 136, column: 12, scope: !202)
!208 = !DILocation(line: 136, column: 10, scope: !202)
!209 = !DILocation(line: 137, column: 26, scope: !202)
!210 = !DILocation(line: 137, column: 12, scope: !202)
!211 = !DILocation(line: 137, column: 10, scope: !202)
!212 = !DILocation(line: 138, column: 19, scope: !202)
!213 = !DILocation(line: 138, column: 25, scope: !202)
!214 = !DILocation(line: 138, column: 5, scope: !202)
!215 = !DILocation(line: 139, column: 1, scope: !202)
!216 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_42_good", scope: !45, file: !45, line: 141, type: !113, scopeLine: 142, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!217 = !DILocation(line: 143, column: 5, scope: !216)
!218 = !DILocation(line: 144, column: 5, scope: !216)
!219 = !DILocation(line: 145, column: 1, scope: !216)
!220 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !221, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !42}
!223 = !DILocalVariable(name: "line", arg: 1, scope: !220, file: !3, line: 11, type: !42)
!224 = !DILocation(line: 11, column: 25, scope: !220)
!225 = !DILocation(line: 13, column: 1, scope: !220)
!226 = !DILocation(line: 14, column: 8, scope: !227)
!227 = distinct !DILexicalBlock(scope: !220, file: !3, line: 14, column: 8)
!228 = !DILocation(line: 14, column: 13, scope: !227)
!229 = !DILocation(line: 14, column: 8, scope: !220)
!230 = !DILocation(line: 16, column: 24, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !3, line: 15, column: 5)
!232 = !DILocation(line: 16, column: 9, scope: !231)
!233 = !DILocation(line: 17, column: 5, scope: !231)
!234 = !DILocation(line: 18, column: 5, scope: !220)
!235 = !DILocation(line: 19, column: 1, scope: !220)
!236 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !221, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!237 = !DILocalVariable(name: "line", arg: 1, scope: !236, file: !3, line: 20, type: !42)
!238 = !DILocation(line: 20, column: 29, scope: !236)
!239 = !DILocation(line: 22, column: 8, scope: !240)
!240 = distinct !DILexicalBlock(scope: !236, file: !3, line: 22, column: 8)
!241 = !DILocation(line: 22, column: 13, scope: !240)
!242 = !DILocation(line: 22, column: 8, scope: !236)
!243 = !DILocation(line: 24, column: 24, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !3, line: 23, column: 5)
!245 = !DILocation(line: 24, column: 9, scope: !244)
!246 = !DILocation(line: 25, column: 5, scope: !244)
!247 = !DILocation(line: 26, column: 1, scope: !236)
!248 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !249, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !60, line: 74, baseType: !23)
!253 = !DILocalVariable(name: "line", arg: 1, scope: !248, file: !3, line: 27, type: !251)
!254 = !DILocation(line: 27, column: 29, scope: !248)
!255 = !DILocation(line: 29, column: 8, scope: !256)
!256 = distinct !DILexicalBlock(scope: !248, file: !3, line: 29, column: 8)
!257 = !DILocation(line: 29, column: 13, scope: !256)
!258 = !DILocation(line: 29, column: 8, scope: !248)
!259 = !DILocation(line: 31, column: 27, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !3, line: 30, column: 5)
!261 = !DILocation(line: 31, column: 9, scope: !260)
!262 = !DILocation(line: 32, column: 5, scope: !260)
!263 = !DILocation(line: 33, column: 1, scope: !248)
!264 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !265, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !23}
!267 = !DILocalVariable(name: "intNumber", arg: 1, scope: !264, file: !3, line: 35, type: !23)
!268 = !DILocation(line: 35, column: 24, scope: !264)
!269 = !DILocation(line: 37, column: 20, scope: !264)
!270 = !DILocation(line: 37, column: 5, scope: !264)
!271 = !DILocation(line: 38, column: 1, scope: !264)
!272 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !273, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !275}
!275 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!276 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !272, file: !3, line: 40, type: !275)
!277 = !DILocation(line: 40, column: 28, scope: !272)
!278 = !DILocation(line: 42, column: 21, scope: !272)
!279 = !DILocation(line: 42, column: 5, scope: !272)
!280 = !DILocation(line: 43, column: 1, scope: !272)
!281 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !282, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !284}
!284 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!285 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !281, file: !3, line: 45, type: !284)
!286 = !DILocation(line: 45, column: 28, scope: !281)
!287 = !DILocation(line: 47, column: 20, scope: !281)
!288 = !DILocation(line: 47, column: 5, scope: !281)
!289 = !DILocation(line: 48, column: 1, scope: !281)
!290 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !291, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !293}
!293 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!294 = !DILocalVariable(name: "longNumber", arg: 1, scope: !290, file: !3, line: 50, type: !293)
!295 = !DILocation(line: 50, column: 26, scope: !290)
!296 = !DILocation(line: 52, column: 21, scope: !290)
!297 = !DILocation(line: 52, column: 5, scope: !290)
!298 = !DILocation(line: 53, column: 1, scope: !290)
!299 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !300, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !302}
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !303, line: 27, baseType: !304)
!303 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !305, line: 44, baseType: !293)
!305 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!306 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !299, file: !3, line: 55, type: !302)
!307 = !DILocation(line: 55, column: 33, scope: !299)
!308 = !DILocation(line: 57, column: 29, scope: !299)
!309 = !DILocation(line: 57, column: 5, scope: !299)
!310 = !DILocation(line: 58, column: 1, scope: !299)
!311 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !312, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !59}
!314 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !311, file: !3, line: 60, type: !59)
!315 = !DILocation(line: 60, column: 29, scope: !311)
!316 = !DILocation(line: 62, column: 21, scope: !311)
!317 = !DILocation(line: 62, column: 5, scope: !311)
!318 = !DILocation(line: 63, column: 1, scope: !311)
!319 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !320, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !43}
!322 = !DILocalVariable(name: "charHex", arg: 1, scope: !319, file: !3, line: 65, type: !43)
!323 = !DILocation(line: 65, column: 29, scope: !319)
!324 = !DILocation(line: 67, column: 22, scope: !319)
!325 = !DILocation(line: 67, column: 5, scope: !319)
!326 = !DILocation(line: 68, column: 1, scope: !319)
!327 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !328, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !252}
!330 = !DILocalVariable(name: "wideChar", arg: 1, scope: !327, file: !3, line: 70, type: !252)
!331 = !DILocation(line: 70, column: 29, scope: !327)
!332 = !DILocalVariable(name: "s", scope: !327, file: !3, line: 74, type: !333)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 64, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 2)
!336 = !DILocation(line: 74, column: 13, scope: !327)
!337 = !DILocation(line: 75, column: 16, scope: !327)
!338 = !DILocation(line: 75, column: 9, scope: !327)
!339 = !DILocation(line: 75, column: 14, scope: !327)
!340 = !DILocation(line: 76, column: 9, scope: !327)
!341 = !DILocation(line: 76, column: 14, scope: !327)
!342 = !DILocation(line: 77, column: 21, scope: !327)
!343 = !DILocation(line: 77, column: 5, scope: !327)
!344 = !DILocation(line: 78, column: 1, scope: !327)
!345 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !346, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !7}
!348 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !345, file: !3, line: 80, type: !7)
!349 = !DILocation(line: 80, column: 33, scope: !345)
!350 = !DILocation(line: 82, column: 20, scope: !345)
!351 = !DILocation(line: 82, column: 5, scope: !345)
!352 = !DILocation(line: 83, column: 1, scope: !345)
!353 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !354, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !25}
!356 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !353, file: !3, line: 85, type: !25)
!357 = !DILocation(line: 85, column: 45, scope: !353)
!358 = !DILocation(line: 87, column: 22, scope: !353)
!359 = !DILocation(line: 87, column: 5, scope: !353)
!360 = !DILocation(line: 88, column: 1, scope: !353)
!361 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !362, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !364}
!364 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!365 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !361, file: !3, line: 90, type: !364)
!366 = !DILocation(line: 90, column: 29, scope: !361)
!367 = !DILocation(line: 92, column: 20, scope: !361)
!368 = !DILocation(line: 92, column: 5, scope: !361)
!369 = !DILocation(line: 93, column: 1, scope: !361)
!370 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !371, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !373}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !375, line: 100, baseType: !376)
!375 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_891/source_code")
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !375, line: 96, size: 64, elements: !377)
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !376, file: !375, line: 98, baseType: !23, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !376, file: !375, line: 99, baseType: !23, size: 32, offset: 32)
!380 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !370, file: !3, line: 95, type: !373)
!381 = !DILocation(line: 95, column: 40, scope: !370)
!382 = !DILocation(line: 97, column: 26, scope: !370)
!383 = !DILocation(line: 97, column: 47, scope: !370)
!384 = !DILocation(line: 97, column: 55, scope: !370)
!385 = !DILocation(line: 97, column: 76, scope: !370)
!386 = !DILocation(line: 97, column: 5, scope: !370)
!387 = !DILocation(line: 98, column: 1, scope: !370)
!388 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !389, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !391, !59}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!392 = !DILocalVariable(name: "bytes", arg: 1, scope: !388, file: !3, line: 100, type: !391)
!393 = !DILocation(line: 100, column: 38, scope: !388)
!394 = !DILocalVariable(name: "numBytes", arg: 2, scope: !388, file: !3, line: 100, type: !59)
!395 = !DILocation(line: 100, column: 52, scope: !388)
!396 = !DILocalVariable(name: "i", scope: !388, file: !3, line: 102, type: !59)
!397 = !DILocation(line: 102, column: 12, scope: !388)
!398 = !DILocation(line: 103, column: 12, scope: !399)
!399 = distinct !DILexicalBlock(scope: !388, file: !3, line: 103, column: 5)
!400 = !DILocation(line: 103, column: 10, scope: !399)
!401 = !DILocation(line: 103, column: 17, scope: !402)
!402 = distinct !DILexicalBlock(scope: !399, file: !3, line: 103, column: 5)
!403 = !DILocation(line: 103, column: 21, scope: !402)
!404 = !DILocation(line: 103, column: 19, scope: !402)
!405 = !DILocation(line: 103, column: 5, scope: !399)
!406 = !DILocation(line: 105, column: 24, scope: !407)
!407 = distinct !DILexicalBlock(scope: !402, file: !3, line: 104, column: 5)
!408 = !DILocation(line: 105, column: 30, scope: !407)
!409 = !DILocation(line: 105, column: 9, scope: !407)
!410 = !DILocation(line: 106, column: 5, scope: !407)
!411 = !DILocation(line: 103, column: 31, scope: !402)
!412 = !DILocation(line: 103, column: 5, scope: !402)
!413 = distinct !{!413, !405, !414, !415}
!414 = !DILocation(line: 106, column: 5, scope: !399)
!415 = !{!"llvm.loop.mustprogress"}
!416 = !DILocation(line: 107, column: 5, scope: !388)
!417 = !DILocation(line: 108, column: 1, scope: !388)
!418 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !419, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!419 = !DISubroutineType(types: !420)
!420 = !{!59, !391, !59, !42}
!421 = !DILocalVariable(name: "bytes", arg: 1, scope: !418, file: !3, line: 113, type: !391)
!422 = !DILocation(line: 113, column: 39, scope: !418)
!423 = !DILocalVariable(name: "numBytes", arg: 2, scope: !418, file: !3, line: 113, type: !59)
!424 = !DILocation(line: 113, column: 53, scope: !418)
!425 = !DILocalVariable(name: "hex", arg: 3, scope: !418, file: !3, line: 113, type: !42)
!426 = !DILocation(line: 113, column: 71, scope: !418)
!427 = !DILocalVariable(name: "numWritten", scope: !418, file: !3, line: 115, type: !59)
!428 = !DILocation(line: 115, column: 12, scope: !418)
!429 = !DILocation(line: 121, column: 5, scope: !418)
!430 = !DILocation(line: 121, column: 12, scope: !418)
!431 = !DILocation(line: 121, column: 25, scope: !418)
!432 = !DILocation(line: 121, column: 23, scope: !418)
!433 = !DILocation(line: 121, column: 34, scope: !418)
!434 = !DILocation(line: 121, column: 37, scope: !418)
!435 = !DILocation(line: 121, column: 67, scope: !418)
!436 = !DILocation(line: 121, column: 70, scope: !418)
!437 = !DILocation(line: 0, scope: !418)
!438 = !DILocalVariable(name: "byte", scope: !439, file: !3, line: 123, type: !23)
!439 = distinct !DILexicalBlock(scope: !418, file: !3, line: 122, column: 5)
!440 = !DILocation(line: 123, column: 13, scope: !439)
!441 = !DILocation(line: 124, column: 17, scope: !439)
!442 = !DILocation(line: 124, column: 25, scope: !439)
!443 = !DILocation(line: 124, column: 23, scope: !439)
!444 = !DILocation(line: 124, column: 9, scope: !439)
!445 = !DILocation(line: 125, column: 45, scope: !439)
!446 = !DILocation(line: 125, column: 29, scope: !439)
!447 = !DILocation(line: 125, column: 9, scope: !439)
!448 = !DILocation(line: 125, column: 15, scope: !439)
!449 = !DILocation(line: 125, column: 27, scope: !439)
!450 = !DILocation(line: 126, column: 9, scope: !439)
!451 = distinct !{!451, !429, !452, !415}
!452 = !DILocation(line: 127, column: 5, scope: !418)
!453 = !DILocation(line: 129, column: 12, scope: !418)
!454 = !DILocation(line: 129, column: 5, scope: !418)
!455 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !456, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!456 = !DISubroutineType(types: !457)
!457 = !{!59, !391, !59, !251}
!458 = !DILocalVariable(name: "bytes", arg: 1, scope: !455, file: !3, line: 135, type: !391)
!459 = !DILocation(line: 135, column: 41, scope: !455)
!460 = !DILocalVariable(name: "numBytes", arg: 2, scope: !455, file: !3, line: 135, type: !59)
!461 = !DILocation(line: 135, column: 55, scope: !455)
!462 = !DILocalVariable(name: "hex", arg: 3, scope: !455, file: !3, line: 135, type: !251)
!463 = !DILocation(line: 135, column: 76, scope: !455)
!464 = !DILocalVariable(name: "numWritten", scope: !455, file: !3, line: 137, type: !59)
!465 = !DILocation(line: 137, column: 12, scope: !455)
!466 = !DILocation(line: 143, column: 5, scope: !455)
!467 = !DILocation(line: 143, column: 12, scope: !455)
!468 = !DILocation(line: 143, column: 25, scope: !455)
!469 = !DILocation(line: 143, column: 23, scope: !455)
!470 = !DILocation(line: 143, column: 34, scope: !455)
!471 = !DILocation(line: 143, column: 47, scope: !455)
!472 = !DILocation(line: 143, column: 55, scope: !455)
!473 = !DILocation(line: 143, column: 53, scope: !455)
!474 = !DILocation(line: 143, column: 37, scope: !455)
!475 = !DILocation(line: 143, column: 68, scope: !455)
!476 = !DILocation(line: 143, column: 81, scope: !455)
!477 = !DILocation(line: 143, column: 89, scope: !455)
!478 = !DILocation(line: 143, column: 87, scope: !455)
!479 = !DILocation(line: 143, column: 100, scope: !455)
!480 = !DILocation(line: 143, column: 71, scope: !455)
!481 = !DILocation(line: 0, scope: !455)
!482 = !DILocalVariable(name: "byte", scope: !483, file: !3, line: 145, type: !23)
!483 = distinct !DILexicalBlock(scope: !455, file: !3, line: 144, column: 5)
!484 = !DILocation(line: 145, column: 13, scope: !483)
!485 = !DILocation(line: 146, column: 18, scope: !483)
!486 = !DILocation(line: 146, column: 26, scope: !483)
!487 = !DILocation(line: 146, column: 24, scope: !483)
!488 = !DILocation(line: 146, column: 9, scope: !483)
!489 = !DILocation(line: 147, column: 45, scope: !483)
!490 = !DILocation(line: 147, column: 29, scope: !483)
!491 = !DILocation(line: 147, column: 9, scope: !483)
!492 = !DILocation(line: 147, column: 15, scope: !483)
!493 = !DILocation(line: 147, column: 27, scope: !483)
!494 = !DILocation(line: 148, column: 9, scope: !483)
!495 = distinct !{!495, !466, !496, !415}
!496 = !DILocation(line: 149, column: 5, scope: !455)
!497 = !DILocation(line: 151, column: 12, scope: !455)
!498 = !DILocation(line: 151, column: 5, scope: !455)
!499 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !500, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!500 = !DISubroutineType(types: !501)
!501 = !{!23}
!502 = !DILocation(line: 158, column: 5, scope: !499)
!503 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !500, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!504 = !DILocation(line: 163, column: 5, scope: !503)
!505 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !500, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!506 = !DILocation(line: 168, column: 13, scope: !505)
!507 = !DILocation(line: 168, column: 20, scope: !505)
!508 = !DILocation(line: 168, column: 5, scope: !505)
!509 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !113, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!510 = !DILocation(line: 187, column: 16, scope: !509)
!511 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !113, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!512 = !DILocation(line: 188, column: 16, scope: !511)
!513 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !113, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!514 = !DILocation(line: 189, column: 16, scope: !513)
!515 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !113, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!516 = !DILocation(line: 190, column: 16, scope: !515)
!517 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !113, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!518 = !DILocation(line: 191, column: 16, scope: !517)
!519 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !113, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DILocation(line: 192, column: 16, scope: !519)
!521 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !113, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DILocation(line: 193, column: 16, scope: !521)
!523 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !113, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!524 = !DILocation(line: 194, column: 16, scope: !523)
!525 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !113, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DILocation(line: 195, column: 16, scope: !525)
!527 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !113, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!528 = !DILocation(line: 198, column: 15, scope: !527)
!529 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !113, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DILocation(line: 199, column: 15, scope: !529)
!531 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !113, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DILocation(line: 200, column: 15, scope: !531)
!533 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !113, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DILocation(line: 201, column: 15, scope: !533)
!535 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !113, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DILocation(line: 202, column: 15, scope: !535)
!537 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !113, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DILocation(line: 203, column: 15, scope: !537)
!539 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !113, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DILocation(line: 204, column: 15, scope: !539)
!541 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !113, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DILocation(line: 205, column: 15, scope: !541)
!543 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !113, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DILocation(line: 206, column: 15, scope: !543)
