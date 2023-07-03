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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_12_bad() #0 !dbg !52 {
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
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !64
  %tobool = icmp ne i32 %call, 0, !dbg !64
  br i1 %tobool, label %if.then, label %if.else21, !dbg !66

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !73
  %1 = load i8*, i8** %data, align 8, !dbg !74
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !75
  store i64 %call1, i64* %dataLen, align 8, !dbg !73
  %2 = load i64, i64* %dataLen, align 8, !dbg !76
  %sub = sub i64 100, %2, !dbg !78
  %cmp = icmp ugt i64 %sub, 1, !dbg !79
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !80

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !81
  %4 = load i64, i64* %dataLen, align 8, !dbg !84
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !85
  %5 = load i64, i64* %dataLen, align 8, !dbg !86
  %sub3 = sub i64 100, %5, !dbg !87
  %conv = trunc i64 %sub3 to i32, !dbg !88
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !89
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !90
  %cmp5 = icmp ne i8* %call4, null, !dbg !91
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !92

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !93
  %call8 = call i64 @strlen(i8* %7) #7, !dbg !95
  store i64 %call8, i64* %dataLen, align 8, !dbg !96
  %8 = load i64, i64* %dataLen, align 8, !dbg !97
  %cmp9 = icmp ugt i64 %8, 0, !dbg !99
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !100

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !101
  %10 = load i64, i64* %dataLen, align 8, !dbg !102
  %sub11 = sub i64 %10, 1, !dbg !103
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !101
  %11 = load i8, i8* %arrayidx, align 1, !dbg !101
  %conv12 = sext i8 %11 to i32, !dbg !101
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !104
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !105

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !106
  %13 = load i64, i64* %dataLen, align 8, !dbg !108
  %sub16 = sub i64 %13, 1, !dbg !109
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !106
  store i8 0, i8* %arrayidx17, align 1, !dbg !110
  br label %if.end, !dbg !111

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !112

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !113
  %14 = load i8*, i8** %data, align 8, !dbg !115
  %15 = load i64, i64* %dataLen, align 8, !dbg !116
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !115
  store i8 0, i8* %arrayidx18, align 1, !dbg !117
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !118

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end23, !dbg !119

if.else21:                                        ; preds = %entry
  %16 = load i8*, i8** %data, align 8, !dbg !120
  %call22 = call i8* @strcpy(i8* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !122
  br label %if.end23

if.end23:                                         ; preds = %if.else21, %if.end20
  %call24 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !123
  %tobool25 = icmp ne i32 %call24, 0, !dbg !123
  br i1 %tobool25, label %if.then26, label %if.else28, !dbg !125

if.then26:                                        ; preds = %if.end23
  %17 = load i8*, i8** %data, align 8, !dbg !126
  %call27 = call i32 (i8*, ...) @printf(i8* %17), !dbg !128
  br label %if.end30, !dbg !129

if.else28:                                        ; preds = %if.end23
  %18 = load i8*, i8** %data, align 8, !dbg !130
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %18), !dbg !132
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then26
  ret void, !dbg !133
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !134 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %dataLen22 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !137, metadata !DIExpression()), !dbg !138
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !138
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !138
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !139
  store i8* %arraydecay, i8** %data, align 8, !dbg !140
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !141
  %tobool = icmp ne i32 %call, 0, !dbg !141
  br i1 %tobool, label %if.then, label %if.else21, !dbg !143

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !144, metadata !DIExpression()), !dbg !147
  %1 = load i8*, i8** %data, align 8, !dbg !148
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !149
  store i64 %call1, i64* %dataLen, align 8, !dbg !147
  %2 = load i64, i64* %dataLen, align 8, !dbg !150
  %sub = sub i64 100, %2, !dbg !152
  %cmp = icmp ugt i64 %sub, 1, !dbg !153
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !154

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !155
  %4 = load i64, i64* %dataLen, align 8, !dbg !158
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !159
  %5 = load i64, i64* %dataLen, align 8, !dbg !160
  %sub3 = sub i64 100, %5, !dbg !161
  %conv = trunc i64 %sub3 to i32, !dbg !162
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !163
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !164
  %cmp5 = icmp ne i8* %call4, null, !dbg !165
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !166

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !167
  %call8 = call i64 @strlen(i8* %7) #7, !dbg !169
  store i64 %call8, i64* %dataLen, align 8, !dbg !170
  %8 = load i64, i64* %dataLen, align 8, !dbg !171
  %cmp9 = icmp ugt i64 %8, 0, !dbg !173
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !174

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !175
  %10 = load i64, i64* %dataLen, align 8, !dbg !176
  %sub11 = sub i64 %10, 1, !dbg !177
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !175
  %11 = load i8, i8* %arrayidx, align 1, !dbg !175
  %conv12 = sext i8 %11 to i32, !dbg !175
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !178
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !179

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !180
  %13 = load i64, i64* %dataLen, align 8, !dbg !182
  %sub16 = sub i64 %13, 1, !dbg !183
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !180
  store i8 0, i8* %arrayidx17, align 1, !dbg !184
  br label %if.end, !dbg !185

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !186

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !187
  %14 = load i8*, i8** %data, align 8, !dbg !189
  %15 = load i64, i64* %dataLen, align 8, !dbg !190
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !189
  store i8 0, i8* %arrayidx18, align 1, !dbg !191
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !192

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end52, !dbg !193

if.else21:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen22, metadata !194, metadata !DIExpression()), !dbg !197
  %16 = load i8*, i8** %data, align 8, !dbg !198
  %call23 = call i64 @strlen(i8* %16) #7, !dbg !199
  store i64 %call23, i64* %dataLen22, align 8, !dbg !197
  %17 = load i64, i64* %dataLen22, align 8, !dbg !200
  %sub24 = sub i64 100, %17, !dbg !202
  %cmp25 = icmp ugt i64 %sub24, 1, !dbg !203
  br i1 %cmp25, label %if.then27, label %if.end51, !dbg !204

