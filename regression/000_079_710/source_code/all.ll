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
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad() #0 !dbg !55 {
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
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !72
  %1 = load i8*, i8** %data, align 8, !dbg !73
  %call = call i64 @strlen(i8* %1) #7, !dbg !74
  store i64 %call, i64* %dataLen, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !75, metadata !DIExpression()), !dbg !76
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !77
  store i8* %call1, i8** %environment, align 8, !dbg !76
  %2 = load i8*, i8** %environment, align 8, !dbg !78
  %cmp = icmp ne i8* %2, null, !dbg !80
  br i1 %cmp, label %if.then, label %if.end, !dbg !81

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !82
  %4 = load i64, i64* %dataLen, align 8, !dbg !84
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !85
  %5 = load i8*, i8** %environment, align 8, !dbg !86
  %6 = load i64, i64* %dataLen, align 8, !dbg !87
  %sub = sub i64 100, %6, !dbg !88
  %sub2 = sub i64 %sub, 1, !dbg !89
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !90
  br label %if.end, !dbg !91

if.end:                                           ; preds = %if.then, %entry
  %7 = bitcast i8** %data to i8*, !dbg !92
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink(i8* %7), !dbg !93
  ret void, !dbg !94
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
define dso_local void @goodG2B() #0 !dbg !95 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !98, metadata !DIExpression()), !dbg !99
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !99
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !99
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !100
  store i8* %arraydecay, i8** %data, align 8, !dbg !101
  %1 = load i8*, i8** %data, align 8, !dbg !102
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !103
  %2 = bitcast i8** %data to i8*, !dbg !104
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_goodG2BSink(i8* %2), !dbg !105
  ret void, !dbg !106
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !107 {
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
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !114, metadata !DIExpression()), !dbg !116
  %1 = load i8*, i8** %data, align 8, !dbg !117
  %call = call i64 @strlen(i8* %1) #7, !dbg !118
  store i64 %call, i64* %dataLen, align 8, !dbg !116
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !119, metadata !DIExpression()), !dbg !120
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !121
  store i8* %call1, i8** %environment, align 8, !dbg !120
  %2 = load i8*, i8** %environment, align 8, !dbg !122
  %cmp = icmp ne i8* %2, null, !dbg !124
  br i1 %cmp, label %if.then, label %if.end, !dbg !125

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !126
  %4 = load i64, i64* %dataLen, align 8, !dbg !128
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !129
  %5 = load i8*, i8** %environment, align 8, !dbg !130
  %6 = load i64, i64* %dataLen, align 8, !dbg !131
  %sub = sub i64 100, %6, !dbg !132
  %sub2 = sub i64 %sub, 1, !dbg !133
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !134
  br label %if.end, !dbg !135

