; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@staticTrue = dso_local global i32 1, align 4, !dbg !0
@staticFalse = dso_local global i32 0, align 4, !dbg !9
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !11
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !36
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !38
@globalTrue = dso_local global i32 1, align 4, !dbg !40
@globalFalse = dso_local global i32 0, align 4, !dbg !42
@globalFive = dso_local global i32 5, align 4, !dbg !44
@globalArgc = dso_local global i32 0, align 4, !dbg !46
@globalArgv = dso_local global i8** null, align 8, !dbg !48
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_05_bad() #0 !dbg !57 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !62, metadata !DIExpression()), !dbg !66
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !66
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !66
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !67
  store i8* %arraydecay, i8** %data, align 8, !dbg !68
  %1 = load i32, i32* @staticTrue, align 4, !dbg !69
  %tobool = icmp ne i32 %1, 0, !dbg !69
  br i1 %tobool, label %if.then, label %if.end20, !dbg !71

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !72, metadata !DIExpression()), !dbg !78
  %2 = load i8*, i8** %data, align 8, !dbg !79
  %call = call i64 @strlen(i8* %2) #7, !dbg !80
  store i64 %call, i64* %dataLen, align 8, !dbg !78
  %3 = load i64, i64* %dataLen, align 8, !dbg !81
  %sub = sub i64 100, %3, !dbg !83
  %cmp = icmp ugt i64 %sub, 1, !dbg !84
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !85

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !86
  %5 = load i64, i64* %dataLen, align 8, !dbg !89
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !90
  %6 = load i64, i64* %dataLen, align 8, !dbg !91
  %sub2 = sub i64 100, %6, !dbg !92
  %conv = trunc i64 %sub2 to i32, !dbg !93
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !94
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !95
  %cmp4 = icmp ne i8* %call3, null, !dbg !96
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !97

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !98
  %call7 = call i64 @strlen(i8* %8) #7, !dbg !100
  store i64 %call7, i64* %dataLen, align 8, !dbg !101
  %9 = load i64, i64* %dataLen, align 8, !dbg !102
  %cmp8 = icmp ugt i64 %9, 0, !dbg !104
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !105

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !106
  %11 = load i64, i64* %dataLen, align 8, !dbg !107
  %sub10 = sub i64 %11, 1, !dbg !108
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !106
  %12 = load i8, i8* %arrayidx, align 1, !dbg !106
  %conv11 = sext i8 %12 to i32, !dbg !106
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !109
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !110

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !111
  %14 = load i64, i64* %dataLen, align 8, !dbg !113
  %sub15 = sub i64 %14, 1, !dbg !114
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !111
  store i8 0, i8* %arrayidx16, align 1, !dbg !115
  br label %if.end, !dbg !116

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !117

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !118
  %15 = load i8*, i8** %data, align 8, !dbg !120
  %16 = load i64, i64* %dataLen, align 8, !dbg !121
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !120
  store i8 0, i8* %arrayidx17, align 1, !dbg !122
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !123

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !124

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @staticTrue, align 4, !dbg !125
  %tobool21 = icmp ne i32 %17, 0, !dbg !125
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !127

if.then22:                                        ; preds = %if.end20
  %18 = load i8*, i8** %data, align 8, !dbg !128
  %call23 = call i32 (i8*, ...) @printf(i8* %18), !dbg !130
  br label %if.end24, !dbg !131

if.end24:                                         ; preds = %if.then22, %if.end20
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
  %1 = load i32, i32* @staticTrue, align 4, !dbg !140
  %tobool = icmp ne i32 %1, 0, !dbg !140
  br i1 %tobool, label %if.then, label %if.end20, !dbg !142

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !143, metadata !DIExpression()), !dbg !146
  %2 = load i8*, i8** %data, align 8, !dbg !147
  %call = call i64 @strlen(i8* %2) #7, !dbg !148
  store i64 %call, i64* %dataLen, align 8, !dbg !146
  %3 = load i64, i64* %dataLen, align 8, !dbg !149
  %sub = sub i64 100, %3, !dbg !151
  %cmp = icmp ugt i64 %sub, 1, !dbg !152
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !153

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !154
  %5 = load i64, i64* %dataLen, align 8, !dbg !157
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !158
  %6 = load i64, i64* %dataLen, align 8, !dbg !159
  %sub2 = sub i64 100, %6, !dbg !160
  %conv = trunc i64 %sub2 to i32, !dbg !161
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !162
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !163
  %cmp4 = icmp ne i8* %call3, null, !dbg !164
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !165

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !166
  %call7 = call i64 @strlen(i8* %8) #7, !dbg !168
  store i64 %call7, i64* %dataLen, align 8, !dbg !169
  %9 = load i64, i64* %dataLen, align 8, !dbg !170
  %cmp8 = icmp ugt i64 %9, 0, !dbg !172
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !173

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !174
  %11 = load i64, i64* %dataLen, align 8, !dbg !175
  %sub10 = sub i64 %11, 1, !dbg !176
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !174
  %12 = load i8, i8* %arrayidx, align 1, !dbg !174
  %conv11 = sext i8 %12 to i32, !dbg !174
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !177
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !178

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !179
  %14 = load i64, i64* %dataLen, align 8, !dbg !181
  %sub15 = sub i64 %14, 1, !dbg !182
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !179
  store i8 0, i8* %arrayidx16, align 1, !dbg !183
  br label %if.end, !dbg !184

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !185

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !186
  %15 = load i8*, i8** %data, align 8, !dbg !188
  %16 = load i64, i64* %dataLen, align 8, !dbg !189
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !188
  store i8 0, i8* %arrayidx17, align 1, !dbg !190
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !191

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !192

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @staticFalse, align 4, !dbg !193
  %tobool21 = icmp ne i32 %17, 0, !dbg !193
  br i1 %tobool21, label %if.then22, label %if.else23, !dbg !195

if.then22:                                        ; preds = %if.end20
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !196
  br label %if.end25, !dbg !198

if.else23:                                        ; preds = %if.end20
  %18 = load i8*, i8** %data, align 8, !dbg !199
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %18), !dbg !201
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then22
  ret void, !dbg !202
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !203 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !206, metadata !DIExpression()), !dbg !207
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !207
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !207
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !208
  store i8* %arraydecay, i8** %data, align 8, !dbg !209
  %1 = load i32, i32* @staticTrue, align 4, !dbg !210
  %tobool = icmp ne i32 %1, 0, !dbg !210
  br i1 %tobool, label %if.then, label %if.end20, !dbg !212

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !213, metadata !DIExpression()), !dbg !216
  %2 = load i8*, i8** %data, align 8, !dbg !217
  %call = call i64 @strlen(i8* %2) #7, !dbg !218
  store i64 %call, i64* %dataLen, align 8, !dbg !216
  %3 = load i64, i64* %dataLen, align 8, !dbg !219
  %sub = sub i64 100, %3, !dbg !221
  %cmp = icmp ugt i64 %sub, 1, !dbg !222
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !223

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !224
  %5 = load i64, i64* %dataLen, align 8, !dbg !227
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !228
  %6 = load i64, i64* %dataLen, align 8, !dbg !229
  %sub2 = sub i64 100, %6, !dbg !230
  %conv = trunc i64 %sub2 to i32, !dbg !231
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !232
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !233
  %cmp4 = icmp ne i8* %call3, null, !dbg !234
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !235

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !236
  %call7 = call i64 @strlen(i8* %8) #7, !dbg !238
  store i64 %call7, i64* %dataLen, align 8, !dbg !239
  %9 = load i64, i64* %dataLen, align 8, !dbg !240
  %cmp8 = icmp ugt i64 %9, 0, !dbg !242
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !243

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !244
  %11 = load i64, i64* %dataLen, align 8, !dbg !245
  %sub10 = sub i64 %11, 1, !dbg !246
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !244
  %12 = load i8, i8* %arrayidx, align 1, !dbg !244
  %conv11 = sext i8 %12 to i32, !dbg !244
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !247
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !248

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !249
  %14 = load i64, i64* %dataLen, align 8, !dbg !251
  %sub15 = sub i64 %14, 1, !dbg !252
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !249
  store i8 0, i8* %arrayidx16, align 1, !dbg !253
  br label %if.end, !dbg !254

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !255

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !256
  %15 = load i8*, i8** %data, align 8, !dbg !258
  %16 = load i64, i64* %dataLen, align 8, !dbg !259
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !258
  store i8 0, i8* %arrayidx17, align 1, !dbg !260
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !261

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !262

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @staticTrue, align 4, !dbg !263
  %tobool21 = icmp ne i32 %17, 0, !dbg !263
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !265

