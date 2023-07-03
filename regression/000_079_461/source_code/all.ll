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
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
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
define dso_local void @badSink(i8* %data) #0 !dbg !52 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !55, metadata !DIExpression()), !dbg !56
  %0 = load i8*, i8** %data.addr, align 8, !dbg !57
  %call = call i32 (i8*, ...) @printf(i8* %0), !dbg !58
  ret void, !dbg !59
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_44_bad() #0 !dbg !60 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !65, metadata !DIExpression()), !dbg !67
  store void (i8*)* @badSink, void (i8*)** %funcPtr, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !68, metadata !DIExpression()), !dbg !72
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !72
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !72
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !73
  store i8* %arraydecay, i8** %data, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !75, metadata !DIExpression()), !dbg !80
  %1 = load i8*, i8** %data, align 8, !dbg !81
  %call = call i64 @strlen(i8* %1) #7, !dbg !82
  store i64 %call, i64* %dataLen, align 8, !dbg !80
  %2 = load i64, i64* %dataLen, align 8, !dbg !83
  %sub = sub i64 100, %2, !dbg !85
  %cmp = icmp ugt i64 %sub, 1, !dbg !86
  br i1 %cmp, label %if.then, label %if.end18, !dbg !87

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !88
  %4 = load i64, i64* %dataLen, align 8, !dbg !91
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !92
  %5 = load i64, i64* %dataLen, align 8, !dbg !93
  %sub1 = sub i64 100, %5, !dbg !94
  %conv = trunc i64 %sub1 to i32, !dbg !95
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !96
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !97
  %cmp3 = icmp ne i8* %call2, null, !dbg !98
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !99

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !100
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !102
  store i64 %call6, i64* %dataLen, align 8, !dbg !103
  %8 = load i64, i64* %dataLen, align 8, !dbg !104
  %cmp7 = icmp ugt i64 %8, 0, !dbg !106
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !107

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !108
  %10 = load i64, i64* %dataLen, align 8, !dbg !109
  %sub9 = sub i64 %10, 1, !dbg !110
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !108
  %11 = load i8, i8* %arrayidx, align 1, !dbg !108
  %conv10 = sext i8 %11 to i32, !dbg !108
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !111
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !112

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !113
  %13 = load i64, i64* %dataLen, align 8, !dbg !115
  %sub14 = sub i64 %13, 1, !dbg !116
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !113
  store i8 0, i8* %arrayidx15, align 1, !dbg !117
  br label %if.end, !dbg !118

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !119

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !120
  %14 = load i8*, i8** %data, align 8, !dbg !122
  %15 = load i64, i64* %dataLen, align 8, !dbg !123
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !122
  store i8 0, i8* %arrayidx16, align 1, !dbg !124
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !125

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !126
  %17 = load i8*, i8** %data, align 8, !dbg !127
  call void %16(i8* %17), !dbg !126
  ret void, !dbg !128
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !129 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !130, metadata !DIExpression()), !dbg !131
  %0 = load i8*, i8** %data.addr, align 8, !dbg !132
  %call = call i32 (i8*, ...) @printf(i8* %0), !dbg !133
  ret void, !dbg !134
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !135 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !138, metadata !DIExpression()), !dbg !139
  store void (i8*)* @goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !139
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !140, metadata !DIExpression()), !dbg !141
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !141
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !141
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !142
  store i8* %arraydecay, i8** %data, align 8, !dbg !143
  %1 = load i8*, i8** %data, align 8, !dbg !144
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !145
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !146
  %3 = load i8*, i8** %data, align 8, !dbg !147
  call void %2(i8* %3), !dbg !146
  ret void, !dbg !148
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !149 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !150, metadata !DIExpression()), !dbg !151
  %0 = load i8*, i8** %data.addr, align 8, !dbg !152
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %0), !dbg !153
  ret void, !dbg !154
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !155 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !156, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !158, metadata !DIExpression()), !dbg !159
  store void (i8*)* @goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !159
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !160, metadata !DIExpression()), !dbg !161
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !161
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !161
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !162
  store i8* %arraydecay, i8** %data, align 8, !dbg !163
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !164, metadata !DIExpression()), !dbg !166
  %1 = load i8*, i8** %data, align 8, !dbg !167
  %call = call i64 @strlen(i8* %1) #7, !dbg !168
  store i64 %call, i64* %dataLen, align 8, !dbg !166
  %2 = load i64, i64* %dataLen, align 8, !dbg !169
  %sub = sub i64 100, %2, !dbg !171
  %cmp = icmp ugt i64 %sub, 1, !dbg !172
  br i1 %cmp, label %if.then, label %if.end18, !dbg !173

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !174
  %4 = load i64, i64* %dataLen, align 8, !dbg !177
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !178
  %5 = load i64, i64* %dataLen, align 8, !dbg !179
  %sub1 = sub i64 100, %5, !dbg !180
  %conv = trunc i64 %sub1 to i32, !dbg !181
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !182
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !183
  %cmp3 = icmp ne i8* %call2, null, !dbg !184
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !185

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !186
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !188
  store i64 %call6, i64* %dataLen, align 8, !dbg !189
  %8 = load i64, i64* %dataLen, align 8, !dbg !190
  %cmp7 = icmp ugt i64 %8, 0, !dbg !192
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !193

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !194
  %10 = load i64, i64* %dataLen, align 8, !dbg !195
  %sub9 = sub i64 %10, 1, !dbg !196
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !194
  %11 = load i8, i8* %arrayidx, align 1, !dbg !194
  %conv10 = sext i8 %11 to i32, !dbg !194
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !197
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !198

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !199
  %13 = load i64, i64* %dataLen, align 8, !dbg !201
  %sub14 = sub i64 %13, 1, !dbg !202
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !199
  store i8 0, i8* %arrayidx15, align 1, !dbg !203
  br label %if.end, !dbg !204

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !205

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !206
  %14 = load i8*, i8** %data, align 8, !dbg !208
  %15 = load i64, i64* %dataLen, align 8, !dbg !209
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !208
  store i8 0, i8* %arrayidx16, align 1, !dbg !210
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !211

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !212
  %17 = load i8*, i8** %data, align 8, !dbg !213
  call void %16(i8* %17), !dbg !212
  ret void, !dbg !214
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_44_good() #0 !dbg !215 {
entry:
  call void @goodG2B(), !dbg !216
  call void @goodB2G(), !dbg !217
  ret void, !dbg !218
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !219 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !220, metadata !DIExpression()), !dbg !221
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !222
  %0 = load i8*, i8** %line.addr, align 8, !dbg !223
  %cmp = icmp ne i8* %0, null, !dbg !225
  br i1 %cmp, label %if.then, label %if.end, !dbg !226

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !227
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !229
  br label %if.end, !dbg !230

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !231
  ret void, !dbg !232
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !233 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !234, metadata !DIExpression()), !dbg !235
  %0 = load i8*, i8** %line.addr, align 8, !dbg !236
  %cmp = icmp ne i8* %0, null, !dbg !238
  br i1 %cmp, label %if.then, label %if.end, !dbg !239

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !240
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !242
  br label %if.end, !dbg !243

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !244
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !245 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !250, metadata !DIExpression()), !dbg !251
  %0 = load i32*, i32** %line.addr, align 8, !dbg !252
  %cmp = icmp ne i32* %0, null, !dbg !254
  br i1 %cmp, label %if.then, label %if.end, !dbg !255

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !256
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !258
  br label %if.end, !dbg !259

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !260
}

