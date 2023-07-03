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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_17_bad() #0 !dbg !52 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i32* %i, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %j, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i8** %data, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !61, metadata !DIExpression()), !dbg !65
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !65
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !65
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !66
  store i8* %arraydecay, i8** %data, align 8, !dbg !67
  store i32 0, i32* %i, align 4, !dbg !68
  br label %for.cond, !dbg !70

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !71
  %cmp = icmp slt i32 %1, 1, !dbg !73
  br i1 %cmp, label %for.body, label %for.end, !dbg !74

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !75, metadata !DIExpression()), !dbg !81
  %2 = load i8*, i8** %data, align 8, !dbg !82
  %call = call i64 @strlen(i8* %2) #7, !dbg !83
  store i64 %call, i64* %dataLen, align 8, !dbg !81
  %3 = load i64, i64* %dataLen, align 8, !dbg !84
  %sub = sub i64 100, %3, !dbg !86
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !87
  br i1 %cmp1, label %if.then, label %if.end19, !dbg !88

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %data, align 8, !dbg !89
  %5 = load i64, i64* %dataLen, align 8, !dbg !92
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !93
  %6 = load i64, i64* %dataLen, align 8, !dbg !94
  %sub2 = sub i64 100, %6, !dbg !95
  %conv = trunc i64 %sub2 to i32, !dbg !96
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !97
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !98
  %cmp4 = icmp ne i8* %call3, null, !dbg !99
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !100

if.then6:                                         ; preds = %if.then
  %8 = load i8*, i8** %data, align 8, !dbg !101
  %call7 = call i64 @strlen(i8* %8) #7, !dbg !103
  store i64 %call7, i64* %dataLen, align 8, !dbg !104
  %9 = load i64, i64* %dataLen, align 8, !dbg !105
  %cmp8 = icmp ugt i64 %9, 0, !dbg !107
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !108

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !109
  %11 = load i64, i64* %dataLen, align 8, !dbg !110
  %sub10 = sub i64 %11, 1, !dbg !111
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !109
  %12 = load i8, i8* %arrayidx, align 1, !dbg !109
  %conv11 = sext i8 %12 to i32, !dbg !109
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !112
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !113

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !114
  %14 = load i64, i64* %dataLen, align 8, !dbg !116
  %sub15 = sub i64 %14, 1, !dbg !117
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !114
  store i8 0, i8* %arrayidx16, align 1, !dbg !118
  br label %if.end, !dbg !119

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !120

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !121
  %15 = load i8*, i8** %data, align 8, !dbg !123
  %16 = load i64, i64* %dataLen, align 8, !dbg !124
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !123
  store i8 0, i8* %arrayidx17, align 1, !dbg !125
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !126

if.end19:                                         ; preds = %if.end18, %for.body
  br label %for.inc, !dbg !127

for.inc:                                          ; preds = %if.end19
  %17 = load i32, i32* %i, align 4, !dbg !128
  %inc = add nsw i32 %17, 1, !dbg !128
  store i32 %inc, i32* %i, align 4, !dbg !128
  br label %for.cond, !dbg !129, !llvm.loop !130

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !133
  br label %for.cond20, !dbg !135

for.cond20:                                       ; preds = %for.inc25, %for.end
  %18 = load i32, i32* %j, align 4, !dbg !136
  %cmp21 = icmp slt i32 %18, 1, !dbg !138
  br i1 %cmp21, label %for.body23, label %for.end27, !dbg !139

for.body23:                                       ; preds = %for.cond20
  %19 = load i8*, i8** %data, align 8, !dbg !140
  %call24 = call i32 (i8*, ...) @printf(i8* %19), !dbg !142
  br label %for.inc25, !dbg !143

for.inc25:                                        ; preds = %for.body23
  %20 = load i32, i32* %j, align 4, !dbg !144
  %inc26 = add nsw i32 %20, 1, !dbg !144
  store i32 %inc26, i32* %j, align 4, !dbg !144
  br label %for.cond20, !dbg !145, !llvm.loop !146

for.end27:                                        ; preds = %for.cond20
  ret void, !dbg !148
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
define dso_local void @goodB2G() #0 !dbg !149 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i32* %i, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i32* %k, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata i8** %data, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !156, metadata !DIExpression()), !dbg !157
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !157
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !157
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !158
  store i8* %arraydecay, i8** %data, align 8, !dbg !159
  store i32 0, i32* %i, align 4, !dbg !160
  br label %for.cond, !dbg !162

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !163
  %cmp = icmp slt i32 %1, 1, !dbg !165
  br i1 %cmp, label %for.body, label %for.end, !dbg !166

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !167, metadata !DIExpression()), !dbg !170
  %2 = load i8*, i8** %data, align 8, !dbg !171
  %call = call i64 @strlen(i8* %2) #7, !dbg !172
  store i64 %call, i64* %dataLen, align 8, !dbg !170
  %3 = load i64, i64* %dataLen, align 8, !dbg !173
  %sub = sub i64 100, %3, !dbg !175
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !176
  br i1 %cmp1, label %if.then, label %if.end19, !dbg !177

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %data, align 8, !dbg !178
  %5 = load i64, i64* %dataLen, align 8, !dbg !181
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !182
  %6 = load i64, i64* %dataLen, align 8, !dbg !183
  %sub2 = sub i64 100, %6, !dbg !184
  %conv = trunc i64 %sub2 to i32, !dbg !185
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !186
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !187
  %cmp4 = icmp ne i8* %call3, null, !dbg !188
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !189

if.then6:                                         ; preds = %if.then
  %8 = load i8*, i8** %data, align 8, !dbg !190
  %call7 = call i64 @strlen(i8* %8) #7, !dbg !192
  store i64 %call7, i64* %dataLen, align 8, !dbg !193
  %9 = load i64, i64* %dataLen, align 8, !dbg !194
  %cmp8 = icmp ugt i64 %9, 0, !dbg !196
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !197

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !198
  %11 = load i64, i64* %dataLen, align 8, !dbg !199
  %sub10 = sub i64 %11, 1, !dbg !200
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !198
  %12 = load i8, i8* %arrayidx, align 1, !dbg !198
  %conv11 = sext i8 %12 to i32, !dbg !198
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !201
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !202

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !203
  %14 = load i64, i64* %dataLen, align 8, !dbg !205
  %sub15 = sub i64 %14, 1, !dbg !206
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !203
  store i8 0, i8* %arrayidx16, align 1, !dbg !207
  br label %if.end, !dbg !208

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !209

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !210
  %15 = load i8*, i8** %data, align 8, !dbg !212
  %16 = load i64, i64* %dataLen, align 8, !dbg !213
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !212
  store i8 0, i8* %arrayidx17, align 1, !dbg !214
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !215

