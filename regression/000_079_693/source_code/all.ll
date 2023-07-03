; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_badGlobal = dso_local global i32 0, align 4, !dbg !0
@CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G1Global = dso_local global i32 0, align 4, !dbg !8
@CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G2Global = dso_local global i32 0, align 4, !dbg !11
@CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodG2BGlobal = dso_local global i32 0, align 4, !dbg !13
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.1.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !15
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !40
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !42
@globalTrue = dso_local global i32 1, align 4, !dbg !44
@globalFalse = dso_local global i32 0, align 4, !dbg !46
@globalFive = dso_local global i32 5, align 4, !dbg !48
@globalArgc = dso_local global i32 0, align 4, !dbg !50
@globalArgv = dso_local global i8** null, align 8, !dbg !52
@.str.13 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.15 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13.16 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_bad() #0 !dbg !63 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !66, metadata !DIExpression()), !dbg !67
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
  store i32 1, i32* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_badGlobal, align 4, !dbg !100
  %7 = load i8*, i8** %data, align 8, !dbg !101
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_badSink(i8* %7), !dbg !102
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
  store i32 0, i32* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G1Global, align 4, !dbg !133
  %7 = load i8*, i8** %data, align 8, !dbg !134
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G1Sink(i8* %7), !dbg !135
  ret void, !dbg !136
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !137 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !140, metadata !DIExpression()), !dbg !141
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !141
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !141
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !142
  store i8* %arraydecay, i8** %data, align 8, !dbg !143
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !144, metadata !DIExpression()), !dbg !146
  %1 = load i8*, i8** %data, align 8, !dbg !147
  %call = call i64 @strlen(i8* %1) #7, !dbg !148
  store i64 %call, i64* %dataLen, align 8, !dbg !146
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !149, metadata !DIExpression()), !dbg !150
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !151
  store i8* %call1, i8** %environment, align 8, !dbg !150
  %2 = load i8*, i8** %environment, align 8, !dbg !152
  %cmp = icmp ne i8* %2, null, !dbg !154
  br i1 %cmp, label %if.then, label %if.end, !dbg !155

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !156
  %4 = load i64, i64* %dataLen, align 8, !dbg !158
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !159
  %5 = load i8*, i8** %environment, align 8, !dbg !160
  %6 = load i64, i64* %dataLen, align 8, !dbg !161
  %sub = sub i64 100, %6, !dbg !162
  %sub2 = sub i64 %sub, 1, !dbg !163
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !164
  br label %if.end, !dbg !165

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G2Global, align 4, !dbg !166
  %7 = load i8*, i8** %data, align 8, !dbg !167
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G2Sink(i8* %7), !dbg !168
  ret void, !dbg !169
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !170 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !173, metadata !DIExpression()), !dbg !174
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !174
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !174
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !175
  store i8* %arraydecay, i8** %data, align 8, !dbg !176
  %1 = load i8*, i8** %data, align 8, !dbg !177
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !178
  store i32 1, i32* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodG2BGlobal, align 4, !dbg !179
  %2 = load i8*, i8** %data, align 8, !dbg !180
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodG2BSink(i8* %2), !dbg !181
  ret void, !dbg !182
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_good() #0 !dbg !183 {
entry:
  call void @goodB2G1(), !dbg !184
  call void @goodB2G2(), !dbg !185
  call void @goodG2B(), !dbg !186
  ret void, !dbg !187
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_badSink(i8* %data) #0 !dbg !188 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !191, metadata !DIExpression()), !dbg !192
  %0 = load i32, i32* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_badGlobal, align 4, !dbg !193
  %tobool = icmp ne i32 %0, 0, !dbg !193
  br i1 %tobool, label %if.then, label %if.end, !dbg !195

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !196
  %2 = load i8*, i8** %data.addr, align 8, !dbg !198
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !199
  br label %if.end, !dbg !200

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !201
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G1Sink(i8* %data) #0 !dbg !202 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !203, metadata !DIExpression()), !dbg !204
  %0 = load i32, i32* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G1Global, align 4, !dbg !205
  %tobool = icmp ne i32 %0, 0, !dbg !205
  br i1 %tobool, label %if.then, label %if.else, !dbg !207

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0)), !dbg !208
  br label %if.end, !dbg !210

