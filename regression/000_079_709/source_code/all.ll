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
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.8 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7.10 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8.11 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_63_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !59, metadata !DIExpression()), !dbg !63
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !63
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !63
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !64
  store i8* %arraydecay, i8** %data, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !66, metadata !DIExpression()), !dbg !71
  %1 = load i8*, i8** %data, align 8, !dbg !72
  %call = call i64 @strlen(i8* %1) #7, !dbg !73
  store i64 %call, i64* %dataLen, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !74, metadata !DIExpression()), !dbg !75
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !76
  store i8* %call1, i8** %environment, align 8, !dbg !75
  %2 = load i8*, i8** %environment, align 8, !dbg !77
  %cmp = icmp ne i8* %2, null, !dbg !79
  br i1 %cmp, label %if.then, label %if.end, !dbg !80

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !81
  %4 = load i64, i64* %dataLen, align 8, !dbg !83
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !84
  %5 = load i8*, i8** %environment, align 8, !dbg !85
  %6 = load i64, i64* %dataLen, align 8, !dbg !86
  %sub = sub i64 100, %6, !dbg !87
  %sub2 = sub i64 %sub, 1, !dbg !88
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !89
  br label %if.end, !dbg !90

if.end:                                           ; preds = %if.then, %entry
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_63b_badSink(i8** %data), !dbg !91
  ret void, !dbg !92
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
define dso_local void @goodG2B() #0 !dbg !93 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !96, metadata !DIExpression()), !dbg !97
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !97
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !97
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !98
  store i8* %arraydecay, i8** %data, align 8, !dbg !99
  %1 = load i8*, i8** %data, align 8, !dbg !100
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !101
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_63b_goodG2BSink(i8** %data), !dbg !102
  ret void, !dbg !103
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !104 {
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
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_63b_goodB2GSink(i8** %data), !dbg !133
  ret void, !dbg !134
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_63_good() #0 !dbg !135 {
entry:
  call void @goodG2B(), !dbg !136
  call void @goodB2G(), !dbg !137
  ret void, !dbg !138
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_63b_badSink(i8** %dataPtr) #0 !dbg !139 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i8** %data, metadata !144, metadata !DIExpression()), !dbg !145
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !146
  %1 = load i8*, i8** %0, align 8, !dbg !147
  store i8* %1, i8** %data, align 8, !dbg !145
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !148
  %3 = load i8*, i8** %data, align 8, !dbg !149
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !150
  ret void, !dbg !151
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_63b_goodG2BSink(i8** %dataPtr) #0 !dbg !152 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata i8** %data, metadata !155, metadata !DIExpression()), !dbg !156
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !157
  %1 = load i8*, i8** %0, align 8, !dbg !158
  store i8* %1, i8** %data, align 8, !dbg !156
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !159
  %3 = load i8*, i8** %data, align 8, !dbg !160
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !161
  ret void, !dbg !162
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_63b_goodB2GSink(i8** %dataPtr) #0 !dbg !163 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata i8** %data, metadata !166, metadata !DIExpression()), !dbg !167
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !168
  %1 = load i8*, i8** %0, align 8, !dbg !169
  store i8* %1, i8** %data, align 8, !dbg !167
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !170
  %3 = load i8*, i8** %data, align 8, !dbg !171
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %3), !dbg !172
  ret void, !dbg !173
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !174 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !177, metadata !DIExpression()), !dbg !178
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !179
  %0 = load i8*, i8** %line.addr, align 8, !dbg !180
  %cmp = icmp ne i8* %0, null, !dbg !182
  br i1 %cmp, label %if.then, label %if.end, !dbg !183

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !184
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !186
  br label %if.end, !dbg !187

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !188
  ret void, !dbg !189
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !190 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !191, metadata !DIExpression()), !dbg !192
  %0 = load i8*, i8** %line.addr, align 8, !dbg !193
  %cmp = icmp ne i8* %0, null, !dbg !195
  br i1 %cmp, label %if.then, label %if.end, !dbg !196

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !197
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !199
  br label %if.end, !dbg !200

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !201
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !202 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !207, metadata !DIExpression()), !dbg !208
  %0 = load i32*, i32** %line.addr, align 8, !dbg !209
  %cmp = icmp ne i32* %0, null, !dbg !211
  br i1 %cmp, label %if.then, label %if.end, !dbg !212

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !213
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !215
  br label %if.end, !dbg !216

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !217
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !218 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !221, metadata !DIExpression()), !dbg !222
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !223
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !224
  ret void, !dbg !225
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !226 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !230, metadata !DIExpression()), !dbg !231
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !232
  %conv = sext i16 %0 to i32, !dbg !232
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !233
  ret void, !dbg !234
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !235 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !239, metadata !DIExpression()), !dbg !240
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !241
  %conv = fpext float %0 to double, !dbg !241
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !242
  ret void, !dbg !243
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !244 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !248, metadata !DIExpression()), !dbg !249
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !250
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.10, i64 0, i64 0), i64 %0), !dbg !251
  ret void, !dbg !252
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !253 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !260, metadata !DIExpression()), !dbg !261
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !262
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.10, i64 0, i64 0), i64 %0), !dbg !263
  ret void, !dbg !264
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !265 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !268, metadata !DIExpression()), !dbg !269
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !270
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.11, i64 0, i64 0), i64 %0), !dbg !271
  ret void, !dbg !272
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !273 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !276, metadata !DIExpression()), !dbg !277
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !278
  %conv = sext i8 %0 to i32, !dbg !278
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !279
  ret void, !dbg !280
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !281 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !286, metadata !DIExpression()), !dbg !290
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !291
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !292
  store i32 %0, i32* %arrayidx, align 4, !dbg !293
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !294
  store i32 0, i32* %arrayidx1, align 4, !dbg !295
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !296
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !297
  ret void, !dbg !298
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !299 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !302, metadata !DIExpression()), !dbg !303
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !304
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !305
  ret void, !dbg !306
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !307 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !310, metadata !DIExpression()), !dbg !311
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !312
  %conv = zext i8 %0 to i32, !dbg !312
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !313
  ret void, !dbg !314
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !315 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !319, metadata !DIExpression()), !dbg !320
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !321
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !322
  ret void, !dbg !323
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !324 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !334, metadata !DIExpression()), !dbg !335
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !336
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !337
  %1 = load i32, i32* %intOne, align 4, !dbg !337
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !338
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !339
  %3 = load i32, i32* %intTwo, align 4, !dbg !339
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !340
  ret void, !dbg !341
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !342 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !346, metadata !DIExpression()), !dbg !347
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !348, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.declare(metadata i64* %i, metadata !350, metadata !DIExpression()), !dbg !351
  store i64 0, i64* %i, align 8, !dbg !352
  br label %for.cond, !dbg !354

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !355
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !357
  %cmp = icmp ult i64 %0, %1, !dbg !358
  br i1 %cmp, label %for.body, label %for.end, !dbg !359

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !360
  %3 = load i64, i64* %i, align 8, !dbg !362
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !360
  %4 = load i8, i8* %arrayidx, align 1, !dbg !360
  %conv = zext i8 %4 to i32, !dbg !360
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !363
  br label %for.inc, !dbg !364

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !365
  %inc = add i64 %5, 1, !dbg !365
  store i64 %inc, i64* %i, align 8, !dbg !365
  br label %for.cond, !dbg !366, !llvm.loop !367

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !370
  ret void, !dbg !371
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !372 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !375, metadata !DIExpression()), !dbg !376
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !377, metadata !DIExpression()), !dbg !378
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !379, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !381, metadata !DIExpression()), !dbg !382
  store i64 0, i64* %numWritten, align 8, !dbg !382
  br label %while.cond, !dbg !383

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !384
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !385
  %cmp = icmp ult i64 %0, %1, !dbg !386
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !387

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !388
  %2 = load i16*, i16** %call, align 8, !dbg !388
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !388
  %4 = load i64, i64* %numWritten, align 8, !dbg !388
  %mul = mul i64 2, %4, !dbg !388
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !388
  %5 = load i8, i8* %arrayidx, align 1, !dbg !388
  %conv = sext i8 %5 to i32, !dbg !388
  %idxprom = sext i32 %conv to i64, !dbg !388
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !388
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !388
  %conv2 = zext i16 %6 to i32, !dbg !388
  %and = and i32 %conv2, 4096, !dbg !388
  %tobool = icmp ne i32 %and, 0, !dbg !388
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !389

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !390
  %7 = load i16*, i16** %call3, align 8, !dbg !390
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !390
  %9 = load i64, i64* %numWritten, align 8, !dbg !390
  %mul4 = mul i64 2, %9, !dbg !390
  %add = add i64 %mul4, 1, !dbg !390
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !390
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !390
  %conv6 = sext i8 %10 to i32, !dbg !390
  %idxprom7 = sext i32 %conv6 to i64, !dbg !390
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !390
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !390
  %conv9 = zext i16 %11 to i32, !dbg !390
  %and10 = and i32 %conv9, 4096, !dbg !390
  %tobool11 = icmp ne i32 %and10, 0, !dbg !389
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !391
  br i1 %12, label %while.body, label %while.end, !dbg !383

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !392, metadata !DIExpression()), !dbg !394
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !395
  %14 = load i64, i64* %numWritten, align 8, !dbg !396
  %mul12 = mul i64 2, %14, !dbg !397
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !395
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !398
  %15 = load i32, i32* %byte, align 4, !dbg !399
  %conv15 = trunc i32 %15 to i8, !dbg !400
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !401
  %17 = load i64, i64* %numWritten, align 8, !dbg !402
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !401
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !403
  %18 = load i64, i64* %numWritten, align 8, !dbg !404
  %inc = add i64 %18, 1, !dbg !404
  store i64 %inc, i64* %numWritten, align 8, !dbg !404
  br label %while.cond, !dbg !383, !llvm.loop !405

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !407
  ret i64 %19, !dbg !408
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !409 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !412, metadata !DIExpression()), !dbg !413
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !414, metadata !DIExpression()), !dbg !415
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !416, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !418, metadata !DIExpression()), !dbg !419
  store i64 0, i64* %numWritten, align 8, !dbg !419
  br label %while.cond, !dbg !420

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !421
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !422
  %cmp = icmp ult i64 %0, %1, !dbg !423
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !424

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !425
  %3 = load i64, i64* %numWritten, align 8, !dbg !426
  %mul = mul i64 2, %3, !dbg !427
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !425
  %4 = load i32, i32* %arrayidx, align 4, !dbg !425
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !428
  %tobool = icmp ne i32 %call, 0, !dbg !428
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !429

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !430
  %6 = load i64, i64* %numWritten, align 8, !dbg !431
  %mul1 = mul i64 2, %6, !dbg !432
  %add = add i64 %mul1, 1, !dbg !433
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !430
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !430
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !434
  %tobool4 = icmp ne i32 %call3, 0, !dbg !429
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !435
  br i1 %8, label %while.body, label %while.end, !dbg !420

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !436, metadata !DIExpression()), !dbg !438
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !439
  %10 = load i64, i64* %numWritten, align 8, !dbg !440
  %mul5 = mul i64 2, %10, !dbg !441
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !439
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !442
  %11 = load i32, i32* %byte, align 4, !dbg !443
  %conv = trunc i32 %11 to i8, !dbg !444
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !445
  %13 = load i64, i64* %numWritten, align 8, !dbg !446
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !445
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !447
  %14 = load i64, i64* %numWritten, align 8, !dbg !448
  %inc = add i64 %14, 1, !dbg !448
  store i64 %inc, i64* %numWritten, align 8, !dbg !448
  br label %while.cond, !dbg !420, !llvm.loop !449

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !451
  ret i64 %15, !dbg !452
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !453 {
entry:
  ret i32 1, !dbg !456
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !457 {
entry:
  ret i32 0, !dbg !458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !459 {
entry:
  %call = call i32 @rand() #8, !dbg !460
  %rem = srem i32 %call, 2, !dbg !461
  ret i32 %rem, !dbg !462
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !463 {
entry:
  ret void, !dbg !464
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !465 {
entry:
  ret void, !dbg !466
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !467 {
entry:
  ret void, !dbg !468
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !469 {
entry:
  ret void, !dbg !470
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !471 {
entry:
  ret void, !dbg !472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !473 {
entry:
  ret void, !dbg !474
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !475 {
entry:
  ret void, !dbg !476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !477 {
entry:
  ret void, !dbg !478
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !479 {
entry:
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !481 {
entry:
  ret void, !dbg !482
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !483 {
entry:
  ret void, !dbg !484
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !485 {
entry:
  ret void, !dbg !486
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !487 {
entry:
  ret void, !dbg !488
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !489 {
entry:
  ret void, !dbg !490
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !491 {
entry:
  ret void, !dbg !492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !493 {
entry:
  ret void, !dbg !494
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !495 {
entry:
  ret void, !dbg !496
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !497 {
entry:
  ret void, !dbg !498
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

!llvm.dbg.cu = !{!44, !48, !2}
!llvm.ident = !{!50, !50, !50}
!llvm.module.flags = !{!51, !52, !53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_709/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_63a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_709/source_code")
!46 = !{}
!47 = !{!22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_63b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_709/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_63_bad", scope: !45, file: !45, line: 37, type: !55, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 39, type: !42)
!58 = !DILocation(line: 39, column: 12, scope: !54)
!59 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 40, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 100)
!63 = !DILocation(line: 40, column: 10, scope: !54)
!64 = !DILocation(line: 41, column: 12, scope: !54)
!65 = !DILocation(line: 41, column: 10, scope: !54)
!66 = !DILocalVariable(name: "dataLen", scope: !67, file: !45, line: 44, type: !68)
!67 = distinct !DILexicalBlock(scope: !54, file: !45, line: 42, column: 5)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DILocation(line: 44, column: 16, scope: !67)
!72 = !DILocation(line: 44, column: 33, scope: !67)
!73 = !DILocation(line: 44, column: 26, scope: !67)
!74 = !DILocalVariable(name: "environment", scope: !67, file: !45, line: 45, type: !42)
!75 = !DILocation(line: 45, column: 16, scope: !67)
!76 = !DILocation(line: 45, column: 30, scope: !67)
!77 = !DILocation(line: 47, column: 13, scope: !78)
!78 = distinct !DILexicalBlock(scope: !67, file: !45, line: 47, column: 13)
!79 = !DILocation(line: 47, column: 25, scope: !78)
!80 = !DILocation(line: 47, column: 13, scope: !67)
!81 = !DILocation(line: 50, column: 21, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !45, line: 48, column: 9)
!83 = !DILocation(line: 50, column: 26, scope: !82)
!84 = !DILocation(line: 50, column: 25, scope: !82)
!85 = !DILocation(line: 50, column: 35, scope: !82)
!86 = !DILocation(line: 50, column: 52, scope: !82)
!87 = !DILocation(line: 50, column: 51, scope: !82)
!88 = !DILocation(line: 50, column: 59, scope: !82)
!89 = !DILocation(line: 50, column: 13, scope: !82)
!90 = !DILocation(line: 51, column: 9, scope: !82)
!91 = !DILocation(line: 53, column: 5, scope: !54)
!92 = !DILocation(line: 54, column: 1, scope: !54)
!93 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 62, type: !55, scopeLine: 63, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!94 = !DILocalVariable(name: "data", scope: !93, file: !45, line: 64, type: !42)
!95 = !DILocation(line: 64, column: 12, scope: !93)
!96 = !DILocalVariable(name: "dataBuffer", scope: !93, file: !45, line: 65, type: !60)
!97 = !DILocation(line: 65, column: 10, scope: !93)
!98 = !DILocation(line: 66, column: 12, scope: !93)
!99 = !DILocation(line: 66, column: 10, scope: !93)
!100 = !DILocation(line: 68, column: 12, scope: !93)
!101 = !DILocation(line: 68, column: 5, scope: !93)
!102 = !DILocation(line: 69, column: 5, scope: !93)
!103 = !DILocation(line: 70, column: 1, scope: !93)
!104 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 74, type: !55, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!105 = !DILocalVariable(name: "data", scope: !104, file: !45, line: 76, type: !42)
!106 = !DILocation(line: 76, column: 12, scope: !104)
!107 = !DILocalVariable(name: "dataBuffer", scope: !104, file: !45, line: 77, type: !60)
!108 = !DILocation(line: 77, column: 10, scope: !104)
!109 = !DILocation(line: 78, column: 12, scope: !104)
!110 = !DILocation(line: 78, column: 10, scope: !104)
!111 = !DILocalVariable(name: "dataLen", scope: !112, file: !45, line: 81, type: !68)
!112 = distinct !DILexicalBlock(scope: !104, file: !45, line: 79, column: 5)
!113 = !DILocation(line: 81, column: 16, scope: !112)
!114 = !DILocation(line: 81, column: 33, scope: !112)
!115 = !DILocation(line: 81, column: 26, scope: !112)
!116 = !DILocalVariable(name: "environment", scope: !112, file: !45, line: 82, type: !42)
!117 = !DILocation(line: 82, column: 16, scope: !112)
!118 = !DILocation(line: 82, column: 30, scope: !112)
!119 = !DILocation(line: 84, column: 13, scope: !120)
!120 = distinct !DILexicalBlock(scope: !112, file: !45, line: 84, column: 13)
!121 = !DILocation(line: 84, column: 25, scope: !120)
!122 = !DILocation(line: 84, column: 13, scope: !112)
!123 = !DILocation(line: 87, column: 21, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !45, line: 85, column: 9)
!125 = !DILocation(line: 87, column: 26, scope: !124)
!126 = !DILocation(line: 87, column: 25, scope: !124)
!127 = !DILocation(line: 87, column: 35, scope: !124)
!128 = !DILocation(line: 87, column: 52, scope: !124)
!129 = !DILocation(line: 87, column: 51, scope: !124)
!130 = !DILocation(line: 87, column: 59, scope: !124)
!131 = !DILocation(line: 87, column: 13, scope: !124)
!132 = !DILocation(line: 88, column: 9, scope: !124)
!133 = !DILocation(line: 90, column: 5, scope: !104)
!134 = !DILocation(line: 91, column: 1, scope: !104)
!135 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_63_good", scope: !45, file: !45, line: 93, type: !55, scopeLine: 94, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!136 = !DILocation(line: 95, column: 5, scope: !135)
!137 = !DILocation(line: 96, column: 5, scope: !135)
!138 = !DILocation(line: 97, column: 1, scope: !135)
!139 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_63b_badSink", scope: !49, file: !49, line: 34, type: !140, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !41}
!142 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !139, file: !49, line: 34, type: !41)
!143 = !DILocation(line: 34, column: 87, scope: !139)
!144 = !DILocalVariable(name: "data", scope: !139, file: !49, line: 36, type: !42)
!145 = !DILocation(line: 36, column: 12, scope: !139)
!146 = !DILocation(line: 36, column: 20, scope: !139)
!147 = !DILocation(line: 36, column: 19, scope: !139)
!148 = !DILocation(line: 38, column: 13, scope: !139)
!149 = !DILocation(line: 38, column: 21, scope: !139)
!150 = !DILocation(line: 38, column: 5, scope: !139)
!151 = !DILocation(line: 39, column: 1, scope: !139)
!152 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_63b_goodG2BSink", scope: !49, file: !49, line: 46, type: !140, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!153 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !152, file: !49, line: 46, type: !41)
!154 = !DILocation(line: 46, column: 91, scope: !152)
!155 = !DILocalVariable(name: "data", scope: !152, file: !49, line: 48, type: !42)
!156 = !DILocation(line: 48, column: 12, scope: !152)
!157 = !DILocation(line: 48, column: 20, scope: !152)
!158 = !DILocation(line: 48, column: 19, scope: !152)
!159 = !DILocation(line: 50, column: 13, scope: !152)
!160 = !DILocation(line: 50, column: 21, scope: !152)
!161 = !DILocation(line: 50, column: 5, scope: !152)
!162 = !DILocation(line: 51, column: 1, scope: !152)
!163 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_63b_goodB2GSink", scope: !49, file: !49, line: 54, type: !140, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!164 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !163, file: !49, line: 54, type: !41)
!165 = !DILocation(line: 54, column: 91, scope: !163)
!166 = !DILocalVariable(name: "data", scope: !163, file: !49, line: 56, type: !42)
!167 = !DILocation(line: 56, column: 12, scope: !163)
!168 = !DILocation(line: 56, column: 20, scope: !163)
!169 = !DILocation(line: 56, column: 19, scope: !163)
!170 = !DILocation(line: 58, column: 13, scope: !163)
!171 = !DILocation(line: 58, column: 29, scope: !163)
!172 = !DILocation(line: 58, column: 5, scope: !163)
!173 = !DILocation(line: 59, column: 1, scope: !163)
!174 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !175, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !42}
!177 = !DILocalVariable(name: "line", arg: 1, scope: !174, file: !3, line: 11, type: !42)
!178 = !DILocation(line: 11, column: 25, scope: !174)
!179 = !DILocation(line: 13, column: 1, scope: !174)
!180 = !DILocation(line: 14, column: 8, scope: !181)
!181 = distinct !DILexicalBlock(scope: !174, file: !3, line: 14, column: 8)
!182 = !DILocation(line: 14, column: 13, scope: !181)
!183 = !DILocation(line: 14, column: 8, scope: !174)
!184 = !DILocation(line: 16, column: 24, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !3, line: 15, column: 5)
!186 = !DILocation(line: 16, column: 9, scope: !185)
!187 = !DILocation(line: 17, column: 5, scope: !185)
!188 = !DILocation(line: 18, column: 5, scope: !174)
!189 = !DILocation(line: 19, column: 1, scope: !174)
!190 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !175, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!191 = !DILocalVariable(name: "line", arg: 1, scope: !190, file: !3, line: 20, type: !42)
!192 = !DILocation(line: 20, column: 29, scope: !190)
!193 = !DILocation(line: 22, column: 8, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !3, line: 22, column: 8)
!195 = !DILocation(line: 22, column: 13, scope: !194)
!196 = !DILocation(line: 22, column: 8, scope: !190)
!197 = !DILocation(line: 24, column: 24, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !3, line: 23, column: 5)
!199 = !DILocation(line: 24, column: 9, scope: !198)
!200 = !DILocation(line: 25, column: 5, scope: !198)
!201 = !DILocation(line: 26, column: 1, scope: !190)
!202 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !203, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !23)
!207 = !DILocalVariable(name: "line", arg: 1, scope: !202, file: !3, line: 27, type: !205)
!208 = !DILocation(line: 27, column: 29, scope: !202)
!209 = !DILocation(line: 29, column: 8, scope: !210)
!210 = distinct !DILexicalBlock(scope: !202, file: !3, line: 29, column: 8)
!211 = !DILocation(line: 29, column: 13, scope: !210)
!212 = !DILocation(line: 29, column: 8, scope: !202)
!213 = !DILocation(line: 31, column: 27, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !3, line: 30, column: 5)
!215 = !DILocation(line: 31, column: 9, scope: !214)
!216 = !DILocation(line: 32, column: 5, scope: !214)
!217 = !DILocation(line: 33, column: 1, scope: !202)
!218 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !219, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !23}
!221 = !DILocalVariable(name: "intNumber", arg: 1, scope: !218, file: !3, line: 35, type: !23)
!222 = !DILocation(line: 35, column: 24, scope: !218)
!223 = !DILocation(line: 37, column: 20, scope: !218)
!224 = !DILocation(line: 37, column: 5, scope: !218)
!225 = !DILocation(line: 38, column: 1, scope: !218)
!226 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !227, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !229}
!229 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!230 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !226, file: !3, line: 40, type: !229)
!231 = !DILocation(line: 40, column: 28, scope: !226)
!232 = !DILocation(line: 42, column: 21, scope: !226)
!233 = !DILocation(line: 42, column: 5, scope: !226)
!234 = !DILocation(line: 43, column: 1, scope: !226)
!235 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !236, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !238}
!238 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!239 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !235, file: !3, line: 45, type: !238)
!240 = !DILocation(line: 45, column: 28, scope: !235)
!241 = !DILocation(line: 47, column: 20, scope: !235)
!242 = !DILocation(line: 47, column: 5, scope: !235)
!243 = !DILocation(line: 48, column: 1, scope: !235)
!244 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !245, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !247}
!247 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!248 = !DILocalVariable(name: "longNumber", arg: 1, scope: !244, file: !3, line: 50, type: !247)
!249 = !DILocation(line: 50, column: 26, scope: !244)
!250 = !DILocation(line: 52, column: 21, scope: !244)
!251 = !DILocation(line: 52, column: 5, scope: !244)
!252 = !DILocation(line: 53, column: 1, scope: !244)
!253 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !254, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !256}
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !257, line: 27, baseType: !258)
!257 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !259, line: 44, baseType: !247)
!259 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!260 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !253, file: !3, line: 55, type: !256)
!261 = !DILocation(line: 55, column: 33, scope: !253)
!262 = !DILocation(line: 57, column: 29, scope: !253)
!263 = !DILocation(line: 57, column: 5, scope: !253)
!264 = !DILocation(line: 58, column: 1, scope: !253)
!265 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !266, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !68}
!268 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !265, file: !3, line: 60, type: !68)
!269 = !DILocation(line: 60, column: 29, scope: !265)
!270 = !DILocation(line: 62, column: 21, scope: !265)
!271 = !DILocation(line: 62, column: 5, scope: !265)
!272 = !DILocation(line: 63, column: 1, scope: !265)
!273 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !274, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !43}
!276 = !DILocalVariable(name: "charHex", arg: 1, scope: !273, file: !3, line: 65, type: !43)
!277 = !DILocation(line: 65, column: 29, scope: !273)
!278 = !DILocation(line: 67, column: 22, scope: !273)
!279 = !DILocation(line: 67, column: 5, scope: !273)
!280 = !DILocation(line: 68, column: 1, scope: !273)
!281 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !282, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !206}
!284 = !DILocalVariable(name: "wideChar", arg: 1, scope: !281, file: !3, line: 70, type: !206)
!285 = !DILocation(line: 70, column: 29, scope: !281)
!286 = !DILocalVariable(name: "s", scope: !281, file: !3, line: 74, type: !287)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 64, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 2)
!290 = !DILocation(line: 74, column: 13, scope: !281)
!291 = !DILocation(line: 75, column: 16, scope: !281)
!292 = !DILocation(line: 75, column: 9, scope: !281)
!293 = !DILocation(line: 75, column: 14, scope: !281)
!294 = !DILocation(line: 76, column: 9, scope: !281)
!295 = !DILocation(line: 76, column: 14, scope: !281)
!296 = !DILocation(line: 77, column: 21, scope: !281)
!297 = !DILocation(line: 77, column: 5, scope: !281)
!298 = !DILocation(line: 78, column: 1, scope: !281)
!299 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !300, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !7}
!302 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !299, file: !3, line: 80, type: !7)
!303 = !DILocation(line: 80, column: 33, scope: !299)
!304 = !DILocation(line: 82, column: 20, scope: !299)
!305 = !DILocation(line: 82, column: 5, scope: !299)
!306 = !DILocation(line: 83, column: 1, scope: !299)
!307 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !308, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !25}
!310 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !307, file: !3, line: 85, type: !25)
!311 = !DILocation(line: 85, column: 45, scope: !307)
!312 = !DILocation(line: 87, column: 22, scope: !307)
!313 = !DILocation(line: 87, column: 5, scope: !307)
!314 = !DILocation(line: 88, column: 1, scope: !307)
!315 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !316, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !318}
!318 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!319 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !315, file: !3, line: 90, type: !318)
!320 = !DILocation(line: 90, column: 29, scope: !315)
!321 = !DILocation(line: 92, column: 20, scope: !315)
!322 = !DILocation(line: 92, column: 5, scope: !315)
!323 = !DILocation(line: 93, column: 1, scope: !315)
!324 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !325, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !327}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !329, line: 100, baseType: !330)
!329 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_709/source_code")
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !329, line: 96, size: 64, elements: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !330, file: !329, line: 98, baseType: !23, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !330, file: !329, line: 99, baseType: !23, size: 32, offset: 32)
!334 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !324, file: !3, line: 95, type: !327)
!335 = !DILocation(line: 95, column: 40, scope: !324)
!336 = !DILocation(line: 97, column: 26, scope: !324)
!337 = !DILocation(line: 97, column: 47, scope: !324)
!338 = !DILocation(line: 97, column: 55, scope: !324)
!339 = !DILocation(line: 97, column: 76, scope: !324)
!340 = !DILocation(line: 97, column: 5, scope: !324)
!341 = !DILocation(line: 98, column: 1, scope: !324)
!342 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !343, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !345, !68}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!346 = !DILocalVariable(name: "bytes", arg: 1, scope: !342, file: !3, line: 100, type: !345)
!347 = !DILocation(line: 100, column: 38, scope: !342)
!348 = !DILocalVariable(name: "numBytes", arg: 2, scope: !342, file: !3, line: 100, type: !68)
!349 = !DILocation(line: 100, column: 52, scope: !342)
!350 = !DILocalVariable(name: "i", scope: !342, file: !3, line: 102, type: !68)
!351 = !DILocation(line: 102, column: 12, scope: !342)
!352 = !DILocation(line: 103, column: 12, scope: !353)
!353 = distinct !DILexicalBlock(scope: !342, file: !3, line: 103, column: 5)
!354 = !DILocation(line: 103, column: 10, scope: !353)
!355 = !DILocation(line: 103, column: 17, scope: !356)
!356 = distinct !DILexicalBlock(scope: !353, file: !3, line: 103, column: 5)
!357 = !DILocation(line: 103, column: 21, scope: !356)
!358 = !DILocation(line: 103, column: 19, scope: !356)
!359 = !DILocation(line: 103, column: 5, scope: !353)
!360 = !DILocation(line: 105, column: 24, scope: !361)
!361 = distinct !DILexicalBlock(scope: !356, file: !3, line: 104, column: 5)
!362 = !DILocation(line: 105, column: 30, scope: !361)
!363 = !DILocation(line: 105, column: 9, scope: !361)
!364 = !DILocation(line: 106, column: 5, scope: !361)
!365 = !DILocation(line: 103, column: 31, scope: !356)
!366 = !DILocation(line: 103, column: 5, scope: !356)
!367 = distinct !{!367, !359, !368, !369}
!368 = !DILocation(line: 106, column: 5, scope: !353)
!369 = !{!"llvm.loop.mustprogress"}
!370 = !DILocation(line: 107, column: 5, scope: !342)
!371 = !DILocation(line: 108, column: 1, scope: !342)
!372 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !373, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!373 = !DISubroutineType(types: !374)
!374 = !{!68, !345, !68, !42}
!375 = !DILocalVariable(name: "bytes", arg: 1, scope: !372, file: !3, line: 113, type: !345)
!376 = !DILocation(line: 113, column: 39, scope: !372)
!377 = !DILocalVariable(name: "numBytes", arg: 2, scope: !372, file: !3, line: 113, type: !68)
!378 = !DILocation(line: 113, column: 53, scope: !372)
!379 = !DILocalVariable(name: "hex", arg: 3, scope: !372, file: !3, line: 113, type: !42)
!380 = !DILocation(line: 113, column: 71, scope: !372)
!381 = !DILocalVariable(name: "numWritten", scope: !372, file: !3, line: 115, type: !68)
!382 = !DILocation(line: 115, column: 12, scope: !372)
!383 = !DILocation(line: 121, column: 5, scope: !372)
!384 = !DILocation(line: 121, column: 12, scope: !372)
!385 = !DILocation(line: 121, column: 25, scope: !372)
!386 = !DILocation(line: 121, column: 23, scope: !372)
!387 = !DILocation(line: 121, column: 34, scope: !372)
!388 = !DILocation(line: 121, column: 37, scope: !372)
!389 = !DILocation(line: 121, column: 67, scope: !372)
!390 = !DILocation(line: 121, column: 70, scope: !372)
!391 = !DILocation(line: 0, scope: !372)
!392 = !DILocalVariable(name: "byte", scope: !393, file: !3, line: 123, type: !23)
!393 = distinct !DILexicalBlock(scope: !372, file: !3, line: 122, column: 5)
!394 = !DILocation(line: 123, column: 13, scope: !393)
!395 = !DILocation(line: 124, column: 17, scope: !393)
!396 = !DILocation(line: 124, column: 25, scope: !393)
!397 = !DILocation(line: 124, column: 23, scope: !393)
!398 = !DILocation(line: 124, column: 9, scope: !393)
!399 = !DILocation(line: 125, column: 45, scope: !393)
!400 = !DILocation(line: 125, column: 29, scope: !393)
!401 = !DILocation(line: 125, column: 9, scope: !393)
!402 = !DILocation(line: 125, column: 15, scope: !393)
!403 = !DILocation(line: 125, column: 27, scope: !393)
!404 = !DILocation(line: 126, column: 9, scope: !393)
!405 = distinct !{!405, !383, !406, !369}
!406 = !DILocation(line: 127, column: 5, scope: !372)
!407 = !DILocation(line: 129, column: 12, scope: !372)
!408 = !DILocation(line: 129, column: 5, scope: !372)
!409 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !410, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!410 = !DISubroutineType(types: !411)
!411 = !{!68, !345, !68, !205}
!412 = !DILocalVariable(name: "bytes", arg: 1, scope: !409, file: !3, line: 135, type: !345)
!413 = !DILocation(line: 135, column: 41, scope: !409)
!414 = !DILocalVariable(name: "numBytes", arg: 2, scope: !409, file: !3, line: 135, type: !68)
!415 = !DILocation(line: 135, column: 55, scope: !409)
!416 = !DILocalVariable(name: "hex", arg: 3, scope: !409, file: !3, line: 135, type: !205)
!417 = !DILocation(line: 135, column: 76, scope: !409)
!418 = !DILocalVariable(name: "numWritten", scope: !409, file: !3, line: 137, type: !68)
!419 = !DILocation(line: 137, column: 12, scope: !409)
!420 = !DILocation(line: 143, column: 5, scope: !409)
!421 = !DILocation(line: 143, column: 12, scope: !409)
!422 = !DILocation(line: 143, column: 25, scope: !409)
!423 = !DILocation(line: 143, column: 23, scope: !409)
!424 = !DILocation(line: 143, column: 34, scope: !409)
!425 = !DILocation(line: 143, column: 47, scope: !409)
!426 = !DILocation(line: 143, column: 55, scope: !409)
!427 = !DILocation(line: 143, column: 53, scope: !409)
!428 = !DILocation(line: 143, column: 37, scope: !409)
!429 = !DILocation(line: 143, column: 68, scope: !409)
!430 = !DILocation(line: 143, column: 81, scope: !409)
!431 = !DILocation(line: 143, column: 89, scope: !409)
!432 = !DILocation(line: 143, column: 87, scope: !409)
!433 = !DILocation(line: 143, column: 100, scope: !409)
!434 = !DILocation(line: 143, column: 71, scope: !409)
!435 = !DILocation(line: 0, scope: !409)
!436 = !DILocalVariable(name: "byte", scope: !437, file: !3, line: 145, type: !23)
!437 = distinct !DILexicalBlock(scope: !409, file: !3, line: 144, column: 5)
!438 = !DILocation(line: 145, column: 13, scope: !437)
!439 = !DILocation(line: 146, column: 18, scope: !437)
!440 = !DILocation(line: 146, column: 26, scope: !437)
!441 = !DILocation(line: 146, column: 24, scope: !437)
!442 = !DILocation(line: 146, column: 9, scope: !437)
!443 = !DILocation(line: 147, column: 45, scope: !437)
!444 = !DILocation(line: 147, column: 29, scope: !437)
!445 = !DILocation(line: 147, column: 9, scope: !437)
!446 = !DILocation(line: 147, column: 15, scope: !437)
!447 = !DILocation(line: 147, column: 27, scope: !437)
!448 = !DILocation(line: 148, column: 9, scope: !437)
!449 = distinct !{!449, !420, !450, !369}
!450 = !DILocation(line: 149, column: 5, scope: !409)
!451 = !DILocation(line: 151, column: 12, scope: !409)
!452 = !DILocation(line: 151, column: 5, scope: !409)
!453 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !454, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!454 = !DISubroutineType(types: !455)
!455 = !{!23}
!456 = !DILocation(line: 158, column: 5, scope: !453)
!457 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !454, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!458 = !DILocation(line: 163, column: 5, scope: !457)
!459 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !454, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!460 = !DILocation(line: 168, column: 13, scope: !459)
!461 = !DILocation(line: 168, column: 20, scope: !459)
!462 = !DILocation(line: 168, column: 5, scope: !459)
!463 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!464 = !DILocation(line: 187, column: 16, scope: !463)
!465 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!466 = !DILocation(line: 188, column: 16, scope: !465)
!467 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!468 = !DILocation(line: 189, column: 16, scope: !467)
!469 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!470 = !DILocation(line: 190, column: 16, scope: !469)
!471 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!472 = !DILocation(line: 191, column: 16, scope: !471)
!473 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!474 = !DILocation(line: 192, column: 16, scope: !473)
!475 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!476 = !DILocation(line: 193, column: 16, scope: !475)
!477 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!478 = !DILocation(line: 194, column: 16, scope: !477)
!479 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!480 = !DILocation(line: 195, column: 16, scope: !479)
!481 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!482 = !DILocation(line: 198, column: 15, scope: !481)
!483 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!484 = !DILocation(line: 199, column: 15, scope: !483)
!485 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!486 = !DILocation(line: 200, column: 15, scope: !485)
!487 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!488 = !DILocation(line: 201, column: 15, scope: !487)
!489 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!490 = !DILocation(line: 202, column: 15, scope: !489)
!491 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!492 = !DILocation(line: 203, column: 15, scope: !491)
!493 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!494 = !DILocation(line: 204, column: 15, scope: !493)
!495 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!496 = !DILocation(line: 205, column: 15, scope: !495)
!497 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!498 = !DILocation(line: 206, column: 15, scope: !497)