if.end19:                                         ; preds = %if.end18, %for.body
  br label %for.inc, !dbg !216

for.inc:                                          ; preds = %if.end19
  %17 = load i32, i32* %i, align 4, !dbg !217
  %inc = add nsw i32 %17, 1, !dbg !217
  store i32 %inc, i32* %i, align 4, !dbg !217
  br label %for.cond, !dbg !218, !llvm.loop !219

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !221
  br label %for.cond20, !dbg !223

for.cond20:                                       ; preds = %for.inc25, %for.end
  %18 = load i32, i32* %k, align 4, !dbg !224
  %cmp21 = icmp slt i32 %18, 1, !dbg !226
  br i1 %cmp21, label %for.body23, label %for.end27, !dbg !227

for.body23:                                       ; preds = %for.cond20
  %19 = load i8*, i8** %data, align 8, !dbg !228
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %19), !dbg !230
  br label %for.inc25, !dbg !231

for.inc25:                                        ; preds = %for.body23
  %20 = load i32, i32* %k, align 4, !dbg !232
  %inc26 = add nsw i32 %20, 1, !dbg !232
  store i32 %inc26, i32* %k, align 4, !dbg !232
  br label %for.cond20, !dbg !233, !llvm.loop !234

for.end27:                                        ; preds = %for.cond20
  ret void, !dbg !236
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !237 {
entry:
  %h = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i32* %h, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata i32* %j, metadata !240, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i8** %data, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !244, metadata !DIExpression()), !dbg !245
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !245
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !245
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !246
  store i8* %arraydecay, i8** %data, align 8, !dbg !247
  store i32 0, i32* %h, align 4, !dbg !248
  br label %for.cond, !dbg !250

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %h, align 4, !dbg !251
  %cmp = icmp slt i32 %1, 1, !dbg !253
  br i1 %cmp, label %for.body, label %for.end, !dbg !254

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %data, align 8, !dbg !255
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !257
  br label %for.inc, !dbg !258

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %h, align 4, !dbg !259
  %inc = add nsw i32 %3, 1, !dbg !259
  store i32 %inc, i32* %h, align 4, !dbg !259
  br label %for.cond, !dbg !260, !llvm.loop !261

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !263
  br label %for.cond1, !dbg !265

for.cond1:                                        ; preds = %for.inc5, %for.end
  %4 = load i32, i32* %j, align 4, !dbg !266
  %cmp2 = icmp slt i32 %4, 1, !dbg !268
  br i1 %cmp2, label %for.body3, label %for.end7, !dbg !269

for.body3:                                        ; preds = %for.cond1
  %5 = load i8*, i8** %data, align 8, !dbg !270
  %call4 = call i32 (i8*, ...) @printf(i8* %5), !dbg !272
  br label %for.inc5, !dbg !273

for.inc5:                                         ; preds = %for.body3
  %6 = load i32, i32* %j, align 4, !dbg !274
  %inc6 = add nsw i32 %6, 1, !dbg !274
  store i32 %inc6, i32* %j, align 4, !dbg !274
  br label %for.cond1, !dbg !275, !llvm.loop !276

