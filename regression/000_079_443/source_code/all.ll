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
@.str.7 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.9 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.10 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7.11 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_10_bad() #0 !dbg !52 {
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
  %1 = load i32, i32* @globalTrue, align 4, !dbg !64
  %tobool = icmp ne i32 %1, 0, !dbg !64
  br i1 %tobool, label %if.then, label %if.end20, !dbg !66

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !73
  %2 = load i8*, i8** %data, align 8, !dbg !74
  %call = call i64 @strlen(i8* %2) #7, !dbg !75
  store i64 %call, i64* %dataLen, align 8, !dbg !73
  %3 = load i64, i64* %dataLen, align 8, !dbg !76
  %sub = sub i64 100, %3, !dbg !78
  %cmp = icmp ugt i64 %sub, 1, !dbg !79
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !80

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !81
  %5 = load i64, i64* %dataLen, align 8, !dbg !84
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !85
  %6 = load i64, i64* %dataLen, align 8, !dbg !86
  %sub2 = sub i64 100, %6, !dbg !87
  %conv = trunc i64 %sub2 to i32, !dbg !88
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !89
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !90
  %cmp4 = icmp ne i8* %call3, null, !dbg !91
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !92

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !93
  %call7 = call i64 @strlen(i8* %8) #7, !dbg !95
  store i64 %call7, i64* %dataLen, align 8, !dbg !96
  %9 = load i64, i64* %dataLen, align 8, !dbg !97
  %cmp8 = icmp ugt i64 %9, 0, !dbg !99
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !100

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !101
  %11 = load i64, i64* %dataLen, align 8, !dbg !102
  %sub10 = sub i64 %11, 1, !dbg !103
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !101
  %12 = load i8, i8* %arrayidx, align 1, !dbg !101
  %conv11 = sext i8 %12 to i32, !dbg !101
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !104
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !105

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !106
  %14 = load i64, i64* %dataLen, align 8, !dbg !108
  %sub15 = sub i64 %14, 1, !dbg !109
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !106
  store i8 0, i8* %arrayidx16, align 1, !dbg !110
  br label %if.end, !dbg !111

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !112

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !113
  %15 = load i8*, i8** %data, align 8, !dbg !115
  %16 = load i64, i64* %dataLen, align 8, !dbg !116
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !115
  store i8 0, i8* %arrayidx17, align 1, !dbg !117
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !118

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !119

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @globalTrue, align 4, !dbg !120
  %tobool21 = icmp ne i32 %17, 0, !dbg !120
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !122

if.then22:                                        ; preds = %if.end20
  %18 = load i8*, i8** %data, align 8, !dbg !123
  %call23 = call i32 (i8*, ...) @printf(i8* %18), !dbg !125
  br label %if.end24, !dbg !126

if.end24:                                         ; preds = %if.then22, %if.end20
  ret void, !dbg !127
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
define dso_local void @goodB2G1() #0 !dbg !128 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !131, metadata !DIExpression()), !dbg !132
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !132
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !132
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !133
  store i8* %arraydecay, i8** %data, align 8, !dbg !134
  %1 = load i32, i32* @globalTrue, align 4, !dbg !135
  %tobool = icmp ne i32 %1, 0, !dbg !135
  br i1 %tobool, label %if.then, label %if.end20, !dbg !137

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !138, metadata !DIExpression()), !dbg !141
  %2 = load i8*, i8** %data, align 8, !dbg !142
  %call = call i64 @strlen(i8* %2) #7, !dbg !143
  store i64 %call, i64* %dataLen, align 8, !dbg !141
  %3 = load i64, i64* %dataLen, align 8, !dbg !144
  %sub = sub i64 100, %3, !dbg !146
  %cmp = icmp ugt i64 %sub, 1, !dbg !147
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !148

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !149
  %5 = load i64, i64* %dataLen, align 8, !dbg !152
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !153
  %6 = load i64, i64* %dataLen, align 8, !dbg !154
  %sub2 = sub i64 100, %6, !dbg !155
  %conv = trunc i64 %sub2 to i32, !dbg !156
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !157
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !158
  %cmp4 = icmp ne i8* %call3, null, !dbg !159
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !160

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !161
  %call7 = call i64 @strlen(i8* %8) #7, !dbg !163
  store i64 %call7, i64* %dataLen, align 8, !dbg !164
  %9 = load i64, i64* %dataLen, align 8, !dbg !165
  %cmp8 = icmp ugt i64 %9, 0, !dbg !167
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !168

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !169
  %11 = load i64, i64* %dataLen, align 8, !dbg !170
  %sub10 = sub i64 %11, 1, !dbg !171
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !169
  %12 = load i8, i8* %arrayidx, align 1, !dbg !169
  %conv11 = sext i8 %12 to i32, !dbg !169
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !172
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !173

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !174
  %14 = load i64, i64* %dataLen, align 8, !dbg !176
  %sub15 = sub i64 %14, 1, !dbg !177
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !174
  store i8 0, i8* %arrayidx16, align 1, !dbg !178
  br label %if.end, !dbg !179

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !180

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !181
  %15 = load i8*, i8** %data, align 8, !dbg !183
  %16 = load i64, i64* %dataLen, align 8, !dbg !184
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !183
  store i8 0, i8* %arrayidx17, align 1, !dbg !185
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !186

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !187

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @globalFalse, align 4, !dbg !188
  %tobool21 = icmp ne i32 %17, 0, !dbg !188
  br i1 %tobool21, label %if.then22, label %if.else23, !dbg !190

if.then22:                                        ; preds = %if.end20
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !191
  br label %if.end25, !dbg !193