if.then27:                                        ; preds = %if.else21
  %18 = load i8*, i8** %data, align 8, !dbg !205
  %19 = load i64, i64* %dataLen22, align 8, !dbg !208
  %add.ptr28 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !209
  %20 = load i64, i64* %dataLen22, align 8, !dbg !210
  %sub29 = sub i64 100, %20, !dbg !211
  %conv30 = trunc i64 %sub29 to i32, !dbg !212
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !213
  %call31 = call i8* @fgets(i8* %add.ptr28, i32 %conv30, %struct._IO_FILE* %21), !dbg !214
  %cmp32 = icmp ne i8* %call31, null, !dbg !215
  br i1 %cmp32, label %if.then34, label %if.else48, !dbg !216

if.then34:                                        ; preds = %if.then27
  %22 = load i8*, i8** %data, align 8, !dbg !217
  %call35 = call i64 @strlen(i8* %22) #7, !dbg !219
  store i64 %call35, i64* %dataLen22, align 8, !dbg !220
  %23 = load i64, i64* %dataLen22, align 8, !dbg !221
  %cmp36 = icmp ugt i64 %23, 0, !dbg !223
  br i1 %cmp36, label %land.lhs.true38, label %if.end47, !dbg !224

land.lhs.true38:                                  ; preds = %if.then34
  %24 = load i8*, i8** %data, align 8, !dbg !225
  %25 = load i64, i64* %dataLen22, align 8, !dbg !226
  %sub39 = sub i64 %25, 1, !dbg !227
  %arrayidx40 = getelementptr inbounds i8, i8* %24, i64 %sub39, !dbg !225
  %26 = load i8, i8* %arrayidx40, align 1, !dbg !225
  %conv41 = sext i8 %26 to i32, !dbg !225
  %cmp42 = icmp eq i32 %conv41, 10, !dbg !228
  br i1 %cmp42, label %if.then44, label %if.end47, !dbg !229

if.then44:                                        ; preds = %land.lhs.true38
  %27 = load i8*, i8** %data, align 8, !dbg !230
  %28 = load i64, i64* %dataLen22, align 8, !dbg !232
  %sub45 = sub i64 %28, 1, !dbg !233
  %arrayidx46 = getelementptr inbounds i8, i8* %27, i64 %sub45, !dbg !230
  store i8 0, i8* %arrayidx46, align 1, !dbg !234
  br label %if.end47, !dbg !235

if.end47:                                         ; preds = %if.then44, %land.lhs.true38, %if.then34
  br label %if.end50, !dbg !236

if.else48:                                        ; preds = %if.then27
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !237
  %29 = load i8*, i8** %data, align 8, !dbg !239
  %30 = load i64, i64* %dataLen22, align 8, !dbg !240
  %arrayidx49 = getelementptr inbounds i8, i8* %29, i64 %30, !dbg !239
  store i8 0, i8* %arrayidx49, align 1, !dbg !241
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.end47
  br label %if.end51, !dbg !242

if.end51:                                         ; preds = %if.end50, %if.else21
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end20
  %call53 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !243
  %tobool54 = icmp ne i32 %call53, 0, !dbg !243
  br i1 %tobool54, label %if.then55, label %if.else57, !dbg !245

if.then55:                                        ; preds = %if.end52
  %31 = load i8*, i8** %data, align 8, !dbg !246
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %31), !dbg !248
  br label %if.end59, !dbg !249

if.else57:                                        ; preds = %if.end52
  %32 = load i8*, i8** %data, align 8, !dbg !250
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %32), !dbg !252
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.then55
  ret void, !dbg !253
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !254 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !255, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !257, metadata !DIExpression()), !dbg !258
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !258
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !258
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !259
  store i8* %arraydecay, i8** %data, align 8, !dbg !260
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !261
  %tobool = icmp ne i32 %call, 0, !dbg !261
  br i1 %tobool, label %if.then, label %if.else, !dbg !263

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !264
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !266
  br label %if.end, !dbg !267

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !268
  %call2 = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !270
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !271
  %tobool4 = icmp ne i32 %call3, 0, !dbg !271
  br i1 %tobool4, label %if.then5, label %if.else7, !dbg !273

if.then5:                                         ; preds = %if.end
  %3 = load i8*, i8** %data, align 8, !dbg !274
  %call6 = call i32 (i8*, ...) @printf(i8* %3), !dbg !276
  br label %if.end9, !dbg !277