if.else:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !211
  %2 = load i8*, i8** %data.addr, align 8, !dbg !213
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %2), !dbg !214
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !215
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G2Sink(i8* %data) #0 !dbg !216 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !217, metadata !DIExpression()), !dbg !218
  %0 = load i32, i32* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G2Global, align 4, !dbg !219
  %tobool = icmp ne i32 %0, 0, !dbg !219
  br i1 %tobool, label %if.then, label %if.end, !dbg !221

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !222
  %2 = load i8*, i8** %data.addr, align 8, !dbg !224
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %2), !dbg !225
  br label %if.end, !dbg !226

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !227
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodG2BSink(i8* %data) #0 !dbg !228 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !229, metadata !DIExpression()), !dbg !230
  %0 = load i32, i32* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodG2BGlobal, align 4, !dbg !231
  %tobool = icmp ne i32 %0, 0, !dbg !231
  br i1 %tobool, label %if.then, label %if.end, !dbg !233

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !234
  %2 = load i8*, i8** %data.addr, align 8, !dbg !236
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !237
  br label %if.end, !dbg !238

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !239
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !240 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !241, metadata !DIExpression()), !dbg !242
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)), !dbg !243
  %0 = load i8*, i8** %line.addr, align 8, !dbg !244
  %cmp = icmp ne i8* %0, null, !dbg !246
  br i1 %cmp, label %if.then, label %if.end, !dbg !247

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !248
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.14, i64 0, i64 0), i8* %1), !dbg !250
  br label %if.end, !dbg !251

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !252
  ret void, !dbg !253
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !254 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !255, metadata !DIExpression()), !dbg !256
  %0 = load i8*, i8** %line.addr, align 8, !dbg !257
  %cmp = icmp ne i8* %0, null, !dbg !259
  br i1 %cmp, label %if.then, label %if.end, !dbg !260

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !261
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.14, i64 0, i64 0), i8* %1), !dbg !263
  br label %if.end, !dbg !264

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !265
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !266 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !271, metadata !DIExpression()), !dbg !272
  %0 = load i32*, i32** %line.addr, align 8, !dbg !273
  %cmp = icmp ne i32* %0, null, !dbg !275
  br i1 %cmp, label %if.then, label %if.end, !dbg !276

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !277
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !279
  br label %if.end, !dbg !280

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !281
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !282 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !285, metadata !DIExpression()), !dbg !286
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !287
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !288
  ret void, !dbg !289
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !290 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !294, metadata !DIExpression()), !dbg !295
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !296
  %conv = sext i16 %0 to i32, !dbg !296
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.15, i64 0, i64 0), i32 %conv), !dbg !297
  ret void, !dbg !298
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !299 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !303, metadata !DIExpression()), !dbg !304
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !305
  %conv = fpext float %0 to double, !dbg !305
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !306
  ret void, !dbg !307
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !308 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !312, metadata !DIExpression()), !dbg !313
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !314
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !315
  ret void, !dbg !316
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !317 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !324, metadata !DIExpression()), !dbg !325
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !326
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !327
  ret void, !dbg !328
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !329 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !332, metadata !DIExpression()), !dbg !333
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !334
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !335
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !337 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !340, metadata !DIExpression()), !dbg !341
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !342
  %conv = sext i8 %0 to i32, !dbg !342
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !343
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !345 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !348, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !350, metadata !DIExpression()), !dbg !354
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !355
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !356
  store i32 %0, i32* %arrayidx, align 4, !dbg !357
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !358
  store i32 0, i32* %arrayidx1, align 4, !dbg !359
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !360
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !361
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !363 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !366, metadata !DIExpression()), !dbg !367
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !368
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !369
  ret void, !dbg !370
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !371 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !374, metadata !DIExpression()), !dbg !375
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !376
  %conv = zext i8 %0 to i32, !dbg !376
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !377
  ret void, !dbg !378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !379 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !386
  ret void, !dbg !387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !388 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !400
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !401
  %1 = load i32, i32* %intOne, align 4, !dbg !401
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !402
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !403
  %3 = load i32, i32* %intTwo, align 4, !dbg !403
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13.16, i64 0, i64 0), i32 %1, i32 %3), !dbg !404
  ret void, !dbg !405
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !406 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !410, metadata !DIExpression()), !dbg !411
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !412, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.declare(metadata i64* %i, metadata !414, metadata !DIExpression()), !dbg !415
  store i64 0, i64* %i, align 8, !dbg !416
  br label %for.cond, !dbg !418

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !419
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !421
  %cmp = icmp ult i64 %0, %1, !dbg !422
  br i1 %cmp, label %for.body, label %for.end, !dbg !423

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !424
  %3 = load i64, i64* %i, align 8, !dbg !426
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !424
  %4 = load i8, i8* %arrayidx, align 1, !dbg !424
  %conv = zext i8 %4 to i32, !dbg !424
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !427
  br label %for.inc, !dbg !428

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !429
  %inc = add i64 %5, 1, !dbg !429
  store i64 %inc, i64* %i, align 8, !dbg !429
  br label %for.cond, !dbg !430, !llvm.loop !431

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !434
  ret void, !dbg !435
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !436 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !439, metadata !DIExpression()), !dbg !440
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !441, metadata !DIExpression()), !dbg !442
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !443, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !445, metadata !DIExpression()), !dbg !446
  store i64 0, i64* %numWritten, align 8, !dbg !446
  br label %while.cond, !dbg !447

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !448
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !449
  %cmp = icmp ult i64 %0, %1, !dbg !450
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !451

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !452
  %2 = load i16*, i16** %call, align 8, !dbg !452
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !452
  %4 = load i64, i64* %numWritten, align 8, !dbg !452
  %mul = mul i64 2, %4, !dbg !452
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !452
  %5 = load i8, i8* %arrayidx, align 1, !dbg !452
  %conv = sext i8 %5 to i32, !dbg !452
  %idxprom = sext i32 %conv to i64, !dbg !452
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !452
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !452
  %conv2 = zext i16 %6 to i32, !dbg !452
  %and = and i32 %conv2, 4096, !dbg !452
  %tobool = icmp ne i32 %and, 0, !dbg !452
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !453

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !454
  %7 = load i16*, i16** %call3, align 8, !dbg !454
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !454
  %9 = load i64, i64* %numWritten, align 8, !dbg !454
  %mul4 = mul i64 2, %9, !dbg !454
  %add = add i64 %mul4, 1, !dbg !454
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !454
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !454
  %conv6 = sext i8 %10 to i32, !dbg !454
  %idxprom7 = sext i32 %conv6 to i64, !dbg !454
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !454
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !454
  %conv9 = zext i16 %11 to i32, !dbg !454
  %and10 = and i32 %conv9, 4096, !dbg !454
  %tobool11 = icmp ne i32 %and10, 0, !dbg !453
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !455
  br i1 %12, label %while.body, label %while.end, !dbg !447

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !456, metadata !DIExpression()), !dbg !458
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !459
  %14 = load i64, i64* %numWritten, align 8, !dbg !460
  %mul12 = mul i64 2, %14, !dbg !461
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !459
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !462
  %15 = load i32, i32* %byte, align 4, !dbg !463
  %conv15 = trunc i32 %15 to i8, !dbg !464
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !465
  %17 = load i64, i64* %numWritten, align 8, !dbg !466
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !465
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !467
  %18 = load i64, i64* %numWritten, align 8, !dbg !468
  %inc = add i64 %18, 1, !dbg !468
  store i64 %inc, i64* %numWritten, align 8, !dbg !468
  br label %while.cond, !dbg !447, !llvm.loop !469

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !471
  ret i64 %19, !dbg !472
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !473 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !476, metadata !DIExpression()), !dbg !477
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !478, metadata !DIExpression()), !dbg !479
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !480, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !482, metadata !DIExpression()), !dbg !483
  store i64 0, i64* %numWritten, align 8, !dbg !483
  br label %while.cond, !dbg !484

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !485
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !486
  %cmp = icmp ult i64 %0, %1, !dbg !487
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !488

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !489
  %3 = load i64, i64* %numWritten, align 8, !dbg !490
  %mul = mul i64 2, %3, !dbg !491
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !489
  %4 = load i32, i32* %arrayidx, align 4, !dbg !489
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !492
  %tobool = icmp ne i32 %call, 0, !dbg !492
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !493

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !494
  %6 = load i64, i64* %numWritten, align 8, !dbg !495
  %mul1 = mul i64 2, %6, !dbg !496
  %add = add i64 %mul1, 1, !dbg !497
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !494
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !494
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !498
  %tobool4 = icmp ne i32 %call3, 0, !dbg !493
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !499
  br i1 %8, label %while.body, label %while.end, !dbg !484

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !500, metadata !DIExpression()), !dbg !502
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !503
  %10 = load i64, i64* %numWritten, align 8, !dbg !504
  %mul5 = mul i64 2, %10, !dbg !505
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !503
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !506
  %11 = load i32, i32* %byte, align 4, !dbg !507
  %conv = trunc i32 %11 to i8, !dbg !508
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !509
  %13 = load i64, i64* %numWritten, align 8, !dbg !510
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !509
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !511
  %14 = load i64, i64* %numWritten, align 8, !dbg !512
  %inc = add i64 %14, 1, !dbg !512
  store i64 %inc, i64* %numWritten, align 8, !dbg !512
  br label %while.cond, !dbg !484, !llvm.loop !513

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !515
  ret i64 %15, !dbg !516
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !517 {
entry:
  ret i32 1, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !521 {
entry:
  ret i32 0, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !523 {
entry:
  %call = call i32 @rand() #8, !dbg !524
  %rem = srem i32 %call, 2, !dbg !525
  ret i32 %rem, !dbg !526
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !527 {
entry:
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !529 {
entry:
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !531 {
entry:
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !533 {
entry:
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !535 {
entry:
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !537 {
entry:
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !539 {
entry:
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !541 {
entry:
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !543 {
entry:
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !545 {
entry:
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !547 {
entry:
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !549 {
entry:
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !551 {
entry:
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !553 {
entry:
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !555 {
entry:
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !557 {
entry:
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !559 {
entry:
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !561 {
entry:
  ret void, !dbg !562
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

!llvm.dbg.cu = !{!2, !57, !17}
!llvm.ident = !{!59, !59, !59}
!llvm.module.flags = !{!60, !61, !62}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_badGlobal", scope: !2, file: !3, line: 36, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_22a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_693/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8, !11, !13}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G1Global", scope: !2, file: !3, line: 64, type: !10, isLocal: false, isDefinition: true)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G2Global", scope: !2, file: !3, line: 65, type: !10, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodG2BGlobal", scope: !2, file: !3, line: 66, type: !10, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !10, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_693/source_code")
!19 = !{!20}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 46, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!24 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!32 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!34 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!35 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!36 = !{!6, !10, !37, !38}
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!15, !40, !42, !44, !46, !48, !50, !52}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !17, file: !18, line: 175, type: !10, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !17, file: !18, line: 176, type: !10, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalTrue", scope: !17, file: !18, line: 181, type: !10, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalFalse", scope: !17, file: !18, line: 182, type: !10, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "globalFive", scope: !17, file: !18, line: 183, type: !10, isLocal: false, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "globalArgc", scope: !17, file: !18, line: 214, type: !10, isLocal: false, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "globalArgv", scope: !17, file: !18, line: 215, type: !54, isLocal: false, isDefinition: true)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!58 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_22b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_693/source_code")
!59 = !{!"clang version 12.0.0"}
!60 = !{i32 7, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_bad", scope: !3, file: !3, line: 39, type: !64, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!64 = !DISubroutineType(types: !65)
!65 = !{null}
!66 = !DILocalVariable(name: "data", scope: !63, file: !3, line: 41, type: !55)
!67 = !DILocation(line: 41, column: 12, scope: !63)
!68 = !DILocalVariable(name: "dataBuffer", scope: !63, file: !3, line: 42, type: !69)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 100)
!72 = !DILocation(line: 42, column: 10, scope: !63)
!73 = !DILocation(line: 43, column: 12, scope: !63)
!74 = !DILocation(line: 43, column: 10, scope: !63)
!75 = !DILocalVariable(name: "dataLen", scope: !76, file: !3, line: 46, type: !77)
!76 = distinct !DILexicalBlock(scope: !63, file: !3, line: 44, column: 5)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 46, baseType: !79)
!78 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!79 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !DILocation(line: 46, column: 16, scope: !76)
!81 = !DILocation(line: 46, column: 33, scope: !76)
!82 = !DILocation(line: 46, column: 26, scope: !76)
!83 = !DILocalVariable(name: "environment", scope: !76, file: !3, line: 47, type: !55)
!84 = !DILocation(line: 47, column: 16, scope: !76)
!85 = !DILocation(line: 47, column: 30, scope: !76)
!86 = !DILocation(line: 49, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !76, file: !3, line: 49, column: 13)
!88 = !DILocation(line: 49, column: 25, scope: !87)
!89 = !DILocation(line: 49, column: 13, scope: !76)
!90 = !DILocation(line: 52, column: 21, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !3, line: 50, column: 9)
!92 = !DILocation(line: 52, column: 26, scope: !91)
!93 = !DILocation(line: 52, column: 25, scope: !91)
!94 = !DILocation(line: 52, column: 35, scope: !91)
!95 = !DILocation(line: 52, column: 52, scope: !91)
!96 = !DILocation(line: 52, column: 51, scope: !91)
!97 = !DILocation(line: 52, column: 59, scope: !91)
!98 = !DILocation(line: 52, column: 13, scope: !91)
!99 = !DILocation(line: 53, column: 9, scope: !91)
!100 = !DILocation(line: 55, column: 78, scope: !63)
!101 = !DILocation(line: 56, column: 76, scope: !63)
!102 = !DILocation(line: 56, column: 5, scope: !63)
!103 = !DILocation(line: 57, column: 1, scope: !63)
!104 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 70, type: !64, scopeLine: 71, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!105 = !DILocalVariable(name: "data", scope: !104, file: !3, line: 72, type: !55)
!106 = !DILocation(line: 72, column: 12, scope: !104)
!107 = !DILocalVariable(name: "dataBuffer", scope: !104, file: !3, line: 73, type: !69)
!108 = !DILocation(line: 73, column: 10, scope: !104)
!109 = !DILocation(line: 74, column: 12, scope: !104)
!110 = !DILocation(line: 74, column: 10, scope: !104)
!111 = !DILocalVariable(name: "dataLen", scope: !112, file: !3, line: 77, type: !77)
!112 = distinct !DILexicalBlock(scope: !104, file: !3, line: 75, column: 5)
!113 = !DILocation(line: 77, column: 16, scope: !112)
!114 = !DILocation(line: 77, column: 33, scope: !112)
!115 = !DILocation(line: 77, column: 26, scope: !112)
!116 = !DILocalVariable(name: "environment", scope: !112, file: !3, line: 78, type: !55)
!117 = !DILocation(line: 78, column: 16, scope: !112)
!118 = !DILocation(line: 78, column: 30, scope: !112)
!119 = !DILocation(line: 80, column: 13, scope: !120)
!120 = distinct !DILexicalBlock(scope: !112, file: !3, line: 80, column: 13)
!121 = !DILocation(line: 80, column: 25, scope: !120)
!122 = !DILocation(line: 80, column: 13, scope: !112)
!123 = !DILocation(line: 83, column: 21, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !3, line: 81, column: 9)
!125 = !DILocation(line: 83, column: 26, scope: !124)
!126 = !DILocation(line: 83, column: 25, scope: !124)
!127 = !DILocation(line: 83, column: 35, scope: !124)
!128 = !DILocation(line: 83, column: 52, scope: !124)
!129 = !DILocation(line: 83, column: 51, scope: !124)
!130 = !DILocation(line: 83, column: 59, scope: !124)
!131 = !DILocation(line: 83, column: 13, scope: !124)
!132 = !DILocation(line: 84, column: 9, scope: !124)
!133 = !DILocation(line: 86, column: 83, scope: !104)
!134 = !DILocation(line: 87, column: 81, scope: !104)
!135 = !DILocation(line: 87, column: 5, scope: !104)
!136 = !DILocation(line: 88, column: 1, scope: !104)
!137 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 92, type: !64, scopeLine: 93, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!138 = !DILocalVariable(name: "data", scope: !137, file: !3, line: 94, type: !55)
!139 = !DILocation(line: 94, column: 12, scope: !137)
!140 = !DILocalVariable(name: "dataBuffer", scope: !137, file: !3, line: 95, type: !69)
!141 = !DILocation(line: 95, column: 10, scope: !137)
!142 = !DILocation(line: 96, column: 12, scope: !137)
!143 = !DILocation(line: 96, column: 10, scope: !137)
!144 = !DILocalVariable(name: "dataLen", scope: !145, file: !3, line: 99, type: !77)
!145 = distinct !DILexicalBlock(scope: !137, file: !3, line: 97, column: 5)
!146 = !DILocation(line: 99, column: 16, scope: !145)
!147 = !DILocation(line: 99, column: 33, scope: !145)
!148 = !DILocation(line: 99, column: 26, scope: !145)
!149 = !DILocalVariable(name: "environment", scope: !145, file: !3, line: 100, type: !55)
!150 = !DILocation(line: 100, column: 16, scope: !145)
!151 = !DILocation(line: 100, column: 30, scope: !145)
!152 = !DILocation(line: 102, column: 13, scope: !153)
!153 = distinct !DILexicalBlock(scope: !145, file: !3, line: 102, column: 13)
!154 = !DILocation(line: 102, column: 25, scope: !153)
!155 = !DILocation(line: 102, column: 13, scope: !145)
!156 = !DILocation(line: 105, column: 21, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !3, line: 103, column: 9)
!158 = !DILocation(line: 105, column: 26, scope: !157)
!159 = !DILocation(line: 105, column: 25, scope: !157)
!160 = !DILocation(line: 105, column: 35, scope: !157)
!161 = !DILocation(line: 105, column: 52, scope: !157)
!162 = !DILocation(line: 105, column: 51, scope: !157)
!163 = !DILocation(line: 105, column: 59, scope: !157)
!164 = !DILocation(line: 105, column: 13, scope: !157)
!165 = !DILocation(line: 106, column: 9, scope: !157)
!166 = !DILocation(line: 108, column: 83, scope: !137)
!167 = !DILocation(line: 109, column: 81, scope: !137)
!168 = !DILocation(line: 109, column: 5, scope: !137)
!169 = !DILocation(line: 110, column: 1, scope: !137)
!170 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 114, type: !64, scopeLine: 115, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!171 = !DILocalVariable(name: "data", scope: !170, file: !3, line: 116, type: !55)
!172 = !DILocation(line: 116, column: 12, scope: !170)
!173 = !DILocalVariable(name: "dataBuffer", scope: !170, file: !3, line: 117, type: !69)
!174 = !DILocation(line: 117, column: 10, scope: !170)
!175 = !DILocation(line: 118, column: 12, scope: !170)
!176 = !DILocation(line: 118, column: 10, scope: !170)
!177 = !DILocation(line: 120, column: 12, scope: !170)
!178 = !DILocation(line: 120, column: 5, scope: !170)
!179 = !DILocation(line: 121, column: 82, scope: !170)
!180 = !DILocation(line: 122, column: 80, scope: !170)
!181 = !DILocation(line: 122, column: 5, scope: !170)
!182 = !DILocation(line: 123, column: 1, scope: !170)
!183 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_good", scope: !3, file: !3, line: 125, type: !64, scopeLine: 126, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!184 = !DILocation(line: 127, column: 5, scope: !183)
!185 = !DILocation(line: 128, column: 5, scope: !183)
!186 = !DILocation(line: 129, column: 5, scope: !183)
!187 = !DILocation(line: 130, column: 1, scope: !183)
!188 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_badSink", scope: !58, file: !58, line: 29, type: !189, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !55}
!191 = !DILocalVariable(name: "data", arg: 1, scope: !188, file: !58, line: 29, type: !55)
!192 = !DILocation(line: 29, column: 84, scope: !188)
!193 = !DILocation(line: 31, column: 8, scope: !194)
!194 = distinct !DILexicalBlock(scope: !188, file: !58, line: 31, column: 8)
!195 = !DILocation(line: 31, column: 8, scope: !188)
!196 = !DILocation(line: 34, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !58, line: 32, column: 5)
!198 = !DILocation(line: 34, column: 25, scope: !197)
!199 = !DILocation(line: 34, column: 9, scope: !197)
!200 = !DILocation(line: 35, column: 5, scope: !197)
!201 = !DILocation(line: 36, column: 1, scope: !188)
!202 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G1Sink", scope: !58, file: !58, line: 48, type: !189, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!203 = !DILocalVariable(name: "data", arg: 1, scope: !202, file: !58, line: 48, type: !55)
!204 = !DILocation(line: 48, column: 89, scope: !202)
!205 = !DILocation(line: 50, column: 8, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !58, line: 50, column: 8)
!207 = !DILocation(line: 50, column: 8, scope: !202)
!208 = !DILocation(line: 53, column: 9, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !58, line: 51, column: 5)
!210 = !DILocation(line: 54, column: 5, scope: !209)
!211 = !DILocation(line: 58, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !206, file: !58, line: 56, column: 5)
!213 = !DILocation(line: 58, column: 33, scope: !212)
!214 = !DILocation(line: 58, column: 9, scope: !212)
!215 = !DILocation(line: 60, column: 1, scope: !202)
!216 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G2Sink", scope: !58, file: !58, line: 63, type: !189, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!217 = !DILocalVariable(name: "data", arg: 1, scope: !216, file: !58, line: 63, type: !55)
!218 = !DILocation(line: 63, column: 89, scope: !216)
!219 = !DILocation(line: 65, column: 8, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !58, line: 65, column: 8)
!221 = !DILocation(line: 65, column: 8, scope: !216)
!222 = !DILocation(line: 68, column: 17, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !58, line: 66, column: 5)
!224 = !DILocation(line: 68, column: 33, scope: !223)
!225 = !DILocation(line: 68, column: 9, scope: !223)
!226 = !DILocation(line: 69, column: 5, scope: !223)
!227 = !DILocation(line: 70, column: 1, scope: !216)
!228 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodG2BSink", scope: !58, file: !58, line: 73, type: !189, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!229 = !DILocalVariable(name: "data", arg: 1, scope: !228, file: !58, line: 73, type: !55)
!230 = !DILocation(line: 73, column: 88, scope: !228)
!231 = !DILocation(line: 75, column: 8, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !58, line: 75, column: 8)
!233 = !DILocation(line: 75, column: 8, scope: !228)
!234 = !DILocation(line: 78, column: 17, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !58, line: 76, column: 5)
!236 = !DILocation(line: 78, column: 25, scope: !235)
!237 = !DILocation(line: 78, column: 9, scope: !235)
!238 = !DILocation(line: 79, column: 5, scope: !235)
!239 = !DILocation(line: 80, column: 1, scope: !228)
!240 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !189, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!241 = !DILocalVariable(name: "line", arg: 1, scope: !240, file: !18, line: 11, type: !55)
!242 = !DILocation(line: 11, column: 25, scope: !240)
!243 = !DILocation(line: 13, column: 1, scope: !240)
!244 = !DILocation(line: 14, column: 8, scope: !245)
!245 = distinct !DILexicalBlock(scope: !240, file: !18, line: 14, column: 8)
!246 = !DILocation(line: 14, column: 13, scope: !245)
!247 = !DILocation(line: 14, column: 8, scope: !240)
!248 = !DILocation(line: 16, column: 24, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !18, line: 15, column: 5)
!250 = !DILocation(line: 16, column: 9, scope: !249)
!251 = !DILocation(line: 17, column: 5, scope: !249)
!252 = !DILocation(line: 18, column: 5, scope: !240)
!253 = !DILocation(line: 19, column: 1, scope: !240)
!254 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !189, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!255 = !DILocalVariable(name: "line", arg: 1, scope: !254, file: !18, line: 20, type: !55)
!256 = !DILocation(line: 20, column: 29, scope: !254)
!257 = !DILocation(line: 22, column: 8, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !18, line: 22, column: 8)
!259 = !DILocation(line: 22, column: 13, scope: !258)
!260 = !DILocation(line: 22, column: 8, scope: !254)
!261 = !DILocation(line: 24, column: 24, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !18, line: 23, column: 5)
!263 = !DILocation(line: 24, column: 9, scope: !262)
!264 = !DILocation(line: 25, column: 5, scope: !262)
!265 = !DILocation(line: 26, column: 1, scope: !254)
!266 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !267, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !78, line: 74, baseType: !10)
!271 = !DILocalVariable(name: "line", arg: 1, scope: !266, file: !18, line: 27, type: !269)
!272 = !DILocation(line: 27, column: 29, scope: !266)
!273 = !DILocation(line: 29, column: 8, scope: !274)
!274 = distinct !DILexicalBlock(scope: !266, file: !18, line: 29, column: 8)
!275 = !DILocation(line: 29, column: 13, scope: !274)
!276 = !DILocation(line: 29, column: 8, scope: !266)
!277 = !DILocation(line: 31, column: 27, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !18, line: 30, column: 5)
!279 = !DILocation(line: 31, column: 9, scope: !278)
!280 = !DILocation(line: 32, column: 5, scope: !278)
!281 = !DILocation(line: 33, column: 1, scope: !266)
!282 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !283, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !10}
!285 = !DILocalVariable(name: "intNumber", arg: 1, scope: !282, file: !18, line: 35, type: !10)
!286 = !DILocation(line: 35, column: 24, scope: !282)
!287 = !DILocation(line: 37, column: 20, scope: !282)
!288 = !DILocation(line: 37, column: 5, scope: !282)
!289 = !DILocation(line: 38, column: 1, scope: !282)
!290 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !291, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !293}
!293 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!294 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !290, file: !18, line: 40, type: !293)
!295 = !DILocation(line: 40, column: 28, scope: !290)
!296 = !DILocation(line: 42, column: 21, scope: !290)
!297 = !DILocation(line: 42, column: 5, scope: !290)
!298 = !DILocation(line: 43, column: 1, scope: !290)
!299 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !300, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !302}
!302 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!303 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !299, file: !18, line: 45, type: !302)
!304 = !DILocation(line: 45, column: 28, scope: !299)
!305 = !DILocation(line: 47, column: 20, scope: !299)
!306 = !DILocation(line: 47, column: 5, scope: !299)
!307 = !DILocation(line: 48, column: 1, scope: !299)
!308 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !309, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !311}
!311 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!312 = !DILocalVariable(name: "longNumber", arg: 1, scope: !308, file: !18, line: 50, type: !311)
!313 = !DILocation(line: 50, column: 26, scope: !308)
!314 = !DILocation(line: 52, column: 21, scope: !308)
!315 = !DILocation(line: 52, column: 5, scope: !308)
!316 = !DILocation(line: 53, column: 1, scope: !308)
!317 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !318, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !320}
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !321, line: 27, baseType: !322)
!321 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !323, line: 44, baseType: !311)
!323 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!324 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !317, file: !18, line: 55, type: !320)
!325 = !DILocation(line: 55, column: 33, scope: !317)
!326 = !DILocation(line: 57, column: 29, scope: !317)
!327 = !DILocation(line: 57, column: 5, scope: !317)
!328 = !DILocation(line: 58, column: 1, scope: !317)
!329 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !330, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !77}
!332 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !329, file: !18, line: 60, type: !77)
!333 = !DILocation(line: 60, column: 29, scope: !329)
!334 = !DILocation(line: 62, column: 21, scope: !329)
!335 = !DILocation(line: 62, column: 5, scope: !329)
!336 = !DILocation(line: 63, column: 1, scope: !329)
!337 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !338, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !56}
!340 = !DILocalVariable(name: "charHex", arg: 1, scope: !337, file: !18, line: 65, type: !56)
!341 = !DILocation(line: 65, column: 29, scope: !337)
!342 = !DILocation(line: 67, column: 22, scope: !337)
!343 = !DILocation(line: 67, column: 5, scope: !337)
!344 = !DILocation(line: 68, column: 1, scope: !337)
!345 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !346, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !270}
!348 = !DILocalVariable(name: "wideChar", arg: 1, scope: !345, file: !18, line: 70, type: !270)
!349 = !DILocation(line: 70, column: 29, scope: !345)
!350 = !DILocalVariable(name: "s", scope: !345, file: !18, line: 74, type: !351)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 64, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 2)
!354 = !DILocation(line: 74, column: 13, scope: !345)
!355 = !DILocation(line: 75, column: 16, scope: !345)
!356 = !DILocation(line: 75, column: 9, scope: !345)
!357 = !DILocation(line: 75, column: 14, scope: !345)
!358 = !DILocation(line: 76, column: 9, scope: !345)
!359 = !DILocation(line: 76, column: 14, scope: !345)
!360 = !DILocation(line: 77, column: 21, scope: !345)
!361 = !DILocation(line: 77, column: 5, scope: !345)
!362 = !DILocation(line: 78, column: 1, scope: !345)
!363 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !364, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !22}
!366 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !363, file: !18, line: 80, type: !22)
!367 = !DILocation(line: 80, column: 33, scope: !363)
!368 = !DILocation(line: 82, column: 20, scope: !363)
!369 = !DILocation(line: 82, column: 5, scope: !363)
!370 = !DILocation(line: 83, column: 1, scope: !363)
!371 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !372, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !38}
!374 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !371, file: !18, line: 85, type: !38)
!375 = !DILocation(line: 85, column: 45, scope: !371)
!376 = !DILocation(line: 87, column: 22, scope: !371)
!377 = !DILocation(line: 87, column: 5, scope: !371)
!378 = !DILocation(line: 88, column: 1, scope: !371)
!379 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !380, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !382}
!382 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!383 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !379, file: !18, line: 90, type: !382)
!384 = !DILocation(line: 90, column: 29, scope: !379)
!385 = !DILocation(line: 92, column: 20, scope: !379)
!386 = !DILocation(line: 92, column: 5, scope: !379)
!387 = !DILocation(line: 93, column: 1, scope: !379)
!388 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !389, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !393, line: 100, baseType: !394)
!393 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_693/source_code")
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !393, line: 96, size: 64, elements: !395)
!395 = !{!396, !397}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !394, file: !393, line: 98, baseType: !10, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !394, file: !393, line: 99, baseType: !10, size: 32, offset: 32)
!398 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !388, file: !18, line: 95, type: !391)
!399 = !DILocation(line: 95, column: 40, scope: !388)
!400 = !DILocation(line: 97, column: 26, scope: !388)
!401 = !DILocation(line: 97, column: 47, scope: !388)
!402 = !DILocation(line: 97, column: 55, scope: !388)
!403 = !DILocation(line: 97, column: 76, scope: !388)
!404 = !DILocation(line: 97, column: 5, scope: !388)
!405 = !DILocation(line: 98, column: 1, scope: !388)
!406 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !407, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !409, !77}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!410 = !DILocalVariable(name: "bytes", arg: 1, scope: !406, file: !18, line: 100, type: !409)
!411 = !DILocation(line: 100, column: 38, scope: !406)
!412 = !DILocalVariable(name: "numBytes", arg: 2, scope: !406, file: !18, line: 100, type: !77)
!413 = !DILocation(line: 100, column: 52, scope: !406)
!414 = !DILocalVariable(name: "i", scope: !406, file: !18, line: 102, type: !77)
!415 = !DILocation(line: 102, column: 12, scope: !406)
!416 = !DILocation(line: 103, column: 12, scope: !417)
!417 = distinct !DILexicalBlock(scope: !406, file: !18, line: 103, column: 5)
!418 = !DILocation(line: 103, column: 10, scope: !417)
!419 = !DILocation(line: 103, column: 17, scope: !420)
!420 = distinct !DILexicalBlock(scope: !417, file: !18, line: 103, column: 5)
!421 = !DILocation(line: 103, column: 21, scope: !420)
!422 = !DILocation(line: 103, column: 19, scope: !420)
!423 = !DILocation(line: 103, column: 5, scope: !417)
!424 = !DILocation(line: 105, column: 24, scope: !425)
!425 = distinct !DILexicalBlock(scope: !420, file: !18, line: 104, column: 5)
!426 = !DILocation(line: 105, column: 30, scope: !425)
!427 = !DILocation(line: 105, column: 9, scope: !425)
!428 = !DILocation(line: 106, column: 5, scope: !425)
!429 = !DILocation(line: 103, column: 31, scope: !420)
!430 = !DILocation(line: 103, column: 5, scope: !420)
!431 = distinct !{!431, !423, !432, !433}
!432 = !DILocation(line: 106, column: 5, scope: !417)
!433 = !{!"llvm.loop.mustprogress"}
!434 = !DILocation(line: 107, column: 5, scope: !406)
!435 = !DILocation(line: 108, column: 1, scope: !406)
!436 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !437, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!437 = !DISubroutineType(types: !438)
!438 = !{!77, !409, !77, !55}
!439 = !DILocalVariable(name: "bytes", arg: 1, scope: !436, file: !18, line: 113, type: !409)
!440 = !DILocation(line: 113, column: 39, scope: !436)
!441 = !DILocalVariable(name: "numBytes", arg: 2, scope: !436, file: !18, line: 113, type: !77)
!442 = !DILocation(line: 113, column: 53, scope: !436)
!443 = !DILocalVariable(name: "hex", arg: 3, scope: !436, file: !18, line: 113, type: !55)
!444 = !DILocation(line: 113, column: 71, scope: !436)
!445 = !DILocalVariable(name: "numWritten", scope: !436, file: !18, line: 115, type: !77)
!446 = !DILocation(line: 115, column: 12, scope: !436)
!447 = !DILocation(line: 121, column: 5, scope: !436)
!448 = !DILocation(line: 121, column: 12, scope: !436)
!449 = !DILocation(line: 121, column: 25, scope: !436)
!450 = !DILocation(line: 121, column: 23, scope: !436)
!451 = !DILocation(line: 121, column: 34, scope: !436)
!452 = !DILocation(line: 121, column: 37, scope: !436)
!453 = !DILocation(line: 121, column: 67, scope: !436)
!454 = !DILocation(line: 121, column: 70, scope: !436)
!455 = !DILocation(line: 0, scope: !436)
!456 = !DILocalVariable(name: "byte", scope: !457, file: !18, line: 123, type: !10)
!457 = distinct !DILexicalBlock(scope: !436, file: !18, line: 122, column: 5)
!458 = !DILocation(line: 123, column: 13, scope: !457)
!459 = !DILocation(line: 124, column: 17, scope: !457)
!460 = !DILocation(line: 124, column: 25, scope: !457)
!461 = !DILocation(line: 124, column: 23, scope: !457)
!462 = !DILocation(line: 124, column: 9, scope: !457)
!463 = !DILocation(line: 125, column: 45, scope: !457)
!464 = !DILocation(line: 125, column: 29, scope: !457)
!465 = !DILocation(line: 125, column: 9, scope: !457)
!466 = !DILocation(line: 125, column: 15, scope: !457)
!467 = !DILocation(line: 125, column: 27, scope: !457)
!468 = !DILocation(line: 126, column: 9, scope: !457)
!469 = distinct !{!469, !447, !470, !433}
!470 = !DILocation(line: 127, column: 5, scope: !436)
!471 = !DILocation(line: 129, column: 12, scope: !436)
!472 = !DILocation(line: 129, column: 5, scope: !436)
!473 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !474, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!474 = !DISubroutineType(types: !475)
!475 = !{!77, !409, !77, !269}
!476 = !DILocalVariable(name: "bytes", arg: 1, scope: !473, file: !18, line: 135, type: !409)
!477 = !DILocation(line: 135, column: 41, scope: !473)
!478 = !DILocalVariable(name: "numBytes", arg: 2, scope: !473, file: !18, line: 135, type: !77)
!479 = !DILocation(line: 135, column: 55, scope: !473)
!480 = !DILocalVariable(name: "hex", arg: 3, scope: !473, file: !18, line: 135, type: !269)
!481 = !DILocation(line: 135, column: 76, scope: !473)
!482 = !DILocalVariable(name: "numWritten", scope: !473, file: !18, line: 137, type: !77)
!483 = !DILocation(line: 137, column: 12, scope: !473)
!484 = !DILocation(line: 143, column: 5, scope: !473)
!485 = !DILocation(line: 143, column: 12, scope: !473)
!486 = !DILocation(line: 143, column: 25, scope: !473)
!487 = !DILocation(line: 143, column: 23, scope: !473)
!488 = !DILocation(line: 143, column: 34, scope: !473)
!489 = !DILocation(line: 143, column: 47, scope: !473)
!490 = !DILocation(line: 143, column: 55, scope: !473)
!491 = !DILocation(line: 143, column: 53, scope: !473)
!492 = !DILocation(line: 143, column: 37, scope: !473)
!493 = !DILocation(line: 143, column: 68, scope: !473)
!494 = !DILocation(line: 143, column: 81, scope: !473)
!495 = !DILocation(line: 143, column: 89, scope: !473)
!496 = !DILocation(line: 143, column: 87, scope: !473)
!497 = !DILocation(line: 143, column: 100, scope: !473)
!498 = !DILocation(line: 143, column: 71, scope: !473)
!499 = !DILocation(line: 0, scope: !473)
!500 = !DILocalVariable(name: "byte", scope: !501, file: !18, line: 145, type: !10)
!501 = distinct !DILexicalBlock(scope: !473, file: !18, line: 144, column: 5)
!502 = !DILocation(line: 145, column: 13, scope: !501)
!503 = !DILocation(line: 146, column: 18, scope: !501)
!504 = !DILocation(line: 146, column: 26, scope: !501)
!505 = !DILocation(line: 146, column: 24, scope: !501)
!506 = !DILocation(line: 146, column: 9, scope: !501)
!507 = !DILocation(line: 147, column: 45, scope: !501)
!508 = !DILocation(line: 147, column: 29, scope: !501)
!509 = !DILocation(line: 147, column: 9, scope: !501)
!510 = !DILocation(line: 147, column: 15, scope: !501)
!511 = !DILocation(line: 147, column: 27, scope: !501)
!512 = !DILocation(line: 148, column: 9, scope: !501)
!513 = distinct !{!513, !484, !514, !433}
!514 = !DILocation(line: 149, column: 5, scope: !473)
!515 = !DILocation(line: 151, column: 12, scope: !473)
!516 = !DILocation(line: 151, column: 5, scope: !473)
!517 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !518, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!518 = !DISubroutineType(types: !519)
!519 = !{!10}
!520 = !DILocation(line: 158, column: 5, scope: !517)
!521 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !518, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!522 = !DILocation(line: 163, column: 5, scope: !521)
!523 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !518, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!524 = !DILocation(line: 168, column: 13, scope: !523)
!525 = !DILocation(line: 168, column: 20, scope: !523)
!526 = !DILocation(line: 168, column: 5, scope: !523)
!527 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !64, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!528 = !DILocation(line: 187, column: 16, scope: !527)
!529 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !64, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!530 = !DILocation(line: 188, column: 16, scope: !529)
!531 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !64, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!532 = !DILocation(line: 189, column: 16, scope: !531)
!533 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !64, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!534 = !DILocation(line: 190, column: 16, scope: !533)
!535 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !64, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!536 = !DILocation(line: 191, column: 16, scope: !535)
!537 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !64, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!538 = !DILocation(line: 192, column: 16, scope: !537)
!539 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !64, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!540 = !DILocation(line: 193, column: 16, scope: !539)
!541 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !64, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!542 = !DILocation(line: 194, column: 16, scope: !541)
!543 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !64, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!544 = !DILocation(line: 195, column: 16, scope: !543)
!545 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !64, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!546 = !DILocation(line: 198, column: 15, scope: !545)
!547 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !64, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!548 = !DILocation(line: 199, column: 15, scope: !547)
!549 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !64, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!550 = !DILocation(line: 200, column: 15, scope: !549)
!551 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !64, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!552 = !DILocation(line: 201, column: 15, scope: !551)
!553 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !64, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!554 = !DILocation(line: 202, column: 15, scope: !553)
!555 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !64, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!556 = !DILocation(line: 203, column: 15, scope: !555)
!557 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !64, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!558 = !DILocation(line: 204, column: 15, scope: !557)
!559 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !64, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!560 = !DILocation(line: 205, column: 15, scope: !559)
!561 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !64, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!562 = !DILocation(line: 206, column: 15, scope: !561)