if.else23:                                        ; preds = %if.end20
  %18 = load i8*, i8** %data, align 8, !dbg !194
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %18), !dbg !196
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then22
  ret void, !dbg !197
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !198 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !199, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !201, metadata !DIExpression()), !dbg !202
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !202
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !202
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !203
  store i8* %arraydecay, i8** %data, align 8, !dbg !204
  %1 = load i32, i32* @globalTrue, align 4, !dbg !205
  %tobool = icmp ne i32 %1, 0, !dbg !205
  br i1 %tobool, label %if.then, label %if.end20, !dbg !207

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !208, metadata !DIExpression()), !dbg !211
  %2 = load i8*, i8** %data, align 8, !dbg !212
  %call = call i64 @strlen(i8* %2) #7, !dbg !213
  store i64 %call, i64* %dataLen, align 8, !dbg !211
  %3 = load i64, i64* %dataLen, align 8, !dbg !214
  %sub = sub i64 100, %3, !dbg !216
  %cmp = icmp ugt i64 %sub, 1, !dbg !217
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !218

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !219
  %5 = load i64, i64* %dataLen, align 8, !dbg !222
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !223
  %6 = load i64, i64* %dataLen, align 8, !dbg !224
  %sub2 = sub i64 100, %6, !dbg !225
  %conv = trunc i64 %sub2 to i32, !dbg !226
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !227
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !228
  %cmp4 = icmp ne i8* %call3, null, !dbg !229
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !230

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !231
  %call7 = call i64 @strlen(i8* %8) #7, !dbg !233
  store i64 %call7, i64* %dataLen, align 8, !dbg !234
  %9 = load i64, i64* %dataLen, align 8, !dbg !235
  %cmp8 = icmp ugt i64 %9, 0, !dbg !237
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !238

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !239
  %11 = load i64, i64* %dataLen, align 8, !dbg !240
  %sub10 = sub i64 %11, 1, !dbg !241
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !239
  %12 = load i8, i8* %arrayidx, align 1, !dbg !239
  %conv11 = sext i8 %12 to i32, !dbg !239
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !242
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !243

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !244
  %14 = load i64, i64* %dataLen, align 8, !dbg !246
  %sub15 = sub i64 %14, 1, !dbg !247
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !244
  store i8 0, i8* %arrayidx16, align 1, !dbg !248
  br label %if.end, !dbg !249

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !250

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !251
  %15 = load i8*, i8** %data, align 8, !dbg !253
  %16 = load i64, i64* %dataLen, align 8, !dbg !254
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !253
  store i8 0, i8* %arrayidx17, align 1, !dbg !255
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !256

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !257

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @globalTrue, align 4, !dbg !258
  %tobool21 = icmp ne i32 %17, 0, !dbg !258
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !260

if.then22:                                        ; preds = %if.end20
  %18 = load i8*, i8** %data, align 8, !dbg !261
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %18), !dbg !263
  br label %if.end24, !dbg !264

