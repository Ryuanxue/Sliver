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
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.5 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.8 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.9 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_14_bad() #0 !dbg !52 {
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
  %1 = load i32, i32* @globalFive, align 4, !dbg !64
  %cmp = icmp eq i32 %1, 5, !dbg !66
  br i1 %cmp, label %if.then, label %if.end21, !dbg !67

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !68, metadata !DIExpression()), !dbg !74
  %2 = load i8*, i8** %data, align 8, !dbg !75
  %call = call i64 @strlen(i8* %2) #7, !dbg !76
  store i64 %call, i64* %dataLen, align 8, !dbg !74
  %3 = load i64, i64* %dataLen, align 8, !dbg !77
  %sub = sub i64 100, %3, !dbg !79
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !80
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !81

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !82
  %5 = load i64, i64* %dataLen, align 8, !dbg !85
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !86
  %6 = load i64, i64* %dataLen, align 8, !dbg !87
  %sub3 = sub i64 100, %6, !dbg !88
  %conv = trunc i64 %sub3 to i32, !dbg !89
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !90
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !91
  %cmp5 = icmp ne i8* %call4, null, !dbg !92
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !93

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !94
  %call8 = call i64 @strlen(i8* %8) #7, !dbg !96
  store i64 %call8, i64* %dataLen, align 8, !dbg !97
  %9 = load i64, i64* %dataLen, align 8, !dbg !98
  %cmp9 = icmp ugt i64 %9, 0, !dbg !100
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !101

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !102
  %11 = load i64, i64* %dataLen, align 8, !dbg !103
  %sub11 = sub i64 %11, 1, !dbg !104
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !102
  %12 = load i8, i8* %arrayidx, align 1, !dbg !102
  %conv12 = sext i8 %12 to i32, !dbg !102
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !105
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !106

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !107
  %14 = load i64, i64* %dataLen, align 8, !dbg !109
  %sub16 = sub i64 %14, 1, !dbg !110
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !107
  store i8 0, i8* %arrayidx17, align 1, !dbg !111
  br label %if.end, !dbg !112

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !113

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !114
  %15 = load i8*, i8** %data, align 8, !dbg !116
  %16 = load i64, i64* %dataLen, align 8, !dbg !117
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !116
  store i8 0, i8* %arrayidx18, align 1, !dbg !118
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !119

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !120

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @globalFive, align 4, !dbg !121
  %cmp22 = icmp eq i32 %17, 5, !dbg !123
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !124

if.then24:                                        ; preds = %if.end21
  %18 = load i8*, i8** %data, align 8, !dbg !125
  %call25 = call i32 (i8*, ...) @printf(i8* %18), !dbg !127
  br label %if.end26, !dbg !128

if.end26:                                         ; preds = %if.then24, %if.end21
  ret void, !dbg !129
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
define dso_local void @goodB2G1() #0 !dbg !130 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !133, metadata !DIExpression()), !dbg !134
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !134
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !134
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !135
  store i8* %arraydecay, i8** %data, align 8, !dbg !136
  %1 = load i32, i32* @globalFive, align 4, !dbg !137
  %cmp = icmp eq i32 %1, 5, !dbg !139
  br i1 %cmp, label %if.then, label %if.end21, !dbg !140

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !141, metadata !DIExpression()), !dbg !144
  %2 = load i8*, i8** %data, align 8, !dbg !145
  %call = call i64 @strlen(i8* %2) #7, !dbg !146
  store i64 %call, i64* %dataLen, align 8, !dbg !144
  %3 = load i64, i64* %dataLen, align 8, !dbg !147
  %sub = sub i64 100, %3, !dbg !149
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !150
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !151

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !152
  %5 = load i64, i64* %dataLen, align 8, !dbg !155
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !156
  %6 = load i64, i64* %dataLen, align 8, !dbg !157
  %sub3 = sub i64 100, %6, !dbg !158
  %conv = trunc i64 %sub3 to i32, !dbg !159
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !160
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !161
  %cmp5 = icmp ne i8* %call4, null, !dbg !162
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !163

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !164
  %call8 = call i64 @strlen(i8* %8) #7, !dbg !166
  store i64 %call8, i64* %dataLen, align 8, !dbg !167
  %9 = load i64, i64* %dataLen, align 8, !dbg !168
  %cmp9 = icmp ugt i64 %9, 0, !dbg !170
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !171

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !172
  %11 = load i64, i64* %dataLen, align 8, !dbg !173
  %sub11 = sub i64 %11, 1, !dbg !174
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !172
  %12 = load i8, i8* %arrayidx, align 1, !dbg !172
  %conv12 = sext i8 %12 to i32, !dbg !172
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !175
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !176

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !177
  %14 = load i64, i64* %dataLen, align 8, !dbg !179
  %sub16 = sub i64 %14, 1, !dbg !180
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !177
  store i8 0, i8* %arrayidx17, align 1, !dbg !181
  br label %if.end, !dbg !182

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !183

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !184
  %15 = load i8*, i8** %data, align 8, !dbg !186
  %16 = load i64, i64* %dataLen, align 8, !dbg !187
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !186
  store i8 0, i8* %arrayidx18, align 1, !dbg !188
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !189

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !190

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @globalFive, align 4, !dbg !191
  %cmp22 = icmp ne i32 %17, 5, !dbg !193
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !194

if.then24:                                        ; preds = %if.end21
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !195
  br label %if.end27, !dbg !197

if.else25:                                        ; preds = %if.end21
  %18 = load i8*, i8** %data, align 8, !dbg !198
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %18), !dbg !200
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then24
  ret void, !dbg !201
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !202 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !203, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !205, metadata !DIExpression()), !dbg !206
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !206
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !206
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !207
  store i8* %arraydecay, i8** %data, align 8, !dbg !208
  %1 = load i32, i32* @globalFive, align 4, !dbg !209
  %cmp = icmp eq i32 %1, 5, !dbg !211
  br i1 %cmp, label %if.then, label %if.end21, !dbg !212

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !213, metadata !DIExpression()), !dbg !216
  %2 = load i8*, i8** %data, align 8, !dbg !217
  %call = call i64 @strlen(i8* %2) #7, !dbg !218
  store i64 %call, i64* %dataLen, align 8, !dbg !216
  %3 = load i64, i64* %dataLen, align 8, !dbg !219
  %sub = sub i64 100, %3, !dbg !221
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !222
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !223

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !224
  %5 = load i64, i64* %dataLen, align 8, !dbg !227
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !228
  %6 = load i64, i64* %dataLen, align 8, !dbg !229
  %sub3 = sub i64 100, %6, !dbg !230
  %conv = trunc i64 %sub3 to i32, !dbg !231
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !232
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !233
  %cmp5 = icmp ne i8* %call4, null, !dbg !234
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !235

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !236
  %call8 = call i64 @strlen(i8* %8) #7, !dbg !238
  store i64 %call8, i64* %dataLen, align 8, !dbg !239
  %9 = load i64, i64* %dataLen, align 8, !dbg !240
  %cmp9 = icmp ugt i64 %9, 0, !dbg !242
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !243

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !244
  %11 = load i64, i64* %dataLen, align 8, !dbg !245
  %sub11 = sub i64 %11, 1, !dbg !246
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !244
  %12 = load i8, i8* %arrayidx, align 1, !dbg !244
  %conv12 = sext i8 %12 to i32, !dbg !244
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !247
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !248

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !249
  %14 = load i64, i64* %dataLen, align 8, !dbg !251
  %sub16 = sub i64 %14, 1, !dbg !252
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !249
  store i8 0, i8* %arrayidx17, align 1, !dbg !253
  br label %if.end, !dbg !254

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !255

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !256
  %15 = load i8*, i8** %data, align 8, !dbg !258
  %16 = load i64, i64* %dataLen, align 8, !dbg !259
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !258
  store i8 0, i8* %arrayidx18, align 1, !dbg !260
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !261

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !262

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @globalFive, align 4, !dbg !263
  %cmp22 = icmp eq i32 %17, 5, !dbg !265
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !266

