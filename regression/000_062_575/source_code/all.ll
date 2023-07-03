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
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad() #0 !dbg !52 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  %i18 = alloca i32, align 4
  %buffer19 = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 -1, i32* %data, align 4, !dbg !57
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !58
  %tobool = icmp ne i32 %call, 0, !dbg !58
  br i1 %tobool, label %if.then, label %if.else5, !dbg !60

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !61, metadata !DIExpression()), !dbg !67
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !67
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !67
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !68
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !70
  %call1 = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !71
  %cmp = icmp ne i8* %call1, null, !dbg !72
  br i1 %cmp, label %if.then2, label %if.else, !dbg !73

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !74
  %call4 = call i32 @atoi(i8* %arraydecay3) #7, !dbg !76
  store i32 %call4, i32* %data, align 4, !dbg !77
  br label %if.end, !dbg !78

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !79
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end6, !dbg !81

if.else5:                                         ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !82
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %if.end
  %call7 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !84
  %tobool8 = icmp ne i32 %call7, 0, !dbg !84
  br i1 %tobool8, label %if.then9, label %if.else17, !dbg !86

if.then9:                                         ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i, metadata !87, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !91, metadata !DIExpression()), !dbg !95
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !95
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !95
  %3 = load i32, i32* %data, align 4, !dbg !96
  %cmp10 = icmp sge i32 %3, 0, !dbg !98
  br i1 %cmp10, label %if.then11, label %if.else15, !dbg !99

if.then11:                                        ; preds = %if.then9
  %4 = load i32, i32* %data, align 4, !dbg !100
  %idxprom = sext i32 %4 to i64, !dbg !102
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !102
  store i32 1, i32* %arrayidx, align 4, !dbg !103
  store i32 0, i32* %i, align 4, !dbg !104
  br label %for.cond, !dbg !106

for.cond:                                         ; preds = %for.inc, %if.then11
  %5 = load i32, i32* %i, align 4, !dbg !107
  %cmp12 = icmp slt i32 %5, 10, !dbg !109
  br i1 %cmp12, label %for.body, label %for.end, !dbg !110

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !111
  %idxprom13 = sext i32 %6 to i64, !dbg !113
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom13, !dbg !113
  %7 = load i32, i32* %arrayidx14, align 4, !dbg !113
  call void @printIntLine(i32 %7), !dbg !114
  br label %for.inc, !dbg !115

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !116
  %inc = add nsw i32 %8, 1, !dbg !116
  store i32 %inc, i32* %i, align 4, !dbg !116
  br label %for.cond, !dbg !117, !llvm.loop !118

for.end:                                          ; preds = %for.cond
  br label %if.end16, !dbg !121

if.else15:                                        ; preds = %if.then9
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !122
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %for.end
  br label %if.end35, !dbg !124

if.else17:                                        ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i18, metadata !125, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer19, metadata !129, metadata !DIExpression()), !dbg !130
  %9 = bitcast [10 x i32]* %buffer19 to i8*, !dbg !130
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 40, i1 false), !dbg !130
  %10 = load i32, i32* %data, align 4, !dbg !131
  %cmp20 = icmp sge i32 %10, 0, !dbg !133
  br i1 %cmp20, label %land.lhs.true, label %if.else33, !dbg !134

land.lhs.true:                                    ; preds = %if.else17
  %11 = load i32, i32* %data, align 4, !dbg !135
  %cmp21 = icmp slt i32 %11, 10, !dbg !136
  br i1 %cmp21, label %if.then22, label %if.else33, !dbg !137

if.then22:                                        ; preds = %land.lhs.true
  %12 = load i32, i32* %data, align 4, !dbg !138
  %idxprom23 = sext i32 %12 to i64, !dbg !140
  %arrayidx24 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer19, i64 0, i64 %idxprom23, !dbg !140
  store i32 1, i32* %arrayidx24, align 4, !dbg !141
  store i32 0, i32* %i18, align 4, !dbg !142
  br label %for.cond25, !dbg !144

for.cond25:                                       ; preds = %for.inc30, %if.then22
  %13 = load i32, i32* %i18, align 4, !dbg !145
  %cmp26 = icmp slt i32 %13, 10, !dbg !147
  br i1 %cmp26, label %for.body27, label %for.end32, !dbg !148

for.body27:                                       ; preds = %for.cond25
  %14 = load i32, i32* %i18, align 4, !dbg !149
  %idxprom28 = sext i32 %14 to i64, !dbg !151
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer19, i64 0, i64 %idxprom28, !dbg !151
  %15 = load i32, i32* %arrayidx29, align 4, !dbg !151
  call void @printIntLine(i32 %15), !dbg !152
  br label %for.inc30, !dbg !153

for.inc30:                                        ; preds = %for.body27
  %16 = load i32, i32* %i18, align 4, !dbg !154
  %inc31 = add nsw i32 %16, 1, !dbg !154
  store i32 %inc31, i32* %i18, align 4, !dbg !154
  br label %for.cond25, !dbg !155, !llvm.loop !156

for.end32:                                        ; preds = %for.cond25
  br label %if.end34, !dbg !158

if.else33:                                        ; preds = %land.lhs.true, %if.else17
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !159
  br label %if.end34

if.end34:                                         ; preds = %if.else33, %for.end32
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end16
  ret void, !dbg !161
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !162 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %inputBuffer6 = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  %i28 = alloca i32, align 4
  %buffer29 = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !163, metadata !DIExpression()), !dbg !164
  store i32 -1, i32* %data, align 4, !dbg !165
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !166
  %tobool = icmp ne i32 %call, 0, !dbg !166
  br i1 %tobool, label %if.then, label %if.else5, !dbg !168

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !169, metadata !DIExpression()), !dbg !172
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !172
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !172
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !173
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !175
  %call1 = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !176
  %cmp = icmp ne i8* %call1, null, !dbg !177
  br i1 %cmp, label %if.then2, label %if.else, !dbg !178

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !179
  %call4 = call i32 @atoi(i8* %arraydecay3) #7, !dbg !181
  store i32 %call4, i32* %data, align 4, !dbg !182
  br label %if.end, !dbg !183

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !184
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end15, !dbg !186

if.else5:                                         ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer6, metadata !187, metadata !DIExpression()), !dbg !190
  %2 = bitcast [14 x i8]* %inputBuffer6 to i8*, !dbg !190
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 14, i1 false), !dbg !190
  %arraydecay7 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer6, i64 0, i64 0, !dbg !191
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !193
  %call8 = call i8* @fgets(i8* %arraydecay7, i32 14, %struct._IO_FILE* %3), !dbg !194
  %cmp9 = icmp ne i8* %call8, null, !dbg !195
  br i1 %cmp9, label %if.then10, label %if.else13, !dbg !196

if.then10:                                        ; preds = %if.else5
  %arraydecay11 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer6, i64 0, i64 0, !dbg !197
  %call12 = call i32 @atoi(i8* %arraydecay11) #7, !dbg !199
  store i32 %call12, i32* %data, align 4, !dbg !200
  br label %if.end14, !dbg !201

if.else13:                                        ; preds = %if.else5
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !202
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then10
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  %call16 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !204
  %tobool17 = icmp ne i32 %call16, 0, !dbg !204
  br i1 %tobool17, label %if.then18, label %if.else27, !dbg !206

if.then18:                                        ; preds = %if.end15
  call void @llvm.dbg.declare(metadata i32* %i, metadata !207, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !211, metadata !DIExpression()), !dbg !212
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !212
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !212
  %5 = load i32, i32* %data, align 4, !dbg !213
  %cmp19 = icmp sge i32 %5, 0, !dbg !215
  br i1 %cmp19, label %land.lhs.true, label %if.else25, !dbg !216

land.lhs.true:                                    ; preds = %if.then18
  %6 = load i32, i32* %data, align 4, !dbg !217
  %cmp20 = icmp slt i32 %6, 10, !dbg !218
  br i1 %cmp20, label %if.then21, label %if.else25, !dbg !219

