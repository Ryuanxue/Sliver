; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@staticFive = dso_local global i32 5, align 4, !dbg !0
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !9
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !34
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !36
@globalTrue = dso_local global i32 1, align 4, !dbg !38
@globalFalse = dso_local global i32 0, align 4, !dbg !40
@globalFive = dso_local global i32 5, align 4, !dbg !42
@globalArgc = dso_local global i32 0, align 4, !dbg !44
@globalArgv = dso_local global i8** null, align 8, !dbg !46
@.str.4 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.6 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.7 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_07_bad() #0 !dbg !55 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !60, metadata !DIExpression()), !dbg !64
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !64
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !64
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !65
  store i8* %arraydecay, i8** %data, align 8, !dbg !66
  %1 = load i32, i32* @staticFive, align 4, !dbg !67
  %cmp = icmp eq i32 %1, 5, !dbg !69
  br i1 %cmp, label %if.then, label %if.end21, !dbg !70

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !71, metadata !DIExpression()), !dbg !77
  %2 = load i8*, i8** %data, align 8, !dbg !78
  %call = call i64 @strlen(i8* %2) #7, !dbg !79
  store i64 %call, i64* %dataLen, align 8, !dbg !77
  %3 = load i64, i64* %dataLen, align 8, !dbg !80
  %sub = sub i64 100, %3, !dbg !82
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !83
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !84

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !85
  %5 = load i64, i64* %dataLen, align 8, !dbg !88
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !89
  %6 = load i64, i64* %dataLen, align 8, !dbg !90
  %sub3 = sub i64 100, %6, !dbg !91
  %conv = trunc i64 %sub3 to i32, !dbg !92
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !93
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !94
  %cmp5 = icmp ne i8* %call4, null, !dbg !95
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !96

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !97
  %call8 = call i64 @strlen(i8* %8) #7, !dbg !99
  store i64 %call8, i64* %dataLen, align 8, !dbg !100
  %9 = load i64, i64* %dataLen, align 8, !dbg !101
  %cmp9 = icmp ugt i64 %9, 0, !dbg !103
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !104

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !105
  %11 = load i64, i64* %dataLen, align 8, !dbg !106
  %sub11 = sub i64 %11, 1, !dbg !107
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !105
  %12 = load i8, i8* %arrayidx, align 1, !dbg !105
  %conv12 = sext i8 %12 to i32, !dbg !105
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !108
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !109

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !110
  %14 = load i64, i64* %dataLen, align 8, !dbg !112
  %sub16 = sub i64 %14, 1, !dbg !113
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !110
  store i8 0, i8* %arrayidx17, align 1, !dbg !114
  br label %if.end, !dbg !115

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !116

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !117
  %15 = load i8*, i8** %data, align 8, !dbg !119
  %16 = load i64, i64* %dataLen, align 8, !dbg !120
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !119
  store i8 0, i8* %arrayidx18, align 1, !dbg !121
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !122

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !123

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @staticFive, align 4, !dbg !124
  %cmp22 = icmp eq i32 %17, 5, !dbg !126
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !127

if.then24:                                        ; preds = %if.end21
  %18 = load i8*, i8** %data, align 8, !dbg !128
  %call25 = call i32 (i8*, ...) @printf(i8* %18), !dbg !130
  br label %if.end26, !dbg !131

if.end26:                                         ; preds = %if.then24, %if.end21
  ret void, !dbg !132
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
define dso_local void @goodB2G1() #0 !dbg !133 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !136, metadata !DIExpression()), !dbg !137
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !137
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !137
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !138
  store i8* %arraydecay, i8** %data, align 8, !dbg !139
  %1 = load i32, i32* @staticFive, align 4, !dbg !140
  %cmp = icmp eq i32 %1, 5, !dbg !142
  br i1 %cmp, label %if.then, label %if.end21, !dbg !143

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !144, metadata !DIExpression()), !dbg !147
  %2 = load i8*, i8** %data, align 8, !dbg !148
  %call = call i64 @strlen(i8* %2) #7, !dbg !149
  store i64 %call, i64* %dataLen, align 8, !dbg !147
  %3 = load i64, i64* %dataLen, align 8, !dbg !150
  %sub = sub i64 100, %3, !dbg !152
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !153
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !154

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !155
  %5 = load i64, i64* %dataLen, align 8, !dbg !158
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !159
  %6 = load i64, i64* %dataLen, align 8, !dbg !160
  %sub3 = sub i64 100, %6, !dbg !161
  %conv = trunc i64 %sub3 to i32, !dbg !162
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !163
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !164
  %cmp5 = icmp ne i8* %call4, null, !dbg !165
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !166

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !167
  %call8 = call i64 @strlen(i8* %8) #7, !dbg !169
  store i64 %call8, i64* %dataLen, align 8, !dbg !170
  %9 = load i64, i64* %dataLen, align 8, !dbg !171
  %cmp9 = icmp ugt i64 %9, 0, !dbg !173
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !174

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !175
  %11 = load i64, i64* %dataLen, align 8, !dbg !176
  %sub11 = sub i64 %11, 1, !dbg !177
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !175
  %12 = load i8, i8* %arrayidx, align 1, !dbg !175
  %conv12 = sext i8 %12 to i32, !dbg !175
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !178
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !179

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !180
  %14 = load i64, i64* %dataLen, align 8, !dbg !182
  %sub16 = sub i64 %14, 1, !dbg !183
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !180
  store i8 0, i8* %arrayidx17, align 1, !dbg !184
  br label %if.end, !dbg !185

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !186

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !187
  %15 = load i8*, i8** %data, align 8, !dbg !189
  %16 = load i64, i64* %dataLen, align 8, !dbg !190
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !189
  store i8 0, i8* %arrayidx18, align 1, !dbg !191
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !192

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !193

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @staticFive, align 4, !dbg !194
  %cmp22 = icmp ne i32 %17, 5, !dbg !196
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !197

if.then24:                                        ; preds = %if.end21
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !198
  br label %if.end27, !dbg !200

if.else25:                                        ; preds = %if.end21
  %18 = load i8*, i8** %data, align 8, !dbg !201
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %18), !dbg !203
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then24
  ret void, !dbg !204
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !205 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !208, metadata !DIExpression()), !dbg !209
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !209
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !209
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !210
  store i8* %arraydecay, i8** %data, align 8, !dbg !211
  %1 = load i32, i32* @staticFive, align 4, !dbg !212
  %cmp = icmp eq i32 %1, 5, !dbg !214
  br i1 %cmp, label %if.then, label %if.end21, !dbg !215

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !216, metadata !DIExpression()), !dbg !219
  %2 = load i8*, i8** %data, align 8, !dbg !220
  %call = call i64 @strlen(i8* %2) #7, !dbg !221
  store i64 %call, i64* %dataLen, align 8, !dbg !219
  %3 = load i64, i64* %dataLen, align 8, !dbg !222
  %sub = sub i64 100, %3, !dbg !224
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !225
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !226

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !227
  %5 = load i64, i64* %dataLen, align 8, !dbg !230
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !231
  %6 = load i64, i64* %dataLen, align 8, !dbg !232
  %sub3 = sub i64 100, %6, !dbg !233
  %conv = trunc i64 %sub3 to i32, !dbg !234
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !235
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !236
  %cmp5 = icmp ne i8* %call4, null, !dbg !237
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !238

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !239
  %call8 = call i64 @strlen(i8* %8) #7, !dbg !241
  store i64 %call8, i64* %dataLen, align 8, !dbg !242
  %9 = load i64, i64* %dataLen, align 8, !dbg !243
  %cmp9 = icmp ugt i64 %9, 0, !dbg !245
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !246

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !247
  %11 = load i64, i64* %dataLen, align 8, !dbg !248
  %sub11 = sub i64 %11, 1, !dbg !249
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !247
  %12 = load i8, i8* %arrayidx, align 1, !dbg !247
  %conv12 = sext i8 %12 to i32, !dbg !247
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !250
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !251

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !252
  %14 = load i64, i64* %dataLen, align 8, !dbg !254
  %sub16 = sub i64 %14, 1, !dbg !255
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !252
  store i8 0, i8* %arrayidx17, align 1, !dbg !256
  br label %if.end, !dbg !257

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !258

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !259
  %15 = load i8*, i8** %data, align 8, !dbg !261
  %16 = load i64, i64* %dataLen, align 8, !dbg !262
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !261
  store i8 0, i8* %arrayidx18, align 1, !dbg !263
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !264

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !265

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @staticFive, align 4, !dbg !266
  %cmp22 = icmp eq i32 %17, 5, !dbg !268
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !269

