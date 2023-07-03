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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_02_bad() #0 !dbg !52 {
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
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !64, metadata !DIExpression()), !dbg !71
  %1 = load i8*, i8** %data, align 8, !dbg !72
  %call = call i64 @strlen(i8* %1) #7, !dbg !73
  store i64 %call, i64* %dataLen, align 8, !dbg !71
  %2 = load i64, i64* %dataLen, align 8, !dbg !74
  %sub = sub i64 100, %2, !dbg !76
  %cmp = icmp ugt i64 %sub, 1, !dbg !77
  br i1 %cmp, label %if.then, label %if.end18, !dbg !78

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !79
  %4 = load i64, i64* %dataLen, align 8, !dbg !82
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !83
  %5 = load i64, i64* %dataLen, align 8, !dbg !84
  %sub1 = sub i64 100, %5, !dbg !85
  %conv = trunc i64 %sub1 to i32, !dbg !86
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !87
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !88
  %cmp3 = icmp ne i8* %call2, null, !dbg !89
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !90

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !91
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !93
  store i64 %call6, i64* %dataLen, align 8, !dbg !94
  %8 = load i64, i64* %dataLen, align 8, !dbg !95
  %cmp7 = icmp ugt i64 %8, 0, !dbg !97
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !98

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !99
  %10 = load i64, i64* %dataLen, align 8, !dbg !100
  %sub9 = sub i64 %10, 1, !dbg !101
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !99
  %11 = load i8, i8* %arrayidx, align 1, !dbg !99
  %conv10 = sext i8 %11 to i32, !dbg !99
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !102
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !103

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !104
  %13 = load i64, i64* %dataLen, align 8, !dbg !106
  %sub14 = sub i64 %13, 1, !dbg !107
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !104
  store i8 0, i8* %arrayidx15, align 1, !dbg !108
  br label %if.end, !dbg !109

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !110

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !111
  %14 = load i8*, i8** %data, align 8, !dbg !113
  %15 = load i64, i64* %dataLen, align 8, !dbg !114
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !113
  store i8 0, i8* %arrayidx16, align 1, !dbg !115
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !116

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !117
  %call19 = call i32 (i8*, ...) @printf(i8* %16), !dbg !120
  ret void, !dbg !121
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !122 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !125, metadata !DIExpression()), !dbg !126
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !126
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !126
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !127
  store i8* %arraydecay, i8** %data, align 8, !dbg !128
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !129, metadata !DIExpression()), !dbg !133
  %1 = load i8*, i8** %data, align 8, !dbg !134
  %call = call i64 @strlen(i8* %1) #7, !dbg !135
  store i64 %call, i64* %dataLen, align 8, !dbg !133
  %2 = load i64, i64* %dataLen, align 8, !dbg !136
  %sub = sub i64 100, %2, !dbg !138
  %cmp = icmp ugt i64 %sub, 1, !dbg !139
  br i1 %cmp, label %if.then, label %if.end18, !dbg !140

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !141
  %4 = load i64, i64* %dataLen, align 8, !dbg !144
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !145
  %5 = load i64, i64* %dataLen, align 8, !dbg !146
  %sub1 = sub i64 100, %5, !dbg !147
  %conv = trunc i64 %sub1 to i32, !dbg !148
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !149
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !150
  %cmp3 = icmp ne i8* %call2, null, !dbg !151
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !152

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !153
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !155
  store i64 %call6, i64* %dataLen, align 8, !dbg !156
  %8 = load i64, i64* %dataLen, align 8, !dbg !157
  %cmp7 = icmp ugt i64 %8, 0, !dbg !159
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !160

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !161
  %10 = load i64, i64* %dataLen, align 8, !dbg !162
  %sub9 = sub i64 %10, 1, !dbg !163
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !161
  %11 = load i8, i8* %arrayidx, align 1, !dbg !161
  %conv10 = sext i8 %11 to i32, !dbg !161
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !164
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !165

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !166
  %13 = load i64, i64* %dataLen, align 8, !dbg !168
  %sub14 = sub i64 %13, 1, !dbg !169
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !166
  store i8 0, i8* %arrayidx15, align 1, !dbg !170
  br label %if.end, !dbg !171

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !172

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !173
  %14 = load i8*, i8** %data, align 8, !dbg !175
  %15 = load i64, i64* %dataLen, align 8, !dbg !176
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !175
  store i8 0, i8* %arrayidx16, align 1, !dbg !177
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !178

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !179
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %16), !dbg !182
  ret void, !dbg !183
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !184 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !187, metadata !DIExpression()), !dbg !188
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !188
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !188
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !189
  store i8* %arraydecay, i8** %data, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !191, metadata !DIExpression()), !dbg !195
  %1 = load i8*, i8** %data, align 8, !dbg !196
  %call = call i64 @strlen(i8* %1) #7, !dbg !197
  store i64 %call, i64* %dataLen, align 8, !dbg !195
  %2 = load i64, i64* %dataLen, align 8, !dbg !198
  %sub = sub i64 100, %2, !dbg !200
  %cmp = icmp ugt i64 %sub, 1, !dbg !201
  br i1 %cmp, label %if.then, label %if.end18, !dbg !202

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !203
  %4 = load i64, i64* %dataLen, align 8, !dbg !206
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !207
  %5 = load i64, i64* %dataLen, align 8, !dbg !208
  %sub1 = sub i64 100, %5, !dbg !209
  %conv = trunc i64 %sub1 to i32, !dbg !210
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !211
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !212
  %cmp3 = icmp ne i8* %call2, null, !dbg !213
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !214

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !215
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !217
  store i64 %call6, i64* %dataLen, align 8, !dbg !218
  %8 = load i64, i64* %dataLen, align 8, !dbg !219
  %cmp7 = icmp ugt i64 %8, 0, !dbg !221
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !222

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !223
  %10 = load i64, i64* %dataLen, align 8, !dbg !224
  %sub9 = sub i64 %10, 1, !dbg !225
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !223
  %11 = load i8, i8* %arrayidx, align 1, !dbg !223
  %conv10 = sext i8 %11 to i32, !dbg !223
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !226
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !227

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !228
  %13 = load i64, i64* %dataLen, align 8, !dbg !230
  %sub14 = sub i64 %13, 1, !dbg !231
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !228
  store i8 0, i8* %arrayidx15, align 1, !dbg !232
  br label %if.end, !dbg !233

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !234

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !235
  %14 = load i8*, i8** %data, align 8, !dbg !237
  %15 = load i64, i64* %dataLen, align 8, !dbg !238
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !237
  store i8 0, i8* %arrayidx16, align 1, !dbg !239
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !240

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !241
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %16), !dbg !244
  ret void, !dbg !245
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !246 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !249, metadata !DIExpression()), !dbg !250
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !250
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !250
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !251
  store i8* %arraydecay, i8** %data, align 8, !dbg !252
  %1 = load i8*, i8** %data, align 8, !dbg !253
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !256
  %2 = load i8*, i8** %data, align 8, !dbg !257
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !260
  ret void, !dbg !261
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !262 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !263, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !265, metadata !DIExpression()), !dbg !266
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !266
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !266
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !267
  store i8* %arraydecay, i8** %data, align 8, !dbg !268
  %1 = load i8*, i8** %data, align 8, !dbg !269
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !272
  %2 = load i8*, i8** %data, align 8, !dbg !273
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !276
  ret void, !dbg !277
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_02_good() #0 !dbg !278 {
entry:
  call void @goodB2G1(), !dbg !279
  call void @goodB2G2(), !dbg !280
  call void @goodG2B1(), !dbg !281
  call void @goodG2B2(), !dbg !282
  ret void, !dbg !283
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !284 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !287, metadata !DIExpression()), !dbg !288
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !289
  %0 = load i8*, i8** %line.addr, align 8, !dbg !290
  %cmp = icmp ne i8* %0, null, !dbg !292
  br i1 %cmp, label %if.then, label %if.end, !dbg !293

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !294
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !296
  br label %if.end, !dbg !297

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !298
  ret void, !dbg !299
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !300 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !301, metadata !DIExpression()), !dbg !302
  %0 = load i8*, i8** %line.addr, align 8, !dbg !303
  %cmp = icmp ne i8* %0, null, !dbg !305
  br i1 %cmp, label %if.then, label %if.end, !dbg !306

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !307
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !309
  br label %if.end, !dbg !310

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !311
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !312 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !317, metadata !DIExpression()), !dbg !318
  %0 = load i32*, i32** %line.addr, align 8, !dbg !319
  %cmp = icmp ne i32* %0, null, !dbg !321
  br i1 %cmp, label %if.then, label %if.end, !dbg !322

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !323
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !325
  br label %if.end, !dbg !326

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !327
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !328 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !331, metadata !DIExpression()), !dbg !332
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !333
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !334
  ret void, !dbg !335
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !336 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !340, metadata !DIExpression()), !dbg !341
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !342
  %conv = sext i16 %0 to i32, !dbg !342
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !343
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !345 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !351
  %conv = fpext float %0 to double, !dbg !351
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !352
  ret void, !dbg !353
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !354 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !358, metadata !DIExpression()), !dbg !359
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !360
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !361
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !363 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !370, metadata !DIExpression()), !dbg !371
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !372
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !373
  ret void, !dbg !374
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !375 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !378, metadata !DIExpression()), !dbg !379
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !380
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !381
  ret void, !dbg !382
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !383 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !386, metadata !DIExpression()), !dbg !387
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !388
  %conv = sext i8 %0 to i32, !dbg !388
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !389
  ret void, !dbg !390
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !391 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !394, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !396, metadata !DIExpression()), !dbg !400
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !401
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !402
  store i32 %0, i32* %arrayidx, align 4, !dbg !403
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !404
  store i32 0, i32* %arrayidx1, align 4, !dbg !405
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !406
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !407
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !409 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !412, metadata !DIExpression()), !dbg !413
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !414
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !415
  ret void, !dbg !416
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !417 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !420, metadata !DIExpression()), !dbg !421
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !422
  %conv = zext i8 %0 to i32, !dbg !422
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !423
  ret void, !dbg !424
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !425 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !429, metadata !DIExpression()), !dbg !430
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !431
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !432
  ret void, !dbg !433
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !434 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !444, metadata !DIExpression()), !dbg !445
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !446
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !447
  %1 = load i32, i32* %intOne, align 4, !dbg !447
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !448
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !449
  %3 = load i32, i32* %intTwo, align 4, !dbg !449
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !450
  ret void, !dbg !451
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !452 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !456, metadata !DIExpression()), !dbg !457
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !458, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.declare(metadata i64* %i, metadata !460, metadata !DIExpression()), !dbg !461
  store i64 0, i64* %i, align 8, !dbg !462
  br label %for.cond, !dbg !464

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !465
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !467
  %cmp = icmp ult i64 %0, %1, !dbg !468
  br i1 %cmp, label %for.body, label %for.end, !dbg !469

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !470
  %3 = load i64, i64* %i, align 8, !dbg !472
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !470
  %4 = load i8, i8* %arrayidx, align 1, !dbg !470
  %conv = zext i8 %4 to i32, !dbg !470
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !473
  br label %for.inc, !dbg !474

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !475
  %inc = add i64 %5, 1, !dbg !475
  store i64 %inc, i64* %i, align 8, !dbg !475
  br label %for.cond, !dbg !476, !llvm.loop !477

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !480
  ret void, !dbg !481
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !482 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !485, metadata !DIExpression()), !dbg !486
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !487, metadata !DIExpression()), !dbg !488
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !489, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !491, metadata !DIExpression()), !dbg !492
  store i64 0, i64* %numWritten, align 8, !dbg !492
  br label %while.cond, !dbg !493

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !494
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !495
  %cmp = icmp ult i64 %0, %1, !dbg !496
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !497

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !498
  %2 = load i16*, i16** %call, align 8, !dbg !498
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !498
  %4 = load i64, i64* %numWritten, align 8, !dbg !498
  %mul = mul i64 2, %4, !dbg !498
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !498
  %5 = load i8, i8* %arrayidx, align 1, !dbg !498
  %conv = sext i8 %5 to i32, !dbg !498
  %idxprom = sext i32 %conv to i64, !dbg !498
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !498
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !498
  %conv2 = zext i16 %6 to i32, !dbg !498
  %and = and i32 %conv2, 4096, !dbg !498
  %tobool = icmp ne i32 %and, 0, !dbg !498
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !499

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !500
  %7 = load i16*, i16** %call3, align 8, !dbg !500
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !500
  %9 = load i64, i64* %numWritten, align 8, !dbg !500
  %mul4 = mul i64 2, %9, !dbg !500
  %add = add i64 %mul4, 1, !dbg !500
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !500
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !500
  %conv6 = sext i8 %10 to i32, !dbg !500
  %idxprom7 = sext i32 %conv6 to i64, !dbg !500
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !500
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !500
  %conv9 = zext i16 %11 to i32, !dbg !500
  %and10 = and i32 %conv9, 4096, !dbg !500
  %tobool11 = icmp ne i32 %and10, 0, !dbg !499
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !501
  br i1 %12, label %while.body, label %while.end, !dbg !493

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !502, metadata !DIExpression()), !dbg !504
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !505
  %14 = load i64, i64* %numWritten, align 8, !dbg !506
  %mul12 = mul i64 2, %14, !dbg !507
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !505
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !508
  %15 = load i32, i32* %byte, align 4, !dbg !509
  %conv15 = trunc i32 %15 to i8, !dbg !510
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !511
  %17 = load i64, i64* %numWritten, align 8, !dbg !512
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !511
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !513
  %18 = load i64, i64* %numWritten, align 8, !dbg !514
  %inc = add i64 %18, 1, !dbg !514
  store i64 %inc, i64* %numWritten, align 8, !dbg !514
  br label %while.cond, !dbg !493, !llvm.loop !515

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !517
  ret i64 %19, !dbg !518
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !519 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !522, metadata !DIExpression()), !dbg !523
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !524, metadata !DIExpression()), !dbg !525
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !526, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !528, metadata !DIExpression()), !dbg !529
  store i64 0, i64* %numWritten, align 8, !dbg !529
  br label %while.cond, !dbg !530

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !531
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !532
  %cmp = icmp ult i64 %0, %1, !dbg !533
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !534

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !535
  %3 = load i64, i64* %numWritten, align 8, !dbg !536
  %mul = mul i64 2, %3, !dbg !537
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !535
  %4 = load i32, i32* %arrayidx, align 4, !dbg !535
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !538
  %tobool = icmp ne i32 %call, 0, !dbg !538
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !539

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !540
  %6 = load i64, i64* %numWritten, align 8, !dbg !541
  %mul1 = mul i64 2, %6, !dbg !542
  %add = add i64 %mul1, 1, !dbg !543
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !540
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !540
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !544
  %tobool4 = icmp ne i32 %call3, 0, !dbg !539
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !545
  br i1 %8, label %while.body, label %while.end, !dbg !530

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !546, metadata !DIExpression()), !dbg !548
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !549
  %10 = load i64, i64* %numWritten, align 8, !dbg !550
  %mul5 = mul i64 2, %10, !dbg !551
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !549
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !552
  %11 = load i32, i32* %byte, align 4, !dbg !553
  %conv = trunc i32 %11 to i8, !dbg !554
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !555
  %13 = load i64, i64* %numWritten, align 8, !dbg !556
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !555
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !557
  %14 = load i64, i64* %numWritten, align 8, !dbg !558
  %inc = add i64 %14, 1, !dbg !558
  store i64 %inc, i64* %numWritten, align 8, !dbg !558
  br label %while.cond, !dbg !530, !llvm.loop !559

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !561
  ret i64 %15, !dbg !562
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !563 {
entry:
  ret i32 1, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !567 {
entry:
  ret i32 0, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !569 {
entry:
  %call = call i32 @rand() #8, !dbg !570
  %rem = srem i32 %call, 2, !dbg !571
  ret i32 %rem, !dbg !572
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !573 {
entry:
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !575 {
entry:
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !577 {
entry:
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !579 {
entry:
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !581 {
entry:
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !583 {
entry:
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !585 {
entry:
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !587 {
entry:
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !589 {
entry:
  ret void, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !591 {
entry:
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !593 {
entry:
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !595 {
entry:
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !597 {
entry:
  ret void, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !599 {
entry:
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !601 {
entry:
  ret void, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !603 {
entry:
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !605 {
entry:
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !607 {
entry:
  ret void, !dbg !608
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_435/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_02.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_435/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_02_bad", scope: !45, file: !45, line: 27, type: !53, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!64 = !DILocalVariable(name: "dataLen", scope: !65, file: !45, line: 36, type: !68)
!65 = distinct !DILexicalBlock(scope: !66, file: !45, line: 34, column: 9)
!66 = distinct !DILexicalBlock(scope: !67, file: !45, line: 33, column: 5)
!67 = distinct !DILexicalBlock(scope: !52, file: !45, line: 32, column: 8)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DILocation(line: 36, column: 20, scope: !65)
!72 = !DILocation(line: 36, column: 37, scope: !65)
!73 = !DILocation(line: 36, column: 30, scope: !65)
!74 = !DILocation(line: 38, column: 21, scope: !75)
!75 = distinct !DILexicalBlock(scope: !65, file: !45, line: 38, column: 17)
!76 = !DILocation(line: 38, column: 20, scope: !75)
!77 = !DILocation(line: 38, column: 29, scope: !75)
!78 = !DILocation(line: 38, column: 17, scope: !65)
!79 = !DILocation(line: 41, column: 27, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !45, line: 41, column: 21)
!81 = distinct !DILexicalBlock(scope: !75, file: !45, line: 39, column: 13)
!82 = !DILocation(line: 41, column: 32, scope: !80)
!83 = !DILocation(line: 41, column: 31, scope: !80)
!84 = !DILocation(line: 41, column: 51, scope: !80)
!85 = !DILocation(line: 41, column: 50, scope: !80)
!86 = !DILocation(line: 41, column: 41, scope: !80)
!87 = !DILocation(line: 41, column: 61, scope: !80)
!88 = !DILocation(line: 41, column: 21, scope: !80)
!89 = !DILocation(line: 41, column: 68, scope: !80)
!90 = !DILocation(line: 41, column: 21, scope: !81)
!91 = !DILocation(line: 45, column: 38, scope: !92)
!92 = distinct !DILexicalBlock(scope: !80, file: !45, line: 42, column: 17)
!93 = !DILocation(line: 45, column: 31, scope: !92)
!94 = !DILocation(line: 45, column: 29, scope: !92)
!95 = !DILocation(line: 46, column: 25, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !45, line: 46, column: 25)
!97 = !DILocation(line: 46, column: 33, scope: !96)
!98 = !DILocation(line: 46, column: 37, scope: !96)
!99 = !DILocation(line: 46, column: 40, scope: !96)
!100 = !DILocation(line: 46, column: 45, scope: !96)
!101 = !DILocation(line: 46, column: 52, scope: !96)
!102 = !DILocation(line: 46, column: 56, scope: !96)
!103 = !DILocation(line: 46, column: 25, scope: !92)
!104 = !DILocation(line: 48, column: 25, scope: !105)
!105 = distinct !DILexicalBlock(scope: !96, file: !45, line: 47, column: 21)
!106 = !DILocation(line: 48, column: 30, scope: !105)
!107 = !DILocation(line: 48, column: 37, scope: !105)
!108 = !DILocation(line: 48, column: 41, scope: !105)
!109 = !DILocation(line: 49, column: 21, scope: !105)
!110 = !DILocation(line: 50, column: 17, scope: !92)
!111 = !DILocation(line: 53, column: 21, scope: !112)
!112 = distinct !DILexicalBlock(scope: !80, file: !45, line: 52, column: 17)
!113 = !DILocation(line: 55, column: 21, scope: !112)
!114 = !DILocation(line: 55, column: 26, scope: !112)
!115 = !DILocation(line: 55, column: 35, scope: !112)
!116 = !DILocation(line: 57, column: 13, scope: !81)
!117 = !DILocation(line: 63, column: 16, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !45, line: 61, column: 5)
!119 = distinct !DILexicalBlock(scope: !52, file: !45, line: 60, column: 8)
!120 = !DILocation(line: 63, column: 9, scope: !118)
!121 = !DILocation(line: 65, column: 1, scope: !52)
!122 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 72, type: !53, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!123 = !DILocalVariable(name: "data", scope: !122, file: !45, line: 74, type: !42)
!124 = !DILocation(line: 74, column: 12, scope: !122)
!125 = !DILocalVariable(name: "dataBuffer", scope: !122, file: !45, line: 75, type: !58)
!126 = !DILocation(line: 75, column: 10, scope: !122)
!127 = !DILocation(line: 76, column: 12, scope: !122)
!128 = !DILocation(line: 76, column: 10, scope: !122)
!129 = !DILocalVariable(name: "dataLen", scope: !130, file: !45, line: 81, type: !68)
!130 = distinct !DILexicalBlock(scope: !131, file: !45, line: 79, column: 9)
!131 = distinct !DILexicalBlock(scope: !132, file: !45, line: 78, column: 5)
!132 = distinct !DILexicalBlock(scope: !122, file: !45, line: 77, column: 8)
!133 = !DILocation(line: 81, column: 20, scope: !130)
!134 = !DILocation(line: 81, column: 37, scope: !130)
!135 = !DILocation(line: 81, column: 30, scope: !130)
!136 = !DILocation(line: 83, column: 21, scope: !137)
!137 = distinct !DILexicalBlock(scope: !130, file: !45, line: 83, column: 17)
!138 = !DILocation(line: 83, column: 20, scope: !137)
!139 = !DILocation(line: 83, column: 29, scope: !137)
!140 = !DILocation(line: 83, column: 17, scope: !130)
!141 = !DILocation(line: 86, column: 27, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !45, line: 86, column: 21)
!143 = distinct !DILexicalBlock(scope: !137, file: !45, line: 84, column: 13)
!144 = !DILocation(line: 86, column: 32, scope: !142)
!145 = !DILocation(line: 86, column: 31, scope: !142)
!146 = !DILocation(line: 86, column: 51, scope: !142)
!147 = !DILocation(line: 86, column: 50, scope: !142)
!148 = !DILocation(line: 86, column: 41, scope: !142)
!149 = !DILocation(line: 86, column: 61, scope: !142)
!150 = !DILocation(line: 86, column: 21, scope: !142)
!151 = !DILocation(line: 86, column: 68, scope: !142)
!152 = !DILocation(line: 86, column: 21, scope: !143)
!153 = !DILocation(line: 90, column: 38, scope: !154)
!154 = distinct !DILexicalBlock(scope: !142, file: !45, line: 87, column: 17)
!155 = !DILocation(line: 90, column: 31, scope: !154)
!156 = !DILocation(line: 90, column: 29, scope: !154)
!157 = !DILocation(line: 91, column: 25, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !45, line: 91, column: 25)
!159 = !DILocation(line: 91, column: 33, scope: !158)
!160 = !DILocation(line: 91, column: 37, scope: !158)
!161 = !DILocation(line: 91, column: 40, scope: !158)
!162 = !DILocation(line: 91, column: 45, scope: !158)
!163 = !DILocation(line: 91, column: 52, scope: !158)
!164 = !DILocation(line: 91, column: 56, scope: !158)
!165 = !DILocation(line: 91, column: 25, scope: !154)
!166 = !DILocation(line: 93, column: 25, scope: !167)
!167 = distinct !DILexicalBlock(scope: !158, file: !45, line: 92, column: 21)
!168 = !DILocation(line: 93, column: 30, scope: !167)
!169 = !DILocation(line: 93, column: 37, scope: !167)
!170 = !DILocation(line: 93, column: 41, scope: !167)
!171 = !DILocation(line: 94, column: 21, scope: !167)
!172 = !DILocation(line: 95, column: 17, scope: !154)
!173 = !DILocation(line: 98, column: 21, scope: !174)
!174 = distinct !DILexicalBlock(scope: !142, file: !45, line: 97, column: 17)
!175 = !DILocation(line: 100, column: 21, scope: !174)
!176 = !DILocation(line: 100, column: 26, scope: !174)
!177 = !DILocation(line: 100, column: 35, scope: !174)
!178 = !DILocation(line: 102, column: 13, scope: !143)
!179 = !DILocation(line: 113, column: 24, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !45, line: 111, column: 5)
!181 = distinct !DILexicalBlock(scope: !122, file: !45, line: 105, column: 8)
!182 = !DILocation(line: 113, column: 9, scope: !180)
!183 = !DILocation(line: 115, column: 1, scope: !122)
!184 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 118, type: !53, scopeLine: 119, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!185 = !DILocalVariable(name: "data", scope: !184, file: !45, line: 120, type: !42)
!186 = !DILocation(line: 120, column: 12, scope: !184)
!187 = !DILocalVariable(name: "dataBuffer", scope: !184, file: !45, line: 121, type: !58)
!188 = !DILocation(line: 121, column: 10, scope: !184)
!189 = !DILocation(line: 122, column: 12, scope: !184)
!190 = !DILocation(line: 122, column: 10, scope: !184)
!191 = !DILocalVariable(name: "dataLen", scope: !192, file: !45, line: 127, type: !68)
!192 = distinct !DILexicalBlock(scope: !193, file: !45, line: 125, column: 9)
!193 = distinct !DILexicalBlock(scope: !194, file: !45, line: 124, column: 5)
!194 = distinct !DILexicalBlock(scope: !184, file: !45, line: 123, column: 8)
!195 = !DILocation(line: 127, column: 20, scope: !192)
!196 = !DILocation(line: 127, column: 37, scope: !192)
!197 = !DILocation(line: 127, column: 30, scope: !192)
!198 = !DILocation(line: 129, column: 21, scope: !199)
!199 = distinct !DILexicalBlock(scope: !192, file: !45, line: 129, column: 17)
!200 = !DILocation(line: 129, column: 20, scope: !199)
!201 = !DILocation(line: 129, column: 29, scope: !199)
!202 = !DILocation(line: 129, column: 17, scope: !192)
!203 = !DILocation(line: 132, column: 27, scope: !204)
!204 = distinct !DILexicalBlock(scope: !205, file: !45, line: 132, column: 21)
!205 = distinct !DILexicalBlock(scope: !199, file: !45, line: 130, column: 13)
!206 = !DILocation(line: 132, column: 32, scope: !204)
!207 = !DILocation(line: 132, column: 31, scope: !204)
!208 = !DILocation(line: 132, column: 51, scope: !204)
!209 = !DILocation(line: 132, column: 50, scope: !204)
!210 = !DILocation(line: 132, column: 41, scope: !204)
!211 = !DILocation(line: 132, column: 61, scope: !204)
!212 = !DILocation(line: 132, column: 21, scope: !204)
!213 = !DILocation(line: 132, column: 68, scope: !204)
!214 = !DILocation(line: 132, column: 21, scope: !205)
!215 = !DILocation(line: 136, column: 38, scope: !216)
!216 = distinct !DILexicalBlock(scope: !204, file: !45, line: 133, column: 17)
!217 = !DILocation(line: 136, column: 31, scope: !216)
!218 = !DILocation(line: 136, column: 29, scope: !216)
!219 = !DILocation(line: 137, column: 25, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !45, line: 137, column: 25)
!221 = !DILocation(line: 137, column: 33, scope: !220)
!222 = !DILocation(line: 137, column: 37, scope: !220)
!223 = !DILocation(line: 137, column: 40, scope: !220)
!224 = !DILocation(line: 137, column: 45, scope: !220)
!225 = !DILocation(line: 137, column: 52, scope: !220)
!226 = !DILocation(line: 137, column: 56, scope: !220)
!227 = !DILocation(line: 137, column: 25, scope: !216)
!228 = !DILocation(line: 139, column: 25, scope: !229)
!229 = distinct !DILexicalBlock(scope: !220, file: !45, line: 138, column: 21)
!230 = !DILocation(line: 139, column: 30, scope: !229)
!231 = !DILocation(line: 139, column: 37, scope: !229)
!232 = !DILocation(line: 139, column: 41, scope: !229)
!233 = !DILocation(line: 140, column: 21, scope: !229)
!234 = !DILocation(line: 141, column: 17, scope: !216)
!235 = !DILocation(line: 144, column: 21, scope: !236)
!236 = distinct !DILexicalBlock(scope: !204, file: !45, line: 143, column: 17)
!237 = !DILocation(line: 146, column: 21, scope: !236)
!238 = !DILocation(line: 146, column: 26, scope: !236)
!239 = !DILocation(line: 146, column: 35, scope: !236)
!240 = !DILocation(line: 148, column: 13, scope: !205)
!241 = !DILocation(line: 154, column: 24, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !45, line: 152, column: 5)
!243 = distinct !DILexicalBlock(scope: !184, file: !45, line: 151, column: 8)
!244 = !DILocation(line: 154, column: 9, scope: !242)
!245 = !DILocation(line: 156, column: 1, scope: !184)
!246 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 159, type: !53, scopeLine: 160, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!247 = !DILocalVariable(name: "data", scope: !246, file: !45, line: 161, type: !42)
!248 = !DILocation(line: 161, column: 12, scope: !246)
!249 = !DILocalVariable(name: "dataBuffer", scope: !246, file: !45, line: 162, type: !58)
!250 = !DILocation(line: 162, column: 10, scope: !246)
!251 = !DILocation(line: 163, column: 12, scope: !246)
!252 = !DILocation(line: 163, column: 10, scope: !246)
!253 = !DILocation(line: 172, column: 16, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !45, line: 170, column: 5)
!255 = distinct !DILexicalBlock(scope: !246, file: !45, line: 164, column: 8)
!256 = !DILocation(line: 172, column: 9, scope: !254)
!257 = !DILocation(line: 177, column: 16, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !45, line: 175, column: 5)
!259 = distinct !DILexicalBlock(scope: !246, file: !45, line: 174, column: 8)
!260 = !DILocation(line: 177, column: 9, scope: !258)
!261 = !DILocation(line: 179, column: 1, scope: !246)
!262 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 182, type: !53, scopeLine: 183, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!263 = !DILocalVariable(name: "data", scope: !262, file: !45, line: 184, type: !42)
!264 = !DILocation(line: 184, column: 12, scope: !262)
!265 = !DILocalVariable(name: "dataBuffer", scope: !262, file: !45, line: 185, type: !58)
!266 = !DILocation(line: 185, column: 10, scope: !262)
!267 = !DILocation(line: 186, column: 12, scope: !262)
!268 = !DILocation(line: 186, column: 10, scope: !262)
!269 = !DILocation(line: 190, column: 16, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !45, line: 188, column: 5)
!271 = distinct !DILexicalBlock(scope: !262, file: !45, line: 187, column: 8)
!272 = !DILocation(line: 190, column: 9, scope: !270)
!273 = !DILocation(line: 195, column: 16, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !45, line: 193, column: 5)
!275 = distinct !DILexicalBlock(scope: !262, file: !45, line: 192, column: 8)
!276 = !DILocation(line: 195, column: 9, scope: !274)
!277 = !DILocation(line: 197, column: 1, scope: !262)
!278 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_02_good", scope: !45, file: !45, line: 199, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!279 = !DILocation(line: 201, column: 5, scope: !278)
!280 = !DILocation(line: 202, column: 5, scope: !278)
!281 = !DILocation(line: 203, column: 5, scope: !278)
!282 = !DILocation(line: 204, column: 5, scope: !278)
!283 = !DILocation(line: 205, column: 1, scope: !278)
!284 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !285, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !42}
!287 = !DILocalVariable(name: "line", arg: 1, scope: !284, file: !3, line: 11, type: !42)
!288 = !DILocation(line: 11, column: 25, scope: !284)
!289 = !DILocation(line: 13, column: 1, scope: !284)
!290 = !DILocation(line: 14, column: 8, scope: !291)
!291 = distinct !DILexicalBlock(scope: !284, file: !3, line: 14, column: 8)
!292 = !DILocation(line: 14, column: 13, scope: !291)
!293 = !DILocation(line: 14, column: 8, scope: !284)
!294 = !DILocation(line: 16, column: 24, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !3, line: 15, column: 5)
!296 = !DILocation(line: 16, column: 9, scope: !295)
!297 = !DILocation(line: 17, column: 5, scope: !295)
!298 = !DILocation(line: 18, column: 5, scope: !284)
!299 = !DILocation(line: 19, column: 1, scope: !284)
!300 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !285, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!301 = !DILocalVariable(name: "line", arg: 1, scope: !300, file: !3, line: 20, type: !42)
!302 = !DILocation(line: 20, column: 29, scope: !300)
!303 = !DILocation(line: 22, column: 8, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !3, line: 22, column: 8)
!305 = !DILocation(line: 22, column: 13, scope: !304)
!306 = !DILocation(line: 22, column: 8, scope: !300)
!307 = !DILocation(line: 24, column: 24, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !3, line: 23, column: 5)
!309 = !DILocation(line: 24, column: 9, scope: !308)
!310 = !DILocation(line: 25, column: 5, scope: !308)
!311 = !DILocation(line: 26, column: 1, scope: !300)
!312 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !313, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !315}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !23)
!317 = !DILocalVariable(name: "line", arg: 1, scope: !312, file: !3, line: 27, type: !315)
!318 = !DILocation(line: 27, column: 29, scope: !312)
!319 = !DILocation(line: 29, column: 8, scope: !320)
!320 = distinct !DILexicalBlock(scope: !312, file: !3, line: 29, column: 8)
!321 = !DILocation(line: 29, column: 13, scope: !320)
!322 = !DILocation(line: 29, column: 8, scope: !312)
!323 = !DILocation(line: 31, column: 27, scope: !324)
!324 = distinct !DILexicalBlock(scope: !320, file: !3, line: 30, column: 5)
!325 = !DILocation(line: 31, column: 9, scope: !324)
!326 = !DILocation(line: 32, column: 5, scope: !324)
!327 = !DILocation(line: 33, column: 1, scope: !312)
!328 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !329, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !23}
!331 = !DILocalVariable(name: "intNumber", arg: 1, scope: !328, file: !3, line: 35, type: !23)
!332 = !DILocation(line: 35, column: 24, scope: !328)
!333 = !DILocation(line: 37, column: 20, scope: !328)
!334 = !DILocation(line: 37, column: 5, scope: !328)
!335 = !DILocation(line: 38, column: 1, scope: !328)
!336 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !337, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !339}
!339 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!340 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !336, file: !3, line: 40, type: !339)
!341 = !DILocation(line: 40, column: 28, scope: !336)
!342 = !DILocation(line: 42, column: 21, scope: !336)
!343 = !DILocation(line: 42, column: 5, scope: !336)
!344 = !DILocation(line: 43, column: 1, scope: !336)
!345 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !346, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !348}
!348 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!349 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !345, file: !3, line: 45, type: !348)
!350 = !DILocation(line: 45, column: 28, scope: !345)
!351 = !DILocation(line: 47, column: 20, scope: !345)
!352 = !DILocation(line: 47, column: 5, scope: !345)
!353 = !DILocation(line: 48, column: 1, scope: !345)
!354 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !355, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !357}
!357 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!358 = !DILocalVariable(name: "longNumber", arg: 1, scope: !354, file: !3, line: 50, type: !357)
!359 = !DILocation(line: 50, column: 26, scope: !354)
!360 = !DILocation(line: 52, column: 21, scope: !354)
!361 = !DILocation(line: 52, column: 5, scope: !354)
!362 = !DILocation(line: 53, column: 1, scope: !354)
!363 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !364, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !366}
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !367, line: 27, baseType: !368)
!367 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !369, line: 44, baseType: !357)
!369 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!370 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !363, file: !3, line: 55, type: !366)
!371 = !DILocation(line: 55, column: 33, scope: !363)
!372 = !DILocation(line: 57, column: 29, scope: !363)
!373 = !DILocation(line: 57, column: 5, scope: !363)
!374 = !DILocation(line: 58, column: 1, scope: !363)
!375 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !376, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !68}
!378 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !375, file: !3, line: 60, type: !68)
!379 = !DILocation(line: 60, column: 29, scope: !375)
!380 = !DILocation(line: 62, column: 21, scope: !375)
!381 = !DILocation(line: 62, column: 5, scope: !375)
!382 = !DILocation(line: 63, column: 1, scope: !375)
!383 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !384, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !43}
!386 = !DILocalVariable(name: "charHex", arg: 1, scope: !383, file: !3, line: 65, type: !43)
!387 = !DILocation(line: 65, column: 29, scope: !383)
!388 = !DILocation(line: 67, column: 22, scope: !383)
!389 = !DILocation(line: 67, column: 5, scope: !383)
!390 = !DILocation(line: 68, column: 1, scope: !383)
!391 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !392, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !316}
!394 = !DILocalVariable(name: "wideChar", arg: 1, scope: !391, file: !3, line: 70, type: !316)
!395 = !DILocation(line: 70, column: 29, scope: !391)
!396 = !DILocalVariable(name: "s", scope: !391, file: !3, line: 74, type: !397)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 64, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 2)
!400 = !DILocation(line: 74, column: 13, scope: !391)
!401 = !DILocation(line: 75, column: 16, scope: !391)
!402 = !DILocation(line: 75, column: 9, scope: !391)
!403 = !DILocation(line: 75, column: 14, scope: !391)
!404 = !DILocation(line: 76, column: 9, scope: !391)
!405 = !DILocation(line: 76, column: 14, scope: !391)
!406 = !DILocation(line: 77, column: 21, scope: !391)
!407 = !DILocation(line: 77, column: 5, scope: !391)
!408 = !DILocation(line: 78, column: 1, scope: !391)
!409 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !410, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !7}
!412 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !409, file: !3, line: 80, type: !7)
!413 = !DILocation(line: 80, column: 33, scope: !409)
!414 = !DILocation(line: 82, column: 20, scope: !409)
!415 = !DILocation(line: 82, column: 5, scope: !409)
!416 = !DILocation(line: 83, column: 1, scope: !409)
!417 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !418, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !25}
!420 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !417, file: !3, line: 85, type: !25)
!421 = !DILocation(line: 85, column: 45, scope: !417)
!422 = !DILocation(line: 87, column: 22, scope: !417)
!423 = !DILocation(line: 87, column: 5, scope: !417)
!424 = !DILocation(line: 88, column: 1, scope: !417)
!425 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !426, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !428}
!428 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!429 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !425, file: !3, line: 90, type: !428)
!430 = !DILocation(line: 90, column: 29, scope: !425)
!431 = !DILocation(line: 92, column: 20, scope: !425)
!432 = !DILocation(line: 92, column: 5, scope: !425)
!433 = !DILocation(line: 93, column: 1, scope: !425)
!434 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !435, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !437}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !439, line: 100, baseType: !440)
!439 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_435/source_code")
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !439, line: 96, size: 64, elements: !441)
!441 = !{!442, !443}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !440, file: !439, line: 98, baseType: !23, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !440, file: !439, line: 99, baseType: !23, size: 32, offset: 32)
!444 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !434, file: !3, line: 95, type: !437)
!445 = !DILocation(line: 95, column: 40, scope: !434)
!446 = !DILocation(line: 97, column: 26, scope: !434)
!447 = !DILocation(line: 97, column: 47, scope: !434)
!448 = !DILocation(line: 97, column: 55, scope: !434)
!449 = !DILocation(line: 97, column: 76, scope: !434)
!450 = !DILocation(line: 97, column: 5, scope: !434)
!451 = !DILocation(line: 98, column: 1, scope: !434)
!452 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !453, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !455, !68}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!456 = !DILocalVariable(name: "bytes", arg: 1, scope: !452, file: !3, line: 100, type: !455)
!457 = !DILocation(line: 100, column: 38, scope: !452)
!458 = !DILocalVariable(name: "numBytes", arg: 2, scope: !452, file: !3, line: 100, type: !68)
!459 = !DILocation(line: 100, column: 52, scope: !452)
!460 = !DILocalVariable(name: "i", scope: !452, file: !3, line: 102, type: !68)
!461 = !DILocation(line: 102, column: 12, scope: !452)
!462 = !DILocation(line: 103, column: 12, scope: !463)
!463 = distinct !DILexicalBlock(scope: !452, file: !3, line: 103, column: 5)
!464 = !DILocation(line: 103, column: 10, scope: !463)
!465 = !DILocation(line: 103, column: 17, scope: !466)
!466 = distinct !DILexicalBlock(scope: !463, file: !3, line: 103, column: 5)
!467 = !DILocation(line: 103, column: 21, scope: !466)
!468 = !DILocation(line: 103, column: 19, scope: !466)
!469 = !DILocation(line: 103, column: 5, scope: !463)
!470 = !DILocation(line: 105, column: 24, scope: !471)
!471 = distinct !DILexicalBlock(scope: !466, file: !3, line: 104, column: 5)
!472 = !DILocation(line: 105, column: 30, scope: !471)
!473 = !DILocation(line: 105, column: 9, scope: !471)
!474 = !DILocation(line: 106, column: 5, scope: !471)
!475 = !DILocation(line: 103, column: 31, scope: !466)
!476 = !DILocation(line: 103, column: 5, scope: !466)
!477 = distinct !{!477, !469, !478, !479}
!478 = !DILocation(line: 106, column: 5, scope: !463)
!479 = !{!"llvm.loop.mustprogress"}
!480 = !DILocation(line: 107, column: 5, scope: !452)
!481 = !DILocation(line: 108, column: 1, scope: !452)
!482 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !483, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!483 = !DISubroutineType(types: !484)
!484 = !{!68, !455, !68, !42}
!485 = !DILocalVariable(name: "bytes", arg: 1, scope: !482, file: !3, line: 113, type: !455)
!486 = !DILocation(line: 113, column: 39, scope: !482)
!487 = !DILocalVariable(name: "numBytes", arg: 2, scope: !482, file: !3, line: 113, type: !68)
!488 = !DILocation(line: 113, column: 53, scope: !482)
!489 = !DILocalVariable(name: "hex", arg: 3, scope: !482, file: !3, line: 113, type: !42)
!490 = !DILocation(line: 113, column: 71, scope: !482)
!491 = !DILocalVariable(name: "numWritten", scope: !482, file: !3, line: 115, type: !68)
!492 = !DILocation(line: 115, column: 12, scope: !482)
!493 = !DILocation(line: 121, column: 5, scope: !482)
!494 = !DILocation(line: 121, column: 12, scope: !482)
!495 = !DILocation(line: 121, column: 25, scope: !482)
!496 = !DILocation(line: 121, column: 23, scope: !482)
!497 = !DILocation(line: 121, column: 34, scope: !482)
!498 = !DILocation(line: 121, column: 37, scope: !482)
!499 = !DILocation(line: 121, column: 67, scope: !482)
!500 = !DILocation(line: 121, column: 70, scope: !482)
!501 = !DILocation(line: 0, scope: !482)
!502 = !DILocalVariable(name: "byte", scope: !503, file: !3, line: 123, type: !23)
!503 = distinct !DILexicalBlock(scope: !482, file: !3, line: 122, column: 5)
!504 = !DILocation(line: 123, column: 13, scope: !503)
!505 = !DILocation(line: 124, column: 17, scope: !503)
!506 = !DILocation(line: 124, column: 25, scope: !503)
!507 = !DILocation(line: 124, column: 23, scope: !503)
!508 = !DILocation(line: 124, column: 9, scope: !503)
!509 = !DILocation(line: 125, column: 45, scope: !503)
!510 = !DILocation(line: 125, column: 29, scope: !503)
!511 = !DILocation(line: 125, column: 9, scope: !503)
!512 = !DILocation(line: 125, column: 15, scope: !503)
!513 = !DILocation(line: 125, column: 27, scope: !503)
!514 = !DILocation(line: 126, column: 9, scope: !503)
!515 = distinct !{!515, !493, !516, !479}
!516 = !DILocation(line: 127, column: 5, scope: !482)
!517 = !DILocation(line: 129, column: 12, scope: !482)
!518 = !DILocation(line: 129, column: 5, scope: !482)
!519 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !520, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DISubroutineType(types: !521)
!521 = !{!68, !455, !68, !315}
!522 = !DILocalVariable(name: "bytes", arg: 1, scope: !519, file: !3, line: 135, type: !455)
!523 = !DILocation(line: 135, column: 41, scope: !519)
!524 = !DILocalVariable(name: "numBytes", arg: 2, scope: !519, file: !3, line: 135, type: !68)
!525 = !DILocation(line: 135, column: 55, scope: !519)
!526 = !DILocalVariable(name: "hex", arg: 3, scope: !519, file: !3, line: 135, type: !315)
!527 = !DILocation(line: 135, column: 76, scope: !519)
!528 = !DILocalVariable(name: "numWritten", scope: !519, file: !3, line: 137, type: !68)
!529 = !DILocation(line: 137, column: 12, scope: !519)
!530 = !DILocation(line: 143, column: 5, scope: !519)
!531 = !DILocation(line: 143, column: 12, scope: !519)
!532 = !DILocation(line: 143, column: 25, scope: !519)
!533 = !DILocation(line: 143, column: 23, scope: !519)
!534 = !DILocation(line: 143, column: 34, scope: !519)
!535 = !DILocation(line: 143, column: 47, scope: !519)
!536 = !DILocation(line: 143, column: 55, scope: !519)
!537 = !DILocation(line: 143, column: 53, scope: !519)
!538 = !DILocation(line: 143, column: 37, scope: !519)
!539 = !DILocation(line: 143, column: 68, scope: !519)
!540 = !DILocation(line: 143, column: 81, scope: !519)
!541 = !DILocation(line: 143, column: 89, scope: !519)
!542 = !DILocation(line: 143, column: 87, scope: !519)
!543 = !DILocation(line: 143, column: 100, scope: !519)
!544 = !DILocation(line: 143, column: 71, scope: !519)
!545 = !DILocation(line: 0, scope: !519)
!546 = !DILocalVariable(name: "byte", scope: !547, file: !3, line: 145, type: !23)
!547 = distinct !DILexicalBlock(scope: !519, file: !3, line: 144, column: 5)
!548 = !DILocation(line: 145, column: 13, scope: !547)
!549 = !DILocation(line: 146, column: 18, scope: !547)
!550 = !DILocation(line: 146, column: 26, scope: !547)
!551 = !DILocation(line: 146, column: 24, scope: !547)
!552 = !DILocation(line: 146, column: 9, scope: !547)
!553 = !DILocation(line: 147, column: 45, scope: !547)
!554 = !DILocation(line: 147, column: 29, scope: !547)
!555 = !DILocation(line: 147, column: 9, scope: !547)
!556 = !DILocation(line: 147, column: 15, scope: !547)
!557 = !DILocation(line: 147, column: 27, scope: !547)
!558 = !DILocation(line: 148, column: 9, scope: !547)
!559 = distinct !{!559, !530, !560, !479}
!560 = !DILocation(line: 149, column: 5, scope: !519)
!561 = !DILocation(line: 151, column: 12, scope: !519)
!562 = !DILocation(line: 151, column: 5, scope: !519)
!563 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !564, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DISubroutineType(types: !565)
!565 = !{!23}
!566 = !DILocation(line: 158, column: 5, scope: !563)
!567 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !564, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DILocation(line: 163, column: 5, scope: !567)
!569 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !564, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!570 = !DILocation(line: 168, column: 13, scope: !569)
!571 = !DILocation(line: 168, column: 20, scope: !569)
!572 = !DILocation(line: 168, column: 5, scope: !569)
!573 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DILocation(line: 187, column: 16, scope: !573)
!575 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DILocation(line: 188, column: 16, scope: !575)
!577 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 189, column: 16, scope: !577)
!579 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 190, column: 16, scope: !579)
!581 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!582 = !DILocation(line: 191, column: 16, scope: !581)
!583 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DILocation(line: 192, column: 16, scope: !583)
!585 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DILocation(line: 193, column: 16, scope: !585)
!587 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DILocation(line: 194, column: 16, scope: !587)
!589 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DILocation(line: 195, column: 16, scope: !589)
!591 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!592 = !DILocation(line: 198, column: 15, scope: !591)
!593 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DILocation(line: 199, column: 15, scope: !593)
!595 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DILocation(line: 200, column: 15, scope: !595)
!597 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DILocation(line: 201, column: 15, scope: !597)
!599 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DILocation(line: 202, column: 15, scope: !599)
!601 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!602 = !DILocation(line: 203, column: 15, scope: !601)
!603 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DILocation(line: 204, column: 15, scope: !603)
!605 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DILocation(line: 205, column: 15, scope: !605)
!607 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 206, column: 15, scope: !607)