if.end:                                           ; preds = %if.then, %entry
  %7 = bitcast i8** %data to i8*, !dbg !136
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_goodB2GSink(i8* %7), !dbg !137
  ret void, !dbg !138
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_good() #0 !dbg !139 {
entry:
  call void @goodG2B(), !dbg !140
  call void @goodB2G(), !dbg !141
  ret void, !dbg !142
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink(i8* %dataVoidPtr) #0 !dbg !143 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !148, metadata !DIExpression()), !dbg !149
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !150
  %1 = bitcast i8* %0 to i8**, !dbg !151
  store i8** %1, i8*** %dataPtr, align 8, !dbg !149
  call void @llvm.dbg.declare(metadata i8** %data, metadata !152, metadata !DIExpression()), !dbg !153
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !154
  %3 = load i8*, i8** %2, align 8, !dbg !155
  store i8* %3, i8** %data, align 8, !dbg !153
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !156
  %5 = load i8*, i8** %data, align 8, !dbg !157
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* %5), !dbg !158
  ret void, !dbg !159
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_goodG2BSink(i8* %dataVoidPtr) #0 !dbg !160 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !163, metadata !DIExpression()), !dbg !164
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !165
  %1 = bitcast i8* %0 to i8**, !dbg !166
  store i8** %1, i8*** %dataPtr, align 8, !dbg !164
  call void @llvm.dbg.declare(metadata i8** %data, metadata !167, metadata !DIExpression()), !dbg !168
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !169
  %3 = load i8*, i8** %2, align 8, !dbg !170
  store i8* %3, i8** %data, align 8, !dbg !168
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !171
  %5 = load i8*, i8** %data, align 8, !dbg !172
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* %5), !dbg !173
  ret void, !dbg !174
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_goodB2GSink(i8* %dataVoidPtr) #0 !dbg !175 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !178, metadata !DIExpression()), !dbg !179
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !180
  %1 = bitcast i8* %0 to i8**, !dbg !181
  store i8** %1, i8*** %dataPtr, align 8, !dbg !179
  call void @llvm.dbg.declare(metadata i8** %data, metadata !182, metadata !DIExpression()), !dbg !183
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !184
  %3 = load i8*, i8** %2, align 8, !dbg !185
  store i8* %3, i8** %data, align 8, !dbg !183
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !186
  %5 = load i8*, i8** %data, align 8, !dbg !187
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %5), !dbg !188
  ret void, !dbg !189
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !190 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !193, metadata !DIExpression()), !dbg !194
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !195
  %0 = load i8*, i8** %line.addr, align 8, !dbg !196
  %cmp = icmp ne i8* %0, null, !dbg !198
  br i1 %cmp, label %if.then, label %if.end, !dbg !199

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !200
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !202
  br label %if.end, !dbg !203

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !204
  ret void, !dbg !205
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !206 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !207, metadata !DIExpression()), !dbg !208
  %0 = load i8*, i8** %line.addr, align 8, !dbg !209
  %cmp = icmp ne i8* %0, null, !dbg !211
  br i1 %cmp, label %if.then, label %if.end, !dbg !212

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !213
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !215
  br label %if.end, !dbg !216

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !217
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !218 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !223, metadata !DIExpression()), !dbg !224
  %0 = load i32*, i32** %line.addr, align 8, !dbg !225
  %cmp = icmp ne i32* %0, null, !dbg !227
  br i1 %cmp, label %if.then, label %if.end, !dbg !228

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !229
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !231
  br label %if.end, !dbg !232

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !233
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !234 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !237, metadata !DIExpression()), !dbg !238
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !239
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !240
  ret void, !dbg !241
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !242 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !246, metadata !DIExpression()), !dbg !247
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !248
  %conv = sext i16 %0 to i32, !dbg !248
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !249
  ret void, !dbg !250
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !251 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !255, metadata !DIExpression()), !dbg !256
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !257
  %conv = fpext float %0 to double, !dbg !257
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !258
  ret void, !dbg !259
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !260 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !264, metadata !DIExpression()), !dbg !265
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !266
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.10, i64 0, i64 0), i64 %0), !dbg !267
  ret void, !dbg !268
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !269 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !276, metadata !DIExpression()), !dbg !277
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !278
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.10, i64 0, i64 0), i64 %0), !dbg !279
  ret void, !dbg !280
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !281 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !284, metadata !DIExpression()), !dbg !285
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !286
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.11, i64 0, i64 0), i64 %0), !dbg !287
  ret void, !dbg !288
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !289 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !292, metadata !DIExpression()), !dbg !293
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !294
  %conv = sext i8 %0 to i32, !dbg !294
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !295
  ret void, !dbg !296
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !297 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !302, metadata !DIExpression()), !dbg !306
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !307
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !308
  store i32 %0, i32* %arrayidx, align 4, !dbg !309
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !310
  store i32 0, i32* %arrayidx1, align 4, !dbg !311
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !312
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !313
  ret void, !dbg !314
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !315 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !318, metadata !DIExpression()), !dbg !319
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !320
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !321
  ret void, !dbg !322
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !323 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !326, metadata !DIExpression()), !dbg !327
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !328
  %conv = zext i8 %0 to i32, !dbg !328
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !329
  ret void, !dbg !330
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !331 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !335, metadata !DIExpression()), !dbg !336
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !337
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !338
  ret void, !dbg !339
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !340 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !350, metadata !DIExpression()), !dbg !351
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !352
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !353
  %1 = load i32, i32* %intOne, align 4, !dbg !353
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !354
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !355
  %3 = load i32, i32* %intTwo, align 4, !dbg !355
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !356
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !358 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !362, metadata !DIExpression()), !dbg !363
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !364, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.declare(metadata i64* %i, metadata !366, metadata !DIExpression()), !dbg !367
  store i64 0, i64* %i, align 8, !dbg !368
  br label %for.cond, !dbg !370

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !371
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !373
  %cmp = icmp ult i64 %0, %1, !dbg !374
  br i1 %cmp, label %for.body, label %for.end, !dbg !375

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !376
  %3 = load i64, i64* %i, align 8, !dbg !378
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !376
  %4 = load i8, i8* %arrayidx, align 1, !dbg !376
  %conv = zext i8 %4 to i32, !dbg !376
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !379
  br label %for.inc, !dbg !380

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !381
  %inc = add i64 %5, 1, !dbg !381
  store i64 %inc, i64* %i, align 8, !dbg !381
  br label %for.cond, !dbg !382, !llvm.loop !383

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !386
  ret void, !dbg !387
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !388 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !391, metadata !DIExpression()), !dbg !392
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !393, metadata !DIExpression()), !dbg !394
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !395, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !397, metadata !DIExpression()), !dbg !398
  store i64 0, i64* %numWritten, align 8, !dbg !398
  br label %while.cond, !dbg !399

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !400
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !401
  %cmp = icmp ult i64 %0, %1, !dbg !402
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !403

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !404
  %2 = load i16*, i16** %call, align 8, !dbg !404
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !404
  %4 = load i64, i64* %numWritten, align 8, !dbg !404
  %mul = mul i64 2, %4, !dbg !404
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !404
  %5 = load i8, i8* %arrayidx, align 1, !dbg !404
  %conv = sext i8 %5 to i32, !dbg !404
  %idxprom = sext i32 %conv to i64, !dbg !404
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !404
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !404
  %conv2 = zext i16 %6 to i32, !dbg !404
  %and = and i32 %conv2, 4096, !dbg !404
  %tobool = icmp ne i32 %and, 0, !dbg !404
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !405

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !406
  %7 = load i16*, i16** %call3, align 8, !dbg !406
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !406
  %9 = load i64, i64* %numWritten, align 8, !dbg !406
  %mul4 = mul i64 2, %9, !dbg !406
  %add = add i64 %mul4, 1, !dbg !406
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !406
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !406
  %conv6 = sext i8 %10 to i32, !dbg !406
  %idxprom7 = sext i32 %conv6 to i64, !dbg !406
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !406
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !406
  %conv9 = zext i16 %11 to i32, !dbg !406
  %and10 = and i32 %conv9, 4096, !dbg !406
  %tobool11 = icmp ne i32 %and10, 0, !dbg !405
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !407
  br i1 %12, label %while.body, label %while.end, !dbg !399

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !408, metadata !DIExpression()), !dbg !410
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !411
  %14 = load i64, i64* %numWritten, align 8, !dbg !412
  %mul12 = mul i64 2, %14, !dbg !413
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !411
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !414
  %15 = load i32, i32* %byte, align 4, !dbg !415
  %conv15 = trunc i32 %15 to i8, !dbg !416
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !417
  %17 = load i64, i64* %numWritten, align 8, !dbg !418
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !417
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !419
  %18 = load i64, i64* %numWritten, align 8, !dbg !420
  %inc = add i64 %18, 1, !dbg !420
  store i64 %inc, i64* %numWritten, align 8, !dbg !420
  br label %while.cond, !dbg !399, !llvm.loop !421

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !423
  ret i64 %19, !dbg !424
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !425 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !428, metadata !DIExpression()), !dbg !429
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !430, metadata !DIExpression()), !dbg !431
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !434, metadata !DIExpression()), !dbg !435
  store i64 0, i64* %numWritten, align 8, !dbg !435
  br label %while.cond, !dbg !436

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !437
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !438
  %cmp = icmp ult i64 %0, %1, !dbg !439
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !440

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !441
  %3 = load i64, i64* %numWritten, align 8, !dbg !442
  %mul = mul i64 2, %3, !dbg !443
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !441
  %4 = load i32, i32* %arrayidx, align 4, !dbg !441
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !444
  %tobool = icmp ne i32 %call, 0, !dbg !444
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !445

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !446
  %6 = load i64, i64* %numWritten, align 8, !dbg !447
  %mul1 = mul i64 2, %6, !dbg !448
  %add = add i64 %mul1, 1, !dbg !449
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !446
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !446
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !450
  %tobool4 = icmp ne i32 %call3, 0, !dbg !445
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !451
  br i1 %8, label %while.body, label %while.end, !dbg !436

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !452, metadata !DIExpression()), !dbg !454
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !455
  %10 = load i64, i64* %numWritten, align 8, !dbg !456
  %mul5 = mul i64 2, %10, !dbg !457
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !455
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !458
  %11 = load i32, i32* %byte, align 4, !dbg !459
  %conv = trunc i32 %11 to i8, !dbg !460
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !461
  %13 = load i64, i64* %numWritten, align 8, !dbg !462
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !461
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !463
  %14 = load i64, i64* %numWritten, align 8, !dbg !464
  %inc = add i64 %14, 1, !dbg !464
  store i64 %inc, i64* %numWritten, align 8, !dbg !464
  br label %while.cond, !dbg !436, !llvm.loop !465

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !467
  ret i64 %15, !dbg !468
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !469 {
entry:
  ret i32 1, !dbg !472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !473 {
entry:
  ret i32 0, !dbg !474
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !475 {
entry:
  %call = call i32 @rand() #8, !dbg !476
  %rem = srem i32 %call, 2, !dbg !477
  ret i32 %rem, !dbg !478
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !479 {
entry:
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !481 {
entry:
  ret void, !dbg !482
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !483 {
entry:
  ret void, !dbg !484
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !485 {
entry:
  ret void, !dbg !486
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !487 {
entry:
  ret void, !dbg !488
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !489 {
entry:
  ret void, !dbg !490
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !491 {
entry:
  ret void, !dbg !492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !493 {
entry:
  ret void, !dbg !494
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !495 {
entry:
  ret void, !dbg !496
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !497 {
entry:
  ret void, !dbg !498
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !499 {
entry:
  ret void, !dbg !500
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !501 {
entry:
  ret void, !dbg !502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !503 {
entry:
  ret void, !dbg !504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !505 {
entry:
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !507 {
entry:
  ret void, !dbg !508
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !509 {
entry:
  ret void, !dbg !510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !511 {
entry:
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !513 {
entry:
  ret void, !dbg !514
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
!llvm.ident = !{!51, !51, !51}
!llvm.module.flags = !{!52, !53, !54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_710/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_64a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_710/source_code")
!46 = !{}
!47 = !{!22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !50, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_710/source_code")
!50 = !{!41}
!51 = !{!"clang version 12.0.0"}
!52 = !{i32 7, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad", scope: !45, file: !45, line: 37, type: !56, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!56 = !DISubroutineType(types: !57)
!57 = !{null}
!58 = !DILocalVariable(name: "data", scope: !55, file: !45, line: 39, type: !42)
!59 = !DILocation(line: 39, column: 12, scope: !55)
!60 = !DILocalVariable(name: "dataBuffer", scope: !55, file: !45, line: 40, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 100)
!64 = !DILocation(line: 40, column: 10, scope: !55)
!65 = !DILocation(line: 41, column: 12, scope: !55)
!66 = !DILocation(line: 41, column: 10, scope: !55)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !45, line: 44, type: !69)
!68 = distinct !DILexicalBlock(scope: !55, file: !45, line: 42, column: 5)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!71 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DILocation(line: 44, column: 16, scope: !68)
!73 = !DILocation(line: 44, column: 33, scope: !68)
!74 = !DILocation(line: 44, column: 26, scope: !68)
!75 = !DILocalVariable(name: "environment", scope: !68, file: !45, line: 45, type: !42)
!76 = !DILocation(line: 45, column: 16, scope: !68)
!77 = !DILocation(line: 45, column: 30, scope: !68)
!78 = !DILocation(line: 47, column: 13, scope: !79)
!79 = distinct !DILexicalBlock(scope: !68, file: !45, line: 47, column: 13)
!80 = !DILocation(line: 47, column: 25, scope: !79)
!81 = !DILocation(line: 47, column: 13, scope: !68)
!82 = !DILocation(line: 50, column: 21, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !45, line: 48, column: 9)
!84 = !DILocation(line: 50, column: 26, scope: !83)
!85 = !DILocation(line: 50, column: 25, scope: !83)
!86 = !DILocation(line: 50, column: 35, scope: !83)
!87 = !DILocation(line: 50, column: 52, scope: !83)
!88 = !DILocation(line: 50, column: 51, scope: !83)
!89 = !DILocation(line: 50, column: 59, scope: !83)
!90 = !DILocation(line: 50, column: 13, scope: !83)
!91 = !DILocation(line: 51, column: 9, scope: !83)
!92 = !DILocation(line: 53, column: 77, scope: !55)
!93 = !DILocation(line: 53, column: 5, scope: !55)
!94 = !DILocation(line: 54, column: 1, scope: !55)
!95 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 62, type: !56, scopeLine: 63, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!96 = !DILocalVariable(name: "data", scope: !95, file: !45, line: 64, type: !42)
!97 = !DILocation(line: 64, column: 12, scope: !95)
!98 = !DILocalVariable(name: "dataBuffer", scope: !95, file: !45, line: 65, type: !61)
!99 = !DILocation(line: 65, column: 10, scope: !95)
!100 = !DILocation(line: 66, column: 12, scope: !95)
!101 = !DILocation(line: 66, column: 10, scope: !95)
!102 = !DILocation(line: 68, column: 12, scope: !95)
!103 = !DILocation(line: 68, column: 5, scope: !95)
!104 = !DILocation(line: 69, column: 81, scope: !95)
!105 = !DILocation(line: 69, column: 5, scope: !95)
!106 = !DILocation(line: 70, column: 1, scope: !95)
!107 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 74, type: !56, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!108 = !DILocalVariable(name: "data", scope: !107, file: !45, line: 76, type: !42)
!109 = !DILocation(line: 76, column: 12, scope: !107)
!110 = !DILocalVariable(name: "dataBuffer", scope: !107, file: !45, line: 77, type: !61)
!111 = !DILocation(line: 77, column: 10, scope: !107)
!112 = !DILocation(line: 78, column: 12, scope: !107)
!113 = !DILocation(line: 78, column: 10, scope: !107)
!114 = !DILocalVariable(name: "dataLen", scope: !115, file: !45, line: 81, type: !69)
!115 = distinct !DILexicalBlock(scope: !107, file: !45, line: 79, column: 5)
!116 = !DILocation(line: 81, column: 16, scope: !115)
!117 = !DILocation(line: 81, column: 33, scope: !115)
!118 = !DILocation(line: 81, column: 26, scope: !115)
!119 = !DILocalVariable(name: "environment", scope: !115, file: !45, line: 82, type: !42)
!120 = !DILocation(line: 82, column: 16, scope: !115)
!121 = !DILocation(line: 82, column: 30, scope: !115)
!122 = !DILocation(line: 84, column: 13, scope: !123)
!123 = distinct !DILexicalBlock(scope: !115, file: !45, line: 84, column: 13)
!124 = !DILocation(line: 84, column: 25, scope: !123)
!125 = !DILocation(line: 84, column: 13, scope: !115)
!126 = !DILocation(line: 87, column: 21, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !45, line: 85, column: 9)
!128 = !DILocation(line: 87, column: 26, scope: !127)
!129 = !DILocation(line: 87, column: 25, scope: !127)
!130 = !DILocation(line: 87, column: 35, scope: !127)
!131 = !DILocation(line: 87, column: 52, scope: !127)
!132 = !DILocation(line: 87, column: 51, scope: !127)
!133 = !DILocation(line: 87, column: 59, scope: !127)
!134 = !DILocation(line: 87, column: 13, scope: !127)
!135 = !DILocation(line: 88, column: 9, scope: !127)
!136 = !DILocation(line: 90, column: 81, scope: !107)
!137 = !DILocation(line: 90, column: 5, scope: !107)
!138 = !DILocation(line: 91, column: 1, scope: !107)
!139 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_good", scope: !45, file: !45, line: 93, type: !56, scopeLine: 94, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!140 = !DILocation(line: 95, column: 5, scope: !139)
!141 = !DILocation(line: 96, column: 5, scope: !139)
!142 = !DILocation(line: 97, column: 1, scope: !139)
!143 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink", scope: !49, file: !49, line: 34, type: !144, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !22}
!146 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !143, file: !49, line: 34, type: !22)
!147 = !DILocation(line: 34, column: 85, scope: !143)
!148 = !DILocalVariable(name: "dataPtr", scope: !143, file: !49, line: 37, type: !41)
!149 = !DILocation(line: 37, column: 14, scope: !143)
!150 = !DILocation(line: 37, column: 34, scope: !143)
!151 = !DILocation(line: 37, column: 24, scope: !143)
!152 = !DILocalVariable(name: "data", scope: !143, file: !49, line: 39, type: !42)
!153 = !DILocation(line: 39, column: 12, scope: !143)
!154 = !DILocation(line: 39, column: 21, scope: !143)
!155 = !DILocation(line: 39, column: 20, scope: !143)
!156 = !DILocation(line: 41, column: 13, scope: !143)
!157 = !DILocation(line: 41, column: 21, scope: !143)
!158 = !DILocation(line: 41, column: 5, scope: !143)
!159 = !DILocation(line: 42, column: 1, scope: !143)
!160 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_goodG2BSink", scope: !49, file: !49, line: 49, type: !144, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!161 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !160, file: !49, line: 49, type: !22)
!162 = !DILocation(line: 49, column: 89, scope: !160)
!163 = !DILocalVariable(name: "dataPtr", scope: !160, file: !49, line: 52, type: !41)
!164 = !DILocation(line: 52, column: 14, scope: !160)
!165 = !DILocation(line: 52, column: 34, scope: !160)
!166 = !DILocation(line: 52, column: 24, scope: !160)
!167 = !DILocalVariable(name: "data", scope: !160, file: !49, line: 54, type: !42)
!168 = !DILocation(line: 54, column: 12, scope: !160)
!169 = !DILocation(line: 54, column: 21, scope: !160)
!170 = !DILocation(line: 54, column: 20, scope: !160)
!171 = !DILocation(line: 56, column: 13, scope: !160)
!172 = !DILocation(line: 56, column: 21, scope: !160)
!173 = !DILocation(line: 56, column: 5, scope: !160)
!174 = !DILocation(line: 57, column: 1, scope: !160)
!175 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_goodB2GSink", scope: !49, file: !49, line: 60, type: !144, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!176 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !175, file: !49, line: 60, type: !22)
!177 = !DILocation(line: 60, column: 89, scope: !175)
!178 = !DILocalVariable(name: "dataPtr", scope: !175, file: !49, line: 63, type: !41)
!179 = !DILocation(line: 63, column: 14, scope: !175)
!180 = !DILocation(line: 63, column: 34, scope: !175)
!181 = !DILocation(line: 63, column: 24, scope: !175)
!182 = !DILocalVariable(name: "data", scope: !175, file: !49, line: 65, type: !42)
!183 = !DILocation(line: 65, column: 12, scope: !175)
!184 = !DILocation(line: 65, column: 21, scope: !175)
!185 = !DILocation(line: 65, column: 20, scope: !175)
!186 = !DILocation(line: 67, column: 13, scope: !175)
!187 = !DILocation(line: 67, column: 29, scope: !175)
!188 = !DILocation(line: 67, column: 5, scope: !175)
!189 = !DILocation(line: 68, column: 1, scope: !175)
!190 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !191, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !42}
!193 = !DILocalVariable(name: "line", arg: 1, scope: !190, file: !3, line: 11, type: !42)
!194 = !DILocation(line: 11, column: 25, scope: !190)
!195 = !DILocation(line: 13, column: 1, scope: !190)
!196 = !DILocation(line: 14, column: 8, scope: !197)
!197 = distinct !DILexicalBlock(scope: !190, file: !3, line: 14, column: 8)
!198 = !DILocation(line: 14, column: 13, scope: !197)
!199 = !DILocation(line: 14, column: 8, scope: !190)
!200 = !DILocation(line: 16, column: 24, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !3, line: 15, column: 5)
!202 = !DILocation(line: 16, column: 9, scope: !201)
!203 = !DILocation(line: 17, column: 5, scope: !201)
!204 = !DILocation(line: 18, column: 5, scope: !190)
!205 = !DILocation(line: 19, column: 1, scope: !190)
!206 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !191, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!207 = !DILocalVariable(name: "line", arg: 1, scope: !206, file: !3, line: 20, type: !42)
!208 = !DILocation(line: 20, column: 29, scope: !206)
!209 = !DILocation(line: 22, column: 8, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !3, line: 22, column: 8)
!211 = !DILocation(line: 22, column: 13, scope: !210)
!212 = !DILocation(line: 22, column: 8, scope: !206)
!213 = !DILocation(line: 24, column: 24, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !3, line: 23, column: 5)
!215 = !DILocation(line: 24, column: 9, scope: !214)
!216 = !DILocation(line: 25, column: 5, scope: !214)
!217 = !DILocation(line: 26, column: 1, scope: !206)
!218 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !219, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !23)
!223 = !DILocalVariable(name: "line", arg: 1, scope: !218, file: !3, line: 27, type: !221)
!224 = !DILocation(line: 27, column: 29, scope: !218)
!225 = !DILocation(line: 29, column: 8, scope: !226)
!226 = distinct !DILexicalBlock(scope: !218, file: !3, line: 29, column: 8)
!227 = !DILocation(line: 29, column: 13, scope: !226)
!228 = !DILocation(line: 29, column: 8, scope: !218)
!229 = !DILocation(line: 31, column: 27, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !3, line: 30, column: 5)
!231 = !DILocation(line: 31, column: 9, scope: !230)
!232 = !DILocation(line: 32, column: 5, scope: !230)
!233 = !DILocation(line: 33, column: 1, scope: !218)
!234 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !235, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !23}
!237 = !DILocalVariable(name: "intNumber", arg: 1, scope: !234, file: !3, line: 35, type: !23)
!238 = !DILocation(line: 35, column: 24, scope: !234)
!239 = !DILocation(line: 37, column: 20, scope: !234)
!240 = !DILocation(line: 37, column: 5, scope: !234)
!241 = !DILocation(line: 38, column: 1, scope: !234)
!242 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !243, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !245}
!245 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!246 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !242, file: !3, line: 40, type: !245)
!247 = !DILocation(line: 40, column: 28, scope: !242)
!248 = !DILocation(line: 42, column: 21, scope: !242)
!249 = !DILocation(line: 42, column: 5, scope: !242)
!250 = !DILocation(line: 43, column: 1, scope: !242)
!251 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !252, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !254}
!254 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!255 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !251, file: !3, line: 45, type: !254)
!256 = !DILocation(line: 45, column: 28, scope: !251)
!257 = !DILocation(line: 47, column: 20, scope: !251)
!258 = !DILocation(line: 47, column: 5, scope: !251)
!259 = !DILocation(line: 48, column: 1, scope: !251)
!260 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !261, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !263}
!263 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!264 = !DILocalVariable(name: "longNumber", arg: 1, scope: !260, file: !3, line: 50, type: !263)
!265 = !DILocation(line: 50, column: 26, scope: !260)
!266 = !DILocation(line: 52, column: 21, scope: !260)
!267 = !DILocation(line: 52, column: 5, scope: !260)
!268 = !DILocation(line: 53, column: 1, scope: !260)
!269 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !270, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !272}
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !273, line: 27, baseType: !274)
!273 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !275, line: 44, baseType: !263)
!275 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!276 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !269, file: !3, line: 55, type: !272)
!277 = !DILocation(line: 55, column: 33, scope: !269)
!278 = !DILocation(line: 57, column: 29, scope: !269)
!279 = !DILocation(line: 57, column: 5, scope: !269)
!280 = !DILocation(line: 58, column: 1, scope: !269)
!281 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !282, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !69}
!284 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !281, file: !3, line: 60, type: !69)
!285 = !DILocation(line: 60, column: 29, scope: !281)
!286 = !DILocation(line: 62, column: 21, scope: !281)
!287 = !DILocation(line: 62, column: 5, scope: !281)
!288 = !DILocation(line: 63, column: 1, scope: !281)
!289 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !290, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !43}
!292 = !DILocalVariable(name: "charHex", arg: 1, scope: !289, file: !3, line: 65, type: !43)
!293 = !DILocation(line: 65, column: 29, scope: !289)
!294 = !DILocation(line: 67, column: 22, scope: !289)
!295 = !DILocation(line: 67, column: 5, scope: !289)
!296 = !DILocation(line: 68, column: 1, scope: !289)
!297 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !298, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !222}
!300 = !DILocalVariable(name: "wideChar", arg: 1, scope: !297, file: !3, line: 70, type: !222)
!301 = !DILocation(line: 70, column: 29, scope: !297)
!302 = !DILocalVariable(name: "s", scope: !297, file: !3, line: 74, type: !303)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 64, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 2)
!306 = !DILocation(line: 74, column: 13, scope: !297)
!307 = !DILocation(line: 75, column: 16, scope: !297)
!308 = !DILocation(line: 75, column: 9, scope: !297)
!309 = !DILocation(line: 75, column: 14, scope: !297)
!310 = !DILocation(line: 76, column: 9, scope: !297)
!311 = !DILocation(line: 76, column: 14, scope: !297)
!312 = !DILocation(line: 77, column: 21, scope: !297)
!313 = !DILocation(line: 77, column: 5, scope: !297)
!314 = !DILocation(line: 78, column: 1, scope: !297)
!315 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !316, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !7}
!318 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !315, file: !3, line: 80, type: !7)
!319 = !DILocation(line: 80, column: 33, scope: !315)
!320 = !DILocation(line: 82, column: 20, scope: !315)
!321 = !DILocation(line: 82, column: 5, scope: !315)
!322 = !DILocation(line: 83, column: 1, scope: !315)
!323 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !324, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !25}
!326 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !323, file: !3, line: 85, type: !25)
!327 = !DILocation(line: 85, column: 45, scope: !323)
!328 = !DILocation(line: 87, column: 22, scope: !323)
!329 = !DILocation(line: 87, column: 5, scope: !323)
!330 = !DILocation(line: 88, column: 1, scope: !323)
!331 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !332, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !334}
!334 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!335 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !331, file: !3, line: 90, type: !334)
!336 = !DILocation(line: 90, column: 29, scope: !331)
!337 = !DILocation(line: 92, column: 20, scope: !331)
!338 = !DILocation(line: 92, column: 5, scope: !331)
!339 = !DILocation(line: 93, column: 1, scope: !331)
!340 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !341, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !345, line: 100, baseType: !346)
!345 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_710/source_code")
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !345, line: 96, size: 64, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !346, file: !345, line: 98, baseType: !23, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !346, file: !345, line: 99, baseType: !23, size: 32, offset: 32)
!350 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !340, file: !3, line: 95, type: !343)
!351 = !DILocation(line: 95, column: 40, scope: !340)
!352 = !DILocation(line: 97, column: 26, scope: !340)
!353 = !DILocation(line: 97, column: 47, scope: !340)
!354 = !DILocation(line: 97, column: 55, scope: !340)
!355 = !DILocation(line: 97, column: 76, scope: !340)
!356 = !DILocation(line: 97, column: 5, scope: !340)
!357 = !DILocation(line: 98, column: 1, scope: !340)
!358 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !359, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !361, !69}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!362 = !DILocalVariable(name: "bytes", arg: 1, scope: !358, file: !3, line: 100, type: !361)
!363 = !DILocation(line: 100, column: 38, scope: !358)
!364 = !DILocalVariable(name: "numBytes", arg: 2, scope: !358, file: !3, line: 100, type: !69)
!365 = !DILocation(line: 100, column: 52, scope: !358)
!366 = !DILocalVariable(name: "i", scope: !358, file: !3, line: 102, type: !69)
!367 = !DILocation(line: 102, column: 12, scope: !358)
!368 = !DILocation(line: 103, column: 12, scope: !369)
!369 = distinct !DILexicalBlock(scope: !358, file: !3, line: 103, column: 5)
!370 = !DILocation(line: 103, column: 10, scope: !369)
!371 = !DILocation(line: 103, column: 17, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !3, line: 103, column: 5)
!373 = !DILocation(line: 103, column: 21, scope: !372)
!374 = !DILocation(line: 103, column: 19, scope: !372)
!375 = !DILocation(line: 103, column: 5, scope: !369)
!376 = !DILocation(line: 105, column: 24, scope: !377)
!377 = distinct !DILexicalBlock(scope: !372, file: !3, line: 104, column: 5)
!378 = !DILocation(line: 105, column: 30, scope: !377)
!379 = !DILocation(line: 105, column: 9, scope: !377)
!380 = !DILocation(line: 106, column: 5, scope: !377)
!381 = !DILocation(line: 103, column: 31, scope: !372)
!382 = !DILocation(line: 103, column: 5, scope: !372)
!383 = distinct !{!383, !375, !384, !385}
!384 = !DILocation(line: 106, column: 5, scope: !369)
!385 = !{!"llvm.loop.mustprogress"}
!386 = !DILocation(line: 107, column: 5, scope: !358)
!387 = !DILocation(line: 108, column: 1, scope: !358)
!388 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !389, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!389 = !DISubroutineType(types: !390)
!390 = !{!69, !361, !69, !42}
!391 = !DILocalVariable(name: "bytes", arg: 1, scope: !388, file: !3, line: 113, type: !361)
!392 = !DILocation(line: 113, column: 39, scope: !388)
!393 = !DILocalVariable(name: "numBytes", arg: 2, scope: !388, file: !3, line: 113, type: !69)
!394 = !DILocation(line: 113, column: 53, scope: !388)
!395 = !DILocalVariable(name: "hex", arg: 3, scope: !388, file: !3, line: 113, type: !42)
!396 = !DILocation(line: 113, column: 71, scope: !388)
!397 = !DILocalVariable(name: "numWritten", scope: !388, file: !3, line: 115, type: !69)
!398 = !DILocation(line: 115, column: 12, scope: !388)
!399 = !DILocation(line: 121, column: 5, scope: !388)
!400 = !DILocation(line: 121, column: 12, scope: !388)
!401 = !DILocation(line: 121, column: 25, scope: !388)
!402 = !DILocation(line: 121, column: 23, scope: !388)
!403 = !DILocation(line: 121, column: 34, scope: !388)
!404 = !DILocation(line: 121, column: 37, scope: !388)
!405 = !DILocation(line: 121, column: 67, scope: !388)
!406 = !DILocation(line: 121, column: 70, scope: !388)
!407 = !DILocation(line: 0, scope: !388)
!408 = !DILocalVariable(name: "byte", scope: !409, file: !3, line: 123, type: !23)
!409 = distinct !DILexicalBlock(scope: !388, file: !3, line: 122, column: 5)
!410 = !DILocation(line: 123, column: 13, scope: !409)
!411 = !DILocation(line: 124, column: 17, scope: !409)
!412 = !DILocation(line: 124, column: 25, scope: !409)
!413 = !DILocation(line: 124, column: 23, scope: !409)
!414 = !DILocation(line: 124, column: 9, scope: !409)
!415 = !DILocation(line: 125, column: 45, scope: !409)
!416 = !DILocation(line: 125, column: 29, scope: !409)
!417 = !DILocation(line: 125, column: 9, scope: !409)
!418 = !DILocation(line: 125, column: 15, scope: !409)
!419 = !DILocation(line: 125, column: 27, scope: !409)
!420 = !DILocation(line: 126, column: 9, scope: !409)
!421 = distinct !{!421, !399, !422, !385}
!422 = !DILocation(line: 127, column: 5, scope: !388)
!423 = !DILocation(line: 129, column: 12, scope: !388)
!424 = !DILocation(line: 129, column: 5, scope: !388)
!425 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !426, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!426 = !DISubroutineType(types: !427)
!427 = !{!69, !361, !69, !221}
!428 = !DILocalVariable(name: "bytes", arg: 1, scope: !425, file: !3, line: 135, type: !361)
!429 = !DILocation(line: 135, column: 41, scope: !425)
!430 = !DILocalVariable(name: "numBytes", arg: 2, scope: !425, file: !3, line: 135, type: !69)
!431 = !DILocation(line: 135, column: 55, scope: !425)
!432 = !DILocalVariable(name: "hex", arg: 3, scope: !425, file: !3, line: 135, type: !221)
!433 = !DILocation(line: 135, column: 76, scope: !425)
!434 = !DILocalVariable(name: "numWritten", scope: !425, file: !3, line: 137, type: !69)
!435 = !DILocation(line: 137, column: 12, scope: !425)
!436 = !DILocation(line: 143, column: 5, scope: !425)
!437 = !DILocation(line: 143, column: 12, scope: !425)
!438 = !DILocation(line: 143, column: 25, scope: !425)
!439 = !DILocation(line: 143, column: 23, scope: !425)
!440 = !DILocation(line: 143, column: 34, scope: !425)
!441 = !DILocation(line: 143, column: 47, scope: !425)
!442 = !DILocation(line: 143, column: 55, scope: !425)
!443 = !DILocation(line: 143, column: 53, scope: !425)
!444 = !DILocation(line: 143, column: 37, scope: !425)
!445 = !DILocation(line: 143, column: 68, scope: !425)
!446 = !DILocation(line: 143, column: 81, scope: !425)
!447 = !DILocation(line: 143, column: 89, scope: !425)
!448 = !DILocation(line: 143, column: 87, scope: !425)
!449 = !DILocation(line: 143, column: 100, scope: !425)
!450 = !DILocation(line: 143, column: 71, scope: !425)
!451 = !DILocation(line: 0, scope: !425)
!452 = !DILocalVariable(name: "byte", scope: !453, file: !3, line: 145, type: !23)
!453 = distinct !DILexicalBlock(scope: !425, file: !3, line: 144, column: 5)
!454 = !DILocation(line: 145, column: 13, scope: !453)
!455 = !DILocation(line: 146, column: 18, scope: !453)
!456 = !DILocation(line: 146, column: 26, scope: !453)
!457 = !DILocation(line: 146, column: 24, scope: !453)
!458 = !DILocation(line: 146, column: 9, scope: !453)
!459 = !DILocation(line: 147, column: 45, scope: !453)
!460 = !DILocation(line: 147, column: 29, scope: !453)
!461 = !DILocation(line: 147, column: 9, scope: !453)
!462 = !DILocation(line: 147, column: 15, scope: !453)
!463 = !DILocation(line: 147, column: 27, scope: !453)
!464 = !DILocation(line: 148, column: 9, scope: !453)
!465 = distinct !{!465, !436, !466, !385}
!466 = !DILocation(line: 149, column: 5, scope: !425)
!467 = !DILocation(line: 151, column: 12, scope: !425)
!468 = !DILocation(line: 151, column: 5, scope: !425)
!469 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !470, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!470 = !DISubroutineType(types: !471)
!471 = !{!23}
!472 = !DILocation(line: 158, column: 5, scope: !469)
!473 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !470, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!474 = !DILocation(line: 163, column: 5, scope: !473)
!475 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !470, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!476 = !DILocation(line: 168, column: 13, scope: !475)
!477 = !DILocation(line: 168, column: 20, scope: !475)
!478 = !DILocation(line: 168, column: 5, scope: !475)
!479 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !56, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!480 = !DILocation(line: 187, column: 16, scope: !479)
!481 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !56, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!482 = !DILocation(line: 188, column: 16, scope: !481)
!483 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !56, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!484 = !DILocation(line: 189, column: 16, scope: !483)
!485 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !56, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!486 = !DILocation(line: 190, column: 16, scope: !485)
!487 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !56, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!488 = !DILocation(line: 191, column: 16, scope: !487)
!489 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !56, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!490 = !DILocation(line: 192, column: 16, scope: !489)
!491 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !56, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!492 = !DILocation(line: 193, column: 16, scope: !491)
!493 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !56, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!494 = !DILocation(line: 194, column: 16, scope: !493)
!495 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !56, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!496 = !DILocation(line: 195, column: 16, scope: !495)
!497 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !56, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!498 = !DILocation(line: 198, column: 15, scope: !497)
!499 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !56, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!500 = !DILocation(line: 199, column: 15, scope: !499)
!501 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !56, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!502 = !DILocation(line: 200, column: 15, scope: !501)
!503 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !56, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!504 = !DILocation(line: 201, column: 15, scope: !503)
!505 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !56, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!506 = !DILocation(line: 202, column: 15, scope: !505)
!507 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !56, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!508 = !DILocation(line: 203, column: 15, scope: !507)
!509 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !56, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!510 = !DILocation(line: 204, column: 15, scope: !509)
!511 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !56, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!512 = !DILocation(line: 205, column: 15, scope: !511)
!513 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !56, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!514 = !DILocation(line: 206, column: 15, scope: !513)
