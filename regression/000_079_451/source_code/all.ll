; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_18_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !57, metadata !DIExpression()), !dbg !61
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !61
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !62
  store i8* %arraydecay, i8** %data, align 8, !dbg !63
  br label %source, !dbg !64

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !65), !dbg !66
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !72
  %1 = load i8*, i8** %data, align 8, !dbg !73
  %call = call i64 @strlen(i8* %1) #7, !dbg !74
  store i64 %call, i64* %dataLen, align 8, !dbg !72
  %2 = load i64, i64* %dataLen, align 8, !dbg !75
  %sub = sub i64 100, %2, !dbg !77
  %cmp = icmp ugt i64 %sub, 1, !dbg !78
  br i1 %cmp, label %if.then, label %if.end18, !dbg !79

if.then:                                          ; preds = %source
  %3 = load i8*, i8** %data, align 8, !dbg !80
  %4 = load i64, i64* %dataLen, align 8, !dbg !83
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !84
  %5 = load i64, i64* %dataLen, align 8, !dbg !85
  %sub1 = sub i64 100, %5, !dbg !86
  %conv = trunc i64 %sub1 to i32, !dbg !87
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !88
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !89
  %cmp3 = icmp ne i8* %call2, null, !dbg !90
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !91

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !92
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !94
  store i64 %call6, i64* %dataLen, align 8, !dbg !95
  %8 = load i64, i64* %dataLen, align 8, !dbg !96
  %cmp7 = icmp ugt i64 %8, 0, !dbg !98
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !99

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !100
  %10 = load i64, i64* %dataLen, align 8, !dbg !101
  %sub9 = sub i64 %10, 1, !dbg !102
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !100
  %11 = load i8, i8* %arrayidx, align 1, !dbg !100
  %conv10 = sext i8 %11 to i32, !dbg !100
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !103
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !104

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !105
  %13 = load i64, i64* %dataLen, align 8, !dbg !107
  %sub14 = sub i64 %13, 1, !dbg !108
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !105
  store i8 0, i8* %arrayidx15, align 1, !dbg !109
  br label %if.end, !dbg !110

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !111

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !112
  %14 = load i8*, i8** %data, align 8, !dbg !114
  %15 = load i64, i64* %dataLen, align 8, !dbg !115
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !114
  store i8 0, i8* %arrayidx16, align 1, !dbg !116
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !117

if.end18:                                         ; preds = %if.end17, %source
  br label %sink, !dbg !118

sink:                                             ; preds = %if.end18
  call void @llvm.dbg.label(metadata !119), !dbg !120
  %16 = load i8*, i8** %data, align 8, !dbg !121
  %call19 = call i32 (i8*, ...) @printf(i8* %16), !dbg !122
  ret void, !dbg !123
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !124 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !127, metadata !DIExpression()), !dbg !128
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !128
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !128
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !129
  store i8* %arraydecay, i8** %data, align 8, !dbg !130
  br label %source, !dbg !131

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !132), !dbg !133
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !134, metadata !DIExpression()), !dbg !136
  %1 = load i8*, i8** %data, align 8, !dbg !137
  %call = call i64 @strlen(i8* %1) #7, !dbg !138
  store i64 %call, i64* %dataLen, align 8, !dbg !136
  %2 = load i64, i64* %dataLen, align 8, !dbg !139
  %sub = sub i64 100, %2, !dbg !141
  %cmp = icmp ugt i64 %sub, 1, !dbg !142
  br i1 %cmp, label %if.then, label %if.end18, !dbg !143

if.then:                                          ; preds = %source
  %3 = load i8*, i8** %data, align 8, !dbg !144
  %4 = load i64, i64* %dataLen, align 8, !dbg !147
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !148
  %5 = load i64, i64* %dataLen, align 8, !dbg !149
  %sub1 = sub i64 100, %5, !dbg !150
  %conv = trunc i64 %sub1 to i32, !dbg !151
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !152
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !153
  %cmp3 = icmp ne i8* %call2, null, !dbg !154
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !155

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !156
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !158
  store i64 %call6, i64* %dataLen, align 8, !dbg !159
  %8 = load i64, i64* %dataLen, align 8, !dbg !160
  %cmp7 = icmp ugt i64 %8, 0, !dbg !162
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !163

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !164
  %10 = load i64, i64* %dataLen, align 8, !dbg !165
  %sub9 = sub i64 %10, 1, !dbg !166
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !164
  %11 = load i8, i8* %arrayidx, align 1, !dbg !164
  %conv10 = sext i8 %11 to i32, !dbg !164
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !167
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !168

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !169
  %13 = load i64, i64* %dataLen, align 8, !dbg !171
  %sub14 = sub i64 %13, 1, !dbg !172
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !169
  store i8 0, i8* %arrayidx15, align 1, !dbg !173
  br label %if.end, !dbg !174

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !175

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !176
  %14 = load i8*, i8** %data, align 8, !dbg !178
  %15 = load i64, i64* %dataLen, align 8, !dbg !179
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !178
  store i8 0, i8* %arrayidx16, align 1, !dbg !180
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !181

if.end18:                                         ; preds = %if.end17, %source
  br label %sink, !dbg !182

sink:                                             ; preds = %if.end18
  call void @llvm.dbg.label(metadata !183), !dbg !184
  %16 = load i8*, i8** %data, align 8, !dbg !185
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %16), !dbg !186
  ret void, !dbg !187
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !188 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !191, metadata !DIExpression()), !dbg !192
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !192
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !192
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !193
  store i8* %arraydecay, i8** %data, align 8, !dbg !194
  br label %source, !dbg !195

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !196), !dbg !197
  %1 = load i8*, i8** %data, align 8, !dbg !198
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !199
  br label %sink, !dbg !200

