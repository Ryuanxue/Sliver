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
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_17_bad() #0 !dbg !52 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i24 = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
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

for.cond20:                                       ; preds = %for.inc38, %for.end
  %18 = load i32, i32* %j, align 4, !dbg !136
  %cmp21 = icmp slt i32 %18, 1, !dbg !138
  br i1 %cmp21, label %for.body23, label %for.end40, !dbg !139

for.body23:                                       ; preds = %for.cond20
  call void @llvm.dbg.declare(metadata i32* %i24, metadata !140, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %n, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !146, metadata !DIExpression()), !dbg !147
  %19 = load i8*, i8** %data, align 8, !dbg !148
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !150
  %cmp26 = icmp eq i32 %call25, 1, !dbg !151
  br i1 %cmp26, label %if.then28, label %if.end37, !dbg !152

if.then28:                                        ; preds = %for.body23
  store i32 0, i32* %intVariable, align 4, !dbg !153
  store i32 0, i32* %i24, align 4, !dbg !155
  br label %for.cond29, !dbg !157

for.cond29:                                       ; preds = %for.inc34, %if.then28
  %20 = load i32, i32* %i24, align 4, !dbg !158
  %21 = load i32, i32* %n, align 4, !dbg !160
  %cmp30 = icmp slt i32 %20, %21, !dbg !161
  br i1 %cmp30, label %for.body32, label %for.end36, !dbg !162

for.body32:                                       ; preds = %for.cond29
  %22 = load i32, i32* %intVariable, align 4, !dbg !163
  %inc33 = add nsw i32 %22, 1, !dbg !163
  store i32 %inc33, i32* %intVariable, align 4, !dbg !163
  br label %for.inc34, !dbg !165

for.inc34:                                        ; preds = %for.body32
  %23 = load i32, i32* %i24, align 4, !dbg !166
  %inc35 = add nsw i32 %23, 1, !dbg !166
  store i32 %inc35, i32* %i24, align 4, !dbg !166
  br label %for.cond29, !dbg !167, !llvm.loop !168

for.end36:                                        ; preds = %for.cond29
  %24 = load i32, i32* %intVariable, align 4, !dbg !170
  call void @printIntLine(i32 %24), !dbg !171
  br label %if.end37, !dbg !172

if.end37:                                         ; preds = %for.end36, %for.body23
  br label %for.inc38, !dbg !173

for.inc38:                                        ; preds = %if.end37
  %25 = load i32, i32* %j, align 4, !dbg !174
  %inc39 = add nsw i32 %25, 1, !dbg !174
  store i32 %inc39, i32* %j, align 4, !dbg !174
  br label %for.cond20, !dbg !175, !llvm.loop !176

for.end40:                                        ; preds = %for.cond20
  ret void, !dbg !178
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !179 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i24 = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i32* %k, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata i8** %data, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !186, metadata !DIExpression()), !dbg !187
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !187
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !187
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !188
  store i8* %arraydecay, i8** %data, align 8, !dbg !189
  store i32 0, i32* %i, align 4, !dbg !190
  br label %for.cond, !dbg !192

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !193
  %cmp = icmp slt i32 %1, 1, !dbg !195
  br i1 %cmp, label %for.body, label %for.end, !dbg !196

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !197, metadata !DIExpression()), !dbg !200
  %2 = load i8*, i8** %data, align 8, !dbg !201
  %call = call i64 @strlen(i8* %2) #7, !dbg !202
  store i64 %call, i64* %dataLen, align 8, !dbg !200
  %3 = load i64, i64* %dataLen, align 8, !dbg !203
  %sub = sub i64 100, %3, !dbg !205
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !206
  br i1 %cmp1, label %if.then, label %if.end19, !dbg !207

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %data, align 8, !dbg !208
  %5 = load i64, i64* %dataLen, align 8, !dbg !211
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !212
  %6 = load i64, i64* %dataLen, align 8, !dbg !213
  %sub2 = sub i64 100, %6, !dbg !214
  %conv = trunc i64 %sub2 to i32, !dbg !215
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !216
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !217
  %cmp4 = icmp ne i8* %call3, null, !dbg !218
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !219

if.then6:                                         ; preds = %if.then
  %8 = load i8*, i8** %data, align 8, !dbg !220
  %call7 = call i64 @strlen(i8* %8) #7, !dbg !222
  store i64 %call7, i64* %dataLen, align 8, !dbg !223
  %9 = load i64, i64* %dataLen, align 8, !dbg !224
  %cmp8 = icmp ugt i64 %9, 0, !dbg !226
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !227

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !228
  %11 = load i64, i64* %dataLen, align 8, !dbg !229
  %sub10 = sub i64 %11, 1, !dbg !230
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !228
  %12 = load i8, i8* %arrayidx, align 1, !dbg !228
  %conv11 = sext i8 %12 to i32, !dbg !228
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !231
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !232

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !233
  %14 = load i64, i64* %dataLen, align 8, !dbg !235
  %sub15 = sub i64 %14, 1, !dbg !236
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !233
  store i8 0, i8* %arrayidx16, align 1, !dbg !237
  br label %if.end, !dbg !238

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !239

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !240
  %15 = load i8*, i8** %data, align 8, !dbg !242
  %16 = load i64, i64* %dataLen, align 8, !dbg !243
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !242
  store i8 0, i8* %arrayidx17, align 1, !dbg !244
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !245

if.end19:                                         ; preds = %if.end18, %for.body
  br label %for.inc, !dbg !246

for.inc:                                          ; preds = %if.end19
  %17 = load i32, i32* %i, align 4, !dbg !247
  %inc = add nsw i32 %17, 1, !dbg !247
  store i32 %inc, i32* %i, align 4, !dbg !247
  br label %for.cond, !dbg !248, !llvm.loop !249

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !251
  br label %for.cond20, !dbg !253

for.cond20:                                       ; preds = %for.inc42, %for.end
  %18 = load i32, i32* %k, align 4, !dbg !254
  %cmp21 = icmp slt i32 %18, 1, !dbg !256
  br i1 %cmp21, label %for.body23, label %for.end44, !dbg !257

for.body23:                                       ; preds = %for.cond20
  call void @llvm.dbg.declare(metadata i32* %i24, metadata !258, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata i32* %n, metadata !262, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !264, metadata !DIExpression()), !dbg !265
  %19 = load i8*, i8** %data, align 8, !dbg !266
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !268
  %cmp26 = icmp eq i32 %call25, 1, !dbg !269
  br i1 %cmp26, label %if.then28, label %if.end41, !dbg !270

if.then28:                                        ; preds = %for.body23
  %20 = load i32, i32* %n, align 4, !dbg !271
  %cmp29 = icmp slt i32 %20, 10000, !dbg !274
  br i1 %cmp29, label %if.then31, label %if.end40, !dbg !275

if.then31:                                        ; preds = %if.then28
  store i32 0, i32* %intVariable, align 4, !dbg !276
  store i32 0, i32* %i24, align 4, !dbg !278
  br label %for.cond32, !dbg !280

for.cond32:                                       ; preds = %for.inc37, %if.then31
  %21 = load i32, i32* %i24, align 4, !dbg !281
  %22 = load i32, i32* %n, align 4, !dbg !283
  %cmp33 = icmp slt i32 %21, %22, !dbg !284
  br i1 %cmp33, label %for.body35, label %for.end39, !dbg !285

for.body35:                                       ; preds = %for.cond32
  %23 = load i32, i32* %intVariable, align 4, !dbg !286
  %inc36 = add nsw i32 %23, 1, !dbg !286
  store i32 %inc36, i32* %intVariable, align 4, !dbg !286
  br label %for.inc37, !dbg !288