if.then24:                                        ; preds = %if.end21
  %18 = load i8*, i8** %data, align 8, !dbg !270
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %18), !dbg !272
  br label %if.end26, !dbg !273

if.end26:                                         ; preds = %if.then24, %if.end21
  ret void, !dbg !274
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !275 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !278, metadata !DIExpression()), !dbg !279
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !279
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !279
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !280
  store i8* %arraydecay, i8** %data, align 8, !dbg !281
  %1 = load i32, i32* @staticFive, align 4, !dbg !282
  %cmp = icmp ne i32 %1, 5, !dbg !284
  br i1 %cmp, label %if.then, label %if.else, !dbg !285

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !286
  br label %if.end, !dbg !288

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !289
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !291
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @staticFive, align 4, !dbg !292
  %cmp1 = icmp eq i32 %3, 5, !dbg !294
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !295

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !296
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !298
  br label %if.end4, !dbg !299

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !300
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !301 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !302, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !304, metadata !DIExpression()), !dbg !305
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !305
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !305
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !306
  store i8* %arraydecay, i8** %data, align 8, !dbg !307
  %1 = load i32, i32* @staticFive, align 4, !dbg !308
  %cmp = icmp eq i32 %1, 5, !dbg !310
  br i1 %cmp, label %if.then, label %if.end, !dbg !311

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !312
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !314
  br label %if.end, !dbg !315

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @staticFive, align 4, !dbg !316
  %cmp1 = icmp eq i32 %3, 5, !dbg !318
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !319

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !320
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !322
  br label %if.end4, !dbg !323

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !324
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_07_good() #0 !dbg !325 {
entry:
  call void @goodB2G1(), !dbg !326
  call void @goodB2G2(), !dbg !327
  call void @goodG2B1(), !dbg !328
  call void @goodG2B2(), !dbg !329
  ret void, !dbg !330
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !331 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !334, metadata !DIExpression()), !dbg !335
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !336
  %0 = load i8*, i8** %line.addr, align 8, !dbg !337
  %cmp = icmp ne i8* %0, null, !dbg !339
  br i1 %cmp, label %if.then, label %if.end, !dbg !340

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !341
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !343
  br label %if.end, !dbg !344

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !345
  ret void, !dbg !346
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !347 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !348, metadata !DIExpression()), !dbg !349
  %0 = load i8*, i8** %line.addr, align 8, !dbg !350
  %cmp = icmp ne i8* %0, null, !dbg !352
  br i1 %cmp, label %if.then, label %if.end, !dbg !353

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !354
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !356
  br label %if.end, !dbg !357

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !358
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !359 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !364, metadata !DIExpression()), !dbg !365
  %0 = load i32*, i32** %line.addr, align 8, !dbg !366
  %cmp = icmp ne i32* %0, null, !dbg !368
  br i1 %cmp, label %if.then, label %if.end, !dbg !369

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !370
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !372
  br label %if.end, !dbg !373

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !374
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !375 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !378, metadata !DIExpression()), !dbg !379
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !380
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.8, i64 0, i64 0), i32 %0), !dbg !381
  ret void, !dbg !382
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !383 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !387, metadata !DIExpression()), !dbg !388
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !389
  %conv = sext i16 %0 to i32, !dbg !389
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !390
  ret void, !dbg !391
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !392 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !396, metadata !DIExpression()), !dbg !397
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !398
  %conv = fpext float %0 to double, !dbg !398
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !399
  ret void, !dbg !400
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !401 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !405, metadata !DIExpression()), !dbg !406
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !407
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !408
  ret void, !dbg !409
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !410 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !417, metadata !DIExpression()), !dbg !418
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !419
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !420
  ret void, !dbg !421
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !422 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !425, metadata !DIExpression()), !dbg !426
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !427
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !428
  ret void, !dbg !429
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !430 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !433, metadata !DIExpression()), !dbg !434
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !435
  %conv = sext i8 %0 to i32, !dbg !435
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !436
  ret void, !dbg !437
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !438 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !441, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !443, metadata !DIExpression()), !dbg !447
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !448
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !449
  store i32 %0, i32* %arrayidx, align 4, !dbg !450
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !451
  store i32 0, i32* %arrayidx1, align 4, !dbg !452
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !453
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !454
  ret void, !dbg !455
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !456 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !459, metadata !DIExpression()), !dbg !460
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !461
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !462
  ret void, !dbg !463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !464 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !467, metadata !DIExpression()), !dbg !468
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !469
  %conv = zext i8 %0 to i32, !dbg !469
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !470
  ret void, !dbg !471
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !472 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !476, metadata !DIExpression()), !dbg !477
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !478
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !479
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !481 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !491, metadata !DIExpression()), !dbg !492
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !493
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !494
  %1 = load i32, i32* %intOne, align 4, !dbg !494
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !495
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !496
  %3 = load i32, i32* %intTwo, align 4, !dbg !496
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !497
  ret void, !dbg !498
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !499 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !503, metadata !DIExpression()), !dbg !504
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !505, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.declare(metadata i64* %i, metadata !507, metadata !DIExpression()), !dbg !508
  store i64 0, i64* %i, align 8, !dbg !509
  br label %for.cond, !dbg !511

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !512
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !514
  %cmp = icmp ult i64 %0, %1, !dbg !515
  br i1 %cmp, label %for.body, label %for.end, !dbg !516

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !517
  %3 = load i64, i64* %i, align 8, !dbg !519
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !517
  %4 = load i8, i8* %arrayidx, align 1, !dbg !517
  %conv = zext i8 %4 to i32, !dbg !517
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !520
  br label %for.inc, !dbg !521

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !522
  %inc = add i64 %5, 1, !dbg !522
  store i64 %inc, i64* %i, align 8, !dbg !522
  br label %for.cond, !dbg !523, !llvm.loop !524

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !527
  ret void, !dbg !528
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !529 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !532, metadata !DIExpression()), !dbg !533
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !534, metadata !DIExpression()), !dbg !535
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !536, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !538, metadata !DIExpression()), !dbg !539
  store i64 0, i64* %numWritten, align 8, !dbg !539
  br label %while.cond, !dbg !540

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !541
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !542
  %cmp = icmp ult i64 %0, %1, !dbg !543
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !544

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !545
  %2 = load i16*, i16** %call, align 8, !dbg !545
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !545
  %4 = load i64, i64* %numWritten, align 8, !dbg !545
  %mul = mul i64 2, %4, !dbg !545
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !545
  %5 = load i8, i8* %arrayidx, align 1, !dbg !545
  %conv = sext i8 %5 to i32, !dbg !545
  %idxprom = sext i32 %conv to i64, !dbg !545
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !545
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !545
  %conv2 = zext i16 %6 to i32, !dbg !545
  %and = and i32 %conv2, 4096, !dbg !545
  %tobool = icmp ne i32 %and, 0, !dbg !545
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !546

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !547
  %7 = load i16*, i16** %call3, align 8, !dbg !547
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !547
  %9 = load i64, i64* %numWritten, align 8, !dbg !547
  %mul4 = mul i64 2, %9, !dbg !547
  %add = add i64 %mul4, 1, !dbg !547
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !547
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !547
  %conv6 = sext i8 %10 to i32, !dbg !547
  %idxprom7 = sext i32 %conv6 to i64, !dbg !547
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !547
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !547
  %conv9 = zext i16 %11 to i32, !dbg !547
  %and10 = and i32 %conv9, 4096, !dbg !547
  %tobool11 = icmp ne i32 %and10, 0, !dbg !546
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !548
  br i1 %12, label %while.body, label %while.end, !dbg !540

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !549, metadata !DIExpression()), !dbg !551
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !552
  %14 = load i64, i64* %numWritten, align 8, !dbg !553
  %mul12 = mul i64 2, %14, !dbg !554
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !552
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !555
  %15 = load i32, i32* %byte, align 4, !dbg !556
  %conv15 = trunc i32 %15 to i8, !dbg !557
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !558
  %17 = load i64, i64* %numWritten, align 8, !dbg !559
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !558
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !560
  %18 = load i64, i64* %numWritten, align 8, !dbg !561
  %inc = add i64 %18, 1, !dbg !561
  store i64 %inc, i64* %numWritten, align 8, !dbg !561
  br label %while.cond, !dbg !540, !llvm.loop !562

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !564
  ret i64 %19, !dbg !565
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !566 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !569, metadata !DIExpression()), !dbg !570
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !571, metadata !DIExpression()), !dbg !572
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !573, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !575, metadata !DIExpression()), !dbg !576
  store i64 0, i64* %numWritten, align 8, !dbg !576
  br label %while.cond, !dbg !577

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !578
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !579
  %cmp = icmp ult i64 %0, %1, !dbg !580
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !581

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !582
  %3 = load i64, i64* %numWritten, align 8, !dbg !583
  %mul = mul i64 2, %3, !dbg !584
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !582
  %4 = load i32, i32* %arrayidx, align 4, !dbg !582
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !585
  %tobool = icmp ne i32 %call, 0, !dbg !585
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !586

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !587
  %6 = load i64, i64* %numWritten, align 8, !dbg !588
  %mul1 = mul i64 2, %6, !dbg !589
  %add = add i64 %mul1, 1, !dbg !590
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !587
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !587
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !591
  %tobool4 = icmp ne i32 %call3, 0, !dbg !586
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !592
  br i1 %8, label %while.body, label %while.end, !dbg !577

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !593, metadata !DIExpression()), !dbg !595
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !596
  %10 = load i64, i64* %numWritten, align 8, !dbg !597
  %mul5 = mul i64 2, %10, !dbg !598
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !596
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !599
  %11 = load i32, i32* %byte, align 4, !dbg !600
  %conv = trunc i32 %11 to i8, !dbg !601
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !602
  %13 = load i64, i64* %numWritten, align 8, !dbg !603
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !602
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !604
  %14 = load i64, i64* %numWritten, align 8, !dbg !605
  %inc = add i64 %14, 1, !dbg !605
  store i64 %inc, i64* %numWritten, align 8, !dbg !605
  br label %while.cond, !dbg !577, !llvm.loop !606

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !608
  ret i64 %15, !dbg !609
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !610 {
entry:
  ret i32 1, !dbg !613
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !614 {
entry:
  ret i32 0, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !616 {
entry:
  %call = call i32 @rand() #8, !dbg !617
  %rem = srem i32 %call, 2, !dbg !618
  ret i32 %rem, !dbg !619
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !620 {
entry:
  ret void, !dbg !621
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !622 {
entry:
  ret void, !dbg !623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !624 {
entry:
  ret void, !dbg !625
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !626 {
entry:
  ret void, !dbg !627
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !628 {
entry:
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !630 {
entry:
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !632 {
entry:
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !634 {
entry:
  ret void, !dbg !635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !636 {
entry:
  ret void, !dbg !637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !638 {
entry:
  ret void, !dbg !639
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !640 {
entry:
  ret void, !dbg !641
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !642 {
entry:
  ret void, !dbg !643
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !644 {
entry:
  ret void, !dbg !645
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !646 {
entry:
  ret void, !dbg !647
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !648 {
entry:
  ret void, !dbg !649
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !650 {
entry:
  ret void, !dbg !651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !652 {
entry:
  ret void, !dbg !653
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !654 {
entry:
  ret void, !dbg !655
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

!llvm.dbg.cu = !{!2, !11}
!llvm.ident = !{!51, !51}
!llvm.module.flags = !{!52, !53, !54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "staticFive", scope: !2, file: !3, line: 28, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_07.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_440/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !11, file: !12, line: 174, type: !6, isLocal: false, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, retainedTypes: !30, globals: !33, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_440/source_code")
!13 = !{!14}
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 46, baseType: !16, size: 32, elements: !17)
!15 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!18 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!21 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!22 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!23 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!30 = !{!7, !6, !31, !32}
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!9, !34, !36, !38, !40, !42, !44, !46}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !11, file: !12, line: 175, type: !6, isLocal: false, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !11, file: !12, line: 176, type: !6, isLocal: false, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "globalTrue", scope: !11, file: !12, line: 181, type: !6, isLocal: false, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "globalFalse", scope: !11, file: !12, line: 182, type: !6, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "globalFive", scope: !11, file: !12, line: 183, type: !6, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalArgc", scope: !11, file: !12, line: 214, type: !6, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalArgv", scope: !11, file: !12, line: 215, type: !48, isLocal: false, isDefinition: true)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !{!"clang version 12.0.0"}
!52 = !{i32 7, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_07_bad", scope: !3, file: !3, line: 32, type: !56, scopeLine: 33, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!56 = !DISubroutineType(types: !57)
!57 = !{null}
!58 = !DILocalVariable(name: "data", scope: !55, file: !3, line: 34, type: !49)
!59 = !DILocation(line: 34, column: 12, scope: !55)
!60 = !DILocalVariable(name: "dataBuffer", scope: !55, file: !3, line: 35, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 800, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 100)
!64 = !DILocation(line: 35, column: 10, scope: !55)
!65 = !DILocation(line: 36, column: 12, scope: !55)
!66 = !DILocation(line: 36, column: 10, scope: !55)
!67 = !DILocation(line: 37, column: 8, scope: !68)
!68 = distinct !DILexicalBlock(scope: !55, file: !3, line: 37, column: 8)
!69 = !DILocation(line: 37, column: 18, scope: !68)
!70 = !DILocation(line: 37, column: 8, scope: !55)
!71 = !DILocalVariable(name: "dataLen", scope: !72, file: !3, line: 41, type: !74)
!72 = distinct !DILexicalBlock(scope: !73, file: !3, line: 39, column: 9)
!73 = distinct !DILexicalBlock(scope: !68, file: !3, line: 38, column: 5)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!76 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !DILocation(line: 41, column: 20, scope: !72)
!78 = !DILocation(line: 41, column: 37, scope: !72)
!79 = !DILocation(line: 41, column: 30, scope: !72)
!80 = !DILocation(line: 43, column: 21, scope: !81)
!81 = distinct !DILexicalBlock(scope: !72, file: !3, line: 43, column: 17)
!82 = !DILocation(line: 43, column: 20, scope: !81)
!83 = !DILocation(line: 43, column: 29, scope: !81)
!84 = !DILocation(line: 43, column: 17, scope: !72)
!85 = !DILocation(line: 46, column: 27, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !3, line: 46, column: 21)
!87 = distinct !DILexicalBlock(scope: !81, file: !3, line: 44, column: 13)
!88 = !DILocation(line: 46, column: 32, scope: !86)
!89 = !DILocation(line: 46, column: 31, scope: !86)
!90 = !DILocation(line: 46, column: 51, scope: !86)
!91 = !DILocation(line: 46, column: 50, scope: !86)
!92 = !DILocation(line: 46, column: 41, scope: !86)
!93 = !DILocation(line: 46, column: 61, scope: !86)
!94 = !DILocation(line: 46, column: 21, scope: !86)
!95 = !DILocation(line: 46, column: 68, scope: !86)
!96 = !DILocation(line: 46, column: 21, scope: !87)
!97 = !DILocation(line: 50, column: 38, scope: !98)
!98 = distinct !DILexicalBlock(scope: !86, file: !3, line: 47, column: 17)
!99 = !DILocation(line: 50, column: 31, scope: !98)
!100 = !DILocation(line: 50, column: 29, scope: !98)
!101 = !DILocation(line: 51, column: 25, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !3, line: 51, column: 25)
!103 = !DILocation(line: 51, column: 33, scope: !102)
!104 = !DILocation(line: 51, column: 37, scope: !102)
!105 = !DILocation(line: 51, column: 40, scope: !102)
!106 = !DILocation(line: 51, column: 45, scope: !102)
!107 = !DILocation(line: 51, column: 52, scope: !102)
!108 = !DILocation(line: 51, column: 56, scope: !102)
!109 = !DILocation(line: 51, column: 25, scope: !98)
!110 = !DILocation(line: 53, column: 25, scope: !111)
!111 = distinct !DILexicalBlock(scope: !102, file: !3, line: 52, column: 21)
!112 = !DILocation(line: 53, column: 30, scope: !111)
!113 = !DILocation(line: 53, column: 37, scope: !111)
!114 = !DILocation(line: 53, column: 41, scope: !111)
!115 = !DILocation(line: 54, column: 21, scope: !111)
!116 = !DILocation(line: 55, column: 17, scope: !98)
!117 = !DILocation(line: 58, column: 21, scope: !118)
!118 = distinct !DILexicalBlock(scope: !86, file: !3, line: 57, column: 17)
!119 = !DILocation(line: 60, column: 21, scope: !118)
!120 = !DILocation(line: 60, column: 26, scope: !118)
!121 = !DILocation(line: 60, column: 35, scope: !118)
!122 = !DILocation(line: 62, column: 13, scope: !87)
!123 = !DILocation(line: 64, column: 5, scope: !73)
!124 = !DILocation(line: 65, column: 8, scope: !125)
!125 = distinct !DILexicalBlock(scope: !55, file: !3, line: 65, column: 8)
!126 = !DILocation(line: 65, column: 18, scope: !125)
!127 = !DILocation(line: 65, column: 8, scope: !55)
!128 = !DILocation(line: 68, column: 16, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !3, line: 66, column: 5)
!130 = !DILocation(line: 68, column: 9, scope: !129)
!131 = !DILocation(line: 69, column: 5, scope: !129)
!132 = !DILocation(line: 70, column: 1, scope: !55)
!133 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 77, type: !56, scopeLine: 78, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!134 = !DILocalVariable(name: "data", scope: !133, file: !3, line: 79, type: !49)
!135 = !DILocation(line: 79, column: 12, scope: !133)
!136 = !DILocalVariable(name: "dataBuffer", scope: !133, file: !3, line: 80, type: !61)
!137 = !DILocation(line: 80, column: 10, scope: !133)
!138 = !DILocation(line: 81, column: 12, scope: !133)
!139 = !DILocation(line: 81, column: 10, scope: !133)
!140 = !DILocation(line: 82, column: 8, scope: !141)
!141 = distinct !DILexicalBlock(scope: !133, file: !3, line: 82, column: 8)
!142 = !DILocation(line: 82, column: 18, scope: !141)
!143 = !DILocation(line: 82, column: 8, scope: !133)
!144 = !DILocalVariable(name: "dataLen", scope: !145, file: !3, line: 86, type: !74)
!145 = distinct !DILexicalBlock(scope: !146, file: !3, line: 84, column: 9)
!146 = distinct !DILexicalBlock(scope: !141, file: !3, line: 83, column: 5)
!147 = !DILocation(line: 86, column: 20, scope: !145)
!148 = !DILocation(line: 86, column: 37, scope: !145)
!149 = !DILocation(line: 86, column: 30, scope: !145)
!150 = !DILocation(line: 88, column: 21, scope: !151)
!151 = distinct !DILexicalBlock(scope: !145, file: !3, line: 88, column: 17)
!152 = !DILocation(line: 88, column: 20, scope: !151)
!153 = !DILocation(line: 88, column: 29, scope: !151)
!154 = !DILocation(line: 88, column: 17, scope: !145)
!155 = !DILocation(line: 91, column: 27, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !3, line: 91, column: 21)
!157 = distinct !DILexicalBlock(scope: !151, file: !3, line: 89, column: 13)
!158 = !DILocation(line: 91, column: 32, scope: !156)
!159 = !DILocation(line: 91, column: 31, scope: !156)
!160 = !DILocation(line: 91, column: 51, scope: !156)
!161 = !DILocation(line: 91, column: 50, scope: !156)
!162 = !DILocation(line: 91, column: 41, scope: !156)
!163 = !DILocation(line: 91, column: 61, scope: !156)
!164 = !DILocation(line: 91, column: 21, scope: !156)
!165 = !DILocation(line: 91, column: 68, scope: !156)
!166 = !DILocation(line: 91, column: 21, scope: !157)
!167 = !DILocation(line: 95, column: 38, scope: !168)
!168 = distinct !DILexicalBlock(scope: !156, file: !3, line: 92, column: 17)
!169 = !DILocation(line: 95, column: 31, scope: !168)
!170 = !DILocation(line: 95, column: 29, scope: !168)
!171 = !DILocation(line: 96, column: 25, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !3, line: 96, column: 25)
!173 = !DILocation(line: 96, column: 33, scope: !172)
!174 = !DILocation(line: 96, column: 37, scope: !172)
!175 = !DILocation(line: 96, column: 40, scope: !172)
!176 = !DILocation(line: 96, column: 45, scope: !172)
!177 = !DILocation(line: 96, column: 52, scope: !172)
!178 = !DILocation(line: 96, column: 56, scope: !172)
!179 = !DILocation(line: 96, column: 25, scope: !168)
!180 = !DILocation(line: 98, column: 25, scope: !181)
!181 = distinct !DILexicalBlock(scope: !172, file: !3, line: 97, column: 21)
!182 = !DILocation(line: 98, column: 30, scope: !181)
!183 = !DILocation(line: 98, column: 37, scope: !181)
!184 = !DILocation(line: 98, column: 41, scope: !181)
!185 = !DILocation(line: 99, column: 21, scope: !181)
!186 = !DILocation(line: 100, column: 17, scope: !168)
!187 = !DILocation(line: 103, column: 21, scope: !188)
!188 = distinct !DILexicalBlock(scope: !156, file: !3, line: 102, column: 17)
!189 = !DILocation(line: 105, column: 21, scope: !188)
!190 = !DILocation(line: 105, column: 26, scope: !188)
!191 = !DILocation(line: 105, column: 35, scope: !188)
!192 = !DILocation(line: 107, column: 13, scope: !157)
!193 = !DILocation(line: 109, column: 5, scope: !146)
!194 = !DILocation(line: 110, column: 8, scope: !195)
!195 = distinct !DILexicalBlock(scope: !133, file: !3, line: 110, column: 8)
!196 = !DILocation(line: 110, column: 18, scope: !195)
!197 = !DILocation(line: 110, column: 8, scope: !133)
!198 = !DILocation(line: 113, column: 9, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !3, line: 111, column: 5)
!200 = !DILocation(line: 114, column: 5, scope: !199)
!201 = !DILocation(line: 118, column: 24, scope: !202)
!202 = distinct !DILexicalBlock(scope: !195, file: !3, line: 116, column: 5)
!203 = !DILocation(line: 118, column: 9, scope: !202)
!204 = !DILocation(line: 120, column: 1, scope: !133)
!205 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 123, type: !56, scopeLine: 124, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!206 = !DILocalVariable(name: "data", scope: !205, file: !3, line: 125, type: !49)
!207 = !DILocation(line: 125, column: 12, scope: !205)
!208 = !DILocalVariable(name: "dataBuffer", scope: !205, file: !3, line: 126, type: !61)
!209 = !DILocation(line: 126, column: 10, scope: !205)
!210 = !DILocation(line: 127, column: 12, scope: !205)
!211 = !DILocation(line: 127, column: 10, scope: !205)
!212 = !DILocation(line: 128, column: 8, scope: !213)
!213 = distinct !DILexicalBlock(scope: !205, file: !3, line: 128, column: 8)
!214 = !DILocation(line: 128, column: 18, scope: !213)
!215 = !DILocation(line: 128, column: 8, scope: !205)
!216 = !DILocalVariable(name: "dataLen", scope: !217, file: !3, line: 132, type: !74)
!217 = distinct !DILexicalBlock(scope: !218, file: !3, line: 130, column: 9)
!218 = distinct !DILexicalBlock(scope: !213, file: !3, line: 129, column: 5)
!219 = !DILocation(line: 132, column: 20, scope: !217)
!220 = !DILocation(line: 132, column: 37, scope: !217)
!221 = !DILocation(line: 132, column: 30, scope: !217)
!222 = !DILocation(line: 134, column: 21, scope: !223)
!223 = distinct !DILexicalBlock(scope: !217, file: !3, line: 134, column: 17)
!224 = !DILocation(line: 134, column: 20, scope: !223)
!225 = !DILocation(line: 134, column: 29, scope: !223)
!226 = !DILocation(line: 134, column: 17, scope: !217)
!227 = !DILocation(line: 137, column: 27, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !3, line: 137, column: 21)
!229 = distinct !DILexicalBlock(scope: !223, file: !3, line: 135, column: 13)
!230 = !DILocation(line: 137, column: 32, scope: !228)
!231 = !DILocation(line: 137, column: 31, scope: !228)
!232 = !DILocation(line: 137, column: 51, scope: !228)
!233 = !DILocation(line: 137, column: 50, scope: !228)
!234 = !DILocation(line: 137, column: 41, scope: !228)
!235 = !DILocation(line: 137, column: 61, scope: !228)
!236 = !DILocation(line: 137, column: 21, scope: !228)
!237 = !DILocation(line: 137, column: 68, scope: !228)
!238 = !DILocation(line: 137, column: 21, scope: !229)
!239 = !DILocation(line: 141, column: 38, scope: !240)
!240 = distinct !DILexicalBlock(scope: !228, file: !3, line: 138, column: 17)
!241 = !DILocation(line: 141, column: 31, scope: !240)
!242 = !DILocation(line: 141, column: 29, scope: !240)
!243 = !DILocation(line: 142, column: 25, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !3, line: 142, column: 25)
!245 = !DILocation(line: 142, column: 33, scope: !244)
!246 = !DILocation(line: 142, column: 37, scope: !244)
!247 = !DILocation(line: 142, column: 40, scope: !244)
!248 = !DILocation(line: 142, column: 45, scope: !244)
!249 = !DILocation(line: 142, column: 52, scope: !244)
!250 = !DILocation(line: 142, column: 56, scope: !244)
!251 = !DILocation(line: 142, column: 25, scope: !240)
!252 = !DILocation(line: 144, column: 25, scope: !253)
!253 = distinct !DILexicalBlock(scope: !244, file: !3, line: 143, column: 21)
!254 = !DILocation(line: 144, column: 30, scope: !253)
!255 = !DILocation(line: 144, column: 37, scope: !253)
!256 = !DILocation(line: 144, column: 41, scope: !253)
!257 = !DILocation(line: 145, column: 21, scope: !253)
!258 = !DILocation(line: 146, column: 17, scope: !240)
!259 = !DILocation(line: 149, column: 21, scope: !260)
!260 = distinct !DILexicalBlock(scope: !228, file: !3, line: 148, column: 17)
!261 = !DILocation(line: 151, column: 21, scope: !260)
!262 = !DILocation(line: 151, column: 26, scope: !260)
!263 = !DILocation(line: 151, column: 35, scope: !260)
!264 = !DILocation(line: 153, column: 13, scope: !229)
!265 = !DILocation(line: 155, column: 5, scope: !218)
!266 = !DILocation(line: 156, column: 8, scope: !267)
!267 = distinct !DILexicalBlock(scope: !205, file: !3, line: 156, column: 8)
!268 = !DILocation(line: 156, column: 18, scope: !267)
!269 = !DILocation(line: 156, column: 8, scope: !205)
!270 = !DILocation(line: 159, column: 24, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !3, line: 157, column: 5)
!272 = !DILocation(line: 159, column: 9, scope: !271)
!273 = !DILocation(line: 160, column: 5, scope: !271)
!274 = !DILocation(line: 161, column: 1, scope: !205)
!275 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 164, type: !56, scopeLine: 165, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!276 = !DILocalVariable(name: "data", scope: !275, file: !3, line: 166, type: !49)
!277 = !DILocation(line: 166, column: 12, scope: !275)
!278 = !DILocalVariable(name: "dataBuffer", scope: !275, file: !3, line: 167, type: !61)
!279 = !DILocation(line: 167, column: 10, scope: !275)
!280 = !DILocation(line: 168, column: 12, scope: !275)
!281 = !DILocation(line: 168, column: 10, scope: !275)
!282 = !DILocation(line: 169, column: 8, scope: !283)
!283 = distinct !DILexicalBlock(scope: !275, file: !3, line: 169, column: 8)
!284 = !DILocation(line: 169, column: 18, scope: !283)
!285 = !DILocation(line: 169, column: 8, scope: !275)
!286 = !DILocation(line: 172, column: 9, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !3, line: 170, column: 5)
!288 = !DILocation(line: 173, column: 5, scope: !287)
!289 = !DILocation(line: 177, column: 16, scope: !290)
!290 = distinct !DILexicalBlock(scope: !283, file: !3, line: 175, column: 5)
!291 = !DILocation(line: 177, column: 9, scope: !290)
!292 = !DILocation(line: 179, column: 8, scope: !293)
!293 = distinct !DILexicalBlock(scope: !275, file: !3, line: 179, column: 8)
!294 = !DILocation(line: 179, column: 18, scope: !293)
!295 = !DILocation(line: 179, column: 8, scope: !275)
!296 = !DILocation(line: 182, column: 16, scope: !297)
!297 = distinct !DILexicalBlock(scope: !293, file: !3, line: 180, column: 5)
!298 = !DILocation(line: 182, column: 9, scope: !297)
!299 = !DILocation(line: 183, column: 5, scope: !297)
!300 = !DILocation(line: 184, column: 1, scope: !275)
!301 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 187, type: !56, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!302 = !DILocalVariable(name: "data", scope: !301, file: !3, line: 189, type: !49)
!303 = !DILocation(line: 189, column: 12, scope: !301)
!304 = !DILocalVariable(name: "dataBuffer", scope: !301, file: !3, line: 190, type: !61)
!305 = !DILocation(line: 190, column: 10, scope: !301)
!306 = !DILocation(line: 191, column: 12, scope: !301)
!307 = !DILocation(line: 191, column: 10, scope: !301)
!308 = !DILocation(line: 192, column: 8, scope: !309)
!309 = distinct !DILexicalBlock(scope: !301, file: !3, line: 192, column: 8)
!310 = !DILocation(line: 192, column: 18, scope: !309)
!311 = !DILocation(line: 192, column: 8, scope: !301)
!312 = !DILocation(line: 195, column: 16, scope: !313)
!313 = distinct !DILexicalBlock(scope: !309, file: !3, line: 193, column: 5)
!314 = !DILocation(line: 195, column: 9, scope: !313)
!315 = !DILocation(line: 196, column: 5, scope: !313)
!316 = !DILocation(line: 197, column: 8, scope: !317)
!317 = distinct !DILexicalBlock(scope: !301, file: !3, line: 197, column: 8)
!318 = !DILocation(line: 197, column: 18, scope: !317)
!319 = !DILocation(line: 197, column: 8, scope: !301)
!320 = !DILocation(line: 200, column: 16, scope: !321)
!321 = distinct !DILexicalBlock(scope: !317, file: !3, line: 198, column: 5)
!322 = !DILocation(line: 200, column: 9, scope: !321)
!323 = !DILocation(line: 201, column: 5, scope: !321)
!324 = !DILocation(line: 202, column: 1, scope: !301)
!325 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_07_good", scope: !3, file: !3, line: 204, type: !56, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!326 = !DILocation(line: 206, column: 5, scope: !325)
!327 = !DILocation(line: 207, column: 5, scope: !325)
!328 = !DILocation(line: 208, column: 5, scope: !325)
!329 = !DILocation(line: 209, column: 5, scope: !325)
!330 = !DILocation(line: 210, column: 1, scope: !325)
!331 = distinct !DISubprogram(name: "printLine", scope: !12, file: !12, line: 11, type: !332, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !49}
!334 = !DILocalVariable(name: "line", arg: 1, scope: !331, file: !12, line: 11, type: !49)
!335 = !DILocation(line: 11, column: 25, scope: !331)
!336 = !DILocation(line: 13, column: 1, scope: !331)
!337 = !DILocation(line: 14, column: 8, scope: !338)
!338 = distinct !DILexicalBlock(scope: !331, file: !12, line: 14, column: 8)
!339 = !DILocation(line: 14, column: 13, scope: !338)
!340 = !DILocation(line: 14, column: 8, scope: !331)
!341 = !DILocation(line: 16, column: 24, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !12, line: 15, column: 5)
!343 = !DILocation(line: 16, column: 9, scope: !342)
!344 = !DILocation(line: 17, column: 5, scope: !342)
!345 = !DILocation(line: 18, column: 5, scope: !331)
!346 = !DILocation(line: 19, column: 1, scope: !331)
!347 = distinct !DISubprogram(name: "printSinkLine", scope: !12, file: !12, line: 20, type: !332, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!348 = !DILocalVariable(name: "line", arg: 1, scope: !347, file: !12, line: 20, type: !49)
!349 = !DILocation(line: 20, column: 29, scope: !347)
!350 = !DILocation(line: 22, column: 8, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !12, line: 22, column: 8)
!352 = !DILocation(line: 22, column: 13, scope: !351)
!353 = !DILocation(line: 22, column: 8, scope: !347)
!354 = !DILocation(line: 24, column: 24, scope: !355)
!355 = distinct !DILexicalBlock(scope: !351, file: !12, line: 23, column: 5)
!356 = !DILocation(line: 24, column: 9, scope: !355)
!357 = !DILocation(line: 25, column: 5, scope: !355)
!358 = !DILocation(line: 26, column: 1, scope: !347)
!359 = distinct !DISubprogram(name: "printWLine", scope: !12, file: !12, line: 27, type: !360, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !362}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !75, line: 74, baseType: !6)
!364 = !DILocalVariable(name: "line", arg: 1, scope: !359, file: !12, line: 27, type: !362)
!365 = !DILocation(line: 27, column: 29, scope: !359)
!366 = !DILocation(line: 29, column: 8, scope: !367)
!367 = distinct !DILexicalBlock(scope: !359, file: !12, line: 29, column: 8)
!368 = !DILocation(line: 29, column: 13, scope: !367)
!369 = !DILocation(line: 29, column: 8, scope: !359)
!370 = !DILocation(line: 31, column: 27, scope: !371)
!371 = distinct !DILexicalBlock(scope: !367, file: !12, line: 30, column: 5)
!372 = !DILocation(line: 31, column: 9, scope: !371)
!373 = !DILocation(line: 32, column: 5, scope: !371)
!374 = !DILocation(line: 33, column: 1, scope: !359)
!375 = distinct !DISubprogram(name: "printIntLine", scope: !12, file: !12, line: 35, type: !376, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !6}
!378 = !DILocalVariable(name: "intNumber", arg: 1, scope: !375, file: !12, line: 35, type: !6)
!379 = !DILocation(line: 35, column: 24, scope: !375)
!380 = !DILocation(line: 37, column: 20, scope: !375)
!381 = !DILocation(line: 37, column: 5, scope: !375)
!382 = !DILocation(line: 38, column: 1, scope: !375)
!383 = distinct !DISubprogram(name: "printShortLine", scope: !12, file: !12, line: 40, type: !384, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !386}
!386 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!387 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !383, file: !12, line: 40, type: !386)
!388 = !DILocation(line: 40, column: 28, scope: !383)
!389 = !DILocation(line: 42, column: 21, scope: !383)
!390 = !DILocation(line: 42, column: 5, scope: !383)
!391 = !DILocation(line: 43, column: 1, scope: !383)
!392 = distinct !DISubprogram(name: "printFloatLine", scope: !12, file: !12, line: 45, type: !393, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !395}
!395 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!396 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !392, file: !12, line: 45, type: !395)
!397 = !DILocation(line: 45, column: 28, scope: !392)
!398 = !DILocation(line: 47, column: 20, scope: !392)
!399 = !DILocation(line: 47, column: 5, scope: !392)
!400 = !DILocation(line: 48, column: 1, scope: !392)
!401 = distinct !DISubprogram(name: "printLongLine", scope: !12, file: !12, line: 50, type: !402, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !404}
!404 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!405 = !DILocalVariable(name: "longNumber", arg: 1, scope: !401, file: !12, line: 50, type: !404)
!406 = !DILocation(line: 50, column: 26, scope: !401)
!407 = !DILocation(line: 52, column: 21, scope: !401)
!408 = !DILocation(line: 52, column: 5, scope: !401)
!409 = !DILocation(line: 53, column: 1, scope: !401)
!410 = distinct !DISubprogram(name: "printLongLongLine", scope: !12, file: !12, line: 55, type: !411, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !413}
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !414, line: 27, baseType: !415)
!414 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !416, line: 44, baseType: !404)
!416 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!417 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !410, file: !12, line: 55, type: !413)
!418 = !DILocation(line: 55, column: 33, scope: !410)
!419 = !DILocation(line: 57, column: 29, scope: !410)
!420 = !DILocation(line: 57, column: 5, scope: !410)
!421 = !DILocation(line: 58, column: 1, scope: !410)
!422 = distinct !DISubprogram(name: "printSizeTLine", scope: !12, file: !12, line: 60, type: !423, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !74}
!425 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !422, file: !12, line: 60, type: !74)
!426 = !DILocation(line: 60, column: 29, scope: !422)
!427 = !DILocation(line: 62, column: 21, scope: !422)
!428 = !DILocation(line: 62, column: 5, scope: !422)
!429 = !DILocation(line: 63, column: 1, scope: !422)
!430 = distinct !DISubprogram(name: "printHexCharLine", scope: !12, file: !12, line: 65, type: !431, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !50}
!433 = !DILocalVariable(name: "charHex", arg: 1, scope: !430, file: !12, line: 65, type: !50)
!434 = !DILocation(line: 65, column: 29, scope: !430)
!435 = !DILocation(line: 67, column: 22, scope: !430)
!436 = !DILocation(line: 67, column: 5, scope: !430)
!437 = !DILocation(line: 68, column: 1, scope: !430)
!438 = distinct !DISubprogram(name: "printWcharLine", scope: !12, file: !12, line: 70, type: !439, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !363}
!441 = !DILocalVariable(name: "wideChar", arg: 1, scope: !438, file: !12, line: 70, type: !363)
!442 = !DILocation(line: 70, column: 29, scope: !438)
!443 = !DILocalVariable(name: "s", scope: !438, file: !12, line: 74, type: !444)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 64, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 2)
!447 = !DILocation(line: 74, column: 13, scope: !438)
!448 = !DILocation(line: 75, column: 16, scope: !438)
!449 = !DILocation(line: 75, column: 9, scope: !438)
!450 = !DILocation(line: 75, column: 14, scope: !438)
!451 = !DILocation(line: 76, column: 9, scope: !438)
!452 = !DILocation(line: 76, column: 14, scope: !438)
!453 = !DILocation(line: 77, column: 21, scope: !438)
!454 = !DILocation(line: 77, column: 5, scope: !438)
!455 = !DILocation(line: 78, column: 1, scope: !438)
!456 = distinct !DISubprogram(name: "printUnsignedLine", scope: !12, file: !12, line: 80, type: !457, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !16}
!459 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !456, file: !12, line: 80, type: !16)
!460 = !DILocation(line: 80, column: 33, scope: !456)
!461 = !DILocation(line: 82, column: 20, scope: !456)
!462 = !DILocation(line: 82, column: 5, scope: !456)
!463 = !DILocation(line: 83, column: 1, scope: !456)
!464 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !12, file: !12, line: 85, type: !465, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !32}
!467 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !464, file: !12, line: 85, type: !32)
!468 = !DILocation(line: 85, column: 45, scope: !464)
!469 = !DILocation(line: 87, column: 22, scope: !464)
!470 = !DILocation(line: 87, column: 5, scope: !464)
!471 = !DILocation(line: 88, column: 1, scope: !464)
!472 = distinct !DISubprogram(name: "printDoubleLine", scope: !12, file: !12, line: 90, type: !473, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !475}
!475 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!476 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !472, file: !12, line: 90, type: !475)
!477 = !DILocation(line: 90, column: 29, scope: !472)
!478 = !DILocation(line: 92, column: 20, scope: !472)
!479 = !DILocation(line: 92, column: 5, scope: !472)
!480 = !DILocation(line: 93, column: 1, scope: !472)
!481 = distinct !DISubprogram(name: "printStructLine", scope: !12, file: !12, line: 95, type: !482, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !486, line: 100, baseType: !487)
!486 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_440/source_code")
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !486, line: 96, size: 64, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !487, file: !486, line: 98, baseType: !6, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !487, file: !486, line: 99, baseType: !6, size: 32, offset: 32)
!491 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !481, file: !12, line: 95, type: !484)
!492 = !DILocation(line: 95, column: 40, scope: !481)
!493 = !DILocation(line: 97, column: 26, scope: !481)
!494 = !DILocation(line: 97, column: 47, scope: !481)
!495 = !DILocation(line: 97, column: 55, scope: !481)
!496 = !DILocation(line: 97, column: 76, scope: !481)
!497 = !DILocation(line: 97, column: 5, scope: !481)
!498 = !DILocation(line: 98, column: 1, scope: !481)
!499 = distinct !DISubprogram(name: "printBytesLine", scope: !12, file: !12, line: 100, type: !500, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !502, !74}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!503 = !DILocalVariable(name: "bytes", arg: 1, scope: !499, file: !12, line: 100, type: !502)
!504 = !DILocation(line: 100, column: 38, scope: !499)
!505 = !DILocalVariable(name: "numBytes", arg: 2, scope: !499, file: !12, line: 100, type: !74)
!506 = !DILocation(line: 100, column: 52, scope: !499)
!507 = !DILocalVariable(name: "i", scope: !499, file: !12, line: 102, type: !74)
!508 = !DILocation(line: 102, column: 12, scope: !499)
!509 = !DILocation(line: 103, column: 12, scope: !510)
!510 = distinct !DILexicalBlock(scope: !499, file: !12, line: 103, column: 5)
!511 = !DILocation(line: 103, column: 10, scope: !510)
!512 = !DILocation(line: 103, column: 17, scope: !513)
!513 = distinct !DILexicalBlock(scope: !510, file: !12, line: 103, column: 5)
!514 = !DILocation(line: 103, column: 21, scope: !513)
!515 = !DILocation(line: 103, column: 19, scope: !513)
!516 = !DILocation(line: 103, column: 5, scope: !510)
!517 = !DILocation(line: 105, column: 24, scope: !518)
!518 = distinct !DILexicalBlock(scope: !513, file: !12, line: 104, column: 5)
!519 = !DILocation(line: 105, column: 30, scope: !518)
!520 = !DILocation(line: 105, column: 9, scope: !518)
!521 = !DILocation(line: 106, column: 5, scope: !518)
!522 = !DILocation(line: 103, column: 31, scope: !513)
!523 = !DILocation(line: 103, column: 5, scope: !513)
!524 = distinct !{!524, !516, !525, !526}
!525 = !DILocation(line: 106, column: 5, scope: !510)
!526 = !{!"llvm.loop.mustprogress"}
!527 = !DILocation(line: 107, column: 5, scope: !499)
!528 = !DILocation(line: 108, column: 1, scope: !499)
!529 = distinct !DISubprogram(name: "decodeHexChars", scope: !12, file: !12, line: 113, type: !530, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!530 = !DISubroutineType(types: !531)
!531 = !{!74, !502, !74, !49}
!532 = !DILocalVariable(name: "bytes", arg: 1, scope: !529, file: !12, line: 113, type: !502)
!533 = !DILocation(line: 113, column: 39, scope: !529)
!534 = !DILocalVariable(name: "numBytes", arg: 2, scope: !529, file: !12, line: 113, type: !74)
!535 = !DILocation(line: 113, column: 53, scope: !529)
!536 = !DILocalVariable(name: "hex", arg: 3, scope: !529, file: !12, line: 113, type: !49)
!537 = !DILocation(line: 113, column: 71, scope: !529)
!538 = !DILocalVariable(name: "numWritten", scope: !529, file: !12, line: 115, type: !74)
!539 = !DILocation(line: 115, column: 12, scope: !529)
!540 = !DILocation(line: 121, column: 5, scope: !529)
!541 = !DILocation(line: 121, column: 12, scope: !529)
!542 = !DILocation(line: 121, column: 25, scope: !529)
!543 = !DILocation(line: 121, column: 23, scope: !529)
!544 = !DILocation(line: 121, column: 34, scope: !529)
!545 = !DILocation(line: 121, column: 37, scope: !529)
!546 = !DILocation(line: 121, column: 67, scope: !529)
!547 = !DILocation(line: 121, column: 70, scope: !529)
!548 = !DILocation(line: 0, scope: !529)
!549 = !DILocalVariable(name: "byte", scope: !550, file: !12, line: 123, type: !6)
!550 = distinct !DILexicalBlock(scope: !529, file: !12, line: 122, column: 5)
!551 = !DILocation(line: 123, column: 13, scope: !550)
!552 = !DILocation(line: 124, column: 17, scope: !550)
!553 = !DILocation(line: 124, column: 25, scope: !550)
!554 = !DILocation(line: 124, column: 23, scope: !550)
!555 = !DILocation(line: 124, column: 9, scope: !550)
!556 = !DILocation(line: 125, column: 45, scope: !550)
!557 = !DILocation(line: 125, column: 29, scope: !550)
!558 = !DILocation(line: 125, column: 9, scope: !550)
!559 = !DILocation(line: 125, column: 15, scope: !550)
!560 = !DILocation(line: 125, column: 27, scope: !550)
!561 = !DILocation(line: 126, column: 9, scope: !550)
!562 = distinct !{!562, !540, !563, !526}
!563 = !DILocation(line: 127, column: 5, scope: !529)
!564 = !DILocation(line: 129, column: 12, scope: !529)
!565 = !DILocation(line: 129, column: 5, scope: !529)
!566 = distinct !DISubprogram(name: "decodeHexWChars", scope: !12, file: !12, line: 135, type: !567, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!567 = !DISubroutineType(types: !568)
!568 = !{!74, !502, !74, !362}
!569 = !DILocalVariable(name: "bytes", arg: 1, scope: !566, file: !12, line: 135, type: !502)
!570 = !DILocation(line: 135, column: 41, scope: !566)
!571 = !DILocalVariable(name: "numBytes", arg: 2, scope: !566, file: !12, line: 135, type: !74)
!572 = !DILocation(line: 135, column: 55, scope: !566)
!573 = !DILocalVariable(name: "hex", arg: 3, scope: !566, file: !12, line: 135, type: !362)
!574 = !DILocation(line: 135, column: 76, scope: !566)
!575 = !DILocalVariable(name: "numWritten", scope: !566, file: !12, line: 137, type: !74)
!576 = !DILocation(line: 137, column: 12, scope: !566)
!577 = !DILocation(line: 143, column: 5, scope: !566)
!578 = !DILocation(line: 143, column: 12, scope: !566)
!579 = !DILocation(line: 143, column: 25, scope: !566)
!580 = !DILocation(line: 143, column: 23, scope: !566)
!581 = !DILocation(line: 143, column: 34, scope: !566)
!582 = !DILocation(line: 143, column: 47, scope: !566)
!583 = !DILocation(line: 143, column: 55, scope: !566)
!584 = !DILocation(line: 143, column: 53, scope: !566)
!585 = !DILocation(line: 143, column: 37, scope: !566)
!586 = !DILocation(line: 143, column: 68, scope: !566)
!587 = !DILocation(line: 143, column: 81, scope: !566)
!588 = !DILocation(line: 143, column: 89, scope: !566)
!589 = !DILocation(line: 143, column: 87, scope: !566)
!590 = !DILocation(line: 143, column: 100, scope: !566)
!591 = !DILocation(line: 143, column: 71, scope: !566)
!592 = !DILocation(line: 0, scope: !566)
!593 = !DILocalVariable(name: "byte", scope: !594, file: !12, line: 145, type: !6)
!594 = distinct !DILexicalBlock(scope: !566, file: !12, line: 144, column: 5)
!595 = !DILocation(line: 145, column: 13, scope: !594)
!596 = !DILocation(line: 146, column: 18, scope: !594)
!597 = !DILocation(line: 146, column: 26, scope: !594)
!598 = !DILocation(line: 146, column: 24, scope: !594)
!599 = !DILocation(line: 146, column: 9, scope: !594)
!600 = !DILocation(line: 147, column: 45, scope: !594)
!601 = !DILocation(line: 147, column: 29, scope: !594)
!602 = !DILocation(line: 147, column: 9, scope: !594)
!603 = !DILocation(line: 147, column: 15, scope: !594)
!604 = !DILocation(line: 147, column: 27, scope: !594)
!605 = !DILocation(line: 148, column: 9, scope: !594)
!606 = distinct !{!606, !577, !607, !526}
!607 = !DILocation(line: 149, column: 5, scope: !566)
!608 = !DILocation(line: 151, column: 12, scope: !566)
!609 = !DILocation(line: 151, column: 5, scope: !566)
!610 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !12, file: !12, line: 156, type: !611, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!611 = !DISubroutineType(types: !612)
!612 = !{!6}
!613 = !DILocation(line: 158, column: 5, scope: !610)
!614 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !12, file: !12, line: 161, type: !611, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!615 = !DILocation(line: 163, column: 5, scope: !614)
!616 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !12, file: !12, line: 166, type: !611, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!617 = !DILocation(line: 168, column: 13, scope: !616)
!618 = !DILocation(line: 168, column: 20, scope: !616)
!619 = !DILocation(line: 168, column: 5, scope: !616)
!620 = distinct !DISubprogram(name: "good1", scope: !12, file: !12, line: 187, type: !56, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!621 = !DILocation(line: 187, column: 16, scope: !620)
!622 = distinct !DISubprogram(name: "good2", scope: !12, file: !12, line: 188, type: !56, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!623 = !DILocation(line: 188, column: 16, scope: !622)
!624 = distinct !DISubprogram(name: "good3", scope: !12, file: !12, line: 189, type: !56, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!625 = !DILocation(line: 189, column: 16, scope: !624)
!626 = distinct !DISubprogram(name: "good4", scope: !12, file: !12, line: 190, type: !56, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!627 = !DILocation(line: 190, column: 16, scope: !626)
!628 = distinct !DISubprogram(name: "good5", scope: !12, file: !12, line: 191, type: !56, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!629 = !DILocation(line: 191, column: 16, scope: !628)
!630 = distinct !DISubprogram(name: "good6", scope: !12, file: !12, line: 192, type: !56, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!631 = !DILocation(line: 192, column: 16, scope: !630)
!632 = distinct !DISubprogram(name: "good7", scope: !12, file: !12, line: 193, type: !56, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!633 = !DILocation(line: 193, column: 16, scope: !632)
!634 = distinct !DISubprogram(name: "good8", scope: !12, file: !12, line: 194, type: !56, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!635 = !DILocation(line: 194, column: 16, scope: !634)
!636 = distinct !DISubprogram(name: "good9", scope: !12, file: !12, line: 195, type: !56, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!637 = !DILocation(line: 195, column: 16, scope: !636)
!638 = distinct !DISubprogram(name: "bad1", scope: !12, file: !12, line: 198, type: !56, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!639 = !DILocation(line: 198, column: 15, scope: !638)
!640 = distinct !DISubprogram(name: "bad2", scope: !12, file: !12, line: 199, type: !56, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!641 = !DILocation(line: 199, column: 15, scope: !640)
!642 = distinct !DISubprogram(name: "bad3", scope: !12, file: !12, line: 200, type: !56, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!643 = !DILocation(line: 200, column: 15, scope: !642)
!644 = distinct !DISubprogram(name: "bad4", scope: !12, file: !12, line: 201, type: !56, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!645 = !DILocation(line: 201, column: 15, scope: !644)
!646 = distinct !DISubprogram(name: "bad5", scope: !12, file: !12, line: 202, type: !56, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!647 = !DILocation(line: 202, column: 15, scope: !646)
!648 = distinct !DISubprogram(name: "bad6", scope: !12, file: !12, line: 203, type: !56, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!649 = !DILocation(line: 203, column: 15, scope: !648)
!650 = distinct !DISubprogram(name: "bad7", scope: !12, file: !12, line: 204, type: !56, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!651 = !DILocation(line: 204, column: 15, scope: !650)
!652 = distinct !DISubprogram(name: "bad8", scope: !12, file: !12, line: 205, type: !56, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!653 = !DILocation(line: 205, column: 15, scope: !652)
!654 = distinct !DISubprogram(name: "bad9", scope: !12, file: !12, line: 206, type: !56, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!655 = !DILocation(line: 206, column: 15, scope: !654)