if.then21:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !220
  %idxprom = sext i32 %7 to i64, !dbg !222
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !222
  store i32 1, i32* %arrayidx, align 4, !dbg !223
  store i32 0, i32* %i, align 4, !dbg !224
  br label %for.cond, !dbg !226

for.cond:                                         ; preds = %for.inc, %if.then21
  %8 = load i32, i32* %i, align 4, !dbg !227
  %cmp22 = icmp slt i32 %8, 10, !dbg !229
  br i1 %cmp22, label %for.body, label %for.end, !dbg !230

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !231
  %idxprom23 = sext i32 %9 to i64, !dbg !233
  %arrayidx24 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom23, !dbg !233
  %10 = load i32, i32* %arrayidx24, align 4, !dbg !233
  call void @printIntLine(i32 %10), !dbg !234
  br label %for.inc, !dbg !235

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !236
  %inc = add nsw i32 %11, 1, !dbg !236
  store i32 %inc, i32* %i, align 4, !dbg !236
  br label %for.cond, !dbg !237, !llvm.loop !238

for.end:                                          ; preds = %for.cond
  br label %if.end26, !dbg !240

if.else25:                                        ; preds = %land.lhs.true, %if.then18
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !241
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %for.end
  br label %if.end46, !dbg !243

if.else27:                                        ; preds = %if.end15
  call void @llvm.dbg.declare(metadata i32* %i28, metadata !244, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer29, metadata !248, metadata !DIExpression()), !dbg !249
  %12 = bitcast [10 x i32]* %buffer29 to i8*, !dbg !249
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !249
  %13 = load i32, i32* %data, align 4, !dbg !250
  %cmp30 = icmp sge i32 %13, 0, !dbg !252
  br i1 %cmp30, label %land.lhs.true31, label %if.else44, !dbg !253

land.lhs.true31:                                  ; preds = %if.else27
  %14 = load i32, i32* %data, align 4, !dbg !254
  %cmp32 = icmp slt i32 %14, 10, !dbg !255
  br i1 %cmp32, label %if.then33, label %if.else44, !dbg !256

if.then33:                                        ; preds = %land.lhs.true31
  %15 = load i32, i32* %data, align 4, !dbg !257
  %idxprom34 = sext i32 %15 to i64, !dbg !259
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer29, i64 0, i64 %idxprom34, !dbg !259
  store i32 1, i32* %arrayidx35, align 4, !dbg !260
  store i32 0, i32* %i28, align 4, !dbg !261
  br label %for.cond36, !dbg !263

for.cond36:                                       ; preds = %for.inc41, %if.then33
  %16 = load i32, i32* %i28, align 4, !dbg !264
  %cmp37 = icmp slt i32 %16, 10, !dbg !266
  br i1 %cmp37, label %for.body38, label %for.end43, !dbg !267

for.body38:                                       ; preds = %for.cond36
  %17 = load i32, i32* %i28, align 4, !dbg !268
  %idxprom39 = sext i32 %17 to i64, !dbg !270
  %arrayidx40 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer29, i64 0, i64 %idxprom39, !dbg !270
  %18 = load i32, i32* %arrayidx40, align 4, !dbg !270
  call void @printIntLine(i32 %18), !dbg !271
  br label %for.inc41, !dbg !272

for.inc41:                                        ; preds = %for.body38
  %19 = load i32, i32* %i28, align 4, !dbg !273
  %inc42 = add nsw i32 %19, 1, !dbg !273
  store i32 %inc42, i32* %i28, align 4, !dbg !273
  br label %for.cond36, !dbg !274, !llvm.loop !275

for.end43:                                        ; preds = %for.cond36
  br label %if.end45, !dbg !277

if.else44:                                        ; preds = %land.lhs.true31, %if.else27
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !278
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %for.end43
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end26
  ret void, !dbg !280
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !281 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  %i11 = alloca i32, align 4
  %buffer12 = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !282, metadata !DIExpression()), !dbg !283
  store i32 -1, i32* %data, align 4, !dbg !284
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !285
  %tobool = icmp ne i32 %call, 0, !dbg !285
  br i1 %tobool, label %if.then, label %if.else, !dbg !287

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !288
  br label %if.end, !dbg !290

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !291
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call1 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !293
  %tobool2 = icmp ne i32 %call1, 0, !dbg !293
  br i1 %tobool2, label %if.then3, label %if.else10, !dbg !295

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !296, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !301
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !301
  %1 = load i32, i32* %data, align 4, !dbg !302
  %cmp = icmp sge i32 %1, 0, !dbg !304
  br i1 %cmp, label %if.then4, label %if.else8, !dbg !305

if.then4:                                         ; preds = %if.then3
  %2 = load i32, i32* %data, align 4, !dbg !306
  %idxprom = sext i32 %2 to i64, !dbg !308
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !308
  store i32 1, i32* %arrayidx, align 4, !dbg !309
  store i32 0, i32* %i, align 4, !dbg !310
  br label %for.cond, !dbg !312

for.cond:                                         ; preds = %for.inc, %if.then4
  %3 = load i32, i32* %i, align 4, !dbg !313
  %cmp5 = icmp slt i32 %3, 10, !dbg !315
  br i1 %cmp5, label %for.body, label %for.end, !dbg !316

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !317
  %idxprom6 = sext i32 %4 to i64, !dbg !319
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !319
  %5 = load i32, i32* %arrayidx7, align 4, !dbg !319
  call void @printIntLine(i32 %5), !dbg !320
  br label %for.inc, !dbg !321

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !322
  %inc = add nsw i32 %6, 1, !dbg !322
  store i32 %inc, i32* %i, align 4, !dbg !322
  br label %for.cond, !dbg !323, !llvm.loop !324

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !326

if.else8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !327
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end27, !dbg !329

if.else10:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i11, metadata !330, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer12, metadata !334, metadata !DIExpression()), !dbg !335
  %7 = bitcast [10 x i32]* %buffer12 to i8*, !dbg !335
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 40, i1 false), !dbg !335
  %8 = load i32, i32* %data, align 4, !dbg !336
  %cmp13 = icmp sge i32 %8, 0, !dbg !338
  br i1 %cmp13, label %if.then14, label %if.else25, !dbg !339

if.then14:                                        ; preds = %if.else10
  %9 = load i32, i32* %data, align 4, !dbg !340
  %idxprom15 = sext i32 %9 to i64, !dbg !342
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer12, i64 0, i64 %idxprom15, !dbg !342
  store i32 1, i32* %arrayidx16, align 4, !dbg !343
  store i32 0, i32* %i11, align 4, !dbg !344
  br label %for.cond17, !dbg !346

for.cond17:                                       ; preds = %for.inc22, %if.then14
  %10 = load i32, i32* %i11, align 4, !dbg !347
  %cmp18 = icmp slt i32 %10, 10, !dbg !349
  br i1 %cmp18, label %for.body19, label %for.end24, !dbg !350

for.body19:                                       ; preds = %for.cond17
  %11 = load i32, i32* %i11, align 4, !dbg !351
  %idxprom20 = sext i32 %11 to i64, !dbg !353
  %arrayidx21 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer12, i64 0, i64 %idxprom20, !dbg !353
  %12 = load i32, i32* %arrayidx21, align 4, !dbg !353
  call void @printIntLine(i32 %12), !dbg !354
  br label %for.inc22, !dbg !355

for.inc22:                                        ; preds = %for.body19
  %13 = load i32, i32* %i11, align 4, !dbg !356
  %inc23 = add nsw i32 %13, 1, !dbg !356
  store i32 %inc23, i32* %i11, align 4, !dbg !356
  br label %for.cond17, !dbg !357, !llvm.loop !358

for.end24:                                        ; preds = %for.cond17
  br label %if.end26, !dbg !360

