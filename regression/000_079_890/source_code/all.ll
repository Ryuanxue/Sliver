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
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !52 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !57, metadata !DIExpression()), !dbg !73
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !74
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !74
  call void @llvm.va_start(i8* %arraydecay1), !dbg !74
  %0 = load i8*, i8** %data.addr, align 8, !dbg !75
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !76
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !77
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !78
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !78
  call void @llvm.va_end(i8* %arraydecay34), !dbg !78
  ret void, !dbg !79
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink(i8* %data) #0 !dbg !80 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !83, metadata !DIExpression()), !dbg !84
  %0 = load i8*, i8** %data.addr, align 8, !dbg !85
  %1 = load i8*, i8** %data.addr, align 8, !dbg !86
  call void (i8*, ...) @badVaSink(i8* %0, i8* %1), !dbg !87
  ret void, !dbg !88
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_41_bad() #0 !dbg !89 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !94, metadata !DIExpression()), !dbg !98
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !98
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !98
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !99
  store i8* %arraydecay, i8** %data, align 8, !dbg !100
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !101, metadata !DIExpression()), !dbg !106
  %1 = load i8*, i8** %data, align 8, !dbg !107
  %call = call i64 @strlen(i8* %1) #8, !dbg !108
  store i64 %call, i64* %dataLen, align 8, !dbg !106
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !109, metadata !DIExpression()), !dbg !110
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #9, !dbg !111
  store i8* %call1, i8** %environment, align 8, !dbg !110
  %2 = load i8*, i8** %environment, align 8, !dbg !112
  %cmp = icmp ne i8* %2, null, !dbg !114
  br i1 %cmp, label %if.then, label %if.end, !dbg !115

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !116
  %4 = load i64, i64* %dataLen, align 8, !dbg !118
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !119
  %5 = load i8*, i8** %environment, align 8, !dbg !120
  %6 = load i64, i64* %dataLen, align 8, !dbg !121
  %sub = sub i64 100, %6, !dbg !122
  %sub2 = sub i64 %sub, 1, !dbg !123
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #9, !dbg !124
  br label %if.end, !dbg !125

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !126
  call void @badSink(i8* %7), !dbg !127
  ret void, !dbg !128
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #6

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !129 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !132, metadata !DIExpression()), !dbg !134
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !135
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !135
  call void @llvm.va_start(i8* %arraydecay1), !dbg !135
  %0 = load i8*, i8** %data.addr, align 8, !dbg !136
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !137
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !138
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !139
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !139
  call void @llvm.va_end(i8* %arraydecay34), !dbg !139
  ret void, !dbg !140
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !141 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !142, metadata !DIExpression()), !dbg !143
  %0 = load i8*, i8** %data.addr, align 8, !dbg !144
  %1 = load i8*, i8** %data.addr, align 8, !dbg !145
  call void (i8*, ...) @goodG2BVaSink(i8* %0, i8* %1), !dbg !146
  ret void, !dbg !147
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !148 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !151, metadata !DIExpression()), !dbg !152
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !152
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !152
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !153
  store i8* %arraydecay, i8** %data, align 8, !dbg !154
  %1 = load i8*, i8** %data, align 8, !dbg !155
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !156
  %2 = load i8*, i8** %data, align 8, !dbg !157
  call void @goodG2BSink(i8* %2), !dbg !158
  ret void, !dbg !159
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !160 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !163, metadata !DIExpression()), !dbg !165
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !166
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !166
  call void @llvm.va_start(i8* %arraydecay1), !dbg !166
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !167
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !168
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !169
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !169
  call void @llvm.va_end(i8* %arraydecay34), !dbg !169
  ret void, !dbg !170
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !171 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !172, metadata !DIExpression()), !dbg !173
  %0 = load i8*, i8** %data.addr, align 8, !dbg !174
  %1 = load i8*, i8** %data.addr, align 8, !dbg !175
  call void (i8*, ...) @goodB2GVaSink(i8* %0, i8* %1), !dbg !176
  ret void, !dbg !177
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !178 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !181, metadata !DIExpression()), !dbg !182
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !182
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !182
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !183
  store i8* %arraydecay, i8** %data, align 8, !dbg !184
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !185, metadata !DIExpression()), !dbg !187
  %1 = load i8*, i8** %data, align 8, !dbg !188
  %call = call i64 @strlen(i8* %1) #8, !dbg !189
  store i64 %call, i64* %dataLen, align 8, !dbg !187
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !190, metadata !DIExpression()), !dbg !191
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #9, !dbg !192
  store i8* %call1, i8** %environment, align 8, !dbg !191
  %2 = load i8*, i8** %environment, align 8, !dbg !193
  %cmp = icmp ne i8* %2, null, !dbg !195
  br i1 %cmp, label %if.then, label %if.end, !dbg !196

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !197
  %4 = load i64, i64* %dataLen, align 8, !dbg !199
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !200
  %5 = load i8*, i8** %environment, align 8, !dbg !201
  %6 = load i64, i64* %dataLen, align 8, !dbg !202
  %sub = sub i64 100, %6, !dbg !203
  %sub2 = sub i64 %sub, 1, !dbg !204
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #9, !dbg !205
  br label %if.end, !dbg !206

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !207
  call void @goodB2GSink(i8* %7), !dbg !208
  ret void, !dbg !209
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_41_good() #0 !dbg !210 {
entry:
  call void @goodG2B(), !dbg !211
  call void @goodB2G(), !dbg !212
  ret void, !dbg !213
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !214 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !215, metadata !DIExpression()), !dbg !216
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !217
  %0 = load i8*, i8** %line.addr, align 8, !dbg !218
  %cmp = icmp ne i8* %0, null, !dbg !220
  br i1 %cmp, label %if.then, label %if.end, !dbg !221

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !222
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !224
  br label %if.end, !dbg !225

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !226
  ret void, !dbg !227
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !228 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !229, metadata !DIExpression()), !dbg !230
  %0 = load i8*, i8** %line.addr, align 8, !dbg !231
  %cmp = icmp ne i8* %0, null, !dbg !233
  br i1 %cmp, label %if.then, label %if.end, !dbg !234

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !235
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !237
  br label %if.end, !dbg !238

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !239
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !240 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load i32*, i32** %line.addr, align 8, !dbg !247
  %cmp = icmp ne i32* %0, null, !dbg !249
  br i1 %cmp, label %if.then, label %if.end, !dbg !250

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !251
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !253
  br label %if.end, !dbg !254

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !255
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !256 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !259, metadata !DIExpression()), !dbg !260
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !261
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !262
  ret void, !dbg !263
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !264 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !268, metadata !DIExpression()), !dbg !269
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !270
  %conv = sext i16 %0 to i32, !dbg !270
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !271
  ret void, !dbg !272
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !273 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !277, metadata !DIExpression()), !dbg !278
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !279
  %conv = fpext float %0 to double, !dbg !279
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !280
  ret void, !dbg !281
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !282 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !286, metadata !DIExpression()), !dbg !287
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !288
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !289
  ret void, !dbg !290
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !291 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !298, metadata !DIExpression()), !dbg !299
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !300
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !301
  ret void, !dbg !302
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !303 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !306, metadata !DIExpression()), !dbg !307
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !308
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !309
  ret void, !dbg !310
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !311 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !314, metadata !DIExpression()), !dbg !315
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !316
  %conv = sext i8 %0 to i32, !dbg !316
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !317
  ret void, !dbg !318
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !319 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !322, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !324, metadata !DIExpression()), !dbg !328
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !329
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !330
  store i32 %0, i32* %arrayidx, align 4, !dbg !331
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !332
  store i32 0, i32* %arrayidx1, align 4, !dbg !333
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !334
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !335
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !337 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !340, metadata !DIExpression()), !dbg !341
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !342
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !343
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !345 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !348, metadata !DIExpression()), !dbg !349
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !350
  %conv = zext i8 %0 to i32, !dbg !350
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !351
  ret void, !dbg !352
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !353 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !357, metadata !DIExpression()), !dbg !358
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !359
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !360
  ret void, !dbg !361
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !362 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !374
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !375
  %1 = load i32, i32* %intOne, align 4, !dbg !375
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !376
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !377
  %3 = load i32, i32* %intTwo, align 4, !dbg !377
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !378
  ret void, !dbg !379
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !380 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !384, metadata !DIExpression()), !dbg !385
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !386, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.declare(metadata i64* %i, metadata !388, metadata !DIExpression()), !dbg !389
  store i64 0, i64* %i, align 8, !dbg !390
  br label %for.cond, !dbg !392

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !393
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !395
  %cmp = icmp ult i64 %0, %1, !dbg !396
  br i1 %cmp, label %for.body, label %for.end, !dbg !397

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !398
  %3 = load i64, i64* %i, align 8, !dbg !400
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !398
  %4 = load i8, i8* %arrayidx, align 1, !dbg !398
  %conv = zext i8 %4 to i32, !dbg !398
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !401
  br label %for.inc, !dbg !402

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !403
  %inc = add i64 %5, 1, !dbg !403
  store i64 %inc, i64* %i, align 8, !dbg !403
  br label %for.cond, !dbg !404, !llvm.loop !405

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !408
  ret void, !dbg !409
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !410 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !413, metadata !DIExpression()), !dbg !414
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !415, metadata !DIExpression()), !dbg !416
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !417, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !419, metadata !DIExpression()), !dbg !420
  store i64 0, i64* %numWritten, align 8, !dbg !420
  br label %while.cond, !dbg !421

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !422
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !423
  %cmp = icmp ult i64 %0, %1, !dbg !424
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !425

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #10, !dbg !426
  %2 = load i16*, i16** %call, align 8, !dbg !426
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !426
  %4 = load i64, i64* %numWritten, align 8, !dbg !426
  %mul = mul i64 2, %4, !dbg !426
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !426
  %5 = load i8, i8* %arrayidx, align 1, !dbg !426
  %conv = sext i8 %5 to i32, !dbg !426
  %idxprom = sext i32 %conv to i64, !dbg !426
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !426
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !426
  %conv2 = zext i16 %6 to i32, !dbg !426
  %and = and i32 %conv2, 4096, !dbg !426
  %tobool = icmp ne i32 %and, 0, !dbg !426
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !427

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #10, !dbg !428
  %7 = load i16*, i16** %call3, align 8, !dbg !428
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !428
  %9 = load i64, i64* %numWritten, align 8, !dbg !428
  %mul4 = mul i64 2, %9, !dbg !428
  %add = add i64 %mul4, 1, !dbg !428
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !428
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !428
  %conv6 = sext i8 %10 to i32, !dbg !428
  %idxprom7 = sext i32 %conv6 to i64, !dbg !428
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !428
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !428
  %conv9 = zext i16 %11 to i32, !dbg !428
  %and10 = and i32 %conv9, 4096, !dbg !428
  %tobool11 = icmp ne i32 %and10, 0, !dbg !427
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !429
  br i1 %12, label %while.body, label %while.end, !dbg !421

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !430, metadata !DIExpression()), !dbg !432
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !433
  %14 = load i64, i64* %numWritten, align 8, !dbg !434
  %mul12 = mul i64 2, %14, !dbg !435
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !433
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !436
  %15 = load i32, i32* %byte, align 4, !dbg !437
  %conv15 = trunc i32 %15 to i8, !dbg !438
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !439
  %17 = load i64, i64* %numWritten, align 8, !dbg !440
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !439
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !441
  %18 = load i64, i64* %numWritten, align 8, !dbg !442
  %inc = add i64 %18, 1, !dbg !442
  store i64 %inc, i64* %numWritten, align 8, !dbg !442
  br label %while.cond, !dbg !421, !llvm.loop !443

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !445
  ret i64 %19, !dbg !446
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !447 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !450, metadata !DIExpression()), !dbg !451
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !452, metadata !DIExpression()), !dbg !453
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !454, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !456, metadata !DIExpression()), !dbg !457
  store i64 0, i64* %numWritten, align 8, !dbg !457
  br label %while.cond, !dbg !458

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !459
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !460
  %cmp = icmp ult i64 %0, %1, !dbg !461
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !462

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !463
  %3 = load i64, i64* %numWritten, align 8, !dbg !464
  %mul = mul i64 2, %3, !dbg !465
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !463
  %4 = load i32, i32* %arrayidx, align 4, !dbg !463
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !466
  %tobool = icmp ne i32 %call, 0, !dbg !466
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !467

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !468
  %6 = load i64, i64* %numWritten, align 8, !dbg !469
  %mul1 = mul i64 2, %6, !dbg !470
  %add = add i64 %mul1, 1, !dbg !471
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !468
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !468
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !472
  %tobool4 = icmp ne i32 %call3, 0, !dbg !467
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !473
  br i1 %8, label %while.body, label %while.end, !dbg !458

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !474, metadata !DIExpression()), !dbg !476
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !477
  %10 = load i64, i64* %numWritten, align 8, !dbg !478
  %mul5 = mul i64 2, %10, !dbg !479
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !477
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !480
  %11 = load i32, i32* %byte, align 4, !dbg !481
  %conv = trunc i32 %11 to i8, !dbg !482
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !483
  %13 = load i64, i64* %numWritten, align 8, !dbg !484
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !483
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !485
  %14 = load i64, i64* %numWritten, align 8, !dbg !486
  %inc = add i64 %14, 1, !dbg !486
  store i64 %inc, i64* %numWritten, align 8, !dbg !486
  br label %while.cond, !dbg !458, !llvm.loop !487

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !489
  ret i64 %15, !dbg !490
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !491 {
entry:
  ret i32 1, !dbg !494
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !495 {
entry:
  ret i32 0, !dbg !496
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !497 {
entry:
  %call = call i32 @rand() #9, !dbg !498
  %rem = srem i32 %call, 2, !dbg !499
  ret i32 %rem, !dbg !500
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !501 {
entry:
  ret void, !dbg !502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !503 {
entry:
  ret void, !dbg !504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !505 {
entry:
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !507 {
entry:
  ret void, !dbg !508
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !509 {
entry:
  ret void, !dbg !510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !511 {
entry:
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !513 {
entry:
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !515 {
entry:
  ret void, !dbg !516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !517 {
entry:
  ret void, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !519 {
entry:
  ret void, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !521 {
entry:
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !523 {
entry:
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !525 {
entry:
  ret void, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !527 {
entry:
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !529 {
entry:
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !531 {
entry:
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !533 {
entry:
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !535 {
entry:
  ret void, !dbg !536
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_890/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_41.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_890/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "badVaSink", scope: !45, file: !45, line: 36, type: !53, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !42, null}
!55 = !DILocalVariable(name: "data", arg: 1, scope: !52, file: !45, line: 36, type: !42)
!56 = !DILocation(line: 36, column: 23, scope: !52)
!57 = !DILocalVariable(name: "args", scope: !58, file: !45, line: 39, type: !59)
!58 = distinct !DILexicalBlock(scope: !52, file: !45, line: 38, column: 5)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !60, line: 52, baseType: !61)
!60 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !62, line: 32, baseType: !63)
!62 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !45, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 192, elements: !71)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !66)
!66 = !{!67, !68, !69, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !65, file: !45, line: 39, baseType: !7, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !65, file: !45, line: 39, baseType: !7, size: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !65, file: !45, line: 39, baseType: !22, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !65, file: !45, line: 39, baseType: !22, size: 64, offset: 128)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DILocation(line: 39, column: 17, scope: !58)
!74 = !DILocation(line: 40, column: 9, scope: !58)
!75 = !DILocation(line: 42, column: 17, scope: !58)
!76 = !DILocation(line: 42, column: 23, scope: !58)
!77 = !DILocation(line: 42, column: 9, scope: !58)
!78 = !DILocation(line: 43, column: 9, scope: !58)
!79 = !DILocation(line: 45, column: 1, scope: !52)
!80 = distinct !DISubprogram(name: "badSink", scope: !45, file: !45, line: 47, type: !81, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !42}
!83 = !DILocalVariable(name: "data", arg: 1, scope: !80, file: !45, line: 47, type: !42)
!84 = !DILocation(line: 47, column: 21, scope: !80)
!85 = !DILocation(line: 49, column: 15, scope: !80)
!86 = !DILocation(line: 49, column: 21, scope: !80)
!87 = !DILocation(line: 49, column: 5, scope: !80)
!88 = !DILocation(line: 50, column: 1, scope: !80)
!89 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_41_bad", scope: !45, file: !45, line: 52, type: !90, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!90 = !DISubroutineType(types: !91)
!91 = !{null}
!92 = !DILocalVariable(name: "data", scope: !89, file: !45, line: 54, type: !42)
!93 = !DILocation(line: 54, column: 12, scope: !89)
!94 = !DILocalVariable(name: "dataBuffer", scope: !89, file: !45, line: 55, type: !95)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 100)
!98 = !DILocation(line: 55, column: 10, scope: !89)
!99 = !DILocation(line: 56, column: 12, scope: !89)
!100 = !DILocation(line: 56, column: 10, scope: !89)
!101 = !DILocalVariable(name: "dataLen", scope: !102, file: !45, line: 59, type: !103)
!102 = distinct !DILexicalBlock(scope: !89, file: !45, line: 57, column: 5)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 46, baseType: !105)
!104 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!105 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!106 = !DILocation(line: 59, column: 16, scope: !102)
!107 = !DILocation(line: 59, column: 33, scope: !102)
!108 = !DILocation(line: 59, column: 26, scope: !102)
!109 = !DILocalVariable(name: "environment", scope: !102, file: !45, line: 60, type: !42)
!110 = !DILocation(line: 60, column: 16, scope: !102)
!111 = !DILocation(line: 60, column: 30, scope: !102)
!112 = !DILocation(line: 62, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !102, file: !45, line: 62, column: 13)
!114 = !DILocation(line: 62, column: 25, scope: !113)
!115 = !DILocation(line: 62, column: 13, scope: !102)
!116 = !DILocation(line: 65, column: 21, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !45, line: 63, column: 9)
!118 = !DILocation(line: 65, column: 26, scope: !117)
!119 = !DILocation(line: 65, column: 25, scope: !117)
!120 = !DILocation(line: 65, column: 35, scope: !117)
!121 = !DILocation(line: 65, column: 52, scope: !117)
!122 = !DILocation(line: 65, column: 51, scope: !117)
!123 = !DILocation(line: 65, column: 59, scope: !117)
!124 = !DILocation(line: 65, column: 13, scope: !117)
!125 = !DILocation(line: 66, column: 9, scope: !117)
!126 = !DILocation(line: 68, column: 13, scope: !89)
!127 = !DILocation(line: 68, column: 5, scope: !89)
!128 = !DILocation(line: 69, column: 1, scope: !89)
!129 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !45, file: !45, line: 76, type: !53, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!130 = !DILocalVariable(name: "data", arg: 1, scope: !129, file: !45, line: 76, type: !42)
!131 = !DILocation(line: 76, column: 27, scope: !129)
!132 = !DILocalVariable(name: "args", scope: !133, file: !45, line: 79, type: !59)
!133 = distinct !DILexicalBlock(scope: !129, file: !45, line: 78, column: 5)
!134 = !DILocation(line: 79, column: 17, scope: !133)
!135 = !DILocation(line: 80, column: 9, scope: !133)
!136 = !DILocation(line: 82, column: 17, scope: !133)
!137 = !DILocation(line: 82, column: 23, scope: !133)
!138 = !DILocation(line: 82, column: 9, scope: !133)
!139 = !DILocation(line: 83, column: 9, scope: !133)
!140 = !DILocation(line: 85, column: 1, scope: !129)
!141 = distinct !DISubprogram(name: "goodG2BSink", scope: !45, file: !45, line: 87, type: !81, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!142 = !DILocalVariable(name: "data", arg: 1, scope: !141, file: !45, line: 87, type: !42)
!143 = !DILocation(line: 87, column: 25, scope: !141)
!144 = !DILocation(line: 89, column: 19, scope: !141)
!145 = !DILocation(line: 89, column: 25, scope: !141)
!146 = !DILocation(line: 89, column: 5, scope: !141)
!147 = !DILocation(line: 90, column: 1, scope: !141)
!148 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 92, type: !90, scopeLine: 93, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!149 = !DILocalVariable(name: "data", scope: !148, file: !45, line: 94, type: !42)
!150 = !DILocation(line: 94, column: 12, scope: !148)
!151 = !DILocalVariable(name: "dataBuffer", scope: !148, file: !45, line: 95, type: !95)
!152 = !DILocation(line: 95, column: 10, scope: !148)
!153 = !DILocation(line: 96, column: 12, scope: !148)
!154 = !DILocation(line: 96, column: 10, scope: !148)
!155 = !DILocation(line: 98, column: 12, scope: !148)
!156 = !DILocation(line: 98, column: 5, scope: !148)
!157 = !DILocation(line: 99, column: 17, scope: !148)
!158 = !DILocation(line: 99, column: 5, scope: !148)
!159 = !DILocation(line: 100, column: 1, scope: !148)
!160 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !45, file: !45, line: 103, type: !53, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!161 = !DILocalVariable(name: "data", arg: 1, scope: !160, file: !45, line: 103, type: !42)
!162 = !DILocation(line: 103, column: 27, scope: !160)
!163 = !DILocalVariable(name: "args", scope: !164, file: !45, line: 106, type: !59)
!164 = distinct !DILexicalBlock(scope: !160, file: !45, line: 105, column: 5)
!165 = !DILocation(line: 106, column: 17, scope: !164)
!166 = !DILocation(line: 107, column: 9, scope: !164)
!167 = !DILocation(line: 109, column: 23, scope: !164)
!168 = !DILocation(line: 109, column: 9, scope: !164)
!169 = !DILocation(line: 110, column: 9, scope: !164)
!170 = !DILocation(line: 112, column: 1, scope: !160)
!171 = distinct !DISubprogram(name: "goodB2GSink", scope: !45, file: !45, line: 114, type: !81, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!172 = !DILocalVariable(name: "data", arg: 1, scope: !171, file: !45, line: 114, type: !42)
!173 = !DILocation(line: 114, column: 25, scope: !171)
!174 = !DILocation(line: 116, column: 19, scope: !171)
!175 = !DILocation(line: 116, column: 25, scope: !171)
!176 = !DILocation(line: 116, column: 5, scope: !171)
!177 = !DILocation(line: 117, column: 1, scope: !171)
!178 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 119, type: !90, scopeLine: 120, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!179 = !DILocalVariable(name: "data", scope: !178, file: !45, line: 121, type: !42)
!180 = !DILocation(line: 121, column: 12, scope: !178)
!181 = !DILocalVariable(name: "dataBuffer", scope: !178, file: !45, line: 122, type: !95)
!182 = !DILocation(line: 122, column: 10, scope: !178)
!183 = !DILocation(line: 123, column: 12, scope: !178)
!184 = !DILocation(line: 123, column: 10, scope: !178)
!185 = !DILocalVariable(name: "dataLen", scope: !186, file: !45, line: 126, type: !103)
!186 = distinct !DILexicalBlock(scope: !178, file: !45, line: 124, column: 5)
!187 = !DILocation(line: 126, column: 16, scope: !186)
!188 = !DILocation(line: 126, column: 33, scope: !186)
!189 = !DILocation(line: 126, column: 26, scope: !186)
!190 = !DILocalVariable(name: "environment", scope: !186, file: !45, line: 127, type: !42)
!191 = !DILocation(line: 127, column: 16, scope: !186)
!192 = !DILocation(line: 127, column: 30, scope: !186)
!193 = !DILocation(line: 129, column: 13, scope: !194)
!194 = distinct !DILexicalBlock(scope: !186, file: !45, line: 129, column: 13)
!195 = !DILocation(line: 129, column: 25, scope: !194)
!196 = !DILocation(line: 129, column: 13, scope: !186)
!197 = !DILocation(line: 132, column: 21, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !45, line: 130, column: 9)
!199 = !DILocation(line: 132, column: 26, scope: !198)
!200 = !DILocation(line: 132, column: 25, scope: !198)
!201 = !DILocation(line: 132, column: 35, scope: !198)
!202 = !DILocation(line: 132, column: 52, scope: !198)
!203 = !DILocation(line: 132, column: 51, scope: !198)
!204 = !DILocation(line: 132, column: 59, scope: !198)
!205 = !DILocation(line: 132, column: 13, scope: !198)
!206 = !DILocation(line: 133, column: 9, scope: !198)
!207 = !DILocation(line: 135, column: 17, scope: !178)
!208 = !DILocation(line: 135, column: 5, scope: !178)
!209 = !DILocation(line: 136, column: 1, scope: !178)
!210 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_41_good", scope: !45, file: !45, line: 138, type: !90, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!211 = !DILocation(line: 140, column: 5, scope: !210)
!212 = !DILocation(line: 141, column: 5, scope: !210)
!213 = !DILocation(line: 142, column: 1, scope: !210)
!214 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !81, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!215 = !DILocalVariable(name: "line", arg: 1, scope: !214, file: !3, line: 11, type: !42)
!216 = !DILocation(line: 11, column: 25, scope: !214)
!217 = !DILocation(line: 13, column: 1, scope: !214)
!218 = !DILocation(line: 14, column: 8, scope: !219)
!219 = distinct !DILexicalBlock(scope: !214, file: !3, line: 14, column: 8)
!220 = !DILocation(line: 14, column: 13, scope: !219)
!221 = !DILocation(line: 14, column: 8, scope: !214)
!222 = !DILocation(line: 16, column: 24, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !3, line: 15, column: 5)
!224 = !DILocation(line: 16, column: 9, scope: !223)
!225 = !DILocation(line: 17, column: 5, scope: !223)
!226 = !DILocation(line: 18, column: 5, scope: !214)
!227 = !DILocation(line: 19, column: 1, scope: !214)
!228 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !81, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!229 = !DILocalVariable(name: "line", arg: 1, scope: !228, file: !3, line: 20, type: !42)
!230 = !DILocation(line: 20, column: 29, scope: !228)
!231 = !DILocation(line: 22, column: 8, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !3, line: 22, column: 8)
!233 = !DILocation(line: 22, column: 13, scope: !232)
!234 = !DILocation(line: 22, column: 8, scope: !228)
!235 = !DILocation(line: 24, column: 24, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !3, line: 23, column: 5)
!237 = !DILocation(line: 24, column: 9, scope: !236)
!238 = !DILocation(line: 25, column: 5, scope: !236)
!239 = !DILocation(line: 26, column: 1, scope: !228)
!240 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !241, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !243}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !104, line: 74, baseType: !23)
!245 = !DILocalVariable(name: "line", arg: 1, scope: !240, file: !3, line: 27, type: !243)
!246 = !DILocation(line: 27, column: 29, scope: !240)
!247 = !DILocation(line: 29, column: 8, scope: !248)
!248 = distinct !DILexicalBlock(scope: !240, file: !3, line: 29, column: 8)
!249 = !DILocation(line: 29, column: 13, scope: !248)
!250 = !DILocation(line: 29, column: 8, scope: !240)
!251 = !DILocation(line: 31, column: 27, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !3, line: 30, column: 5)
!253 = !DILocation(line: 31, column: 9, scope: !252)
!254 = !DILocation(line: 32, column: 5, scope: !252)
!255 = !DILocation(line: 33, column: 1, scope: !240)
!256 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !257, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !23}
!259 = !DILocalVariable(name: "intNumber", arg: 1, scope: !256, file: !3, line: 35, type: !23)
!260 = !DILocation(line: 35, column: 24, scope: !256)
!261 = !DILocation(line: 37, column: 20, scope: !256)
!262 = !DILocation(line: 37, column: 5, scope: !256)
!263 = !DILocation(line: 38, column: 1, scope: !256)
!264 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !265, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !267}
!267 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!268 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !264, file: !3, line: 40, type: !267)
!269 = !DILocation(line: 40, column: 28, scope: !264)
!270 = !DILocation(line: 42, column: 21, scope: !264)
!271 = !DILocation(line: 42, column: 5, scope: !264)
!272 = !DILocation(line: 43, column: 1, scope: !264)
!273 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !274, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !276}
!276 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!277 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !273, file: !3, line: 45, type: !276)
!278 = !DILocation(line: 45, column: 28, scope: !273)
!279 = !DILocation(line: 47, column: 20, scope: !273)
!280 = !DILocation(line: 47, column: 5, scope: !273)
!281 = !DILocation(line: 48, column: 1, scope: !273)
!282 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !283, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !285}
!285 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!286 = !DILocalVariable(name: "longNumber", arg: 1, scope: !282, file: !3, line: 50, type: !285)
!287 = !DILocation(line: 50, column: 26, scope: !282)
!288 = !DILocation(line: 52, column: 21, scope: !282)
!289 = !DILocation(line: 52, column: 5, scope: !282)
!290 = !DILocation(line: 53, column: 1, scope: !282)
!291 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !292, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !294}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !295, line: 27, baseType: !296)
!295 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !297, line: 44, baseType: !285)
!297 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!298 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !291, file: !3, line: 55, type: !294)
!299 = !DILocation(line: 55, column: 33, scope: !291)
!300 = !DILocation(line: 57, column: 29, scope: !291)
!301 = !DILocation(line: 57, column: 5, scope: !291)
!302 = !DILocation(line: 58, column: 1, scope: !291)
!303 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !304, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !103}
!306 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !303, file: !3, line: 60, type: !103)
!307 = !DILocation(line: 60, column: 29, scope: !303)
!308 = !DILocation(line: 62, column: 21, scope: !303)
!309 = !DILocation(line: 62, column: 5, scope: !303)
!310 = !DILocation(line: 63, column: 1, scope: !303)
!311 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !312, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !43}
!314 = !DILocalVariable(name: "charHex", arg: 1, scope: !311, file: !3, line: 65, type: !43)
!315 = !DILocation(line: 65, column: 29, scope: !311)
!316 = !DILocation(line: 67, column: 22, scope: !311)
!317 = !DILocation(line: 67, column: 5, scope: !311)
!318 = !DILocation(line: 68, column: 1, scope: !311)
!319 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !320, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !244}
!322 = !DILocalVariable(name: "wideChar", arg: 1, scope: !319, file: !3, line: 70, type: !244)
!323 = !DILocation(line: 70, column: 29, scope: !319)
!324 = !DILocalVariable(name: "s", scope: !319, file: !3, line: 74, type: !325)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 64, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 2)
!328 = !DILocation(line: 74, column: 13, scope: !319)
!329 = !DILocation(line: 75, column: 16, scope: !319)
!330 = !DILocation(line: 75, column: 9, scope: !319)
!331 = !DILocation(line: 75, column: 14, scope: !319)
!332 = !DILocation(line: 76, column: 9, scope: !319)
!333 = !DILocation(line: 76, column: 14, scope: !319)
!334 = !DILocation(line: 77, column: 21, scope: !319)
!335 = !DILocation(line: 77, column: 5, scope: !319)
!336 = !DILocation(line: 78, column: 1, scope: !319)
!337 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !338, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !7}
!340 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !337, file: !3, line: 80, type: !7)
!341 = !DILocation(line: 80, column: 33, scope: !337)
!342 = !DILocation(line: 82, column: 20, scope: !337)
!343 = !DILocation(line: 82, column: 5, scope: !337)
!344 = !DILocation(line: 83, column: 1, scope: !337)
!345 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !346, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !25}
!348 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !345, file: !3, line: 85, type: !25)
!349 = !DILocation(line: 85, column: 45, scope: !345)
!350 = !DILocation(line: 87, column: 22, scope: !345)
!351 = !DILocation(line: 87, column: 5, scope: !345)
!352 = !DILocation(line: 88, column: 1, scope: !345)
!353 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !354, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !356}
!356 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!357 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !353, file: !3, line: 90, type: !356)
!358 = !DILocation(line: 90, column: 29, scope: !353)
!359 = !DILocation(line: 92, column: 20, scope: !353)
!360 = !DILocation(line: 92, column: 5, scope: !353)
!361 = !DILocation(line: 93, column: 1, scope: !353)
!362 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !363, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !367, line: 100, baseType: !368)
!367 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_890/source_code")
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !367, line: 96, size: 64, elements: !369)
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !368, file: !367, line: 98, baseType: !23, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !368, file: !367, line: 99, baseType: !23, size: 32, offset: 32)
!372 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !362, file: !3, line: 95, type: !365)
!373 = !DILocation(line: 95, column: 40, scope: !362)
!374 = !DILocation(line: 97, column: 26, scope: !362)
!375 = !DILocation(line: 97, column: 47, scope: !362)
!376 = !DILocation(line: 97, column: 55, scope: !362)
!377 = !DILocation(line: 97, column: 76, scope: !362)
!378 = !DILocation(line: 97, column: 5, scope: !362)
!379 = !DILocation(line: 98, column: 1, scope: !362)
!380 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !381, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !383, !103}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!384 = !DILocalVariable(name: "bytes", arg: 1, scope: !380, file: !3, line: 100, type: !383)
!385 = !DILocation(line: 100, column: 38, scope: !380)
!386 = !DILocalVariable(name: "numBytes", arg: 2, scope: !380, file: !3, line: 100, type: !103)
!387 = !DILocation(line: 100, column: 52, scope: !380)
!388 = !DILocalVariable(name: "i", scope: !380, file: !3, line: 102, type: !103)
!389 = !DILocation(line: 102, column: 12, scope: !380)
!390 = !DILocation(line: 103, column: 12, scope: !391)
!391 = distinct !DILexicalBlock(scope: !380, file: !3, line: 103, column: 5)
!392 = !DILocation(line: 103, column: 10, scope: !391)
!393 = !DILocation(line: 103, column: 17, scope: !394)
!394 = distinct !DILexicalBlock(scope: !391, file: !3, line: 103, column: 5)
!395 = !DILocation(line: 103, column: 21, scope: !394)
!396 = !DILocation(line: 103, column: 19, scope: !394)
!397 = !DILocation(line: 103, column: 5, scope: !391)
!398 = !DILocation(line: 105, column: 24, scope: !399)
!399 = distinct !DILexicalBlock(scope: !394, file: !3, line: 104, column: 5)
!400 = !DILocation(line: 105, column: 30, scope: !399)
!401 = !DILocation(line: 105, column: 9, scope: !399)
!402 = !DILocation(line: 106, column: 5, scope: !399)
!403 = !DILocation(line: 103, column: 31, scope: !394)
!404 = !DILocation(line: 103, column: 5, scope: !394)
!405 = distinct !{!405, !397, !406, !407}
!406 = !DILocation(line: 106, column: 5, scope: !391)
!407 = !{!"llvm.loop.mustprogress"}
!408 = !DILocation(line: 107, column: 5, scope: !380)
!409 = !DILocation(line: 108, column: 1, scope: !380)
!410 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !411, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!411 = !DISubroutineType(types: !412)
!412 = !{!103, !383, !103, !42}
!413 = !DILocalVariable(name: "bytes", arg: 1, scope: !410, file: !3, line: 113, type: !383)
!414 = !DILocation(line: 113, column: 39, scope: !410)
!415 = !DILocalVariable(name: "numBytes", arg: 2, scope: !410, file: !3, line: 113, type: !103)
!416 = !DILocation(line: 113, column: 53, scope: !410)
!417 = !DILocalVariable(name: "hex", arg: 3, scope: !410, file: !3, line: 113, type: !42)
!418 = !DILocation(line: 113, column: 71, scope: !410)
!419 = !DILocalVariable(name: "numWritten", scope: !410, file: !3, line: 115, type: !103)
!420 = !DILocation(line: 115, column: 12, scope: !410)
!421 = !DILocation(line: 121, column: 5, scope: !410)
!422 = !DILocation(line: 121, column: 12, scope: !410)
!423 = !DILocation(line: 121, column: 25, scope: !410)
!424 = !DILocation(line: 121, column: 23, scope: !410)
!425 = !DILocation(line: 121, column: 34, scope: !410)
!426 = !DILocation(line: 121, column: 37, scope: !410)
!427 = !DILocation(line: 121, column: 67, scope: !410)
!428 = !DILocation(line: 121, column: 70, scope: !410)
!429 = !DILocation(line: 0, scope: !410)
!430 = !DILocalVariable(name: "byte", scope: !431, file: !3, line: 123, type: !23)
!431 = distinct !DILexicalBlock(scope: !410, file: !3, line: 122, column: 5)
!432 = !DILocation(line: 123, column: 13, scope: !431)
!433 = !DILocation(line: 124, column: 17, scope: !431)
!434 = !DILocation(line: 124, column: 25, scope: !431)
!435 = !DILocation(line: 124, column: 23, scope: !431)
!436 = !DILocation(line: 124, column: 9, scope: !431)
!437 = !DILocation(line: 125, column: 45, scope: !431)
!438 = !DILocation(line: 125, column: 29, scope: !431)
!439 = !DILocation(line: 125, column: 9, scope: !431)
!440 = !DILocation(line: 125, column: 15, scope: !431)
!441 = !DILocation(line: 125, column: 27, scope: !431)
!442 = !DILocation(line: 126, column: 9, scope: !431)
!443 = distinct !{!443, !421, !444, !407}
!444 = !DILocation(line: 127, column: 5, scope: !410)
!445 = !DILocation(line: 129, column: 12, scope: !410)
!446 = !DILocation(line: 129, column: 5, scope: !410)
!447 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !448, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!448 = !DISubroutineType(types: !449)
!449 = !{!103, !383, !103, !243}
!450 = !DILocalVariable(name: "bytes", arg: 1, scope: !447, file: !3, line: 135, type: !383)
!451 = !DILocation(line: 135, column: 41, scope: !447)
!452 = !DILocalVariable(name: "numBytes", arg: 2, scope: !447, file: !3, line: 135, type: !103)
!453 = !DILocation(line: 135, column: 55, scope: !447)
!454 = !DILocalVariable(name: "hex", arg: 3, scope: !447, file: !3, line: 135, type: !243)
!455 = !DILocation(line: 135, column: 76, scope: !447)
!456 = !DILocalVariable(name: "numWritten", scope: !447, file: !3, line: 137, type: !103)
!457 = !DILocation(line: 137, column: 12, scope: !447)
!458 = !DILocation(line: 143, column: 5, scope: !447)
!459 = !DILocation(line: 143, column: 12, scope: !447)
!460 = !DILocation(line: 143, column: 25, scope: !447)
!461 = !DILocation(line: 143, column: 23, scope: !447)
!462 = !DILocation(line: 143, column: 34, scope: !447)
!463 = !DILocation(line: 143, column: 47, scope: !447)
!464 = !DILocation(line: 143, column: 55, scope: !447)
!465 = !DILocation(line: 143, column: 53, scope: !447)
!466 = !DILocation(line: 143, column: 37, scope: !447)
!467 = !DILocation(line: 143, column: 68, scope: !447)
!468 = !DILocation(line: 143, column: 81, scope: !447)
!469 = !DILocation(line: 143, column: 89, scope: !447)
!470 = !DILocation(line: 143, column: 87, scope: !447)
!471 = !DILocation(line: 143, column: 100, scope: !447)
!472 = !DILocation(line: 143, column: 71, scope: !447)
!473 = !DILocation(line: 0, scope: !447)
!474 = !DILocalVariable(name: "byte", scope: !475, file: !3, line: 145, type: !23)
!475 = distinct !DILexicalBlock(scope: !447, file: !3, line: 144, column: 5)
!476 = !DILocation(line: 145, column: 13, scope: !475)
!477 = !DILocation(line: 146, column: 18, scope: !475)
!478 = !DILocation(line: 146, column: 26, scope: !475)
!479 = !DILocation(line: 146, column: 24, scope: !475)
!480 = !DILocation(line: 146, column: 9, scope: !475)
!481 = !DILocation(line: 147, column: 45, scope: !475)
!482 = !DILocation(line: 147, column: 29, scope: !475)
!483 = !DILocation(line: 147, column: 9, scope: !475)
!484 = !DILocation(line: 147, column: 15, scope: !475)
!485 = !DILocation(line: 147, column: 27, scope: !475)
!486 = !DILocation(line: 148, column: 9, scope: !475)
!487 = distinct !{!487, !458, !488, !407}
!488 = !DILocation(line: 149, column: 5, scope: !447)
!489 = !DILocation(line: 151, column: 12, scope: !447)
!490 = !DILocation(line: 151, column: 5, scope: !447)
!491 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !492, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!492 = !DISubroutineType(types: !493)
!493 = !{!23}
!494 = !DILocation(line: 158, column: 5, scope: !491)
!495 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !492, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!496 = !DILocation(line: 163, column: 5, scope: !495)
!497 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !492, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!498 = !DILocation(line: 168, column: 13, scope: !497)
!499 = !DILocation(line: 168, column: 20, scope: !497)
!500 = !DILocation(line: 168, column: 5, scope: !497)
!501 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !90, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!502 = !DILocation(line: 187, column: 16, scope: !501)
!503 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !90, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!504 = !DILocation(line: 188, column: 16, scope: !503)
!505 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !90, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!506 = !DILocation(line: 189, column: 16, scope: !505)
!507 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !90, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!508 = !DILocation(line: 190, column: 16, scope: !507)
!509 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !90, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!510 = !DILocation(line: 191, column: 16, scope: !509)
!511 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !90, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!512 = !DILocation(line: 192, column: 16, scope: !511)
!513 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !90, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!514 = !DILocation(line: 193, column: 16, scope: !513)
!515 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !90, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!516 = !DILocation(line: 194, column: 16, scope: !515)
!517 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !90, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!518 = !DILocation(line: 195, column: 16, scope: !517)
!519 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !90, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DILocation(line: 198, column: 15, scope: !519)
!521 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !90, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DILocation(line: 199, column: 15, scope: !521)
!523 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !90, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!524 = !DILocation(line: 200, column: 15, scope: !523)
!525 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !90, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DILocation(line: 201, column: 15, scope: !525)
!527 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !90, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!528 = !DILocation(line: 202, column: 15, scope: !527)
!529 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !90, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DILocation(line: 203, column: 15, scope: !529)
!531 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !90, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DILocation(line: 204, column: 15, scope: !531)
!533 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !90, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DILocation(line: 205, column: 15, scope: !533)
!535 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !90, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DILocation(line: 206, column: 15, scope: !535)