if.end24:                                         ; preds = %if.then22, %if.end20
  ret void, !dbg !265
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !266 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !267, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !269, metadata !DIExpression()), !dbg !270
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !270
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !270
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !271
  store i8* %arraydecay, i8** %data, align 8, !dbg !272
  %1 = load i32, i32* @globalFalse, align 4, !dbg !273
  %tobool = icmp ne i32 %1, 0, !dbg !273
  br i1 %tobool, label %if.then, label %if.else, !dbg !275

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !276
  br label %if.end, !dbg !278

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !279
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !281
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @globalTrue, align 4, !dbg !282
  %tobool1 = icmp ne i32 %3, 0, !dbg !282
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !284

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !285
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !287
  br label %if.end4, !dbg !288

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !289
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !290 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !293, metadata !DIExpression()), !dbg !294
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !294
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !294
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !295
  store i8* %arraydecay, i8** %data, align 8, !dbg !296
  %1 = load i32, i32* @globalTrue, align 4, !dbg !297
  %tobool = icmp ne i32 %1, 0, !dbg !297
  br i1 %tobool, label %if.then, label %if.end, !dbg !299

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !300
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !302
  br label %if.end, !dbg !303

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @globalTrue, align 4, !dbg !304
  %tobool1 = icmp ne i32 %3, 0, !dbg !304
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !306

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !307
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !309
  br label %if.end4, !dbg !310

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !311
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_10_good() #0 !dbg !312 {
entry:
  call void @goodB2G1(), !dbg !313
  call void @goodB2G2(), !dbg !314
  call void @goodG2B1(), !dbg !315
  call void @goodG2B2(), !dbg !316
  ret void, !dbg !317
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !318 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !321, metadata !DIExpression()), !dbg !322
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)), !dbg !323
  %0 = load i8*, i8** %line.addr, align 8, !dbg !324
  %cmp = icmp ne i8* %0, null, !dbg !326
  br i1 %cmp, label %if.then, label %if.end, !dbg !327

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !328
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.8, i64 0, i64 0), i8* %1), !dbg !330
  br label %if.end, !dbg !331

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.9, i64 0, i64 0)), !dbg !332
  ret void, !dbg !333
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !334 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !335, metadata !DIExpression()), !dbg !336
  %0 = load i8*, i8** %line.addr, align 8, !dbg !337
  %cmp = icmp ne i8* %0, null, !dbg !339
  br i1 %cmp, label %if.then, label %if.end, !dbg !340

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !341
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.8, i64 0, i64 0), i8* %1), !dbg !343
  br label %if.end, !dbg !344

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !345
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !346 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !351, metadata !DIExpression()), !dbg !352
  %0 = load i32*, i32** %line.addr, align 8, !dbg !353
  %cmp = icmp ne i32* %0, null, !dbg !355
  br i1 %cmp, label %if.then, label %if.end, !dbg !356

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !357
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.10, i64 0, i64 0), i32* %1), !dbg !359
  br label %if.end, !dbg !360

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !361
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !362 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !365, metadata !DIExpression()), !dbg !366
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !367
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !368
  ret void, !dbg !369
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !370 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !374, metadata !DIExpression()), !dbg !375
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !376
  %conv = sext i16 %0 to i32, !dbg !376
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !377
  ret void, !dbg !378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !379 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !385
  %conv = fpext float %0 to double, !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !386
  ret void, !dbg !387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !388 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !392, metadata !DIExpression()), !dbg !393
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !394
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.11, i64 0, i64 0), i64 %0), !dbg !395
  ret void, !dbg !396
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !397 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !404, metadata !DIExpression()), !dbg !405
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !406
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.11, i64 0, i64 0), i64 %0), !dbg !407
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !409 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !412, metadata !DIExpression()), !dbg !413
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !414
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !415
  ret void, !dbg !416
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !417 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !420, metadata !DIExpression()), !dbg !421
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !422
  %conv = sext i8 %0 to i32, !dbg !422
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !423
  ret void, !dbg !424
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !425 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !428, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !430, metadata !DIExpression()), !dbg !434
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !435
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !436
  store i32 %0, i32* %arrayidx, align 4, !dbg !437
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !438
  store i32 0, i32* %arrayidx1, align 4, !dbg !439
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !440
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !441
  ret void, !dbg !442
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !443 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !446, metadata !DIExpression()), !dbg !447
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !448
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !449
  ret void, !dbg !450
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !451 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !454, metadata !DIExpression()), !dbg !455
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !456
  %conv = zext i8 %0 to i32, !dbg !456
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !457
  ret void, !dbg !458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !459 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !463, metadata !DIExpression()), !dbg !464
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !465
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !466
  ret void, !dbg !467
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !468 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !478, metadata !DIExpression()), !dbg !479
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !480
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !481
  %1 = load i32, i32* %intOne, align 4, !dbg !481
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !482
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !483
  %3 = load i32, i32* %intTwo, align 4, !dbg !483
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !484
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !486 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !490, metadata !DIExpression()), !dbg !491
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !492, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata i64* %i, metadata !494, metadata !DIExpression()), !dbg !495
  store i64 0, i64* %i, align 8, !dbg !496
  br label %for.cond, !dbg !498

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !499
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !501
  %cmp = icmp ult i64 %0, %1, !dbg !502
  br i1 %cmp, label %for.body, label %for.end, !dbg !503

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !504
  %3 = load i64, i64* %i, align 8, !dbg !506
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !504
  %4 = load i8, i8* %arrayidx, align 1, !dbg !504
  %conv = zext i8 %4 to i32, !dbg !504
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !507
  br label %for.inc, !dbg !508

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !509
  %inc = add i64 %5, 1, !dbg !509
  store i64 %inc, i64* %i, align 8, !dbg !509
  br label %for.cond, !dbg !510, !llvm.loop !511

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !514
  ret void, !dbg !515
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !516 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !519, metadata !DIExpression()), !dbg !520
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !521, metadata !DIExpression()), !dbg !522
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !523, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !525, metadata !DIExpression()), !dbg !526
  store i64 0, i64* %numWritten, align 8, !dbg !526
  br label %while.cond, !dbg !527

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !528
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !529
  %cmp = icmp ult i64 %0, %1, !dbg !530
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !531

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !532
  %2 = load i16*, i16** %call, align 8, !dbg !532
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !532
  %4 = load i64, i64* %numWritten, align 8, !dbg !532
  %mul = mul i64 2, %4, !dbg !532
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !532
  %5 = load i8, i8* %arrayidx, align 1, !dbg !532
  %conv = sext i8 %5 to i32, !dbg !532
  %idxprom = sext i32 %conv to i64, !dbg !532
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !532
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !532
  %conv2 = zext i16 %6 to i32, !dbg !532
  %and = and i32 %conv2, 4096, !dbg !532
  %tobool = icmp ne i32 %and, 0, !dbg !532
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !533

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !534
  %7 = load i16*, i16** %call3, align 8, !dbg !534
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !534
  %9 = load i64, i64* %numWritten, align 8, !dbg !534
  %mul4 = mul i64 2, %9, !dbg !534
  %add = add i64 %mul4, 1, !dbg !534
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !534
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !534
  %conv6 = sext i8 %10 to i32, !dbg !534
  %idxprom7 = sext i32 %conv6 to i64, !dbg !534
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !534
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !534
  %conv9 = zext i16 %11 to i32, !dbg !534
  %and10 = and i32 %conv9, 4096, !dbg !534
  %tobool11 = icmp ne i32 %and10, 0, !dbg !533
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !535
  br i1 %12, label %while.body, label %while.end, !dbg !527

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !536, metadata !DIExpression()), !dbg !538
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !539
  %14 = load i64, i64* %numWritten, align 8, !dbg !540
  %mul12 = mul i64 2, %14, !dbg !541
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !539
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !542
  %15 = load i32, i32* %byte, align 4, !dbg !543
  %conv15 = trunc i32 %15 to i8, !dbg !544
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !545
  %17 = load i64, i64* %numWritten, align 8, !dbg !546
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !545
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !547
  %18 = load i64, i64* %numWritten, align 8, !dbg !548
  %inc = add i64 %18, 1, !dbg !548
  store i64 %inc, i64* %numWritten, align 8, !dbg !548
  br label %while.cond, !dbg !527, !llvm.loop !549

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !551
  ret i64 %19, !dbg !552
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !553 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !556, metadata !DIExpression()), !dbg !557
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !558, metadata !DIExpression()), !dbg !559
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !560, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !562, metadata !DIExpression()), !dbg !563
  store i64 0, i64* %numWritten, align 8, !dbg !563
  br label %while.cond, !dbg !564

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !565
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !566
  %cmp = icmp ult i64 %0, %1, !dbg !567
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !568

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !569
  %3 = load i64, i64* %numWritten, align 8, !dbg !570
  %mul = mul i64 2, %3, !dbg !571
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !569
  %4 = load i32, i32* %arrayidx, align 4, !dbg !569
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !572
  %tobool = icmp ne i32 %call, 0, !dbg !572
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !573

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !574
  %6 = load i64, i64* %numWritten, align 8, !dbg !575
  %mul1 = mul i64 2, %6, !dbg !576
  %add = add i64 %mul1, 1, !dbg !577
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !574
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !574
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !578
  %tobool4 = icmp ne i32 %call3, 0, !dbg !573
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !579
  br i1 %8, label %while.body, label %while.end, !dbg !564

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !580, metadata !DIExpression()), !dbg !582
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !583
  %10 = load i64, i64* %numWritten, align 8, !dbg !584
  %mul5 = mul i64 2, %10, !dbg !585
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !583
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !586
  %11 = load i32, i32* %byte, align 4, !dbg !587
  %conv = trunc i32 %11 to i8, !dbg !588
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !589
  %13 = load i64, i64* %numWritten, align 8, !dbg !590
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !589
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !591
  %14 = load i64, i64* %numWritten, align 8, !dbg !592
  %inc = add i64 %14, 1, !dbg !592
  store i64 %inc, i64* %numWritten, align 8, !dbg !592
  br label %while.cond, !dbg !564, !llvm.loop !593

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !595
  ret i64 %15, !dbg !596
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !597 {
entry:
  ret i32 1, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !601 {
entry:
  ret i32 0, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !603 {
entry:
  %call = call i32 @rand() #8, !dbg !604
  %rem = srem i32 %call, 2, !dbg !605
  ret i32 %rem, !dbg !606
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !607 {
entry:
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !609 {
entry:
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !611 {
entry:
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !613 {
entry:
  ret void, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !615 {
entry:
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !617 {
entry:
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !619 {
entry:
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !621 {
entry:
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !623 {
entry:
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !625 {
entry:
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !627 {
entry:
  ret void, !dbg !628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !629 {
entry:
  ret void, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !631 {
entry:
  ret void, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !633 {
entry:
  ret void, !dbg !634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !635 {
entry:
  ret void, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !637 {
entry:
  ret void, !dbg !638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !639 {
entry:
  ret void, !dbg !640
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !641 {
entry:
  ret void, !dbg !642
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_443/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_10.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_443/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_10_bad", scope: !45, file: !45, line: 27, type: !53, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!66 = !DILocation(line: 32, column: 8, scope: !52)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !45, line: 36, type: !70)
!68 = distinct !DILexicalBlock(scope: !69, file: !45, line: 34, column: 9)
!69 = distinct !DILexicalBlock(scope: !65, file: !45, line: 33, column: 5)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DILocation(line: 36, column: 20, scope: !68)
!74 = !DILocation(line: 36, column: 37, scope: !68)
!75 = !DILocation(line: 36, column: 30, scope: !68)
!76 = !DILocation(line: 38, column: 21, scope: !77)
!77 = distinct !DILexicalBlock(scope: !68, file: !45, line: 38, column: 17)
!78 = !DILocation(line: 38, column: 20, scope: !77)
!79 = !DILocation(line: 38, column: 29, scope: !77)
!80 = !DILocation(line: 38, column: 17, scope: !68)
!81 = !DILocation(line: 41, column: 27, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !45, line: 41, column: 21)
!83 = distinct !DILexicalBlock(scope: !77, file: !45, line: 39, column: 13)
!84 = !DILocation(line: 41, column: 32, scope: !82)
!85 = !DILocation(line: 41, column: 31, scope: !82)
!86 = !DILocation(line: 41, column: 51, scope: !82)
!87 = !DILocation(line: 41, column: 50, scope: !82)
!88 = !DILocation(line: 41, column: 41, scope: !82)
!89 = !DILocation(line: 41, column: 61, scope: !82)
!90 = !DILocation(line: 41, column: 21, scope: !82)
!91 = !DILocation(line: 41, column: 68, scope: !82)
!92 = !DILocation(line: 41, column: 21, scope: !83)
!93 = !DILocation(line: 45, column: 38, scope: !94)
!94 = distinct !DILexicalBlock(scope: !82, file: !45, line: 42, column: 17)
!95 = !DILocation(line: 45, column: 31, scope: !94)
!96 = !DILocation(line: 45, column: 29, scope: !94)
!97 = !DILocation(line: 46, column: 25, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !45, line: 46, column: 25)
!99 = !DILocation(line: 46, column: 33, scope: !98)
!100 = !DILocation(line: 46, column: 37, scope: !98)
!101 = !DILocation(line: 46, column: 40, scope: !98)
!102 = !DILocation(line: 46, column: 45, scope: !98)
!103 = !DILocation(line: 46, column: 52, scope: !98)
!104 = !DILocation(line: 46, column: 56, scope: !98)
!105 = !DILocation(line: 46, column: 25, scope: !94)
!106 = !DILocation(line: 48, column: 25, scope: !107)
!107 = distinct !DILexicalBlock(scope: !98, file: !45, line: 47, column: 21)
!108 = !DILocation(line: 48, column: 30, scope: !107)
!109 = !DILocation(line: 48, column: 37, scope: !107)
!110 = !DILocation(line: 48, column: 41, scope: !107)
!111 = !DILocation(line: 49, column: 21, scope: !107)
!112 = !DILocation(line: 50, column: 17, scope: !94)
!113 = !DILocation(line: 53, column: 21, scope: !114)
!114 = distinct !DILexicalBlock(scope: !82, file: !45, line: 52, column: 17)
!115 = !DILocation(line: 55, column: 21, scope: !114)
!116 = !DILocation(line: 55, column: 26, scope: !114)
!117 = !DILocation(line: 55, column: 35, scope: !114)
!118 = !DILocation(line: 57, column: 13, scope: !83)
!119 = !DILocation(line: 59, column: 5, scope: !69)
!120 = !DILocation(line: 60, column: 8, scope: !121)
!121 = distinct !DILexicalBlock(scope: !52, file: !45, line: 60, column: 8)
!122 = !DILocation(line: 60, column: 8, scope: !52)
!123 = !DILocation(line: 63, column: 16, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !45, line: 61, column: 5)
!125 = !DILocation(line: 63, column: 9, scope: !124)
!126 = !DILocation(line: 64, column: 5, scope: !124)
!127 = !DILocation(line: 65, column: 1, scope: !52)
!128 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 72, type: !53, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!129 = !DILocalVariable(name: "data", scope: !128, file: !45, line: 74, type: !42)
!130 = !DILocation(line: 74, column: 12, scope: !128)
!131 = !DILocalVariable(name: "dataBuffer", scope: !128, file: !45, line: 75, type: !58)
!132 = !DILocation(line: 75, column: 10, scope: !128)
!133 = !DILocation(line: 76, column: 12, scope: !128)
!134 = !DILocation(line: 76, column: 10, scope: !128)
!135 = !DILocation(line: 77, column: 8, scope: !136)
!136 = distinct !DILexicalBlock(scope: !128, file: !45, line: 77, column: 8)
!137 = !DILocation(line: 77, column: 8, scope: !128)
!138 = !DILocalVariable(name: "dataLen", scope: !139, file: !45, line: 81, type: !70)
!139 = distinct !DILexicalBlock(scope: !140, file: !45, line: 79, column: 9)
!140 = distinct !DILexicalBlock(scope: !136, file: !45, line: 78, column: 5)
!141 = !DILocation(line: 81, column: 20, scope: !139)
!142 = !DILocation(line: 81, column: 37, scope: !139)
!143 = !DILocation(line: 81, column: 30, scope: !139)
!144 = !DILocation(line: 83, column: 21, scope: !145)
!145 = distinct !DILexicalBlock(scope: !139, file: !45, line: 83, column: 17)
!146 = !DILocation(line: 83, column: 20, scope: !145)
!147 = !DILocation(line: 83, column: 29, scope: !145)
!148 = !DILocation(line: 83, column: 17, scope: !139)
!149 = !DILocation(line: 86, column: 27, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !45, line: 86, column: 21)
!151 = distinct !DILexicalBlock(scope: !145, file: !45, line: 84, column: 13)
!152 = !DILocation(line: 86, column: 32, scope: !150)
!153 = !DILocation(line: 86, column: 31, scope: !150)
!154 = !DILocation(line: 86, column: 51, scope: !150)
!155 = !DILocation(line: 86, column: 50, scope: !150)
!156 = !DILocation(line: 86, column: 41, scope: !150)
!157 = !DILocation(line: 86, column: 61, scope: !150)
!158 = !DILocation(line: 86, column: 21, scope: !150)
!159 = !DILocation(line: 86, column: 68, scope: !150)
!160 = !DILocation(line: 86, column: 21, scope: !151)
!161 = !DILocation(line: 90, column: 38, scope: !162)
!162 = distinct !DILexicalBlock(scope: !150, file: !45, line: 87, column: 17)
!163 = !DILocation(line: 90, column: 31, scope: !162)
!164 = !DILocation(line: 90, column: 29, scope: !162)
!165 = !DILocation(line: 91, column: 25, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !45, line: 91, column: 25)
!167 = !DILocation(line: 91, column: 33, scope: !166)
!168 = !DILocation(line: 91, column: 37, scope: !166)
!169 = !DILocation(line: 91, column: 40, scope: !166)
!170 = !DILocation(line: 91, column: 45, scope: !166)
!171 = !DILocation(line: 91, column: 52, scope: !166)
!172 = !DILocation(line: 91, column: 56, scope: !166)
!173 = !DILocation(line: 91, column: 25, scope: !162)
!174 = !DILocation(line: 93, column: 25, scope: !175)
!175 = distinct !DILexicalBlock(scope: !166, file: !45, line: 92, column: 21)
!176 = !DILocation(line: 93, column: 30, scope: !175)
!177 = !DILocation(line: 93, column: 37, scope: !175)
!178 = !DILocation(line: 93, column: 41, scope: !175)
!179 = !DILocation(line: 94, column: 21, scope: !175)
!180 = !DILocation(line: 95, column: 17, scope: !162)
!181 = !DILocation(line: 98, column: 21, scope: !182)
!182 = distinct !DILexicalBlock(scope: !150, file: !45, line: 97, column: 17)
!183 = !DILocation(line: 100, column: 21, scope: !182)
!184 = !DILocation(line: 100, column: 26, scope: !182)
!185 = !DILocation(line: 100, column: 35, scope: !182)
!186 = !DILocation(line: 102, column: 13, scope: !151)
!187 = !DILocation(line: 104, column: 5, scope: !140)
!188 = !DILocation(line: 105, column: 8, scope: !189)
!189 = distinct !DILexicalBlock(scope: !128, file: !45, line: 105, column: 8)
!190 = !DILocation(line: 105, column: 8, scope: !128)
!191 = !DILocation(line: 108, column: 9, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !45, line: 106, column: 5)
!193 = !DILocation(line: 109, column: 5, scope: !192)
!194 = !DILocation(line: 113, column: 24, scope: !195)
!195 = distinct !DILexicalBlock(scope: !189, file: !45, line: 111, column: 5)
!196 = !DILocation(line: 113, column: 9, scope: !195)
!197 = !DILocation(line: 115, column: 1, scope: !128)
!198 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 118, type: !53, scopeLine: 119, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!199 = !DILocalVariable(name: "data", scope: !198, file: !45, line: 120, type: !42)
!200 = !DILocation(line: 120, column: 12, scope: !198)
!201 = !DILocalVariable(name: "dataBuffer", scope: !198, file: !45, line: 121, type: !58)
!202 = !DILocation(line: 121, column: 10, scope: !198)
!203 = !DILocation(line: 122, column: 12, scope: !198)
!204 = !DILocation(line: 122, column: 10, scope: !198)
!205 = !DILocation(line: 123, column: 8, scope: !206)
!206 = distinct !DILexicalBlock(scope: !198, file: !45, line: 123, column: 8)
!207 = !DILocation(line: 123, column: 8, scope: !198)
!208 = !DILocalVariable(name: "dataLen", scope: !209, file: !45, line: 127, type: !70)
!209 = distinct !DILexicalBlock(scope: !210, file: !45, line: 125, column: 9)
!210 = distinct !DILexicalBlock(scope: !206, file: !45, line: 124, column: 5)
!211 = !DILocation(line: 127, column: 20, scope: !209)
!212 = !DILocation(line: 127, column: 37, scope: !209)
!213 = !DILocation(line: 127, column: 30, scope: !209)
!214 = !DILocation(line: 129, column: 21, scope: !215)
!215 = distinct !DILexicalBlock(scope: !209, file: !45, line: 129, column: 17)
!216 = !DILocation(line: 129, column: 20, scope: !215)
!217 = !DILocation(line: 129, column: 29, scope: !215)
!218 = !DILocation(line: 129, column: 17, scope: !209)
!219 = !DILocation(line: 132, column: 27, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !45, line: 132, column: 21)
!221 = distinct !DILexicalBlock(scope: !215, file: !45, line: 130, column: 13)
!222 = !DILocation(line: 132, column: 32, scope: !220)
!223 = !DILocation(line: 132, column: 31, scope: !220)
!224 = !DILocation(line: 132, column: 51, scope: !220)
!225 = !DILocation(line: 132, column: 50, scope: !220)
!226 = !DILocation(line: 132, column: 41, scope: !220)
!227 = !DILocation(line: 132, column: 61, scope: !220)
!228 = !DILocation(line: 132, column: 21, scope: !220)
!229 = !DILocation(line: 132, column: 68, scope: !220)
!230 = !DILocation(line: 132, column: 21, scope: !221)
!231 = !DILocation(line: 136, column: 38, scope: !232)
!232 = distinct !DILexicalBlock(scope: !220, file: !45, line: 133, column: 17)
!233 = !DILocation(line: 136, column: 31, scope: !232)
!234 = !DILocation(line: 136, column: 29, scope: !232)
!235 = !DILocation(line: 137, column: 25, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !45, line: 137, column: 25)
!237 = !DILocation(line: 137, column: 33, scope: !236)
!238 = !DILocation(line: 137, column: 37, scope: !236)
!239 = !DILocation(line: 137, column: 40, scope: !236)
!240 = !DILocation(line: 137, column: 45, scope: !236)
!241 = !DILocation(line: 137, column: 52, scope: !236)
!242 = !DILocation(line: 137, column: 56, scope: !236)
!243 = !DILocation(line: 137, column: 25, scope: !232)
!244 = !DILocation(line: 139, column: 25, scope: !245)
!245 = distinct !DILexicalBlock(scope: !236, file: !45, line: 138, column: 21)
!246 = !DILocation(line: 139, column: 30, scope: !245)
!247 = !DILocation(line: 139, column: 37, scope: !245)
!248 = !DILocation(line: 139, column: 41, scope: !245)
!249 = !DILocation(line: 140, column: 21, scope: !245)
!250 = !DILocation(line: 141, column: 17, scope: !232)
!251 = !DILocation(line: 144, column: 21, scope: !252)
!252 = distinct !DILexicalBlock(scope: !220, file: !45, line: 143, column: 17)
!253 = !DILocation(line: 146, column: 21, scope: !252)
!254 = !DILocation(line: 146, column: 26, scope: !252)
!255 = !DILocation(line: 146, column: 35, scope: !252)
!256 = !DILocation(line: 148, column: 13, scope: !221)
!257 = !DILocation(line: 150, column: 5, scope: !210)
!258 = !DILocation(line: 151, column: 8, scope: !259)
!259 = distinct !DILexicalBlock(scope: !198, file: !45, line: 151, column: 8)
!260 = !DILocation(line: 151, column: 8, scope: !198)
!261 = !DILocation(line: 154, column: 24, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !45, line: 152, column: 5)
!263 = !DILocation(line: 154, column: 9, scope: !262)
!264 = !DILocation(line: 155, column: 5, scope: !262)
!265 = !DILocation(line: 156, column: 1, scope: !198)
!266 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 159, type: !53, scopeLine: 160, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!267 = !DILocalVariable(name: "data", scope: !266, file: !45, line: 161, type: !42)
!268 = !DILocation(line: 161, column: 12, scope: !266)
!269 = !DILocalVariable(name: "dataBuffer", scope: !266, file: !45, line: 162, type: !58)
!270 = !DILocation(line: 162, column: 10, scope: !266)
!271 = !DILocation(line: 163, column: 12, scope: !266)
!272 = !DILocation(line: 163, column: 10, scope: !266)
!273 = !DILocation(line: 164, column: 8, scope: !274)
!274 = distinct !DILexicalBlock(scope: !266, file: !45, line: 164, column: 8)
!275 = !DILocation(line: 164, column: 8, scope: !266)
!276 = !DILocation(line: 167, column: 9, scope: !277)
!277 = distinct !DILexicalBlock(scope: !274, file: !45, line: 165, column: 5)
!278 = !DILocation(line: 168, column: 5, scope: !277)
!279 = !DILocation(line: 172, column: 16, scope: !280)
!280 = distinct !DILexicalBlock(scope: !274, file: !45, line: 170, column: 5)
!281 = !DILocation(line: 172, column: 9, scope: !280)
!282 = !DILocation(line: 174, column: 8, scope: !283)
!283 = distinct !DILexicalBlock(scope: !266, file: !45, line: 174, column: 8)
!284 = !DILocation(line: 174, column: 8, scope: !266)
!285 = !DILocation(line: 177, column: 16, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !45, line: 175, column: 5)
!287 = !DILocation(line: 177, column: 9, scope: !286)
!288 = !DILocation(line: 178, column: 5, scope: !286)
!289 = !DILocation(line: 179, column: 1, scope: !266)
!290 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 182, type: !53, scopeLine: 183, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!291 = !DILocalVariable(name: "data", scope: !290, file: !45, line: 184, type: !42)
!292 = !DILocation(line: 184, column: 12, scope: !290)
!293 = !DILocalVariable(name: "dataBuffer", scope: !290, file: !45, line: 185, type: !58)
!294 = !DILocation(line: 185, column: 10, scope: !290)
!295 = !DILocation(line: 186, column: 12, scope: !290)
!296 = !DILocation(line: 186, column: 10, scope: !290)
!297 = !DILocation(line: 187, column: 8, scope: !298)
!298 = distinct !DILexicalBlock(scope: !290, file: !45, line: 187, column: 8)
!299 = !DILocation(line: 187, column: 8, scope: !290)
!300 = !DILocation(line: 190, column: 16, scope: !301)
!301 = distinct !DILexicalBlock(scope: !298, file: !45, line: 188, column: 5)
!302 = !DILocation(line: 190, column: 9, scope: !301)
!303 = !DILocation(line: 191, column: 5, scope: !301)
!304 = !DILocation(line: 192, column: 8, scope: !305)
!305 = distinct !DILexicalBlock(scope: !290, file: !45, line: 192, column: 8)
!306 = !DILocation(line: 192, column: 8, scope: !290)
!307 = !DILocation(line: 195, column: 16, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !45, line: 193, column: 5)
!309 = !DILocation(line: 195, column: 9, scope: !308)
!310 = !DILocation(line: 196, column: 5, scope: !308)
!311 = !DILocation(line: 197, column: 1, scope: !290)
!312 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_10_good", scope: !45, file: !45, line: 199, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!313 = !DILocation(line: 201, column: 5, scope: !312)
!314 = !DILocation(line: 202, column: 5, scope: !312)
!315 = !DILocation(line: 203, column: 5, scope: !312)
!316 = !DILocation(line: 204, column: 5, scope: !312)
!317 = !DILocation(line: 205, column: 1, scope: !312)
!318 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !319, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !42}
!321 = !DILocalVariable(name: "line", arg: 1, scope: !318, file: !3, line: 11, type: !42)
!322 = !DILocation(line: 11, column: 25, scope: !318)
!323 = !DILocation(line: 13, column: 1, scope: !318)
!324 = !DILocation(line: 14, column: 8, scope: !325)
!325 = distinct !DILexicalBlock(scope: !318, file: !3, line: 14, column: 8)
!326 = !DILocation(line: 14, column: 13, scope: !325)
!327 = !DILocation(line: 14, column: 8, scope: !318)
!328 = !DILocation(line: 16, column: 24, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !3, line: 15, column: 5)
!330 = !DILocation(line: 16, column: 9, scope: !329)
!331 = !DILocation(line: 17, column: 5, scope: !329)
!332 = !DILocation(line: 18, column: 5, scope: !318)
!333 = !DILocation(line: 19, column: 1, scope: !318)
!334 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !319, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!335 = !DILocalVariable(name: "line", arg: 1, scope: !334, file: !3, line: 20, type: !42)
!336 = !DILocation(line: 20, column: 29, scope: !334)
!337 = !DILocation(line: 22, column: 8, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !3, line: 22, column: 8)
!339 = !DILocation(line: 22, column: 13, scope: !338)
!340 = !DILocation(line: 22, column: 8, scope: !334)
!341 = !DILocation(line: 24, column: 24, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !3, line: 23, column: 5)
!343 = !DILocation(line: 24, column: 9, scope: !342)
!344 = !DILocation(line: 25, column: 5, scope: !342)
!345 = !DILocation(line: 26, column: 1, scope: !334)
!346 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !347, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !349}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !71, line: 74, baseType: !23)
!351 = !DILocalVariable(name: "line", arg: 1, scope: !346, file: !3, line: 27, type: !349)
!352 = !DILocation(line: 27, column: 29, scope: !346)
!353 = !DILocation(line: 29, column: 8, scope: !354)
!354 = distinct !DILexicalBlock(scope: !346, file: !3, line: 29, column: 8)
!355 = !DILocation(line: 29, column: 13, scope: !354)
!356 = !DILocation(line: 29, column: 8, scope: !346)
!357 = !DILocation(line: 31, column: 27, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !3, line: 30, column: 5)
!359 = !DILocation(line: 31, column: 9, scope: !358)
!360 = !DILocation(line: 32, column: 5, scope: !358)
!361 = !DILocation(line: 33, column: 1, scope: !346)
!362 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !363, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !23}
!365 = !DILocalVariable(name: "intNumber", arg: 1, scope: !362, file: !3, line: 35, type: !23)
!366 = !DILocation(line: 35, column: 24, scope: !362)
!367 = !DILocation(line: 37, column: 20, scope: !362)
!368 = !DILocation(line: 37, column: 5, scope: !362)
!369 = !DILocation(line: 38, column: 1, scope: !362)
!370 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !371, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !373}
!373 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!374 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !370, file: !3, line: 40, type: !373)
!375 = !DILocation(line: 40, column: 28, scope: !370)
!376 = !DILocation(line: 42, column: 21, scope: !370)
!377 = !DILocation(line: 42, column: 5, scope: !370)
!378 = !DILocation(line: 43, column: 1, scope: !370)
!379 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !380, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !382}
!382 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!383 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !379, file: !3, line: 45, type: !382)
!384 = !DILocation(line: 45, column: 28, scope: !379)
!385 = !DILocation(line: 47, column: 20, scope: !379)
!386 = !DILocation(line: 47, column: 5, scope: !379)
!387 = !DILocation(line: 48, column: 1, scope: !379)
!388 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !389, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !391}
!391 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!392 = !DILocalVariable(name: "longNumber", arg: 1, scope: !388, file: !3, line: 50, type: !391)
!393 = !DILocation(line: 50, column: 26, scope: !388)
!394 = !DILocation(line: 52, column: 21, scope: !388)
!395 = !DILocation(line: 52, column: 5, scope: !388)
!396 = !DILocation(line: 53, column: 1, scope: !388)
!397 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !398, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !400}
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !401, line: 27, baseType: !402)
!401 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !403, line: 44, baseType: !391)
!403 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!404 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !397, file: !3, line: 55, type: !400)
!405 = !DILocation(line: 55, column: 33, scope: !397)
!406 = !DILocation(line: 57, column: 29, scope: !397)
!407 = !DILocation(line: 57, column: 5, scope: !397)
!408 = !DILocation(line: 58, column: 1, scope: !397)
!409 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !410, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !70}
!412 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !409, file: !3, line: 60, type: !70)
!413 = !DILocation(line: 60, column: 29, scope: !409)
!414 = !DILocation(line: 62, column: 21, scope: !409)
!415 = !DILocation(line: 62, column: 5, scope: !409)
!416 = !DILocation(line: 63, column: 1, scope: !409)
!417 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !418, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !43}
!420 = !DILocalVariable(name: "charHex", arg: 1, scope: !417, file: !3, line: 65, type: !43)
!421 = !DILocation(line: 65, column: 29, scope: !417)
!422 = !DILocation(line: 67, column: 22, scope: !417)
!423 = !DILocation(line: 67, column: 5, scope: !417)
!424 = !DILocation(line: 68, column: 1, scope: !417)
!425 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !426, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !350}
!428 = !DILocalVariable(name: "wideChar", arg: 1, scope: !425, file: !3, line: 70, type: !350)
!429 = !DILocation(line: 70, column: 29, scope: !425)
!430 = !DILocalVariable(name: "s", scope: !425, file: !3, line: 74, type: !431)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 64, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 2)
!434 = !DILocation(line: 74, column: 13, scope: !425)
!435 = !DILocation(line: 75, column: 16, scope: !425)
!436 = !DILocation(line: 75, column: 9, scope: !425)
!437 = !DILocation(line: 75, column: 14, scope: !425)
!438 = !DILocation(line: 76, column: 9, scope: !425)
!439 = !DILocation(line: 76, column: 14, scope: !425)
!440 = !DILocation(line: 77, column: 21, scope: !425)
!441 = !DILocation(line: 77, column: 5, scope: !425)
!442 = !DILocation(line: 78, column: 1, scope: !425)
!443 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !444, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !7}
!446 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !443, file: !3, line: 80, type: !7)
!447 = !DILocation(line: 80, column: 33, scope: !443)
!448 = !DILocation(line: 82, column: 20, scope: !443)
!449 = !DILocation(line: 82, column: 5, scope: !443)
!450 = !DILocation(line: 83, column: 1, scope: !443)
!451 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !452, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !25}
!454 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !451, file: !3, line: 85, type: !25)
!455 = !DILocation(line: 85, column: 45, scope: !451)
!456 = !DILocation(line: 87, column: 22, scope: !451)
!457 = !DILocation(line: 87, column: 5, scope: !451)
!458 = !DILocation(line: 88, column: 1, scope: !451)
!459 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !460, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !462}
!462 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!463 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !459, file: !3, line: 90, type: !462)
!464 = !DILocation(line: 90, column: 29, scope: !459)
!465 = !DILocation(line: 92, column: 20, scope: !459)
!466 = !DILocation(line: 92, column: 5, scope: !459)
!467 = !DILocation(line: 93, column: 1, scope: !459)
!468 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !469, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !471}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !473, line: 100, baseType: !474)
!473 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_443/source_code")
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !473, line: 96, size: 64, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !474, file: !473, line: 98, baseType: !23, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !474, file: !473, line: 99, baseType: !23, size: 32, offset: 32)
!478 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !468, file: !3, line: 95, type: !471)
!479 = !DILocation(line: 95, column: 40, scope: !468)
!480 = !DILocation(line: 97, column: 26, scope: !468)
!481 = !DILocation(line: 97, column: 47, scope: !468)
!482 = !DILocation(line: 97, column: 55, scope: !468)
!483 = !DILocation(line: 97, column: 76, scope: !468)
!484 = !DILocation(line: 97, column: 5, scope: !468)
!485 = !DILocation(line: 98, column: 1, scope: !468)
!486 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !487, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !489, !70}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!490 = !DILocalVariable(name: "bytes", arg: 1, scope: !486, file: !3, line: 100, type: !489)
!491 = !DILocation(line: 100, column: 38, scope: !486)
!492 = !DILocalVariable(name: "numBytes", arg: 2, scope: !486, file: !3, line: 100, type: !70)
!493 = !DILocation(line: 100, column: 52, scope: !486)
!494 = !DILocalVariable(name: "i", scope: !486, file: !3, line: 102, type: !70)
!495 = !DILocation(line: 102, column: 12, scope: !486)
!496 = !DILocation(line: 103, column: 12, scope: !497)
!497 = distinct !DILexicalBlock(scope: !486, file: !3, line: 103, column: 5)
!498 = !DILocation(line: 103, column: 10, scope: !497)
!499 = !DILocation(line: 103, column: 17, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !3, line: 103, column: 5)
!501 = !DILocation(line: 103, column: 21, scope: !500)
!502 = !DILocation(line: 103, column: 19, scope: !500)
!503 = !DILocation(line: 103, column: 5, scope: !497)
!504 = !DILocation(line: 105, column: 24, scope: !505)
!505 = distinct !DILexicalBlock(scope: !500, file: !3, line: 104, column: 5)
!506 = !DILocation(line: 105, column: 30, scope: !505)
!507 = !DILocation(line: 105, column: 9, scope: !505)
!508 = !DILocation(line: 106, column: 5, scope: !505)
!509 = !DILocation(line: 103, column: 31, scope: !500)
!510 = !DILocation(line: 103, column: 5, scope: !500)
!511 = distinct !{!511, !503, !512, !513}
!512 = !DILocation(line: 106, column: 5, scope: !497)
!513 = !{!"llvm.loop.mustprogress"}
!514 = !DILocation(line: 107, column: 5, scope: !486)
!515 = !DILocation(line: 108, column: 1, scope: !486)
!516 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !517, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!517 = !DISubroutineType(types: !518)
!518 = !{!70, !489, !70, !42}
!519 = !DILocalVariable(name: "bytes", arg: 1, scope: !516, file: !3, line: 113, type: !489)
!520 = !DILocation(line: 113, column: 39, scope: !516)
!521 = !DILocalVariable(name: "numBytes", arg: 2, scope: !516, file: !3, line: 113, type: !70)
!522 = !DILocation(line: 113, column: 53, scope: !516)
!523 = !DILocalVariable(name: "hex", arg: 3, scope: !516, file: !3, line: 113, type: !42)
!524 = !DILocation(line: 113, column: 71, scope: !516)
!525 = !DILocalVariable(name: "numWritten", scope: !516, file: !3, line: 115, type: !70)
!526 = !DILocation(line: 115, column: 12, scope: !516)
!527 = !DILocation(line: 121, column: 5, scope: !516)
!528 = !DILocation(line: 121, column: 12, scope: !516)
!529 = !DILocation(line: 121, column: 25, scope: !516)
!530 = !DILocation(line: 121, column: 23, scope: !516)
!531 = !DILocation(line: 121, column: 34, scope: !516)
!532 = !DILocation(line: 121, column: 37, scope: !516)
!533 = !DILocation(line: 121, column: 67, scope: !516)
!534 = !DILocation(line: 121, column: 70, scope: !516)
!535 = !DILocation(line: 0, scope: !516)
!536 = !DILocalVariable(name: "byte", scope: !537, file: !3, line: 123, type: !23)
!537 = distinct !DILexicalBlock(scope: !516, file: !3, line: 122, column: 5)
!538 = !DILocation(line: 123, column: 13, scope: !537)
!539 = !DILocation(line: 124, column: 17, scope: !537)
!540 = !DILocation(line: 124, column: 25, scope: !537)
!541 = !DILocation(line: 124, column: 23, scope: !537)
!542 = !DILocation(line: 124, column: 9, scope: !537)
!543 = !DILocation(line: 125, column: 45, scope: !537)
!544 = !DILocation(line: 125, column: 29, scope: !537)
!545 = !DILocation(line: 125, column: 9, scope: !537)
!546 = !DILocation(line: 125, column: 15, scope: !537)
!547 = !DILocation(line: 125, column: 27, scope: !537)
!548 = !DILocation(line: 126, column: 9, scope: !537)
!549 = distinct !{!549, !527, !550, !513}
!550 = !DILocation(line: 127, column: 5, scope: !516)
!551 = !DILocation(line: 129, column: 12, scope: !516)
!552 = !DILocation(line: 129, column: 5, scope: !516)
!553 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !554, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DISubroutineType(types: !555)
!555 = !{!70, !489, !70, !349}
!556 = !DILocalVariable(name: "bytes", arg: 1, scope: !553, file: !3, line: 135, type: !489)
!557 = !DILocation(line: 135, column: 41, scope: !553)
!558 = !DILocalVariable(name: "numBytes", arg: 2, scope: !553, file: !3, line: 135, type: !70)
!559 = !DILocation(line: 135, column: 55, scope: !553)
!560 = !DILocalVariable(name: "hex", arg: 3, scope: !553, file: !3, line: 135, type: !349)
!561 = !DILocation(line: 135, column: 76, scope: !553)
!562 = !DILocalVariable(name: "numWritten", scope: !553, file: !3, line: 137, type: !70)
!563 = !DILocation(line: 137, column: 12, scope: !553)
!564 = !DILocation(line: 143, column: 5, scope: !553)
!565 = !DILocation(line: 143, column: 12, scope: !553)
!566 = !DILocation(line: 143, column: 25, scope: !553)
!567 = !DILocation(line: 143, column: 23, scope: !553)
!568 = !DILocation(line: 143, column: 34, scope: !553)
!569 = !DILocation(line: 143, column: 47, scope: !553)
!570 = !DILocation(line: 143, column: 55, scope: !553)
!571 = !DILocation(line: 143, column: 53, scope: !553)
!572 = !DILocation(line: 143, column: 37, scope: !553)
!573 = !DILocation(line: 143, column: 68, scope: !553)
!574 = !DILocation(line: 143, column: 81, scope: !553)
!575 = !DILocation(line: 143, column: 89, scope: !553)
!576 = !DILocation(line: 143, column: 87, scope: !553)
!577 = !DILocation(line: 143, column: 100, scope: !553)
!578 = !DILocation(line: 143, column: 71, scope: !553)
!579 = !DILocation(line: 0, scope: !553)
!580 = !DILocalVariable(name: "byte", scope: !581, file: !3, line: 145, type: !23)
!581 = distinct !DILexicalBlock(scope: !553, file: !3, line: 144, column: 5)
!582 = !DILocation(line: 145, column: 13, scope: !581)
!583 = !DILocation(line: 146, column: 18, scope: !581)
!584 = !DILocation(line: 146, column: 26, scope: !581)
!585 = !DILocation(line: 146, column: 24, scope: !581)
!586 = !DILocation(line: 146, column: 9, scope: !581)
!587 = !DILocation(line: 147, column: 45, scope: !581)
!588 = !DILocation(line: 147, column: 29, scope: !581)
!589 = !DILocation(line: 147, column: 9, scope: !581)
!590 = !DILocation(line: 147, column: 15, scope: !581)
!591 = !DILocation(line: 147, column: 27, scope: !581)
!592 = !DILocation(line: 148, column: 9, scope: !581)
!593 = distinct !{!593, !564, !594, !513}
!594 = !DILocation(line: 149, column: 5, scope: !553)
!595 = !DILocation(line: 151, column: 12, scope: !553)
!596 = !DILocation(line: 151, column: 5, scope: !553)
!597 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !598, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DISubroutineType(types: !599)
!599 = !{!23}
!600 = !DILocation(line: 158, column: 5, scope: !597)
!601 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !598, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!602 = !DILocation(line: 163, column: 5, scope: !601)
!603 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !598, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DILocation(line: 168, column: 13, scope: !603)
!605 = !DILocation(line: 168, column: 20, scope: !603)
!606 = !DILocation(line: 168, column: 5, scope: !603)
!607 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 187, column: 16, scope: !607)
!609 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DILocation(line: 188, column: 16, scope: !609)
!611 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DILocation(line: 189, column: 16, scope: !611)
!613 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DILocation(line: 190, column: 16, scope: !613)
!615 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!616 = !DILocation(line: 191, column: 16, scope: !615)
!617 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!618 = !DILocation(line: 192, column: 16, scope: !617)
!619 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!620 = !DILocation(line: 193, column: 16, scope: !619)
!621 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!622 = !DILocation(line: 194, column: 16, scope: !621)
!623 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!624 = !DILocation(line: 195, column: 16, scope: !623)
!625 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!626 = !DILocation(line: 198, column: 15, scope: !625)
!627 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!628 = !DILocation(line: 199, column: 15, scope: !627)
!629 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!630 = !DILocation(line: 200, column: 15, scope: !629)
!631 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!632 = !DILocation(line: 201, column: 15, scope: !631)
!633 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!634 = !DILocation(line: 202, column: 15, scope: !633)
!635 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!636 = !DILocation(line: 203, column: 15, scope: !635)
!637 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!638 = !DILocation(line: 204, column: 15, scope: !637)
!639 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!640 = !DILocation(line: 205, column: 15, scope: !639)
!641 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!642 = !DILocation(line: 206, column: 15, scope: !641)