if.else7:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !278
  %call8 = call i32 (i8*, ...) @printf(i8* %4), !dbg !280
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.then5
  ret void, !dbg !281
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_12_good() #0 !dbg !282 {
entry:
  call void @goodB2G(), !dbg !283
  call void @goodG2B(), !dbg !284
  ret void, !dbg !285
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !286 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !289, metadata !DIExpression()), !dbg !290
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !291
  %0 = load i8*, i8** %line.addr, align 8, !dbg !292
  %cmp = icmp ne i8* %0, null, !dbg !294
  br i1 %cmp, label %if.then, label %if.end, !dbg !295

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !296
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !298
  br label %if.end, !dbg !299

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !300
  ret void, !dbg !301
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !302 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !303, metadata !DIExpression()), !dbg !304
  %0 = load i8*, i8** %line.addr, align 8, !dbg !305
  %cmp = icmp ne i8* %0, null, !dbg !307
  br i1 %cmp, label %if.then, label %if.end, !dbg !308

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !309
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !311
  br label %if.end, !dbg !312

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !313
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !314 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !319, metadata !DIExpression()), !dbg !320
  %0 = load i32*, i32** %line.addr, align 8, !dbg !321
  %cmp = icmp ne i32* %0, null, !dbg !323
  br i1 %cmp, label %if.then, label %if.end, !dbg !324

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !325
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !327
  br label %if.end, !dbg !328

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !329
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !330 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !335
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !336
  ret void, !dbg !337
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !338 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !344
  %conv = sext i16 %0 to i32, !dbg !344
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !345
  ret void, !dbg !346
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !347 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !351, metadata !DIExpression()), !dbg !352
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !353
  %conv = fpext float %0 to double, !dbg !353
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !354
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !356 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !360, metadata !DIExpression()), !dbg !361
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !362
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !363
  ret void, !dbg !364
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !365 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !374
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !375
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !377 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !380, metadata !DIExpression()), !dbg !381
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !382
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !383
  ret void, !dbg !384
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !385 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !388, metadata !DIExpression()), !dbg !389
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !390
  %conv = sext i8 %0 to i32, !dbg !390
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !391
  ret void, !dbg !392
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !393 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !396, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !398, metadata !DIExpression()), !dbg !402
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !403
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !404
  store i32 %0, i32* %arrayidx, align 4, !dbg !405
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !406
  store i32 0, i32* %arrayidx1, align 4, !dbg !407
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !408
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !409
  ret void, !dbg !410
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !411 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !414, metadata !DIExpression()), !dbg !415
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !416
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !417
  ret void, !dbg !418
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !419 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !422, metadata !DIExpression()), !dbg !423
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !424
  %conv = zext i8 %0 to i32, !dbg !424
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !425
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !427 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !431, metadata !DIExpression()), !dbg !432
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !433
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !434
  ret void, !dbg !435
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !436 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !446, metadata !DIExpression()), !dbg !447
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !448
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !449
  %1 = load i32, i32* %intOne, align 4, !dbg !449
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !450
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !451
  %3 = load i32, i32* %intTwo, align 4, !dbg !451
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !452
  ret void, !dbg !453
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !454 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !458, metadata !DIExpression()), !dbg !459
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !460, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.declare(metadata i64* %i, metadata !462, metadata !DIExpression()), !dbg !463
  store i64 0, i64* %i, align 8, !dbg !464
  br label %for.cond, !dbg !466

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !467
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !469
  %cmp = icmp ult i64 %0, %1, !dbg !470
  br i1 %cmp, label %for.body, label %for.end, !dbg !471

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !472
  %3 = load i64, i64* %i, align 8, !dbg !474
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !472
  %4 = load i8, i8* %arrayidx, align 1, !dbg !472
  %conv = zext i8 %4 to i32, !dbg !472
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !475
  br label %for.inc, !dbg !476

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !477
  %inc = add i64 %5, 1, !dbg !477
  store i64 %inc, i64* %i, align 8, !dbg !477
  br label %for.cond, !dbg !478, !llvm.loop !479

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !482
  ret void, !dbg !483
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !484 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !487, metadata !DIExpression()), !dbg !488
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !489, metadata !DIExpression()), !dbg !490
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !491, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !493, metadata !DIExpression()), !dbg !494
  store i64 0, i64* %numWritten, align 8, !dbg !494
  br label %while.cond, !dbg !495

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !496
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !497
  %cmp = icmp ult i64 %0, %1, !dbg !498
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !499

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !500
  %2 = load i16*, i16** %call, align 8, !dbg !500
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !500
  %4 = load i64, i64* %numWritten, align 8, !dbg !500
  %mul = mul i64 2, %4, !dbg !500
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !500
  %5 = load i8, i8* %arrayidx, align 1, !dbg !500
  %conv = sext i8 %5 to i32, !dbg !500
  %idxprom = sext i32 %conv to i64, !dbg !500
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !500
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !500
  %conv2 = zext i16 %6 to i32, !dbg !500
  %and = and i32 %conv2, 4096, !dbg !500
  %tobool = icmp ne i32 %and, 0, !dbg !500
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !501

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !502
  %7 = load i16*, i16** %call3, align 8, !dbg !502
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !502
  %9 = load i64, i64* %numWritten, align 8, !dbg !502
  %mul4 = mul i64 2, %9, !dbg !502
  %add = add i64 %mul4, 1, !dbg !502
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !502
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !502
  %conv6 = sext i8 %10 to i32, !dbg !502
  %idxprom7 = sext i32 %conv6 to i64, !dbg !502
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !502
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !502
  %conv9 = zext i16 %11 to i32, !dbg !502
  %and10 = and i32 %conv9, 4096, !dbg !502
  %tobool11 = icmp ne i32 %and10, 0, !dbg !501
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !503
  br i1 %12, label %while.body, label %while.end, !dbg !495

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !504, metadata !DIExpression()), !dbg !506
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !507
  %14 = load i64, i64* %numWritten, align 8, !dbg !508
  %mul12 = mul i64 2, %14, !dbg !509
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !507
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !510
  %15 = load i32, i32* %byte, align 4, !dbg !511
  %conv15 = trunc i32 %15 to i8, !dbg !512
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !513
  %17 = load i64, i64* %numWritten, align 8, !dbg !514
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !513
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !515
  %18 = load i64, i64* %numWritten, align 8, !dbg !516
  %inc = add i64 %18, 1, !dbg !516
  store i64 %inc, i64* %numWritten, align 8, !dbg !516
  br label %while.cond, !dbg !495, !llvm.loop !517

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !519
  ret i64 %19, !dbg !520
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !521 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !524, metadata !DIExpression()), !dbg !525
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !526, metadata !DIExpression()), !dbg !527
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !528, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !530, metadata !DIExpression()), !dbg !531
  store i64 0, i64* %numWritten, align 8, !dbg !531
  br label %while.cond, !dbg !532

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !533
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !534
  %cmp = icmp ult i64 %0, %1, !dbg !535
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !536

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !537
  %3 = load i64, i64* %numWritten, align 8, !dbg !538
  %mul = mul i64 2, %3, !dbg !539
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !537
  %4 = load i32, i32* %arrayidx, align 4, !dbg !537
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !540
  %tobool = icmp ne i32 %call, 0, !dbg !540
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !541

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !542
  %6 = load i64, i64* %numWritten, align 8, !dbg !543
  %mul1 = mul i64 2, %6, !dbg !544
  %add = add i64 %mul1, 1, !dbg !545
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !542
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !542
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !546
  %tobool4 = icmp ne i32 %call3, 0, !dbg !541
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !547
  br i1 %8, label %while.body, label %while.end, !dbg !532

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !548, metadata !DIExpression()), !dbg !550
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !551
  %10 = load i64, i64* %numWritten, align 8, !dbg !552
  %mul5 = mul i64 2, %10, !dbg !553
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !551
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !554
  %11 = load i32, i32* %byte, align 4, !dbg !555
  %conv = trunc i32 %11 to i8, !dbg !556
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !557
  %13 = load i64, i64* %numWritten, align 8, !dbg !558
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !557
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !559
  %14 = load i64, i64* %numWritten, align 8, !dbg !560
  %inc = add i64 %14, 1, !dbg !560
  store i64 %inc, i64* %numWritten, align 8, !dbg !560
  br label %while.cond, !dbg !532, !llvm.loop !561

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !563
  ret i64 %15, !dbg !564
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !565 {
entry:
  ret i32 1, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !569 {
entry:
  ret i32 0, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !571 {
entry:
  %call = call i32 @rand() #8, !dbg !572
  %rem = srem i32 %call, 2, !dbg !573
  ret i32 %rem, !dbg !574
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !575 {
entry:
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !577 {
entry:
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !579 {
entry:
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !581 {
entry:
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !583 {
entry:
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !585 {
entry:
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !587 {
entry:
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !589 {
entry:
  ret void, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !591 {
entry:
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !593 {
entry:
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !595 {
entry:
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !597 {
entry:
  ret void, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !599 {
entry:
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !601 {
entry:
  ret void, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !603 {
entry:
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !605 {
entry:
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !607 {
entry:
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !609 {
entry:
  ret void, !dbg !610
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_445/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_12.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_445/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_12_bad", scope: !45, file: !45, line: 27, type: !53, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!120 = !DILocation(line: 63, column: 16, scope: !121)
!121 = distinct !DILexicalBlock(scope: !65, file: !45, line: 61, column: 5)
!122 = !DILocation(line: 63, column: 9, scope: !121)
!123 = !DILocation(line: 65, column: 8, scope: !124)
!124 = distinct !DILexicalBlock(scope: !52, file: !45, line: 65, column: 8)
!125 = !DILocation(line: 65, column: 8, scope: !52)
!126 = !DILocation(line: 68, column: 16, scope: !127)
!127 = distinct !DILexicalBlock(scope: !124, file: !45, line: 66, column: 5)
!128 = !DILocation(line: 68, column: 9, scope: !127)
!129 = !DILocation(line: 69, column: 5, scope: !127)
!130 = !DILocation(line: 73, column: 24, scope: !131)
!131 = distinct !DILexicalBlock(scope: !124, file: !45, line: 71, column: 5)
!132 = !DILocation(line: 73, column: 9, scope: !131)
!133 = !DILocation(line: 75, column: 1, scope: !52)
!134 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 84, type: !53, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!135 = !DILocalVariable(name: "data", scope: !134, file: !45, line: 86, type: !42)
!136 = !DILocation(line: 86, column: 12, scope: !134)
!137 = !DILocalVariable(name: "dataBuffer", scope: !134, file: !45, line: 87, type: !58)
!138 = !DILocation(line: 87, column: 10, scope: !134)
!139 = !DILocation(line: 88, column: 12, scope: !134)
!140 = !DILocation(line: 88, column: 10, scope: !134)
!141 = !DILocation(line: 89, column: 8, scope: !142)
!142 = distinct !DILexicalBlock(scope: !134, file: !45, line: 89, column: 8)
!143 = !DILocation(line: 89, column: 8, scope: !134)
!144 = !DILocalVariable(name: "dataLen", scope: !145, file: !45, line: 93, type: !70)
!145 = distinct !DILexicalBlock(scope: !146, file: !45, line: 91, column: 9)
!146 = distinct !DILexicalBlock(scope: !142, file: !45, line: 90, column: 5)
!147 = !DILocation(line: 93, column: 20, scope: !145)
!148 = !DILocation(line: 93, column: 37, scope: !145)
!149 = !DILocation(line: 93, column: 30, scope: !145)
!150 = !DILocation(line: 95, column: 21, scope: !151)
!151 = distinct !DILexicalBlock(scope: !145, file: !45, line: 95, column: 17)
!152 = !DILocation(line: 95, column: 20, scope: !151)
!153 = !DILocation(line: 95, column: 29, scope: !151)
!154 = !DILocation(line: 95, column: 17, scope: !145)
!155 = !DILocation(line: 98, column: 27, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !45, line: 98, column: 21)
!157 = distinct !DILexicalBlock(scope: !151, file: !45, line: 96, column: 13)
!158 = !DILocation(line: 98, column: 32, scope: !156)
!159 = !DILocation(line: 98, column: 31, scope: !156)
!160 = !DILocation(line: 98, column: 51, scope: !156)
!161 = !DILocation(line: 98, column: 50, scope: !156)
!162 = !DILocation(line: 98, column: 41, scope: !156)
!163 = !DILocation(line: 98, column: 61, scope: !156)
!164 = !DILocation(line: 98, column: 21, scope: !156)
!165 = !DILocation(line: 98, column: 68, scope: !156)
!166 = !DILocation(line: 98, column: 21, scope: !157)
!167 = !DILocation(line: 102, column: 38, scope: !168)
!168 = distinct !DILexicalBlock(scope: !156, file: !45, line: 99, column: 17)
!169 = !DILocation(line: 102, column: 31, scope: !168)
!170 = !DILocation(line: 102, column: 29, scope: !168)
!171 = !DILocation(line: 103, column: 25, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !45, line: 103, column: 25)
!173 = !DILocation(line: 103, column: 33, scope: !172)
!174 = !DILocation(line: 103, column: 37, scope: !172)
!175 = !DILocation(line: 103, column: 40, scope: !172)
!176 = !DILocation(line: 103, column: 45, scope: !172)
!177 = !DILocation(line: 103, column: 52, scope: !172)
!178 = !DILocation(line: 103, column: 56, scope: !172)
!179 = !DILocation(line: 103, column: 25, scope: !168)
!180 = !DILocation(line: 105, column: 25, scope: !181)
!181 = distinct !DILexicalBlock(scope: !172, file: !45, line: 104, column: 21)
!182 = !DILocation(line: 105, column: 30, scope: !181)
!183 = !DILocation(line: 105, column: 37, scope: !181)
!184 = !DILocation(line: 105, column: 41, scope: !181)
!185 = !DILocation(line: 106, column: 21, scope: !181)
!186 = !DILocation(line: 107, column: 17, scope: !168)
!187 = !DILocation(line: 110, column: 21, scope: !188)
!188 = distinct !DILexicalBlock(scope: !156, file: !45, line: 109, column: 17)
!189 = !DILocation(line: 112, column: 21, scope: !188)
!190 = !DILocation(line: 112, column: 26, scope: !188)
!191 = !DILocation(line: 112, column: 35, scope: !188)
!192 = !DILocation(line: 114, column: 13, scope: !157)
!193 = !DILocation(line: 116, column: 5, scope: !146)
!194 = !DILocalVariable(name: "dataLen", scope: !195, file: !45, line: 121, type: !70)
!195 = distinct !DILexicalBlock(scope: !196, file: !45, line: 119, column: 9)
!196 = distinct !DILexicalBlock(scope: !142, file: !45, line: 118, column: 5)
!197 = !DILocation(line: 121, column: 20, scope: !195)
!198 = !DILocation(line: 121, column: 37, scope: !195)
!199 = !DILocation(line: 121, column: 30, scope: !195)
!200 = !DILocation(line: 123, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !195, file: !45, line: 123, column: 17)
!202 = !DILocation(line: 123, column: 20, scope: !201)
!203 = !DILocation(line: 123, column: 29, scope: !201)
!204 = !DILocation(line: 123, column: 17, scope: !195)
!205 = !DILocation(line: 126, column: 27, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !45, line: 126, column: 21)
!207 = distinct !DILexicalBlock(scope: !201, file: !45, line: 124, column: 13)
!208 = !DILocation(line: 126, column: 32, scope: !206)
!209 = !DILocation(line: 126, column: 31, scope: !206)
!210 = !DILocation(line: 126, column: 51, scope: !206)
!211 = !DILocation(line: 126, column: 50, scope: !206)
!212 = !DILocation(line: 126, column: 41, scope: !206)
!213 = !DILocation(line: 126, column: 61, scope: !206)
!214 = !DILocation(line: 126, column: 21, scope: !206)
!215 = !DILocation(line: 126, column: 68, scope: !206)
!216 = !DILocation(line: 126, column: 21, scope: !207)
!217 = !DILocation(line: 130, column: 38, scope: !218)
!218 = distinct !DILexicalBlock(scope: !206, file: !45, line: 127, column: 17)
!219 = !DILocation(line: 130, column: 31, scope: !218)
!220 = !DILocation(line: 130, column: 29, scope: !218)
!221 = !DILocation(line: 131, column: 25, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !45, line: 131, column: 25)
!223 = !DILocation(line: 131, column: 33, scope: !222)
!224 = !DILocation(line: 131, column: 37, scope: !222)
!225 = !DILocation(line: 131, column: 40, scope: !222)
!226 = !DILocation(line: 131, column: 45, scope: !222)
!227 = !DILocation(line: 131, column: 52, scope: !222)
!228 = !DILocation(line: 131, column: 56, scope: !222)
!229 = !DILocation(line: 131, column: 25, scope: !218)
!230 = !DILocation(line: 133, column: 25, scope: !231)
!231 = distinct !DILexicalBlock(scope: !222, file: !45, line: 132, column: 21)
!232 = !DILocation(line: 133, column: 30, scope: !231)
!233 = !DILocation(line: 133, column: 37, scope: !231)
!234 = !DILocation(line: 133, column: 41, scope: !231)
!235 = !DILocation(line: 134, column: 21, scope: !231)
!236 = !DILocation(line: 135, column: 17, scope: !218)
!237 = !DILocation(line: 138, column: 21, scope: !238)
!238 = distinct !DILexicalBlock(scope: !206, file: !45, line: 137, column: 17)
!239 = !DILocation(line: 140, column: 21, scope: !238)
!240 = !DILocation(line: 140, column: 26, scope: !238)
!241 = !DILocation(line: 140, column: 35, scope: !238)
!242 = !DILocation(line: 142, column: 13, scope: !207)
!243 = !DILocation(line: 145, column: 8, scope: !244)
!244 = distinct !DILexicalBlock(scope: !134, file: !45, line: 145, column: 8)
!245 = !DILocation(line: 145, column: 8, scope: !134)
!246 = !DILocation(line: 148, column: 24, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !45, line: 146, column: 5)
!248 = !DILocation(line: 148, column: 9, scope: !247)
!249 = !DILocation(line: 149, column: 5, scope: !247)
!250 = !DILocation(line: 153, column: 24, scope: !251)
!251 = distinct !DILexicalBlock(scope: !244, file: !45, line: 151, column: 5)
!252 = !DILocation(line: 153, column: 9, scope: !251)
!253 = !DILocation(line: 155, column: 1, scope: !134)
!254 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 160, type: !53, scopeLine: 161, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!255 = !DILocalVariable(name: "data", scope: !254, file: !45, line: 162, type: !42)
!256 = !DILocation(line: 162, column: 12, scope: !254)
!257 = !DILocalVariable(name: "dataBuffer", scope: !254, file: !45, line: 163, type: !58)
!258 = !DILocation(line: 163, column: 10, scope: !254)
!259 = !DILocation(line: 164, column: 12, scope: !254)
!260 = !DILocation(line: 164, column: 10, scope: !254)
!261 = !DILocation(line: 165, column: 8, scope: !262)
!262 = distinct !DILexicalBlock(scope: !254, file: !45, line: 165, column: 8)
!263 = !DILocation(line: 165, column: 8, scope: !254)
!264 = !DILocation(line: 168, column: 16, scope: !265)
!265 = distinct !DILexicalBlock(scope: !262, file: !45, line: 166, column: 5)
!266 = !DILocation(line: 168, column: 9, scope: !265)
!267 = !DILocation(line: 169, column: 5, scope: !265)
!268 = !DILocation(line: 173, column: 16, scope: !269)
!269 = distinct !DILexicalBlock(scope: !262, file: !45, line: 171, column: 5)
!270 = !DILocation(line: 173, column: 9, scope: !269)
!271 = !DILocation(line: 175, column: 8, scope: !272)
!272 = distinct !DILexicalBlock(scope: !254, file: !45, line: 175, column: 8)
!273 = !DILocation(line: 175, column: 8, scope: !254)
!274 = !DILocation(line: 178, column: 16, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !45, line: 176, column: 5)
!276 = !DILocation(line: 178, column: 9, scope: !275)
!277 = !DILocation(line: 179, column: 5, scope: !275)
!278 = !DILocation(line: 183, column: 16, scope: !279)
!279 = distinct !DILexicalBlock(scope: !272, file: !45, line: 181, column: 5)
!280 = !DILocation(line: 183, column: 9, scope: !279)
!281 = !DILocation(line: 185, column: 1, scope: !254)
!282 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_12_good", scope: !45, file: !45, line: 187, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!283 = !DILocation(line: 189, column: 5, scope: !282)
!284 = !DILocation(line: 190, column: 5, scope: !282)
!285 = !DILocation(line: 191, column: 1, scope: !282)
!286 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !287, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !42}
!289 = !DILocalVariable(name: "line", arg: 1, scope: !286, file: !3, line: 11, type: !42)
!290 = !DILocation(line: 11, column: 25, scope: !286)
!291 = !DILocation(line: 13, column: 1, scope: !286)
!292 = !DILocation(line: 14, column: 8, scope: !293)
!293 = distinct !DILexicalBlock(scope: !286, file: !3, line: 14, column: 8)
!294 = !DILocation(line: 14, column: 13, scope: !293)
!295 = !DILocation(line: 14, column: 8, scope: !286)
!296 = !DILocation(line: 16, column: 24, scope: !297)
!297 = distinct !DILexicalBlock(scope: !293, file: !3, line: 15, column: 5)
!298 = !DILocation(line: 16, column: 9, scope: !297)
!299 = !DILocation(line: 17, column: 5, scope: !297)
!300 = !DILocation(line: 18, column: 5, scope: !286)
!301 = !DILocation(line: 19, column: 1, scope: !286)
!302 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !287, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!303 = !DILocalVariable(name: "line", arg: 1, scope: !302, file: !3, line: 20, type: !42)
!304 = !DILocation(line: 20, column: 29, scope: !302)
!305 = !DILocation(line: 22, column: 8, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !3, line: 22, column: 8)
!307 = !DILocation(line: 22, column: 13, scope: !306)
!308 = !DILocation(line: 22, column: 8, scope: !302)
!309 = !DILocation(line: 24, column: 24, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !3, line: 23, column: 5)
!311 = !DILocation(line: 24, column: 9, scope: !310)
!312 = !DILocation(line: 25, column: 5, scope: !310)
!313 = !DILocation(line: 26, column: 1, scope: !302)
!314 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !315, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !317}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !71, line: 74, baseType: !23)
!319 = !DILocalVariable(name: "line", arg: 1, scope: !314, file: !3, line: 27, type: !317)
!320 = !DILocation(line: 27, column: 29, scope: !314)
!321 = !DILocation(line: 29, column: 8, scope: !322)
!322 = distinct !DILexicalBlock(scope: !314, file: !3, line: 29, column: 8)
!323 = !DILocation(line: 29, column: 13, scope: !322)
!324 = !DILocation(line: 29, column: 8, scope: !314)
!325 = !DILocation(line: 31, column: 27, scope: !326)
!326 = distinct !DILexicalBlock(scope: !322, file: !3, line: 30, column: 5)
!327 = !DILocation(line: 31, column: 9, scope: !326)
!328 = !DILocation(line: 32, column: 5, scope: !326)
!329 = !DILocation(line: 33, column: 1, scope: !314)
!330 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !331, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !23}
!333 = !DILocalVariable(name: "intNumber", arg: 1, scope: !330, file: !3, line: 35, type: !23)
!334 = !DILocation(line: 35, column: 24, scope: !330)
!335 = !DILocation(line: 37, column: 20, scope: !330)
!336 = !DILocation(line: 37, column: 5, scope: !330)
!337 = !DILocation(line: 38, column: 1, scope: !330)
!338 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !339, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !341}
!341 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!342 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !338, file: !3, line: 40, type: !341)
!343 = !DILocation(line: 40, column: 28, scope: !338)
!344 = !DILocation(line: 42, column: 21, scope: !338)
!345 = !DILocation(line: 42, column: 5, scope: !338)
!346 = !DILocation(line: 43, column: 1, scope: !338)
!347 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !348, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !350}
!350 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!351 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !347, file: !3, line: 45, type: !350)
!352 = !DILocation(line: 45, column: 28, scope: !347)
!353 = !DILocation(line: 47, column: 20, scope: !347)
!354 = !DILocation(line: 47, column: 5, scope: !347)
!355 = !DILocation(line: 48, column: 1, scope: !347)
!356 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !357, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !359}
!359 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!360 = !DILocalVariable(name: "longNumber", arg: 1, scope: !356, file: !3, line: 50, type: !359)
!361 = !DILocation(line: 50, column: 26, scope: !356)
!362 = !DILocation(line: 52, column: 21, scope: !356)
!363 = !DILocation(line: 52, column: 5, scope: !356)
!364 = !DILocation(line: 53, column: 1, scope: !356)
!365 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !366, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !368}
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !369, line: 27, baseType: !370)
!369 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !371, line: 44, baseType: !359)
!371 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!372 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !365, file: !3, line: 55, type: !368)
!373 = !DILocation(line: 55, column: 33, scope: !365)
!374 = !DILocation(line: 57, column: 29, scope: !365)
!375 = !DILocation(line: 57, column: 5, scope: !365)
!376 = !DILocation(line: 58, column: 1, scope: !365)
!377 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !378, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !70}
!380 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !377, file: !3, line: 60, type: !70)
!381 = !DILocation(line: 60, column: 29, scope: !377)
!382 = !DILocation(line: 62, column: 21, scope: !377)
!383 = !DILocation(line: 62, column: 5, scope: !377)
!384 = !DILocation(line: 63, column: 1, scope: !377)
!385 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !386, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !43}
!388 = !DILocalVariable(name: "charHex", arg: 1, scope: !385, file: !3, line: 65, type: !43)
!389 = !DILocation(line: 65, column: 29, scope: !385)
!390 = !DILocation(line: 67, column: 22, scope: !385)
!391 = !DILocation(line: 67, column: 5, scope: !385)
!392 = !DILocation(line: 68, column: 1, scope: !385)
!393 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !394, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !318}
!396 = !DILocalVariable(name: "wideChar", arg: 1, scope: !393, file: !3, line: 70, type: !318)
!397 = !DILocation(line: 70, column: 29, scope: !393)
!398 = !DILocalVariable(name: "s", scope: !393, file: !3, line: 74, type: !399)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 64, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 2)
!402 = !DILocation(line: 74, column: 13, scope: !393)
!403 = !DILocation(line: 75, column: 16, scope: !393)
!404 = !DILocation(line: 75, column: 9, scope: !393)
!405 = !DILocation(line: 75, column: 14, scope: !393)
!406 = !DILocation(line: 76, column: 9, scope: !393)
!407 = !DILocation(line: 76, column: 14, scope: !393)
!408 = !DILocation(line: 77, column: 21, scope: !393)
!409 = !DILocation(line: 77, column: 5, scope: !393)
!410 = !DILocation(line: 78, column: 1, scope: !393)
!411 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !412, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !7}
!414 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !411, file: !3, line: 80, type: !7)
!415 = !DILocation(line: 80, column: 33, scope: !411)
!416 = !DILocation(line: 82, column: 20, scope: !411)
!417 = !DILocation(line: 82, column: 5, scope: !411)
!418 = !DILocation(line: 83, column: 1, scope: !411)
!419 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !420, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !25}
!422 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !419, file: !3, line: 85, type: !25)
!423 = !DILocation(line: 85, column: 45, scope: !419)
!424 = !DILocation(line: 87, column: 22, scope: !419)
!425 = !DILocation(line: 87, column: 5, scope: !419)
!426 = !DILocation(line: 88, column: 1, scope: !419)
!427 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !428, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !430}
!430 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!431 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !427, file: !3, line: 90, type: !430)
!432 = !DILocation(line: 90, column: 29, scope: !427)
!433 = !DILocation(line: 92, column: 20, scope: !427)
!434 = !DILocation(line: 92, column: 5, scope: !427)
!435 = !DILocation(line: 93, column: 1, scope: !427)
!436 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !437, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !441, line: 100, baseType: !442)
!441 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_445/source_code")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !441, line: 96, size: 64, elements: !443)
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !442, file: !441, line: 98, baseType: !23, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !442, file: !441, line: 99, baseType: !23, size: 32, offset: 32)
!446 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !436, file: !3, line: 95, type: !439)
!447 = !DILocation(line: 95, column: 40, scope: !436)
!448 = !DILocation(line: 97, column: 26, scope: !436)
!449 = !DILocation(line: 97, column: 47, scope: !436)
!450 = !DILocation(line: 97, column: 55, scope: !436)
!451 = !DILocation(line: 97, column: 76, scope: !436)
!452 = !DILocation(line: 97, column: 5, scope: !436)
!453 = !DILocation(line: 98, column: 1, scope: !436)
!454 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !455, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !457, !70}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!458 = !DILocalVariable(name: "bytes", arg: 1, scope: !454, file: !3, line: 100, type: !457)
!459 = !DILocation(line: 100, column: 38, scope: !454)
!460 = !DILocalVariable(name: "numBytes", arg: 2, scope: !454, file: !3, line: 100, type: !70)
!461 = !DILocation(line: 100, column: 52, scope: !454)
!462 = !DILocalVariable(name: "i", scope: !454, file: !3, line: 102, type: !70)
!463 = !DILocation(line: 102, column: 12, scope: !454)
!464 = !DILocation(line: 103, column: 12, scope: !465)
!465 = distinct !DILexicalBlock(scope: !454, file: !3, line: 103, column: 5)
!466 = !DILocation(line: 103, column: 10, scope: !465)
!467 = !DILocation(line: 103, column: 17, scope: !468)
!468 = distinct !DILexicalBlock(scope: !465, file: !3, line: 103, column: 5)
!469 = !DILocation(line: 103, column: 21, scope: !468)
!470 = !DILocation(line: 103, column: 19, scope: !468)
!471 = !DILocation(line: 103, column: 5, scope: !465)
!472 = !DILocation(line: 105, column: 24, scope: !473)
!473 = distinct !DILexicalBlock(scope: !468, file: !3, line: 104, column: 5)
!474 = !DILocation(line: 105, column: 30, scope: !473)
!475 = !DILocation(line: 105, column: 9, scope: !473)
!476 = !DILocation(line: 106, column: 5, scope: !473)
!477 = !DILocation(line: 103, column: 31, scope: !468)
!478 = !DILocation(line: 103, column: 5, scope: !468)
!479 = distinct !{!479, !471, !480, !481}
!480 = !DILocation(line: 106, column: 5, scope: !465)
!481 = !{!"llvm.loop.mustprogress"}
!482 = !DILocation(line: 107, column: 5, scope: !454)
!483 = !DILocation(line: 108, column: 1, scope: !454)
!484 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !485, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!485 = !DISubroutineType(types: !486)
!486 = !{!70, !457, !70, !42}
!487 = !DILocalVariable(name: "bytes", arg: 1, scope: !484, file: !3, line: 113, type: !457)
!488 = !DILocation(line: 113, column: 39, scope: !484)
!489 = !DILocalVariable(name: "numBytes", arg: 2, scope: !484, file: !3, line: 113, type: !70)
!490 = !DILocation(line: 113, column: 53, scope: !484)
!491 = !DILocalVariable(name: "hex", arg: 3, scope: !484, file: !3, line: 113, type: !42)
!492 = !DILocation(line: 113, column: 71, scope: !484)
!493 = !DILocalVariable(name: "numWritten", scope: !484, file: !3, line: 115, type: !70)
!494 = !DILocation(line: 115, column: 12, scope: !484)
!495 = !DILocation(line: 121, column: 5, scope: !484)
!496 = !DILocation(line: 121, column: 12, scope: !484)
!497 = !DILocation(line: 121, column: 25, scope: !484)
!498 = !DILocation(line: 121, column: 23, scope: !484)
!499 = !DILocation(line: 121, column: 34, scope: !484)
!500 = !DILocation(line: 121, column: 37, scope: !484)
!501 = !DILocation(line: 121, column: 67, scope: !484)
!502 = !DILocation(line: 121, column: 70, scope: !484)
!503 = !DILocation(line: 0, scope: !484)
!504 = !DILocalVariable(name: "byte", scope: !505, file: !3, line: 123, type: !23)
!505 = distinct !DILexicalBlock(scope: !484, file: !3, line: 122, column: 5)
!506 = !DILocation(line: 123, column: 13, scope: !505)
!507 = !DILocation(line: 124, column: 17, scope: !505)
!508 = !DILocation(line: 124, column: 25, scope: !505)
!509 = !DILocation(line: 124, column: 23, scope: !505)
!510 = !DILocation(line: 124, column: 9, scope: !505)
!511 = !DILocation(line: 125, column: 45, scope: !505)
!512 = !DILocation(line: 125, column: 29, scope: !505)
!513 = !DILocation(line: 125, column: 9, scope: !505)
!514 = !DILocation(line: 125, column: 15, scope: !505)
!515 = !DILocation(line: 125, column: 27, scope: !505)
!516 = !DILocation(line: 126, column: 9, scope: !505)
!517 = distinct !{!517, !495, !518, !481}
!518 = !DILocation(line: 127, column: 5, scope: !484)
!519 = !DILocation(line: 129, column: 12, scope: !484)
!520 = !DILocation(line: 129, column: 5, scope: !484)
!521 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !522, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DISubroutineType(types: !523)
!523 = !{!70, !457, !70, !317}
!524 = !DILocalVariable(name: "bytes", arg: 1, scope: !521, file: !3, line: 135, type: !457)
!525 = !DILocation(line: 135, column: 41, scope: !521)
!526 = !DILocalVariable(name: "numBytes", arg: 2, scope: !521, file: !3, line: 135, type: !70)
!527 = !DILocation(line: 135, column: 55, scope: !521)
!528 = !DILocalVariable(name: "hex", arg: 3, scope: !521, file: !3, line: 135, type: !317)
!529 = !DILocation(line: 135, column: 76, scope: !521)
!530 = !DILocalVariable(name: "numWritten", scope: !521, file: !3, line: 137, type: !70)
!531 = !DILocation(line: 137, column: 12, scope: !521)
!532 = !DILocation(line: 143, column: 5, scope: !521)
!533 = !DILocation(line: 143, column: 12, scope: !521)
!534 = !DILocation(line: 143, column: 25, scope: !521)
!535 = !DILocation(line: 143, column: 23, scope: !521)
!536 = !DILocation(line: 143, column: 34, scope: !521)
!537 = !DILocation(line: 143, column: 47, scope: !521)
!538 = !DILocation(line: 143, column: 55, scope: !521)
!539 = !DILocation(line: 143, column: 53, scope: !521)
!540 = !DILocation(line: 143, column: 37, scope: !521)
!541 = !DILocation(line: 143, column: 68, scope: !521)
!542 = !DILocation(line: 143, column: 81, scope: !521)
!543 = !DILocation(line: 143, column: 89, scope: !521)
!544 = !DILocation(line: 143, column: 87, scope: !521)
!545 = !DILocation(line: 143, column: 100, scope: !521)
!546 = !DILocation(line: 143, column: 71, scope: !521)
!547 = !DILocation(line: 0, scope: !521)
!548 = !DILocalVariable(name: "byte", scope: !549, file: !3, line: 145, type: !23)
!549 = distinct !DILexicalBlock(scope: !521, file: !3, line: 144, column: 5)
!550 = !DILocation(line: 145, column: 13, scope: !549)
!551 = !DILocation(line: 146, column: 18, scope: !549)
!552 = !DILocation(line: 146, column: 26, scope: !549)
!553 = !DILocation(line: 146, column: 24, scope: !549)
!554 = !DILocation(line: 146, column: 9, scope: !549)
!555 = !DILocation(line: 147, column: 45, scope: !549)
!556 = !DILocation(line: 147, column: 29, scope: !549)
!557 = !DILocation(line: 147, column: 9, scope: !549)
!558 = !DILocation(line: 147, column: 15, scope: !549)
!559 = !DILocation(line: 147, column: 27, scope: !549)
!560 = !DILocation(line: 148, column: 9, scope: !549)
!561 = distinct !{!561, !532, !562, !481}
!562 = !DILocation(line: 149, column: 5, scope: !521)
!563 = !DILocation(line: 151, column: 12, scope: !521)
!564 = !DILocation(line: 151, column: 5, scope: !521)
!565 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !566, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DISubroutineType(types: !567)
!567 = !{!23}
!568 = !DILocation(line: 158, column: 5, scope: !565)
!569 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !566, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!570 = !DILocation(line: 163, column: 5, scope: !569)
!571 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !566, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DILocation(line: 168, column: 13, scope: !571)
!573 = !DILocation(line: 168, column: 20, scope: !571)
!574 = !DILocation(line: 168, column: 5, scope: !571)
!575 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DILocation(line: 187, column: 16, scope: !575)
!577 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 188, column: 16, scope: !577)
!579 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 189, column: 16, scope: !579)
!581 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!582 = !DILocation(line: 190, column: 16, scope: !581)
!583 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DILocation(line: 191, column: 16, scope: !583)
!585 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DILocation(line: 192, column: 16, scope: !585)
!587 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DILocation(line: 193, column: 16, scope: !587)
!589 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DILocation(line: 194, column: 16, scope: !589)
!591 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!592 = !DILocation(line: 195, column: 16, scope: !591)
!593 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DILocation(line: 198, column: 15, scope: !593)
!595 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DILocation(line: 199, column: 15, scope: !595)
!597 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DILocation(line: 200, column: 15, scope: !597)
!599 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DILocation(line: 201, column: 15, scope: !599)
!601 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!602 = !DILocation(line: 202, column: 15, scope: !601)
!603 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DILocation(line: 203, column: 15, scope: !603)
!605 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DILocation(line: 204, column: 15, scope: !605)
!607 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 205, column: 15, scope: !607)
!609 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DILocation(line: 206, column: 15, scope: !609)