for.inc37:                                        ; preds = %for.body35
  %24 = load i32, i32* %i24, align 4, !dbg !289
  %inc38 = add nsw i32 %24, 1, !dbg !289
  store i32 %inc38, i32* %i24, align 4, !dbg !289
  br label %for.cond32, !dbg !290, !llvm.loop !291

for.end39:                                        ; preds = %for.cond32
  %25 = load i32, i32* %intVariable, align 4, !dbg !293
  call void @printIntLine(i32 %25), !dbg !294
  br label %if.end40, !dbg !295

if.end40:                                         ; preds = %for.end39, %if.then28
  br label %if.end41, !dbg !296

if.end41:                                         ; preds = %if.end40, %for.body23
  br label %for.inc42, !dbg !297

for.inc42:                                        ; preds = %if.end41
  %26 = load i32, i32* %k, align 4, !dbg !298
  %inc43 = add nsw i32 %26, 1, !dbg !298
  store i32 %inc43, i32* %k, align 4, !dbg !298
  br label %for.cond20, !dbg !299, !llvm.loop !300

for.end44:                                        ; preds = %for.cond20
  ret void, !dbg !302
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !303 {
entry:
  %h = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %h, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.declare(metadata i32* %j, metadata !306, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.declare(metadata i8** %data, metadata !308, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !310, metadata !DIExpression()), !dbg !311
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !311
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !311
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !312
  store i8* %arraydecay, i8** %data, align 8, !dbg !313
  store i32 0, i32* %h, align 4, !dbg !314
  br label %for.cond, !dbg !316

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %h, align 4, !dbg !317
  %cmp = icmp slt i32 %1, 1, !dbg !319
  br i1 %cmp, label %for.body, label %for.end, !dbg !320

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %data, align 8, !dbg !321
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !323
  br label %for.inc, !dbg !324

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %h, align 4, !dbg !325
  %inc = add nsw i32 %3, 1, !dbg !325
  store i32 %inc, i32* %h, align 4, !dbg !325
  br label %for.cond, !dbg !326, !llvm.loop !327

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !329
  br label %for.cond1, !dbg !331

for.cond1:                                        ; preds = %for.inc13, %for.end
  %4 = load i32, i32* %j, align 4, !dbg !332
  %cmp2 = icmp slt i32 %4, 1, !dbg !334
  br i1 %cmp2, label %for.body3, label %for.end15, !dbg !335

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.declare(metadata i32* %i, metadata !336, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.declare(metadata i32* %n, metadata !340, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !342, metadata !DIExpression()), !dbg !343
  %5 = load i8*, i8** %data, align 8, !dbg !344
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !346
  %cmp5 = icmp eq i32 %call4, 1, !dbg !347
  br i1 %cmp5, label %if.then, label %if.end, !dbg !348

if.then:                                          ; preds = %for.body3
  store i32 0, i32* %intVariable, align 4, !dbg !349
  store i32 0, i32* %i, align 4, !dbg !351
  br label %for.cond6, !dbg !353

for.cond6:                                        ; preds = %for.inc10, %if.then
  %6 = load i32, i32* %i, align 4, !dbg !354
  %7 = load i32, i32* %n, align 4, !dbg !356
  %cmp7 = icmp slt i32 %6, %7, !dbg !357
  br i1 %cmp7, label %for.body8, label %for.end12, !dbg !358

for.body8:                                        ; preds = %for.cond6
  %8 = load i32, i32* %intVariable, align 4, !dbg !359
  %inc9 = add nsw i32 %8, 1, !dbg !359
  store i32 %inc9, i32* %intVariable, align 4, !dbg !359
  br label %for.inc10, !dbg !361

for.inc10:                                        ; preds = %for.body8
  %9 = load i32, i32* %i, align 4, !dbg !362
  %inc11 = add nsw i32 %9, 1, !dbg !362
  store i32 %inc11, i32* %i, align 4, !dbg !362
  br label %for.cond6, !dbg !363, !llvm.loop !364

for.end12:                                        ; preds = %for.cond6
  %10 = load i32, i32* %intVariable, align 4, !dbg !366
  call void @printIntLine(i32 %10), !dbg !367
  br label %if.end, !dbg !368

if.end:                                           ; preds = %for.end12, %for.body3
  br label %for.inc13, !dbg !369

for.inc13:                                        ; preds = %if.end
  %11 = load i32, i32* %j, align 4, !dbg !370
  %inc14 = add nsw i32 %11, 1, !dbg !370
  store i32 %inc14, i32* %j, align 4, !dbg !370
  br label %for.cond1, !dbg !371, !llvm.loop !372

for.end15:                                        ; preds = %for.cond1
  ret void, !dbg !374
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_17_good() #0 !dbg !375 {
entry:
  call void @goodB2G(), !dbg !376
  call void @goodG2B(), !dbg !377
  ret void, !dbg !378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !379 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !382, metadata !DIExpression()), !dbg !383
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !384
  %0 = load i8*, i8** %line.addr, align 8, !dbg !385
  %cmp = icmp ne i8* %0, null, !dbg !387
  br i1 %cmp, label %if.then, label %if.end, !dbg !388

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !389
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !391
  br label %if.end, !dbg !392

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !393
  ret void, !dbg !394
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !395 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !396, metadata !DIExpression()), !dbg !397
  %0 = load i8*, i8** %line.addr, align 8, !dbg !398
  %cmp = icmp ne i8* %0, null, !dbg !400
  br i1 %cmp, label %if.then, label %if.end, !dbg !401

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !402
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !404
  br label %if.end, !dbg !405

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !406
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !407 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !412, metadata !DIExpression()), !dbg !413
  %0 = load i32*, i32** %line.addr, align 8, !dbg !414
  %cmp = icmp ne i32* %0, null, !dbg !416
  br i1 %cmp, label %if.then, label %if.end, !dbg !417

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !418
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !420
  br label %if.end, !dbg !421

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !422
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !423 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !426, metadata !DIExpression()), !dbg !427
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !428
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !429
  ret void, !dbg !430
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !431 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !435, metadata !DIExpression()), !dbg !436
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !437
  %conv = sext i16 %0 to i32, !dbg !437
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !438
  ret void, !dbg !439
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !440 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !444, metadata !DIExpression()), !dbg !445
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !446
  %conv = fpext float %0 to double, !dbg !446
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !447
  ret void, !dbg !448
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !449 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !453, metadata !DIExpression()), !dbg !454
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !455
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !456
  ret void, !dbg !457
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !458 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !465, metadata !DIExpression()), !dbg !466
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !467
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !468
  ret void, !dbg !469
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !470 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !473, metadata !DIExpression()), !dbg !474
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !475
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !476
  ret void, !dbg !477
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !478 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !481, metadata !DIExpression()), !dbg !482
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !483
  %conv = sext i8 %0 to i32, !dbg !483
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !484
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !486 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !489, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !491, metadata !DIExpression()), !dbg !495
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !496
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !497
  store i32 %0, i32* %arrayidx, align 4, !dbg !498
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !499
  store i32 0, i32* %arrayidx1, align 4, !dbg !500
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !501
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !502
  ret void, !dbg !503
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !504 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !507, metadata !DIExpression()), !dbg !508
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !509
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !510
  ret void, !dbg !511
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !512 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !515, metadata !DIExpression()), !dbg !516
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !517
  %conv = zext i8 %0 to i32, !dbg !517
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !518
  ret void, !dbg !519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !520 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !524, metadata !DIExpression()), !dbg !525
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !526
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !527
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !529 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !539, metadata !DIExpression()), !dbg !540
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !541
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !542
  %1 = load i32, i32* %intOne, align 4, !dbg !542
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !543
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !544
  %3 = load i32, i32* %intTwo, align 4, !dbg !544
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !545
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !547 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !551, metadata !DIExpression()), !dbg !552
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !553, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.declare(metadata i64* %i, metadata !555, metadata !DIExpression()), !dbg !556
  store i64 0, i64* %i, align 8, !dbg !557
  br label %for.cond, !dbg !559

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !560
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !562
  %cmp = icmp ult i64 %0, %1, !dbg !563
  br i1 %cmp, label %for.body, label %for.end, !dbg !564

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !565
  %3 = load i64, i64* %i, align 8, !dbg !567
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !565
  %4 = load i8, i8* %arrayidx, align 1, !dbg !565
  %conv = zext i8 %4 to i32, !dbg !565
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !568
  br label %for.inc, !dbg !569

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !570
  %inc = add i64 %5, 1, !dbg !570
  store i64 %inc, i64* %i, align 8, !dbg !570
  br label %for.cond, !dbg !571, !llvm.loop !572

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !574
  ret void, !dbg !575
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !576 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !579, metadata !DIExpression()), !dbg !580
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !581, metadata !DIExpression()), !dbg !582
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !583, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !585, metadata !DIExpression()), !dbg !586
  store i64 0, i64* %numWritten, align 8, !dbg !586
  br label %while.cond, !dbg !587

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !588
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !589
  %cmp = icmp ult i64 %0, %1, !dbg !590
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !591

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !592
  %2 = load i16*, i16** %call, align 8, !dbg !592
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !592
  %4 = load i64, i64* %numWritten, align 8, !dbg !592
  %mul = mul i64 2, %4, !dbg !592
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !592
  %5 = load i8, i8* %arrayidx, align 1, !dbg !592
  %conv = sext i8 %5 to i32, !dbg !592
  %idxprom = sext i32 %conv to i64, !dbg !592
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !592
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !592
  %conv2 = zext i16 %6 to i32, !dbg !592
  %and = and i32 %conv2, 4096, !dbg !592
  %tobool = icmp ne i32 %and, 0, !dbg !592
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !593

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !594
  %7 = load i16*, i16** %call3, align 8, !dbg !594
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !594
  %9 = load i64, i64* %numWritten, align 8, !dbg !594
  %mul4 = mul i64 2, %9, !dbg !594
  %add = add i64 %mul4, 1, !dbg !594
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !594
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !594
  %conv6 = sext i8 %10 to i32, !dbg !594
  %idxprom7 = sext i32 %conv6 to i64, !dbg !594
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !594
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !594
  %conv9 = zext i16 %11 to i32, !dbg !594
  %and10 = and i32 %conv9, 4096, !dbg !594
  %tobool11 = icmp ne i32 %and10, 0, !dbg !593
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !595
  br i1 %12, label %while.body, label %while.end, !dbg !587

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !596, metadata !DIExpression()), !dbg !598
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !599
  %14 = load i64, i64* %numWritten, align 8, !dbg !600
  %mul12 = mul i64 2, %14, !dbg !601
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !599
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !602
  %15 = load i32, i32* %byte, align 4, !dbg !603
  %conv15 = trunc i32 %15 to i8, !dbg !604
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !605
  %17 = load i64, i64* %numWritten, align 8, !dbg !606
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !605
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !607
  %18 = load i64, i64* %numWritten, align 8, !dbg !608
  %inc = add i64 %18, 1, !dbg !608
  store i64 %inc, i64* %numWritten, align 8, !dbg !608
  br label %while.cond, !dbg !587, !llvm.loop !609

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !611
  ret i64 %19, !dbg !612
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !613 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !616, metadata !DIExpression()), !dbg !617
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !618, metadata !DIExpression()), !dbg !619
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !620, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !622, metadata !DIExpression()), !dbg !623
  store i64 0, i64* %numWritten, align 8, !dbg !623
  br label %while.cond, !dbg !624

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !625
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !626
  %cmp = icmp ult i64 %0, %1, !dbg !627
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !628

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !629
  %3 = load i64, i64* %numWritten, align 8, !dbg !630
  %mul = mul i64 2, %3, !dbg !631
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !629
  %4 = load i32, i32* %arrayidx, align 4, !dbg !629
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !632
  %tobool = icmp ne i32 %call, 0, !dbg !632
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !633

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !634
  %6 = load i64, i64* %numWritten, align 8, !dbg !635
  %mul1 = mul i64 2, %6, !dbg !636
  %add = add i64 %mul1, 1, !dbg !637
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !634
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !634
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !638
  %tobool4 = icmp ne i32 %call3, 0, !dbg !633
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !639
  br i1 %8, label %while.body, label %while.end, !dbg !624

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !640, metadata !DIExpression()), !dbg !642
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !643
  %10 = load i64, i64* %numWritten, align 8, !dbg !644
  %mul5 = mul i64 2, %10, !dbg !645
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !643
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !646
  %11 = load i32, i32* %byte, align 4, !dbg !647
  %conv = trunc i32 %11 to i8, !dbg !648
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !649
  %13 = load i64, i64* %numWritten, align 8, !dbg !650
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !649
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !651
  %14 = load i64, i64* %numWritten, align 8, !dbg !652
  %inc = add i64 %14, 1, !dbg !652
  store i64 %inc, i64* %numWritten, align 8, !dbg !652
  br label %while.cond, !dbg !624, !llvm.loop !653

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !655
  ret i64 %15, !dbg !656
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !657 {
entry:
  ret i32 1, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !661 {
entry:
  ret i32 0, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !663 {
entry:
  %call = call i32 @rand() #8, !dbg !664
  %rem = srem i32 %call, 2, !dbg !665
  ret i32 %rem, !dbg !666
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !671 {
entry:
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !673 {
entry:
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !675 {
entry:
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !677 {
entry:
  ret void, !dbg !678
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !679 {
entry:
  ret void, !dbg !680
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !681 {
entry:
  ret void, !dbg !682
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !683 {
entry:
  ret void, !dbg !684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !685 {
entry:
  ret void, !dbg !686
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !687 {
entry:
  ret void, !dbg !688
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !689 {
entry:
  ret void, !dbg !690
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !691 {
entry:
  ret void, !dbg !692
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !693 {
entry:
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !695 {
entry:
  ret void, !dbg !696
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !697 {
entry:
  ret void, !dbg !698
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !699 {
entry:
  ret void, !dbg !700
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !701 {
entry:
  ret void, !dbg !702
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_994/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_17.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_994/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_17_bad", scope: !45, file: !45, line: 29, type: !53, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "i", scope: !52, file: !45, line: 31, type: !23)
!56 = !DILocation(line: 31, column: 9, scope: !52)
!57 = !DILocalVariable(name: "j", scope: !52, file: !45, line: 31, type: !23)
!58 = !DILocation(line: 31, column: 11, scope: !52)
!59 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 32, type: !42)
!60 = !DILocation(line: 32, column: 12, scope: !52)
!61 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 33, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 100)
!65 = !DILocation(line: 33, column: 10, scope: !52)
!66 = !DILocation(line: 34, column: 12, scope: !52)
!67 = !DILocation(line: 34, column: 10, scope: !52)
!68 = !DILocation(line: 35, column: 11, scope: !69)
!69 = distinct !DILexicalBlock(scope: !52, file: !45, line: 35, column: 5)
!70 = !DILocation(line: 35, column: 9, scope: !69)
!71 = !DILocation(line: 35, column: 16, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !45, line: 35, column: 5)
!73 = !DILocation(line: 35, column: 18, scope: !72)
!74 = !DILocation(line: 35, column: 5, scope: !69)
!75 = !DILocalVariable(name: "dataLen", scope: !76, file: !45, line: 39, type: !78)
!76 = distinct !DILexicalBlock(scope: !77, file: !45, line: 37, column: 9)
!77 = distinct !DILexicalBlock(scope: !72, file: !45, line: 36, column: 5)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !79, line: 46, baseType: !80)
!79 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!80 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!81 = !DILocation(line: 39, column: 20, scope: !76)
!82 = !DILocation(line: 39, column: 37, scope: !76)
!83 = !DILocation(line: 39, column: 30, scope: !76)
!84 = !DILocation(line: 41, column: 21, scope: !85)
!85 = distinct !DILexicalBlock(scope: !76, file: !45, line: 41, column: 17)
!86 = !DILocation(line: 41, column: 20, scope: !85)
!87 = !DILocation(line: 41, column: 29, scope: !85)
!88 = !DILocation(line: 41, column: 17, scope: !76)
!89 = !DILocation(line: 44, column: 27, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !45, line: 44, column: 21)
!91 = distinct !DILexicalBlock(scope: !85, file: !45, line: 42, column: 13)
!92 = !DILocation(line: 44, column: 32, scope: !90)
!93 = !DILocation(line: 44, column: 31, scope: !90)
!94 = !DILocation(line: 44, column: 51, scope: !90)
!95 = !DILocation(line: 44, column: 50, scope: !90)
!96 = !DILocation(line: 44, column: 41, scope: !90)
!97 = !DILocation(line: 44, column: 61, scope: !90)
!98 = !DILocation(line: 44, column: 21, scope: !90)
!99 = !DILocation(line: 44, column: 68, scope: !90)
!100 = !DILocation(line: 44, column: 21, scope: !91)
!101 = !DILocation(line: 48, column: 38, scope: !102)
!102 = distinct !DILexicalBlock(scope: !90, file: !45, line: 45, column: 17)
!103 = !DILocation(line: 48, column: 31, scope: !102)
!104 = !DILocation(line: 48, column: 29, scope: !102)
!105 = !DILocation(line: 49, column: 25, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !45, line: 49, column: 25)
!107 = !DILocation(line: 49, column: 33, scope: !106)
!108 = !DILocation(line: 49, column: 37, scope: !106)
!109 = !DILocation(line: 49, column: 40, scope: !106)
!110 = !DILocation(line: 49, column: 45, scope: !106)
!111 = !DILocation(line: 49, column: 52, scope: !106)
!112 = !DILocation(line: 49, column: 56, scope: !106)
!113 = !DILocation(line: 49, column: 25, scope: !102)
!114 = !DILocation(line: 51, column: 25, scope: !115)
!115 = distinct !DILexicalBlock(scope: !106, file: !45, line: 50, column: 21)
!116 = !DILocation(line: 51, column: 30, scope: !115)
!117 = !DILocation(line: 51, column: 37, scope: !115)
!118 = !DILocation(line: 51, column: 41, scope: !115)
!119 = !DILocation(line: 52, column: 21, scope: !115)
!120 = !DILocation(line: 53, column: 17, scope: !102)
!121 = !DILocation(line: 56, column: 21, scope: !122)
!122 = distinct !DILexicalBlock(scope: !90, file: !45, line: 55, column: 17)
!123 = !DILocation(line: 58, column: 21, scope: !122)
!124 = !DILocation(line: 58, column: 26, scope: !122)
!125 = !DILocation(line: 58, column: 35, scope: !122)
!126 = !DILocation(line: 60, column: 13, scope: !91)
!127 = !DILocation(line: 62, column: 5, scope: !77)
!128 = !DILocation(line: 35, column: 24, scope: !72)
!129 = !DILocation(line: 35, column: 5, scope: !72)
!130 = distinct !{!130, !74, !131, !132}
!131 = !DILocation(line: 62, column: 5, scope: !69)
!132 = !{!"llvm.loop.mustprogress"}
!133 = !DILocation(line: 63, column: 11, scope: !134)
!134 = distinct !DILexicalBlock(scope: !52, file: !45, line: 63, column: 5)
!135 = !DILocation(line: 63, column: 9, scope: !134)
!136 = !DILocation(line: 63, column: 16, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !45, line: 63, column: 5)
!138 = !DILocation(line: 63, column: 18, scope: !137)
!139 = !DILocation(line: 63, column: 5, scope: !134)
!140 = !DILocalVariable(name: "i", scope: !141, file: !45, line: 66, type: !23)
!141 = distinct !DILexicalBlock(scope: !142, file: !45, line: 65, column: 9)
!142 = distinct !DILexicalBlock(scope: !137, file: !45, line: 64, column: 5)
!143 = !DILocation(line: 66, column: 17, scope: !141)
!144 = !DILocalVariable(name: "n", scope: !141, file: !45, line: 66, type: !23)
!145 = !DILocation(line: 66, column: 20, scope: !141)
!146 = !DILocalVariable(name: "intVariable", scope: !141, file: !45, line: 66, type: !23)
!147 = !DILocation(line: 66, column: 23, scope: !141)
!148 = !DILocation(line: 67, column: 24, scope: !149)
!149 = distinct !DILexicalBlock(scope: !141, file: !45, line: 67, column: 17)
!150 = !DILocation(line: 67, column: 17, scope: !149)
!151 = !DILocation(line: 67, column: 40, scope: !149)
!152 = !DILocation(line: 67, column: 17, scope: !141)
!153 = !DILocation(line: 70, column: 29, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !45, line: 68, column: 13)
!155 = !DILocation(line: 71, column: 24, scope: !156)
!156 = distinct !DILexicalBlock(scope: !154, file: !45, line: 71, column: 17)
!157 = !DILocation(line: 71, column: 22, scope: !156)
!158 = !DILocation(line: 71, column: 29, scope: !159)
!159 = distinct !DILexicalBlock(scope: !156, file: !45, line: 71, column: 17)
!160 = !DILocation(line: 71, column: 33, scope: !159)
!161 = !DILocation(line: 71, column: 31, scope: !159)
!162 = !DILocation(line: 71, column: 17, scope: !156)
!163 = !DILocation(line: 74, column: 32, scope: !164)
!164 = distinct !DILexicalBlock(scope: !159, file: !45, line: 72, column: 17)
!165 = !DILocation(line: 75, column: 17, scope: !164)
!166 = !DILocation(line: 71, column: 37, scope: !159)
!167 = !DILocation(line: 71, column: 17, scope: !159)
!168 = distinct !{!168, !162, !169, !132}
!169 = !DILocation(line: 75, column: 17, scope: !156)
!170 = !DILocation(line: 76, column: 30, scope: !154)
!171 = !DILocation(line: 76, column: 17, scope: !154)
!172 = !DILocation(line: 77, column: 13, scope: !154)
!173 = !DILocation(line: 79, column: 5, scope: !142)
!174 = !DILocation(line: 63, column: 24, scope: !137)
!175 = !DILocation(line: 63, column: 5, scope: !137)
!176 = distinct !{!176, !139, !177, !132}
!177 = !DILocation(line: 79, column: 5, scope: !134)
!178 = !DILocation(line: 80, column: 1, scope: !52)
!179 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 87, type: !53, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!180 = !DILocalVariable(name: "i", scope: !179, file: !45, line: 89, type: !23)
!181 = !DILocation(line: 89, column: 9, scope: !179)
!182 = !DILocalVariable(name: "k", scope: !179, file: !45, line: 89, type: !23)
!183 = !DILocation(line: 89, column: 11, scope: !179)
!184 = !DILocalVariable(name: "data", scope: !179, file: !45, line: 90, type: !42)
!185 = !DILocation(line: 90, column: 12, scope: !179)
!186 = !DILocalVariable(name: "dataBuffer", scope: !179, file: !45, line: 91, type: !62)
!187 = !DILocation(line: 91, column: 10, scope: !179)
!188 = !DILocation(line: 92, column: 12, scope: !179)
!189 = !DILocation(line: 92, column: 10, scope: !179)
!190 = !DILocation(line: 93, column: 11, scope: !191)
!191 = distinct !DILexicalBlock(scope: !179, file: !45, line: 93, column: 5)
!192 = !DILocation(line: 93, column: 9, scope: !191)
!193 = !DILocation(line: 93, column: 16, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !45, line: 93, column: 5)
!195 = !DILocation(line: 93, column: 18, scope: !194)
!196 = !DILocation(line: 93, column: 5, scope: !191)
!197 = !DILocalVariable(name: "dataLen", scope: !198, file: !45, line: 97, type: !78)
!198 = distinct !DILexicalBlock(scope: !199, file: !45, line: 95, column: 9)
!199 = distinct !DILexicalBlock(scope: !194, file: !45, line: 94, column: 5)
!200 = !DILocation(line: 97, column: 20, scope: !198)
!201 = !DILocation(line: 97, column: 37, scope: !198)
!202 = !DILocation(line: 97, column: 30, scope: !198)
!203 = !DILocation(line: 99, column: 21, scope: !204)
!204 = distinct !DILexicalBlock(scope: !198, file: !45, line: 99, column: 17)
!205 = !DILocation(line: 99, column: 20, scope: !204)
!206 = !DILocation(line: 99, column: 29, scope: !204)
!207 = !DILocation(line: 99, column: 17, scope: !198)
!208 = !DILocation(line: 102, column: 27, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !45, line: 102, column: 21)
!210 = distinct !DILexicalBlock(scope: !204, file: !45, line: 100, column: 13)
!211 = !DILocation(line: 102, column: 32, scope: !209)
!212 = !DILocation(line: 102, column: 31, scope: !209)
!213 = !DILocation(line: 102, column: 51, scope: !209)
!214 = !DILocation(line: 102, column: 50, scope: !209)
!215 = !DILocation(line: 102, column: 41, scope: !209)
!216 = !DILocation(line: 102, column: 61, scope: !209)
!217 = !DILocation(line: 102, column: 21, scope: !209)
!218 = !DILocation(line: 102, column: 68, scope: !209)
!219 = !DILocation(line: 102, column: 21, scope: !210)
!220 = !DILocation(line: 106, column: 38, scope: !221)
!221 = distinct !DILexicalBlock(scope: !209, file: !45, line: 103, column: 17)
!222 = !DILocation(line: 106, column: 31, scope: !221)
!223 = !DILocation(line: 106, column: 29, scope: !221)
!224 = !DILocation(line: 107, column: 25, scope: !225)
!225 = distinct !DILexicalBlock(scope: !221, file: !45, line: 107, column: 25)
!226 = !DILocation(line: 107, column: 33, scope: !225)
!227 = !DILocation(line: 107, column: 37, scope: !225)
!228 = !DILocation(line: 107, column: 40, scope: !225)
!229 = !DILocation(line: 107, column: 45, scope: !225)
!230 = !DILocation(line: 107, column: 52, scope: !225)
!231 = !DILocation(line: 107, column: 56, scope: !225)
!232 = !DILocation(line: 107, column: 25, scope: !221)
!233 = !DILocation(line: 109, column: 25, scope: !234)
!234 = distinct !DILexicalBlock(scope: !225, file: !45, line: 108, column: 21)
!235 = !DILocation(line: 109, column: 30, scope: !234)
!236 = !DILocation(line: 109, column: 37, scope: !234)
!237 = !DILocation(line: 109, column: 41, scope: !234)
!238 = !DILocation(line: 110, column: 21, scope: !234)
!239 = !DILocation(line: 111, column: 17, scope: !221)
!240 = !DILocation(line: 114, column: 21, scope: !241)
!241 = distinct !DILexicalBlock(scope: !209, file: !45, line: 113, column: 17)
!242 = !DILocation(line: 116, column: 21, scope: !241)
!243 = !DILocation(line: 116, column: 26, scope: !241)
!244 = !DILocation(line: 116, column: 35, scope: !241)
!245 = !DILocation(line: 118, column: 13, scope: !210)
!246 = !DILocation(line: 120, column: 5, scope: !199)
!247 = !DILocation(line: 93, column: 24, scope: !194)
!248 = !DILocation(line: 93, column: 5, scope: !194)
!249 = distinct !{!249, !196, !250, !132}
!250 = !DILocation(line: 120, column: 5, scope: !191)
!251 = !DILocation(line: 121, column: 11, scope: !252)
!252 = distinct !DILexicalBlock(scope: !179, file: !45, line: 121, column: 5)
!253 = !DILocation(line: 121, column: 9, scope: !252)
!254 = !DILocation(line: 121, column: 16, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !45, line: 121, column: 5)
!256 = !DILocation(line: 121, column: 18, scope: !255)
!257 = !DILocation(line: 121, column: 5, scope: !252)
!258 = !DILocalVariable(name: "i", scope: !259, file: !45, line: 124, type: !23)
!259 = distinct !DILexicalBlock(scope: !260, file: !45, line: 123, column: 9)
!260 = distinct !DILexicalBlock(scope: !255, file: !45, line: 122, column: 5)
!261 = !DILocation(line: 124, column: 17, scope: !259)
!262 = !DILocalVariable(name: "n", scope: !259, file: !45, line: 124, type: !23)
!263 = !DILocation(line: 124, column: 20, scope: !259)
!264 = !DILocalVariable(name: "intVariable", scope: !259, file: !45, line: 124, type: !23)
!265 = !DILocation(line: 124, column: 23, scope: !259)
!266 = !DILocation(line: 125, column: 24, scope: !267)
!267 = distinct !DILexicalBlock(scope: !259, file: !45, line: 125, column: 17)
!268 = !DILocation(line: 125, column: 17, scope: !267)
!269 = !DILocation(line: 125, column: 40, scope: !267)
!270 = !DILocation(line: 125, column: 17, scope: !259)
!271 = !DILocation(line: 128, column: 21, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !45, line: 128, column: 21)
!273 = distinct !DILexicalBlock(scope: !267, file: !45, line: 126, column: 13)
!274 = !DILocation(line: 128, column: 23, scope: !272)
!275 = !DILocation(line: 128, column: 21, scope: !273)
!276 = !DILocation(line: 130, column: 33, scope: !277)
!277 = distinct !DILexicalBlock(scope: !272, file: !45, line: 129, column: 17)
!278 = !DILocation(line: 131, column: 28, scope: !279)
!279 = distinct !DILexicalBlock(scope: !277, file: !45, line: 131, column: 21)
!280 = !DILocation(line: 131, column: 26, scope: !279)
!281 = !DILocation(line: 131, column: 33, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !45, line: 131, column: 21)
!283 = !DILocation(line: 131, column: 37, scope: !282)
!284 = !DILocation(line: 131, column: 35, scope: !282)
!285 = !DILocation(line: 131, column: 21, scope: !279)
!286 = !DILocation(line: 134, column: 36, scope: !287)
!287 = distinct !DILexicalBlock(scope: !282, file: !45, line: 132, column: 21)
!288 = !DILocation(line: 135, column: 21, scope: !287)
!289 = !DILocation(line: 131, column: 41, scope: !282)
!290 = !DILocation(line: 131, column: 21, scope: !282)
!291 = distinct !{!291, !285, !292, !132}
!292 = !DILocation(line: 135, column: 21, scope: !279)
!293 = !DILocation(line: 136, column: 34, scope: !277)
!294 = !DILocation(line: 136, column: 21, scope: !277)
!295 = !DILocation(line: 137, column: 17, scope: !277)
!296 = !DILocation(line: 138, column: 13, scope: !273)
!297 = !DILocation(line: 140, column: 5, scope: !260)
!298 = !DILocation(line: 121, column: 24, scope: !255)
!299 = !DILocation(line: 121, column: 5, scope: !255)
!300 = distinct !{!300, !257, !301, !132}
!301 = !DILocation(line: 140, column: 5, scope: !252)
!302 = !DILocation(line: 141, column: 1, scope: !179)
!303 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 144, type: !53, scopeLine: 145, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!304 = !DILocalVariable(name: "h", scope: !303, file: !45, line: 146, type: !23)
!305 = !DILocation(line: 146, column: 9, scope: !303)
!306 = !DILocalVariable(name: "j", scope: !303, file: !45, line: 146, type: !23)
!307 = !DILocation(line: 146, column: 11, scope: !303)
!308 = !DILocalVariable(name: "data", scope: !303, file: !45, line: 147, type: !42)
!309 = !DILocation(line: 147, column: 12, scope: !303)
!310 = !DILocalVariable(name: "dataBuffer", scope: !303, file: !45, line: 148, type: !62)
!311 = !DILocation(line: 148, column: 10, scope: !303)
!312 = !DILocation(line: 149, column: 12, scope: !303)
!313 = !DILocation(line: 149, column: 10, scope: !303)
!314 = !DILocation(line: 150, column: 11, scope: !315)
!315 = distinct !DILexicalBlock(scope: !303, file: !45, line: 150, column: 5)
!316 = !DILocation(line: 150, column: 9, scope: !315)
!317 = !DILocation(line: 150, column: 16, scope: !318)
!318 = distinct !DILexicalBlock(scope: !315, file: !45, line: 150, column: 5)
!319 = !DILocation(line: 150, column: 18, scope: !318)
!320 = !DILocation(line: 150, column: 5, scope: !315)
!321 = !DILocation(line: 153, column: 16, scope: !322)
!322 = distinct !DILexicalBlock(scope: !318, file: !45, line: 151, column: 5)
!323 = !DILocation(line: 153, column: 9, scope: !322)
!324 = !DILocation(line: 154, column: 5, scope: !322)
!325 = !DILocation(line: 150, column: 24, scope: !318)
!326 = !DILocation(line: 150, column: 5, scope: !318)
!327 = distinct !{!327, !320, !328, !132}
!328 = !DILocation(line: 154, column: 5, scope: !315)
!329 = !DILocation(line: 155, column: 11, scope: !330)
!330 = distinct !DILexicalBlock(scope: !303, file: !45, line: 155, column: 5)
!331 = !DILocation(line: 155, column: 9, scope: !330)
!332 = !DILocation(line: 155, column: 16, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !45, line: 155, column: 5)
!334 = !DILocation(line: 155, column: 18, scope: !333)
!335 = !DILocation(line: 155, column: 5, scope: !330)
!336 = !DILocalVariable(name: "i", scope: !337, file: !45, line: 158, type: !23)
!337 = distinct !DILexicalBlock(scope: !338, file: !45, line: 157, column: 9)
!338 = distinct !DILexicalBlock(scope: !333, file: !45, line: 156, column: 5)
!339 = !DILocation(line: 158, column: 17, scope: !337)
!340 = !DILocalVariable(name: "n", scope: !337, file: !45, line: 158, type: !23)
!341 = !DILocation(line: 158, column: 20, scope: !337)
!342 = !DILocalVariable(name: "intVariable", scope: !337, file: !45, line: 158, type: !23)
!343 = !DILocation(line: 158, column: 23, scope: !337)
!344 = !DILocation(line: 159, column: 24, scope: !345)
!345 = distinct !DILexicalBlock(scope: !337, file: !45, line: 159, column: 17)
!346 = !DILocation(line: 159, column: 17, scope: !345)
!347 = !DILocation(line: 159, column: 40, scope: !345)
!348 = !DILocation(line: 159, column: 17, scope: !337)
!349 = !DILocation(line: 162, column: 29, scope: !350)
!350 = distinct !DILexicalBlock(scope: !345, file: !45, line: 160, column: 13)
!351 = !DILocation(line: 163, column: 24, scope: !352)
!352 = distinct !DILexicalBlock(scope: !350, file: !45, line: 163, column: 17)
!353 = !DILocation(line: 163, column: 22, scope: !352)
!354 = !DILocation(line: 163, column: 29, scope: !355)
!355 = distinct !DILexicalBlock(scope: !352, file: !45, line: 163, column: 17)
!356 = !DILocation(line: 163, column: 33, scope: !355)
!357 = !DILocation(line: 163, column: 31, scope: !355)
!358 = !DILocation(line: 163, column: 17, scope: !352)
!359 = !DILocation(line: 166, column: 32, scope: !360)
!360 = distinct !DILexicalBlock(scope: !355, file: !45, line: 164, column: 17)
!361 = !DILocation(line: 167, column: 17, scope: !360)
!362 = !DILocation(line: 163, column: 37, scope: !355)
!363 = !DILocation(line: 163, column: 17, scope: !355)
!364 = distinct !{!364, !358, !365, !132}
!365 = !DILocation(line: 167, column: 17, scope: !352)
!366 = !DILocation(line: 168, column: 30, scope: !350)
!367 = !DILocation(line: 168, column: 17, scope: !350)
!368 = !DILocation(line: 169, column: 13, scope: !350)
!369 = !DILocation(line: 171, column: 5, scope: !338)
!370 = !DILocation(line: 155, column: 24, scope: !333)
!371 = !DILocation(line: 155, column: 5, scope: !333)
!372 = distinct !{!372, !335, !373, !132}
!373 = !DILocation(line: 171, column: 5, scope: !330)
!374 = !DILocation(line: 172, column: 1, scope: !303)
!375 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_17_good", scope: !45, file: !45, line: 174, type: !53, scopeLine: 175, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!376 = !DILocation(line: 176, column: 5, scope: !375)
!377 = !DILocation(line: 177, column: 5, scope: !375)
!378 = !DILocation(line: 178, column: 1, scope: !375)
!379 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !380, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !42}
!382 = !DILocalVariable(name: "line", arg: 1, scope: !379, file: !3, line: 11, type: !42)
!383 = !DILocation(line: 11, column: 25, scope: !379)
!384 = !DILocation(line: 13, column: 1, scope: !379)
!385 = !DILocation(line: 14, column: 8, scope: !386)
!386 = distinct !DILexicalBlock(scope: !379, file: !3, line: 14, column: 8)
!387 = !DILocation(line: 14, column: 13, scope: !386)
!388 = !DILocation(line: 14, column: 8, scope: !379)
!389 = !DILocation(line: 16, column: 24, scope: !390)
!390 = distinct !DILexicalBlock(scope: !386, file: !3, line: 15, column: 5)
!391 = !DILocation(line: 16, column: 9, scope: !390)
!392 = !DILocation(line: 17, column: 5, scope: !390)
!393 = !DILocation(line: 18, column: 5, scope: !379)
!394 = !DILocation(line: 19, column: 1, scope: !379)
!395 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !380, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!396 = !DILocalVariable(name: "line", arg: 1, scope: !395, file: !3, line: 20, type: !42)
!397 = !DILocation(line: 20, column: 29, scope: !395)
!398 = !DILocation(line: 22, column: 8, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !3, line: 22, column: 8)
!400 = !DILocation(line: 22, column: 13, scope: !399)
!401 = !DILocation(line: 22, column: 8, scope: !395)
!402 = !DILocation(line: 24, column: 24, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !3, line: 23, column: 5)
!404 = !DILocation(line: 24, column: 9, scope: !403)
!405 = !DILocation(line: 25, column: 5, scope: !403)
!406 = !DILocation(line: 26, column: 1, scope: !395)
!407 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !408, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !79, line: 74, baseType: !23)
!412 = !DILocalVariable(name: "line", arg: 1, scope: !407, file: !3, line: 27, type: !410)
!413 = !DILocation(line: 27, column: 29, scope: !407)
!414 = !DILocation(line: 29, column: 8, scope: !415)
!415 = distinct !DILexicalBlock(scope: !407, file: !3, line: 29, column: 8)
!416 = !DILocation(line: 29, column: 13, scope: !415)
!417 = !DILocation(line: 29, column: 8, scope: !407)
!418 = !DILocation(line: 31, column: 27, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !3, line: 30, column: 5)
!420 = !DILocation(line: 31, column: 9, scope: !419)
!421 = !DILocation(line: 32, column: 5, scope: !419)
!422 = !DILocation(line: 33, column: 1, scope: !407)
!423 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !424, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !23}
!426 = !DILocalVariable(name: "intNumber", arg: 1, scope: !423, file: !3, line: 35, type: !23)
!427 = !DILocation(line: 35, column: 24, scope: !423)
!428 = !DILocation(line: 37, column: 20, scope: !423)
!429 = !DILocation(line: 37, column: 5, scope: !423)
!430 = !DILocation(line: 38, column: 1, scope: !423)
!431 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !432, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !434}
!434 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!435 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !431, file: !3, line: 40, type: !434)
!436 = !DILocation(line: 40, column: 28, scope: !431)
!437 = !DILocation(line: 42, column: 21, scope: !431)
!438 = !DILocation(line: 42, column: 5, scope: !431)
!439 = !DILocation(line: 43, column: 1, scope: !431)
!440 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !441, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !443}
!443 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!444 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !440, file: !3, line: 45, type: !443)
!445 = !DILocation(line: 45, column: 28, scope: !440)
!446 = !DILocation(line: 47, column: 20, scope: !440)
!447 = !DILocation(line: 47, column: 5, scope: !440)
!448 = !DILocation(line: 48, column: 1, scope: !440)
!449 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !450, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !452}
!452 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!453 = !DILocalVariable(name: "longNumber", arg: 1, scope: !449, file: !3, line: 50, type: !452)
!454 = !DILocation(line: 50, column: 26, scope: !449)
!455 = !DILocation(line: 52, column: 21, scope: !449)
!456 = !DILocation(line: 52, column: 5, scope: !449)
!457 = !DILocation(line: 53, column: 1, scope: !449)
!458 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !459, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !461}
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !462, line: 27, baseType: !463)
!462 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !464, line: 44, baseType: !452)
!464 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!465 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !458, file: !3, line: 55, type: !461)
!466 = !DILocation(line: 55, column: 33, scope: !458)
!467 = !DILocation(line: 57, column: 29, scope: !458)
!468 = !DILocation(line: 57, column: 5, scope: !458)
!469 = !DILocation(line: 58, column: 1, scope: !458)
!470 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !471, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !78}
!473 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !470, file: !3, line: 60, type: !78)
!474 = !DILocation(line: 60, column: 29, scope: !470)
!475 = !DILocation(line: 62, column: 21, scope: !470)
!476 = !DILocation(line: 62, column: 5, scope: !470)
!477 = !DILocation(line: 63, column: 1, scope: !470)
!478 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !479, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !43}
!481 = !DILocalVariable(name: "charHex", arg: 1, scope: !478, file: !3, line: 65, type: !43)
!482 = !DILocation(line: 65, column: 29, scope: !478)
!483 = !DILocation(line: 67, column: 22, scope: !478)
!484 = !DILocation(line: 67, column: 5, scope: !478)
!485 = !DILocation(line: 68, column: 1, scope: !478)
!486 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !487, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !411}
!489 = !DILocalVariable(name: "wideChar", arg: 1, scope: !486, file: !3, line: 70, type: !411)
!490 = !DILocation(line: 70, column: 29, scope: !486)
!491 = !DILocalVariable(name: "s", scope: !486, file: !3, line: 74, type: !492)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 64, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 2)
!495 = !DILocation(line: 74, column: 13, scope: !486)
!496 = !DILocation(line: 75, column: 16, scope: !486)
!497 = !DILocation(line: 75, column: 9, scope: !486)
!498 = !DILocation(line: 75, column: 14, scope: !486)
!499 = !DILocation(line: 76, column: 9, scope: !486)
!500 = !DILocation(line: 76, column: 14, scope: !486)
!501 = !DILocation(line: 77, column: 21, scope: !486)
!502 = !DILocation(line: 77, column: 5, scope: !486)
!503 = !DILocation(line: 78, column: 1, scope: !486)
!504 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !505, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !7}
!507 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !504, file: !3, line: 80, type: !7)
!508 = !DILocation(line: 80, column: 33, scope: !504)
!509 = !DILocation(line: 82, column: 20, scope: !504)
!510 = !DILocation(line: 82, column: 5, scope: !504)
!511 = !DILocation(line: 83, column: 1, scope: !504)
!512 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !513, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !25}
!515 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !512, file: !3, line: 85, type: !25)
!516 = !DILocation(line: 85, column: 45, scope: !512)
!517 = !DILocation(line: 87, column: 22, scope: !512)
!518 = !DILocation(line: 87, column: 5, scope: !512)
!519 = !DILocation(line: 88, column: 1, scope: !512)
!520 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !521, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !523}
!523 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!524 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !520, file: !3, line: 90, type: !523)
!525 = !DILocation(line: 90, column: 29, scope: !520)
!526 = !DILocation(line: 92, column: 20, scope: !520)
!527 = !DILocation(line: 92, column: 5, scope: !520)
!528 = !DILocation(line: 93, column: 1, scope: !520)
!529 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !530, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !534, line: 100, baseType: !535)
!534 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_994/source_code")
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !534, line: 96, size: 64, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !535, file: !534, line: 98, baseType: !23, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !535, file: !534, line: 99, baseType: !23, size: 32, offset: 32)
!539 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !529, file: !3, line: 95, type: !532)
!540 = !DILocation(line: 95, column: 40, scope: !529)
!541 = !DILocation(line: 97, column: 26, scope: !529)
!542 = !DILocation(line: 97, column: 47, scope: !529)
!543 = !DILocation(line: 97, column: 55, scope: !529)
!544 = !DILocation(line: 97, column: 76, scope: !529)
!545 = !DILocation(line: 97, column: 5, scope: !529)
!546 = !DILocation(line: 98, column: 1, scope: !529)
!547 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !548, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !550, !78}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!551 = !DILocalVariable(name: "bytes", arg: 1, scope: !547, file: !3, line: 100, type: !550)
!552 = !DILocation(line: 100, column: 38, scope: !547)
!553 = !DILocalVariable(name: "numBytes", arg: 2, scope: !547, file: !3, line: 100, type: !78)
!554 = !DILocation(line: 100, column: 52, scope: !547)
!555 = !DILocalVariable(name: "i", scope: !547, file: !3, line: 102, type: !78)
!556 = !DILocation(line: 102, column: 12, scope: !547)
!557 = !DILocation(line: 103, column: 12, scope: !558)
!558 = distinct !DILexicalBlock(scope: !547, file: !3, line: 103, column: 5)
!559 = !DILocation(line: 103, column: 10, scope: !558)
!560 = !DILocation(line: 103, column: 17, scope: !561)
!561 = distinct !DILexicalBlock(scope: !558, file: !3, line: 103, column: 5)
!562 = !DILocation(line: 103, column: 21, scope: !561)
!563 = !DILocation(line: 103, column: 19, scope: !561)
!564 = !DILocation(line: 103, column: 5, scope: !558)
!565 = !DILocation(line: 105, column: 24, scope: !566)
!566 = distinct !DILexicalBlock(scope: !561, file: !3, line: 104, column: 5)
!567 = !DILocation(line: 105, column: 30, scope: !566)
!568 = !DILocation(line: 105, column: 9, scope: !566)
!569 = !DILocation(line: 106, column: 5, scope: !566)
!570 = !DILocation(line: 103, column: 31, scope: !561)
!571 = !DILocation(line: 103, column: 5, scope: !561)
!572 = distinct !{!572, !564, !573, !132}
!573 = !DILocation(line: 106, column: 5, scope: !558)
!574 = !DILocation(line: 107, column: 5, scope: !547)
!575 = !DILocation(line: 108, column: 1, scope: !547)
!576 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !577, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!577 = !DISubroutineType(types: !578)
!578 = !{!78, !550, !78, !42}
!579 = !DILocalVariable(name: "bytes", arg: 1, scope: !576, file: !3, line: 113, type: !550)
!580 = !DILocation(line: 113, column: 39, scope: !576)
!581 = !DILocalVariable(name: "numBytes", arg: 2, scope: !576, file: !3, line: 113, type: !78)
!582 = !DILocation(line: 113, column: 53, scope: !576)
!583 = !DILocalVariable(name: "hex", arg: 3, scope: !576, file: !3, line: 113, type: !42)
!584 = !DILocation(line: 113, column: 71, scope: !576)
!585 = !DILocalVariable(name: "numWritten", scope: !576, file: !3, line: 115, type: !78)
!586 = !DILocation(line: 115, column: 12, scope: !576)
!587 = !DILocation(line: 121, column: 5, scope: !576)
!588 = !DILocation(line: 121, column: 12, scope: !576)
!589 = !DILocation(line: 121, column: 25, scope: !576)
!590 = !DILocation(line: 121, column: 23, scope: !576)
!591 = !DILocation(line: 121, column: 34, scope: !576)
!592 = !DILocation(line: 121, column: 37, scope: !576)
!593 = !DILocation(line: 121, column: 67, scope: !576)
!594 = !DILocation(line: 121, column: 70, scope: !576)
!595 = !DILocation(line: 0, scope: !576)
!596 = !DILocalVariable(name: "byte", scope: !597, file: !3, line: 123, type: !23)
!597 = distinct !DILexicalBlock(scope: !576, file: !3, line: 122, column: 5)
!598 = !DILocation(line: 123, column: 13, scope: !597)
!599 = !DILocation(line: 124, column: 17, scope: !597)
!600 = !DILocation(line: 124, column: 25, scope: !597)
!601 = !DILocation(line: 124, column: 23, scope: !597)
!602 = !DILocation(line: 124, column: 9, scope: !597)
!603 = !DILocation(line: 125, column: 45, scope: !597)
!604 = !DILocation(line: 125, column: 29, scope: !597)
!605 = !DILocation(line: 125, column: 9, scope: !597)
!606 = !DILocation(line: 125, column: 15, scope: !597)
!607 = !DILocation(line: 125, column: 27, scope: !597)
!608 = !DILocation(line: 126, column: 9, scope: !597)
!609 = distinct !{!609, !587, !610, !132}
!610 = !DILocation(line: 127, column: 5, scope: !576)
!611 = !DILocation(line: 129, column: 12, scope: !576)
!612 = !DILocation(line: 129, column: 5, scope: !576)
!613 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !614, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DISubroutineType(types: !615)
!615 = !{!78, !550, !78, !410}
!616 = !DILocalVariable(name: "bytes", arg: 1, scope: !613, file: !3, line: 135, type: !550)
!617 = !DILocation(line: 135, column: 41, scope: !613)
!618 = !DILocalVariable(name: "numBytes", arg: 2, scope: !613, file: !3, line: 135, type: !78)
!619 = !DILocation(line: 135, column: 55, scope: !613)
!620 = !DILocalVariable(name: "hex", arg: 3, scope: !613, file: !3, line: 135, type: !410)
!621 = !DILocation(line: 135, column: 76, scope: !613)
!622 = !DILocalVariable(name: "numWritten", scope: !613, file: !3, line: 137, type: !78)
!623 = !DILocation(line: 137, column: 12, scope: !613)
!624 = !DILocation(line: 143, column: 5, scope: !613)
!625 = !DILocation(line: 143, column: 12, scope: !613)
!626 = !DILocation(line: 143, column: 25, scope: !613)
!627 = !DILocation(line: 143, column: 23, scope: !613)
!628 = !DILocation(line: 143, column: 34, scope: !613)
!629 = !DILocation(line: 143, column: 47, scope: !613)
!630 = !DILocation(line: 143, column: 55, scope: !613)
!631 = !DILocation(line: 143, column: 53, scope: !613)
!632 = !DILocation(line: 143, column: 37, scope: !613)
!633 = !DILocation(line: 143, column: 68, scope: !613)
!634 = !DILocation(line: 143, column: 81, scope: !613)
!635 = !DILocation(line: 143, column: 89, scope: !613)
!636 = !DILocation(line: 143, column: 87, scope: !613)
!637 = !DILocation(line: 143, column: 100, scope: !613)
!638 = !DILocation(line: 143, column: 71, scope: !613)
!639 = !DILocation(line: 0, scope: !613)
!640 = !DILocalVariable(name: "byte", scope: !641, file: !3, line: 145, type: !23)
!641 = distinct !DILexicalBlock(scope: !613, file: !3, line: 144, column: 5)
!642 = !DILocation(line: 145, column: 13, scope: !641)
!643 = !DILocation(line: 146, column: 18, scope: !641)
!644 = !DILocation(line: 146, column: 26, scope: !641)
!645 = !DILocation(line: 146, column: 24, scope: !641)
!646 = !DILocation(line: 146, column: 9, scope: !641)
!647 = !DILocation(line: 147, column: 45, scope: !641)
!648 = !DILocation(line: 147, column: 29, scope: !641)
!649 = !DILocation(line: 147, column: 9, scope: !641)
!650 = !DILocation(line: 147, column: 15, scope: !641)
!651 = !DILocation(line: 147, column: 27, scope: !641)
!652 = !DILocation(line: 148, column: 9, scope: !641)
!653 = distinct !{!653, !624, !654, !132}
!654 = !DILocation(line: 149, column: 5, scope: !613)
!655 = !DILocation(line: 151, column: 12, scope: !613)
!656 = !DILocation(line: 151, column: 5, scope: !613)
!657 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !658, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!658 = !DISubroutineType(types: !659)
!659 = !{!23}
!660 = !DILocation(line: 158, column: 5, scope: !657)
!661 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !658, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!662 = !DILocation(line: 163, column: 5, scope: !661)
!663 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !658, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!664 = !DILocation(line: 168, column: 13, scope: !663)
!665 = !DILocation(line: 168, column: 20, scope: !663)
!666 = !DILocation(line: 168, column: 5, scope: !663)
!667 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!668 = !DILocation(line: 187, column: 16, scope: !667)
!669 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!670 = !DILocation(line: 188, column: 16, scope: !669)
!671 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!672 = !DILocation(line: 189, column: 16, scope: !671)
!673 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!674 = !DILocation(line: 190, column: 16, scope: !673)
!675 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!676 = !DILocation(line: 191, column: 16, scope: !675)
!677 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!678 = !DILocation(line: 192, column: 16, scope: !677)
!679 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!680 = !DILocation(line: 193, column: 16, scope: !679)
!681 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!682 = !DILocation(line: 194, column: 16, scope: !681)
!683 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!684 = !DILocation(line: 195, column: 16, scope: !683)
!685 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!686 = !DILocation(line: 198, column: 15, scope: !685)
!687 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!688 = !DILocation(line: 199, column: 15, scope: !687)
!689 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!690 = !DILocation(line: 200, column: 15, scope: !689)
!691 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!692 = !DILocation(line: 201, column: 15, scope: !691)
!693 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!694 = !DILocation(line: 202, column: 15, scope: !693)
!695 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!696 = !DILocation(line: 203, column: 15, scope: !695)
!697 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!698 = !DILocation(line: 204, column: 15, scope: !697)
!699 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!700 = !DILocation(line: 205, column: 15, scope: !699)
!701 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!702 = !DILocation(line: 206, column: 15, scope: !701)
