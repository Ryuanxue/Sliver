; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.20 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.21 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53_bad() #0 !dbg !58 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !63, metadata !DIExpression()), !dbg !67
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !67
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !67
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !68
  store i8* %arraydecay, i8** %data, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !70, metadata !DIExpression()), !dbg !75
  %1 = load i8*, i8** %data, align 8, !dbg !76
  %call = call i64 @strlen(i8* %1) #7, !dbg !77
  store i64 %call, i64* %dataLen, align 8, !dbg !75
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !78, metadata !DIExpression()), !dbg !79
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !80
  store i8* %call1, i8** %environment, align 8, !dbg !79
  %2 = load i8*, i8** %environment, align 8, !dbg !81
  %cmp = icmp ne i8* %2, null, !dbg !83
  br i1 %cmp, label %if.then, label %if.end, !dbg !84

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !85
  %4 = load i64, i64* %dataLen, align 8, !dbg !87
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !88
  %5 = load i8*, i8** %environment, align 8, !dbg !89
  %6 = load i64, i64* %dataLen, align 8, !dbg !90
  %sub = sub i64 100, %6, !dbg !91
  %sub2 = sub i64 %sub, 1, !dbg !92
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !93
  br label %if.end, !dbg !94

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !95
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53b_badSink(i8* %7), !dbg !96
  ret void, !dbg !97
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
define dso_local void @goodG2B() #0 !dbg !98 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !101, metadata !DIExpression()), !dbg !102
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !102
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !102
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !103
  store i8* %arraydecay, i8** %data, align 8, !dbg !104
  %1 = load i8*, i8** %data, align 8, !dbg !105
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !106
  %2 = load i8*, i8** %data, align 8, !dbg !107
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53b_goodG2BSink(i8* %2), !dbg !108
  ret void, !dbg !109
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !110 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !113, metadata !DIExpression()), !dbg !114
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !114
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !114
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !115
  store i8* %arraydecay, i8** %data, align 8, !dbg !116
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !117, metadata !DIExpression()), !dbg !119
  %1 = load i8*, i8** %data, align 8, !dbg !120
  %call = call i64 @strlen(i8* %1) #7, !dbg !121
  store i64 %call, i64* %dataLen, align 8, !dbg !119
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !122, metadata !DIExpression()), !dbg !123
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !124
  store i8* %call1, i8** %environment, align 8, !dbg !123
  %2 = load i8*, i8** %environment, align 8, !dbg !125
  %cmp = icmp ne i8* %2, null, !dbg !127
  br i1 %cmp, label %if.then, label %if.end, !dbg !128

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !129
  %4 = load i64, i64* %dataLen, align 8, !dbg !131
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !132
  %5 = load i8*, i8** %environment, align 8, !dbg !133
  %6 = load i64, i64* %dataLen, align 8, !dbg !134
  %sub = sub i64 100, %6, !dbg !135
  %sub2 = sub i64 %sub, 1, !dbg !136
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !137
  br label %if.end, !dbg !138

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !139
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53b_goodB2GSink(i8* %7), !dbg !140
  ret void, !dbg !141
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53_good() #0 !dbg !142 {
entry:
  call void @goodG2B(), !dbg !143
  call void @goodB2G(), !dbg !144
  ret void, !dbg !145
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53b_badSink(i8* %data) #0 !dbg !146 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = load i8*, i8** %data.addr, align 8, !dbg !151
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53c_badSink(i8* %0), !dbg !152
  ret void, !dbg !153
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53b_goodG2BSink(i8* %data) #0 !dbg !154 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !155, metadata !DIExpression()), !dbg !156
  %0 = load i8*, i8** %data.addr, align 8, !dbg !157
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53c_goodG2BSink(i8* %0), !dbg !158
  ret void, !dbg !159
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53b_goodB2GSink(i8* %data) #0 !dbg !160 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !161, metadata !DIExpression()), !dbg !162
  %0 = load i8*, i8** %data.addr, align 8, !dbg !163
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53c_goodB2GSink(i8* %0), !dbg !164
  ret void, !dbg !165
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53c_badSink(i8* %data) #0 !dbg !166 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !167, metadata !DIExpression()), !dbg !168
  %0 = load i8*, i8** %data.addr, align 8, !dbg !169
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53d_badSink(i8* %0), !dbg !170
  ret void, !dbg !171
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53c_goodG2BSink(i8* %data) #0 !dbg !172 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !173, metadata !DIExpression()), !dbg !174
  %0 = load i8*, i8** %data.addr, align 8, !dbg !175
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53d_goodG2BSink(i8* %0), !dbg !176
  ret void, !dbg !177
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53c_goodB2GSink(i8* %data) #0 !dbg !178 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !179, metadata !DIExpression()), !dbg !180
  %0 = load i8*, i8** %data.addr, align 8, !dbg !181
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53d_goodB2GSink(i8* %0), !dbg !182
  ret void, !dbg !183
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53d_badSink(i8* %data) #0 !dbg !184 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !185, metadata !DIExpression()), !dbg !186
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !187
  %1 = load i8*, i8** %data.addr, align 8, !dbg !188
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !189
  ret void, !dbg !190
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53d_goodG2BSink(i8* %data) #0 !dbg !191 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !192, metadata !DIExpression()), !dbg !193
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !194
  %1 = load i8*, i8** %data.addr, align 8, !dbg !195
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !196
  ret void, !dbg !197
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_53d_goodB2GSink(i8* %data) #0 !dbg !198 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !199, metadata !DIExpression()), !dbg !200
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !201
  %1 = load i8*, i8** %data.addr, align 8, !dbg !202
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* %1), !dbg !203
  ret void, !dbg !204
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !205 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !206, metadata !DIExpression()), !dbg !207
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0)), !dbg !208
  %0 = load i8*, i8** %line.addr, align 8, !dbg !209
  %cmp = icmp ne i8* %0, null, !dbg !211
  br i1 %cmp, label %if.then, label %if.end, !dbg !212

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !213
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.21, i64 0, i64 0), i8* %1), !dbg !215
  br label %if.end, !dbg !216

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !217
  ret void, !dbg !218
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !219 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !220, metadata !DIExpression()), !dbg !221
  %0 = load i8*, i8** %line.addr, align 8, !dbg !222
  %cmp = icmp ne i8* %0, null, !dbg !224
  br i1 %cmp, label %if.then, label %if.end, !dbg !225

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !226
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.21, i64 0, i64 0), i8* %1), !dbg !228
  br label %if.end, !dbg !229

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !230
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !231 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !236, metadata !DIExpression()), !dbg !237
  %0 = load i32*, i32** %line.addr, align 8, !dbg !238
  %cmp = icmp ne i32* %0, null, !dbg !240
  br i1 %cmp, label %if.then, label %if.end, !dbg !241

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !242
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !244
  br label %if.end, !dbg !245

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !246
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !247 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !250, metadata !DIExpression()), !dbg !251
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !252
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !253
  ret void, !dbg !254
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !255 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !259, metadata !DIExpression()), !dbg !260
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !261
  %conv = sext i16 %0 to i32, !dbg !261
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !262
  ret void, !dbg !263
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !264 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !268, metadata !DIExpression()), !dbg !269
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !270
  %conv = fpext float %0 to double, !dbg !270
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !271
  ret void, !dbg !272
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !273 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !277, metadata !DIExpression()), !dbg !278
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !279
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !280
  ret void, !dbg !281
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !282 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !289, metadata !DIExpression()), !dbg !290
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !291
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !292
  ret void, !dbg !293
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !294 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !297, metadata !DIExpression()), !dbg !298
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !299
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !300
  ret void, !dbg !301
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !302 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !305, metadata !DIExpression()), !dbg !306
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !307
  %conv = sext i8 %0 to i32, !dbg !307
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !308
  ret void, !dbg !309
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !310 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !313, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !315, metadata !DIExpression()), !dbg !319
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !320
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !321
  store i32 %0, i32* %arrayidx, align 4, !dbg !322
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !323
  store i32 0, i32* %arrayidx1, align 4, !dbg !324
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !325
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !326
  ret void, !dbg !327
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !328 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !331, metadata !DIExpression()), !dbg !332
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !333
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !334
  ret void, !dbg !335
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !336 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !339, metadata !DIExpression()), !dbg !340
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !341
  %conv = zext i8 %0 to i32, !dbg !341
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !342
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !344 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !348, metadata !DIExpression()), !dbg !349
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !350
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !351
  ret void, !dbg !352
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !353 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !363, metadata !DIExpression()), !dbg !364
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !365
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !366
  %1 = load i32, i32* %intOne, align 4, !dbg !366
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !367
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !368
  %3 = load i32, i32* %intTwo, align 4, !dbg !368
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !369
  ret void, !dbg !370
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !371 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !375, metadata !DIExpression()), !dbg !376
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !377, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.declare(metadata i64* %i, metadata !379, metadata !DIExpression()), !dbg !380
  store i64 0, i64* %i, align 8, !dbg !381
  br label %for.cond, !dbg !383

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !384
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !386
  %cmp = icmp ult i64 %0, %1, !dbg !387
  br i1 %cmp, label %for.body, label %for.end, !dbg !388

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !389
  %3 = load i64, i64* %i, align 8, !dbg !391
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !389
  %4 = load i8, i8* %arrayidx, align 1, !dbg !389
  %conv = zext i8 %4 to i32, !dbg !389
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !392
  br label %for.inc, !dbg !393

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !394
  %inc = add i64 %5, 1, !dbg !394
  store i64 %inc, i64* %i, align 8, !dbg !394
  br label %for.cond, !dbg !395, !llvm.loop !396

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !399
  ret void, !dbg !400
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !401 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !404, metadata !DIExpression()), !dbg !405
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !406, metadata !DIExpression()), !dbg !407
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !408, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !410, metadata !DIExpression()), !dbg !411
  store i64 0, i64* %numWritten, align 8, !dbg !411
  br label %while.cond, !dbg !412

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !413
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !414
  %cmp = icmp ult i64 %0, %1, !dbg !415
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !416

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !417
  %2 = load i16*, i16** %call, align 8, !dbg !417
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !417
  %4 = load i64, i64* %numWritten, align 8, !dbg !417
  %mul = mul i64 2, %4, !dbg !417
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !417
  %5 = load i8, i8* %arrayidx, align 1, !dbg !417
  %conv = sext i8 %5 to i32, !dbg !417
  %idxprom = sext i32 %conv to i64, !dbg !417
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !417
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !417
  %conv2 = zext i16 %6 to i32, !dbg !417
  %and = and i32 %conv2, 4096, !dbg !417
  %tobool = icmp ne i32 %and, 0, !dbg !417
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !418

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !419
  %7 = load i16*, i16** %call3, align 8, !dbg !419
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !419
  %9 = load i64, i64* %numWritten, align 8, !dbg !419
  %mul4 = mul i64 2, %9, !dbg !419
  %add = add i64 %mul4, 1, !dbg !419
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !419
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !419
  %conv6 = sext i8 %10 to i32, !dbg !419
  %idxprom7 = sext i32 %conv6 to i64, !dbg !419
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !419
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !419
  %conv9 = zext i16 %11 to i32, !dbg !419
  %and10 = and i32 %conv9, 4096, !dbg !419
  %tobool11 = icmp ne i32 %and10, 0, !dbg !418
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !420
  br i1 %12, label %while.body, label %while.end, !dbg !412

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !421, metadata !DIExpression()), !dbg !423
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !424
  %14 = load i64, i64* %numWritten, align 8, !dbg !425
  %mul12 = mul i64 2, %14, !dbg !426
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !424
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !427
  %15 = load i32, i32* %byte, align 4, !dbg !428
  %conv15 = trunc i32 %15 to i8, !dbg !429
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !430
  %17 = load i64, i64* %numWritten, align 8, !dbg !431
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !430
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !432
  %18 = load i64, i64* %numWritten, align 8, !dbg !433
  %inc = add i64 %18, 1, !dbg !433
  store i64 %inc, i64* %numWritten, align 8, !dbg !433
  br label %while.cond, !dbg !412, !llvm.loop !434

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !436
  ret i64 %19, !dbg !437
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !438 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !441, metadata !DIExpression()), !dbg !442
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !443, metadata !DIExpression()), !dbg !444
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !445, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !447, metadata !DIExpression()), !dbg !448
  store i64 0, i64* %numWritten, align 8, !dbg !448
  br label %while.cond, !dbg !449

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !450
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !451
  %cmp = icmp ult i64 %0, %1, !dbg !452
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !453

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !454
  %3 = load i64, i64* %numWritten, align 8, !dbg !455
  %mul = mul i64 2, %3, !dbg !456
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !454
  %4 = load i32, i32* %arrayidx, align 4, !dbg !454
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !457
  %tobool = icmp ne i32 %call, 0, !dbg !457
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !458

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !459
  %6 = load i64, i64* %numWritten, align 8, !dbg !460
  %mul1 = mul i64 2, %6, !dbg !461
  %add = add i64 %mul1, 1, !dbg !462
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !459
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !459
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !463
  %tobool4 = icmp ne i32 %call3, 0, !dbg !458
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !464
  br i1 %8, label %while.body, label %while.end, !dbg !449

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !465, metadata !DIExpression()), !dbg !467
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !468
  %10 = load i64, i64* %numWritten, align 8, !dbg !469
  %mul5 = mul i64 2, %10, !dbg !470
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !468
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !471
  %11 = load i32, i32* %byte, align 4, !dbg !472
  %conv = trunc i32 %11 to i8, !dbg !473
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !474
  %13 = load i64, i64* %numWritten, align 8, !dbg !475
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !474
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !476
  %14 = load i64, i64* %numWritten, align 8, !dbg !477
  %inc = add i64 %14, 1, !dbg !477
  store i64 %inc, i64* %numWritten, align 8, !dbg !477
  br label %while.cond, !dbg !449, !llvm.loop !478

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !480
  ret i64 %15, !dbg !481
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !482 {
entry:
  ret i32 1, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !486 {
entry:
  ret i32 0, !dbg !487
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !488 {
entry:
  %call = call i32 @rand() #8, !dbg !489
  %rem = srem i32 %call, 2, !dbg !490
  ret i32 %rem, !dbg !491
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !492 {
entry:
  ret void, !dbg !493
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !494 {
entry:
  ret void, !dbg !495
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !496 {
entry:
  ret void, !dbg !497
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !498 {
entry:
  ret void, !dbg !499
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !500 {
entry:
  ret void, !dbg !501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !502 {
entry:
  ret void, !dbg !503
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !504 {
entry:
  ret void, !dbg !505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !506 {
entry:
  ret void, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !508 {
entry:
  ret void, !dbg !509
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !510 {
entry:
  ret void, !dbg !511
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !512 {
entry:
  ret void, !dbg !513
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !514 {
entry:
  ret void, !dbg !515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !516 {
entry:
  ret void, !dbg !517
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !518 {
entry:
  ret void, !dbg !519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !520 {
entry:
  ret void, !dbg !521
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !522 {
entry:
  ret void, !dbg !523
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !524 {
entry:
  ret void, !dbg !525
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !526 {
entry:
  ret void, !dbg !527
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

!llvm.dbg.cu = !{!44, !48, !50, !52, !2}
!llvm.ident = !{!54, !54, !54, !54, !54}
!llvm.module.flags = !{!55, !56, !57}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_705/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_53a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_705/source_code")
!46 = !{}
!47 = !{!22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_53b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_705/source_code")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_53c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_705/source_code")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_53d.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_705/source_code")
!54 = !{!"clang version 12.0.0"}
!55 = !{i32 7, !"Dwarf Version", i32 4}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_53_bad", scope: !45, file: !45, line: 37, type: !59, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!59 = !DISubroutineType(types: !60)
!60 = !{null}
!61 = !DILocalVariable(name: "data", scope: !58, file: !45, line: 39, type: !42)
!62 = !DILocation(line: 39, column: 12, scope: !58)
!63 = !DILocalVariable(name: "dataBuffer", scope: !58, file: !45, line: 40, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 100)
!67 = !DILocation(line: 40, column: 10, scope: !58)
!68 = !DILocation(line: 41, column: 12, scope: !58)
!69 = !DILocation(line: 41, column: 10, scope: !58)
!70 = !DILocalVariable(name: "dataLen", scope: !71, file: !45, line: 44, type: !72)
!71 = distinct !DILexicalBlock(scope: !58, file: !45, line: 42, column: 5)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !73, line: 46, baseType: !74)
!73 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!74 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!75 = !DILocation(line: 44, column: 16, scope: !71)
!76 = !DILocation(line: 44, column: 33, scope: !71)
!77 = !DILocation(line: 44, column: 26, scope: !71)
!78 = !DILocalVariable(name: "environment", scope: !71, file: !45, line: 45, type: !42)
!79 = !DILocation(line: 45, column: 16, scope: !71)
!80 = !DILocation(line: 45, column: 30, scope: !71)
!81 = !DILocation(line: 47, column: 13, scope: !82)
!82 = distinct !DILexicalBlock(scope: !71, file: !45, line: 47, column: 13)
!83 = !DILocation(line: 47, column: 25, scope: !82)
!84 = !DILocation(line: 47, column: 13, scope: !71)
!85 = !DILocation(line: 50, column: 21, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !45, line: 48, column: 9)
!87 = !DILocation(line: 50, column: 26, scope: !86)
!88 = !DILocation(line: 50, column: 25, scope: !86)
!89 = !DILocation(line: 50, column: 35, scope: !86)
!90 = !DILocation(line: 50, column: 52, scope: !86)
!91 = !DILocation(line: 50, column: 51, scope: !86)
!92 = !DILocation(line: 50, column: 59, scope: !86)
!93 = !DILocation(line: 50, column: 13, scope: !86)
!94 = !DILocation(line: 51, column: 9, scope: !86)
!95 = !DILocation(line: 53, column: 77, scope: !58)
!96 = !DILocation(line: 53, column: 5, scope: !58)
!97 = !DILocation(line: 54, column: 1, scope: !58)
!98 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 62, type: !59, scopeLine: 63, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!99 = !DILocalVariable(name: "data", scope: !98, file: !45, line: 64, type: !42)
!100 = !DILocation(line: 64, column: 12, scope: !98)
!101 = !DILocalVariable(name: "dataBuffer", scope: !98, file: !45, line: 65, type: !64)
!102 = !DILocation(line: 65, column: 10, scope: !98)
!103 = !DILocation(line: 66, column: 12, scope: !98)
!104 = !DILocation(line: 66, column: 10, scope: !98)
!105 = !DILocation(line: 68, column: 12, scope: !98)
!106 = !DILocation(line: 68, column: 5, scope: !98)
!107 = !DILocation(line: 69, column: 81, scope: !98)
!108 = !DILocation(line: 69, column: 5, scope: !98)
!109 = !DILocation(line: 70, column: 1, scope: !98)
!110 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 74, type: !59, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!111 = !DILocalVariable(name: "data", scope: !110, file: !45, line: 76, type: !42)
!112 = !DILocation(line: 76, column: 12, scope: !110)
!113 = !DILocalVariable(name: "dataBuffer", scope: !110, file: !45, line: 77, type: !64)
!114 = !DILocation(line: 77, column: 10, scope: !110)
!115 = !DILocation(line: 78, column: 12, scope: !110)
!116 = !DILocation(line: 78, column: 10, scope: !110)
!117 = !DILocalVariable(name: "dataLen", scope: !118, file: !45, line: 81, type: !72)
!118 = distinct !DILexicalBlock(scope: !110, file: !45, line: 79, column: 5)
!119 = !DILocation(line: 81, column: 16, scope: !118)
!120 = !DILocation(line: 81, column: 33, scope: !118)
!121 = !DILocation(line: 81, column: 26, scope: !118)
!122 = !DILocalVariable(name: "environment", scope: !118, file: !45, line: 82, type: !42)
!123 = !DILocation(line: 82, column: 16, scope: !118)
!124 = !DILocation(line: 82, column: 30, scope: !118)
!125 = !DILocation(line: 84, column: 13, scope: !126)
!126 = distinct !DILexicalBlock(scope: !118, file: !45, line: 84, column: 13)
!127 = !DILocation(line: 84, column: 25, scope: !126)
!128 = !DILocation(line: 84, column: 13, scope: !118)
!129 = !DILocation(line: 87, column: 21, scope: !130)
!130 = distinct !DILexicalBlock(scope: !126, file: !45, line: 85, column: 9)
!131 = !DILocation(line: 87, column: 26, scope: !130)
!132 = !DILocation(line: 87, column: 25, scope: !130)
!133 = !DILocation(line: 87, column: 35, scope: !130)
!134 = !DILocation(line: 87, column: 52, scope: !130)
!135 = !DILocation(line: 87, column: 51, scope: !130)
!136 = !DILocation(line: 87, column: 59, scope: !130)
!137 = !DILocation(line: 87, column: 13, scope: !130)
!138 = !DILocation(line: 88, column: 9, scope: !130)
!139 = !DILocation(line: 90, column: 81, scope: !110)
!140 = !DILocation(line: 90, column: 5, scope: !110)
!141 = !DILocation(line: 91, column: 1, scope: !110)
!142 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_53_good", scope: !45, file: !45, line: 93, type: !59, scopeLine: 94, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!143 = !DILocation(line: 95, column: 5, scope: !142)
!144 = !DILocation(line: 96, column: 5, scope: !142)
!145 = !DILocation(line: 97, column: 1, scope: !142)
!146 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_53b_badSink", scope: !49, file: !49, line: 37, type: !147, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !42}
!149 = !DILocalVariable(name: "data", arg: 1, scope: !146, file: !49, line: 37, type: !42)
!150 = !DILocation(line: 37, column: 85, scope: !146)
!151 = !DILocation(line: 39, column: 77, scope: !146)
!152 = !DILocation(line: 39, column: 5, scope: !146)
!153 = !DILocation(line: 40, column: 1, scope: !146)
!154 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_53b_goodG2BSink", scope: !49, file: !49, line: 49, type: !147, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!155 = !DILocalVariable(name: "data", arg: 1, scope: !154, file: !49, line: 49, type: !42)
!156 = !DILocation(line: 49, column: 89, scope: !154)
!157 = !DILocation(line: 51, column: 81, scope: !154)
!158 = !DILocation(line: 51, column: 5, scope: !154)
!159 = !DILocation(line: 52, column: 1, scope: !154)
!160 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_53b_goodB2GSink", scope: !49, file: !49, line: 57, type: !147, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!161 = !DILocalVariable(name: "data", arg: 1, scope: !160, file: !49, line: 57, type: !42)
!162 = !DILocation(line: 57, column: 89, scope: !160)
!163 = !DILocation(line: 59, column: 81, scope: !160)
!164 = !DILocation(line: 59, column: 5, scope: !160)
!165 = !DILocation(line: 60, column: 1, scope: !160)
!166 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_53c_badSink", scope: !51, file: !51, line: 37, type: !147, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!167 = !DILocalVariable(name: "data", arg: 1, scope: !166, file: !51, line: 37, type: !42)
!168 = !DILocation(line: 37, column: 85, scope: !166)
!169 = !DILocation(line: 39, column: 77, scope: !166)
!170 = !DILocation(line: 39, column: 5, scope: !166)
!171 = !DILocation(line: 40, column: 1, scope: !166)
!172 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_53c_goodG2BSink", scope: !51, file: !51, line: 49, type: !147, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!173 = !DILocalVariable(name: "data", arg: 1, scope: !172, file: !51, line: 49, type: !42)
!174 = !DILocation(line: 49, column: 89, scope: !172)
!175 = !DILocation(line: 51, column: 81, scope: !172)
!176 = !DILocation(line: 51, column: 5, scope: !172)
!177 = !DILocation(line: 52, column: 1, scope: !172)
!178 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_53c_goodB2GSink", scope: !51, file: !51, line: 57, type: !147, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!179 = !DILocalVariable(name: "data", arg: 1, scope: !178, file: !51, line: 57, type: !42)
!180 = !DILocation(line: 57, column: 89, scope: !178)
!181 = !DILocation(line: 59, column: 81, scope: !178)
!182 = !DILocation(line: 59, column: 5, scope: !178)
!183 = !DILocation(line: 60, column: 1, scope: !178)
!184 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_53d_badSink", scope: !53, file: !53, line: 34, type: !147, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!185 = !DILocalVariable(name: "data", arg: 1, scope: !184, file: !53, line: 34, type: !42)
!186 = !DILocation(line: 34, column: 85, scope: !184)
!187 = !DILocation(line: 37, column: 13, scope: !184)
!188 = !DILocation(line: 37, column: 21, scope: !184)
!189 = !DILocation(line: 37, column: 5, scope: !184)
!190 = !DILocation(line: 38, column: 1, scope: !184)
!191 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_53d_goodG2BSink", scope: !53, file: !53, line: 45, type: !147, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!192 = !DILocalVariable(name: "data", arg: 1, scope: !191, file: !53, line: 45, type: !42)
!193 = !DILocation(line: 45, column: 89, scope: !191)
!194 = !DILocation(line: 48, column: 13, scope: !191)
!195 = !DILocation(line: 48, column: 21, scope: !191)
!196 = !DILocation(line: 48, column: 5, scope: !191)
!197 = !DILocation(line: 49, column: 1, scope: !191)
!198 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_53d_goodB2GSink", scope: !53, file: !53, line: 52, type: !147, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!199 = !DILocalVariable(name: "data", arg: 1, scope: !198, file: !53, line: 52, type: !42)
!200 = !DILocation(line: 52, column: 89, scope: !198)
!201 = !DILocation(line: 55, column: 13, scope: !198)
!202 = !DILocation(line: 55, column: 29, scope: !198)
!203 = !DILocation(line: 55, column: 5, scope: !198)
!204 = !DILocation(line: 56, column: 1, scope: !198)
!205 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !147, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!206 = !DILocalVariable(name: "line", arg: 1, scope: !205, file: !3, line: 11, type: !42)
!207 = !DILocation(line: 11, column: 25, scope: !205)
!208 = !DILocation(line: 13, column: 1, scope: !205)
!209 = !DILocation(line: 14, column: 8, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !3, line: 14, column: 8)
!211 = !DILocation(line: 14, column: 13, scope: !210)
!212 = !DILocation(line: 14, column: 8, scope: !205)
!213 = !DILocation(line: 16, column: 24, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !3, line: 15, column: 5)
!215 = !DILocation(line: 16, column: 9, scope: !214)
!216 = !DILocation(line: 17, column: 5, scope: !214)
!217 = !DILocation(line: 18, column: 5, scope: !205)
!218 = !DILocation(line: 19, column: 1, scope: !205)
!219 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !147, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!220 = !DILocalVariable(name: "line", arg: 1, scope: !219, file: !3, line: 20, type: !42)
!221 = !DILocation(line: 20, column: 29, scope: !219)
!222 = !DILocation(line: 22, column: 8, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !3, line: 22, column: 8)
!224 = !DILocation(line: 22, column: 13, scope: !223)
!225 = !DILocation(line: 22, column: 8, scope: !219)
!226 = !DILocation(line: 24, column: 24, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !3, line: 23, column: 5)
!228 = !DILocation(line: 24, column: 9, scope: !227)
!229 = !DILocation(line: 25, column: 5, scope: !227)
!230 = !DILocation(line: 26, column: 1, scope: !219)
!231 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !232, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !234}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !73, line: 74, baseType: !23)
!236 = !DILocalVariable(name: "line", arg: 1, scope: !231, file: !3, line: 27, type: !234)
!237 = !DILocation(line: 27, column: 29, scope: !231)
!238 = !DILocation(line: 29, column: 8, scope: !239)
!239 = distinct !DILexicalBlock(scope: !231, file: !3, line: 29, column: 8)
!240 = !DILocation(line: 29, column: 13, scope: !239)
!241 = !DILocation(line: 29, column: 8, scope: !231)
!242 = !DILocation(line: 31, column: 27, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !3, line: 30, column: 5)
!244 = !DILocation(line: 31, column: 9, scope: !243)
!245 = !DILocation(line: 32, column: 5, scope: !243)
!246 = !DILocation(line: 33, column: 1, scope: !231)
!247 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !248, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !23}
!250 = !DILocalVariable(name: "intNumber", arg: 1, scope: !247, file: !3, line: 35, type: !23)
!251 = !DILocation(line: 35, column: 24, scope: !247)
!252 = !DILocation(line: 37, column: 20, scope: !247)
!253 = !DILocation(line: 37, column: 5, scope: !247)
!254 = !DILocation(line: 38, column: 1, scope: !247)
!255 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !256, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !258}
!258 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!259 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !255, file: !3, line: 40, type: !258)
!260 = !DILocation(line: 40, column: 28, scope: !255)
!261 = !DILocation(line: 42, column: 21, scope: !255)
!262 = !DILocation(line: 42, column: 5, scope: !255)
!263 = !DILocation(line: 43, column: 1, scope: !255)
!264 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !265, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !267}
!267 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!268 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !264, file: !3, line: 45, type: !267)
!269 = !DILocation(line: 45, column: 28, scope: !264)
!270 = !DILocation(line: 47, column: 20, scope: !264)
!271 = !DILocation(line: 47, column: 5, scope: !264)
!272 = !DILocation(line: 48, column: 1, scope: !264)
!273 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !274, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !276}
!276 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!277 = !DILocalVariable(name: "longNumber", arg: 1, scope: !273, file: !3, line: 50, type: !276)
!278 = !DILocation(line: 50, column: 26, scope: !273)
!279 = !DILocation(line: 52, column: 21, scope: !273)
!280 = !DILocation(line: 52, column: 5, scope: !273)
!281 = !DILocation(line: 53, column: 1, scope: !273)
!282 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !283, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !285}
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !286, line: 27, baseType: !287)
!286 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !288, line: 44, baseType: !276)
!288 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!289 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !282, file: !3, line: 55, type: !285)
!290 = !DILocation(line: 55, column: 33, scope: !282)
!291 = !DILocation(line: 57, column: 29, scope: !282)
!292 = !DILocation(line: 57, column: 5, scope: !282)
!293 = !DILocation(line: 58, column: 1, scope: !282)
!294 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !295, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !72}
!297 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !294, file: !3, line: 60, type: !72)
!298 = !DILocation(line: 60, column: 29, scope: !294)
!299 = !DILocation(line: 62, column: 21, scope: !294)
!300 = !DILocation(line: 62, column: 5, scope: !294)
!301 = !DILocation(line: 63, column: 1, scope: !294)
!302 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !303, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !43}
!305 = !DILocalVariable(name: "charHex", arg: 1, scope: !302, file: !3, line: 65, type: !43)
!306 = !DILocation(line: 65, column: 29, scope: !302)
!307 = !DILocation(line: 67, column: 22, scope: !302)
!308 = !DILocation(line: 67, column: 5, scope: !302)
!309 = !DILocation(line: 68, column: 1, scope: !302)
!310 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !311, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !235}
!313 = !DILocalVariable(name: "wideChar", arg: 1, scope: !310, file: !3, line: 70, type: !235)
!314 = !DILocation(line: 70, column: 29, scope: !310)
!315 = !DILocalVariable(name: "s", scope: !310, file: !3, line: 74, type: !316)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 64, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 2)
!319 = !DILocation(line: 74, column: 13, scope: !310)
!320 = !DILocation(line: 75, column: 16, scope: !310)
!321 = !DILocation(line: 75, column: 9, scope: !310)
!322 = !DILocation(line: 75, column: 14, scope: !310)
!323 = !DILocation(line: 76, column: 9, scope: !310)
!324 = !DILocation(line: 76, column: 14, scope: !310)
!325 = !DILocation(line: 77, column: 21, scope: !310)
!326 = !DILocation(line: 77, column: 5, scope: !310)
!327 = !DILocation(line: 78, column: 1, scope: !310)
!328 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !329, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !7}
!331 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !328, file: !3, line: 80, type: !7)
!332 = !DILocation(line: 80, column: 33, scope: !328)
!333 = !DILocation(line: 82, column: 20, scope: !328)
!334 = !DILocation(line: 82, column: 5, scope: !328)
!335 = !DILocation(line: 83, column: 1, scope: !328)
!336 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !337, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !25}
!339 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !336, file: !3, line: 85, type: !25)
!340 = !DILocation(line: 85, column: 45, scope: !336)
!341 = !DILocation(line: 87, column: 22, scope: !336)
!342 = !DILocation(line: 87, column: 5, scope: !336)
!343 = !DILocation(line: 88, column: 1, scope: !336)
!344 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !345, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !347}
!347 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!348 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !344, file: !3, line: 90, type: !347)
!349 = !DILocation(line: 90, column: 29, scope: !344)
!350 = !DILocation(line: 92, column: 20, scope: !344)
!351 = !DILocation(line: 92, column: 5, scope: !344)
!352 = !DILocation(line: 93, column: 1, scope: !344)
!353 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !354, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !356}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !358, line: 100, baseType: !359)
!358 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_705/source_code")
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !358, line: 96, size: 64, elements: !360)
!360 = !{!361, !362}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !359, file: !358, line: 98, baseType: !23, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !359, file: !358, line: 99, baseType: !23, size: 32, offset: 32)
!363 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !353, file: !3, line: 95, type: !356)
!364 = !DILocation(line: 95, column: 40, scope: !353)
!365 = !DILocation(line: 97, column: 26, scope: !353)
!366 = !DILocation(line: 97, column: 47, scope: !353)
!367 = !DILocation(line: 97, column: 55, scope: !353)
!368 = !DILocation(line: 97, column: 76, scope: !353)
!369 = !DILocation(line: 97, column: 5, scope: !353)
!370 = !DILocation(line: 98, column: 1, scope: !353)
!371 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !372, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !374, !72}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!375 = !DILocalVariable(name: "bytes", arg: 1, scope: !371, file: !3, line: 100, type: !374)
!376 = !DILocation(line: 100, column: 38, scope: !371)
!377 = !DILocalVariable(name: "numBytes", arg: 2, scope: !371, file: !3, line: 100, type: !72)
!378 = !DILocation(line: 100, column: 52, scope: !371)
!379 = !DILocalVariable(name: "i", scope: !371, file: !3, line: 102, type: !72)
!380 = !DILocation(line: 102, column: 12, scope: !371)
!381 = !DILocation(line: 103, column: 12, scope: !382)
!382 = distinct !DILexicalBlock(scope: !371, file: !3, line: 103, column: 5)
!383 = !DILocation(line: 103, column: 10, scope: !382)
!384 = !DILocation(line: 103, column: 17, scope: !385)
!385 = distinct !DILexicalBlock(scope: !382, file: !3, line: 103, column: 5)
!386 = !DILocation(line: 103, column: 21, scope: !385)
!387 = !DILocation(line: 103, column: 19, scope: !385)
!388 = !DILocation(line: 103, column: 5, scope: !382)
!389 = !DILocation(line: 105, column: 24, scope: !390)
!390 = distinct !DILexicalBlock(scope: !385, file: !3, line: 104, column: 5)
!391 = !DILocation(line: 105, column: 30, scope: !390)
!392 = !DILocation(line: 105, column: 9, scope: !390)
!393 = !DILocation(line: 106, column: 5, scope: !390)
!394 = !DILocation(line: 103, column: 31, scope: !385)
!395 = !DILocation(line: 103, column: 5, scope: !385)
!396 = distinct !{!396, !388, !397, !398}
!397 = !DILocation(line: 106, column: 5, scope: !382)
!398 = !{!"llvm.loop.mustprogress"}
!399 = !DILocation(line: 107, column: 5, scope: !371)
!400 = !DILocation(line: 108, column: 1, scope: !371)
!401 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !402, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!402 = !DISubroutineType(types: !403)
!403 = !{!72, !374, !72, !42}
!404 = !DILocalVariable(name: "bytes", arg: 1, scope: !401, file: !3, line: 113, type: !374)
!405 = !DILocation(line: 113, column: 39, scope: !401)
!406 = !DILocalVariable(name: "numBytes", arg: 2, scope: !401, file: !3, line: 113, type: !72)
!407 = !DILocation(line: 113, column: 53, scope: !401)
!408 = !DILocalVariable(name: "hex", arg: 3, scope: !401, file: !3, line: 113, type: !42)
!409 = !DILocation(line: 113, column: 71, scope: !401)
!410 = !DILocalVariable(name: "numWritten", scope: !401, file: !3, line: 115, type: !72)
!411 = !DILocation(line: 115, column: 12, scope: !401)
!412 = !DILocation(line: 121, column: 5, scope: !401)
!413 = !DILocation(line: 121, column: 12, scope: !401)
!414 = !DILocation(line: 121, column: 25, scope: !401)
!415 = !DILocation(line: 121, column: 23, scope: !401)
!416 = !DILocation(line: 121, column: 34, scope: !401)
!417 = !DILocation(line: 121, column: 37, scope: !401)
!418 = !DILocation(line: 121, column: 67, scope: !401)
!419 = !DILocation(line: 121, column: 70, scope: !401)
!420 = !DILocation(line: 0, scope: !401)
!421 = !DILocalVariable(name: "byte", scope: !422, file: !3, line: 123, type: !23)
!422 = distinct !DILexicalBlock(scope: !401, file: !3, line: 122, column: 5)
!423 = !DILocation(line: 123, column: 13, scope: !422)
!424 = !DILocation(line: 124, column: 17, scope: !422)
!425 = !DILocation(line: 124, column: 25, scope: !422)
!426 = !DILocation(line: 124, column: 23, scope: !422)
!427 = !DILocation(line: 124, column: 9, scope: !422)
!428 = !DILocation(line: 125, column: 45, scope: !422)
!429 = !DILocation(line: 125, column: 29, scope: !422)
!430 = !DILocation(line: 125, column: 9, scope: !422)
!431 = !DILocation(line: 125, column: 15, scope: !422)
!432 = !DILocation(line: 125, column: 27, scope: !422)
!433 = !DILocation(line: 126, column: 9, scope: !422)
!434 = distinct !{!434, !412, !435, !398}
!435 = !DILocation(line: 127, column: 5, scope: !401)
!436 = !DILocation(line: 129, column: 12, scope: !401)
!437 = !DILocation(line: 129, column: 5, scope: !401)
!438 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !439, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!439 = !DISubroutineType(types: !440)
!440 = !{!72, !374, !72, !234}
!441 = !DILocalVariable(name: "bytes", arg: 1, scope: !438, file: !3, line: 135, type: !374)
!442 = !DILocation(line: 135, column: 41, scope: !438)
!443 = !DILocalVariable(name: "numBytes", arg: 2, scope: !438, file: !3, line: 135, type: !72)
!444 = !DILocation(line: 135, column: 55, scope: !438)
!445 = !DILocalVariable(name: "hex", arg: 3, scope: !438, file: !3, line: 135, type: !234)
!446 = !DILocation(line: 135, column: 76, scope: !438)
!447 = !DILocalVariable(name: "numWritten", scope: !438, file: !3, line: 137, type: !72)
!448 = !DILocation(line: 137, column: 12, scope: !438)
!449 = !DILocation(line: 143, column: 5, scope: !438)
!450 = !DILocation(line: 143, column: 12, scope: !438)
!451 = !DILocation(line: 143, column: 25, scope: !438)
!452 = !DILocation(line: 143, column: 23, scope: !438)
!453 = !DILocation(line: 143, column: 34, scope: !438)
!454 = !DILocation(line: 143, column: 47, scope: !438)
!455 = !DILocation(line: 143, column: 55, scope: !438)
!456 = !DILocation(line: 143, column: 53, scope: !438)
!457 = !DILocation(line: 143, column: 37, scope: !438)
!458 = !DILocation(line: 143, column: 68, scope: !438)
!459 = !DILocation(line: 143, column: 81, scope: !438)
!460 = !DILocation(line: 143, column: 89, scope: !438)
!461 = !DILocation(line: 143, column: 87, scope: !438)
!462 = !DILocation(line: 143, column: 100, scope: !438)
!463 = !DILocation(line: 143, column: 71, scope: !438)
!464 = !DILocation(line: 0, scope: !438)
!465 = !DILocalVariable(name: "byte", scope: !466, file: !3, line: 145, type: !23)
!466 = distinct !DILexicalBlock(scope: !438, file: !3, line: 144, column: 5)
!467 = !DILocation(line: 145, column: 13, scope: !466)
!468 = !DILocation(line: 146, column: 18, scope: !466)
!469 = !DILocation(line: 146, column: 26, scope: !466)
!470 = !DILocation(line: 146, column: 24, scope: !466)
!471 = !DILocation(line: 146, column: 9, scope: !466)
!472 = !DILocation(line: 147, column: 45, scope: !466)
!473 = !DILocation(line: 147, column: 29, scope: !466)
!474 = !DILocation(line: 147, column: 9, scope: !466)
!475 = !DILocation(line: 147, column: 15, scope: !466)
!476 = !DILocation(line: 147, column: 27, scope: !466)
!477 = !DILocation(line: 148, column: 9, scope: !466)
!478 = distinct !{!478, !449, !479, !398}
!479 = !DILocation(line: 149, column: 5, scope: !438)
!480 = !DILocation(line: 151, column: 12, scope: !438)
!481 = !DILocation(line: 151, column: 5, scope: !438)
!482 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !483, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!483 = !DISubroutineType(types: !484)
!484 = !{!23}
!485 = !DILocation(line: 158, column: 5, scope: !482)
!486 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !483, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!487 = !DILocation(line: 163, column: 5, scope: !486)
!488 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !483, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!489 = !DILocation(line: 168, column: 13, scope: !488)
!490 = !DILocation(line: 168, column: 20, scope: !488)
!491 = !DILocation(line: 168, column: 5, scope: !488)
!492 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !59, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!493 = !DILocation(line: 187, column: 16, scope: !492)
!494 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !59, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!495 = !DILocation(line: 188, column: 16, scope: !494)
!496 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !59, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!497 = !DILocation(line: 189, column: 16, scope: !496)
!498 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !59, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!499 = !DILocation(line: 190, column: 16, scope: !498)
!500 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !59, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!501 = !DILocation(line: 191, column: 16, scope: !500)
!502 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !59, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!503 = !DILocation(line: 192, column: 16, scope: !502)
!504 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !59, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!505 = !DILocation(line: 193, column: 16, scope: !504)
!506 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !59, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!507 = !DILocation(line: 194, column: 16, scope: !506)
!508 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !59, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!509 = !DILocation(line: 195, column: 16, scope: !508)
!510 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !59, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!511 = !DILocation(line: 198, column: 15, scope: !510)
!512 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !59, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!513 = !DILocation(line: 199, column: 15, scope: !512)
!514 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !59, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!515 = !DILocation(line: 200, column: 15, scope: !514)
!516 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !59, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!517 = !DILocation(line: 201, column: 15, scope: !516)
!518 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !59, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!519 = !DILocation(line: 202, column: 15, scope: !518)
!520 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !59, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!521 = !DILocation(line: 203, column: 15, scope: !520)
!522 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !59, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!523 = !DILocation(line: 204, column: 15, scope: !522)
!524 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !59, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!525 = !DILocation(line: 205, column: 15, scope: !524)
!526 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !59, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!527 = !DILocation(line: 206, column: 15, scope: !526)