if.then22:                                        ; preds = %if.end20
  %18 = load i8*, i8** %data, align 8, !dbg !266
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %18), !dbg !268
  br label %if.end24, !dbg !269

if.end24:                                         ; preds = %if.then22, %if.end20
  ret void, !dbg !270
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !271 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !272, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !274, metadata !DIExpression()), !dbg !275
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !275
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !275
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !276
  store i8* %arraydecay, i8** %data, align 8, !dbg !277
  %1 = load i32, i32* @staticFalse, align 4, !dbg !278
  %tobool = icmp ne i32 %1, 0, !dbg !278
  br i1 %tobool, label %if.then, label %if.else, !dbg !280

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !281
  br label %if.end, !dbg !283

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !284
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !286
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @staticTrue, align 4, !dbg !287
  %tobool1 = icmp ne i32 %3, 0, !dbg !287
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !289

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !290
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !292
  br label %if.end4, !dbg !293

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !294
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !295 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !296, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !298, metadata !DIExpression()), !dbg !299
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !299
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !299
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !300
  store i8* %arraydecay, i8** %data, align 8, !dbg !301
  %1 = load i32, i32* @staticTrue, align 4, !dbg !302
  %tobool = icmp ne i32 %1, 0, !dbg !302
  br i1 %tobool, label %if.then, label %if.end, !dbg !304

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !305
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !307
  br label %if.end, !dbg !308

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @staticTrue, align 4, !dbg !309
  %tobool1 = icmp ne i32 %3, 0, !dbg !309
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !311

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !312
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !314
  br label %if.end4, !dbg !315

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !316
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_05_good() #0 !dbg !317 {
entry:
  call void @goodB2G1(), !dbg !318
  call void @goodB2G2(), !dbg !319
  call void @goodG2B1(), !dbg !320
  call void @goodG2B2(), !dbg !321
  ret void, !dbg !322
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !323 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !326, metadata !DIExpression()), !dbg !327
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !328
  %0 = load i8*, i8** %line.addr, align 8, !dbg !329
  %cmp = icmp ne i8* %0, null, !dbg !331
  br i1 %cmp, label %if.then, label %if.end, !dbg !332

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !333
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !335
  br label %if.end, !dbg !336

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !337
  ret void, !dbg !338
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !339 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !340, metadata !DIExpression()), !dbg !341
  %0 = load i8*, i8** %line.addr, align 8, !dbg !342
  %cmp = icmp ne i8* %0, null, !dbg !344
  br i1 %cmp, label %if.then, label %if.end, !dbg !345

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !346
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !348
  br label %if.end, !dbg !349

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !350
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !351 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !356, metadata !DIExpression()), !dbg !357
  %0 = load i32*, i32** %line.addr, align 8, !dbg !358
  %cmp = icmp ne i32* %0, null, !dbg !360
  br i1 %cmp, label %if.then, label %if.end, !dbg !361

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !362
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !364
  br label %if.end, !dbg !365

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !366
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !367 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !370, metadata !DIExpression()), !dbg !371
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !372
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.8, i64 0, i64 0), i32 %0), !dbg !373
  ret void, !dbg !374
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !375 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !379, metadata !DIExpression()), !dbg !380
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !381
  %conv = sext i16 %0 to i32, !dbg !381
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !382
  ret void, !dbg !383
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !384 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !388, metadata !DIExpression()), !dbg !389
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !390
  %conv = fpext float %0 to double, !dbg !390
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !391
  ret void, !dbg !392
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !393 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !397, metadata !DIExpression()), !dbg !398
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !399
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !400
  ret void, !dbg !401
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !402 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !409, metadata !DIExpression()), !dbg !410
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !411
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !412
  ret void, !dbg !413
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !414 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !417, metadata !DIExpression()), !dbg !418
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !419
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !420
  ret void, !dbg !421
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !422 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !425, metadata !DIExpression()), !dbg !426
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !427
  %conv = sext i8 %0 to i32, !dbg !427
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !428
  ret void, !dbg !429
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !430 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !433, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !435, metadata !DIExpression()), !dbg !439
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !440
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !441
  store i32 %0, i32* %arrayidx, align 4, !dbg !442
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !443
  store i32 0, i32* %arrayidx1, align 4, !dbg !444
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !445
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !446
  ret void, !dbg !447
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !448 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !451, metadata !DIExpression()), !dbg !452
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !453
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !454
  ret void, !dbg !455
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !456 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !459, metadata !DIExpression()), !dbg !460
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !461
  %conv = zext i8 %0 to i32, !dbg !461
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !462
  ret void, !dbg !463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !464 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !468, metadata !DIExpression()), !dbg !469
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !470
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !471
  ret void, !dbg !472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !473 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !483, metadata !DIExpression()), !dbg !484
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !485
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !486
  %1 = load i32, i32* %intOne, align 4, !dbg !486
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !487
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !488
  %3 = load i32, i32* %intTwo, align 4, !dbg !488
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !489
  ret void, !dbg !490
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !491 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !495, metadata !DIExpression()), !dbg !496
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !497, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.declare(metadata i64* %i, metadata !499, metadata !DIExpression()), !dbg !500
  store i64 0, i64* %i, align 8, !dbg !501
  br label %for.cond, !dbg !503

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !504
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !506
  %cmp = icmp ult i64 %0, %1, !dbg !507
  br i1 %cmp, label %for.body, label %for.end, !dbg !508

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !509
  %3 = load i64, i64* %i, align 8, !dbg !511
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !509
  %4 = load i8, i8* %arrayidx, align 1, !dbg !509
  %conv = zext i8 %4 to i32, !dbg !509
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !512
  br label %for.inc, !dbg !513

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !514
  %inc = add i64 %5, 1, !dbg !514
  store i64 %inc, i64* %i, align 8, !dbg !514
  br label %for.cond, !dbg !515, !llvm.loop !516

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !519
  ret void, !dbg !520
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !521 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !524, metadata !DIExpression()), !dbg !525
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !526, metadata !DIExpression()), !dbg !527
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !528, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !530, metadata !DIExpression()), !dbg !531
  store i64 0, i64* %numWritten, align 8, !dbg !531
  br label %while.cond, !dbg !532

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !533
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !534
  %cmp = icmp ult i64 %0, %1, !dbg !535
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !536

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !537
  %2 = load i16*, i16** %call, align 8, !dbg !537
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !537
  %4 = load i64, i64* %numWritten, align 8, !dbg !537
  %mul = mul i64 2, %4, !dbg !537
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !537
  %5 = load i8, i8* %arrayidx, align 1, !dbg !537
  %conv = sext i8 %5 to i32, !dbg !537
  %idxprom = sext i32 %conv to i64, !dbg !537
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !537
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !537
  %conv2 = zext i16 %6 to i32, !dbg !537
  %and = and i32 %conv2, 4096, !dbg !537
  %tobool = icmp ne i32 %and, 0, !dbg !537
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !538

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !539
  %7 = load i16*, i16** %call3, align 8, !dbg !539
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !539
  %9 = load i64, i64* %numWritten, align 8, !dbg !539
  %mul4 = mul i64 2, %9, !dbg !539
  %add = add i64 %mul4, 1, !dbg !539
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !539
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !539
  %conv6 = sext i8 %10 to i32, !dbg !539
  %idxprom7 = sext i32 %conv6 to i64, !dbg !539
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !539
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !539
  %conv9 = zext i16 %11 to i32, !dbg !539
  %and10 = and i32 %conv9, 4096, !dbg !539
  %tobool11 = icmp ne i32 %and10, 0, !dbg !538
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !540
  br i1 %12, label %while.body, label %while.end, !dbg !532

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !541, metadata !DIExpression()), !dbg !543
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !544
  %14 = load i64, i64* %numWritten, align 8, !dbg !545
  %mul12 = mul i64 2, %14, !dbg !546
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !544
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !547
  %15 = load i32, i32* %byte, align 4, !dbg !548
  %conv15 = trunc i32 %15 to i8, !dbg !549
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !550
  %17 = load i64, i64* %numWritten, align 8, !dbg !551
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !550
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !552
  %18 = load i64, i64* %numWritten, align 8, !dbg !553
  %inc = add i64 %18, 1, !dbg !553
  store i64 %inc, i64* %numWritten, align 8, !dbg !553
  br label %while.cond, !dbg !532, !llvm.loop !554

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !556
  ret i64 %19, !dbg !557
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !558 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !561, metadata !DIExpression()), !dbg !562
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !563, metadata !DIExpression()), !dbg !564
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !565, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !567, metadata !DIExpression()), !dbg !568
  store i64 0, i64* %numWritten, align 8, !dbg !568
  br label %while.cond, !dbg !569

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !570
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !571
  %cmp = icmp ult i64 %0, %1, !dbg !572
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !573

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !574
  %3 = load i64, i64* %numWritten, align 8, !dbg !575
  %mul = mul i64 2, %3, !dbg !576
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !574
  %4 = load i32, i32* %arrayidx, align 4, !dbg !574
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !577
  %tobool = icmp ne i32 %call, 0, !dbg !577
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !578

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !579
  %6 = load i64, i64* %numWritten, align 8, !dbg !580
  %mul1 = mul i64 2, %6, !dbg !581
  %add = add i64 %mul1, 1, !dbg !582
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !579
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !579
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !583
  %tobool4 = icmp ne i32 %call3, 0, !dbg !578
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !584
  br i1 %8, label %while.body, label %while.end, !dbg !569

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !585, metadata !DIExpression()), !dbg !587
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !588
  %10 = load i64, i64* %numWritten, align 8, !dbg !589
  %mul5 = mul i64 2, %10, !dbg !590
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !588
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !591
  %11 = load i32, i32* %byte, align 4, !dbg !592
  %conv = trunc i32 %11 to i8, !dbg !593
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !594
  %13 = load i64, i64* %numWritten, align 8, !dbg !595
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !594
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !596
  %14 = load i64, i64* %numWritten, align 8, !dbg !597
  %inc = add i64 %14, 1, !dbg !597
  store i64 %inc, i64* %numWritten, align 8, !dbg !597
  br label %while.cond, !dbg !569, !llvm.loop !598

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !600
  ret i64 %15, !dbg !601
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !602 {
entry:
  ret i32 1, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !606 {
entry:
  ret i32 0, !dbg !607
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !608 {
entry:
  %call = call i32 @rand() #8, !dbg !609
  %rem = srem i32 %call, 2, !dbg !610
  ret i32 %rem, !dbg !611
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !612 {
entry:
  ret void, !dbg !613
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !614 {
entry:
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !616 {
entry:
  ret void, !dbg !617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !618 {
entry:
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !620 {
entry:
  ret void, !dbg !621
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !622 {
entry:
  ret void, !dbg !623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !624 {
entry:
  ret void, !dbg !625
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !626 {
entry:
  ret void, !dbg !627
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !628 {
entry:
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !630 {
entry:
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !632 {
entry:
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !634 {
entry:
  ret void, !dbg !635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !636 {
entry:
  ret void, !dbg !637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !638 {
entry:
  ret void, !dbg !639
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !640 {
entry:
  ret void, !dbg !641
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !642 {
entry:
  ret void, !dbg !643
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !644 {
entry:
  ret void, !dbg !645
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !646 {
entry:
  ret void, !dbg !647
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

!llvm.dbg.cu = !{!2, !13}
!llvm.ident = !{!53, !53}
!llvm.module.flags = !{!54, !55, !56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "staticTrue", scope: !2, file: !3, line: 28, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_05.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_438/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0, !9}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "staticFalse", scope: !2, file: !3, line: 29, type: !6, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !13, file: !14, line: 174, type: !6, isLocal: false, isDefinition: true)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !32, globals: !35, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_438/source_code")
!15 = !{!16}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 46, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!20 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!21 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!22 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!23 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!32 = !{!7, !6, !33, !34}
!33 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !{!11, !36, !38, !40, !42, !44, !46, !48}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !13, file: !14, line: 175, type: !6, isLocal: false, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !13, file: !14, line: 176, type: !6, isLocal: false, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "globalTrue", scope: !13, file: !14, line: 181, type: !6, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "globalFalse", scope: !13, file: !14, line: 182, type: !6, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalFive", scope: !13, file: !14, line: 183, type: !6, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalArgc", scope: !13, file: !14, line: 214, type: !6, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "globalArgv", scope: !13, file: !14, line: 215, type: !50, isLocal: false, isDefinition: true)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !{!"clang version 12.0.0"}
!54 = !{i32 7, !"Dwarf Version", i32 4}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{i32 1, !"wchar_size", i32 4}
!57 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_05_bad", scope: !3, file: !3, line: 33, type: !58, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!58 = !DISubroutineType(types: !59)
!59 = !{null}
!60 = !DILocalVariable(name: "data", scope: !57, file: !3, line: 35, type: !51)
!61 = !DILocation(line: 35, column: 12, scope: !57)
!62 = !DILocalVariable(name: "dataBuffer", scope: !57, file: !3, line: 36, type: !63)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 800, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 100)
!66 = !DILocation(line: 36, column: 10, scope: !57)
!67 = !DILocation(line: 37, column: 12, scope: !57)
!68 = !DILocation(line: 37, column: 10, scope: !57)
!69 = !DILocation(line: 38, column: 8, scope: !70)
!70 = distinct !DILexicalBlock(scope: !57, file: !3, line: 38, column: 8)
!71 = !DILocation(line: 38, column: 8, scope: !57)
!72 = !DILocalVariable(name: "dataLen", scope: !73, file: !3, line: 42, type: !75)
!73 = distinct !DILexicalBlock(scope: !74, file: !3, line: 40, column: 9)
!74 = distinct !DILexicalBlock(scope: !70, file: !3, line: 39, column: 5)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 42, column: 20, scope: !73)
!79 = !DILocation(line: 42, column: 37, scope: !73)
!80 = !DILocation(line: 42, column: 30, scope: !73)
!81 = !DILocation(line: 44, column: 21, scope: !82)
!82 = distinct !DILexicalBlock(scope: !73, file: !3, line: 44, column: 17)
!83 = !DILocation(line: 44, column: 20, scope: !82)
!84 = !DILocation(line: 44, column: 29, scope: !82)
!85 = !DILocation(line: 44, column: 17, scope: !73)
!86 = !DILocation(line: 47, column: 27, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 47, column: 21)
!88 = distinct !DILexicalBlock(scope: !82, file: !3, line: 45, column: 13)
!89 = !DILocation(line: 47, column: 32, scope: !87)
!90 = !DILocation(line: 47, column: 31, scope: !87)
!91 = !DILocation(line: 47, column: 51, scope: !87)
!92 = !DILocation(line: 47, column: 50, scope: !87)
!93 = !DILocation(line: 47, column: 41, scope: !87)
!94 = !DILocation(line: 47, column: 61, scope: !87)
!95 = !DILocation(line: 47, column: 21, scope: !87)
!96 = !DILocation(line: 47, column: 68, scope: !87)
!97 = !DILocation(line: 47, column: 21, scope: !88)
!98 = !DILocation(line: 51, column: 38, scope: !99)
!99 = distinct !DILexicalBlock(scope: !87, file: !3, line: 48, column: 17)
!100 = !DILocation(line: 51, column: 31, scope: !99)
!101 = !DILocation(line: 51, column: 29, scope: !99)
!102 = !DILocation(line: 52, column: 25, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !3, line: 52, column: 25)
!104 = !DILocation(line: 52, column: 33, scope: !103)
!105 = !DILocation(line: 52, column: 37, scope: !103)
!106 = !DILocation(line: 52, column: 40, scope: !103)
!107 = !DILocation(line: 52, column: 45, scope: !103)
!108 = !DILocation(line: 52, column: 52, scope: !103)
!109 = !DILocation(line: 52, column: 56, scope: !103)
!110 = !DILocation(line: 52, column: 25, scope: !99)
!111 = !DILocation(line: 54, column: 25, scope: !112)
!112 = distinct !DILexicalBlock(scope: !103, file: !3, line: 53, column: 21)
!113 = !DILocation(line: 54, column: 30, scope: !112)
!114 = !DILocation(line: 54, column: 37, scope: !112)
!115 = !DILocation(line: 54, column: 41, scope: !112)
!116 = !DILocation(line: 55, column: 21, scope: !112)
!117 = !DILocation(line: 56, column: 17, scope: !99)
!118 = !DILocation(line: 59, column: 21, scope: !119)
!119 = distinct !DILexicalBlock(scope: !87, file: !3, line: 58, column: 17)
!120 = !DILocation(line: 61, column: 21, scope: !119)
!121 = !DILocation(line: 61, column: 26, scope: !119)
!122 = !DILocation(line: 61, column: 35, scope: !119)
!123 = !DILocation(line: 63, column: 13, scope: !88)
!124 = !DILocation(line: 65, column: 5, scope: !74)
!125 = !DILocation(line: 66, column: 8, scope: !126)
!126 = distinct !DILexicalBlock(scope: !57, file: !3, line: 66, column: 8)
!127 = !DILocation(line: 66, column: 8, scope: !57)
!128 = !DILocation(line: 69, column: 16, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !3, line: 67, column: 5)
!130 = !DILocation(line: 69, column: 9, scope: !129)
!131 = !DILocation(line: 70, column: 5, scope: !129)
!132 = !DILocation(line: 71, column: 1, scope: !57)
!133 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 78, type: !58, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!134 = !DILocalVariable(name: "data", scope: !133, file: !3, line: 80, type: !51)
!135 = !DILocation(line: 80, column: 12, scope: !133)
!136 = !DILocalVariable(name: "dataBuffer", scope: !133, file: !3, line: 81, type: !63)
!137 = !DILocation(line: 81, column: 10, scope: !133)
!138 = !DILocation(line: 82, column: 12, scope: !133)
!139 = !DILocation(line: 82, column: 10, scope: !133)
!140 = !DILocation(line: 83, column: 8, scope: !141)
!141 = distinct !DILexicalBlock(scope: !133, file: !3, line: 83, column: 8)
!142 = !DILocation(line: 83, column: 8, scope: !133)
!143 = !DILocalVariable(name: "dataLen", scope: !144, file: !3, line: 87, type: !75)
!144 = distinct !DILexicalBlock(scope: !145, file: !3, line: 85, column: 9)
!145 = distinct !DILexicalBlock(scope: !141, file: !3, line: 84, column: 5)
!146 = !DILocation(line: 87, column: 20, scope: !144)
!147 = !DILocation(line: 87, column: 37, scope: !144)
!148 = !DILocation(line: 87, column: 30, scope: !144)
!149 = !DILocation(line: 89, column: 21, scope: !150)
!150 = distinct !DILexicalBlock(scope: !144, file: !3, line: 89, column: 17)
!151 = !DILocation(line: 89, column: 20, scope: !150)
!152 = !DILocation(line: 89, column: 29, scope: !150)
!153 = !DILocation(line: 89, column: 17, scope: !144)
!154 = !DILocation(line: 92, column: 27, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !3, line: 92, column: 21)
!156 = distinct !DILexicalBlock(scope: !150, file: !3, line: 90, column: 13)
!157 = !DILocation(line: 92, column: 32, scope: !155)
!158 = !DILocation(line: 92, column: 31, scope: !155)
!159 = !DILocation(line: 92, column: 51, scope: !155)
!160 = !DILocation(line: 92, column: 50, scope: !155)
!161 = !DILocation(line: 92, column: 41, scope: !155)
!162 = !DILocation(line: 92, column: 61, scope: !155)
!163 = !DILocation(line: 92, column: 21, scope: !155)
!164 = !DILocation(line: 92, column: 68, scope: !155)
!165 = !DILocation(line: 92, column: 21, scope: !156)
!166 = !DILocation(line: 96, column: 38, scope: !167)
!167 = distinct !DILexicalBlock(scope: !155, file: !3, line: 93, column: 17)
!168 = !DILocation(line: 96, column: 31, scope: !167)
!169 = !DILocation(line: 96, column: 29, scope: !167)
!170 = !DILocation(line: 97, column: 25, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !3, line: 97, column: 25)
!172 = !DILocation(line: 97, column: 33, scope: !171)
!173 = !DILocation(line: 97, column: 37, scope: !171)
!174 = !DILocation(line: 97, column: 40, scope: !171)
!175 = !DILocation(line: 97, column: 45, scope: !171)
!176 = !DILocation(line: 97, column: 52, scope: !171)
!177 = !DILocation(line: 97, column: 56, scope: !171)
!178 = !DILocation(line: 97, column: 25, scope: !167)
!179 = !DILocation(line: 99, column: 25, scope: !180)
!180 = distinct !DILexicalBlock(scope: !171, file: !3, line: 98, column: 21)
!181 = !DILocation(line: 99, column: 30, scope: !180)
!182 = !DILocation(line: 99, column: 37, scope: !180)
!183 = !DILocation(line: 99, column: 41, scope: !180)
!184 = !DILocation(line: 100, column: 21, scope: !180)
!185 = !DILocation(line: 101, column: 17, scope: !167)
!186 = !DILocation(line: 104, column: 21, scope: !187)
!187 = distinct !DILexicalBlock(scope: !155, file: !3, line: 103, column: 17)
!188 = !DILocation(line: 106, column: 21, scope: !187)
!189 = !DILocation(line: 106, column: 26, scope: !187)
!190 = !DILocation(line: 106, column: 35, scope: !187)
!191 = !DILocation(line: 108, column: 13, scope: !156)
!192 = !DILocation(line: 110, column: 5, scope: !145)
!193 = !DILocation(line: 111, column: 8, scope: !194)
!194 = distinct !DILexicalBlock(scope: !133, file: !3, line: 111, column: 8)
!195 = !DILocation(line: 111, column: 8, scope: !133)
!196 = !DILocation(line: 114, column: 9, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !3, line: 112, column: 5)
!198 = !DILocation(line: 115, column: 5, scope: !197)
!199 = !DILocation(line: 119, column: 24, scope: !200)
!200 = distinct !DILexicalBlock(scope: !194, file: !3, line: 117, column: 5)
!201 = !DILocation(line: 119, column: 9, scope: !200)
!202 = !DILocation(line: 121, column: 1, scope: !133)
!203 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 124, type: !58, scopeLine: 125, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!204 = !DILocalVariable(name: "data", scope: !203, file: !3, line: 126, type: !51)
!205 = !DILocation(line: 126, column: 12, scope: !203)
!206 = !DILocalVariable(name: "dataBuffer", scope: !203, file: !3, line: 127, type: !63)
!207 = !DILocation(line: 127, column: 10, scope: !203)
!208 = !DILocation(line: 128, column: 12, scope: !203)
!209 = !DILocation(line: 128, column: 10, scope: !203)
!210 = !DILocation(line: 129, column: 8, scope: !211)
!211 = distinct !DILexicalBlock(scope: !203, file: !3, line: 129, column: 8)
!212 = !DILocation(line: 129, column: 8, scope: !203)
!213 = !DILocalVariable(name: "dataLen", scope: !214, file: !3, line: 133, type: !75)
!214 = distinct !DILexicalBlock(scope: !215, file: !3, line: 131, column: 9)
!215 = distinct !DILexicalBlock(scope: !211, file: !3, line: 130, column: 5)
!216 = !DILocation(line: 133, column: 20, scope: !214)
!217 = !DILocation(line: 133, column: 37, scope: !214)
!218 = !DILocation(line: 133, column: 30, scope: !214)
!219 = !DILocation(line: 135, column: 21, scope: !220)
!220 = distinct !DILexicalBlock(scope: !214, file: !3, line: 135, column: 17)
!221 = !DILocation(line: 135, column: 20, scope: !220)
!222 = !DILocation(line: 135, column: 29, scope: !220)
!223 = !DILocation(line: 135, column: 17, scope: !214)
!224 = !DILocation(line: 138, column: 27, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !3, line: 138, column: 21)
!226 = distinct !DILexicalBlock(scope: !220, file: !3, line: 136, column: 13)
!227 = !DILocation(line: 138, column: 32, scope: !225)
!228 = !DILocation(line: 138, column: 31, scope: !225)
!229 = !DILocation(line: 138, column: 51, scope: !225)
!230 = !DILocation(line: 138, column: 50, scope: !225)
!231 = !DILocation(line: 138, column: 41, scope: !225)
!232 = !DILocation(line: 138, column: 61, scope: !225)
!233 = !DILocation(line: 138, column: 21, scope: !225)
!234 = !DILocation(line: 138, column: 68, scope: !225)
!235 = !DILocation(line: 138, column: 21, scope: !226)
!236 = !DILocation(line: 142, column: 38, scope: !237)
!237 = distinct !DILexicalBlock(scope: !225, file: !3, line: 139, column: 17)
!238 = !DILocation(line: 142, column: 31, scope: !237)
!239 = !DILocation(line: 142, column: 29, scope: !237)
!240 = !DILocation(line: 143, column: 25, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !3, line: 143, column: 25)
!242 = !DILocation(line: 143, column: 33, scope: !241)
!243 = !DILocation(line: 143, column: 37, scope: !241)
!244 = !DILocation(line: 143, column: 40, scope: !241)
!245 = !DILocation(line: 143, column: 45, scope: !241)
!246 = !DILocation(line: 143, column: 52, scope: !241)
!247 = !DILocation(line: 143, column: 56, scope: !241)
!248 = !DILocation(line: 143, column: 25, scope: !237)
!249 = !DILocation(line: 145, column: 25, scope: !250)
!250 = distinct !DILexicalBlock(scope: !241, file: !3, line: 144, column: 21)
!251 = !DILocation(line: 145, column: 30, scope: !250)
!252 = !DILocation(line: 145, column: 37, scope: !250)
!253 = !DILocation(line: 145, column: 41, scope: !250)
!254 = !DILocation(line: 146, column: 21, scope: !250)
!255 = !DILocation(line: 147, column: 17, scope: !237)
!256 = !DILocation(line: 150, column: 21, scope: !257)
!257 = distinct !DILexicalBlock(scope: !225, file: !3, line: 149, column: 17)
!258 = !DILocation(line: 152, column: 21, scope: !257)
!259 = !DILocation(line: 152, column: 26, scope: !257)
!260 = !DILocation(line: 152, column: 35, scope: !257)
!261 = !DILocation(line: 154, column: 13, scope: !226)
!262 = !DILocation(line: 156, column: 5, scope: !215)
!263 = !DILocation(line: 157, column: 8, scope: !264)
!264 = distinct !DILexicalBlock(scope: !203, file: !3, line: 157, column: 8)
!265 = !DILocation(line: 157, column: 8, scope: !203)
!266 = !DILocation(line: 160, column: 24, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !3, line: 158, column: 5)
!268 = !DILocation(line: 160, column: 9, scope: !267)
!269 = !DILocation(line: 161, column: 5, scope: !267)
!270 = !DILocation(line: 162, column: 1, scope: !203)
!271 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 165, type: !58, scopeLine: 166, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!272 = !DILocalVariable(name: "data", scope: !271, file: !3, line: 167, type: !51)
!273 = !DILocation(line: 167, column: 12, scope: !271)
!274 = !DILocalVariable(name: "dataBuffer", scope: !271, file: !3, line: 168, type: !63)
!275 = !DILocation(line: 168, column: 10, scope: !271)
!276 = !DILocation(line: 169, column: 12, scope: !271)
!277 = !DILocation(line: 169, column: 10, scope: !271)
!278 = !DILocation(line: 170, column: 8, scope: !279)
!279 = distinct !DILexicalBlock(scope: !271, file: !3, line: 170, column: 8)
!280 = !DILocation(line: 170, column: 8, scope: !271)
!281 = !DILocation(line: 173, column: 9, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !3, line: 171, column: 5)
!283 = !DILocation(line: 174, column: 5, scope: !282)
!284 = !DILocation(line: 178, column: 16, scope: !285)
!285 = distinct !DILexicalBlock(scope: !279, file: !3, line: 176, column: 5)
!286 = !DILocation(line: 178, column: 9, scope: !285)
!287 = !DILocation(line: 180, column: 8, scope: !288)
!288 = distinct !DILexicalBlock(scope: !271, file: !3, line: 180, column: 8)
!289 = !DILocation(line: 180, column: 8, scope: !271)
!290 = !DILocation(line: 183, column: 16, scope: !291)
!291 = distinct !DILexicalBlock(scope: !288, file: !3, line: 181, column: 5)
!292 = !DILocation(line: 183, column: 9, scope: !291)
!293 = !DILocation(line: 184, column: 5, scope: !291)
!294 = !DILocation(line: 185, column: 1, scope: !271)
!295 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 188, type: !58, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!296 = !DILocalVariable(name: "data", scope: !295, file: !3, line: 190, type: !51)
!297 = !DILocation(line: 190, column: 12, scope: !295)
!298 = !DILocalVariable(name: "dataBuffer", scope: !295, file: !3, line: 191, type: !63)
!299 = !DILocation(line: 191, column: 10, scope: !295)
!300 = !DILocation(line: 192, column: 12, scope: !295)
!301 = !DILocation(line: 192, column: 10, scope: !295)
!302 = !DILocation(line: 193, column: 8, scope: !303)
!303 = distinct !DILexicalBlock(scope: !295, file: !3, line: 193, column: 8)
!304 = !DILocation(line: 193, column: 8, scope: !295)
!305 = !DILocation(line: 196, column: 16, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !3, line: 194, column: 5)
!307 = !DILocation(line: 196, column: 9, scope: !306)
!308 = !DILocation(line: 197, column: 5, scope: !306)
!309 = !DILocation(line: 198, column: 8, scope: !310)
!310 = distinct !DILexicalBlock(scope: !295, file: !3, line: 198, column: 8)
!311 = !DILocation(line: 198, column: 8, scope: !295)
!312 = !DILocation(line: 201, column: 16, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !3, line: 199, column: 5)
!314 = !DILocation(line: 201, column: 9, scope: !313)
!315 = !DILocation(line: 202, column: 5, scope: !313)
!316 = !DILocation(line: 203, column: 1, scope: !295)
!317 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_05_good", scope: !3, file: !3, line: 205, type: !58, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!318 = !DILocation(line: 207, column: 5, scope: !317)
!319 = !DILocation(line: 208, column: 5, scope: !317)
!320 = !DILocation(line: 209, column: 5, scope: !317)
!321 = !DILocation(line: 210, column: 5, scope: !317)
!322 = !DILocation(line: 211, column: 1, scope: !317)
!323 = distinct !DISubprogram(name: "printLine", scope: !14, file: !14, line: 11, type: !324, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !51}
!326 = !DILocalVariable(name: "line", arg: 1, scope: !323, file: !14, line: 11, type: !51)
!327 = !DILocation(line: 11, column: 25, scope: !323)
!328 = !DILocation(line: 13, column: 1, scope: !323)
!329 = !DILocation(line: 14, column: 8, scope: !330)
!330 = distinct !DILexicalBlock(scope: !323, file: !14, line: 14, column: 8)
!331 = !DILocation(line: 14, column: 13, scope: !330)
!332 = !DILocation(line: 14, column: 8, scope: !323)
!333 = !DILocation(line: 16, column: 24, scope: !334)
!334 = distinct !DILexicalBlock(scope: !330, file: !14, line: 15, column: 5)
!335 = !DILocation(line: 16, column: 9, scope: !334)
!336 = !DILocation(line: 17, column: 5, scope: !334)
!337 = !DILocation(line: 18, column: 5, scope: !323)
!338 = !DILocation(line: 19, column: 1, scope: !323)
!339 = distinct !DISubprogram(name: "printSinkLine", scope: !14, file: !14, line: 20, type: !324, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!340 = !DILocalVariable(name: "line", arg: 1, scope: !339, file: !14, line: 20, type: !51)
!341 = !DILocation(line: 20, column: 29, scope: !339)
!342 = !DILocation(line: 22, column: 8, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !14, line: 22, column: 8)
!344 = !DILocation(line: 22, column: 13, scope: !343)
!345 = !DILocation(line: 22, column: 8, scope: !339)
!346 = !DILocation(line: 24, column: 24, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !14, line: 23, column: 5)
!348 = !DILocation(line: 24, column: 9, scope: !347)
!349 = !DILocation(line: 25, column: 5, scope: !347)
!350 = !DILocation(line: 26, column: 1, scope: !339)
!351 = distinct !DISubprogram(name: "printWLine", scope: !14, file: !14, line: 27, type: !352, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !354}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !6)
!356 = !DILocalVariable(name: "line", arg: 1, scope: !351, file: !14, line: 27, type: !354)
!357 = !DILocation(line: 27, column: 29, scope: !351)
!358 = !DILocation(line: 29, column: 8, scope: !359)
!359 = distinct !DILexicalBlock(scope: !351, file: !14, line: 29, column: 8)
!360 = !DILocation(line: 29, column: 13, scope: !359)
!361 = !DILocation(line: 29, column: 8, scope: !351)
!362 = !DILocation(line: 31, column: 27, scope: !363)
!363 = distinct !DILexicalBlock(scope: !359, file: !14, line: 30, column: 5)
!364 = !DILocation(line: 31, column: 9, scope: !363)
!365 = !DILocation(line: 32, column: 5, scope: !363)
!366 = !DILocation(line: 33, column: 1, scope: !351)
!367 = distinct !DISubprogram(name: "printIntLine", scope: !14, file: !14, line: 35, type: !368, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !6}
!370 = !DILocalVariable(name: "intNumber", arg: 1, scope: !367, file: !14, line: 35, type: !6)
!371 = !DILocation(line: 35, column: 24, scope: !367)
!372 = !DILocation(line: 37, column: 20, scope: !367)
!373 = !DILocation(line: 37, column: 5, scope: !367)
!374 = !DILocation(line: 38, column: 1, scope: !367)
!375 = distinct !DISubprogram(name: "printShortLine", scope: !14, file: !14, line: 40, type: !376, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !378}
!378 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!379 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !375, file: !14, line: 40, type: !378)
!380 = !DILocation(line: 40, column: 28, scope: !375)
!381 = !DILocation(line: 42, column: 21, scope: !375)
!382 = !DILocation(line: 42, column: 5, scope: !375)
!383 = !DILocation(line: 43, column: 1, scope: !375)
!384 = distinct !DISubprogram(name: "printFloatLine", scope: !14, file: !14, line: 45, type: !385, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !387}
!387 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!388 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !384, file: !14, line: 45, type: !387)
!389 = !DILocation(line: 45, column: 28, scope: !384)
!390 = !DILocation(line: 47, column: 20, scope: !384)
!391 = !DILocation(line: 47, column: 5, scope: !384)
!392 = !DILocation(line: 48, column: 1, scope: !384)
!393 = distinct !DISubprogram(name: "printLongLine", scope: !14, file: !14, line: 50, type: !394, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !396}
!396 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!397 = !DILocalVariable(name: "longNumber", arg: 1, scope: !393, file: !14, line: 50, type: !396)
!398 = !DILocation(line: 50, column: 26, scope: !393)
!399 = !DILocation(line: 52, column: 21, scope: !393)
!400 = !DILocation(line: 52, column: 5, scope: !393)
!401 = !DILocation(line: 53, column: 1, scope: !393)
!402 = distinct !DISubprogram(name: "printLongLongLine", scope: !14, file: !14, line: 55, type: !403, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !405}
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !406, line: 27, baseType: !407)
!406 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !408, line: 44, baseType: !396)
!408 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!409 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !402, file: !14, line: 55, type: !405)
!410 = !DILocation(line: 55, column: 33, scope: !402)
!411 = !DILocation(line: 57, column: 29, scope: !402)
!412 = !DILocation(line: 57, column: 5, scope: !402)
!413 = !DILocation(line: 58, column: 1, scope: !402)
!414 = distinct !DISubprogram(name: "printSizeTLine", scope: !14, file: !14, line: 60, type: !415, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !75}
!417 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !414, file: !14, line: 60, type: !75)
!418 = !DILocation(line: 60, column: 29, scope: !414)
!419 = !DILocation(line: 62, column: 21, scope: !414)
!420 = !DILocation(line: 62, column: 5, scope: !414)
!421 = !DILocation(line: 63, column: 1, scope: !414)
!422 = distinct !DISubprogram(name: "printHexCharLine", scope: !14, file: !14, line: 65, type: !423, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !52}
!425 = !DILocalVariable(name: "charHex", arg: 1, scope: !422, file: !14, line: 65, type: !52)
!426 = !DILocation(line: 65, column: 29, scope: !422)
!427 = !DILocation(line: 67, column: 22, scope: !422)
!428 = !DILocation(line: 67, column: 5, scope: !422)
!429 = !DILocation(line: 68, column: 1, scope: !422)
!430 = distinct !DISubprogram(name: "printWcharLine", scope: !14, file: !14, line: 70, type: !431, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !355}
!433 = !DILocalVariable(name: "wideChar", arg: 1, scope: !430, file: !14, line: 70, type: !355)
!434 = !DILocation(line: 70, column: 29, scope: !430)
!435 = !DILocalVariable(name: "s", scope: !430, file: !14, line: 74, type: !436)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 64, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 2)
!439 = !DILocation(line: 74, column: 13, scope: !430)
!440 = !DILocation(line: 75, column: 16, scope: !430)
!441 = !DILocation(line: 75, column: 9, scope: !430)
!442 = !DILocation(line: 75, column: 14, scope: !430)
!443 = !DILocation(line: 76, column: 9, scope: !430)
!444 = !DILocation(line: 76, column: 14, scope: !430)
!445 = !DILocation(line: 77, column: 21, scope: !430)
!446 = !DILocation(line: 77, column: 5, scope: !430)
!447 = !DILocation(line: 78, column: 1, scope: !430)
!448 = distinct !DISubprogram(name: "printUnsignedLine", scope: !14, file: !14, line: 80, type: !449, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !18}
!451 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !448, file: !14, line: 80, type: !18)
!452 = !DILocation(line: 80, column: 33, scope: !448)
!453 = !DILocation(line: 82, column: 20, scope: !448)
!454 = !DILocation(line: 82, column: 5, scope: !448)
!455 = !DILocation(line: 83, column: 1, scope: !448)
!456 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !14, file: !14, line: 85, type: !457, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !34}
!459 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !456, file: !14, line: 85, type: !34)
!460 = !DILocation(line: 85, column: 45, scope: !456)
!461 = !DILocation(line: 87, column: 22, scope: !456)
!462 = !DILocation(line: 87, column: 5, scope: !456)
!463 = !DILocation(line: 88, column: 1, scope: !456)
!464 = distinct !DISubprogram(name: "printDoubleLine", scope: !14, file: !14, line: 90, type: !465, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !467}
!467 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!468 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !464, file: !14, line: 90, type: !467)
!469 = !DILocation(line: 90, column: 29, scope: !464)
!470 = !DILocation(line: 92, column: 20, scope: !464)
!471 = !DILocation(line: 92, column: 5, scope: !464)
!472 = !DILocation(line: 93, column: 1, scope: !464)
!473 = distinct !DISubprogram(name: "printStructLine", scope: !14, file: !14, line: 95, type: !474, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !476}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !478, line: 100, baseType: !479)
!478 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_438/source_code")
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !478, line: 96, size: 64, elements: !480)
!480 = !{!481, !482}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !479, file: !478, line: 98, baseType: !6, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !479, file: !478, line: 99, baseType: !6, size: 32, offset: 32)
!483 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !473, file: !14, line: 95, type: !476)
!484 = !DILocation(line: 95, column: 40, scope: !473)
!485 = !DILocation(line: 97, column: 26, scope: !473)
!486 = !DILocation(line: 97, column: 47, scope: !473)
!487 = !DILocation(line: 97, column: 55, scope: !473)
!488 = !DILocation(line: 97, column: 76, scope: !473)
!489 = !DILocation(line: 97, column: 5, scope: !473)
!490 = !DILocation(line: 98, column: 1, scope: !473)
!491 = distinct !DISubprogram(name: "printBytesLine", scope: !14, file: !14, line: 100, type: !492, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !494, !75}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!495 = !DILocalVariable(name: "bytes", arg: 1, scope: !491, file: !14, line: 100, type: !494)
!496 = !DILocation(line: 100, column: 38, scope: !491)
!497 = !DILocalVariable(name: "numBytes", arg: 2, scope: !491, file: !14, line: 100, type: !75)
!498 = !DILocation(line: 100, column: 52, scope: !491)
!499 = !DILocalVariable(name: "i", scope: !491, file: !14, line: 102, type: !75)
!500 = !DILocation(line: 102, column: 12, scope: !491)
!501 = !DILocation(line: 103, column: 12, scope: !502)
!502 = distinct !DILexicalBlock(scope: !491, file: !14, line: 103, column: 5)
!503 = !DILocation(line: 103, column: 10, scope: !502)
!504 = !DILocation(line: 103, column: 17, scope: !505)
!505 = distinct !DILexicalBlock(scope: !502, file: !14, line: 103, column: 5)
!506 = !DILocation(line: 103, column: 21, scope: !505)
!507 = !DILocation(line: 103, column: 19, scope: !505)
!508 = !DILocation(line: 103, column: 5, scope: !502)
!509 = !DILocation(line: 105, column: 24, scope: !510)
!510 = distinct !DILexicalBlock(scope: !505, file: !14, line: 104, column: 5)
!511 = !DILocation(line: 105, column: 30, scope: !510)
!512 = !DILocation(line: 105, column: 9, scope: !510)
!513 = !DILocation(line: 106, column: 5, scope: !510)
!514 = !DILocation(line: 103, column: 31, scope: !505)
!515 = !DILocation(line: 103, column: 5, scope: !505)
!516 = distinct !{!516, !508, !517, !518}
!517 = !DILocation(line: 106, column: 5, scope: !502)
!518 = !{!"llvm.loop.mustprogress"}
!519 = !DILocation(line: 107, column: 5, scope: !491)
!520 = !DILocation(line: 108, column: 1, scope: !491)
!521 = distinct !DISubprogram(name: "decodeHexChars", scope: !14, file: !14, line: 113, type: !522, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!522 = !DISubroutineType(types: !523)
!523 = !{!75, !494, !75, !51}
!524 = !DILocalVariable(name: "bytes", arg: 1, scope: !521, file: !14, line: 113, type: !494)
!525 = !DILocation(line: 113, column: 39, scope: !521)
!526 = !DILocalVariable(name: "numBytes", arg: 2, scope: !521, file: !14, line: 113, type: !75)
!527 = !DILocation(line: 113, column: 53, scope: !521)
!528 = !DILocalVariable(name: "hex", arg: 3, scope: !521, file: !14, line: 113, type: !51)
!529 = !DILocation(line: 113, column: 71, scope: !521)
!530 = !DILocalVariable(name: "numWritten", scope: !521, file: !14, line: 115, type: !75)
!531 = !DILocation(line: 115, column: 12, scope: !521)
!532 = !DILocation(line: 121, column: 5, scope: !521)
!533 = !DILocation(line: 121, column: 12, scope: !521)
!534 = !DILocation(line: 121, column: 25, scope: !521)
!535 = !DILocation(line: 121, column: 23, scope: !521)
!536 = !DILocation(line: 121, column: 34, scope: !521)
!537 = !DILocation(line: 121, column: 37, scope: !521)
!538 = !DILocation(line: 121, column: 67, scope: !521)
!539 = !DILocation(line: 121, column: 70, scope: !521)
!540 = !DILocation(line: 0, scope: !521)
!541 = !DILocalVariable(name: "byte", scope: !542, file: !14, line: 123, type: !6)
!542 = distinct !DILexicalBlock(scope: !521, file: !14, line: 122, column: 5)
!543 = !DILocation(line: 123, column: 13, scope: !542)
!544 = !DILocation(line: 124, column: 17, scope: !542)
!545 = !DILocation(line: 124, column: 25, scope: !542)
!546 = !DILocation(line: 124, column: 23, scope: !542)
!547 = !DILocation(line: 124, column: 9, scope: !542)
!548 = !DILocation(line: 125, column: 45, scope: !542)
!549 = !DILocation(line: 125, column: 29, scope: !542)
!550 = !DILocation(line: 125, column: 9, scope: !542)
!551 = !DILocation(line: 125, column: 15, scope: !542)
!552 = !DILocation(line: 125, column: 27, scope: !542)
!553 = !DILocation(line: 126, column: 9, scope: !542)
!554 = distinct !{!554, !532, !555, !518}
!555 = !DILocation(line: 127, column: 5, scope: !521)
!556 = !DILocation(line: 129, column: 12, scope: !521)
!557 = !DILocation(line: 129, column: 5, scope: !521)
!558 = distinct !DISubprogram(name: "decodeHexWChars", scope: !14, file: !14, line: 135, type: !559, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!559 = !DISubroutineType(types: !560)
!560 = !{!75, !494, !75, !354}
!561 = !DILocalVariable(name: "bytes", arg: 1, scope: !558, file: !14, line: 135, type: !494)
!562 = !DILocation(line: 135, column: 41, scope: !558)
!563 = !DILocalVariable(name: "numBytes", arg: 2, scope: !558, file: !14, line: 135, type: !75)
!564 = !DILocation(line: 135, column: 55, scope: !558)
!565 = !DILocalVariable(name: "hex", arg: 3, scope: !558, file: !14, line: 135, type: !354)
!566 = !DILocation(line: 135, column: 76, scope: !558)
!567 = !DILocalVariable(name: "numWritten", scope: !558, file: !14, line: 137, type: !75)
!568 = !DILocation(line: 137, column: 12, scope: !558)
!569 = !DILocation(line: 143, column: 5, scope: !558)
!570 = !DILocation(line: 143, column: 12, scope: !558)
!571 = !DILocation(line: 143, column: 25, scope: !558)
!572 = !DILocation(line: 143, column: 23, scope: !558)
!573 = !DILocation(line: 143, column: 34, scope: !558)
!574 = !DILocation(line: 143, column: 47, scope: !558)
!575 = !DILocation(line: 143, column: 55, scope: !558)
!576 = !DILocation(line: 143, column: 53, scope: !558)
!577 = !DILocation(line: 143, column: 37, scope: !558)
!578 = !DILocation(line: 143, column: 68, scope: !558)
!579 = !DILocation(line: 143, column: 81, scope: !558)
!580 = !DILocation(line: 143, column: 89, scope: !558)
!581 = !DILocation(line: 143, column: 87, scope: !558)
!582 = !DILocation(line: 143, column: 100, scope: !558)
!583 = !DILocation(line: 143, column: 71, scope: !558)
!584 = !DILocation(line: 0, scope: !558)
!585 = !DILocalVariable(name: "byte", scope: !586, file: !14, line: 145, type: !6)
!586 = distinct !DILexicalBlock(scope: !558, file: !14, line: 144, column: 5)
!587 = !DILocation(line: 145, column: 13, scope: !586)
!588 = !DILocation(line: 146, column: 18, scope: !586)
!589 = !DILocation(line: 146, column: 26, scope: !586)
!590 = !DILocation(line: 146, column: 24, scope: !586)
!591 = !DILocation(line: 146, column: 9, scope: !586)
!592 = !DILocation(line: 147, column: 45, scope: !586)
!593 = !DILocation(line: 147, column: 29, scope: !586)
!594 = !DILocation(line: 147, column: 9, scope: !586)
!595 = !DILocation(line: 147, column: 15, scope: !586)
!596 = !DILocation(line: 147, column: 27, scope: !586)
!597 = !DILocation(line: 148, column: 9, scope: !586)
!598 = distinct !{!598, !569, !599, !518}
!599 = !DILocation(line: 149, column: 5, scope: !558)
!600 = !DILocation(line: 151, column: 12, scope: !558)
!601 = !DILocation(line: 151, column: 5, scope: !558)
!602 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !14, file: !14, line: 156, type: !603, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!603 = !DISubroutineType(types: !604)
!604 = !{!6}
!605 = !DILocation(line: 158, column: 5, scope: !602)
!606 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !14, file: !14, line: 161, type: !603, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!607 = !DILocation(line: 163, column: 5, scope: !606)
!608 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !14, file: !14, line: 166, type: !603, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!609 = !DILocation(line: 168, column: 13, scope: !608)
!610 = !DILocation(line: 168, column: 20, scope: !608)
!611 = !DILocation(line: 168, column: 5, scope: !608)
!612 = distinct !DISubprogram(name: "good1", scope: !14, file: !14, line: 187, type: !58, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!613 = !DILocation(line: 187, column: 16, scope: !612)
!614 = distinct !DISubprogram(name: "good2", scope: !14, file: !14, line: 188, type: !58, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!615 = !DILocation(line: 188, column: 16, scope: !614)
!616 = distinct !DISubprogram(name: "good3", scope: !14, file: !14, line: 189, type: !58, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!617 = !DILocation(line: 189, column: 16, scope: !616)
!618 = distinct !DISubprogram(name: "good4", scope: !14, file: !14, line: 190, type: !58, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!619 = !DILocation(line: 190, column: 16, scope: !618)
!620 = distinct !DISubprogram(name: "good5", scope: !14, file: !14, line: 191, type: !58, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!621 = !DILocation(line: 191, column: 16, scope: !620)
!622 = distinct !DISubprogram(name: "good6", scope: !14, file: !14, line: 192, type: !58, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!623 = !DILocation(line: 192, column: 16, scope: !622)
!624 = distinct !DISubprogram(name: "good7", scope: !14, file: !14, line: 193, type: !58, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!625 = !DILocation(line: 193, column: 16, scope: !624)
!626 = distinct !DISubprogram(name: "good8", scope: !14, file: !14, line: 194, type: !58, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!627 = !DILocation(line: 194, column: 16, scope: !626)
!628 = distinct !DISubprogram(name: "good9", scope: !14, file: !14, line: 195, type: !58, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!629 = !DILocation(line: 195, column: 16, scope: !628)
!630 = distinct !DISubprogram(name: "bad1", scope: !14, file: !14, line: 198, type: !58, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!631 = !DILocation(line: 198, column: 15, scope: !630)
!632 = distinct !DISubprogram(name: "bad2", scope: !14, file: !14, line: 199, type: !58, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!633 = !DILocation(line: 199, column: 15, scope: !632)
!634 = distinct !DISubprogram(name: "bad3", scope: !14, file: !14, line: 200, type: !58, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!635 = !DILocation(line: 200, column: 15, scope: !634)
!636 = distinct !DISubprogram(name: "bad4", scope: !14, file: !14, line: 201, type: !58, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!637 = !DILocation(line: 201, column: 15, scope: !636)
!638 = distinct !DISubprogram(name: "bad5", scope: !14, file: !14, line: 202, type: !58, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!639 = !DILocation(line: 202, column: 15, scope: !638)
!640 = distinct !DISubprogram(name: "bad6", scope: !14, file: !14, line: 203, type: !58, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!641 = !DILocation(line: 203, column: 15, scope: !640)
!642 = distinct !DISubprogram(name: "bad7", scope: !14, file: !14, line: 204, type: !58, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!643 = !DILocation(line: 204, column: 15, scope: !642)
!644 = distinct !DISubprogram(name: "bad8", scope: !14, file: !14, line: 205, type: !58, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!645 = !DILocation(line: 205, column: 15, scope: !644)
!646 = distinct !DISubprogram(name: "bad9", scope: !14, file: !14, line: 206, type: !58, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!647 = !DILocation(line: 206, column: 15, scope: !646)