declare dso_local i32 @wprintf(i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !261 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !264, metadata !DIExpression()), !dbg !265
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !266
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !267
  ret void, !dbg !268
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !269 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !273, metadata !DIExpression()), !dbg !274
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !275
  %conv = sext i16 %0 to i32, !dbg !275
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !276
  ret void, !dbg !277
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !278 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !282, metadata !DIExpression()), !dbg !283
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !284
  %conv = fpext float %0 to double, !dbg !284
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !285
  ret void, !dbg !286
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !287 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !291, metadata !DIExpression()), !dbg !292
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !293
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !294
  ret void, !dbg !295
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !296 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !303, metadata !DIExpression()), !dbg !304
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !305
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !306
  ret void, !dbg !307
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !308 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !311, metadata !DIExpression()), !dbg !312
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !313
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !314
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !316 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !319, metadata !DIExpression()), !dbg !320
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !321
  %conv = sext i8 %0 to i32, !dbg !321
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !322
  ret void, !dbg !323
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !324 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !327, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !329, metadata !DIExpression()), !dbg !333
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !334
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !335
  store i32 %0, i32* %arrayidx, align 4, !dbg !336
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !337
  store i32 0, i32* %arrayidx1, align 4, !dbg !338
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !339
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !340
  ret void, !dbg !341
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !342 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !345, metadata !DIExpression()), !dbg !346
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !347
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !348
  ret void, !dbg !349
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !350 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !353, metadata !DIExpression()), !dbg !354
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !355
  %conv = zext i8 %0 to i32, !dbg !355
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !356
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !358 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !362, metadata !DIExpression()), !dbg !363
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !364
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !365
  ret void, !dbg !366
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !367 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !377, metadata !DIExpression()), !dbg !378
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !379
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !380
  %1 = load i32, i32* %intOne, align 4, !dbg !380
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !381
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !382
  %3 = load i32, i32* %intTwo, align 4, !dbg !382
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !383
  ret void, !dbg !384
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !385 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !389, metadata !DIExpression()), !dbg !390
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !391, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata i64* %i, metadata !393, metadata !DIExpression()), !dbg !394
  store i64 0, i64* %i, align 8, !dbg !395
  br label %for.cond, !dbg !397

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !398
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !400
  %cmp = icmp ult i64 %0, %1, !dbg !401
  br i1 %cmp, label %for.body, label %for.end, !dbg !402

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !403
  %3 = load i64, i64* %i, align 8, !dbg !405
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !403
  %4 = load i8, i8* %arrayidx, align 1, !dbg !403
  %conv = zext i8 %4 to i32, !dbg !403
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !406
  br label %for.inc, !dbg !407

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !408
  %inc = add i64 %5, 1, !dbg !408
  store i64 %inc, i64* %i, align 8, !dbg !408
  br label %for.cond, !dbg !409, !llvm.loop !410

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !413
  ret void, !dbg !414
}

