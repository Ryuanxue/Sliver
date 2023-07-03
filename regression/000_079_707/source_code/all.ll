; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
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
@.str.3.10 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !59, metadata !DIExpression()), !dbg !63
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !63
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !63
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !64
  store i8* %arraydecay, i8** %data, align 8, !dbg !65
  %1 = load i8*, i8** %data, align 8, !dbg !66
  %call = call i8* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource(i8* %1), !dbg !67
  store i8* %call, i8** %data, align 8, !dbg !68
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !69
  %3 = load i8*, i8** %data, align 8, !dbg !70
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !71
  ret void, !dbg !72
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !73 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !76, metadata !DIExpression()), !dbg !77
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !77
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !77
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !78
  store i8* %arraydecay, i8** %data, align 8, !dbg !79
  %1 = load i8*, i8** %data, align 8, !dbg !80
  %call = call i8* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodG2BSource(i8* %1), !dbg !81
  store i8* %call, i8** %data, align 8, !dbg !82
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !83
  %3 = load i8*, i8** %data, align 8, !dbg !84
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !85
  ret void, !dbg !86
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !87 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !90, metadata !DIExpression()), !dbg !91
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !91
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !91
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !92
  store i8* %arraydecay, i8** %data, align 8, !dbg !93
  %1 = load i8*, i8** %data, align 8, !dbg !94
  %call = call i8* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodB2GSource(i8* %1), !dbg !95
  store i8* %call, i8** %data, align 8, !dbg !96
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !97
  %3 = load i8*, i8** %data, align 8, !dbg !98
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %3), !dbg !99
  ret void, !dbg !100
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_good() #0 !dbg !101 {
entry:
  call void @goodG2B(), !dbg !102
  call void @goodB2G(), !dbg !103
  ret void, !dbg !104
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource(i8* %data) #0 !dbg !105 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !110, metadata !DIExpression()), !dbg !115
  %0 = load i8*, i8** %data.addr, align 8, !dbg !116
  %call = call i64 @strlen(i8* %0) #7, !dbg !117
  store i64 %call, i64* %dataLen, align 8, !dbg !115
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !118, metadata !DIExpression()), !dbg !119
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !120
  store i8* %call1, i8** %environment, align 8, !dbg !119
  %1 = load i8*, i8** %environment, align 8, !dbg !121
  %cmp = icmp ne i8* %1, null, !dbg !123
  br i1 %cmp, label %if.then, label %if.end, !dbg !124

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !125
  %3 = load i64, i64* %dataLen, align 8, !dbg !127
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !128
  %4 = load i8*, i8** %environment, align 8, !dbg !129
  %5 = load i64, i64* %dataLen, align 8, !dbg !130
  %sub = sub i64 100, %5, !dbg !131
  %sub2 = sub i64 %sub, 1, !dbg !132
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %4, i64 %sub2) #8, !dbg !133
  br label %if.end, !dbg !134

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %data.addr, align 8, !dbg !135
  ret i8* %6, !dbg !136
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodG2BSource(i8* %data) #0 !dbg !137 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !138, metadata !DIExpression()), !dbg !139
  %0 = load i8*, i8** %data.addr, align 8, !dbg !140
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !141
  %1 = load i8*, i8** %data.addr, align 8, !dbg !142
  ret i8* %1, !dbg !143
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodB2GSource(i8* %data) #0 !dbg !144 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !147, metadata !DIExpression()), !dbg !149
  %0 = load i8*, i8** %data.addr, align 8, !dbg !150
  %call = call i64 @strlen(i8* %0) #7, !dbg !151
  store i64 %call, i64* %dataLen, align 8, !dbg !149
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !152, metadata !DIExpression()), !dbg !153
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !154
  store i8* %call1, i8** %environment, align 8, !dbg !153
  %1 = load i8*, i8** %environment, align 8, !dbg !155
  %cmp = icmp ne i8* %1, null, !dbg !157
  br i1 %cmp, label %if.then, label %if.end, !dbg !158

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !159
  %3 = load i64, i64* %dataLen, align 8, !dbg !161
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !162
  %4 = load i8*, i8** %environment, align 8, !dbg !163
  %5 = load i64, i64* %dataLen, align 8, !dbg !164
  %sub = sub i64 100, %5, !dbg !165
  %sub2 = sub i64 %sub, 1, !dbg !166
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %4, i64 %sub2) #8, !dbg !167
  br label %if.end, !dbg !168

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %data.addr, align 8, !dbg !169
  ret i8* %6, !dbg !170
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !171 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !174, metadata !DIExpression()), !dbg !175
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !176
  %0 = load i8*, i8** %line.addr, align 8, !dbg !177
  %cmp = icmp ne i8* %0, null, !dbg !179
  br i1 %cmp, label %if.then, label %if.end, !dbg !180

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !181
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !183
  br label %if.end, !dbg !184

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !185
  ret void, !dbg !186
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !187 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !188, metadata !DIExpression()), !dbg !189
  %0 = load i8*, i8** %line.addr, align 8, !dbg !190
  %cmp = icmp ne i8* %0, null, !dbg !192
  br i1 %cmp, label %if.then, label %if.end, !dbg !193

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !194
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !196
  br label %if.end, !dbg !197

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !198
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !199 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !204, metadata !DIExpression()), !dbg !205
  %0 = load i32*, i32** %line.addr, align 8, !dbg !206
  %cmp = icmp ne i32* %0, null, !dbg !208
  br i1 %cmp, label %if.then, label %if.end, !dbg !209

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !210
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.10, i64 0, i64 0), i32* %1), !dbg !212
  br label %if.end, !dbg !213

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !214
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !215 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !218, metadata !DIExpression()), !dbg !219
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !220
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !221
  ret void, !dbg !222
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !223 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !227, metadata !DIExpression()), !dbg !228
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !229
  %conv = sext i16 %0 to i32, !dbg !229
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !230
  ret void, !dbg !231
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !232 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !236, metadata !DIExpression()), !dbg !237
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !238
  %conv = fpext float %0 to double, !dbg !238
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !239
  ret void, !dbg !240
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !241 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !247
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !248
  ret void, !dbg !249
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !250 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !257, metadata !DIExpression()), !dbg !258
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !259
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !260
  ret void, !dbg !261
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !262 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !265, metadata !DIExpression()), !dbg !266
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !267
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.11, i64 0, i64 0), i64 %0), !dbg !268
  ret void, !dbg !269
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !270 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !273, metadata !DIExpression()), !dbg !274
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !275
  %conv = sext i8 %0 to i32, !dbg !275
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !276
  ret void, !dbg !277
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !278 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !283, metadata !DIExpression()), !dbg !287
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !288
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !289
  store i32 %0, i32* %arrayidx, align 4, !dbg !290
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !291
  store i32 0, i32* %arrayidx1, align 4, !dbg !292
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !293
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !294
  ret void, !dbg !295
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !296 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !299, metadata !DIExpression()), !dbg !300
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !301
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !302
  ret void, !dbg !303
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !304 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !307, metadata !DIExpression()), !dbg !308
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !309
  %conv = zext i8 %0 to i32, !dbg !309
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !310
  ret void, !dbg !311
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !312 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !316, metadata !DIExpression()), !dbg !317
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !318
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !319
  ret void, !dbg !320
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !321 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !331, metadata !DIExpression()), !dbg !332
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !333
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !334
  %1 = load i32, i32* %intOne, align 4, !dbg !334
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !335
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !336
  %3 = load i32, i32* %intTwo, align 4, !dbg !336
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !337
  ret void, !dbg !338
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !339 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !343, metadata !DIExpression()), !dbg !344
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata i64* %i, metadata !347, metadata !DIExpression()), !dbg !348
  store i64 0, i64* %i, align 8, !dbg !349
  br label %for.cond, !dbg !351

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !352
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !354
  %cmp = icmp ult i64 %0, %1, !dbg !355
  br i1 %cmp, label %for.body, label %for.end, !dbg !356

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !357
  %3 = load i64, i64* %i, align 8, !dbg !359
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !357
  %4 = load i8, i8* %arrayidx, align 1, !dbg !357
  %conv = zext i8 %4 to i32, !dbg !357
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !360
  br label %for.inc, !dbg !361

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !362
  %inc = add i64 %5, 1, !dbg !362
  store i64 %inc, i64* %i, align 8, !dbg !362
  br label %for.cond, !dbg !363, !llvm.loop !364

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !367
  ret void, !dbg !368
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !369 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !372, metadata !DIExpression()), !dbg !373
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !374, metadata !DIExpression()), !dbg !375
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !376, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !378, metadata !DIExpression()), !dbg !379
  store i64 0, i64* %numWritten, align 8, !dbg !379
  br label %while.cond, !dbg !380

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !381
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !382
  %cmp = icmp ult i64 %0, %1, !dbg !383
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !384

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !385
  %2 = load i16*, i16** %call, align 8, !dbg !385
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !385
  %4 = load i64, i64* %numWritten, align 8, !dbg !385
  %mul = mul i64 2, %4, !dbg !385
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !385
  %5 = load i8, i8* %arrayidx, align 1, !dbg !385
  %conv = sext i8 %5 to i32, !dbg !385
  %idxprom = sext i32 %conv to i64, !dbg !385
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !385
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !385
  %conv2 = zext i16 %6 to i32, !dbg !385
  %and = and i32 %conv2, 4096, !dbg !385
  %tobool = icmp ne i32 %and, 0, !dbg !385
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !386

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !387
  %7 = load i16*, i16** %call3, align 8, !dbg !387
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !387
  %9 = load i64, i64* %numWritten, align 8, !dbg !387
  %mul4 = mul i64 2, %9, !dbg !387
  %add = add i64 %mul4, 1, !dbg !387
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !387
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !387
  %conv6 = sext i8 %10 to i32, !dbg !387
  %idxprom7 = sext i32 %conv6 to i64, !dbg !387
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !387
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !387
  %conv9 = zext i16 %11 to i32, !dbg !387
  %and10 = and i32 %conv9, 4096, !dbg !387
  %tobool11 = icmp ne i32 %and10, 0, !dbg !386
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !388
  br i1 %12, label %while.body, label %while.end, !dbg !380

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !389, metadata !DIExpression()), !dbg !391
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !392
  %14 = load i64, i64* %numWritten, align 8, !dbg !393
  %mul12 = mul i64 2, %14, !dbg !394
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !392
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !395
  %15 = load i32, i32* %byte, align 4, !dbg !396
  %conv15 = trunc i32 %15 to i8, !dbg !397
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !398
  %17 = load i64, i64* %numWritten, align 8, !dbg !399
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !398
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !400
  %18 = load i64, i64* %numWritten, align 8, !dbg !401
  %inc = add i64 %18, 1, !dbg !401
  store i64 %inc, i64* %numWritten, align 8, !dbg !401
  br label %while.cond, !dbg !380, !llvm.loop !402

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !404
  ret i64 %19, !dbg !405
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !406 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !409, metadata !DIExpression()), !dbg !410
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !411, metadata !DIExpression()), !dbg !412
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !413, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !415, metadata !DIExpression()), !dbg !416
  store i64 0, i64* %numWritten, align 8, !dbg !416
  br label %while.cond, !dbg !417

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !418
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !419
  %cmp = icmp ult i64 %0, %1, !dbg !420
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !421

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !422
  %3 = load i64, i64* %numWritten, align 8, !dbg !423
  %mul = mul i64 2, %3, !dbg !424
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !422
  %4 = load i32, i32* %arrayidx, align 4, !dbg !422
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !425
  %tobool = icmp ne i32 %call, 0, !dbg !425
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !426

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !427
  %6 = load i64, i64* %numWritten, align 8, !dbg !428
  %mul1 = mul i64 2, %6, !dbg !429
  %add = add i64 %mul1, 1, !dbg !430
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !427
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !427
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !431
  %tobool4 = icmp ne i32 %call3, 0, !dbg !426
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !432
  br i1 %8, label %while.body, label %while.end, !dbg !417

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !433, metadata !DIExpression()), !dbg !435
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !436
  %10 = load i64, i64* %numWritten, align 8, !dbg !437
  %mul5 = mul i64 2, %10, !dbg !438
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !436
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !439
  %11 = load i32, i32* %byte, align 4, !dbg !440
  %conv = trunc i32 %11 to i8, !dbg !441
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !442
  %13 = load i64, i64* %numWritten, align 8, !dbg !443
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !442
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !444
  %14 = load i64, i64* %numWritten, align 8, !dbg !445
  %inc = add i64 %14, 1, !dbg !445
  store i64 %inc, i64* %numWritten, align 8, !dbg !445
  br label %while.cond, !dbg !417, !llvm.loop !446

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !448
  ret i64 %15, !dbg !449
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !450 {
entry:
  ret i32 1, !dbg !453
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !454 {
entry:
  ret i32 0, !dbg !455
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !456 {
entry:
  %call = call i32 @rand() #8, !dbg !457
  %rem = srem i32 %call, 2, !dbg !458
  ret i32 %rem, !dbg !459
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !460 {
entry:
  ret void, !dbg !461
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !462 {
entry:
  ret void, !dbg !463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !464 {
entry:
  ret void, !dbg !465
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !466 {
entry:
  ret void, !dbg !467
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !468 {
entry:
  ret void, !dbg !469
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !470 {
entry:
  ret void, !dbg !471
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !472 {
entry:
  ret void, !dbg !473
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !474 {
entry:
  ret void, !dbg !475
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !476 {
entry:
  ret void, !dbg !477
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !478 {
entry:
  ret void, !dbg !479
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !480 {
entry:
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !482 {
entry:
  ret void, !dbg !483
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !484 {
entry:
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !486 {
entry:
  ret void, !dbg !487
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !488 {
entry:
  ret void, !dbg !489
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !490 {
entry:
  ret void, !dbg !491
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !492 {
entry:
  ret void, !dbg !493
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !494 {
entry:
  ret void, !dbg !495
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!44, !47, !2}
!llvm.ident = !{!50, !50, !50}
!llvm.module.flags = !{!51, !52, !53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_707/source_code")
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
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_61a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_707/source_code")
!46 = !{}
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !49, splitDebugInlining: false, nameTableKind: None)
!48 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_707/source_code")
!49 = !{!22}
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad", scope: !45, file: !45, line: 37, type: !55, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!66 = !DILocation(line: 42, column: 86, scope: !54)
!67 = !DILocation(line: 42, column: 12, scope: !54)
!68 = !DILocation(line: 42, column: 10, scope: !54)
!69 = !DILocation(line: 44, column: 13, scope: !54)
!70 = !DILocation(line: 44, column: 21, scope: !54)
!71 = !DILocation(line: 44, column: 5, scope: !54)
!72 = !DILocation(line: 45, column: 1, scope: !54)
!73 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 53, type: !55, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!74 = !DILocalVariable(name: "data", scope: !73, file: !45, line: 55, type: !42)
!75 = !DILocation(line: 55, column: 12, scope: !73)
!76 = !DILocalVariable(name: "dataBuffer", scope: !73, file: !45, line: 56, type: !60)
!77 = !DILocation(line: 56, column: 10, scope: !73)
!78 = !DILocation(line: 57, column: 12, scope: !73)
!79 = !DILocation(line: 57, column: 10, scope: !73)
!80 = !DILocation(line: 58, column: 90, scope: !73)
!81 = !DILocation(line: 58, column: 12, scope: !73)
!82 = !DILocation(line: 58, column: 10, scope: !73)
!83 = !DILocation(line: 60, column: 13, scope: !73)
!84 = !DILocation(line: 60, column: 21, scope: !73)
!85 = !DILocation(line: 60, column: 5, scope: !73)
!86 = !DILocation(line: 61, column: 1, scope: !73)
!87 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 65, type: !55, scopeLine: 66, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!88 = !DILocalVariable(name: "data", scope: !87, file: !45, line: 67, type: !42)
!89 = !DILocation(line: 67, column: 12, scope: !87)
!90 = !DILocalVariable(name: "dataBuffer", scope: !87, file: !45, line: 68, type: !60)
!91 = !DILocation(line: 68, column: 10, scope: !87)
!92 = !DILocation(line: 69, column: 12, scope: !87)
!93 = !DILocation(line: 69, column: 10, scope: !87)
!94 = !DILocation(line: 70, column: 90, scope: !87)
!95 = !DILocation(line: 70, column: 12, scope: !87)
!96 = !DILocation(line: 70, column: 10, scope: !87)
!97 = !DILocation(line: 72, column: 13, scope: !87)
!98 = !DILocation(line: 72, column: 29, scope: !87)
!99 = !DILocation(line: 72, column: 5, scope: !87)
!100 = !DILocation(line: 73, column: 1, scope: !87)
!101 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_good", scope: !45, file: !45, line: 75, type: !55, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!102 = !DILocation(line: 77, column: 5, scope: !101)
!103 = !DILocation(line: 78, column: 5, scope: !101)
!104 = !DILocation(line: 79, column: 1, scope: !101)
!105 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource", scope: !48, file: !48, line: 34, type: !106, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!106 = !DISubroutineType(types: !107)
!107 = !{!42, !42}
!108 = !DILocalVariable(name: "data", arg: 1, scope: !105, file: !48, line: 34, type: !42)
!109 = !DILocation(line: 34, column: 89, scope: !105)
!110 = !DILocalVariable(name: "dataLen", scope: !111, file: !48, line: 38, type: !112)
!111 = distinct !DILexicalBlock(scope: !105, file: !48, line: 36, column: 5)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 46, baseType: !114)
!113 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!114 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!115 = !DILocation(line: 38, column: 16, scope: !111)
!116 = !DILocation(line: 38, column: 33, scope: !111)
!117 = !DILocation(line: 38, column: 26, scope: !111)
!118 = !DILocalVariable(name: "environment", scope: !111, file: !48, line: 39, type: !42)
!119 = !DILocation(line: 39, column: 16, scope: !111)
!120 = !DILocation(line: 39, column: 30, scope: !111)
!121 = !DILocation(line: 41, column: 13, scope: !122)
!122 = distinct !DILexicalBlock(scope: !111, file: !48, line: 41, column: 13)
!123 = !DILocation(line: 41, column: 25, scope: !122)
!124 = !DILocation(line: 41, column: 13, scope: !111)
!125 = !DILocation(line: 44, column: 21, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !48, line: 42, column: 9)
!127 = !DILocation(line: 44, column: 26, scope: !126)
!128 = !DILocation(line: 44, column: 25, scope: !126)
!129 = !DILocation(line: 44, column: 35, scope: !126)
!130 = !DILocation(line: 44, column: 52, scope: !126)
!131 = !DILocation(line: 44, column: 51, scope: !126)
!132 = !DILocation(line: 44, column: 59, scope: !126)
!133 = !DILocation(line: 44, column: 13, scope: !126)
!134 = !DILocation(line: 45, column: 9, scope: !126)
!135 = !DILocation(line: 47, column: 12, scope: !105)
!136 = !DILocation(line: 47, column: 5, scope: !105)
!137 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodG2BSource", scope: !48, file: !48, line: 55, type: !106, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!138 = !DILocalVariable(name: "data", arg: 1, scope: !137, file: !48, line: 55, type: !42)
!139 = !DILocation(line: 55, column: 93, scope: !137)
!140 = !DILocation(line: 58, column: 12, scope: !137)
!141 = !DILocation(line: 58, column: 5, scope: !137)
!142 = !DILocation(line: 59, column: 12, scope: !137)
!143 = !DILocation(line: 59, column: 5, scope: !137)
!144 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodB2GSource", scope: !48, file: !48, line: 63, type: !106, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!145 = !DILocalVariable(name: "data", arg: 1, scope: !144, file: !48, line: 63, type: !42)
!146 = !DILocation(line: 63, column: 93, scope: !144)
!147 = !DILocalVariable(name: "dataLen", scope: !148, file: !48, line: 67, type: !112)
!148 = distinct !DILexicalBlock(scope: !144, file: !48, line: 65, column: 5)
!149 = !DILocation(line: 67, column: 16, scope: !148)
!150 = !DILocation(line: 67, column: 33, scope: !148)
!151 = !DILocation(line: 67, column: 26, scope: !148)
!152 = !DILocalVariable(name: "environment", scope: !148, file: !48, line: 68, type: !42)
!153 = !DILocation(line: 68, column: 16, scope: !148)
!154 = !DILocation(line: 68, column: 30, scope: !148)
!155 = !DILocation(line: 70, column: 13, scope: !156)
!156 = distinct !DILexicalBlock(scope: !148, file: !48, line: 70, column: 13)
!157 = !DILocation(line: 70, column: 25, scope: !156)
!158 = !DILocation(line: 70, column: 13, scope: !148)
!159 = !DILocation(line: 73, column: 21, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !48, line: 71, column: 9)
!161 = !DILocation(line: 73, column: 26, scope: !160)
!162 = !DILocation(line: 73, column: 25, scope: !160)
!163 = !DILocation(line: 73, column: 35, scope: !160)
!164 = !DILocation(line: 73, column: 52, scope: !160)
!165 = !DILocation(line: 73, column: 51, scope: !160)
!166 = !DILocation(line: 73, column: 59, scope: !160)
!167 = !DILocation(line: 73, column: 13, scope: !160)
!168 = !DILocation(line: 74, column: 9, scope: !160)
!169 = !DILocation(line: 76, column: 12, scope: !144)
!170 = !DILocation(line: 76, column: 5, scope: !144)
!171 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !172, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !42}
!174 = !DILocalVariable(name: "line", arg: 1, scope: !171, file: !3, line: 11, type: !42)
!175 = !DILocation(line: 11, column: 25, scope: !171)
!176 = !DILocation(line: 13, column: 1, scope: !171)
!177 = !DILocation(line: 14, column: 8, scope: !178)
!178 = distinct !DILexicalBlock(scope: !171, file: !3, line: 14, column: 8)
!179 = !DILocation(line: 14, column: 13, scope: !178)
!180 = !DILocation(line: 14, column: 8, scope: !171)
!181 = !DILocation(line: 16, column: 24, scope: !182)
!182 = distinct !DILexicalBlock(scope: !178, file: !3, line: 15, column: 5)
!183 = !DILocation(line: 16, column: 9, scope: !182)
!184 = !DILocation(line: 17, column: 5, scope: !182)
!185 = !DILocation(line: 18, column: 5, scope: !171)
!186 = !DILocation(line: 19, column: 1, scope: !171)
!187 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !172, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!188 = !DILocalVariable(name: "line", arg: 1, scope: !187, file: !3, line: 20, type: !42)
!189 = !DILocation(line: 20, column: 29, scope: !187)
!190 = !DILocation(line: 22, column: 8, scope: !191)
!191 = distinct !DILexicalBlock(scope: !187, file: !3, line: 22, column: 8)
!192 = !DILocation(line: 22, column: 13, scope: !191)
!193 = !DILocation(line: 22, column: 8, scope: !187)
!194 = !DILocation(line: 24, column: 24, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !3, line: 23, column: 5)
!196 = !DILocation(line: 24, column: 9, scope: !195)
!197 = !DILocation(line: 25, column: 5, scope: !195)
!198 = !DILocation(line: 26, column: 1, scope: !187)
!199 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !200, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !113, line: 74, baseType: !23)
!204 = !DILocalVariable(name: "line", arg: 1, scope: !199, file: !3, line: 27, type: !202)
!205 = !DILocation(line: 27, column: 29, scope: !199)
!206 = !DILocation(line: 29, column: 8, scope: !207)
!207 = distinct !DILexicalBlock(scope: !199, file: !3, line: 29, column: 8)
!208 = !DILocation(line: 29, column: 13, scope: !207)
!209 = !DILocation(line: 29, column: 8, scope: !199)
!210 = !DILocation(line: 31, column: 27, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !3, line: 30, column: 5)
!212 = !DILocation(line: 31, column: 9, scope: !211)
!213 = !DILocation(line: 32, column: 5, scope: !211)
!214 = !DILocation(line: 33, column: 1, scope: !199)
!215 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !216, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !23}
!218 = !DILocalVariable(name: "intNumber", arg: 1, scope: !215, file: !3, line: 35, type: !23)
!219 = !DILocation(line: 35, column: 24, scope: !215)
!220 = !DILocation(line: 37, column: 20, scope: !215)
!221 = !DILocation(line: 37, column: 5, scope: !215)
!222 = !DILocation(line: 38, column: 1, scope: !215)
!223 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !224, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !226}
!226 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!227 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !223, file: !3, line: 40, type: !226)
!228 = !DILocation(line: 40, column: 28, scope: !223)
!229 = !DILocation(line: 42, column: 21, scope: !223)
!230 = !DILocation(line: 42, column: 5, scope: !223)
!231 = !DILocation(line: 43, column: 1, scope: !223)
!232 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !233, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !235}
!235 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!236 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !232, file: !3, line: 45, type: !235)
!237 = !DILocation(line: 45, column: 28, scope: !232)
!238 = !DILocation(line: 47, column: 20, scope: !232)
!239 = !DILocation(line: 47, column: 5, scope: !232)
!240 = !DILocation(line: 48, column: 1, scope: !232)
!241 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !242, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !244}
!244 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!245 = !DILocalVariable(name: "longNumber", arg: 1, scope: !241, file: !3, line: 50, type: !244)
!246 = !DILocation(line: 50, column: 26, scope: !241)
!247 = !DILocation(line: 52, column: 21, scope: !241)
!248 = !DILocation(line: 52, column: 5, scope: !241)
!249 = !DILocation(line: 53, column: 1, scope: !241)
!250 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !251, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !253}
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !254, line: 27, baseType: !255)
!254 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !256, line: 44, baseType: !244)
!256 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!257 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !250, file: !3, line: 55, type: !253)
!258 = !DILocation(line: 55, column: 33, scope: !250)
!259 = !DILocation(line: 57, column: 29, scope: !250)
!260 = !DILocation(line: 57, column: 5, scope: !250)
!261 = !DILocation(line: 58, column: 1, scope: !250)
!262 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !263, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !112}
!265 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !262, file: !3, line: 60, type: !112)
!266 = !DILocation(line: 60, column: 29, scope: !262)
!267 = !DILocation(line: 62, column: 21, scope: !262)
!268 = !DILocation(line: 62, column: 5, scope: !262)
!269 = !DILocation(line: 63, column: 1, scope: !262)
!270 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !271, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !43}
!273 = !DILocalVariable(name: "charHex", arg: 1, scope: !270, file: !3, line: 65, type: !43)
!274 = !DILocation(line: 65, column: 29, scope: !270)
!275 = !DILocation(line: 67, column: 22, scope: !270)
!276 = !DILocation(line: 67, column: 5, scope: !270)
!277 = !DILocation(line: 68, column: 1, scope: !270)
!278 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !279, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !203}
!281 = !DILocalVariable(name: "wideChar", arg: 1, scope: !278, file: !3, line: 70, type: !203)
!282 = !DILocation(line: 70, column: 29, scope: !278)
!283 = !DILocalVariable(name: "s", scope: !278, file: !3, line: 74, type: !284)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 64, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 2)
!287 = !DILocation(line: 74, column: 13, scope: !278)
!288 = !DILocation(line: 75, column: 16, scope: !278)
!289 = !DILocation(line: 75, column: 9, scope: !278)
!290 = !DILocation(line: 75, column: 14, scope: !278)
!291 = !DILocation(line: 76, column: 9, scope: !278)
!292 = !DILocation(line: 76, column: 14, scope: !278)
!293 = !DILocation(line: 77, column: 21, scope: !278)
!294 = !DILocation(line: 77, column: 5, scope: !278)
!295 = !DILocation(line: 78, column: 1, scope: !278)
!296 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !297, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !7}
!299 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !296, file: !3, line: 80, type: !7)
!300 = !DILocation(line: 80, column: 33, scope: !296)
!301 = !DILocation(line: 82, column: 20, scope: !296)
!302 = !DILocation(line: 82, column: 5, scope: !296)
!303 = !DILocation(line: 83, column: 1, scope: !296)
!304 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !305, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !25}
!307 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !304, file: !3, line: 85, type: !25)
!308 = !DILocation(line: 85, column: 45, scope: !304)
!309 = !DILocation(line: 87, column: 22, scope: !304)
!310 = !DILocation(line: 87, column: 5, scope: !304)
!311 = !DILocation(line: 88, column: 1, scope: !304)
!312 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !313, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !315}
!315 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!316 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !312, file: !3, line: 90, type: !315)
!317 = !DILocation(line: 90, column: 29, scope: !312)
!318 = !DILocation(line: 92, column: 20, scope: !312)
!319 = !DILocation(line: 92, column: 5, scope: !312)
!320 = !DILocation(line: 93, column: 1, scope: !312)
!321 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !322, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !324}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !326, line: 100, baseType: !327)
!326 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_707/source_code")
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !326, line: 96, size: 64, elements: !328)
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !327, file: !326, line: 98, baseType: !23, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !327, file: !326, line: 99, baseType: !23, size: 32, offset: 32)
!331 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !321, file: !3, line: 95, type: !324)
!332 = !DILocation(line: 95, column: 40, scope: !321)
!333 = !DILocation(line: 97, column: 26, scope: !321)
!334 = !DILocation(line: 97, column: 47, scope: !321)
!335 = !DILocation(line: 97, column: 55, scope: !321)
!336 = !DILocation(line: 97, column: 76, scope: !321)
!337 = !DILocation(line: 97, column: 5, scope: !321)
!338 = !DILocation(line: 98, column: 1, scope: !321)
!339 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !340, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !342, !112}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!343 = !DILocalVariable(name: "bytes", arg: 1, scope: !339, file: !3, line: 100, type: !342)
!344 = !DILocation(line: 100, column: 38, scope: !339)
!345 = !DILocalVariable(name: "numBytes", arg: 2, scope: !339, file: !3, line: 100, type: !112)
!346 = !DILocation(line: 100, column: 52, scope: !339)
!347 = !DILocalVariable(name: "i", scope: !339, file: !3, line: 102, type: !112)
!348 = !DILocation(line: 102, column: 12, scope: !339)
!349 = !DILocation(line: 103, column: 12, scope: !350)
!350 = distinct !DILexicalBlock(scope: !339, file: !3, line: 103, column: 5)
!351 = !DILocation(line: 103, column: 10, scope: !350)
!352 = !DILocation(line: 103, column: 17, scope: !353)
!353 = distinct !DILexicalBlock(scope: !350, file: !3, line: 103, column: 5)
!354 = !DILocation(line: 103, column: 21, scope: !353)
!355 = !DILocation(line: 103, column: 19, scope: !353)
!356 = !DILocation(line: 103, column: 5, scope: !350)
!357 = !DILocation(line: 105, column: 24, scope: !358)
!358 = distinct !DILexicalBlock(scope: !353, file: !3, line: 104, column: 5)
!359 = !DILocation(line: 105, column: 30, scope: !358)
!360 = !DILocation(line: 105, column: 9, scope: !358)
!361 = !DILocation(line: 106, column: 5, scope: !358)
!362 = !DILocation(line: 103, column: 31, scope: !353)
!363 = !DILocation(line: 103, column: 5, scope: !353)
!364 = distinct !{!364, !356, !365, !366}
!365 = !DILocation(line: 106, column: 5, scope: !350)
!366 = !{!"llvm.loop.mustprogress"}
!367 = !DILocation(line: 107, column: 5, scope: !339)
!368 = !DILocation(line: 108, column: 1, scope: !339)
!369 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !370, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!370 = !DISubroutineType(types: !371)
!371 = !{!112, !342, !112, !42}
!372 = !DILocalVariable(name: "bytes", arg: 1, scope: !369, file: !3, line: 113, type: !342)
!373 = !DILocation(line: 113, column: 39, scope: !369)
!374 = !DILocalVariable(name: "numBytes", arg: 2, scope: !369, file: !3, line: 113, type: !112)
!375 = !DILocation(line: 113, column: 53, scope: !369)
!376 = !DILocalVariable(name: "hex", arg: 3, scope: !369, file: !3, line: 113, type: !42)
!377 = !DILocation(line: 113, column: 71, scope: !369)
!378 = !DILocalVariable(name: "numWritten", scope: !369, file: !3, line: 115, type: !112)
!379 = !DILocation(line: 115, column: 12, scope: !369)
!380 = !DILocation(line: 121, column: 5, scope: !369)
!381 = !DILocation(line: 121, column: 12, scope: !369)
!382 = !DILocation(line: 121, column: 25, scope: !369)
!383 = !DILocation(line: 121, column: 23, scope: !369)
!384 = !DILocation(line: 121, column: 34, scope: !369)
!385 = !DILocation(line: 121, column: 37, scope: !369)
!386 = !DILocation(line: 121, column: 67, scope: !369)
!387 = !DILocation(line: 121, column: 70, scope: !369)
!388 = !DILocation(line: 0, scope: !369)
!389 = !DILocalVariable(name: "byte", scope: !390, file: !3, line: 123, type: !23)
!390 = distinct !DILexicalBlock(scope: !369, file: !3, line: 122, column: 5)
!391 = !DILocation(line: 123, column: 13, scope: !390)
!392 = !DILocation(line: 124, column: 17, scope: !390)
!393 = !DILocation(line: 124, column: 25, scope: !390)
!394 = !DILocation(line: 124, column: 23, scope: !390)
!395 = !DILocation(line: 124, column: 9, scope: !390)
!396 = !DILocation(line: 125, column: 45, scope: !390)
!397 = !DILocation(line: 125, column: 29, scope: !390)
!398 = !DILocation(line: 125, column: 9, scope: !390)
!399 = !DILocation(line: 125, column: 15, scope: !390)
!400 = !DILocation(line: 125, column: 27, scope: !390)
!401 = !DILocation(line: 126, column: 9, scope: !390)
!402 = distinct !{!402, !380, !403, !366}
!403 = !DILocation(line: 127, column: 5, scope: !369)
!404 = !DILocation(line: 129, column: 12, scope: !369)
!405 = !DILocation(line: 129, column: 5, scope: !369)
!406 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !407, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!407 = !DISubroutineType(types: !408)
!408 = !{!112, !342, !112, !202}
!409 = !DILocalVariable(name: "bytes", arg: 1, scope: !406, file: !3, line: 135, type: !342)
!410 = !DILocation(line: 135, column: 41, scope: !406)
!411 = !DILocalVariable(name: "numBytes", arg: 2, scope: !406, file: !3, line: 135, type: !112)
!412 = !DILocation(line: 135, column: 55, scope: !406)
!413 = !DILocalVariable(name: "hex", arg: 3, scope: !406, file: !3, line: 135, type: !202)
!414 = !DILocation(line: 135, column: 76, scope: !406)
!415 = !DILocalVariable(name: "numWritten", scope: !406, file: !3, line: 137, type: !112)
!416 = !DILocation(line: 137, column: 12, scope: !406)
!417 = !DILocation(line: 143, column: 5, scope: !406)
!418 = !DILocation(line: 143, column: 12, scope: !406)
!419 = !DILocation(line: 143, column: 25, scope: !406)
!420 = !DILocation(line: 143, column: 23, scope: !406)
!421 = !DILocation(line: 143, column: 34, scope: !406)
!422 = !DILocation(line: 143, column: 47, scope: !406)
!423 = !DILocation(line: 143, column: 55, scope: !406)
!424 = !DILocation(line: 143, column: 53, scope: !406)
!425 = !DILocation(line: 143, column: 37, scope: !406)
!426 = !DILocation(line: 143, column: 68, scope: !406)
!427 = !DILocation(line: 143, column: 81, scope: !406)
!428 = !DILocation(line: 143, column: 89, scope: !406)
!429 = !DILocation(line: 143, column: 87, scope: !406)
!430 = !DILocation(line: 143, column: 100, scope: !406)
!431 = !DILocation(line: 143, column: 71, scope: !406)
!432 = !DILocation(line: 0, scope: !406)
!433 = !DILocalVariable(name: "byte", scope: !434, file: !3, line: 145, type: !23)
!434 = distinct !DILexicalBlock(scope: !406, file: !3, line: 144, column: 5)
!435 = !DILocation(line: 145, column: 13, scope: !434)
!436 = !DILocation(line: 146, column: 18, scope: !434)
!437 = !DILocation(line: 146, column: 26, scope: !434)
!438 = !DILocation(line: 146, column: 24, scope: !434)
!439 = !DILocation(line: 146, column: 9, scope: !434)
!440 = !DILocation(line: 147, column: 45, scope: !434)
!441 = !DILocation(line: 147, column: 29, scope: !434)
!442 = !DILocation(line: 147, column: 9, scope: !434)
!443 = !DILocation(line: 147, column: 15, scope: !434)
!444 = !DILocation(line: 147, column: 27, scope: !434)
!445 = !DILocation(line: 148, column: 9, scope: !434)
!446 = distinct !{!446, !417, !447, !366}
!447 = !DILocation(line: 149, column: 5, scope: !406)
!448 = !DILocation(line: 151, column: 12, scope: !406)
!449 = !DILocation(line: 151, column: 5, scope: !406)
!450 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !451, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!451 = !DISubroutineType(types: !452)
!452 = !{!23}
!453 = !DILocation(line: 158, column: 5, scope: !450)
!454 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !451, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!455 = !DILocation(line: 163, column: 5, scope: !454)
!456 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !451, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!457 = !DILocation(line: 168, column: 13, scope: !456)
!458 = !DILocation(line: 168, column: 20, scope: !456)
!459 = !DILocation(line: 168, column: 5, scope: !456)
!460 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!461 = !DILocation(line: 187, column: 16, scope: !460)
!462 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!463 = !DILocation(line: 188, column: 16, scope: !462)
!464 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!465 = !DILocation(line: 189, column: 16, scope: !464)
!466 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!467 = !DILocation(line: 190, column: 16, scope: !466)
!468 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!469 = !DILocation(line: 191, column: 16, scope: !468)
!470 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!471 = !DILocation(line: 192, column: 16, scope: !470)
!472 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!473 = !DILocation(line: 193, column: 16, scope: !472)
!474 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!475 = !DILocation(line: 194, column: 16, scope: !474)
!476 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!477 = !DILocation(line: 195, column: 16, scope: !476)
!478 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!479 = !DILocation(line: 198, column: 15, scope: !478)
!480 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!481 = !DILocation(line: 199, column: 15, scope: !480)
!482 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!483 = !DILocation(line: 200, column: 15, scope: !482)
!484 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!485 = !DILocation(line: 201, column: 15, scope: !484)
!486 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!487 = !DILocation(line: 202, column: 15, scope: !486)
!488 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!489 = !DILocation(line: 203, column: 15, scope: !488)
!490 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!491 = !DILocation(line: 204, column: 15, scope: !490)
!492 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!493 = !DILocation(line: 205, column: 15, scope: !492)
!494 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!495 = !DILocation(line: 206, column: 15, scope: !494)