if.then24:                                        ; preds = %if.end21
  %18 = load i8*, i8** %data, align 8, !dbg !267
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %18), !dbg !269
  br label %if.end26, !dbg !270

if.end26:                                         ; preds = %if.then24, %if.end21
  ret void, !dbg !271
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !272 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !273, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !275, metadata !DIExpression()), !dbg !276
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !276
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !276
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !277
  store i8* %arraydecay, i8** %data, align 8, !dbg !278
  %1 = load i32, i32* @globalFive, align 4, !dbg !279
  %cmp = icmp ne i32 %1, 5, !dbg !281
  br i1 %cmp, label %if.then, label %if.else, !dbg !282

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !283
  br label %if.end, !dbg !285

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !286
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !288
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @globalFive, align 4, !dbg !289
  %cmp1 = icmp eq i32 %3, 5, !dbg !291
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !292

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !293
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !295
  br label %if.end4, !dbg !296

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !297
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !298 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !301, metadata !DIExpression()), !dbg !302
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !302
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !302
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !303
  store i8* %arraydecay, i8** %data, align 8, !dbg !304
  %1 = load i32, i32* @globalFive, align 4, !dbg !305
  %cmp = icmp eq i32 %1, 5, !dbg !307
  br i1 %cmp, label %if.then, label %if.end, !dbg !308

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !309
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !311
  br label %if.end, !dbg !312

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @globalFive, align 4, !dbg !313
  %cmp1 = icmp eq i32 %3, 5, !dbg !315
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !316

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !317
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !319
  br label %if.end4, !dbg !320

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !321
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_14_good() #0 !dbg !322 {
entry:
  call void @goodB2G1(), !dbg !323
  call void @goodB2G2(), !dbg !324
  call void @goodG2B1(), !dbg !325
  call void @goodG2B2(), !dbg !326
  ret void, !dbg !327
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !328 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !331, metadata !DIExpression()), !dbg !332
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !333
  %0 = load i8*, i8** %line.addr, align 8, !dbg !334
  %cmp = icmp ne i8* %0, null, !dbg !336
  br i1 %cmp, label %if.then, label %if.end, !dbg !337

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !338
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !340
  br label %if.end, !dbg !341

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !342
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !344 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !345, metadata !DIExpression()), !dbg !346
  %0 = load i8*, i8** %line.addr, align 8, !dbg !347
  %cmp = icmp ne i8* %0, null, !dbg !349
  br i1 %cmp, label %if.then, label %if.end, !dbg !350

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !351
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !353
  br label %if.end, !dbg !354

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !356 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !361, metadata !DIExpression()), !dbg !362
  %0 = load i32*, i32** %line.addr, align 8, !dbg !363
  %cmp = icmp ne i32* %0, null, !dbg !365
  br i1 %cmp, label %if.then, label %if.end, !dbg !366

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !367
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !369
  br label %if.end, !dbg !370

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !371
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !372 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !375, metadata !DIExpression()), !dbg !376
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !377
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !378
  ret void, !dbg !379
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !380 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !384, metadata !DIExpression()), !dbg !385
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !386
  %conv = sext i16 %0 to i32, !dbg !386
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.9, i64 0, i64 0), i32 %conv), !dbg !387
  ret void, !dbg !388
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !389 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !393, metadata !DIExpression()), !dbg !394
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !395
  %conv = fpext float %0 to double, !dbg !395
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !396
  ret void, !dbg !397
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !398 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !404
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !405
  ret void, !dbg !406
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !407 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !414, metadata !DIExpression()), !dbg !415
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !416
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !417
  ret void, !dbg !418
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !419 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !422, metadata !DIExpression()), !dbg !423
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !424
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !425
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !427 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !430, metadata !DIExpression()), !dbg !431
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !432
  %conv = sext i8 %0 to i32, !dbg !432
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !433
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !435 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !438, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !440, metadata !DIExpression()), !dbg !444
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !445
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !446
  store i32 %0, i32* %arrayidx, align 4, !dbg !447
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !448
  store i32 0, i32* %arrayidx1, align 4, !dbg !449
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !450
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !451
  ret void, !dbg !452
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !453 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !456, metadata !DIExpression()), !dbg !457
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !458
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !459
  ret void, !dbg !460
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !461 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !464, metadata !DIExpression()), !dbg !465
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !466
  %conv = zext i8 %0 to i32, !dbg !466
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !467
  ret void, !dbg !468
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !469 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !473, metadata !DIExpression()), !dbg !474
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !475
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !476
  ret void, !dbg !477
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !478 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !488, metadata !DIExpression()), !dbg !489
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !490
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !491
  %1 = load i32, i32* %intOne, align 4, !dbg !491
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !492
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !493
  %3 = load i32, i32* %intTwo, align 4, !dbg !493
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !494
  ret void, !dbg !495
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !496 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !500, metadata !DIExpression()), !dbg !501
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !502, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.declare(metadata i64* %i, metadata !504, metadata !DIExpression()), !dbg !505
  store i64 0, i64* %i, align 8, !dbg !506
  br label %for.cond, !dbg !508

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !509
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !511
  %cmp = icmp ult i64 %0, %1, !dbg !512
  br i1 %cmp, label %for.body, label %for.end, !dbg !513

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !514
  %3 = load i64, i64* %i, align 8, !dbg !516
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !514
  %4 = load i8, i8* %arrayidx, align 1, !dbg !514
  %conv = zext i8 %4 to i32, !dbg !514
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !517
  br label %for.inc, !dbg !518

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !519
  %inc = add i64 %5, 1, !dbg !519
  store i64 %inc, i64* %i, align 8, !dbg !519
  br label %for.cond, !dbg !520, !llvm.loop !521

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !524
  ret void, !dbg !525
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !526 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !529, metadata !DIExpression()), !dbg !530
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !531, metadata !DIExpression()), !dbg !532
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !533, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !535, metadata !DIExpression()), !dbg !536
  store i64 0, i64* %numWritten, align 8, !dbg !536
  br label %while.cond, !dbg !537

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !538
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !539
  %cmp = icmp ult i64 %0, %1, !dbg !540
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !541

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !542
  %2 = load i16*, i16** %call, align 8, !dbg !542
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !542
  %4 = load i64, i64* %numWritten, align 8, !dbg !542
  %mul = mul i64 2, %4, !dbg !542
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !542
  %5 = load i8, i8* %arrayidx, align 1, !dbg !542
  %conv = sext i8 %5 to i32, !dbg !542
  %idxprom = sext i32 %conv to i64, !dbg !542
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !542
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !542
  %conv2 = zext i16 %6 to i32, !dbg !542
  %and = and i32 %conv2, 4096, !dbg !542
  %tobool = icmp ne i32 %and, 0, !dbg !542
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !543

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !544
  %7 = load i16*, i16** %call3, align 8, !dbg !544
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !544
  %9 = load i64, i64* %numWritten, align 8, !dbg !544
  %mul4 = mul i64 2, %9, !dbg !544
  %add = add i64 %mul4, 1, !dbg !544
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !544
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !544
  %conv6 = sext i8 %10 to i32, !dbg !544
  %idxprom7 = sext i32 %conv6 to i64, !dbg !544
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !544
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !544
  %conv9 = zext i16 %11 to i32, !dbg !544
  %and10 = and i32 %conv9, 4096, !dbg !544
  %tobool11 = icmp ne i32 %and10, 0, !dbg !543
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !545
  br i1 %12, label %while.body, label %while.end, !dbg !537

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !546, metadata !DIExpression()), !dbg !548
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !549
  %14 = load i64, i64* %numWritten, align 8, !dbg !550
  %mul12 = mul i64 2, %14, !dbg !551
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !549
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !552
  %15 = load i32, i32* %byte, align 4, !dbg !553
  %conv15 = trunc i32 %15 to i8, !dbg !554
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !555
  %17 = load i64, i64* %numWritten, align 8, !dbg !556
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !555
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !557
  %18 = load i64, i64* %numWritten, align 8, !dbg !558
  %inc = add i64 %18, 1, !dbg !558
  store i64 %inc, i64* %numWritten, align 8, !dbg !558
  br label %while.cond, !dbg !537, !llvm.loop !559

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !561
  ret i64 %19, !dbg !562
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !563 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !566, metadata !DIExpression()), !dbg !567
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !568, metadata !DIExpression()), !dbg !569
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !570, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !572, metadata !DIExpression()), !dbg !573
  store i64 0, i64* %numWritten, align 8, !dbg !573
  br label %while.cond, !dbg !574

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !575
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !576
  %cmp = icmp ult i64 %0, %1, !dbg !577
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !578

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !579
  %3 = load i64, i64* %numWritten, align 8, !dbg !580
  %mul = mul i64 2, %3, !dbg !581
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !579
  %4 = load i32, i32* %arrayidx, align 4, !dbg !579
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !582
  %tobool = icmp ne i32 %call, 0, !dbg !582
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !583

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !584
  %6 = load i64, i64* %numWritten, align 8, !dbg !585
  %mul1 = mul i64 2, %6, !dbg !586
  %add = add i64 %mul1, 1, !dbg !587
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !584
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !584
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !588
  %tobool4 = icmp ne i32 %call3, 0, !dbg !583
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !589
  br i1 %8, label %while.body, label %while.end, !dbg !574

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !590, metadata !DIExpression()), !dbg !592
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !593
  %10 = load i64, i64* %numWritten, align 8, !dbg !594
  %mul5 = mul i64 2, %10, !dbg !595
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !593
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !596
  %11 = load i32, i32* %byte, align 4, !dbg !597
  %conv = trunc i32 %11 to i8, !dbg !598
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !599
  %13 = load i64, i64* %numWritten, align 8, !dbg !600
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !599
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !601
  %14 = load i64, i64* %numWritten, align 8, !dbg !602
  %inc = add i64 %14, 1, !dbg !602
  store i64 %inc, i64* %numWritten, align 8, !dbg !602
  br label %while.cond, !dbg !574, !llvm.loop !603

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !605
  ret i64 %15, !dbg !606
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !607 {
entry:
  ret i32 1, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !611 {
entry:
  ret i32 0, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !613 {
entry:
  %call = call i32 @rand() #8, !dbg !614
  %rem = srem i32 %call, 2, !dbg !615
  ret i32 %rem, !dbg !616
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !617 {
entry:
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !619 {
entry:
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !621 {
entry:
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !623 {
entry:
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !625 {
entry:
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !627 {
entry:
  ret void, !dbg !628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !629 {
entry:
  ret void, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !631 {
entry:
  ret void, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !633 {
entry:
  ret void, !dbg !634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !635 {
entry:
  ret void, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !637 {
entry:
  ret void, !dbg !638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !639 {
entry:
  ret void, !dbg !640
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !641 {
entry:
  ret void, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !643 {
entry:
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !645 {
entry:
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !647 {
entry:
  ret void, !dbg !648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !649 {
entry:
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !651 {
entry:
  ret void, !dbg !652
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_447/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_14.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_447/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_14_bad", scope: !45, file: !45, line: 27, type: !53, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!64 = !DILocation(line: 32, column: 8, scope: !65)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 32, column: 8)
!66 = !DILocation(line: 32, column: 18, scope: !65)
!67 = !DILocation(line: 32, column: 8, scope: !52)
!68 = !DILocalVariable(name: "dataLen", scope: !69, file: !45, line: 36, type: !71)
!69 = distinct !DILexicalBlock(scope: !70, file: !45, line: 34, column: 9)
!70 = distinct !DILexicalBlock(scope: !65, file: !45, line: 33, column: 5)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 46, baseType: !73)
!72 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!73 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DILocation(line: 36, column: 20, scope: !69)
!75 = !DILocation(line: 36, column: 37, scope: !69)
!76 = !DILocation(line: 36, column: 30, scope: !69)
!77 = !DILocation(line: 38, column: 21, scope: !78)
!78 = distinct !DILexicalBlock(scope: !69, file: !45, line: 38, column: 17)
!79 = !DILocation(line: 38, column: 20, scope: !78)
!80 = !DILocation(line: 38, column: 29, scope: !78)
!81 = !DILocation(line: 38, column: 17, scope: !69)
!82 = !DILocation(line: 41, column: 27, scope: !83)
!83 = distinct !DILexicalBlock(scope: !84, file: !45, line: 41, column: 21)
!84 = distinct !DILexicalBlock(scope: !78, file: !45, line: 39, column: 13)
!85 = !DILocation(line: 41, column: 32, scope: !83)
!86 = !DILocation(line: 41, column: 31, scope: !83)
!87 = !DILocation(line: 41, column: 51, scope: !83)
!88 = !DILocation(line: 41, column: 50, scope: !83)
!89 = !DILocation(line: 41, column: 41, scope: !83)
!90 = !DILocation(line: 41, column: 61, scope: !83)
!91 = !DILocation(line: 41, column: 21, scope: !83)
!92 = !DILocation(line: 41, column: 68, scope: !83)
!93 = !DILocation(line: 41, column: 21, scope: !84)
!94 = !DILocation(line: 45, column: 38, scope: !95)
!95 = distinct !DILexicalBlock(scope: !83, file: !45, line: 42, column: 17)
!96 = !DILocation(line: 45, column: 31, scope: !95)
!97 = !DILocation(line: 45, column: 29, scope: !95)
!98 = !DILocation(line: 46, column: 25, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !45, line: 46, column: 25)
!100 = !DILocation(line: 46, column: 33, scope: !99)
!101 = !DILocation(line: 46, column: 37, scope: !99)
!102 = !DILocation(line: 46, column: 40, scope: !99)
!103 = !DILocation(line: 46, column: 45, scope: !99)
!104 = !DILocation(line: 46, column: 52, scope: !99)
!105 = !DILocation(line: 46, column: 56, scope: !99)
!106 = !DILocation(line: 46, column: 25, scope: !95)
!107 = !DILocation(line: 48, column: 25, scope: !108)
!108 = distinct !DILexicalBlock(scope: !99, file: !45, line: 47, column: 21)
!109 = !DILocation(line: 48, column: 30, scope: !108)
!110 = !DILocation(line: 48, column: 37, scope: !108)
!111 = !DILocation(line: 48, column: 41, scope: !108)
!112 = !DILocation(line: 49, column: 21, scope: !108)
!113 = !DILocation(line: 50, column: 17, scope: !95)
!114 = !DILocation(line: 53, column: 21, scope: !115)
!115 = distinct !DILexicalBlock(scope: !83, file: !45, line: 52, column: 17)
!116 = !DILocation(line: 55, column: 21, scope: !115)
!117 = !DILocation(line: 55, column: 26, scope: !115)
!118 = !DILocation(line: 55, column: 35, scope: !115)
!119 = !DILocation(line: 57, column: 13, scope: !84)
!120 = !DILocation(line: 59, column: 5, scope: !70)
!121 = !DILocation(line: 60, column: 8, scope: !122)
!122 = distinct !DILexicalBlock(scope: !52, file: !45, line: 60, column: 8)
!123 = !DILocation(line: 60, column: 18, scope: !122)
!124 = !DILocation(line: 60, column: 8, scope: !52)
!125 = !DILocation(line: 63, column: 16, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !45, line: 61, column: 5)
!127 = !DILocation(line: 63, column: 9, scope: !126)
!128 = !DILocation(line: 64, column: 5, scope: !126)
!129 = !DILocation(line: 65, column: 1, scope: !52)
!130 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 72, type: !53, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!131 = !DILocalVariable(name: "data", scope: !130, file: !45, line: 74, type: !42)
!132 = !DILocation(line: 74, column: 12, scope: !130)
!133 = !DILocalVariable(name: "dataBuffer", scope: !130, file: !45, line: 75, type: !58)
!134 = !DILocation(line: 75, column: 10, scope: !130)
!135 = !DILocation(line: 76, column: 12, scope: !130)
!136 = !DILocation(line: 76, column: 10, scope: !130)
!137 = !DILocation(line: 77, column: 8, scope: !138)
!138 = distinct !DILexicalBlock(scope: !130, file: !45, line: 77, column: 8)
!139 = !DILocation(line: 77, column: 18, scope: !138)
!140 = !DILocation(line: 77, column: 8, scope: !130)
!141 = !DILocalVariable(name: "dataLen", scope: !142, file: !45, line: 81, type: !71)
!142 = distinct !DILexicalBlock(scope: !143, file: !45, line: 79, column: 9)
!143 = distinct !DILexicalBlock(scope: !138, file: !45, line: 78, column: 5)
!144 = !DILocation(line: 81, column: 20, scope: !142)
!145 = !DILocation(line: 81, column: 37, scope: !142)
!146 = !DILocation(line: 81, column: 30, scope: !142)
!147 = !DILocation(line: 83, column: 21, scope: !148)
!148 = distinct !DILexicalBlock(scope: !142, file: !45, line: 83, column: 17)
!149 = !DILocation(line: 83, column: 20, scope: !148)
!150 = !DILocation(line: 83, column: 29, scope: !148)
!151 = !DILocation(line: 83, column: 17, scope: !142)
!152 = !DILocation(line: 86, column: 27, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !45, line: 86, column: 21)
!154 = distinct !DILexicalBlock(scope: !148, file: !45, line: 84, column: 13)
!155 = !DILocation(line: 86, column: 32, scope: !153)
!156 = !DILocation(line: 86, column: 31, scope: !153)
!157 = !DILocation(line: 86, column: 51, scope: !153)
!158 = !DILocation(line: 86, column: 50, scope: !153)
!159 = !DILocation(line: 86, column: 41, scope: !153)
!160 = !DILocation(line: 86, column: 61, scope: !153)
!161 = !DILocation(line: 86, column: 21, scope: !153)
!162 = !DILocation(line: 86, column: 68, scope: !153)
!163 = !DILocation(line: 86, column: 21, scope: !154)
!164 = !DILocation(line: 90, column: 38, scope: !165)
!165 = distinct !DILexicalBlock(scope: !153, file: !45, line: 87, column: 17)
!166 = !DILocation(line: 90, column: 31, scope: !165)
!167 = !DILocation(line: 90, column: 29, scope: !165)
!168 = !DILocation(line: 91, column: 25, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !45, line: 91, column: 25)
!170 = !DILocation(line: 91, column: 33, scope: !169)
!171 = !DILocation(line: 91, column: 37, scope: !169)
!172 = !DILocation(line: 91, column: 40, scope: !169)
!173 = !DILocation(line: 91, column: 45, scope: !169)
!174 = !DILocation(line: 91, column: 52, scope: !169)
!175 = !DILocation(line: 91, column: 56, scope: !169)
!176 = !DILocation(line: 91, column: 25, scope: !165)
!177 = !DILocation(line: 93, column: 25, scope: !178)
!178 = distinct !DILexicalBlock(scope: !169, file: !45, line: 92, column: 21)
!179 = !DILocation(line: 93, column: 30, scope: !178)
!180 = !DILocation(line: 93, column: 37, scope: !178)
!181 = !DILocation(line: 93, column: 41, scope: !178)
!182 = !DILocation(line: 94, column: 21, scope: !178)
!183 = !DILocation(line: 95, column: 17, scope: !165)
!184 = !DILocation(line: 98, column: 21, scope: !185)
!185 = distinct !DILexicalBlock(scope: !153, file: !45, line: 97, column: 17)
!186 = !DILocation(line: 100, column: 21, scope: !185)
!187 = !DILocation(line: 100, column: 26, scope: !185)
!188 = !DILocation(line: 100, column: 35, scope: !185)
!189 = !DILocation(line: 102, column: 13, scope: !154)
!190 = !DILocation(line: 104, column: 5, scope: !143)
!191 = !DILocation(line: 105, column: 8, scope: !192)
!192 = distinct !DILexicalBlock(scope: !130, file: !45, line: 105, column: 8)
!193 = !DILocation(line: 105, column: 18, scope: !192)
!194 = !DILocation(line: 105, column: 8, scope: !130)
!195 = !DILocation(line: 108, column: 9, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !45, line: 106, column: 5)
!197 = !DILocation(line: 109, column: 5, scope: !196)
!198 = !DILocation(line: 113, column: 24, scope: !199)
!199 = distinct !DILexicalBlock(scope: !192, file: !45, line: 111, column: 5)
!200 = !DILocation(line: 113, column: 9, scope: !199)
!201 = !DILocation(line: 115, column: 1, scope: !130)
!202 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 118, type: !53, scopeLine: 119, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!203 = !DILocalVariable(name: "data", scope: !202, file: !45, line: 120, type: !42)
!204 = !DILocation(line: 120, column: 12, scope: !202)
!205 = !DILocalVariable(name: "dataBuffer", scope: !202, file: !45, line: 121, type: !58)
!206 = !DILocation(line: 121, column: 10, scope: !202)
!207 = !DILocation(line: 122, column: 12, scope: !202)
!208 = !DILocation(line: 122, column: 10, scope: !202)
!209 = !DILocation(line: 123, column: 8, scope: !210)
!210 = distinct !DILexicalBlock(scope: !202, file: !45, line: 123, column: 8)
!211 = !DILocation(line: 123, column: 18, scope: !210)
!212 = !DILocation(line: 123, column: 8, scope: !202)
!213 = !DILocalVariable(name: "dataLen", scope: !214, file: !45, line: 127, type: !71)
!214 = distinct !DILexicalBlock(scope: !215, file: !45, line: 125, column: 9)
!215 = distinct !DILexicalBlock(scope: !210, file: !45, line: 124, column: 5)
!216 = !DILocation(line: 127, column: 20, scope: !214)
!217 = !DILocation(line: 127, column: 37, scope: !214)
!218 = !DILocation(line: 127, column: 30, scope: !214)
!219 = !DILocation(line: 129, column: 21, scope: !220)
!220 = distinct !DILexicalBlock(scope: !214, file: !45, line: 129, column: 17)
!221 = !DILocation(line: 129, column: 20, scope: !220)
!222 = !DILocation(line: 129, column: 29, scope: !220)
!223 = !DILocation(line: 129, column: 17, scope: !214)
!224 = !DILocation(line: 132, column: 27, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !45, line: 132, column: 21)
!226 = distinct !DILexicalBlock(scope: !220, file: !45, line: 130, column: 13)
!227 = !DILocation(line: 132, column: 32, scope: !225)
!228 = !DILocation(line: 132, column: 31, scope: !225)
!229 = !DILocation(line: 132, column: 51, scope: !225)
!230 = !DILocation(line: 132, column: 50, scope: !225)
!231 = !DILocation(line: 132, column: 41, scope: !225)
!232 = !DILocation(line: 132, column: 61, scope: !225)
!233 = !DILocation(line: 132, column: 21, scope: !225)
!234 = !DILocation(line: 132, column: 68, scope: !225)
!235 = !DILocation(line: 132, column: 21, scope: !226)
!236 = !DILocation(line: 136, column: 38, scope: !237)
!237 = distinct !DILexicalBlock(scope: !225, file: !45, line: 133, column: 17)
!238 = !DILocation(line: 136, column: 31, scope: !237)
!239 = !DILocation(line: 136, column: 29, scope: !237)
!240 = !DILocation(line: 137, column: 25, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !45, line: 137, column: 25)
!242 = !DILocation(line: 137, column: 33, scope: !241)
!243 = !DILocation(line: 137, column: 37, scope: !241)
!244 = !DILocation(line: 137, column: 40, scope: !241)
!245 = !DILocation(line: 137, column: 45, scope: !241)
!246 = !DILocation(line: 137, column: 52, scope: !241)
!247 = !DILocation(line: 137, column: 56, scope: !241)
!248 = !DILocation(line: 137, column: 25, scope: !237)
!249 = !DILocation(line: 139, column: 25, scope: !250)
!250 = distinct !DILexicalBlock(scope: !241, file: !45, line: 138, column: 21)
!251 = !DILocation(line: 139, column: 30, scope: !250)
!252 = !DILocation(line: 139, column: 37, scope: !250)
!253 = !DILocation(line: 139, column: 41, scope: !250)
!254 = !DILocation(line: 140, column: 21, scope: !250)
!255 = !DILocation(line: 141, column: 17, scope: !237)
!256 = !DILocation(line: 144, column: 21, scope: !257)
!257 = distinct !DILexicalBlock(scope: !225, file: !45, line: 143, column: 17)
!258 = !DILocation(line: 146, column: 21, scope: !257)
!259 = !DILocation(line: 146, column: 26, scope: !257)
!260 = !DILocation(line: 146, column: 35, scope: !257)
!261 = !DILocation(line: 148, column: 13, scope: !226)
!262 = !DILocation(line: 150, column: 5, scope: !215)
!263 = !DILocation(line: 151, column: 8, scope: !264)
!264 = distinct !DILexicalBlock(scope: !202, file: !45, line: 151, column: 8)
!265 = !DILocation(line: 151, column: 18, scope: !264)
!266 = !DILocation(line: 151, column: 8, scope: !202)
!267 = !DILocation(line: 154, column: 24, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !45, line: 152, column: 5)
!269 = !DILocation(line: 154, column: 9, scope: !268)
!270 = !DILocation(line: 155, column: 5, scope: !268)
!271 = !DILocation(line: 156, column: 1, scope: !202)
!272 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 159, type: !53, scopeLine: 160, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!273 = !DILocalVariable(name: "data", scope: !272, file: !45, line: 161, type: !42)
!274 = !DILocation(line: 161, column: 12, scope: !272)
!275 = !DILocalVariable(name: "dataBuffer", scope: !272, file: !45, line: 162, type: !58)
!276 = !DILocation(line: 162, column: 10, scope: !272)
!277 = !DILocation(line: 163, column: 12, scope: !272)
!278 = !DILocation(line: 163, column: 10, scope: !272)
!279 = !DILocation(line: 164, column: 8, scope: !280)
!280 = distinct !DILexicalBlock(scope: !272, file: !45, line: 164, column: 8)
!281 = !DILocation(line: 164, column: 18, scope: !280)
!282 = !DILocation(line: 164, column: 8, scope: !272)
!283 = !DILocation(line: 167, column: 9, scope: !284)
!284 = distinct !DILexicalBlock(scope: !280, file: !45, line: 165, column: 5)
!285 = !DILocation(line: 168, column: 5, scope: !284)
!286 = !DILocation(line: 172, column: 16, scope: !287)
!287 = distinct !DILexicalBlock(scope: !280, file: !45, line: 170, column: 5)
!288 = !DILocation(line: 172, column: 9, scope: !287)
!289 = !DILocation(line: 174, column: 8, scope: !290)
!290 = distinct !DILexicalBlock(scope: !272, file: !45, line: 174, column: 8)
!291 = !DILocation(line: 174, column: 18, scope: !290)
!292 = !DILocation(line: 174, column: 8, scope: !272)
!293 = !DILocation(line: 177, column: 16, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !45, line: 175, column: 5)
!295 = !DILocation(line: 177, column: 9, scope: !294)
!296 = !DILocation(line: 178, column: 5, scope: !294)
!297 = !DILocation(line: 179, column: 1, scope: !272)
!298 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 182, type: !53, scopeLine: 183, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!299 = !DILocalVariable(name: "data", scope: !298, file: !45, line: 184, type: !42)
!300 = !DILocation(line: 184, column: 12, scope: !298)
!301 = !DILocalVariable(name: "dataBuffer", scope: !298, file: !45, line: 185, type: !58)
!302 = !DILocation(line: 185, column: 10, scope: !298)
!303 = !DILocation(line: 186, column: 12, scope: !298)
!304 = !DILocation(line: 186, column: 10, scope: !298)
!305 = !DILocation(line: 187, column: 8, scope: !306)
!306 = distinct !DILexicalBlock(scope: !298, file: !45, line: 187, column: 8)
!307 = !DILocation(line: 187, column: 18, scope: !306)
!308 = !DILocation(line: 187, column: 8, scope: !298)
!309 = !DILocation(line: 190, column: 16, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !45, line: 188, column: 5)
!311 = !DILocation(line: 190, column: 9, scope: !310)
!312 = !DILocation(line: 191, column: 5, scope: !310)
!313 = !DILocation(line: 192, column: 8, scope: !314)
!314 = distinct !DILexicalBlock(scope: !298, file: !45, line: 192, column: 8)
!315 = !DILocation(line: 192, column: 18, scope: !314)
!316 = !DILocation(line: 192, column: 8, scope: !298)
!317 = !DILocation(line: 195, column: 16, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !45, line: 193, column: 5)
!319 = !DILocation(line: 195, column: 9, scope: !318)
!320 = !DILocation(line: 196, column: 5, scope: !318)
!321 = !DILocation(line: 197, column: 1, scope: !298)
!322 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_14_good", scope: !45, file: !45, line: 199, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!323 = !DILocation(line: 201, column: 5, scope: !322)
!324 = !DILocation(line: 202, column: 5, scope: !322)
!325 = !DILocation(line: 203, column: 5, scope: !322)
!326 = !DILocation(line: 204, column: 5, scope: !322)
!327 = !DILocation(line: 205, column: 1, scope: !322)
!328 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !329, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !42}
!331 = !DILocalVariable(name: "line", arg: 1, scope: !328, file: !3, line: 11, type: !42)
!332 = !DILocation(line: 11, column: 25, scope: !328)
!333 = !DILocation(line: 13, column: 1, scope: !328)
!334 = !DILocation(line: 14, column: 8, scope: !335)
!335 = distinct !DILexicalBlock(scope: !328, file: !3, line: 14, column: 8)
!336 = !DILocation(line: 14, column: 13, scope: !335)
!337 = !DILocation(line: 14, column: 8, scope: !328)
!338 = !DILocation(line: 16, column: 24, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !3, line: 15, column: 5)
!340 = !DILocation(line: 16, column: 9, scope: !339)
!341 = !DILocation(line: 17, column: 5, scope: !339)
!342 = !DILocation(line: 18, column: 5, scope: !328)
!343 = !DILocation(line: 19, column: 1, scope: !328)
!344 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !329, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!345 = !DILocalVariable(name: "line", arg: 1, scope: !344, file: !3, line: 20, type: !42)
!346 = !DILocation(line: 20, column: 29, scope: !344)
!347 = !DILocation(line: 22, column: 8, scope: !348)
!348 = distinct !DILexicalBlock(scope: !344, file: !3, line: 22, column: 8)
!349 = !DILocation(line: 22, column: 13, scope: !348)
!350 = !DILocation(line: 22, column: 8, scope: !344)
!351 = !DILocation(line: 24, column: 24, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !3, line: 23, column: 5)
!353 = !DILocation(line: 24, column: 9, scope: !352)
!354 = !DILocation(line: 25, column: 5, scope: !352)
!355 = !DILocation(line: 26, column: 1, scope: !344)
!356 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !357, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !359}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !72, line: 74, baseType: !23)
!361 = !DILocalVariable(name: "line", arg: 1, scope: !356, file: !3, line: 27, type: !359)
!362 = !DILocation(line: 27, column: 29, scope: !356)
!363 = !DILocation(line: 29, column: 8, scope: !364)
!364 = distinct !DILexicalBlock(scope: !356, file: !3, line: 29, column: 8)
!365 = !DILocation(line: 29, column: 13, scope: !364)
!366 = !DILocation(line: 29, column: 8, scope: !356)
!367 = !DILocation(line: 31, column: 27, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !3, line: 30, column: 5)
!369 = !DILocation(line: 31, column: 9, scope: !368)
!370 = !DILocation(line: 32, column: 5, scope: !368)
!371 = !DILocation(line: 33, column: 1, scope: !356)
!372 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !373, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !23}
!375 = !DILocalVariable(name: "intNumber", arg: 1, scope: !372, file: !3, line: 35, type: !23)
!376 = !DILocation(line: 35, column: 24, scope: !372)
!377 = !DILocation(line: 37, column: 20, scope: !372)
!378 = !DILocation(line: 37, column: 5, scope: !372)
!379 = !DILocation(line: 38, column: 1, scope: !372)
!380 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !381, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !383}
!383 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!384 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !380, file: !3, line: 40, type: !383)
!385 = !DILocation(line: 40, column: 28, scope: !380)
!386 = !DILocation(line: 42, column: 21, scope: !380)
!387 = !DILocation(line: 42, column: 5, scope: !380)
!388 = !DILocation(line: 43, column: 1, scope: !380)
!389 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !390, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !392}
!392 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!393 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !389, file: !3, line: 45, type: !392)
!394 = !DILocation(line: 45, column: 28, scope: !389)
!395 = !DILocation(line: 47, column: 20, scope: !389)
!396 = !DILocation(line: 47, column: 5, scope: !389)
!397 = !DILocation(line: 48, column: 1, scope: !389)
!398 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !399, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !401}
!401 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!402 = !DILocalVariable(name: "longNumber", arg: 1, scope: !398, file: !3, line: 50, type: !401)
!403 = !DILocation(line: 50, column: 26, scope: !398)
!404 = !DILocation(line: 52, column: 21, scope: !398)
!405 = !DILocation(line: 52, column: 5, scope: !398)
!406 = !DILocation(line: 53, column: 1, scope: !398)
!407 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !408, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !410}
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !411, line: 27, baseType: !412)
!411 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !413, line: 44, baseType: !401)
!413 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!414 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !407, file: !3, line: 55, type: !410)
!415 = !DILocation(line: 55, column: 33, scope: !407)
!416 = !DILocation(line: 57, column: 29, scope: !407)
!417 = !DILocation(line: 57, column: 5, scope: !407)
!418 = !DILocation(line: 58, column: 1, scope: !407)
!419 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !420, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !71}
!422 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !419, file: !3, line: 60, type: !71)
!423 = !DILocation(line: 60, column: 29, scope: !419)
!424 = !DILocation(line: 62, column: 21, scope: !419)
!425 = !DILocation(line: 62, column: 5, scope: !419)
!426 = !DILocation(line: 63, column: 1, scope: !419)
!427 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !428, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !43}
!430 = !DILocalVariable(name: "charHex", arg: 1, scope: !427, file: !3, line: 65, type: !43)
!431 = !DILocation(line: 65, column: 29, scope: !427)
!432 = !DILocation(line: 67, column: 22, scope: !427)
!433 = !DILocation(line: 67, column: 5, scope: !427)
!434 = !DILocation(line: 68, column: 1, scope: !427)
!435 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !436, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !360}
!438 = !DILocalVariable(name: "wideChar", arg: 1, scope: !435, file: !3, line: 70, type: !360)
!439 = !DILocation(line: 70, column: 29, scope: !435)
!440 = !DILocalVariable(name: "s", scope: !435, file: !3, line: 74, type: !441)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 64, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 2)
!444 = !DILocation(line: 74, column: 13, scope: !435)
!445 = !DILocation(line: 75, column: 16, scope: !435)
!446 = !DILocation(line: 75, column: 9, scope: !435)
!447 = !DILocation(line: 75, column: 14, scope: !435)
!448 = !DILocation(line: 76, column: 9, scope: !435)
!449 = !DILocation(line: 76, column: 14, scope: !435)
!450 = !DILocation(line: 77, column: 21, scope: !435)
!451 = !DILocation(line: 77, column: 5, scope: !435)
!452 = !DILocation(line: 78, column: 1, scope: !435)
!453 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !454, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !7}
!456 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !453, file: !3, line: 80, type: !7)
!457 = !DILocation(line: 80, column: 33, scope: !453)
!458 = !DILocation(line: 82, column: 20, scope: !453)
!459 = !DILocation(line: 82, column: 5, scope: !453)
!460 = !DILocation(line: 83, column: 1, scope: !453)
!461 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !462, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !25}
!464 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !461, file: !3, line: 85, type: !25)
!465 = !DILocation(line: 85, column: 45, scope: !461)
!466 = !DILocation(line: 87, column: 22, scope: !461)
!467 = !DILocation(line: 87, column: 5, scope: !461)
!468 = !DILocation(line: 88, column: 1, scope: !461)
!469 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !470, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !472}
!472 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!473 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !469, file: !3, line: 90, type: !472)
!474 = !DILocation(line: 90, column: 29, scope: !469)
!475 = !DILocation(line: 92, column: 20, scope: !469)
!476 = !DILocation(line: 92, column: 5, scope: !469)
!477 = !DILocation(line: 93, column: 1, scope: !469)
!478 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !479, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !481}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !483, line: 100, baseType: !484)
!483 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_447/source_code")
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !483, line: 96, size: 64, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !484, file: !483, line: 98, baseType: !23, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !484, file: !483, line: 99, baseType: !23, size: 32, offset: 32)
!488 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !478, file: !3, line: 95, type: !481)
!489 = !DILocation(line: 95, column: 40, scope: !478)
!490 = !DILocation(line: 97, column: 26, scope: !478)
!491 = !DILocation(line: 97, column: 47, scope: !478)
!492 = !DILocation(line: 97, column: 55, scope: !478)
!493 = !DILocation(line: 97, column: 76, scope: !478)
!494 = !DILocation(line: 97, column: 5, scope: !478)
!495 = !DILocation(line: 98, column: 1, scope: !478)
!496 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !497, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !499, !71}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!500 = !DILocalVariable(name: "bytes", arg: 1, scope: !496, file: !3, line: 100, type: !499)
!501 = !DILocation(line: 100, column: 38, scope: !496)
!502 = !DILocalVariable(name: "numBytes", arg: 2, scope: !496, file: !3, line: 100, type: !71)
!503 = !DILocation(line: 100, column: 52, scope: !496)
!504 = !DILocalVariable(name: "i", scope: !496, file: !3, line: 102, type: !71)
!505 = !DILocation(line: 102, column: 12, scope: !496)
!506 = !DILocation(line: 103, column: 12, scope: !507)
!507 = distinct !DILexicalBlock(scope: !496, file: !3, line: 103, column: 5)
!508 = !DILocation(line: 103, column: 10, scope: !507)
!509 = !DILocation(line: 103, column: 17, scope: !510)
!510 = distinct !DILexicalBlock(scope: !507, file: !3, line: 103, column: 5)
!511 = !DILocation(line: 103, column: 21, scope: !510)
!512 = !DILocation(line: 103, column: 19, scope: !510)
!513 = !DILocation(line: 103, column: 5, scope: !507)
!514 = !DILocation(line: 105, column: 24, scope: !515)
!515 = distinct !DILexicalBlock(scope: !510, file: !3, line: 104, column: 5)
!516 = !DILocation(line: 105, column: 30, scope: !515)
!517 = !DILocation(line: 105, column: 9, scope: !515)
!518 = !DILocation(line: 106, column: 5, scope: !515)
!519 = !DILocation(line: 103, column: 31, scope: !510)
!520 = !DILocation(line: 103, column: 5, scope: !510)
!521 = distinct !{!521, !513, !522, !523}
!522 = !DILocation(line: 106, column: 5, scope: !507)
!523 = !{!"llvm.loop.mustprogress"}
!524 = !DILocation(line: 107, column: 5, scope: !496)
!525 = !DILocation(line: 108, column: 1, scope: !496)
!526 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !527, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!527 = !DISubroutineType(types: !528)
!528 = !{!71, !499, !71, !42}
!529 = !DILocalVariable(name: "bytes", arg: 1, scope: !526, file: !3, line: 113, type: !499)
!530 = !DILocation(line: 113, column: 39, scope: !526)
!531 = !DILocalVariable(name: "numBytes", arg: 2, scope: !526, file: !3, line: 113, type: !71)
!532 = !DILocation(line: 113, column: 53, scope: !526)
!533 = !DILocalVariable(name: "hex", arg: 3, scope: !526, file: !3, line: 113, type: !42)
!534 = !DILocation(line: 113, column: 71, scope: !526)
!535 = !DILocalVariable(name: "numWritten", scope: !526, file: !3, line: 115, type: !71)
!536 = !DILocation(line: 115, column: 12, scope: !526)
!537 = !DILocation(line: 121, column: 5, scope: !526)
!538 = !DILocation(line: 121, column: 12, scope: !526)
!539 = !DILocation(line: 121, column: 25, scope: !526)
!540 = !DILocation(line: 121, column: 23, scope: !526)
!541 = !DILocation(line: 121, column: 34, scope: !526)
!542 = !DILocation(line: 121, column: 37, scope: !526)
!543 = !DILocation(line: 121, column: 67, scope: !526)
!544 = !DILocation(line: 121, column: 70, scope: !526)
!545 = !DILocation(line: 0, scope: !526)
!546 = !DILocalVariable(name: "byte", scope: !547, file: !3, line: 123, type: !23)
!547 = distinct !DILexicalBlock(scope: !526, file: !3, line: 122, column: 5)
!548 = !DILocation(line: 123, column: 13, scope: !547)
!549 = !DILocation(line: 124, column: 17, scope: !547)
!550 = !DILocation(line: 124, column: 25, scope: !547)
!551 = !DILocation(line: 124, column: 23, scope: !547)
!552 = !DILocation(line: 124, column: 9, scope: !547)
!553 = !DILocation(line: 125, column: 45, scope: !547)
!554 = !DILocation(line: 125, column: 29, scope: !547)
!555 = !DILocation(line: 125, column: 9, scope: !547)
!556 = !DILocation(line: 125, column: 15, scope: !547)
!557 = !DILocation(line: 125, column: 27, scope: !547)
!558 = !DILocation(line: 126, column: 9, scope: !547)
!559 = distinct !{!559, !537, !560, !523}
!560 = !DILocation(line: 127, column: 5, scope: !526)
!561 = !DILocation(line: 129, column: 12, scope: !526)
!562 = !DILocation(line: 129, column: 5, scope: !526)
!563 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !564, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DISubroutineType(types: !565)
!565 = !{!71, !499, !71, !359}
!566 = !DILocalVariable(name: "bytes", arg: 1, scope: !563, file: !3, line: 135, type: !499)
!567 = !DILocation(line: 135, column: 41, scope: !563)
!568 = !DILocalVariable(name: "numBytes", arg: 2, scope: !563, file: !3, line: 135, type: !71)
!569 = !DILocation(line: 135, column: 55, scope: !563)
!570 = !DILocalVariable(name: "hex", arg: 3, scope: !563, file: !3, line: 135, type: !359)
!571 = !DILocation(line: 135, column: 76, scope: !563)
!572 = !DILocalVariable(name: "numWritten", scope: !563, file: !3, line: 137, type: !71)
!573 = !DILocation(line: 137, column: 12, scope: !563)
!574 = !DILocation(line: 143, column: 5, scope: !563)
!575 = !DILocation(line: 143, column: 12, scope: !563)
!576 = !DILocation(line: 143, column: 25, scope: !563)
!577 = !DILocation(line: 143, column: 23, scope: !563)
!578 = !DILocation(line: 143, column: 34, scope: !563)
!579 = !DILocation(line: 143, column: 47, scope: !563)
!580 = !DILocation(line: 143, column: 55, scope: !563)
!581 = !DILocation(line: 143, column: 53, scope: !563)
!582 = !DILocation(line: 143, column: 37, scope: !563)
!583 = !DILocation(line: 143, column: 68, scope: !563)
!584 = !DILocation(line: 143, column: 81, scope: !563)
!585 = !DILocation(line: 143, column: 89, scope: !563)
!586 = !DILocation(line: 143, column: 87, scope: !563)
!587 = !DILocation(line: 143, column: 100, scope: !563)
!588 = !DILocation(line: 143, column: 71, scope: !563)
!589 = !DILocation(line: 0, scope: !563)
!590 = !DILocalVariable(name: "byte", scope: !591, file: !3, line: 145, type: !23)
!591 = distinct !DILexicalBlock(scope: !563, file: !3, line: 144, column: 5)
!592 = !DILocation(line: 145, column: 13, scope: !591)
!593 = !DILocation(line: 146, column: 18, scope: !591)
!594 = !DILocation(line: 146, column: 26, scope: !591)
!595 = !DILocation(line: 146, column: 24, scope: !591)
!596 = !DILocation(line: 146, column: 9, scope: !591)
!597 = !DILocation(line: 147, column: 45, scope: !591)
!598 = !DILocation(line: 147, column: 29, scope: !591)
!599 = !DILocation(line: 147, column: 9, scope: !591)
!600 = !DILocation(line: 147, column: 15, scope: !591)
!601 = !DILocation(line: 147, column: 27, scope: !591)
!602 = !DILocation(line: 148, column: 9, scope: !591)
!603 = distinct !{!603, !574, !604, !523}
!604 = !DILocation(line: 149, column: 5, scope: !563)
!605 = !DILocation(line: 151, column: 12, scope: !563)
!606 = !DILocation(line: 151, column: 5, scope: !563)
!607 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !608, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DISubroutineType(types: !609)
!609 = !{!23}
!610 = !DILocation(line: 158, column: 5, scope: !607)
!611 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !608, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DILocation(line: 163, column: 5, scope: !611)
!613 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !608, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DILocation(line: 168, column: 13, scope: !613)
!615 = !DILocation(line: 168, column: 20, scope: !613)
!616 = !DILocation(line: 168, column: 5, scope: !613)
!617 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!618 = !DILocation(line: 187, column: 16, scope: !617)
!619 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!620 = !DILocation(line: 188, column: 16, scope: !619)
!621 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!622 = !DILocation(line: 189, column: 16, scope: !621)
!623 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!624 = !DILocation(line: 190, column: 16, scope: !623)
!625 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!626 = !DILocation(line: 191, column: 16, scope: !625)
!627 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!628 = !DILocation(line: 192, column: 16, scope: !627)
!629 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!630 = !DILocation(line: 193, column: 16, scope: !629)
!631 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!632 = !DILocation(line: 194, column: 16, scope: !631)
!633 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!634 = !DILocation(line: 195, column: 16, scope: !633)
!635 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!636 = !DILocation(line: 198, column: 15, scope: !635)
!637 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!638 = !DILocation(line: 199, column: 15, scope: !637)
!639 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!640 = !DILocation(line: 200, column: 15, scope: !639)
!641 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!642 = !DILocation(line: 201, column: 15, scope: !641)
!643 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!644 = !DILocation(line: 202, column: 15, scope: !643)
!645 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!646 = !DILocation(line: 203, column: 15, scope: !645)
!647 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!648 = !DILocation(line: 204, column: 15, scope: !647)
!649 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!650 = !DILocation(line: 205, column: 15, scope: !649)
!651 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!652 = !DILocation(line: 206, column: 15, scope: !651)