declare dso_local i32 @puts(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !415 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !418, metadata !DIExpression()), !dbg !419
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !420, metadata !DIExpression()), !dbg !421
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !422, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !424, metadata !DIExpression()), !dbg !425
  store i64 0, i64* %numWritten, align 8, !dbg !425
  br label %while.cond, !dbg !426

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !427
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !428
  %cmp = icmp ult i64 %0, %1, !dbg !429
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !430

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !431
  %2 = load i16*, i16** %call, align 8, !dbg !431
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !431
  %4 = load i64, i64* %numWritten, align 8, !dbg !431
  %mul = mul i64 2, %4, !dbg !431
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !431
  %5 = load i8, i8* %arrayidx, align 1, !dbg !431
  %conv = sext i8 %5 to i32, !dbg !431
  %idxprom = sext i32 %conv to i64, !dbg !431
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !431
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !431
  %conv2 = zext i16 %6 to i32, !dbg !431
  %and = and i32 %conv2, 4096, !dbg !431
  %tobool = icmp ne i32 %and, 0, !dbg !431
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !432

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !433
  %7 = load i16*, i16** %call3, align 8, !dbg !433
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !433
  %9 = load i64, i64* %numWritten, align 8, !dbg !433
  %mul4 = mul i64 2, %9, !dbg !433
  %add = add i64 %mul4, 1, !dbg !433
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !433
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !433
  %conv6 = sext i8 %10 to i32, !dbg !433
  %idxprom7 = sext i32 %conv6 to i64, !dbg !433
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !433
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !433
  %conv9 = zext i16 %11 to i32, !dbg !433
  %and10 = and i32 %conv9, 4096, !dbg !433
  %tobool11 = icmp ne i32 %and10, 0, !dbg !432
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !434
  br i1 %12, label %while.body, label %while.end, !dbg !426

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !435, metadata !DIExpression()), !dbg !437
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !438
  %14 = load i64, i64* %numWritten, align 8, !dbg !439
  %mul12 = mul i64 2, %14, !dbg !440
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !438
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !441
  %15 = load i32, i32* %byte, align 4, !dbg !442
  %conv15 = trunc i32 %15 to i8, !dbg !443
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !444
  %17 = load i64, i64* %numWritten, align 8, !dbg !445
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !444
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !446
  %18 = load i64, i64* %numWritten, align 8, !dbg !447
  %inc = add i64 %18, 1, !dbg !447
  store i64 %inc, i64* %numWritten, align 8, !dbg !447
  br label %while.cond, !dbg !426, !llvm.loop !448

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !450
  ret i64 %19, !dbg !451
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !452 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !455, metadata !DIExpression()), !dbg !456
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !457, metadata !DIExpression()), !dbg !458
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !459, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !461, metadata !DIExpression()), !dbg !462
  store i64 0, i64* %numWritten, align 8, !dbg !462
  br label %while.cond, !dbg !463

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !464
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !465
  %cmp = icmp ult i64 %0, %1, !dbg !466
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !467

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !468
  %3 = load i64, i64* %numWritten, align 8, !dbg !469
  %mul = mul i64 2, %3, !dbg !470
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !468
  %4 = load i32, i32* %arrayidx, align 4, !dbg !468
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !471
  %tobool = icmp ne i32 %call, 0, !dbg !471
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !472

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !473
  %6 = load i64, i64* %numWritten, align 8, !dbg !474
  %mul1 = mul i64 2, %6, !dbg !475
  %add = add i64 %mul1, 1, !dbg !476
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !473
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !473
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !477
  %tobool4 = icmp ne i32 %call3, 0, !dbg !472
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !478
  br i1 %8, label %while.body, label %while.end, !dbg !463

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !479, metadata !DIExpression()), !dbg !481
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !482
  %10 = load i64, i64* %numWritten, align 8, !dbg !483
  %mul5 = mul i64 2, %10, !dbg !484
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !482
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !485
  %11 = load i32, i32* %byte, align 4, !dbg !486
  %conv = trunc i32 %11 to i8, !dbg !487
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !488
  %13 = load i64, i64* %numWritten, align 8, !dbg !489
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !488
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !490
  %14 = load i64, i64* %numWritten, align 8, !dbg !491
  %inc = add i64 %14, 1, !dbg !491
  store i64 %inc, i64* %numWritten, align 8, !dbg !491
  br label %while.cond, !dbg !463, !llvm.loop !492

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !494
  ret i64 %15, !dbg !495
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !496 {
entry:
  ret i32 1, !dbg !499
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !500 {
entry:
  ret i32 0, !dbg !501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !502 {
entry:
  %call = call i32 @rand() #8, !dbg !503
  %rem = srem i32 %call, 2, !dbg !504
  ret i32 %rem, !dbg !505
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !506 {
entry:
  ret void, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !508 {
entry:
  ret void, !dbg !509
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !510 {
entry:
  ret void, !dbg !511
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !512 {
entry:
  ret void, !dbg !513
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !514 {
entry:
  ret void, !dbg !515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !516 {
entry:
  ret void, !dbg !517
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !518 {
entry:
  ret void, !dbg !519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !520 {
entry:
  ret void, !dbg !521
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !522 {
entry:
  ret void, !dbg !523
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !524 {
entry:
  ret void, !dbg !525
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !526 {
entry:
  ret void, !dbg !527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !528 {
entry:
  ret void, !dbg !529
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !530 {
entry:
  ret void, !dbg !531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !532 {
entry:
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !534 {
entry:
  ret void, !dbg !535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !536 {
entry:
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !538 {
entry:
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !540 {
entry:
  ret void, !dbg !541
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_461/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_44.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_461/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "badSink", scope: !45, file: !45, line: 27, type: !53, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !42}
!55 = !DILocalVariable(name: "data", arg: 1, scope: !52, file: !45, line: 27, type: !42)
!56 = !DILocation(line: 27, column: 21, scope: !52)
!57 = !DILocation(line: 30, column: 12, scope: !52)
!58 = !DILocation(line: 30, column: 5, scope: !52)
!59 = !DILocation(line: 31, column: 1, scope: !52)
!60 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_44_bad", scope: !45, file: !45, line: 33, type: !61, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!61 = !DISubroutineType(types: !62)
!62 = !{null}
!63 = !DILocalVariable(name: "data", scope: !60, file: !45, line: 35, type: !42)
!64 = !DILocation(line: 35, column: 12, scope: !60)
!65 = !DILocalVariable(name: "funcPtr", scope: !60, file: !45, line: 37, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!67 = !DILocation(line: 37, column: 12, scope: !60)
!68 = !DILocalVariable(name: "dataBuffer", scope: !60, file: !45, line: 38, type: !69)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 100)
!72 = !DILocation(line: 38, column: 10, scope: !60)
!73 = !DILocation(line: 39, column: 12, scope: !60)
!74 = !DILocation(line: 39, column: 10, scope: !60)
!75 = !DILocalVariable(name: "dataLen", scope: !76, file: !45, line: 42, type: !77)
!76 = distinct !DILexicalBlock(scope: !60, file: !45, line: 40, column: 5)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 46, baseType: !79)
!78 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!79 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !DILocation(line: 42, column: 16, scope: !76)
!81 = !DILocation(line: 42, column: 33, scope: !76)
!82 = !DILocation(line: 42, column: 26, scope: !76)
!83 = !DILocation(line: 44, column: 17, scope: !84)
!84 = distinct !DILexicalBlock(scope: !76, file: !45, line: 44, column: 13)
!85 = !DILocation(line: 44, column: 16, scope: !84)
!86 = !DILocation(line: 44, column: 25, scope: !84)
!87 = !DILocation(line: 44, column: 13, scope: !76)
!88 = !DILocation(line: 47, column: 23, scope: !89)
!89 = distinct !DILexicalBlock(scope: !90, file: !45, line: 47, column: 17)
!90 = distinct !DILexicalBlock(scope: !84, file: !45, line: 45, column: 9)
!91 = !DILocation(line: 47, column: 28, scope: !89)
!92 = !DILocation(line: 47, column: 27, scope: !89)
!93 = !DILocation(line: 47, column: 47, scope: !89)
!94 = !DILocation(line: 47, column: 46, scope: !89)
!95 = !DILocation(line: 47, column: 37, scope: !89)
!96 = !DILocation(line: 47, column: 57, scope: !89)
!97 = !DILocation(line: 47, column: 17, scope: !89)
!98 = !DILocation(line: 47, column: 64, scope: !89)
!99 = !DILocation(line: 47, column: 17, scope: !90)
!100 = !DILocation(line: 51, column: 34, scope: !101)
!101 = distinct !DILexicalBlock(scope: !89, file: !45, line: 48, column: 13)
!102 = !DILocation(line: 51, column: 27, scope: !101)
!103 = !DILocation(line: 51, column: 25, scope: !101)
!104 = !DILocation(line: 52, column: 21, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !45, line: 52, column: 21)
!106 = !DILocation(line: 52, column: 29, scope: !105)
!107 = !DILocation(line: 52, column: 33, scope: !105)
!108 = !DILocation(line: 52, column: 36, scope: !105)
!109 = !DILocation(line: 52, column: 41, scope: !105)
!110 = !DILocation(line: 52, column: 48, scope: !105)
!111 = !DILocation(line: 52, column: 52, scope: !105)
!112 = !DILocation(line: 52, column: 21, scope: !101)
!113 = !DILocation(line: 54, column: 21, scope: !114)
!114 = distinct !DILexicalBlock(scope: !105, file: !45, line: 53, column: 17)
!115 = !DILocation(line: 54, column: 26, scope: !114)
!116 = !DILocation(line: 54, column: 33, scope: !114)
!117 = !DILocation(line: 54, column: 37, scope: !114)
!118 = !DILocation(line: 55, column: 17, scope: !114)
!119 = !DILocation(line: 56, column: 13, scope: !101)
!120 = !DILocation(line: 59, column: 17, scope: !121)
!121 = distinct !DILexicalBlock(scope: !89, file: !45, line: 58, column: 13)
!122 = !DILocation(line: 61, column: 17, scope: !121)
!123 = !DILocation(line: 61, column: 22, scope: !121)
!124 = !DILocation(line: 61, column: 31, scope: !121)
!125 = !DILocation(line: 63, column: 9, scope: !90)
!126 = !DILocation(line: 66, column: 5, scope: !60)
!127 = !DILocation(line: 66, column: 13, scope: !60)
!128 = !DILocation(line: 67, column: 1, scope: !60)
!129 = distinct !DISubprogram(name: "goodG2BSink", scope: !45, file: !45, line: 74, type: !53, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!130 = !DILocalVariable(name: "data", arg: 1, scope: !129, file: !45, line: 74, type: !42)
!131 = !DILocation(line: 74, column: 25, scope: !129)
!132 = !DILocation(line: 77, column: 12, scope: !129)
!133 = !DILocation(line: 77, column: 5, scope: !129)
!134 = !DILocation(line: 78, column: 1, scope: !129)
!135 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 80, type: !61, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!136 = !DILocalVariable(name: "data", scope: !135, file: !45, line: 82, type: !42)
!137 = !DILocation(line: 82, column: 12, scope: !135)
!138 = !DILocalVariable(name: "funcPtr", scope: !135, file: !45, line: 83, type: !66)
!139 = !DILocation(line: 83, column: 12, scope: !135)
!140 = !DILocalVariable(name: "dataBuffer", scope: !135, file: !45, line: 84, type: !69)
!141 = !DILocation(line: 84, column: 10, scope: !135)
!142 = !DILocation(line: 85, column: 12, scope: !135)
!143 = !DILocation(line: 85, column: 10, scope: !135)
!144 = !DILocation(line: 87, column: 12, scope: !135)
!145 = !DILocation(line: 87, column: 5, scope: !135)
!146 = !DILocation(line: 88, column: 5, scope: !135)
!147 = !DILocation(line: 88, column: 13, scope: !135)
!148 = !DILocation(line: 89, column: 1, scope: !135)
!149 = distinct !DISubprogram(name: "goodB2GSink", scope: !45, file: !45, line: 92, type: !53, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!150 = !DILocalVariable(name: "data", arg: 1, scope: !149, file: !45, line: 92, type: !42)
!151 = !DILocation(line: 92, column: 25, scope: !149)
!152 = !DILocation(line: 95, column: 20, scope: !149)
!153 = !DILocation(line: 95, column: 5, scope: !149)
!154 = !DILocation(line: 96, column: 1, scope: !149)
!155 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 98, type: !61, scopeLine: 99, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!156 = !DILocalVariable(name: "data", scope: !155, file: !45, line: 100, type: !42)
!157 = !DILocation(line: 100, column: 12, scope: !155)
!158 = !DILocalVariable(name: "funcPtr", scope: !155, file: !45, line: 101, type: !66)
!159 = !DILocation(line: 101, column: 12, scope: !155)
!160 = !DILocalVariable(name: "dataBuffer", scope: !155, file: !45, line: 102, type: !69)
!161 = !DILocation(line: 102, column: 10, scope: !155)
!162 = !DILocation(line: 103, column: 12, scope: !155)
!163 = !DILocation(line: 103, column: 10, scope: !155)
!164 = !DILocalVariable(name: "dataLen", scope: !165, file: !45, line: 106, type: !77)
!165 = distinct !DILexicalBlock(scope: !155, file: !45, line: 104, column: 5)
!166 = !DILocation(line: 106, column: 16, scope: !165)
!167 = !DILocation(line: 106, column: 33, scope: !165)
!168 = !DILocation(line: 106, column: 26, scope: !165)
!169 = !DILocation(line: 108, column: 17, scope: !170)
!170 = distinct !DILexicalBlock(scope: !165, file: !45, line: 108, column: 13)
!171 = !DILocation(line: 108, column: 16, scope: !170)
!172 = !DILocation(line: 108, column: 25, scope: !170)
!173 = !DILocation(line: 108, column: 13, scope: !165)
!174 = !DILocation(line: 111, column: 23, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !45, line: 111, column: 17)
!176 = distinct !DILexicalBlock(scope: !170, file: !45, line: 109, column: 9)
!177 = !DILocation(line: 111, column: 28, scope: !175)
!178 = !DILocation(line: 111, column: 27, scope: !175)
!179 = !DILocation(line: 111, column: 47, scope: !175)
!180 = !DILocation(line: 111, column: 46, scope: !175)
!181 = !DILocation(line: 111, column: 37, scope: !175)
!182 = !DILocation(line: 111, column: 57, scope: !175)
!183 = !DILocation(line: 111, column: 17, scope: !175)
!184 = !DILocation(line: 111, column: 64, scope: !175)
!185 = !DILocation(line: 111, column: 17, scope: !176)
!186 = !DILocation(line: 115, column: 34, scope: !187)
!187 = distinct !DILexicalBlock(scope: !175, file: !45, line: 112, column: 13)
!188 = !DILocation(line: 115, column: 27, scope: !187)
!189 = !DILocation(line: 115, column: 25, scope: !187)
!190 = !DILocation(line: 116, column: 21, scope: !191)
!191 = distinct !DILexicalBlock(scope: !187, file: !45, line: 116, column: 21)
!192 = !DILocation(line: 116, column: 29, scope: !191)
!193 = !DILocation(line: 116, column: 33, scope: !191)
!194 = !DILocation(line: 116, column: 36, scope: !191)
!195 = !DILocation(line: 116, column: 41, scope: !191)
!196 = !DILocation(line: 116, column: 48, scope: !191)
!197 = !DILocation(line: 116, column: 52, scope: !191)
!198 = !DILocation(line: 116, column: 21, scope: !187)
!199 = !DILocation(line: 118, column: 21, scope: !200)
!200 = distinct !DILexicalBlock(scope: !191, file: !45, line: 117, column: 17)
!201 = !DILocation(line: 118, column: 26, scope: !200)
!202 = !DILocation(line: 118, column: 33, scope: !200)
!203 = !DILocation(line: 118, column: 37, scope: !200)
!204 = !DILocation(line: 119, column: 17, scope: !200)
!205 = !DILocation(line: 120, column: 13, scope: !187)
!206 = !DILocation(line: 123, column: 17, scope: !207)
!207 = distinct !DILexicalBlock(scope: !175, file: !45, line: 122, column: 13)
!208 = !DILocation(line: 125, column: 17, scope: !207)
!209 = !DILocation(line: 125, column: 22, scope: !207)
!210 = !DILocation(line: 125, column: 31, scope: !207)
!211 = !DILocation(line: 127, column: 9, scope: !176)
!212 = !DILocation(line: 129, column: 5, scope: !155)
!213 = !DILocation(line: 129, column: 13, scope: !155)
!214 = !DILocation(line: 130, column: 1, scope: !155)
!215 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_44_good", scope: !45, file: !45, line: 132, type: !61, scopeLine: 133, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!216 = !DILocation(line: 134, column: 5, scope: !215)
!217 = !DILocation(line: 135, column: 5, scope: !215)
!218 = !DILocation(line: 136, column: 1, scope: !215)
!219 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !53, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!220 = !DILocalVariable(name: "line", arg: 1, scope: !219, file: !3, line: 11, type: !42)
!221 = !DILocation(line: 11, column: 25, scope: !219)
!222 = !DILocation(line: 13, column: 1, scope: !219)
!223 = !DILocation(line: 14, column: 8, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !3, line: 14, column: 8)
!225 = !DILocation(line: 14, column: 13, scope: !224)
!226 = !DILocation(line: 14, column: 8, scope: !219)
!227 = !DILocation(line: 16, column: 24, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !3, line: 15, column: 5)
!229 = !DILocation(line: 16, column: 9, scope: !228)
!230 = !DILocation(line: 17, column: 5, scope: !228)
!231 = !DILocation(line: 18, column: 5, scope: !219)
!232 = !DILocation(line: 19, column: 1, scope: !219)
!233 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !53, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!234 = !DILocalVariable(name: "line", arg: 1, scope: !233, file: !3, line: 20, type: !42)
!235 = !DILocation(line: 20, column: 29, scope: !233)
!236 = !DILocation(line: 22, column: 8, scope: !237)
!237 = distinct !DILexicalBlock(scope: !233, file: !3, line: 22, column: 8)
!238 = !DILocation(line: 22, column: 13, scope: !237)
!239 = !DILocation(line: 22, column: 8, scope: !233)
!240 = !DILocation(line: 24, column: 24, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !3, line: 23, column: 5)
!242 = !DILocation(line: 24, column: 9, scope: !241)
!243 = !DILocation(line: 25, column: 5, scope: !241)
!244 = !DILocation(line: 26, column: 1, scope: !233)
!245 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !246, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !248}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !78, line: 74, baseType: !23)
!250 = !DILocalVariable(name: "line", arg: 1, scope: !245, file: !3, line: 27, type: !248)
!251 = !DILocation(line: 27, column: 29, scope: !245)
!252 = !DILocation(line: 29, column: 8, scope: !253)
!253 = distinct !DILexicalBlock(scope: !245, file: !3, line: 29, column: 8)
!254 = !DILocation(line: 29, column: 13, scope: !253)
!255 = !DILocation(line: 29, column: 8, scope: !245)
!256 = !DILocation(line: 31, column: 27, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !3, line: 30, column: 5)
!258 = !DILocation(line: 31, column: 9, scope: !257)
!259 = !DILocation(line: 32, column: 5, scope: !257)
!260 = !DILocation(line: 33, column: 1, scope: !245)
!261 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !262, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !23}
!264 = !DILocalVariable(name: "intNumber", arg: 1, scope: !261, file: !3, line: 35, type: !23)
!265 = !DILocation(line: 35, column: 24, scope: !261)
!266 = !DILocation(line: 37, column: 20, scope: !261)
!267 = !DILocation(line: 37, column: 5, scope: !261)
!268 = !DILocation(line: 38, column: 1, scope: !261)
!269 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !270, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !272}
!272 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!273 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !269, file: !3, line: 40, type: !272)
!274 = !DILocation(line: 40, column: 28, scope: !269)
!275 = !DILocation(line: 42, column: 21, scope: !269)
!276 = !DILocation(line: 42, column: 5, scope: !269)
!277 = !DILocation(line: 43, column: 1, scope: !269)
!278 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !279, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !281}
!281 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!282 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !278, file: !3, line: 45, type: !281)
!283 = !DILocation(line: 45, column: 28, scope: !278)
!284 = !DILocation(line: 47, column: 20, scope: !278)
!285 = !DILocation(line: 47, column: 5, scope: !278)
!286 = !DILocation(line: 48, column: 1, scope: !278)
!287 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !288, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !290}
!290 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!291 = !DILocalVariable(name: "longNumber", arg: 1, scope: !287, file: !3, line: 50, type: !290)
!292 = !DILocation(line: 50, column: 26, scope: !287)
!293 = !DILocation(line: 52, column: 21, scope: !287)
!294 = !DILocation(line: 52, column: 5, scope: !287)
!295 = !DILocation(line: 53, column: 1, scope: !287)
!296 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !297, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !299}
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !300, line: 27, baseType: !301)
!300 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !302, line: 44, baseType: !290)
!302 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!303 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !296, file: !3, line: 55, type: !299)
!304 = !DILocation(line: 55, column: 33, scope: !296)
!305 = !DILocation(line: 57, column: 29, scope: !296)
!306 = !DILocation(line: 57, column: 5, scope: !296)
!307 = !DILocation(line: 58, column: 1, scope: !296)
!308 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !309, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !77}
!311 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !308, file: !3, line: 60, type: !77)
!312 = !DILocation(line: 60, column: 29, scope: !308)
!313 = !DILocation(line: 62, column: 21, scope: !308)
!314 = !DILocation(line: 62, column: 5, scope: !308)
!315 = !DILocation(line: 63, column: 1, scope: !308)
!316 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !317, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !43}
!319 = !DILocalVariable(name: "charHex", arg: 1, scope: !316, file: !3, line: 65, type: !43)
!320 = !DILocation(line: 65, column: 29, scope: !316)
!321 = !DILocation(line: 67, column: 22, scope: !316)
!322 = !DILocation(line: 67, column: 5, scope: !316)
!323 = !DILocation(line: 68, column: 1, scope: !316)
!324 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !325, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !249}
!327 = !DILocalVariable(name: "wideChar", arg: 1, scope: !324, file: !3, line: 70, type: !249)
!328 = !DILocation(line: 70, column: 29, scope: !324)
!329 = !DILocalVariable(name: "s", scope: !324, file: !3, line: 74, type: !330)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 64, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 2)
!333 = !DILocation(line: 74, column: 13, scope: !324)
!334 = !DILocation(line: 75, column: 16, scope: !324)
!335 = !DILocation(line: 75, column: 9, scope: !324)
!336 = !DILocation(line: 75, column: 14, scope: !324)
!337 = !DILocation(line: 76, column: 9, scope: !324)
!338 = !DILocation(line: 76, column: 14, scope: !324)
!339 = !DILocation(line: 77, column: 21, scope: !324)
!340 = !DILocation(line: 77, column: 5, scope: !324)
!341 = !DILocation(line: 78, column: 1, scope: !324)
!342 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !343, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !7}
!345 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !342, file: !3, line: 80, type: !7)
!346 = !DILocation(line: 80, column: 33, scope: !342)
!347 = !DILocation(line: 82, column: 20, scope: !342)
!348 = !DILocation(line: 82, column: 5, scope: !342)
!349 = !DILocation(line: 83, column: 1, scope: !342)
!350 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !351, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !25}
!353 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !350, file: !3, line: 85, type: !25)
!354 = !DILocation(line: 85, column: 45, scope: !350)
!355 = !DILocation(line: 87, column: 22, scope: !350)
!356 = !DILocation(line: 87, column: 5, scope: !350)
!357 = !DILocation(line: 88, column: 1, scope: !350)
!358 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !359, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !361}
!361 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!362 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !358, file: !3, line: 90, type: !361)
!363 = !DILocation(line: 90, column: 29, scope: !358)
!364 = !DILocation(line: 92, column: 20, scope: !358)
!365 = !DILocation(line: 92, column: 5, scope: !358)
!366 = !DILocation(line: 93, column: 1, scope: !358)
!367 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !368, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !370}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !372, line: 100, baseType: !373)
!372 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_461/source_code")
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !372, line: 96, size: 64, elements: !374)
!374 = !{!375, !376}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !373, file: !372, line: 98, baseType: !23, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !373, file: !372, line: 99, baseType: !23, size: 32, offset: 32)
!377 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !367, file: !3, line: 95, type: !370)
!378 = !DILocation(line: 95, column: 40, scope: !367)
!379 = !DILocation(line: 97, column: 26, scope: !367)
!380 = !DILocation(line: 97, column: 47, scope: !367)
!381 = !DILocation(line: 97, column: 55, scope: !367)
!382 = !DILocation(line: 97, column: 76, scope: !367)
!383 = !DILocation(line: 97, column: 5, scope: !367)
!384 = !DILocation(line: 98, column: 1, scope: !367)
!385 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !386, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !388, !77}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!389 = !DILocalVariable(name: "bytes", arg: 1, scope: !385, file: !3, line: 100, type: !388)
!390 = !DILocation(line: 100, column: 38, scope: !385)
!391 = !DILocalVariable(name: "numBytes", arg: 2, scope: !385, file: !3, line: 100, type: !77)
!392 = !DILocation(line: 100, column: 52, scope: !385)
!393 = !DILocalVariable(name: "i", scope: !385, file: !3, line: 102, type: !77)
!394 = !DILocation(line: 102, column: 12, scope: !385)
!395 = !DILocation(line: 103, column: 12, scope: !396)
!396 = distinct !DILexicalBlock(scope: !385, file: !3, line: 103, column: 5)
!397 = !DILocation(line: 103, column: 10, scope: !396)
!398 = !DILocation(line: 103, column: 17, scope: !399)
!399 = distinct !DILexicalBlock(scope: !396, file: !3, line: 103, column: 5)
!400 = !DILocation(line: 103, column: 21, scope: !399)
!401 = !DILocation(line: 103, column: 19, scope: !399)
!402 = !DILocation(line: 103, column: 5, scope: !396)
!403 = !DILocation(line: 105, column: 24, scope: !404)
!404 = distinct !DILexicalBlock(scope: !399, file: !3, line: 104, column: 5)
!405 = !DILocation(line: 105, column: 30, scope: !404)
!406 = !DILocation(line: 105, column: 9, scope: !404)
!407 = !DILocation(line: 106, column: 5, scope: !404)
!408 = !DILocation(line: 103, column: 31, scope: !399)
!409 = !DILocation(line: 103, column: 5, scope: !399)
!410 = distinct !{!410, !402, !411, !412}
!411 = !DILocation(line: 106, column: 5, scope: !396)
!412 = !{!"llvm.loop.mustprogress"}
!413 = !DILocation(line: 107, column: 5, scope: !385)
!414 = !DILocation(line: 108, column: 1, scope: !385)
!415 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !416, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!416 = !DISubroutineType(types: !417)
!417 = !{!77, !388, !77, !42}
!418 = !DILocalVariable(name: "bytes", arg: 1, scope: !415, file: !3, line: 113, type: !388)
!419 = !DILocation(line: 113, column: 39, scope: !415)
!420 = !DILocalVariable(name: "numBytes", arg: 2, scope: !415, file: !3, line: 113, type: !77)
!421 = !DILocation(line: 113, column: 53, scope: !415)
!422 = !DILocalVariable(name: "hex", arg: 3, scope: !415, file: !3, line: 113, type: !42)
!423 = !DILocation(line: 113, column: 71, scope: !415)
!424 = !DILocalVariable(name: "numWritten", scope: !415, file: !3, line: 115, type: !77)
!425 = !DILocation(line: 115, column: 12, scope: !415)
!426 = !DILocation(line: 121, column: 5, scope: !415)
!427 = !DILocation(line: 121, column: 12, scope: !415)
!428 = !DILocation(line: 121, column: 25, scope: !415)
!429 = !DILocation(line: 121, column: 23, scope: !415)
!430 = !DILocation(line: 121, column: 34, scope: !415)
!431 = !DILocation(line: 121, column: 37, scope: !415)
!432 = !DILocation(line: 121, column: 67, scope: !415)
!433 = !DILocation(line: 121, column: 70, scope: !415)
!434 = !DILocation(line: 0, scope: !415)
!435 = !DILocalVariable(name: "byte", scope: !436, file: !3, line: 123, type: !23)
!436 = distinct !DILexicalBlock(scope: !415, file: !3, line: 122, column: 5)
!437 = !DILocation(line: 123, column: 13, scope: !436)
!438 = !DILocation(line: 124, column: 17, scope: !436)
!439 = !DILocation(line: 124, column: 25, scope: !436)
!440 = !DILocation(line: 124, column: 23, scope: !436)
!441 = !DILocation(line: 124, column: 9, scope: !436)
!442 = !DILocation(line: 125, column: 45, scope: !436)
!443 = !DILocation(line: 125, column: 29, scope: !436)
!444 = !DILocation(line: 125, column: 9, scope: !436)
!445 = !DILocation(line: 125, column: 15, scope: !436)
!446 = !DILocation(line: 125, column: 27, scope: !436)
!447 = !DILocation(line: 126, column: 9, scope: !436)
!448 = distinct !{!448, !426, !449, !412}
!449 = !DILocation(line: 127, column: 5, scope: !415)
!450 = !DILocation(line: 129, column: 12, scope: !415)
!451 = !DILocation(line: 129, column: 5, scope: !415)
!452 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !453, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!453 = !DISubroutineType(types: !454)
!454 = !{!77, !388, !77, !248}
!455 = !DILocalVariable(name: "bytes", arg: 1, scope: !452, file: !3, line: 135, type: !388)
!456 = !DILocation(line: 135, column: 41, scope: !452)
!457 = !DILocalVariable(name: "numBytes", arg: 2, scope: !452, file: !3, line: 135, type: !77)
!458 = !DILocation(line: 135, column: 55, scope: !452)
!459 = !DILocalVariable(name: "hex", arg: 3, scope: !452, file: !3, line: 135, type: !248)
!460 = !DILocation(line: 135, column: 76, scope: !452)
!461 = !DILocalVariable(name: "numWritten", scope: !452, file: !3, line: 137, type: !77)
!462 = !DILocation(line: 137, column: 12, scope: !452)
!463 = !DILocation(line: 143, column: 5, scope: !452)
!464 = !DILocation(line: 143, column: 12, scope: !452)
!465 = !DILocation(line: 143, column: 25, scope: !452)
!466 = !DILocation(line: 143, column: 23, scope: !452)
!467 = !DILocation(line: 143, column: 34, scope: !452)
!468 = !DILocation(line: 143, column: 47, scope: !452)
!469 = !DILocation(line: 143, column: 55, scope: !452)
!470 = !DILocation(line: 143, column: 53, scope: !452)
!471 = !DILocation(line: 143, column: 37, scope: !452)
!472 = !DILocation(line: 143, column: 68, scope: !452)
!473 = !DILocation(line: 143, column: 81, scope: !452)
!474 = !DILocation(line: 143, column: 89, scope: !452)
!475 = !DILocation(line: 143, column: 87, scope: !452)
!476 = !DILocation(line: 143, column: 100, scope: !452)
!477 = !DILocation(line: 143, column: 71, scope: !452)
!478 = !DILocation(line: 0, scope: !452)
!479 = !DILocalVariable(name: "byte", scope: !480, file: !3, line: 145, type: !23)
!480 = distinct !DILexicalBlock(scope: !452, file: !3, line: 144, column: 5)
!481 = !DILocation(line: 145, column: 13, scope: !480)
!482 = !DILocation(line: 146, column: 18, scope: !480)
!483 = !DILocation(line: 146, column: 26, scope: !480)
!484 = !DILocation(line: 146, column: 24, scope: !480)
!485 = !DILocation(line: 146, column: 9, scope: !480)
!486 = !DILocation(line: 147, column: 45, scope: !480)
!487 = !DILocation(line: 147, column: 29, scope: !480)
!488 = !DILocation(line: 147, column: 9, scope: !480)
!489 = !DILocation(line: 147, column: 15, scope: !480)
!490 = !DILocation(line: 147, column: 27, scope: !480)
!491 = !DILocation(line: 148, column: 9, scope: !480)
!492 = distinct !{!492, !463, !493, !412}
!493 = !DILocation(line: 149, column: 5, scope: !452)
!494 = !DILocation(line: 151, column: 12, scope: !452)
!495 = !DILocation(line: 151, column: 5, scope: !452)
!496 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !497, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!497 = !DISubroutineType(types: !498)
!498 = !{!23}
!499 = !DILocation(line: 158, column: 5, scope: !496)
!500 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !497, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!501 = !DILocation(line: 163, column: 5, scope: !500)
!502 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !497, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!503 = !DILocation(line: 168, column: 13, scope: !502)
!504 = !DILocation(line: 168, column: 20, scope: !502)
!505 = !DILocation(line: 168, column: 5, scope: !502)
!506 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !61, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!507 = !DILocation(line: 187, column: 16, scope: !506)
!508 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !61, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!509 = !DILocation(line: 188, column: 16, scope: !508)
!510 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !61, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!511 = !DILocation(line: 189, column: 16, scope: !510)
!512 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !61, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!513 = !DILocation(line: 190, column: 16, scope: !512)
!514 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !61, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!515 = !DILocation(line: 191, column: 16, scope: !514)
!516 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !61, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!517 = !DILocation(line: 192, column: 16, scope: !516)
!518 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !61, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!519 = !DILocation(line: 193, column: 16, scope: !518)
!520 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !61, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!521 = !DILocation(line: 194, column: 16, scope: !520)
!522 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !61, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!523 = !DILocation(line: 195, column: 16, scope: !522)
!524 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !61, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!525 = !DILocation(line: 198, column: 15, scope: !524)
!526 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !61, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!527 = !DILocation(line: 199, column: 15, scope: !526)
!528 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !61, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!529 = !DILocation(line: 200, column: 15, scope: !528)
!530 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !61, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!531 = !DILocation(line: 201, column: 15, scope: !530)
!532 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !61, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!533 = !DILocation(line: 202, column: 15, scope: !532)
!534 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !61, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!535 = !DILocation(line: 203, column: 15, scope: !534)
!536 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !61, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!537 = !DILocation(line: 204, column: 15, scope: !536)
!538 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !61, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!539 = !DILocation(line: 205, column: 15, scope: !538)
!540 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !61, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!541 = !DILocation(line: 206, column: 15, scope: !540)