sink:                                             ; preds = %source
  call void @llvm.dbg.label(metadata !201), !dbg !202
  %2 = load i8*, i8** %data, align 8, !dbg !203
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !204
  ret void, !dbg !205
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_18_good() #0 !dbg !206 {
entry:
  call void @goodB2G(), !dbg !207
  call void @goodG2B(), !dbg !208
  ret void, !dbg !209
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !210 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !213, metadata !DIExpression()), !dbg !214
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !215
  %0 = load i8*, i8** %line.addr, align 8, !dbg !216
  %cmp = icmp ne i8* %0, null, !dbg !218
  br i1 %cmp, label %if.then, label %if.end, !dbg !219

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !220
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !222
  br label %if.end, !dbg !223

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !224
  ret void, !dbg !225
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !226 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !227, metadata !DIExpression()), !dbg !228
  %0 = load i8*, i8** %line.addr, align 8, !dbg !229
  %cmp = icmp ne i8* %0, null, !dbg !231
  br i1 %cmp, label %if.then, label %if.end, !dbg !232

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !233
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !235
  br label %if.end, !dbg !236

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !237
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !238 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !243, metadata !DIExpression()), !dbg !244
  %0 = load i32*, i32** %line.addr, align 8, !dbg !245
  %cmp = icmp ne i32* %0, null, !dbg !247
  br i1 %cmp, label %if.then, label %if.end, !dbg !248

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !249
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !251
  br label %if.end, !dbg !252

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !253
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !254 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !257, metadata !DIExpression()), !dbg !258
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !259
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !260
  ret void, !dbg !261
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !262 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !266, metadata !DIExpression()), !dbg !267
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !268
  %conv = sext i16 %0 to i32, !dbg !268
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !269
  ret void, !dbg !270
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !271 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !275, metadata !DIExpression()), !dbg !276
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !277
  %conv = fpext float %0 to double, !dbg !277
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !278
  ret void, !dbg !279
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !280 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !284, metadata !DIExpression()), !dbg !285
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !286
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !287
  ret void, !dbg !288
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !289 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !296, metadata !DIExpression()), !dbg !297
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !298
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !299
  ret void, !dbg !300
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !301 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !304, metadata !DIExpression()), !dbg !305
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !306
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !307
  ret void, !dbg !308
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !309 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !312, metadata !DIExpression()), !dbg !313
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !314
  %conv = sext i8 %0 to i32, !dbg !314
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !315
  ret void, !dbg !316
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !317 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !320, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !322, metadata !DIExpression()), !dbg !326
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !327
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !328
  store i32 %0, i32* %arrayidx, align 4, !dbg !329
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !330
  store i32 0, i32* %arrayidx1, align 4, !dbg !331
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !332
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !333
  ret void, !dbg !334
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !335 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !338, metadata !DIExpression()), !dbg !339
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !340
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !341
  ret void, !dbg !342
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !343 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !346, metadata !DIExpression()), !dbg !347
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !348
  %conv = zext i8 %0 to i32, !dbg !348
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !349
  ret void, !dbg !350
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !351 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !355, metadata !DIExpression()), !dbg !356
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !357
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !358
  ret void, !dbg !359
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !360 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !370, metadata !DIExpression()), !dbg !371
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !372
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !373
  %1 = load i32, i32* %intOne, align 4, !dbg !373
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !374
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !375
  %3 = load i32, i32* %intTwo, align 4, !dbg !375
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !376
  ret void, !dbg !377
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !378 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !382, metadata !DIExpression()), !dbg !383
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !384, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.declare(metadata i64* %i, metadata !386, metadata !DIExpression()), !dbg !387
  store i64 0, i64* %i, align 8, !dbg !388
  br label %for.cond, !dbg !390

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !391
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !393
  %cmp = icmp ult i64 %0, %1, !dbg !394
  br i1 %cmp, label %for.body, label %for.end, !dbg !395

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !396
  %3 = load i64, i64* %i, align 8, !dbg !398
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !396
  %4 = load i8, i8* %arrayidx, align 1, !dbg !396
  %conv = zext i8 %4 to i32, !dbg !396
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !399
  br label %for.inc, !dbg !400

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !401
  %inc = add i64 %5, 1, !dbg !401
  store i64 %inc, i64* %i, align 8, !dbg !401
  br label %for.cond, !dbg !402, !llvm.loop !403

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !406
  ret void, !dbg !407
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !408 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !411, metadata !DIExpression()), !dbg !412
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !413, metadata !DIExpression()), !dbg !414
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !415, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !417, metadata !DIExpression()), !dbg !418
  store i64 0, i64* %numWritten, align 8, !dbg !418
  br label %while.cond, !dbg !419

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !420
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !421
  %cmp = icmp ult i64 %0, %1, !dbg !422
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !423

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !424
  %2 = load i16*, i16** %call, align 8, !dbg !424
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !424
  %4 = load i64, i64* %numWritten, align 8, !dbg !424
  %mul = mul i64 2, %4, !dbg !424
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !424
  %5 = load i8, i8* %arrayidx, align 1, !dbg !424
  %conv = sext i8 %5 to i32, !dbg !424
  %idxprom = sext i32 %conv to i64, !dbg !424
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !424
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !424
  %conv2 = zext i16 %6 to i32, !dbg !424
  %and = and i32 %conv2, 4096, !dbg !424
  %tobool = icmp ne i32 %and, 0, !dbg !424
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !425

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !426
  %7 = load i16*, i16** %call3, align 8, !dbg !426
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !426
  %9 = load i64, i64* %numWritten, align 8, !dbg !426
  %mul4 = mul i64 2, %9, !dbg !426
  %add = add i64 %mul4, 1, !dbg !426
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !426
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !426
  %conv6 = sext i8 %10 to i32, !dbg !426
  %idxprom7 = sext i32 %conv6 to i64, !dbg !426
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !426
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !426
  %conv9 = zext i16 %11 to i32, !dbg !426
  %and10 = and i32 %conv9, 4096, !dbg !426
  %tobool11 = icmp ne i32 %and10, 0, !dbg !425
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !427
  br i1 %12, label %while.body, label %while.end, !dbg !419

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !428, metadata !DIExpression()), !dbg !430
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !431
  %14 = load i64, i64* %numWritten, align 8, !dbg !432
  %mul12 = mul i64 2, %14, !dbg !433
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !431
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !434
  %15 = load i32, i32* %byte, align 4, !dbg !435
  %conv15 = trunc i32 %15 to i8, !dbg !436
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !437
  %17 = load i64, i64* %numWritten, align 8, !dbg !438
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !437
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !439
  %18 = load i64, i64* %numWritten, align 8, !dbg !440
  %inc = add i64 %18, 1, !dbg !440
  store i64 %inc, i64* %numWritten, align 8, !dbg !440
  br label %while.cond, !dbg !419, !llvm.loop !441

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !443
  ret i64 %19, !dbg !444
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !445 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !448, metadata !DIExpression()), !dbg !449
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !450, metadata !DIExpression()), !dbg !451
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !452, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !454, metadata !DIExpression()), !dbg !455
  store i64 0, i64* %numWritten, align 8, !dbg !455
  br label %while.cond, !dbg !456

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !457
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !458
  %cmp = icmp ult i64 %0, %1, !dbg !459
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !460

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !461
  %3 = load i64, i64* %numWritten, align 8, !dbg !462
  %mul = mul i64 2, %3, !dbg !463
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !461
  %4 = load i32, i32* %arrayidx, align 4, !dbg !461
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !464
  %tobool = icmp ne i32 %call, 0, !dbg !464
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !465

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !466
  %6 = load i64, i64* %numWritten, align 8, !dbg !467
  %mul1 = mul i64 2, %6, !dbg !468
  %add = add i64 %mul1, 1, !dbg !469
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !466
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !466
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !470
  %tobool4 = icmp ne i32 %call3, 0, !dbg !465
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !471
  br i1 %8, label %while.body, label %while.end, !dbg !456

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !472, metadata !DIExpression()), !dbg !474
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !475
  %10 = load i64, i64* %numWritten, align 8, !dbg !476
  %mul5 = mul i64 2, %10, !dbg !477
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !475
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !478
  %11 = load i32, i32* %byte, align 4, !dbg !479
  %conv = trunc i32 %11 to i8, !dbg !480
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !481
  %13 = load i64, i64* %numWritten, align 8, !dbg !482
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !481
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !483
  %14 = load i64, i64* %numWritten, align 8, !dbg !484
  %inc = add i64 %14, 1, !dbg !484
  store i64 %inc, i64* %numWritten, align 8, !dbg !484
  br label %while.cond, !dbg !456, !llvm.loop !485

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !487
  ret i64 %15, !dbg !488
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !489 {
entry:
  ret i32 1, !dbg !492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !493 {
entry:
  ret i32 0, !dbg !494
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !495 {
entry:
  %call = call i32 @rand() #8, !dbg !496
  %rem = srem i32 %call, 2, !dbg !497
  ret i32 %rem, !dbg !498
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !499 {
entry:
  ret void, !dbg !500
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !501 {
entry:
  ret void, !dbg !502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !503 {
entry:
  ret void, !dbg !504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !505 {
entry:
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !507 {
entry:
  ret void, !dbg !508
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !509 {
entry:
  ret void, !dbg !510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !511 {
entry:
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !513 {
entry:
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !515 {
entry:
  ret void, !dbg !516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !517 {
entry:
  ret void, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !519 {
entry:
  ret void, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !521 {
entry:
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !523 {
entry:
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !525 {
entry:
  ret void, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !527 {
entry:
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !529 {
entry:
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !531 {
entry:
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !533 {
entry:
  ret void, !dbg !534
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_451/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_18.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_451/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_18_bad", scope: !45, file: !45, line: 27, type: !53, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 29, type: !42)
!56 = !DILocation(line: 29, column: 12, scope: !52)
!57 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 30, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 100)
!61 = !DILocation(line: 30, column: 10, scope: !52)
!62 = !DILocation(line: 31, column: 12, scope: !52)
!63 = !DILocation(line: 31, column: 10, scope: !52)
!64 = !DILocation(line: 32, column: 5, scope: !52)
!65 = !DILabel(scope: !52, name: "source", file: !45, line: 33)
!66 = !DILocation(line: 33, column: 1, scope: !52)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !45, line: 36, type: !69)
!68 = distinct !DILexicalBlock(scope: !52, file: !45, line: 34, column: 5)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!71 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DILocation(line: 36, column: 16, scope: !68)
!73 = !DILocation(line: 36, column: 33, scope: !68)
!74 = !DILocation(line: 36, column: 26, scope: !68)
!75 = !DILocation(line: 38, column: 17, scope: !76)
!76 = distinct !DILexicalBlock(scope: !68, file: !45, line: 38, column: 13)
!77 = !DILocation(line: 38, column: 16, scope: !76)
!78 = !DILocation(line: 38, column: 25, scope: !76)
!79 = !DILocation(line: 38, column: 13, scope: !68)
!80 = !DILocation(line: 41, column: 23, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !45, line: 41, column: 17)
!82 = distinct !DILexicalBlock(scope: !76, file: !45, line: 39, column: 9)
!83 = !DILocation(line: 41, column: 28, scope: !81)
!84 = !DILocation(line: 41, column: 27, scope: !81)
!85 = !DILocation(line: 41, column: 47, scope: !81)
!86 = !DILocation(line: 41, column: 46, scope: !81)
!87 = !DILocation(line: 41, column: 37, scope: !81)
!88 = !DILocation(line: 41, column: 57, scope: !81)
!89 = !DILocation(line: 41, column: 17, scope: !81)
!90 = !DILocation(line: 41, column: 64, scope: !81)
!91 = !DILocation(line: 41, column: 17, scope: !82)
!92 = !DILocation(line: 45, column: 34, scope: !93)
!93 = distinct !DILexicalBlock(scope: !81, file: !45, line: 42, column: 13)
!94 = !DILocation(line: 45, column: 27, scope: !93)
!95 = !DILocation(line: 45, column: 25, scope: !93)
!96 = !DILocation(line: 46, column: 21, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !45, line: 46, column: 21)
!98 = !DILocation(line: 46, column: 29, scope: !97)
!99 = !DILocation(line: 46, column: 33, scope: !97)
!100 = !DILocation(line: 46, column: 36, scope: !97)
!101 = !DILocation(line: 46, column: 41, scope: !97)
!102 = !DILocation(line: 46, column: 48, scope: !97)
!103 = !DILocation(line: 46, column: 52, scope: !97)
!104 = !DILocation(line: 46, column: 21, scope: !93)
!105 = !DILocation(line: 48, column: 21, scope: !106)
!106 = distinct !DILexicalBlock(scope: !97, file: !45, line: 47, column: 17)
!107 = !DILocation(line: 48, column: 26, scope: !106)
!108 = !DILocation(line: 48, column: 33, scope: !106)
!109 = !DILocation(line: 48, column: 37, scope: !106)
!110 = !DILocation(line: 49, column: 17, scope: !106)
!111 = !DILocation(line: 50, column: 13, scope: !93)
!112 = !DILocation(line: 53, column: 17, scope: !113)
!113 = distinct !DILexicalBlock(scope: !81, file: !45, line: 52, column: 13)
!114 = !DILocation(line: 55, column: 17, scope: !113)
!115 = !DILocation(line: 55, column: 22, scope: !113)
!116 = !DILocation(line: 55, column: 31, scope: !113)
!117 = !DILocation(line: 57, column: 9, scope: !82)
!118 = !DILocation(line: 59, column: 5, scope: !52)
!119 = !DILabel(scope: !52, name: "sink", file: !45, line: 60)
!120 = !DILocation(line: 60, column: 1, scope: !52)
!121 = !DILocation(line: 62, column: 12, scope: !52)
!122 = !DILocation(line: 62, column: 5, scope: !52)
!123 = !DILocation(line: 63, column: 1, scope: !52)
!124 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 70, type: !53, scopeLine: 71, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!125 = !DILocalVariable(name: "data", scope: !124, file: !45, line: 72, type: !42)
!126 = !DILocation(line: 72, column: 12, scope: !124)
!127 = !DILocalVariable(name: "dataBuffer", scope: !124, file: !45, line: 73, type: !58)
!128 = !DILocation(line: 73, column: 10, scope: !124)
!129 = !DILocation(line: 74, column: 12, scope: !124)
!130 = !DILocation(line: 74, column: 10, scope: !124)
!131 = !DILocation(line: 75, column: 5, scope: !124)
!132 = !DILabel(scope: !124, name: "source", file: !45, line: 76)
!133 = !DILocation(line: 76, column: 1, scope: !124)
!134 = !DILocalVariable(name: "dataLen", scope: !135, file: !45, line: 79, type: !69)
!135 = distinct !DILexicalBlock(scope: !124, file: !45, line: 77, column: 5)
!136 = !DILocation(line: 79, column: 16, scope: !135)
!137 = !DILocation(line: 79, column: 33, scope: !135)
!138 = !DILocation(line: 79, column: 26, scope: !135)
!139 = !DILocation(line: 81, column: 17, scope: !140)
!140 = distinct !DILexicalBlock(scope: !135, file: !45, line: 81, column: 13)
!141 = !DILocation(line: 81, column: 16, scope: !140)
!142 = !DILocation(line: 81, column: 25, scope: !140)
!143 = !DILocation(line: 81, column: 13, scope: !135)
!144 = !DILocation(line: 84, column: 23, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !45, line: 84, column: 17)
!146 = distinct !DILexicalBlock(scope: !140, file: !45, line: 82, column: 9)
!147 = !DILocation(line: 84, column: 28, scope: !145)
!148 = !DILocation(line: 84, column: 27, scope: !145)
!149 = !DILocation(line: 84, column: 47, scope: !145)
!150 = !DILocation(line: 84, column: 46, scope: !145)
!151 = !DILocation(line: 84, column: 37, scope: !145)
!152 = !DILocation(line: 84, column: 57, scope: !145)
!153 = !DILocation(line: 84, column: 17, scope: !145)
!154 = !DILocation(line: 84, column: 64, scope: !145)
!155 = !DILocation(line: 84, column: 17, scope: !146)
!156 = !DILocation(line: 88, column: 34, scope: !157)
!157 = distinct !DILexicalBlock(scope: !145, file: !45, line: 85, column: 13)
!158 = !DILocation(line: 88, column: 27, scope: !157)
!159 = !DILocation(line: 88, column: 25, scope: !157)
!160 = !DILocation(line: 89, column: 21, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !45, line: 89, column: 21)
!162 = !DILocation(line: 89, column: 29, scope: !161)
!163 = !DILocation(line: 89, column: 33, scope: !161)
!164 = !DILocation(line: 89, column: 36, scope: !161)
!165 = !DILocation(line: 89, column: 41, scope: !161)
!166 = !DILocation(line: 89, column: 48, scope: !161)
!167 = !DILocation(line: 89, column: 52, scope: !161)
!168 = !DILocation(line: 89, column: 21, scope: !157)
!169 = !DILocation(line: 91, column: 21, scope: !170)
!170 = distinct !DILexicalBlock(scope: !161, file: !45, line: 90, column: 17)
!171 = !DILocation(line: 91, column: 26, scope: !170)
!172 = !DILocation(line: 91, column: 33, scope: !170)
!173 = !DILocation(line: 91, column: 37, scope: !170)
!174 = !DILocation(line: 92, column: 17, scope: !170)
!175 = !DILocation(line: 93, column: 13, scope: !157)
!176 = !DILocation(line: 96, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !145, file: !45, line: 95, column: 13)
!178 = !DILocation(line: 98, column: 17, scope: !177)
!179 = !DILocation(line: 98, column: 22, scope: !177)
!180 = !DILocation(line: 98, column: 31, scope: !177)
!181 = !DILocation(line: 100, column: 9, scope: !146)
!182 = !DILocation(line: 102, column: 5, scope: !124)
!183 = !DILabel(scope: !124, name: "sink", file: !45, line: 103)
!184 = !DILocation(line: 103, column: 1, scope: !124)
!185 = !DILocation(line: 105, column: 20, scope: !124)
!186 = !DILocation(line: 105, column: 5, scope: !124)
!187 = !DILocation(line: 106, column: 1, scope: !124)
!188 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 109, type: !53, scopeLine: 110, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!189 = !DILocalVariable(name: "data", scope: !188, file: !45, line: 111, type: !42)
!190 = !DILocation(line: 111, column: 12, scope: !188)
!191 = !DILocalVariable(name: "dataBuffer", scope: !188, file: !45, line: 112, type: !58)
!192 = !DILocation(line: 112, column: 10, scope: !188)
!193 = !DILocation(line: 113, column: 12, scope: !188)
!194 = !DILocation(line: 113, column: 10, scope: !188)
!195 = !DILocation(line: 114, column: 5, scope: !188)
!196 = !DILabel(scope: !188, name: "source", file: !45, line: 115)
!197 = !DILocation(line: 115, column: 1, scope: !188)
!198 = !DILocation(line: 117, column: 12, scope: !188)
!199 = !DILocation(line: 117, column: 5, scope: !188)
!200 = !DILocation(line: 118, column: 5, scope: !188)
!201 = !DILabel(scope: !188, name: "sink", file: !45, line: 119)
!202 = !DILocation(line: 119, column: 1, scope: !188)
!203 = !DILocation(line: 121, column: 12, scope: !188)
!204 = !DILocation(line: 121, column: 5, scope: !188)
!205 = !DILocation(line: 122, column: 1, scope: !188)
!206 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_18_good", scope: !45, file: !45, line: 124, type: !53, scopeLine: 125, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!207 = !DILocation(line: 126, column: 5, scope: !206)
!208 = !DILocation(line: 127, column: 5, scope: !206)
!209 = !DILocation(line: 128, column: 1, scope: !206)
!210 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !211, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !42}
!213 = !DILocalVariable(name: "line", arg: 1, scope: !210, file: !3, line: 11, type: !42)
!214 = !DILocation(line: 11, column: 25, scope: !210)
!215 = !DILocation(line: 13, column: 1, scope: !210)
!216 = !DILocation(line: 14, column: 8, scope: !217)
!217 = distinct !DILexicalBlock(scope: !210, file: !3, line: 14, column: 8)
!218 = !DILocation(line: 14, column: 13, scope: !217)
!219 = !DILocation(line: 14, column: 8, scope: !210)
!220 = !DILocation(line: 16, column: 24, scope: !221)
!221 = distinct !DILexicalBlock(scope: !217, file: !3, line: 15, column: 5)
!222 = !DILocation(line: 16, column: 9, scope: !221)
!223 = !DILocation(line: 17, column: 5, scope: !221)
!224 = !DILocation(line: 18, column: 5, scope: !210)
!225 = !DILocation(line: 19, column: 1, scope: !210)
!226 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !211, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!227 = !DILocalVariable(name: "line", arg: 1, scope: !226, file: !3, line: 20, type: !42)
!228 = !DILocation(line: 20, column: 29, scope: !226)
!229 = !DILocation(line: 22, column: 8, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !3, line: 22, column: 8)
!231 = !DILocation(line: 22, column: 13, scope: !230)
!232 = !DILocation(line: 22, column: 8, scope: !226)
!233 = !DILocation(line: 24, column: 24, scope: !234)
!234 = distinct !DILexicalBlock(scope: !230, file: !3, line: 23, column: 5)
!235 = !DILocation(line: 24, column: 9, scope: !234)
!236 = !DILocation(line: 25, column: 5, scope: !234)
!237 = !DILocation(line: 26, column: 1, scope: !226)
!238 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !239, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !241}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !23)
!243 = !DILocalVariable(name: "line", arg: 1, scope: !238, file: !3, line: 27, type: !241)
!244 = !DILocation(line: 27, column: 29, scope: !238)
!245 = !DILocation(line: 29, column: 8, scope: !246)
!246 = distinct !DILexicalBlock(scope: !238, file: !3, line: 29, column: 8)
!247 = !DILocation(line: 29, column: 13, scope: !246)
!248 = !DILocation(line: 29, column: 8, scope: !238)
!249 = !DILocation(line: 31, column: 27, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !3, line: 30, column: 5)
!251 = !DILocation(line: 31, column: 9, scope: !250)
!252 = !DILocation(line: 32, column: 5, scope: !250)
!253 = !DILocation(line: 33, column: 1, scope: !238)
!254 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !255, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !23}
!257 = !DILocalVariable(name: "intNumber", arg: 1, scope: !254, file: !3, line: 35, type: !23)
!258 = !DILocation(line: 35, column: 24, scope: !254)
!259 = !DILocation(line: 37, column: 20, scope: !254)
!260 = !DILocation(line: 37, column: 5, scope: !254)
!261 = !DILocation(line: 38, column: 1, scope: !254)
!262 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !263, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !265}
!265 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!266 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !262, file: !3, line: 40, type: !265)
!267 = !DILocation(line: 40, column: 28, scope: !262)
!268 = !DILocation(line: 42, column: 21, scope: !262)
!269 = !DILocation(line: 42, column: 5, scope: !262)
!270 = !DILocation(line: 43, column: 1, scope: !262)
!271 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !272, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !274}
!274 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!275 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !271, file: !3, line: 45, type: !274)
!276 = !DILocation(line: 45, column: 28, scope: !271)
!277 = !DILocation(line: 47, column: 20, scope: !271)
!278 = !DILocation(line: 47, column: 5, scope: !271)
!279 = !DILocation(line: 48, column: 1, scope: !271)
!280 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !281, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !283}
!283 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!284 = !DILocalVariable(name: "longNumber", arg: 1, scope: !280, file: !3, line: 50, type: !283)
!285 = !DILocation(line: 50, column: 26, scope: !280)
!286 = !DILocation(line: 52, column: 21, scope: !280)
!287 = !DILocation(line: 52, column: 5, scope: !280)
!288 = !DILocation(line: 53, column: 1, scope: !280)
!289 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !290, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !292}
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !293, line: 27, baseType: !294)
!293 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !295, line: 44, baseType: !283)
!295 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!296 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !289, file: !3, line: 55, type: !292)
!297 = !DILocation(line: 55, column: 33, scope: !289)
!298 = !DILocation(line: 57, column: 29, scope: !289)
!299 = !DILocation(line: 57, column: 5, scope: !289)
!300 = !DILocation(line: 58, column: 1, scope: !289)
!301 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !302, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !69}
!304 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !301, file: !3, line: 60, type: !69)
!305 = !DILocation(line: 60, column: 29, scope: !301)
!306 = !DILocation(line: 62, column: 21, scope: !301)
!307 = !DILocation(line: 62, column: 5, scope: !301)
!308 = !DILocation(line: 63, column: 1, scope: !301)
!309 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !310, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !43}
!312 = !DILocalVariable(name: "charHex", arg: 1, scope: !309, file: !3, line: 65, type: !43)
!313 = !DILocation(line: 65, column: 29, scope: !309)
!314 = !DILocation(line: 67, column: 22, scope: !309)
!315 = !DILocation(line: 67, column: 5, scope: !309)
!316 = !DILocation(line: 68, column: 1, scope: !309)
!317 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !318, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !242}
!320 = !DILocalVariable(name: "wideChar", arg: 1, scope: !317, file: !3, line: 70, type: !242)
!321 = !DILocation(line: 70, column: 29, scope: !317)
!322 = !DILocalVariable(name: "s", scope: !317, file: !3, line: 74, type: !323)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 64, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 2)
!326 = !DILocation(line: 74, column: 13, scope: !317)
!327 = !DILocation(line: 75, column: 16, scope: !317)
!328 = !DILocation(line: 75, column: 9, scope: !317)
!329 = !DILocation(line: 75, column: 14, scope: !317)
!330 = !DILocation(line: 76, column: 9, scope: !317)
!331 = !DILocation(line: 76, column: 14, scope: !317)
!332 = !DILocation(line: 77, column: 21, scope: !317)
!333 = !DILocation(line: 77, column: 5, scope: !317)
!334 = !DILocation(line: 78, column: 1, scope: !317)
!335 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !336, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !7}
!338 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !335, file: !3, line: 80, type: !7)
!339 = !DILocation(line: 80, column: 33, scope: !335)
!340 = !DILocation(line: 82, column: 20, scope: !335)
!341 = !DILocation(line: 82, column: 5, scope: !335)
!342 = !DILocation(line: 83, column: 1, scope: !335)
!343 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !344, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !25}
!346 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !343, file: !3, line: 85, type: !25)
!347 = !DILocation(line: 85, column: 45, scope: !343)
!348 = !DILocation(line: 87, column: 22, scope: !343)
!349 = !DILocation(line: 87, column: 5, scope: !343)
!350 = !DILocation(line: 88, column: 1, scope: !343)
!351 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !352, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !354}
!354 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!355 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !351, file: !3, line: 90, type: !354)
!356 = !DILocation(line: 90, column: 29, scope: !351)
!357 = !DILocation(line: 92, column: 20, scope: !351)
!358 = !DILocation(line: 92, column: 5, scope: !351)
!359 = !DILocation(line: 93, column: 1, scope: !351)
!360 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !361, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !365, line: 100, baseType: !366)
!365 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_451/source_code")
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !365, line: 96, size: 64, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !366, file: !365, line: 98, baseType: !23, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !366, file: !365, line: 99, baseType: !23, size: 32, offset: 32)
!370 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !360, file: !3, line: 95, type: !363)
!371 = !DILocation(line: 95, column: 40, scope: !360)
!372 = !DILocation(line: 97, column: 26, scope: !360)
!373 = !DILocation(line: 97, column: 47, scope: !360)
!374 = !DILocation(line: 97, column: 55, scope: !360)
!375 = !DILocation(line: 97, column: 76, scope: !360)
!376 = !DILocation(line: 97, column: 5, scope: !360)
!377 = !DILocation(line: 98, column: 1, scope: !360)
!378 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !379, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !381, !69}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!382 = !DILocalVariable(name: "bytes", arg: 1, scope: !378, file: !3, line: 100, type: !381)
!383 = !DILocation(line: 100, column: 38, scope: !378)
!384 = !DILocalVariable(name: "numBytes", arg: 2, scope: !378, file: !3, line: 100, type: !69)
!385 = !DILocation(line: 100, column: 52, scope: !378)
!386 = !DILocalVariable(name: "i", scope: !378, file: !3, line: 102, type: !69)
!387 = !DILocation(line: 102, column: 12, scope: !378)
!388 = !DILocation(line: 103, column: 12, scope: !389)
!389 = distinct !DILexicalBlock(scope: !378, file: !3, line: 103, column: 5)
!390 = !DILocation(line: 103, column: 10, scope: !389)
!391 = !DILocation(line: 103, column: 17, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !3, line: 103, column: 5)
!393 = !DILocation(line: 103, column: 21, scope: !392)
!394 = !DILocation(line: 103, column: 19, scope: !392)
!395 = !DILocation(line: 103, column: 5, scope: !389)
!396 = !DILocation(line: 105, column: 24, scope: !397)
!397 = distinct !DILexicalBlock(scope: !392, file: !3, line: 104, column: 5)
!398 = !DILocation(line: 105, column: 30, scope: !397)
!399 = !DILocation(line: 105, column: 9, scope: !397)
!400 = !DILocation(line: 106, column: 5, scope: !397)
!401 = !DILocation(line: 103, column: 31, scope: !392)
!402 = !DILocation(line: 103, column: 5, scope: !392)
!403 = distinct !{!403, !395, !404, !405}
!404 = !DILocation(line: 106, column: 5, scope: !389)
!405 = !{!"llvm.loop.mustprogress"}
!406 = !DILocation(line: 107, column: 5, scope: !378)
!407 = !DILocation(line: 108, column: 1, scope: !378)
!408 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !409, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!409 = !DISubroutineType(types: !410)
!410 = !{!69, !381, !69, !42}
!411 = !DILocalVariable(name: "bytes", arg: 1, scope: !408, file: !3, line: 113, type: !381)
!412 = !DILocation(line: 113, column: 39, scope: !408)
!413 = !DILocalVariable(name: "numBytes", arg: 2, scope: !408, file: !3, line: 113, type: !69)
!414 = !DILocation(line: 113, column: 53, scope: !408)
!415 = !DILocalVariable(name: "hex", arg: 3, scope: !408, file: !3, line: 113, type: !42)
!416 = !DILocation(line: 113, column: 71, scope: !408)
!417 = !DILocalVariable(name: "numWritten", scope: !408, file: !3, line: 115, type: !69)
!418 = !DILocation(line: 115, column: 12, scope: !408)
!419 = !DILocation(line: 121, column: 5, scope: !408)
!420 = !DILocation(line: 121, column: 12, scope: !408)
!421 = !DILocation(line: 121, column: 25, scope: !408)
!422 = !DILocation(line: 121, column: 23, scope: !408)
!423 = !DILocation(line: 121, column: 34, scope: !408)
!424 = !DILocation(line: 121, column: 37, scope: !408)
!425 = !DILocation(line: 121, column: 67, scope: !408)
!426 = !DILocation(line: 121, column: 70, scope: !408)
!427 = !DILocation(line: 0, scope: !408)
!428 = !DILocalVariable(name: "byte", scope: !429, file: !3, line: 123, type: !23)
!429 = distinct !DILexicalBlock(scope: !408, file: !3, line: 122, column: 5)
!430 = !DILocation(line: 123, column: 13, scope: !429)
!431 = !DILocation(line: 124, column: 17, scope: !429)
!432 = !DILocation(line: 124, column: 25, scope: !429)
!433 = !DILocation(line: 124, column: 23, scope: !429)
!434 = !DILocation(line: 124, column: 9, scope: !429)
!435 = !DILocation(line: 125, column: 45, scope: !429)
!436 = !DILocation(line: 125, column: 29, scope: !429)
!437 = !DILocation(line: 125, column: 9, scope: !429)
!438 = !DILocation(line: 125, column: 15, scope: !429)
!439 = !DILocation(line: 125, column: 27, scope: !429)
!440 = !DILocation(line: 126, column: 9, scope: !429)
!441 = distinct !{!441, !419, !442, !405}
!442 = !DILocation(line: 127, column: 5, scope: !408)
!443 = !DILocation(line: 129, column: 12, scope: !408)
!444 = !DILocation(line: 129, column: 5, scope: !408)
!445 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !446, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!446 = !DISubroutineType(types: !447)
!447 = !{!69, !381, !69, !241}
!448 = !DILocalVariable(name: "bytes", arg: 1, scope: !445, file: !3, line: 135, type: !381)
!449 = !DILocation(line: 135, column: 41, scope: !445)
!450 = !DILocalVariable(name: "numBytes", arg: 2, scope: !445, file: !3, line: 135, type: !69)
!451 = !DILocation(line: 135, column: 55, scope: !445)
!452 = !DILocalVariable(name: "hex", arg: 3, scope: !445, file: !3, line: 135, type: !241)
!453 = !DILocation(line: 135, column: 76, scope: !445)
!454 = !DILocalVariable(name: "numWritten", scope: !445, file: !3, line: 137, type: !69)
!455 = !DILocation(line: 137, column: 12, scope: !445)
!456 = !DILocation(line: 143, column: 5, scope: !445)
!457 = !DILocation(line: 143, column: 12, scope: !445)
!458 = !DILocation(line: 143, column: 25, scope: !445)
!459 = !DILocation(line: 143, column: 23, scope: !445)
!460 = !DILocation(line: 143, column: 34, scope: !445)
!461 = !DILocation(line: 143, column: 47, scope: !445)
!462 = !DILocation(line: 143, column: 55, scope: !445)
!463 = !DILocation(line: 143, column: 53, scope: !445)
!464 = !DILocation(line: 143, column: 37, scope: !445)
!465 = !DILocation(line: 143, column: 68, scope: !445)
!466 = !DILocation(line: 143, column: 81, scope: !445)
!467 = !DILocation(line: 143, column: 89, scope: !445)
!468 = !DILocation(line: 143, column: 87, scope: !445)
!469 = !DILocation(line: 143, column: 100, scope: !445)
!470 = !DILocation(line: 143, column: 71, scope: !445)
!471 = !DILocation(line: 0, scope: !445)
!472 = !DILocalVariable(name: "byte", scope: !473, file: !3, line: 145, type: !23)
!473 = distinct !DILexicalBlock(scope: !445, file: !3, line: 144, column: 5)
!474 = !DILocation(line: 145, column: 13, scope: !473)
!475 = !DILocation(line: 146, column: 18, scope: !473)
!476 = !DILocation(line: 146, column: 26, scope: !473)
!477 = !DILocation(line: 146, column: 24, scope: !473)
!478 = !DILocation(line: 146, column: 9, scope: !473)
!479 = !DILocation(line: 147, column: 45, scope: !473)
!480 = !DILocation(line: 147, column: 29, scope: !473)
!481 = !DILocation(line: 147, column: 9, scope: !473)
!482 = !DILocation(line: 147, column: 15, scope: !473)
!483 = !DILocation(line: 147, column: 27, scope: !473)
!484 = !DILocation(line: 148, column: 9, scope: !473)
!485 = distinct !{!485, !456, !486, !405}
!486 = !DILocation(line: 149, column: 5, scope: !445)
!487 = !DILocation(line: 151, column: 12, scope: !445)
!488 = !DILocation(line: 151, column: 5, scope: !445)
!489 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !490, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!490 = !DISubroutineType(types: !491)
!491 = !{!23}
!492 = !DILocation(line: 158, column: 5, scope: !489)
!493 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !490, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!494 = !DILocation(line: 163, column: 5, scope: !493)
!495 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !490, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!496 = !DILocation(line: 168, column: 13, scope: !495)
!497 = !DILocation(line: 168, column: 20, scope: !495)
!498 = !DILocation(line: 168, column: 5, scope: !495)
!499 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!500 = !DILocation(line: 187, column: 16, scope: !499)
!501 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!502 = !DILocation(line: 188, column: 16, scope: !501)
!503 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!504 = !DILocation(line: 189, column: 16, scope: !503)
!505 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!506 = !DILocation(line: 190, column: 16, scope: !505)
!507 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!508 = !DILocation(line: 191, column: 16, scope: !507)
!509 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!510 = !DILocation(line: 192, column: 16, scope: !509)
!511 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!512 = !DILocation(line: 193, column: 16, scope: !511)
!513 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!514 = !DILocation(line: 194, column: 16, scope: !513)
!515 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!516 = !DILocation(line: 195, column: 16, scope: !515)
!517 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!518 = !DILocation(line: 198, column: 15, scope: !517)
!519 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DILocation(line: 199, column: 15, scope: !519)
!521 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DILocation(line: 200, column: 15, scope: !521)
!523 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!524 = !DILocation(line: 201, column: 15, scope: !523)
!525 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DILocation(line: 202, column: 15, scope: !525)
!527 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!528 = !DILocation(line: 203, column: 15, scope: !527)
!529 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DILocation(line: 204, column: 15, scope: !529)
!531 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DILocation(line: 205, column: 15, scope: !531)
!533 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DILocation(line: 206, column: 15, scope: !533)