if.else25:                                        ; preds = %if.else10
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !361
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %for.end24
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end9
  ret void, !dbg !363
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_good() #0 !dbg !364 {
entry:
  call void @goodB2G(), !dbg !365
  call void @goodG2B(), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !368 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !371, metadata !DIExpression()), !dbg !372
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !373
  %0 = load i8*, i8** %line.addr, align 8, !dbg !374
  %cmp = icmp ne i8* %0, null, !dbg !376
  br i1 %cmp, label %if.then, label %if.end, !dbg !377

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !378
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !380
  br label %if.end, !dbg !381

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !382
  ret void, !dbg !383
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !384 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load i8*, i8** %line.addr, align 8, !dbg !387
  %cmp = icmp ne i8* %0, null, !dbg !389
  br i1 %cmp, label %if.then, label %if.end, !dbg !390

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !391
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !393
  br label %if.end, !dbg !394

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !395
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !396 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = load i32*, i32** %line.addr, align 8, !dbg !404
  %cmp = icmp ne i32* %0, null, !dbg !406
  br i1 %cmp, label %if.then, label %if.end, !dbg !407

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !408
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !410
  br label %if.end, !dbg !411

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !412
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !413 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !416, metadata !DIExpression()), !dbg !417
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !418
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !419
  ret void, !dbg !420
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !421 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !425, metadata !DIExpression()), !dbg !426
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !427
  %conv = sext i16 %0 to i32, !dbg !427
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !428
  ret void, !dbg !429
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !430 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !434, metadata !DIExpression()), !dbg !435
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !436
  %conv = fpext float %0 to double, !dbg !436
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !437
  ret void, !dbg !438
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !439 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !443, metadata !DIExpression()), !dbg !444
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !445
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !446
  ret void, !dbg !447
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !448 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !455, metadata !DIExpression()), !dbg !456
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !457
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !458
  ret void, !dbg !459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !460 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !465, metadata !DIExpression()), !dbg !466
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !467
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !468
  ret void, !dbg !469
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !470 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !473, metadata !DIExpression()), !dbg !474
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !475
  %conv = sext i8 %0 to i32, !dbg !475
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !476
  ret void, !dbg !477
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !478 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !481, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !483, metadata !DIExpression()), !dbg !487
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !488
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !489
  store i32 %0, i32* %arrayidx, align 4, !dbg !490
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !491
  store i32 0, i32* %arrayidx1, align 4, !dbg !492
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !493
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !494
  ret void, !dbg !495
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !496 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !499, metadata !DIExpression()), !dbg !500
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !501
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !502
  ret void, !dbg !503
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !504 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !507, metadata !DIExpression()), !dbg !508
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !509
  %conv = zext i8 %0 to i32, !dbg !509
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !510
  ret void, !dbg !511
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !512 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !516, metadata !DIExpression()), !dbg !517
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !518
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !519
  ret void, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !521 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !531, metadata !DIExpression()), !dbg !532
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !533
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !534
  %1 = load i32, i32* %intOne, align 4, !dbg !534
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !535
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !536
  %3 = load i32, i32* %intTwo, align 4, !dbg !536
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !537
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !539 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !543, metadata !DIExpression()), !dbg !544
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !545, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.declare(metadata i64* %i, metadata !547, metadata !DIExpression()), !dbg !548
  store i64 0, i64* %i, align 8, !dbg !549
  br label %for.cond, !dbg !551

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !552
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !554
  %cmp = icmp ult i64 %0, %1, !dbg !555
  br i1 %cmp, label %for.body, label %for.end, !dbg !556

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !557
  %3 = load i64, i64* %i, align 8, !dbg !559
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !557
  %4 = load i8, i8* %arrayidx, align 1, !dbg !557
  %conv = zext i8 %4 to i32, !dbg !557
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !560
  br label %for.inc, !dbg !561

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !562
  %inc = add i64 %5, 1, !dbg !562
  store i64 %inc, i64* %i, align 8, !dbg !562
  br label %for.cond, !dbg !563, !llvm.loop !564

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !566
  ret void, !dbg !567
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !568 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !571, metadata !DIExpression()), !dbg !572
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !573, metadata !DIExpression()), !dbg !574
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !575, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !577, metadata !DIExpression()), !dbg !578
  store i64 0, i64* %numWritten, align 8, !dbg !578
  br label %while.cond, !dbg !579

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !580
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !581
  %cmp = icmp ult i64 %0, %1, !dbg !582
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !583

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !584
  %2 = load i16*, i16** %call, align 8, !dbg !584
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !584
  %4 = load i64, i64* %numWritten, align 8, !dbg !584
  %mul = mul i64 2, %4, !dbg !584
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !584
  %5 = load i8, i8* %arrayidx, align 1, !dbg !584
  %conv = sext i8 %5 to i32, !dbg !584
  %idxprom = sext i32 %conv to i64, !dbg !584
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !584
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !584
  %conv2 = zext i16 %6 to i32, !dbg !584
  %and = and i32 %conv2, 4096, !dbg !584
  %tobool = icmp ne i32 %and, 0, !dbg !584
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !585

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !586
  %7 = load i16*, i16** %call3, align 8, !dbg !586
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !586
  %9 = load i64, i64* %numWritten, align 8, !dbg !586
  %mul4 = mul i64 2, %9, !dbg !586
  %add = add i64 %mul4, 1, !dbg !586
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !586
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !586
  %conv6 = sext i8 %10 to i32, !dbg !586
  %idxprom7 = sext i32 %conv6 to i64, !dbg !586
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !586
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !586
  %conv9 = zext i16 %11 to i32, !dbg !586
  %and10 = and i32 %conv9, 4096, !dbg !586
  %tobool11 = icmp ne i32 %and10, 0, !dbg !585
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !587
  br i1 %12, label %while.body, label %while.end, !dbg !579

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !588, metadata !DIExpression()), !dbg !590
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !591
  %14 = load i64, i64* %numWritten, align 8, !dbg !592
  %mul12 = mul i64 2, %14, !dbg !593
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !591
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !594
  %15 = load i32, i32* %byte, align 4, !dbg !595
  %conv15 = trunc i32 %15 to i8, !dbg !596
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !597
  %17 = load i64, i64* %numWritten, align 8, !dbg !598
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !597
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !599
  %18 = load i64, i64* %numWritten, align 8, !dbg !600
  %inc = add i64 %18, 1, !dbg !600
  store i64 %inc, i64* %numWritten, align 8, !dbg !600
  br label %while.cond, !dbg !579, !llvm.loop !601

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !603
  ret i64 %19, !dbg !604
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !605 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !608, metadata !DIExpression()), !dbg !609
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !610, metadata !DIExpression()), !dbg !611
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !612, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !614, metadata !DIExpression()), !dbg !615
  store i64 0, i64* %numWritten, align 8, !dbg !615
  br label %while.cond, !dbg !616

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !617
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !618
  %cmp = icmp ult i64 %0, %1, !dbg !619
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !620

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !621
  %3 = load i64, i64* %numWritten, align 8, !dbg !622
  %mul = mul i64 2, %3, !dbg !623
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !621
  %4 = load i32, i32* %arrayidx, align 4, !dbg !621
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !624
  %tobool = icmp ne i32 %call, 0, !dbg !624
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !625

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !626
  %6 = load i64, i64* %numWritten, align 8, !dbg !627
  %mul1 = mul i64 2, %6, !dbg !628
  %add = add i64 %mul1, 1, !dbg !629
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !626
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !626
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !630
  %tobool4 = icmp ne i32 %call3, 0, !dbg !625
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !631
  br i1 %8, label %while.body, label %while.end, !dbg !616

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !632, metadata !DIExpression()), !dbg !634
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !635
  %10 = load i64, i64* %numWritten, align 8, !dbg !636
  %mul5 = mul i64 2, %10, !dbg !637
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !635
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !638
  %11 = load i32, i32* %byte, align 4, !dbg !639
  %conv = trunc i32 %11 to i8, !dbg !640
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !641
  %13 = load i64, i64* %numWritten, align 8, !dbg !642
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !641
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !643
  %14 = load i64, i64* %numWritten, align 8, !dbg !644
  %inc = add i64 %14, 1, !dbg !644
  store i64 %inc, i64* %numWritten, align 8, !dbg !644
  br label %while.cond, !dbg !616, !llvm.loop !645

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !647
  ret i64 %15, !dbg !648
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !649 {
entry:
  ret i32 1, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !653 {
entry:
  ret i32 0, !dbg !654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !655 {
entry:
  %call = call i32 @rand() #9, !dbg !656
  %rem = srem i32 %call, 2, !dbg !657
  ret i32 %rem, !dbg !658
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !659 {
entry:
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !661 {
entry:
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !663 {
entry:
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !665 {
entry:
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !671 {
entry:
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !673 {
entry:
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !675 {
entry:
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !677 {
entry:
  ret void, !dbg !678
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !679 {
entry:
  ret void, !dbg !680
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !681 {
entry:
  ret void, !dbg !682
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !683 {
entry:
  ret void, !dbg !684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !685 {
entry:
  ret void, !dbg !686
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !687 {
entry:
  ret void, !dbg !688
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !689 {
entry:
  ret void, !dbg !690
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !691 {
entry:
  ret void, !dbg !692
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !693 {
entry:
  ret void, !dbg !694
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_575/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_575/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad", scope: !45, file: !45, line: 25, type: !53, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 27, type: !23)
!56 = !DILocation(line: 27, column: 9, scope: !52)
!57 = !DILocation(line: 29, column: 10, scope: !52)
!58 = !DILocation(line: 30, column: 8, scope: !59)
!59 = distinct !DILexicalBlock(scope: !52, file: !45, line: 30, column: 8)
!60 = !DILocation(line: 30, column: 8, scope: !52)
!61 = !DILocalVariable(name: "inputBuffer", scope: !62, file: !45, line: 33, type: !64)
!62 = distinct !DILexicalBlock(scope: !63, file: !45, line: 32, column: 9)
!63 = distinct !DILexicalBlock(scope: !59, file: !45, line: 31, column: 5)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 112, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 14)
!67 = !DILocation(line: 33, column: 18, scope: !62)
!68 = !DILocation(line: 35, column: 23, scope: !69)
!69 = distinct !DILexicalBlock(scope: !62, file: !45, line: 35, column: 17)
!70 = !DILocation(line: 35, column: 53, scope: !69)
!71 = !DILocation(line: 35, column: 17, scope: !69)
!72 = !DILocation(line: 35, column: 60, scope: !69)
!73 = !DILocation(line: 35, column: 17, scope: !62)
!74 = !DILocation(line: 38, column: 29, scope: !75)
!75 = distinct !DILexicalBlock(scope: !69, file: !45, line: 36, column: 13)
!76 = !DILocation(line: 38, column: 24, scope: !75)
!77 = !DILocation(line: 38, column: 22, scope: !75)
!78 = !DILocation(line: 39, column: 13, scope: !75)
!79 = !DILocation(line: 42, column: 17, scope: !80)
!80 = distinct !DILexicalBlock(scope: !69, file: !45, line: 41, column: 13)
!81 = !DILocation(line: 45, column: 5, scope: !63)
!82 = !DILocation(line: 50, column: 14, scope: !83)
!83 = distinct !DILexicalBlock(scope: !59, file: !45, line: 47, column: 5)
!84 = !DILocation(line: 52, column: 8, scope: !85)
!85 = distinct !DILexicalBlock(scope: !52, file: !45, line: 52, column: 8)
!86 = !DILocation(line: 52, column: 8, scope: !52)
!87 = !DILocalVariable(name: "i", scope: !88, file: !45, line: 55, type: !23)
!88 = distinct !DILexicalBlock(scope: !89, file: !45, line: 54, column: 9)
!89 = distinct !DILexicalBlock(scope: !85, file: !45, line: 53, column: 5)
!90 = !DILocation(line: 55, column: 17, scope: !88)
!91 = !DILocalVariable(name: "buffer", scope: !88, file: !45, line: 56, type: !92)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 10)
!95 = !DILocation(line: 56, column: 17, scope: !88)
!96 = !DILocation(line: 59, column: 17, scope: !97)
!97 = distinct !DILexicalBlock(scope: !88, file: !45, line: 59, column: 17)
!98 = !DILocation(line: 59, column: 22, scope: !97)
!99 = !DILocation(line: 59, column: 17, scope: !88)
!100 = !DILocation(line: 61, column: 24, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !45, line: 60, column: 13)
!102 = !DILocation(line: 61, column: 17, scope: !101)
!103 = !DILocation(line: 61, column: 30, scope: !101)
!104 = !DILocation(line: 63, column: 23, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !45, line: 63, column: 17)
!106 = !DILocation(line: 63, column: 21, scope: !105)
!107 = !DILocation(line: 63, column: 28, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !45, line: 63, column: 17)
!109 = !DILocation(line: 63, column: 30, scope: !108)
!110 = !DILocation(line: 63, column: 17, scope: !105)
!111 = !DILocation(line: 65, column: 41, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !45, line: 64, column: 17)
!113 = !DILocation(line: 65, column: 34, scope: !112)
!114 = !DILocation(line: 65, column: 21, scope: !112)
!115 = !DILocation(line: 66, column: 17, scope: !112)
!116 = !DILocation(line: 63, column: 37, scope: !108)
!117 = !DILocation(line: 63, column: 17, scope: !108)
!118 = distinct !{!118, !110, !119, !120}
!119 = !DILocation(line: 66, column: 17, scope: !105)
!120 = !{!"llvm.loop.mustprogress"}
!121 = !DILocation(line: 67, column: 13, scope: !101)
!122 = !DILocation(line: 70, column: 17, scope: !123)
!123 = distinct !DILexicalBlock(scope: !97, file: !45, line: 69, column: 13)
!124 = !DILocation(line: 73, column: 5, scope: !89)
!125 = !DILocalVariable(name: "i", scope: !126, file: !45, line: 77, type: !23)
!126 = distinct !DILexicalBlock(scope: !127, file: !45, line: 76, column: 9)
!127 = distinct !DILexicalBlock(scope: !85, file: !45, line: 75, column: 5)
!128 = !DILocation(line: 77, column: 17, scope: !126)
!129 = !DILocalVariable(name: "buffer", scope: !126, file: !45, line: 78, type: !92)
!130 = !DILocation(line: 78, column: 17, scope: !126)
!131 = !DILocation(line: 80, column: 17, scope: !132)
!132 = distinct !DILexicalBlock(scope: !126, file: !45, line: 80, column: 17)
!133 = !DILocation(line: 80, column: 22, scope: !132)
!134 = !DILocation(line: 80, column: 27, scope: !132)
!135 = !DILocation(line: 80, column: 30, scope: !132)
!136 = !DILocation(line: 80, column: 35, scope: !132)
!137 = !DILocation(line: 80, column: 17, scope: !126)
!138 = !DILocation(line: 82, column: 24, scope: !139)
!139 = distinct !DILexicalBlock(scope: !132, file: !45, line: 81, column: 13)
!140 = !DILocation(line: 82, column: 17, scope: !139)
!141 = !DILocation(line: 82, column: 30, scope: !139)
!142 = !DILocation(line: 84, column: 23, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !45, line: 84, column: 17)
!144 = !DILocation(line: 84, column: 21, scope: !143)
!145 = !DILocation(line: 84, column: 28, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !45, line: 84, column: 17)
!147 = !DILocation(line: 84, column: 30, scope: !146)
!148 = !DILocation(line: 84, column: 17, scope: !143)
!149 = !DILocation(line: 86, column: 41, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !45, line: 85, column: 17)
!151 = !DILocation(line: 86, column: 34, scope: !150)
!152 = !DILocation(line: 86, column: 21, scope: !150)
!153 = !DILocation(line: 87, column: 17, scope: !150)
!154 = !DILocation(line: 84, column: 37, scope: !146)
!155 = !DILocation(line: 84, column: 17, scope: !146)
!156 = distinct !{!156, !148, !157, !120}
!157 = !DILocation(line: 87, column: 17, scope: !143)
!158 = !DILocation(line: 88, column: 13, scope: !139)
!159 = !DILocation(line: 91, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !132, file: !45, line: 90, column: 13)
!161 = !DILocation(line: 95, column: 1, scope: !52)
!162 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 104, type: !53, scopeLine: 105, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!163 = !DILocalVariable(name: "data", scope: !162, file: !45, line: 106, type: !23)
!164 = !DILocation(line: 106, column: 9, scope: !162)
!165 = !DILocation(line: 108, column: 10, scope: !162)
!166 = !DILocation(line: 109, column: 8, scope: !167)
!167 = distinct !DILexicalBlock(scope: !162, file: !45, line: 109, column: 8)
!168 = !DILocation(line: 109, column: 8, scope: !162)
!169 = !DILocalVariable(name: "inputBuffer", scope: !170, file: !45, line: 112, type: !64)
!170 = distinct !DILexicalBlock(scope: !171, file: !45, line: 111, column: 9)
!171 = distinct !DILexicalBlock(scope: !167, file: !45, line: 110, column: 5)
!172 = !DILocation(line: 112, column: 18, scope: !170)
!173 = !DILocation(line: 114, column: 23, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !45, line: 114, column: 17)
!175 = !DILocation(line: 114, column: 53, scope: !174)
!176 = !DILocation(line: 114, column: 17, scope: !174)
!177 = !DILocation(line: 114, column: 60, scope: !174)
!178 = !DILocation(line: 114, column: 17, scope: !170)
!179 = !DILocation(line: 117, column: 29, scope: !180)
!180 = distinct !DILexicalBlock(scope: !174, file: !45, line: 115, column: 13)
!181 = !DILocation(line: 117, column: 24, scope: !180)
!182 = !DILocation(line: 117, column: 22, scope: !180)
!183 = !DILocation(line: 118, column: 13, scope: !180)
!184 = !DILocation(line: 121, column: 17, scope: !185)
!185 = distinct !DILexicalBlock(scope: !174, file: !45, line: 120, column: 13)
!186 = !DILocation(line: 124, column: 5, scope: !171)
!187 = !DILocalVariable(name: "inputBuffer", scope: !188, file: !45, line: 128, type: !64)
!188 = distinct !DILexicalBlock(scope: !189, file: !45, line: 127, column: 9)
!189 = distinct !DILexicalBlock(scope: !167, file: !45, line: 126, column: 5)
!190 = !DILocation(line: 128, column: 18, scope: !188)
!191 = !DILocation(line: 130, column: 23, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !45, line: 130, column: 17)
!193 = !DILocation(line: 130, column: 53, scope: !192)
!194 = !DILocation(line: 130, column: 17, scope: !192)
!195 = !DILocation(line: 130, column: 60, scope: !192)
!196 = !DILocation(line: 130, column: 17, scope: !188)
!197 = !DILocation(line: 133, column: 29, scope: !198)
!198 = distinct !DILexicalBlock(scope: !192, file: !45, line: 131, column: 13)
!199 = !DILocation(line: 133, column: 24, scope: !198)
!200 = !DILocation(line: 133, column: 22, scope: !198)
!201 = !DILocation(line: 134, column: 13, scope: !198)
!202 = !DILocation(line: 137, column: 17, scope: !203)
!203 = distinct !DILexicalBlock(scope: !192, file: !45, line: 136, column: 13)
!204 = !DILocation(line: 141, column: 8, scope: !205)
!205 = distinct !DILexicalBlock(scope: !162, file: !45, line: 141, column: 8)
!206 = !DILocation(line: 141, column: 8, scope: !162)
!207 = !DILocalVariable(name: "i", scope: !208, file: !45, line: 144, type: !23)
!208 = distinct !DILexicalBlock(scope: !209, file: !45, line: 143, column: 9)
!209 = distinct !DILexicalBlock(scope: !205, file: !45, line: 142, column: 5)
!210 = !DILocation(line: 144, column: 17, scope: !208)
!211 = !DILocalVariable(name: "buffer", scope: !208, file: !45, line: 145, type: !92)
!212 = !DILocation(line: 145, column: 17, scope: !208)
!213 = !DILocation(line: 147, column: 17, scope: !214)
!214 = distinct !DILexicalBlock(scope: !208, file: !45, line: 147, column: 17)
!215 = !DILocation(line: 147, column: 22, scope: !214)
!216 = !DILocation(line: 147, column: 27, scope: !214)
!217 = !DILocation(line: 147, column: 30, scope: !214)
!218 = !DILocation(line: 147, column: 35, scope: !214)
!219 = !DILocation(line: 147, column: 17, scope: !208)
!220 = !DILocation(line: 149, column: 24, scope: !221)
!221 = distinct !DILexicalBlock(scope: !214, file: !45, line: 148, column: 13)
!222 = !DILocation(line: 149, column: 17, scope: !221)
!223 = !DILocation(line: 149, column: 30, scope: !221)
!224 = !DILocation(line: 151, column: 23, scope: !225)
!225 = distinct !DILexicalBlock(scope: !221, file: !45, line: 151, column: 17)
!226 = !DILocation(line: 151, column: 21, scope: !225)
!227 = !DILocation(line: 151, column: 28, scope: !228)
!228 = distinct !DILexicalBlock(scope: !225, file: !45, line: 151, column: 17)
!229 = !DILocation(line: 151, column: 30, scope: !228)
!230 = !DILocation(line: 151, column: 17, scope: !225)
!231 = !DILocation(line: 153, column: 41, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !45, line: 152, column: 17)
!233 = !DILocation(line: 153, column: 34, scope: !232)
!234 = !DILocation(line: 153, column: 21, scope: !232)
!235 = !DILocation(line: 154, column: 17, scope: !232)
!236 = !DILocation(line: 151, column: 37, scope: !228)
!237 = !DILocation(line: 151, column: 17, scope: !228)
!238 = distinct !{!238, !230, !239, !120}
!239 = !DILocation(line: 154, column: 17, scope: !225)
!240 = !DILocation(line: 155, column: 13, scope: !221)
!241 = !DILocation(line: 158, column: 17, scope: !242)
!242 = distinct !DILexicalBlock(scope: !214, file: !45, line: 157, column: 13)
!243 = !DILocation(line: 161, column: 5, scope: !209)
!244 = !DILocalVariable(name: "i", scope: !245, file: !45, line: 165, type: !23)
!245 = distinct !DILexicalBlock(scope: !246, file: !45, line: 164, column: 9)
!246 = distinct !DILexicalBlock(scope: !205, file: !45, line: 163, column: 5)
!247 = !DILocation(line: 165, column: 17, scope: !245)
!248 = !DILocalVariable(name: "buffer", scope: !245, file: !45, line: 166, type: !92)
!249 = !DILocation(line: 166, column: 17, scope: !245)
!250 = !DILocation(line: 168, column: 17, scope: !251)
!251 = distinct !DILexicalBlock(scope: !245, file: !45, line: 168, column: 17)
!252 = !DILocation(line: 168, column: 22, scope: !251)
!253 = !DILocation(line: 168, column: 27, scope: !251)
!254 = !DILocation(line: 168, column: 30, scope: !251)
!255 = !DILocation(line: 168, column: 35, scope: !251)
!256 = !DILocation(line: 168, column: 17, scope: !245)
!257 = !DILocation(line: 170, column: 24, scope: !258)
!258 = distinct !DILexicalBlock(scope: !251, file: !45, line: 169, column: 13)
!259 = !DILocation(line: 170, column: 17, scope: !258)
!260 = !DILocation(line: 170, column: 30, scope: !258)
!261 = !DILocation(line: 172, column: 23, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !45, line: 172, column: 17)
!263 = !DILocation(line: 172, column: 21, scope: !262)
!264 = !DILocation(line: 172, column: 28, scope: !265)
!265 = distinct !DILexicalBlock(scope: !262, file: !45, line: 172, column: 17)
!266 = !DILocation(line: 172, column: 30, scope: !265)
!267 = !DILocation(line: 172, column: 17, scope: !262)
!268 = !DILocation(line: 174, column: 41, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !45, line: 173, column: 17)
!270 = !DILocation(line: 174, column: 34, scope: !269)
!271 = !DILocation(line: 174, column: 21, scope: !269)
!272 = !DILocation(line: 175, column: 17, scope: !269)
!273 = !DILocation(line: 172, column: 37, scope: !265)
!274 = !DILocation(line: 172, column: 17, scope: !265)
!275 = distinct !{!275, !267, !276, !120}
!276 = !DILocation(line: 175, column: 17, scope: !262)
!277 = !DILocation(line: 176, column: 13, scope: !258)
!278 = !DILocation(line: 179, column: 17, scope: !279)
!279 = distinct !DILexicalBlock(scope: !251, file: !45, line: 178, column: 13)
!280 = !DILocation(line: 183, column: 1, scope: !162)
!281 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 188, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!282 = !DILocalVariable(name: "data", scope: !281, file: !45, line: 190, type: !23)
!283 = !DILocation(line: 190, column: 9, scope: !281)
!284 = !DILocation(line: 192, column: 10, scope: !281)
!285 = !DILocation(line: 193, column: 8, scope: !286)
!286 = distinct !DILexicalBlock(scope: !281, file: !45, line: 193, column: 8)
!287 = !DILocation(line: 193, column: 8, scope: !281)
!288 = !DILocation(line: 197, column: 14, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !45, line: 194, column: 5)
!290 = !DILocation(line: 198, column: 5, scope: !289)
!291 = !DILocation(line: 203, column: 14, scope: !292)
!292 = distinct !DILexicalBlock(scope: !286, file: !45, line: 200, column: 5)
!293 = !DILocation(line: 205, column: 8, scope: !294)
!294 = distinct !DILexicalBlock(scope: !281, file: !45, line: 205, column: 8)
!295 = !DILocation(line: 205, column: 8, scope: !281)
!296 = !DILocalVariable(name: "i", scope: !297, file: !45, line: 208, type: !23)
!297 = distinct !DILexicalBlock(scope: !298, file: !45, line: 207, column: 9)
!298 = distinct !DILexicalBlock(scope: !294, file: !45, line: 206, column: 5)
!299 = !DILocation(line: 208, column: 17, scope: !297)
!300 = !DILocalVariable(name: "buffer", scope: !297, file: !45, line: 209, type: !92)
!301 = !DILocation(line: 209, column: 17, scope: !297)
!302 = !DILocation(line: 212, column: 17, scope: !303)
!303 = distinct !DILexicalBlock(scope: !297, file: !45, line: 212, column: 17)
!304 = !DILocation(line: 212, column: 22, scope: !303)
!305 = !DILocation(line: 212, column: 17, scope: !297)
!306 = !DILocation(line: 214, column: 24, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !45, line: 213, column: 13)
!308 = !DILocation(line: 214, column: 17, scope: !307)
!309 = !DILocation(line: 214, column: 30, scope: !307)
!310 = !DILocation(line: 216, column: 23, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !45, line: 216, column: 17)
!312 = !DILocation(line: 216, column: 21, scope: !311)
!313 = !DILocation(line: 216, column: 28, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !45, line: 216, column: 17)
!315 = !DILocation(line: 216, column: 30, scope: !314)
!316 = !DILocation(line: 216, column: 17, scope: !311)
!317 = !DILocation(line: 218, column: 41, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !45, line: 217, column: 17)
!319 = !DILocation(line: 218, column: 34, scope: !318)
!320 = !DILocation(line: 218, column: 21, scope: !318)
!321 = !DILocation(line: 219, column: 17, scope: !318)
!322 = !DILocation(line: 216, column: 37, scope: !314)
!323 = !DILocation(line: 216, column: 17, scope: !314)
!324 = distinct !{!324, !316, !325, !120}
!325 = !DILocation(line: 219, column: 17, scope: !311)
!326 = !DILocation(line: 220, column: 13, scope: !307)
!327 = !DILocation(line: 223, column: 17, scope: !328)
!328 = distinct !DILexicalBlock(scope: !303, file: !45, line: 222, column: 13)
!329 = !DILocation(line: 226, column: 5, scope: !298)
!330 = !DILocalVariable(name: "i", scope: !331, file: !45, line: 230, type: !23)
!331 = distinct !DILexicalBlock(scope: !332, file: !45, line: 229, column: 9)
!332 = distinct !DILexicalBlock(scope: !294, file: !45, line: 228, column: 5)
!333 = !DILocation(line: 230, column: 17, scope: !331)
!334 = !DILocalVariable(name: "buffer", scope: !331, file: !45, line: 231, type: !92)
!335 = !DILocation(line: 231, column: 17, scope: !331)
!336 = !DILocation(line: 234, column: 17, scope: !337)
!337 = distinct !DILexicalBlock(scope: !331, file: !45, line: 234, column: 17)
!338 = !DILocation(line: 234, column: 22, scope: !337)
!339 = !DILocation(line: 234, column: 17, scope: !331)
!340 = !DILocation(line: 236, column: 24, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !45, line: 235, column: 13)
!342 = !DILocation(line: 236, column: 17, scope: !341)
!343 = !DILocation(line: 236, column: 30, scope: !341)
!344 = !DILocation(line: 238, column: 23, scope: !345)
!345 = distinct !DILexicalBlock(scope: !341, file: !45, line: 238, column: 17)
!346 = !DILocation(line: 238, column: 21, scope: !345)
!347 = !DILocation(line: 238, column: 28, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !45, line: 238, column: 17)
!349 = !DILocation(line: 238, column: 30, scope: !348)
!350 = !DILocation(line: 238, column: 17, scope: !345)
!351 = !DILocation(line: 240, column: 41, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !45, line: 239, column: 17)
!353 = !DILocation(line: 240, column: 34, scope: !352)
!354 = !DILocation(line: 240, column: 21, scope: !352)
!355 = !DILocation(line: 241, column: 17, scope: !352)
!356 = !DILocation(line: 238, column: 37, scope: !348)
!357 = !DILocation(line: 238, column: 17, scope: !348)
!358 = distinct !{!358, !350, !359, !120}
!359 = !DILocation(line: 241, column: 17, scope: !345)
!360 = !DILocation(line: 242, column: 13, scope: !341)
!361 = !DILocation(line: 245, column: 17, scope: !362)
!362 = distinct !DILexicalBlock(scope: !337, file: !45, line: 244, column: 13)
!363 = !DILocation(line: 249, column: 1, scope: !281)
!364 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_good", scope: !45, file: !45, line: 251, type: !53, scopeLine: 252, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!365 = !DILocation(line: 253, column: 5, scope: !364)
!366 = !DILocation(line: 254, column: 5, scope: !364)
!367 = !DILocation(line: 255, column: 1, scope: !364)
!368 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !369, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !42}
!371 = !DILocalVariable(name: "line", arg: 1, scope: !368, file: !3, line: 11, type: !42)
!372 = !DILocation(line: 11, column: 25, scope: !368)
!373 = !DILocation(line: 13, column: 1, scope: !368)
!374 = !DILocation(line: 14, column: 8, scope: !375)
!375 = distinct !DILexicalBlock(scope: !368, file: !3, line: 14, column: 8)
!376 = !DILocation(line: 14, column: 13, scope: !375)
!377 = !DILocation(line: 14, column: 8, scope: !368)
!378 = !DILocation(line: 16, column: 24, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !3, line: 15, column: 5)
!380 = !DILocation(line: 16, column: 9, scope: !379)
!381 = !DILocation(line: 17, column: 5, scope: !379)
!382 = !DILocation(line: 18, column: 5, scope: !368)
!383 = !DILocation(line: 19, column: 1, scope: !368)
!384 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !369, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!385 = !DILocalVariable(name: "line", arg: 1, scope: !384, file: !3, line: 20, type: !42)
!386 = !DILocation(line: 20, column: 29, scope: !384)
!387 = !DILocation(line: 22, column: 8, scope: !388)
!388 = distinct !DILexicalBlock(scope: !384, file: !3, line: 22, column: 8)
!389 = !DILocation(line: 22, column: 13, scope: !388)
!390 = !DILocation(line: 22, column: 8, scope: !384)
!391 = !DILocation(line: 24, column: 24, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !3, line: 23, column: 5)
!393 = !DILocation(line: 24, column: 9, scope: !392)
!394 = !DILocation(line: 25, column: 5, scope: !392)
!395 = !DILocation(line: 26, column: 1, scope: !384)
!396 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !397, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !399}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !401, line: 74, baseType: !23)
!401 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!402 = !DILocalVariable(name: "line", arg: 1, scope: !396, file: !3, line: 27, type: !399)
!403 = !DILocation(line: 27, column: 29, scope: !396)
!404 = !DILocation(line: 29, column: 8, scope: !405)
!405 = distinct !DILexicalBlock(scope: !396, file: !3, line: 29, column: 8)
!406 = !DILocation(line: 29, column: 13, scope: !405)
!407 = !DILocation(line: 29, column: 8, scope: !396)
!408 = !DILocation(line: 31, column: 27, scope: !409)
!409 = distinct !DILexicalBlock(scope: !405, file: !3, line: 30, column: 5)
!410 = !DILocation(line: 31, column: 9, scope: !409)
!411 = !DILocation(line: 32, column: 5, scope: !409)
!412 = !DILocation(line: 33, column: 1, scope: !396)
!413 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !414, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !23}
!416 = !DILocalVariable(name: "intNumber", arg: 1, scope: !413, file: !3, line: 35, type: !23)
!417 = !DILocation(line: 35, column: 24, scope: !413)
!418 = !DILocation(line: 37, column: 20, scope: !413)
!419 = !DILocation(line: 37, column: 5, scope: !413)
!420 = !DILocation(line: 38, column: 1, scope: !413)
!421 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !422, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !424}
!424 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!425 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !421, file: !3, line: 40, type: !424)
!426 = !DILocation(line: 40, column: 28, scope: !421)
!427 = !DILocation(line: 42, column: 21, scope: !421)
!428 = !DILocation(line: 42, column: 5, scope: !421)
!429 = !DILocation(line: 43, column: 1, scope: !421)
!430 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !431, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !433}
!433 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!434 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !430, file: !3, line: 45, type: !433)
!435 = !DILocation(line: 45, column: 28, scope: !430)
!436 = !DILocation(line: 47, column: 20, scope: !430)
!437 = !DILocation(line: 47, column: 5, scope: !430)
!438 = !DILocation(line: 48, column: 1, scope: !430)
!439 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !440, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !442}
!442 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!443 = !DILocalVariable(name: "longNumber", arg: 1, scope: !439, file: !3, line: 50, type: !442)
!444 = !DILocation(line: 50, column: 26, scope: !439)
!445 = !DILocation(line: 52, column: 21, scope: !439)
!446 = !DILocation(line: 52, column: 5, scope: !439)
!447 = !DILocation(line: 53, column: 1, scope: !439)
!448 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !449, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !451}
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !452, line: 27, baseType: !453)
!452 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !454, line: 44, baseType: !442)
!454 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!455 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !448, file: !3, line: 55, type: !451)
!456 = !DILocation(line: 55, column: 33, scope: !448)
!457 = !DILocation(line: 57, column: 29, scope: !448)
!458 = !DILocation(line: 57, column: 5, scope: !448)
!459 = !DILocation(line: 58, column: 1, scope: !448)
!460 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !461, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !463}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !401, line: 46, baseType: !464)
!464 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!465 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !460, file: !3, line: 60, type: !463)
!466 = !DILocation(line: 60, column: 29, scope: !460)
!467 = !DILocation(line: 62, column: 21, scope: !460)
!468 = !DILocation(line: 62, column: 5, scope: !460)
!469 = !DILocation(line: 63, column: 1, scope: !460)
!470 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !471, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !43}
!473 = !DILocalVariable(name: "charHex", arg: 1, scope: !470, file: !3, line: 65, type: !43)
!474 = !DILocation(line: 65, column: 29, scope: !470)
!475 = !DILocation(line: 67, column: 22, scope: !470)
!476 = !DILocation(line: 67, column: 5, scope: !470)
!477 = !DILocation(line: 68, column: 1, scope: !470)
!478 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !479, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !400}
!481 = !DILocalVariable(name: "wideChar", arg: 1, scope: !478, file: !3, line: 70, type: !400)
!482 = !DILocation(line: 70, column: 29, scope: !478)
!483 = !DILocalVariable(name: "s", scope: !478, file: !3, line: 74, type: !484)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 64, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 2)
!487 = !DILocation(line: 74, column: 13, scope: !478)
!488 = !DILocation(line: 75, column: 16, scope: !478)
!489 = !DILocation(line: 75, column: 9, scope: !478)
!490 = !DILocation(line: 75, column: 14, scope: !478)
!491 = !DILocation(line: 76, column: 9, scope: !478)
!492 = !DILocation(line: 76, column: 14, scope: !478)
!493 = !DILocation(line: 77, column: 21, scope: !478)
!494 = !DILocation(line: 77, column: 5, scope: !478)
!495 = !DILocation(line: 78, column: 1, scope: !478)
!496 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !497, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !7}
!499 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !496, file: !3, line: 80, type: !7)
!500 = !DILocation(line: 80, column: 33, scope: !496)
!501 = !DILocation(line: 82, column: 20, scope: !496)
!502 = !DILocation(line: 82, column: 5, scope: !496)
!503 = !DILocation(line: 83, column: 1, scope: !496)
!504 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !505, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !25}
!507 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !504, file: !3, line: 85, type: !25)
!508 = !DILocation(line: 85, column: 45, scope: !504)
!509 = !DILocation(line: 87, column: 22, scope: !504)
!510 = !DILocation(line: 87, column: 5, scope: !504)
!511 = !DILocation(line: 88, column: 1, scope: !504)
!512 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !513, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !515}
!515 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!516 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !512, file: !3, line: 90, type: !515)
!517 = !DILocation(line: 90, column: 29, scope: !512)
!518 = !DILocation(line: 92, column: 20, scope: !512)
!519 = !DILocation(line: 92, column: 5, scope: !512)
!520 = !DILocation(line: 93, column: 1, scope: !512)
!521 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !522, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !524}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !526, line: 100, baseType: !527)
!526 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_575/source_code")
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !526, line: 96, size: 64, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !527, file: !526, line: 98, baseType: !23, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !527, file: !526, line: 99, baseType: !23, size: 32, offset: 32)
!531 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !521, file: !3, line: 95, type: !524)
!532 = !DILocation(line: 95, column: 40, scope: !521)
!533 = !DILocation(line: 97, column: 26, scope: !521)
!534 = !DILocation(line: 97, column: 47, scope: !521)
!535 = !DILocation(line: 97, column: 55, scope: !521)
!536 = !DILocation(line: 97, column: 76, scope: !521)
!537 = !DILocation(line: 97, column: 5, scope: !521)
!538 = !DILocation(line: 98, column: 1, scope: !521)
!539 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !540, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !542, !463}
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!543 = !DILocalVariable(name: "bytes", arg: 1, scope: !539, file: !3, line: 100, type: !542)
!544 = !DILocation(line: 100, column: 38, scope: !539)
!545 = !DILocalVariable(name: "numBytes", arg: 2, scope: !539, file: !3, line: 100, type: !463)
!546 = !DILocation(line: 100, column: 52, scope: !539)
!547 = !DILocalVariable(name: "i", scope: !539, file: !3, line: 102, type: !463)
!548 = !DILocation(line: 102, column: 12, scope: !539)
!549 = !DILocation(line: 103, column: 12, scope: !550)
!550 = distinct !DILexicalBlock(scope: !539, file: !3, line: 103, column: 5)
!551 = !DILocation(line: 103, column: 10, scope: !550)
!552 = !DILocation(line: 103, column: 17, scope: !553)
!553 = distinct !DILexicalBlock(scope: !550, file: !3, line: 103, column: 5)
!554 = !DILocation(line: 103, column: 21, scope: !553)
!555 = !DILocation(line: 103, column: 19, scope: !553)
!556 = !DILocation(line: 103, column: 5, scope: !550)
!557 = !DILocation(line: 105, column: 24, scope: !558)
!558 = distinct !DILexicalBlock(scope: !553, file: !3, line: 104, column: 5)
!559 = !DILocation(line: 105, column: 30, scope: !558)
!560 = !DILocation(line: 105, column: 9, scope: !558)
!561 = !DILocation(line: 106, column: 5, scope: !558)
!562 = !DILocation(line: 103, column: 31, scope: !553)
!563 = !DILocation(line: 103, column: 5, scope: !553)
!564 = distinct !{!564, !556, !565, !120}
!565 = !DILocation(line: 106, column: 5, scope: !550)
!566 = !DILocation(line: 107, column: 5, scope: !539)
!567 = !DILocation(line: 108, column: 1, scope: !539)
!568 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !569, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!569 = !DISubroutineType(types: !570)
!570 = !{!463, !542, !463, !42}
!571 = !DILocalVariable(name: "bytes", arg: 1, scope: !568, file: !3, line: 113, type: !542)
!572 = !DILocation(line: 113, column: 39, scope: !568)
!573 = !DILocalVariable(name: "numBytes", arg: 2, scope: !568, file: !3, line: 113, type: !463)
!574 = !DILocation(line: 113, column: 53, scope: !568)
!575 = !DILocalVariable(name: "hex", arg: 3, scope: !568, file: !3, line: 113, type: !42)
!576 = !DILocation(line: 113, column: 71, scope: !568)
!577 = !DILocalVariable(name: "numWritten", scope: !568, file: !3, line: 115, type: !463)
!578 = !DILocation(line: 115, column: 12, scope: !568)
!579 = !DILocation(line: 121, column: 5, scope: !568)
!580 = !DILocation(line: 121, column: 12, scope: !568)
!581 = !DILocation(line: 121, column: 25, scope: !568)
!582 = !DILocation(line: 121, column: 23, scope: !568)
!583 = !DILocation(line: 121, column: 34, scope: !568)
!584 = !DILocation(line: 121, column: 37, scope: !568)
!585 = !DILocation(line: 121, column: 67, scope: !568)
!586 = !DILocation(line: 121, column: 70, scope: !568)
!587 = !DILocation(line: 0, scope: !568)
!588 = !DILocalVariable(name: "byte", scope: !589, file: !3, line: 123, type: !23)
!589 = distinct !DILexicalBlock(scope: !568, file: !3, line: 122, column: 5)
!590 = !DILocation(line: 123, column: 13, scope: !589)
!591 = !DILocation(line: 124, column: 17, scope: !589)
!592 = !DILocation(line: 124, column: 25, scope: !589)
!593 = !DILocation(line: 124, column: 23, scope: !589)
!594 = !DILocation(line: 124, column: 9, scope: !589)
!595 = !DILocation(line: 125, column: 45, scope: !589)
!596 = !DILocation(line: 125, column: 29, scope: !589)
!597 = !DILocation(line: 125, column: 9, scope: !589)
!598 = !DILocation(line: 125, column: 15, scope: !589)
!599 = !DILocation(line: 125, column: 27, scope: !589)
!600 = !DILocation(line: 126, column: 9, scope: !589)
!601 = distinct !{!601, !579, !602, !120}
!602 = !DILocation(line: 127, column: 5, scope: !568)
!603 = !DILocation(line: 129, column: 12, scope: !568)
!604 = !DILocation(line: 129, column: 5, scope: !568)
!605 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !606, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DISubroutineType(types: !607)
!607 = !{!463, !542, !463, !399}
!608 = !DILocalVariable(name: "bytes", arg: 1, scope: !605, file: !3, line: 135, type: !542)
!609 = !DILocation(line: 135, column: 41, scope: !605)
!610 = !DILocalVariable(name: "numBytes", arg: 2, scope: !605, file: !3, line: 135, type: !463)
!611 = !DILocation(line: 135, column: 55, scope: !605)
!612 = !DILocalVariable(name: "hex", arg: 3, scope: !605, file: !3, line: 135, type: !399)
!613 = !DILocation(line: 135, column: 76, scope: !605)
!614 = !DILocalVariable(name: "numWritten", scope: !605, file: !3, line: 137, type: !463)
!615 = !DILocation(line: 137, column: 12, scope: !605)
!616 = !DILocation(line: 143, column: 5, scope: !605)
!617 = !DILocation(line: 143, column: 12, scope: !605)
!618 = !DILocation(line: 143, column: 25, scope: !605)
!619 = !DILocation(line: 143, column: 23, scope: !605)
!620 = !DILocation(line: 143, column: 34, scope: !605)
!621 = !DILocation(line: 143, column: 47, scope: !605)
!622 = !DILocation(line: 143, column: 55, scope: !605)
!623 = !DILocation(line: 143, column: 53, scope: !605)
!624 = !DILocation(line: 143, column: 37, scope: !605)
!625 = !DILocation(line: 143, column: 68, scope: !605)
!626 = !DILocation(line: 143, column: 81, scope: !605)
!627 = !DILocation(line: 143, column: 89, scope: !605)
!628 = !DILocation(line: 143, column: 87, scope: !605)
!629 = !DILocation(line: 143, column: 100, scope: !605)
!630 = !DILocation(line: 143, column: 71, scope: !605)
!631 = !DILocation(line: 0, scope: !605)
!632 = !DILocalVariable(name: "byte", scope: !633, file: !3, line: 145, type: !23)
!633 = distinct !DILexicalBlock(scope: !605, file: !3, line: 144, column: 5)
!634 = !DILocation(line: 145, column: 13, scope: !633)
!635 = !DILocation(line: 146, column: 18, scope: !633)
!636 = !DILocation(line: 146, column: 26, scope: !633)
!637 = !DILocation(line: 146, column: 24, scope: !633)
!638 = !DILocation(line: 146, column: 9, scope: !633)
!639 = !DILocation(line: 147, column: 45, scope: !633)
!640 = !DILocation(line: 147, column: 29, scope: !633)
!641 = !DILocation(line: 147, column: 9, scope: !633)
!642 = !DILocation(line: 147, column: 15, scope: !633)
!643 = !DILocation(line: 147, column: 27, scope: !633)
!644 = !DILocation(line: 148, column: 9, scope: !633)
!645 = distinct !{!645, !616, !646, !120}
!646 = !DILocation(line: 149, column: 5, scope: !605)
!647 = !DILocation(line: 151, column: 12, scope: !605)
!648 = !DILocation(line: 151, column: 5, scope: !605)
!649 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !650, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!650 = !DISubroutineType(types: !651)
!651 = !{!23}
!652 = !DILocation(line: 158, column: 5, scope: !649)
!653 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !650, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!654 = !DILocation(line: 163, column: 5, scope: !653)
!655 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !650, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!656 = !DILocation(line: 168, column: 13, scope: !655)
!657 = !DILocation(line: 168, column: 20, scope: !655)
!658 = !DILocation(line: 168, column: 5, scope: !655)
!659 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!660 = !DILocation(line: 187, column: 16, scope: !659)
!661 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!662 = !DILocation(line: 188, column: 16, scope: !661)
!663 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!664 = !DILocation(line: 189, column: 16, scope: !663)
!665 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!666 = !DILocation(line: 190, column: 16, scope: !665)
!667 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!668 = !DILocation(line: 191, column: 16, scope: !667)
!669 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!670 = !DILocation(line: 192, column: 16, scope: !669)
!671 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!672 = !DILocation(line: 193, column: 16, scope: !671)
!673 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!674 = !DILocation(line: 194, column: 16, scope: !673)
!675 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!676 = !DILocation(line: 195, column: 16, scope: !675)
!677 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!678 = !DILocation(line: 198, column: 15, scope: !677)
!679 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!680 = !DILocation(line: 199, column: 15, scope: !679)
!681 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!682 = !DILocation(line: 200, column: 15, scope: !681)
!683 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!684 = !DILocation(line: 201, column: 15, scope: !683)
!685 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!686 = !DILocation(line: 202, column: 15, scope: !685)
!687 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!688 = !DILocation(line: 203, column: 15, scope: !687)
!689 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!690 = !DILocation(line: 204, column: 15, scope: !689)
!691 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!692 = !DILocation(line: 205, column: 15, scope: !691)
!693 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!694 = !DILocation(line: 206, column: 15, scope: !693)