for.end7:                                         ; preds = %for.cond1
  ret void, !dbg !278
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_17_good() #0 !dbg !279 {
entry:
  call void @goodB2G(), !dbg !280
  call void @goodG2B(), !dbg !281
  ret void, !dbg !282
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !283 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !286, metadata !DIExpression()), !dbg !287
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !288
  %0 = load i8*, i8** %line.addr, align 8, !dbg !289
  %cmp = icmp ne i8* %0, null, !dbg !291
  br i1 %cmp, label %if.then, label %if.end, !dbg !292

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !293
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !295
  br label %if.end, !dbg !296

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !297
  ret void, !dbg !298
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !299 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = load i8*, i8** %line.addr, align 8, !dbg !302
  %cmp = icmp ne i8* %0, null, !dbg !304
  br i1 %cmp, label %if.then, label %if.end, !dbg !305

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !306
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !308
  br label %if.end, !dbg !309

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !310
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !311 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !316, metadata !DIExpression()), !dbg !317
  %0 = load i32*, i32** %line.addr, align 8, !dbg !318
  %cmp = icmp ne i32* %0, null, !dbg !320
  br i1 %cmp, label %if.then, label %if.end, !dbg !321

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !322
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !324
  br label %if.end, !dbg !325

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !326
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !327 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !332
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !333
  ret void, !dbg !334
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !335 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !339, metadata !DIExpression()), !dbg !340
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !341
  %conv = sext i16 %0 to i32, !dbg !341
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !342
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !344 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !348, metadata !DIExpression()), !dbg !349
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !350
  %conv = fpext float %0 to double, !dbg !350
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !351
  ret void, !dbg !352
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !353 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !357, metadata !DIExpression()), !dbg !358
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !359
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !360
  ret void, !dbg !361
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !362 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !371
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !372
  ret void, !dbg !373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !374 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !377, metadata !DIExpression()), !dbg !378
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !379
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !380
  ret void, !dbg !381
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !382 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !387
  %conv = sext i8 %0 to i32, !dbg !387
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !388
  ret void, !dbg !389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !390 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !395, metadata !DIExpression()), !dbg !399
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !400
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !401
  store i32 %0, i32* %arrayidx, align 4, !dbg !402
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !403
  store i32 0, i32* %arrayidx1, align 4, !dbg !404
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !408 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !411, metadata !DIExpression()), !dbg !412
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !413
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !414
  ret void, !dbg !415
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !416 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !419, metadata !DIExpression()), !dbg !420
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !421
  %conv = zext i8 %0 to i32, !dbg !421
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !422
  ret void, !dbg !423
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !424 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !428, metadata !DIExpression()), !dbg !429
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !430
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !431
  ret void, !dbg !432
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !433 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !443, metadata !DIExpression()), !dbg !444
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !445
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !446
  %1 = load i32, i32* %intOne, align 4, !dbg !446
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !447
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !448
  %3 = load i32, i32* %intTwo, align 4, !dbg !448
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !449
  ret void, !dbg !450
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !451 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !455, metadata !DIExpression()), !dbg !456
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !457, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.declare(metadata i64* %i, metadata !459, metadata !DIExpression()), !dbg !460
  store i64 0, i64* %i, align 8, !dbg !461
  br label %for.cond, !dbg !463

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !464
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !466
  %cmp = icmp ult i64 %0, %1, !dbg !467
  br i1 %cmp, label %for.body, label %for.end, !dbg !468

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !469
  %3 = load i64, i64* %i, align 8, !dbg !471
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !469
  %4 = load i8, i8* %arrayidx, align 1, !dbg !469
  %conv = zext i8 %4 to i32, !dbg !469
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !472
  br label %for.inc, !dbg !473

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !474
  %inc = add i64 %5, 1, !dbg !474
  store i64 %inc, i64* %i, align 8, !dbg !474
  br label %for.cond, !dbg !475, !llvm.loop !476

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !478
  ret void, !dbg !479
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !480 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !483, metadata !DIExpression()), !dbg !484
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !485, metadata !DIExpression()), !dbg !486
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !487, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !489, metadata !DIExpression()), !dbg !490
  store i64 0, i64* %numWritten, align 8, !dbg !490
  br label %while.cond, !dbg !491

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !492
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !493
  %cmp = icmp ult i64 %0, %1, !dbg !494
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !495

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !496
  %2 = load i16*, i16** %call, align 8, !dbg !496
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !496
  %4 = load i64, i64* %numWritten, align 8, !dbg !496
  %mul = mul i64 2, %4, !dbg !496
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !496
  %5 = load i8, i8* %arrayidx, align 1, !dbg !496
  %conv = sext i8 %5 to i32, !dbg !496
  %idxprom = sext i32 %conv to i64, !dbg !496
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !496
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !496
  %conv2 = zext i16 %6 to i32, !dbg !496
  %and = and i32 %conv2, 4096, !dbg !496
  %tobool = icmp ne i32 %and, 0, !dbg !496
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !497

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !498
  %7 = load i16*, i16** %call3, align 8, !dbg !498
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !498
  %9 = load i64, i64* %numWritten, align 8, !dbg !498
  %mul4 = mul i64 2, %9, !dbg !498
  %add = add i64 %mul4, 1, !dbg !498
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !498
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !498
  %conv6 = sext i8 %10 to i32, !dbg !498
  %idxprom7 = sext i32 %conv6 to i64, !dbg !498
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !498
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !498
  %conv9 = zext i16 %11 to i32, !dbg !498
  %and10 = and i32 %conv9, 4096, !dbg !498
  %tobool11 = icmp ne i32 %and10, 0, !dbg !497
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !499
  br i1 %12, label %while.body, label %while.end, !dbg !491

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !500, metadata !DIExpression()), !dbg !502
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !503
  %14 = load i64, i64* %numWritten, align 8, !dbg !504
  %mul12 = mul i64 2, %14, !dbg !505
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !503
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !506
  %15 = load i32, i32* %byte, align 4, !dbg !507
  %conv15 = trunc i32 %15 to i8, !dbg !508
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !509
  %17 = load i64, i64* %numWritten, align 8, !dbg !510
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !509
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !511
  %18 = load i64, i64* %numWritten, align 8, !dbg !512
  %inc = add i64 %18, 1, !dbg !512
  store i64 %inc, i64* %numWritten, align 8, !dbg !512
  br label %while.cond, !dbg !491, !llvm.loop !513

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !515
  ret i64 %19, !dbg !516
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !517 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !520, metadata !DIExpression()), !dbg !521
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !522, metadata !DIExpression()), !dbg !523
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !524, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !526, metadata !DIExpression()), !dbg !527
  store i64 0, i64* %numWritten, align 8, !dbg !527
  br label %while.cond, !dbg !528

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !529
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !530
  %cmp = icmp ult i64 %0, %1, !dbg !531
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !532

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !533
  %3 = load i64, i64* %numWritten, align 8, !dbg !534
  %mul = mul i64 2, %3, !dbg !535
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !533
  %4 = load i32, i32* %arrayidx, align 4, !dbg !533
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !536
  %tobool = icmp ne i32 %call, 0, !dbg !536
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !537

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !538
  %6 = load i64, i64* %numWritten, align 8, !dbg !539
  %mul1 = mul i64 2, %6, !dbg !540
  %add = add i64 %mul1, 1, !dbg !541
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !538
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !538
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !542
  %tobool4 = icmp ne i32 %call3, 0, !dbg !537
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !543
  br i1 %8, label %while.body, label %while.end, !dbg !528

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !544, metadata !DIExpression()), !dbg !546
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !547
  %10 = load i64, i64* %numWritten, align 8, !dbg !548
  %mul5 = mul i64 2, %10, !dbg !549
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !547
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !550
  %11 = load i32, i32* %byte, align 4, !dbg !551
  %conv = trunc i32 %11 to i8, !dbg !552
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !553
  %13 = load i64, i64* %numWritten, align 8, !dbg !554
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !553
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !555
  %14 = load i64, i64* %numWritten, align 8, !dbg !556
  %inc = add i64 %14, 1, !dbg !556
  store i64 %inc, i64* %numWritten, align 8, !dbg !556
  br label %while.cond, !dbg !528, !llvm.loop !557

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !559
  ret i64 %15, !dbg !560
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !561 {
entry:
  ret i32 1, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !565 {
entry:
  ret i32 0, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !567 {
entry:
  %call = call i32 @rand() #8, !dbg !568
  %rem = srem i32 %call, 2, !dbg !569
  ret i32 %rem, !dbg !570
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !571 {
entry:
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !573 {
entry:
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !575 {
entry:
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !577 {
entry:
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !579 {
entry:
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !581 {
entry:
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !583 {
entry:
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !585 {
entry:
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !587 {
entry:
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !589 {
entry:
  ret void, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !591 {
entry:
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !593 {
entry:
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !595 {
entry:
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !597 {
entry:
  ret void, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !599 {
entry:
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !601 {
entry:
  ret void, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !603 {
entry:
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !605 {
entry:
  ret void, !dbg !606
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_450/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_17.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_450/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_17_bad", scope: !45, file: !45, line: 27, type: !53, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "i", scope: !52, file: !45, line: 29, type: !23)
!56 = !DILocation(line: 29, column: 9, scope: !52)
!57 = !DILocalVariable(name: "j", scope: !52, file: !45, line: 29, type: !23)
!58 = !DILocation(line: 29, column: 11, scope: !52)
!59 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 30, type: !42)
!60 = !DILocation(line: 30, column: 12, scope: !52)
!61 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 31, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 100)
!65 = !DILocation(line: 31, column: 10, scope: !52)
!66 = !DILocation(line: 32, column: 12, scope: !52)
!67 = !DILocation(line: 32, column: 10, scope: !52)
!68 = !DILocation(line: 33, column: 11, scope: !69)
!69 = distinct !DILexicalBlock(scope: !52, file: !45, line: 33, column: 5)
!70 = !DILocation(line: 33, column: 9, scope: !69)
!71 = !DILocation(line: 33, column: 16, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !45, line: 33, column: 5)
!73 = !DILocation(line: 33, column: 18, scope: !72)
!74 = !DILocation(line: 33, column: 5, scope: !69)
!75 = !DILocalVariable(name: "dataLen", scope: !76, file: !45, line: 37, type: !78)
!76 = distinct !DILexicalBlock(scope: !77, file: !45, line: 35, column: 9)
!77 = distinct !DILexicalBlock(scope: !72, file: !45, line: 34, column: 5)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !79, line: 46, baseType: !80)
!79 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!80 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!81 = !DILocation(line: 37, column: 20, scope: !76)
!82 = !DILocation(line: 37, column: 37, scope: !76)
!83 = !DILocation(line: 37, column: 30, scope: !76)
!84 = !DILocation(line: 39, column: 21, scope: !85)
!85 = distinct !DILexicalBlock(scope: !76, file: !45, line: 39, column: 17)
!86 = !DILocation(line: 39, column: 20, scope: !85)
!87 = !DILocation(line: 39, column: 29, scope: !85)
!88 = !DILocation(line: 39, column: 17, scope: !76)
!89 = !DILocation(line: 42, column: 27, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !45, line: 42, column: 21)
!91 = distinct !DILexicalBlock(scope: !85, file: !45, line: 40, column: 13)
!92 = !DILocation(line: 42, column: 32, scope: !90)
!93 = !DILocation(line: 42, column: 31, scope: !90)
!94 = !DILocation(line: 42, column: 51, scope: !90)
!95 = !DILocation(line: 42, column: 50, scope: !90)
!96 = !DILocation(line: 42, column: 41, scope: !90)
!97 = !DILocation(line: 42, column: 61, scope: !90)
!98 = !DILocation(line: 42, column: 21, scope: !90)
!99 = !DILocation(line: 42, column: 68, scope: !90)
!100 = !DILocation(line: 42, column: 21, scope: !91)
!101 = !DILocation(line: 46, column: 38, scope: !102)
!102 = distinct !DILexicalBlock(scope: !90, file: !45, line: 43, column: 17)
!103 = !DILocation(line: 46, column: 31, scope: !102)
!104 = !DILocation(line: 46, column: 29, scope: !102)
!105 = !DILocation(line: 47, column: 25, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !45, line: 47, column: 25)
!107 = !DILocation(line: 47, column: 33, scope: !106)
!108 = !DILocation(line: 47, column: 37, scope: !106)
!109 = !DILocation(line: 47, column: 40, scope: !106)
!110 = !DILocation(line: 47, column: 45, scope: !106)
!111 = !DILocation(line: 47, column: 52, scope: !106)
!112 = !DILocation(line: 47, column: 56, scope: !106)
!113 = !DILocation(line: 47, column: 25, scope: !102)
!114 = !DILocation(line: 49, column: 25, scope: !115)
!115 = distinct !DILexicalBlock(scope: !106, file: !45, line: 48, column: 21)
!116 = !DILocation(line: 49, column: 30, scope: !115)
!117 = !DILocation(line: 49, column: 37, scope: !115)
!118 = !DILocation(line: 49, column: 41, scope: !115)
!119 = !DILocation(line: 50, column: 21, scope: !115)
!120 = !DILocation(line: 51, column: 17, scope: !102)
!121 = !DILocation(line: 54, column: 21, scope: !122)
!122 = distinct !DILexicalBlock(scope: !90, file: !45, line: 53, column: 17)
!123 = !DILocation(line: 56, column: 21, scope: !122)
!124 = !DILocation(line: 56, column: 26, scope: !122)
!125 = !DILocation(line: 56, column: 35, scope: !122)
!126 = !DILocation(line: 58, column: 13, scope: !91)
!127 = !DILocation(line: 60, column: 5, scope: !77)
!128 = !DILocation(line: 33, column: 24, scope: !72)
!129 = !DILocation(line: 33, column: 5, scope: !72)
!130 = distinct !{!130, !74, !131, !132}
!131 = !DILocation(line: 60, column: 5, scope: !69)
!132 = !{!"llvm.loop.mustprogress"}
!133 = !DILocation(line: 61, column: 11, scope: !134)
!134 = distinct !DILexicalBlock(scope: !52, file: !45, line: 61, column: 5)
!135 = !DILocation(line: 61, column: 9, scope: !134)
!136 = !DILocation(line: 61, column: 16, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !45, line: 61, column: 5)
!138 = !DILocation(line: 61, column: 18, scope: !137)
!139 = !DILocation(line: 61, column: 5, scope: !134)
!140 = !DILocation(line: 64, column: 16, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !45, line: 62, column: 5)
!142 = !DILocation(line: 64, column: 9, scope: !141)
!143 = !DILocation(line: 65, column: 5, scope: !141)
!144 = !DILocation(line: 61, column: 24, scope: !137)
!145 = !DILocation(line: 61, column: 5, scope: !137)
!146 = distinct !{!146, !139, !147, !132}
!147 = !DILocation(line: 65, column: 5, scope: !134)
!148 = !DILocation(line: 66, column: 1, scope: !52)
!149 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 73, type: !53, scopeLine: 74, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!150 = !DILocalVariable(name: "i", scope: !149, file: !45, line: 75, type: !23)
!151 = !DILocation(line: 75, column: 9, scope: !149)
!152 = !DILocalVariable(name: "k", scope: !149, file: !45, line: 75, type: !23)
!153 = !DILocation(line: 75, column: 11, scope: !149)
!154 = !DILocalVariable(name: "data", scope: !149, file: !45, line: 76, type: !42)
!155 = !DILocation(line: 76, column: 12, scope: !149)
!156 = !DILocalVariable(name: "dataBuffer", scope: !149, file: !45, line: 77, type: !62)
!157 = !DILocation(line: 77, column: 10, scope: !149)
!158 = !DILocation(line: 78, column: 12, scope: !149)
!159 = !DILocation(line: 78, column: 10, scope: !149)
!160 = !DILocation(line: 79, column: 11, scope: !161)
!161 = distinct !DILexicalBlock(scope: !149, file: !45, line: 79, column: 5)
!162 = !DILocation(line: 79, column: 9, scope: !161)
!163 = !DILocation(line: 79, column: 16, scope: !164)
!164 = distinct !DILexicalBlock(scope: !161, file: !45, line: 79, column: 5)
!165 = !DILocation(line: 79, column: 18, scope: !164)
!166 = !DILocation(line: 79, column: 5, scope: !161)
!167 = !DILocalVariable(name: "dataLen", scope: !168, file: !45, line: 83, type: !78)
!168 = distinct !DILexicalBlock(scope: !169, file: !45, line: 81, column: 9)
!169 = distinct !DILexicalBlock(scope: !164, file: !45, line: 80, column: 5)
!170 = !DILocation(line: 83, column: 20, scope: !168)
!171 = !DILocation(line: 83, column: 37, scope: !168)
!172 = !DILocation(line: 83, column: 30, scope: !168)
!173 = !DILocation(line: 85, column: 21, scope: !174)
!174 = distinct !DILexicalBlock(scope: !168, file: !45, line: 85, column: 17)
!175 = !DILocation(line: 85, column: 20, scope: !174)
!176 = !DILocation(line: 85, column: 29, scope: !174)
!177 = !DILocation(line: 85, column: 17, scope: !168)
!178 = !DILocation(line: 88, column: 27, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !45, line: 88, column: 21)
!180 = distinct !DILexicalBlock(scope: !174, file: !45, line: 86, column: 13)
!181 = !DILocation(line: 88, column: 32, scope: !179)
!182 = !DILocation(line: 88, column: 31, scope: !179)
!183 = !DILocation(line: 88, column: 51, scope: !179)
!184 = !DILocation(line: 88, column: 50, scope: !179)
!185 = !DILocation(line: 88, column: 41, scope: !179)
!186 = !DILocation(line: 88, column: 61, scope: !179)
!187 = !DILocation(line: 88, column: 21, scope: !179)
!188 = !DILocation(line: 88, column: 68, scope: !179)
!189 = !DILocation(line: 88, column: 21, scope: !180)
!190 = !DILocation(line: 92, column: 38, scope: !191)
!191 = distinct !DILexicalBlock(scope: !179, file: !45, line: 89, column: 17)
!192 = !DILocation(line: 92, column: 31, scope: !191)
!193 = !DILocation(line: 92, column: 29, scope: !191)
!194 = !DILocation(line: 93, column: 25, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !45, line: 93, column: 25)
!196 = !DILocation(line: 93, column: 33, scope: !195)
!197 = !DILocation(line: 93, column: 37, scope: !195)
!198 = !DILocation(line: 93, column: 40, scope: !195)
!199 = !DILocation(line: 93, column: 45, scope: !195)
!200 = !DILocation(line: 93, column: 52, scope: !195)
!201 = !DILocation(line: 93, column: 56, scope: !195)
!202 = !DILocation(line: 93, column: 25, scope: !191)
!203 = !DILocation(line: 95, column: 25, scope: !204)
!204 = distinct !DILexicalBlock(scope: !195, file: !45, line: 94, column: 21)
!205 = !DILocation(line: 95, column: 30, scope: !204)
!206 = !DILocation(line: 95, column: 37, scope: !204)
!207 = !DILocation(line: 95, column: 41, scope: !204)
!208 = !DILocation(line: 96, column: 21, scope: !204)
!209 = !DILocation(line: 97, column: 17, scope: !191)
!210 = !DILocation(line: 100, column: 21, scope: !211)
!211 = distinct !DILexicalBlock(scope: !179, file: !45, line: 99, column: 17)
!212 = !DILocation(line: 102, column: 21, scope: !211)
!213 = !DILocation(line: 102, column: 26, scope: !211)
!214 = !DILocation(line: 102, column: 35, scope: !211)
!215 = !DILocation(line: 104, column: 13, scope: !180)
!216 = !DILocation(line: 106, column: 5, scope: !169)
!217 = !DILocation(line: 79, column: 24, scope: !164)
!218 = !DILocation(line: 79, column: 5, scope: !164)
!219 = distinct !{!219, !166, !220, !132}
!220 = !DILocation(line: 106, column: 5, scope: !161)
!221 = !DILocation(line: 107, column: 11, scope: !222)
!222 = distinct !DILexicalBlock(scope: !149, file: !45, line: 107, column: 5)
!223 = !DILocation(line: 107, column: 9, scope: !222)
!224 = !DILocation(line: 107, column: 16, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !45, line: 107, column: 5)
!226 = !DILocation(line: 107, column: 18, scope: !225)
!227 = !DILocation(line: 107, column: 5, scope: !222)
!228 = !DILocation(line: 110, column: 24, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !45, line: 108, column: 5)
!230 = !DILocation(line: 110, column: 9, scope: !229)
!231 = !DILocation(line: 111, column: 5, scope: !229)
!232 = !DILocation(line: 107, column: 24, scope: !225)
!233 = !DILocation(line: 107, column: 5, scope: !225)
!234 = distinct !{!234, !227, !235, !132}
!235 = !DILocation(line: 111, column: 5, scope: !222)
!236 = !DILocation(line: 112, column: 1, scope: !149)
!237 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 115, type: !53, scopeLine: 116, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!238 = !DILocalVariable(name: "h", scope: !237, file: !45, line: 117, type: !23)
!239 = !DILocation(line: 117, column: 9, scope: !237)
!240 = !DILocalVariable(name: "j", scope: !237, file: !45, line: 117, type: !23)
!241 = !DILocation(line: 117, column: 11, scope: !237)
!242 = !DILocalVariable(name: "data", scope: !237, file: !45, line: 118, type: !42)
!243 = !DILocation(line: 118, column: 12, scope: !237)
!244 = !DILocalVariable(name: "dataBuffer", scope: !237, file: !45, line: 119, type: !62)
!245 = !DILocation(line: 119, column: 10, scope: !237)
!246 = !DILocation(line: 120, column: 12, scope: !237)
!247 = !DILocation(line: 120, column: 10, scope: !237)
!248 = !DILocation(line: 121, column: 11, scope: !249)
!249 = distinct !DILexicalBlock(scope: !237, file: !45, line: 121, column: 5)
!250 = !DILocation(line: 121, column: 9, scope: !249)
!251 = !DILocation(line: 121, column: 16, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !45, line: 121, column: 5)
!253 = !DILocation(line: 121, column: 18, scope: !252)
!254 = !DILocation(line: 121, column: 5, scope: !249)
!255 = !DILocation(line: 124, column: 16, scope: !256)
!256 = distinct !DILexicalBlock(scope: !252, file: !45, line: 122, column: 5)
!257 = !DILocation(line: 124, column: 9, scope: !256)
!258 = !DILocation(line: 125, column: 5, scope: !256)
!259 = !DILocation(line: 121, column: 24, scope: !252)
!260 = !DILocation(line: 121, column: 5, scope: !252)
!261 = distinct !{!261, !254, !262, !132}
!262 = !DILocation(line: 125, column: 5, scope: !249)
!263 = !DILocation(line: 126, column: 11, scope: !264)
!264 = distinct !DILexicalBlock(scope: !237, file: !45, line: 126, column: 5)
!265 = !DILocation(line: 126, column: 9, scope: !264)
!266 = !DILocation(line: 126, column: 16, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !45, line: 126, column: 5)
!268 = !DILocation(line: 126, column: 18, scope: !267)
!269 = !DILocation(line: 126, column: 5, scope: !264)
!270 = !DILocation(line: 129, column: 16, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !45, line: 127, column: 5)
!272 = !DILocation(line: 129, column: 9, scope: !271)
!273 = !DILocation(line: 130, column: 5, scope: !271)
!274 = !DILocation(line: 126, column: 24, scope: !267)
!275 = !DILocation(line: 126, column: 5, scope: !267)
!276 = distinct !{!276, !269, !277, !132}
!277 = !DILocation(line: 130, column: 5, scope: !264)
!278 = !DILocation(line: 131, column: 1, scope: !237)
!279 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_17_good", scope: !45, file: !45, line: 133, type: !53, scopeLine: 134, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!280 = !DILocation(line: 135, column: 5, scope: !279)
!281 = !DILocation(line: 136, column: 5, scope: !279)
!282 = !DILocation(line: 137, column: 1, scope: !279)
!283 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !284, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !42}
!286 = !DILocalVariable(name: "line", arg: 1, scope: !283, file: !3, line: 11, type: !42)
!287 = !DILocation(line: 11, column: 25, scope: !283)
!288 = !DILocation(line: 13, column: 1, scope: !283)
!289 = !DILocation(line: 14, column: 8, scope: !290)
!290 = distinct !DILexicalBlock(scope: !283, file: !3, line: 14, column: 8)
!291 = !DILocation(line: 14, column: 13, scope: !290)
!292 = !DILocation(line: 14, column: 8, scope: !283)
!293 = !DILocation(line: 16, column: 24, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !3, line: 15, column: 5)
!295 = !DILocation(line: 16, column: 9, scope: !294)
!296 = !DILocation(line: 17, column: 5, scope: !294)
!297 = !DILocation(line: 18, column: 5, scope: !283)
!298 = !DILocation(line: 19, column: 1, scope: !283)
!299 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !284, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!300 = !DILocalVariable(name: "line", arg: 1, scope: !299, file: !3, line: 20, type: !42)
!301 = !DILocation(line: 20, column: 29, scope: !299)
!302 = !DILocation(line: 22, column: 8, scope: !303)
!303 = distinct !DILexicalBlock(scope: !299, file: !3, line: 22, column: 8)
!304 = !DILocation(line: 22, column: 13, scope: !303)
!305 = !DILocation(line: 22, column: 8, scope: !299)
!306 = !DILocation(line: 24, column: 24, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !3, line: 23, column: 5)
!308 = !DILocation(line: 24, column: 9, scope: !307)
!309 = !DILocation(line: 25, column: 5, scope: !307)
!310 = !DILocation(line: 26, column: 1, scope: !299)
!311 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !312, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !314}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !79, line: 74, baseType: !23)
!316 = !DILocalVariable(name: "line", arg: 1, scope: !311, file: !3, line: 27, type: !314)
!317 = !DILocation(line: 27, column: 29, scope: !311)
!318 = !DILocation(line: 29, column: 8, scope: !319)
!319 = distinct !DILexicalBlock(scope: !311, file: !3, line: 29, column: 8)
!320 = !DILocation(line: 29, column: 13, scope: !319)
!321 = !DILocation(line: 29, column: 8, scope: !311)
!322 = !DILocation(line: 31, column: 27, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !3, line: 30, column: 5)
!324 = !DILocation(line: 31, column: 9, scope: !323)
!325 = !DILocation(line: 32, column: 5, scope: !323)
!326 = !DILocation(line: 33, column: 1, scope: !311)
!327 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !328, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !23}
!330 = !DILocalVariable(name: "intNumber", arg: 1, scope: !327, file: !3, line: 35, type: !23)
!331 = !DILocation(line: 35, column: 24, scope: !327)
!332 = !DILocation(line: 37, column: 20, scope: !327)
!333 = !DILocation(line: 37, column: 5, scope: !327)
!334 = !DILocation(line: 38, column: 1, scope: !327)
!335 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !336, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !338}
!338 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!339 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !335, file: !3, line: 40, type: !338)
!340 = !DILocation(line: 40, column: 28, scope: !335)
!341 = !DILocation(line: 42, column: 21, scope: !335)
!342 = !DILocation(line: 42, column: 5, scope: !335)
!343 = !DILocation(line: 43, column: 1, scope: !335)
!344 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !345, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !347}
!347 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!348 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !344, file: !3, line: 45, type: !347)
!349 = !DILocation(line: 45, column: 28, scope: !344)
!350 = !DILocation(line: 47, column: 20, scope: !344)
!351 = !DILocation(line: 47, column: 5, scope: !344)
!352 = !DILocation(line: 48, column: 1, scope: !344)
!353 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !354, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !356}
!356 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!357 = !DILocalVariable(name: "longNumber", arg: 1, scope: !353, file: !3, line: 50, type: !356)
!358 = !DILocation(line: 50, column: 26, scope: !353)
!359 = !DILocation(line: 52, column: 21, scope: !353)
!360 = !DILocation(line: 52, column: 5, scope: !353)
!361 = !DILocation(line: 53, column: 1, scope: !353)
!362 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !363, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !365}
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !366, line: 27, baseType: !367)
!366 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !368, line: 44, baseType: !356)
!368 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!369 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !362, file: !3, line: 55, type: !365)
!370 = !DILocation(line: 55, column: 33, scope: !362)
!371 = !DILocation(line: 57, column: 29, scope: !362)
!372 = !DILocation(line: 57, column: 5, scope: !362)
!373 = !DILocation(line: 58, column: 1, scope: !362)
!374 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !375, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !78}
!377 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !374, file: !3, line: 60, type: !78)
!378 = !DILocation(line: 60, column: 29, scope: !374)
!379 = !DILocation(line: 62, column: 21, scope: !374)
!380 = !DILocation(line: 62, column: 5, scope: !374)
!381 = !DILocation(line: 63, column: 1, scope: !374)
!382 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !383, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !43}
!385 = !DILocalVariable(name: "charHex", arg: 1, scope: !382, file: !3, line: 65, type: !43)
!386 = !DILocation(line: 65, column: 29, scope: !382)
!387 = !DILocation(line: 67, column: 22, scope: !382)
!388 = !DILocation(line: 67, column: 5, scope: !382)
!389 = !DILocation(line: 68, column: 1, scope: !382)
!390 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !391, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !315}
!393 = !DILocalVariable(name: "wideChar", arg: 1, scope: !390, file: !3, line: 70, type: !315)
!394 = !DILocation(line: 70, column: 29, scope: !390)
!395 = !DILocalVariable(name: "s", scope: !390, file: !3, line: 74, type: !396)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 64, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 2)
!399 = !DILocation(line: 74, column: 13, scope: !390)
!400 = !DILocation(line: 75, column: 16, scope: !390)
!401 = !DILocation(line: 75, column: 9, scope: !390)
!402 = !DILocation(line: 75, column: 14, scope: !390)
!403 = !DILocation(line: 76, column: 9, scope: !390)
!404 = !DILocation(line: 76, column: 14, scope: !390)
!405 = !DILocation(line: 77, column: 21, scope: !390)
!406 = !DILocation(line: 77, column: 5, scope: !390)
!407 = !DILocation(line: 78, column: 1, scope: !390)
!408 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !409, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !7}
!411 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !408, file: !3, line: 80, type: !7)
!412 = !DILocation(line: 80, column: 33, scope: !408)
!413 = !DILocation(line: 82, column: 20, scope: !408)
!414 = !DILocation(line: 82, column: 5, scope: !408)
!415 = !DILocation(line: 83, column: 1, scope: !408)
!416 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !417, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !25}
!419 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !416, file: !3, line: 85, type: !25)
!420 = !DILocation(line: 85, column: 45, scope: !416)
!421 = !DILocation(line: 87, column: 22, scope: !416)
!422 = !DILocation(line: 87, column: 5, scope: !416)
!423 = !DILocation(line: 88, column: 1, scope: !416)
!424 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !425, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !427}
!427 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!428 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !424, file: !3, line: 90, type: !427)
!429 = !DILocation(line: 90, column: 29, scope: !424)
!430 = !DILocation(line: 92, column: 20, scope: !424)
!431 = !DILocation(line: 92, column: 5, scope: !424)
!432 = !DILocation(line: 93, column: 1, scope: !424)
!433 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !434, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !436}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !438, line: 100, baseType: !439)
!438 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_450/source_code")
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !438, line: 96, size: 64, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !439, file: !438, line: 98, baseType: !23, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !439, file: !438, line: 99, baseType: !23, size: 32, offset: 32)
!443 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !433, file: !3, line: 95, type: !436)
!444 = !DILocation(line: 95, column: 40, scope: !433)
!445 = !DILocation(line: 97, column: 26, scope: !433)
!446 = !DILocation(line: 97, column: 47, scope: !433)
!447 = !DILocation(line: 97, column: 55, scope: !433)
!448 = !DILocation(line: 97, column: 76, scope: !433)
!449 = !DILocation(line: 97, column: 5, scope: !433)
!450 = !DILocation(line: 98, column: 1, scope: !433)
!451 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !452, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !454, !78}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!455 = !DILocalVariable(name: "bytes", arg: 1, scope: !451, file: !3, line: 100, type: !454)
!456 = !DILocation(line: 100, column: 38, scope: !451)
!457 = !DILocalVariable(name: "numBytes", arg: 2, scope: !451, file: !3, line: 100, type: !78)
!458 = !DILocation(line: 100, column: 52, scope: !451)
!459 = !DILocalVariable(name: "i", scope: !451, file: !3, line: 102, type: !78)
!460 = !DILocation(line: 102, column: 12, scope: !451)
!461 = !DILocation(line: 103, column: 12, scope: !462)
!462 = distinct !DILexicalBlock(scope: !451, file: !3, line: 103, column: 5)
!463 = !DILocation(line: 103, column: 10, scope: !462)
!464 = !DILocation(line: 103, column: 17, scope: !465)
!465 = distinct !DILexicalBlock(scope: !462, file: !3, line: 103, column: 5)
!466 = !DILocation(line: 103, column: 21, scope: !465)
!467 = !DILocation(line: 103, column: 19, scope: !465)
!468 = !DILocation(line: 103, column: 5, scope: !462)
!469 = !DILocation(line: 105, column: 24, scope: !470)
!470 = distinct !DILexicalBlock(scope: !465, file: !3, line: 104, column: 5)
!471 = !DILocation(line: 105, column: 30, scope: !470)
!472 = !DILocation(line: 105, column: 9, scope: !470)
!473 = !DILocation(line: 106, column: 5, scope: !470)
!474 = !DILocation(line: 103, column: 31, scope: !465)
!475 = !DILocation(line: 103, column: 5, scope: !465)
!476 = distinct !{!476, !468, !477, !132}
!477 = !DILocation(line: 106, column: 5, scope: !462)
!478 = !DILocation(line: 107, column: 5, scope: !451)
!479 = !DILocation(line: 108, column: 1, scope: !451)
!480 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !481, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!481 = !DISubroutineType(types: !482)
!482 = !{!78, !454, !78, !42}
!483 = !DILocalVariable(name: "bytes", arg: 1, scope: !480, file: !3, line: 113, type: !454)
!484 = !DILocation(line: 113, column: 39, scope: !480)
!485 = !DILocalVariable(name: "numBytes", arg: 2, scope: !480, file: !3, line: 113, type: !78)
!486 = !DILocation(line: 113, column: 53, scope: !480)
!487 = !DILocalVariable(name: "hex", arg: 3, scope: !480, file: !3, line: 113, type: !42)
!488 = !DILocation(line: 113, column: 71, scope: !480)
!489 = !DILocalVariable(name: "numWritten", scope: !480, file: !3, line: 115, type: !78)
!490 = !DILocation(line: 115, column: 12, scope: !480)
!491 = !DILocation(line: 121, column: 5, scope: !480)
!492 = !DILocation(line: 121, column: 12, scope: !480)
!493 = !DILocation(line: 121, column: 25, scope: !480)
!494 = !DILocation(line: 121, column: 23, scope: !480)
!495 = !DILocation(line: 121, column: 34, scope: !480)
!496 = !DILocation(line: 121, column: 37, scope: !480)
!497 = !DILocation(line: 121, column: 67, scope: !480)
!498 = !DILocation(line: 121, column: 70, scope: !480)
!499 = !DILocation(line: 0, scope: !480)
!500 = !DILocalVariable(name: "byte", scope: !501, file: !3, line: 123, type: !23)
!501 = distinct !DILexicalBlock(scope: !480, file: !3, line: 122, column: 5)
!502 = !DILocation(line: 123, column: 13, scope: !501)
!503 = !DILocation(line: 124, column: 17, scope: !501)
!504 = !DILocation(line: 124, column: 25, scope: !501)
!505 = !DILocation(line: 124, column: 23, scope: !501)
!506 = !DILocation(line: 124, column: 9, scope: !501)
!507 = !DILocation(line: 125, column: 45, scope: !501)
!508 = !DILocation(line: 125, column: 29, scope: !501)
!509 = !DILocation(line: 125, column: 9, scope: !501)
!510 = !DILocation(line: 125, column: 15, scope: !501)
!511 = !DILocation(line: 125, column: 27, scope: !501)
!512 = !DILocation(line: 126, column: 9, scope: !501)
!513 = distinct !{!513, !491, !514, !132}
!514 = !DILocation(line: 127, column: 5, scope: !480)
!515 = !DILocation(line: 129, column: 12, scope: !480)
!516 = !DILocation(line: 129, column: 5, scope: !480)
!517 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !518, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!518 = !DISubroutineType(types: !519)
!519 = !{!78, !454, !78, !314}
!520 = !DILocalVariable(name: "bytes", arg: 1, scope: !517, file: !3, line: 135, type: !454)
!521 = !DILocation(line: 135, column: 41, scope: !517)
!522 = !DILocalVariable(name: "numBytes", arg: 2, scope: !517, file: !3, line: 135, type: !78)
!523 = !DILocation(line: 135, column: 55, scope: !517)
!524 = !DILocalVariable(name: "hex", arg: 3, scope: !517, file: !3, line: 135, type: !314)
!525 = !DILocation(line: 135, column: 76, scope: !517)
!526 = !DILocalVariable(name: "numWritten", scope: !517, file: !3, line: 137, type: !78)
!527 = !DILocation(line: 137, column: 12, scope: !517)
!528 = !DILocation(line: 143, column: 5, scope: !517)
!529 = !DILocation(line: 143, column: 12, scope: !517)
!530 = !DILocation(line: 143, column: 25, scope: !517)
!531 = !DILocation(line: 143, column: 23, scope: !517)
!532 = !DILocation(line: 143, column: 34, scope: !517)
!533 = !DILocation(line: 143, column: 47, scope: !517)
!534 = !DILocation(line: 143, column: 55, scope: !517)
!535 = !DILocation(line: 143, column: 53, scope: !517)
!536 = !DILocation(line: 143, column: 37, scope: !517)
!537 = !DILocation(line: 143, column: 68, scope: !517)
!538 = !DILocation(line: 143, column: 81, scope: !517)
!539 = !DILocation(line: 143, column: 89, scope: !517)
!540 = !DILocation(line: 143, column: 87, scope: !517)
!541 = !DILocation(line: 143, column: 100, scope: !517)
!542 = !DILocation(line: 143, column: 71, scope: !517)
!543 = !DILocation(line: 0, scope: !517)
!544 = !DILocalVariable(name: "byte", scope: !545, file: !3, line: 145, type: !23)
!545 = distinct !DILexicalBlock(scope: !517, file: !3, line: 144, column: 5)
!546 = !DILocation(line: 145, column: 13, scope: !545)
!547 = !DILocation(line: 146, column: 18, scope: !545)
!548 = !DILocation(line: 146, column: 26, scope: !545)
!549 = !DILocation(line: 146, column: 24, scope: !545)
!550 = !DILocation(line: 146, column: 9, scope: !545)
!551 = !DILocation(line: 147, column: 45, scope: !545)
!552 = !DILocation(line: 147, column: 29, scope: !545)
!553 = !DILocation(line: 147, column: 9, scope: !545)
!554 = !DILocation(line: 147, column: 15, scope: !545)
!555 = !DILocation(line: 147, column: 27, scope: !545)
!556 = !DILocation(line: 148, column: 9, scope: !545)
!557 = distinct !{!557, !528, !558, !132}
!558 = !DILocation(line: 149, column: 5, scope: !517)
!559 = !DILocation(line: 151, column: 12, scope: !517)
!560 = !DILocation(line: 151, column: 5, scope: !517)
!561 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !562, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!562 = !DISubroutineType(types: !563)
!563 = !{!23}
!564 = !DILocation(line: 158, column: 5, scope: !561)
!565 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !562, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DILocation(line: 163, column: 5, scope: !565)
!567 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !562, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DILocation(line: 168, column: 13, scope: !567)
!569 = !DILocation(line: 168, column: 20, scope: !567)
!570 = !DILocation(line: 168, column: 5, scope: !567)
!571 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DILocation(line: 187, column: 16, scope: !571)
!573 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DILocation(line: 188, column: 16, scope: !573)
!575 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DILocation(line: 189, column: 16, scope: !575)
!577 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 190, column: 16, scope: !577)
!579 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 191, column: 16, scope: !579)
!581 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!582 = !DILocation(line: 192, column: 16, scope: !581)
!583 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DILocation(line: 193, column: 16, scope: !583)
!585 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DILocation(line: 194, column: 16, scope: !585)
!587 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DILocation(line: 195, column: 16, scope: !587)
!589 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DILocation(line: 198, column: 15, scope: !589)
!591 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!592 = !DILocation(line: 199, column: 15, scope: !591)
!593 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DILocation(line: 200, column: 15, scope: !593)
!595 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DILocation(line: 201, column: 15, scope: !595)
!597 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DILocation(line: 202, column: 15, scope: !597)
!599 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DILocation(line: 203, column: 15, scope: !599)
!601 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!602 = !DILocation(line: 204, column: 15, scope: !601)
!603 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DILocation(line: 205, column: 15, scope: !603)
!605 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DILocation(line: 206, column: 15, scope: !605)
