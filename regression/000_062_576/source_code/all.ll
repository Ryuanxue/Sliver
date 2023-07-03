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
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
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
@.str.5.11 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_13_bad() #0 !dbg !52 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 -1, i32* %data, align 4, !dbg !57
  %0 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !58
  %cmp = icmp eq i32 %0, 5, !dbg !60
  br i1 %cmp, label %if.then, label %if.end5, !dbg !61

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !62, metadata !DIExpression()), !dbg !68
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !68
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !68
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !69
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !71
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !72
  %cmp1 = icmp ne i8* %call, null, !dbg !73
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !74

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !75
  %call4 = call i32 @atoi(i8* %arraydecay3) #7, !dbg !77
  store i32 %call4, i32* %data, align 4, !dbg !78
  br label %if.end, !dbg !79

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !80
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !82

if.end5:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !83
  %cmp6 = icmp eq i32 %3, 5, !dbg !85
  br i1 %cmp6, label %if.then7, label %if.end15, !dbg !86

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !87, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !91, metadata !DIExpression()), !dbg !95
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !95
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !95
  %5 = load i32, i32* %data, align 4, !dbg !96
  %cmp8 = icmp sge i32 %5, 0, !dbg !98
  br i1 %cmp8, label %if.then9, label %if.else13, !dbg !99

if.then9:                                         ; preds = %if.then7
  %6 = load i32, i32* %data, align 4, !dbg !100
  %idxprom = sext i32 %6 to i64, !dbg !102
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !102
  store i32 1, i32* %arrayidx, align 4, !dbg !103
  store i32 0, i32* %i, align 4, !dbg !104
  br label %for.cond, !dbg !106

for.cond:                                         ; preds = %for.inc, %if.then9
  %7 = load i32, i32* %i, align 4, !dbg !107
  %cmp10 = icmp slt i32 %7, 10, !dbg !109
  br i1 %cmp10, label %for.body, label %for.end, !dbg !110

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !111
  %idxprom11 = sext i32 %8 to i64, !dbg !113
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom11, !dbg !113
  %9 = load i32, i32* %arrayidx12, align 4, !dbg !113
  call void @printIntLine(i32 %9), !dbg !114
  br label %for.inc, !dbg !115

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !116
  %inc = add nsw i32 %10, 1, !dbg !116
  store i32 %inc, i32* %i, align 4, !dbg !116
  br label %for.cond, !dbg !117, !llvm.loop !118

for.end:                                          ; preds = %for.cond
  br label %if.end14, !dbg !121

if.else13:                                        ; preds = %if.then7
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !122
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %for.end
  br label %if.end15, !dbg !124

if.end15:                                         ; preds = %if.end14, %if.end5
  ret void, !dbg !125
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !126 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !127, metadata !DIExpression()), !dbg !128
  store i32 -1, i32* %data, align 4, !dbg !129
  %0 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !130
  %cmp = icmp eq i32 %0, 5, !dbg !132
  br i1 %cmp, label %if.then, label %if.end5, !dbg !133

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !134, metadata !DIExpression()), !dbg !137
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !137
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !137
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !138
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !140
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !141
  %cmp1 = icmp ne i8* %call, null, !dbg !142
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !143

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !144
  %call4 = call i32 @atoi(i8* %arraydecay3) #7, !dbg !146
  store i32 %call4, i32* %data, align 4, !dbg !147
  br label %if.end, !dbg !148

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !149
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !151

if.end5:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !152
  %cmp6 = icmp ne i32 %3, 5, !dbg !154
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !155

if.then7:                                         ; preds = %if.end5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !156
  br label %if.end17, !dbg !158

if.else8:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !159, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !163, metadata !DIExpression()), !dbg !164
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !164
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !164
  %5 = load i32, i32* %data, align 4, !dbg !165
  %cmp9 = icmp sge i32 %5, 0, !dbg !167
  br i1 %cmp9, label %land.lhs.true, label %if.else15, !dbg !168

land.lhs.true:                                    ; preds = %if.else8
  %6 = load i32, i32* %data, align 4, !dbg !169
  %cmp10 = icmp slt i32 %6, 10, !dbg !170
  br i1 %cmp10, label %if.then11, label %if.else15, !dbg !171

if.then11:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !172
  %idxprom = sext i32 %7 to i64, !dbg !174
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !174
  store i32 1, i32* %arrayidx, align 4, !dbg !175
  store i32 0, i32* %i, align 4, !dbg !176
  br label %for.cond, !dbg !178

for.cond:                                         ; preds = %for.inc, %if.then11
  %8 = load i32, i32* %i, align 4, !dbg !179
  %cmp12 = icmp slt i32 %8, 10, !dbg !181
  br i1 %cmp12, label %for.body, label %for.end, !dbg !182

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !183
  %idxprom13 = sext i32 %9 to i64, !dbg !185
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom13, !dbg !185
  %10 = load i32, i32* %arrayidx14, align 4, !dbg !185
  call void @printIntLine(i32 %10), !dbg !186
  br label %for.inc, !dbg !187

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !188
  %inc = add nsw i32 %11, 1, !dbg !188
  store i32 %inc, i32* %i, align 4, !dbg !188
  br label %for.cond, !dbg !189, !llvm.loop !190

for.end:                                          ; preds = %for.cond
  br label %if.end16, !dbg !192

if.else15:                                        ; preds = %land.lhs.true, %if.else8
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !193
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %for.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7
  ret void, !dbg !195
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !196 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !197, metadata !DIExpression()), !dbg !198
  store i32 -1, i32* %data, align 4, !dbg !199
  %0 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !200
  %cmp = icmp eq i32 %0, 5, !dbg !202
  br i1 %cmp, label %if.then, label %if.end5, !dbg !203

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !204, metadata !DIExpression()), !dbg !207
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !207
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !207
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !208
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !210
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !211
  %cmp1 = icmp ne i8* %call, null, !dbg !212
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !213

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !214
  %call4 = call i32 @atoi(i8* %arraydecay3) #7, !dbg !216
  store i32 %call4, i32* %data, align 4, !dbg !217
  br label %if.end, !dbg !218

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !219
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !221

if.end5:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !222
  %cmp6 = icmp eq i32 %3, 5, !dbg !224
  br i1 %cmp6, label %if.then7, label %if.end16, !dbg !225

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !226, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !230, metadata !DIExpression()), !dbg !231
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !231
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !231
  %5 = load i32, i32* %data, align 4, !dbg !232
  %cmp8 = icmp sge i32 %5, 0, !dbg !234
  br i1 %cmp8, label %land.lhs.true, label %if.else14, !dbg !235

land.lhs.true:                                    ; preds = %if.then7
  %6 = load i32, i32* %data, align 4, !dbg !236
  %cmp9 = icmp slt i32 %6, 10, !dbg !237
  br i1 %cmp9, label %if.then10, label %if.else14, !dbg !238

if.then10:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !239
  %idxprom = sext i32 %7 to i64, !dbg !241
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !241
  store i32 1, i32* %arrayidx, align 4, !dbg !242
  store i32 0, i32* %i, align 4, !dbg !243
  br label %for.cond, !dbg !245

for.cond:                                         ; preds = %for.inc, %if.then10
  %8 = load i32, i32* %i, align 4, !dbg !246
  %cmp11 = icmp slt i32 %8, 10, !dbg !248
  br i1 %cmp11, label %for.body, label %for.end, !dbg !249

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !250
  %idxprom12 = sext i32 %9 to i64, !dbg !252
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom12, !dbg !252
  %10 = load i32, i32* %arrayidx13, align 4, !dbg !252
  call void @printIntLine(i32 %10), !dbg !253
  br label %for.inc, !dbg !254

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !255
  %inc = add nsw i32 %11, 1, !dbg !255
  store i32 %inc, i32* %i, align 4, !dbg !255
  br label %for.cond, !dbg !256, !llvm.loop !257

for.end:                                          ; preds = %for.cond
  br label %if.end15, !dbg !259

if.else14:                                        ; preds = %land.lhs.true, %if.then7
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !260
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %for.end
  br label %if.end16, !dbg !262

if.end16:                                         ; preds = %if.end15, %if.end5
  ret void, !dbg !263
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !264 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !265, metadata !DIExpression()), !dbg !266
  store i32 -1, i32* %data, align 4, !dbg !267
  %0 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !268
  %cmp = icmp ne i32 %0, 5, !dbg !270
  br i1 %cmp, label %if.then, label %if.else, !dbg !271

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !272
  br label %if.end, !dbg !274

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !275
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !277
  %cmp1 = icmp eq i32 %1, 5, !dbg !279
  br i1 %cmp1, label %if.then2, label %if.end10, !dbg !280

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !281, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !285, metadata !DIExpression()), !dbg !286
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !286
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !286
  %3 = load i32, i32* %data, align 4, !dbg !287
  %cmp3 = icmp sge i32 %3, 0, !dbg !289
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !290

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !291
  %idxprom = sext i32 %4 to i64, !dbg !293
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !293
  store i32 1, i32* %arrayidx, align 4, !dbg !294
  store i32 0, i32* %i, align 4, !dbg !295
  br label %for.cond, !dbg !297

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !298
  %cmp5 = icmp slt i32 %5, 10, !dbg !300
  br i1 %cmp5, label %for.body, label %for.end, !dbg !301

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !302
  %idxprom6 = sext i32 %6 to i64, !dbg !304
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !304
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !304
  call void @printIntLine(i32 %7), !dbg !305
  br label %for.inc, !dbg !306

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !307
  %inc = add nsw i32 %8, 1, !dbg !307
  store i32 %inc, i32* %i, align 4, !dbg !307
  br label %for.cond, !dbg !308, !llvm.loop !309

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !311

if.else8:                                         ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !312
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end10, !dbg !314

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !316 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !317, metadata !DIExpression()), !dbg !318
  store i32 -1, i32* %data, align 4, !dbg !319
  %0 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !320
  %cmp = icmp eq i32 %0, 5, !dbg !322
  br i1 %cmp, label %if.then, label %if.end, !dbg !323

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !324
  br label %if.end, !dbg !326

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !327
  %cmp1 = icmp eq i32 %1, 5, !dbg !329
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !330

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !331, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !335, metadata !DIExpression()), !dbg !336
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !336
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !336
  %3 = load i32, i32* %data, align 4, !dbg !337
  %cmp3 = icmp sge i32 %3, 0, !dbg !339
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !340

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !341
  %idxprom = sext i32 %4 to i64, !dbg !343
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !343
  store i32 1, i32* %arrayidx, align 4, !dbg !344
  store i32 0, i32* %i, align 4, !dbg !345
  br label %for.cond, !dbg !347

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !348
  %cmp5 = icmp slt i32 %5, 10, !dbg !350
  br i1 %cmp5, label %for.body, label %for.end, !dbg !351

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !352
  %idxprom6 = sext i32 %6 to i64, !dbg !354
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !354
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !354
  call void @printIntLine(i32 %7), !dbg !355
  br label %for.inc, !dbg !356

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !357
  %inc = add nsw i32 %8, 1, !dbg !357
  store i32 %inc, i32* %i, align 4, !dbg !357
  br label %for.cond, !dbg !358, !llvm.loop !359

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !361

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !362
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.end
  br label %if.end9, !dbg !364

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !365
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_13_good() #0 !dbg !366 {
entry:
  call void @goodB2G1(), !dbg !367
  call void @goodB2G2(), !dbg !368
  call void @goodG2B1(), !dbg !369
  call void @goodG2B2(), !dbg !370
  ret void, !dbg !371
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !372 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !375, metadata !DIExpression()), !dbg !376
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !377
  %0 = load i8*, i8** %line.addr, align 8, !dbg !378
  %cmp = icmp ne i8* %0, null, !dbg !380
  br i1 %cmp, label %if.then, label %if.end, !dbg !381

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !382
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !384
  br label %if.end, !dbg !385

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !386
  ret void, !dbg !387
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !388 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !389, metadata !DIExpression()), !dbg !390
  %0 = load i8*, i8** %line.addr, align 8, !dbg !391
  %cmp = icmp ne i8* %0, null, !dbg !393
  br i1 %cmp, label %if.then, label %if.end, !dbg !394

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !395
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !397
  br label %if.end, !dbg !398

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !399
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !400 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !406, metadata !DIExpression()), !dbg !407
  %0 = load i32*, i32** %line.addr, align 8, !dbg !408
  %cmp = icmp ne i32* %0, null, !dbg !410
  br i1 %cmp, label %if.then, label %if.end, !dbg !411

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !412
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !414
  br label %if.end, !dbg !415

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !416
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !417 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !420, metadata !DIExpression()), !dbg !421
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !422
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !423
  ret void, !dbg !424
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !425 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !429, metadata !DIExpression()), !dbg !430
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !431
  %conv = sext i16 %0 to i32, !dbg !431
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.11, i64 0, i64 0), i32 %conv), !dbg !432
  ret void, !dbg !433
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !434 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !438, metadata !DIExpression()), !dbg !439
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !440
  %conv = fpext float %0 to double, !dbg !440
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !441
  ret void, !dbg !442
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !443 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !447, metadata !DIExpression()), !dbg !448
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !449
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !450
  ret void, !dbg !451
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !452 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !459, metadata !DIExpression()), !dbg !460
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !461
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !462
  ret void, !dbg !463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !464 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !469, metadata !DIExpression()), !dbg !470
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !471
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !472
  ret void, !dbg !473
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !474 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !477, metadata !DIExpression()), !dbg !478
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !479
  %conv = sext i8 %0 to i32, !dbg !479
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !480
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !482 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !485, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !487, metadata !DIExpression()), !dbg !491
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !492
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !493
  store i32 %0, i32* %arrayidx, align 4, !dbg !494
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !495
  store i32 0, i32* %arrayidx1, align 4, !dbg !496
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !497
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !498
  ret void, !dbg !499
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !500 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !503, metadata !DIExpression()), !dbg !504
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !505
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !506
  ret void, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !508 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !511, metadata !DIExpression()), !dbg !512
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !513
  %conv = zext i8 %0 to i32, !dbg !513
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !514
  ret void, !dbg !515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !516 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !520, metadata !DIExpression()), !dbg !521
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !522
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !523
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !525 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !535, metadata !DIExpression()), !dbg !536
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !537
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !538
  %1 = load i32, i32* %intOne, align 4, !dbg !538
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !539
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !540
  %3 = load i32, i32* %intTwo, align 4, !dbg !540
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !541
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !543 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !547, metadata !DIExpression()), !dbg !548
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !549, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.declare(metadata i64* %i, metadata !551, metadata !DIExpression()), !dbg !552
  store i64 0, i64* %i, align 8, !dbg !553
  br label %for.cond, !dbg !555

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !556
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !558
  %cmp = icmp ult i64 %0, %1, !dbg !559
  br i1 %cmp, label %for.body, label %for.end, !dbg !560

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !561
  %3 = load i64, i64* %i, align 8, !dbg !563
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !561
  %4 = load i8, i8* %arrayidx, align 1, !dbg !561
  %conv = zext i8 %4 to i32, !dbg !561
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !564
  br label %for.inc, !dbg !565

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !566
  %inc = add i64 %5, 1, !dbg !566
  store i64 %inc, i64* %i, align 8, !dbg !566
  br label %for.cond, !dbg !567, !llvm.loop !568

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !570
  ret void, !dbg !571
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !572 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !575, metadata !DIExpression()), !dbg !576
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !577, metadata !DIExpression()), !dbg !578
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !579, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !581, metadata !DIExpression()), !dbg !582
  store i64 0, i64* %numWritten, align 8, !dbg !582
  br label %while.cond, !dbg !583

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !584
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !585
  %cmp = icmp ult i64 %0, %1, !dbg !586
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !587

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !588
  %2 = load i16*, i16** %call, align 8, !dbg !588
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !588
  %4 = load i64, i64* %numWritten, align 8, !dbg !588
  %mul = mul i64 2, %4, !dbg !588
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !588
  %5 = load i8, i8* %arrayidx, align 1, !dbg !588
  %conv = sext i8 %5 to i32, !dbg !588
  %idxprom = sext i32 %conv to i64, !dbg !588
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !588
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !588
  %conv2 = zext i16 %6 to i32, !dbg !588
  %and = and i32 %conv2, 4096, !dbg !588
  %tobool = icmp ne i32 %and, 0, !dbg !588
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !589

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !590
  %7 = load i16*, i16** %call3, align 8, !dbg !590
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !590
  %9 = load i64, i64* %numWritten, align 8, !dbg !590
  %mul4 = mul i64 2, %9, !dbg !590
  %add = add i64 %mul4, 1, !dbg !590
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !590
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !590
  %conv6 = sext i8 %10 to i32, !dbg !590
  %idxprom7 = sext i32 %conv6 to i64, !dbg !590
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !590
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !590
  %conv9 = zext i16 %11 to i32, !dbg !590
  %and10 = and i32 %conv9, 4096, !dbg !590
  %tobool11 = icmp ne i32 %and10, 0, !dbg !589
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !591
  br i1 %12, label %while.body, label %while.end, !dbg !583

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !592, metadata !DIExpression()), !dbg !594
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !595
  %14 = load i64, i64* %numWritten, align 8, !dbg !596
  %mul12 = mul i64 2, %14, !dbg !597
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !595
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !598
  %15 = load i32, i32* %byte, align 4, !dbg !599
  %conv15 = trunc i32 %15 to i8, !dbg !600
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !601
  %17 = load i64, i64* %numWritten, align 8, !dbg !602
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !601
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !603
  %18 = load i64, i64* %numWritten, align 8, !dbg !604
  %inc = add i64 %18, 1, !dbg !604
  store i64 %inc, i64* %numWritten, align 8, !dbg !604
  br label %while.cond, !dbg !583, !llvm.loop !605

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !607
  ret i64 %19, !dbg !608
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !609 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !612, metadata !DIExpression()), !dbg !613
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !614, metadata !DIExpression()), !dbg !615
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !616, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !618, metadata !DIExpression()), !dbg !619
  store i64 0, i64* %numWritten, align 8, !dbg !619
  br label %while.cond, !dbg !620

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !621
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !622
  %cmp = icmp ult i64 %0, %1, !dbg !623
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !624

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !625
  %3 = load i64, i64* %numWritten, align 8, !dbg !626
  %mul = mul i64 2, %3, !dbg !627
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !625
  %4 = load i32, i32* %arrayidx, align 4, !dbg !625
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !628
  %tobool = icmp ne i32 %call, 0, !dbg !628
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !629

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !630
  %6 = load i64, i64* %numWritten, align 8, !dbg !631
  %mul1 = mul i64 2, %6, !dbg !632
  %add = add i64 %mul1, 1, !dbg !633
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !630
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !630
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !634
  %tobool4 = icmp ne i32 %call3, 0, !dbg !629
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !635
  br i1 %8, label %while.body, label %while.end, !dbg !620

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !636, metadata !DIExpression()), !dbg !638
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !639
  %10 = load i64, i64* %numWritten, align 8, !dbg !640
  %mul5 = mul i64 2, %10, !dbg !641
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !639
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !642
  %11 = load i32, i32* %byte, align 4, !dbg !643
  %conv = trunc i32 %11 to i8, !dbg !644
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !645
  %13 = load i64, i64* %numWritten, align 8, !dbg !646
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !645
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !647
  %14 = load i64, i64* %numWritten, align 8, !dbg !648
  %inc = add i64 %14, 1, !dbg !648
  store i64 %inc, i64* %numWritten, align 8, !dbg !648
  br label %while.cond, !dbg !620, !llvm.loop !649

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !651
  ret i64 %15, !dbg !652
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !653 {
entry:
  ret i32 1, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !657 {
entry:
  ret i32 0, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !659 {
entry:
  %call = call i32 @rand() #9, !dbg !660
  %rem = srem i32 %call, 2, !dbg !661
  ret i32 %rem, !dbg !662
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !663 {
entry:
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !665 {
entry:
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !671 {
entry:
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !673 {
entry:
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !675 {
entry:
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !677 {
entry:
  ret void, !dbg !678
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !679 {
entry:
  ret void, !dbg !680
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !681 {
entry:
  ret void, !dbg !682
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !683 {
entry:
  ret void, !dbg !684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !685 {
entry:
  ret void, !dbg !686
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !687 {
entry:
  ret void, !dbg !688
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !689 {
entry:
  ret void, !dbg !690
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !691 {
entry:
  ret void, !dbg !692
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !693 {
entry:
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !695 {
entry:
  ret void, !dbg !696
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !697 {
entry:
  ret void, !dbg !698
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_576/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_13.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_576/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_13_bad", scope: !45, file: !45, line: 25, type: !53, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 27, type: !23)
!56 = !DILocation(line: 27, column: 9, scope: !52)
!57 = !DILocation(line: 29, column: 10, scope: !52)
!58 = !DILocation(line: 30, column: 8, scope: !59)
!59 = distinct !DILexicalBlock(scope: !52, file: !45, line: 30, column: 8)
!60 = !DILocation(line: 30, column: 25, scope: !59)
!61 = !DILocation(line: 30, column: 8, scope: !52)
!62 = !DILocalVariable(name: "inputBuffer", scope: !63, file: !45, line: 33, type: !65)
!63 = distinct !DILexicalBlock(scope: !64, file: !45, line: 32, column: 9)
!64 = distinct !DILexicalBlock(scope: !59, file: !45, line: 31, column: 5)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 112, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 14)
!68 = !DILocation(line: 33, column: 18, scope: !63)
!69 = !DILocation(line: 35, column: 23, scope: !70)
!70 = distinct !DILexicalBlock(scope: !63, file: !45, line: 35, column: 17)
!71 = !DILocation(line: 35, column: 53, scope: !70)
!72 = !DILocation(line: 35, column: 17, scope: !70)
!73 = !DILocation(line: 35, column: 60, scope: !70)
!74 = !DILocation(line: 35, column: 17, scope: !63)
!75 = !DILocation(line: 38, column: 29, scope: !76)
!76 = distinct !DILexicalBlock(scope: !70, file: !45, line: 36, column: 13)
!77 = !DILocation(line: 38, column: 24, scope: !76)
!78 = !DILocation(line: 38, column: 22, scope: !76)
!79 = !DILocation(line: 39, column: 13, scope: !76)
!80 = !DILocation(line: 42, column: 17, scope: !81)
!81 = distinct !DILexicalBlock(scope: !70, file: !45, line: 41, column: 13)
!82 = !DILocation(line: 45, column: 5, scope: !64)
!83 = !DILocation(line: 46, column: 8, scope: !84)
!84 = distinct !DILexicalBlock(scope: !52, file: !45, line: 46, column: 8)
!85 = !DILocation(line: 46, column: 25, scope: !84)
!86 = !DILocation(line: 46, column: 8, scope: !52)
!87 = !DILocalVariable(name: "i", scope: !88, file: !45, line: 49, type: !23)
!88 = distinct !DILexicalBlock(scope: !89, file: !45, line: 48, column: 9)
!89 = distinct !DILexicalBlock(scope: !84, file: !45, line: 47, column: 5)
!90 = !DILocation(line: 49, column: 17, scope: !88)
!91 = !DILocalVariable(name: "buffer", scope: !88, file: !45, line: 50, type: !92)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 10)
!95 = !DILocation(line: 50, column: 17, scope: !88)
!96 = !DILocation(line: 53, column: 17, scope: !97)
!97 = distinct !DILexicalBlock(scope: !88, file: !45, line: 53, column: 17)
!98 = !DILocation(line: 53, column: 22, scope: !97)
!99 = !DILocation(line: 53, column: 17, scope: !88)
!100 = !DILocation(line: 55, column: 24, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !45, line: 54, column: 13)
!102 = !DILocation(line: 55, column: 17, scope: !101)
!103 = !DILocation(line: 55, column: 30, scope: !101)
!104 = !DILocation(line: 57, column: 23, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !45, line: 57, column: 17)
!106 = !DILocation(line: 57, column: 21, scope: !105)
!107 = !DILocation(line: 57, column: 28, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !45, line: 57, column: 17)
!109 = !DILocation(line: 57, column: 30, scope: !108)
!110 = !DILocation(line: 57, column: 17, scope: !105)
!111 = !DILocation(line: 59, column: 41, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !45, line: 58, column: 17)
!113 = !DILocation(line: 59, column: 34, scope: !112)
!114 = !DILocation(line: 59, column: 21, scope: !112)
!115 = !DILocation(line: 60, column: 17, scope: !112)
!116 = !DILocation(line: 57, column: 37, scope: !108)
!117 = !DILocation(line: 57, column: 17, scope: !108)
!118 = distinct !{!118, !110, !119, !120}
!119 = !DILocation(line: 60, column: 17, scope: !105)
!120 = !{!"llvm.loop.mustprogress"}
!121 = !DILocation(line: 61, column: 13, scope: !101)
!122 = !DILocation(line: 64, column: 17, scope: !123)
!123 = distinct !DILexicalBlock(scope: !97, file: !45, line: 63, column: 13)
!124 = !DILocation(line: 67, column: 5, scope: !89)
!125 = !DILocation(line: 68, column: 1, scope: !52)
!126 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 75, type: !53, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!127 = !DILocalVariable(name: "data", scope: !126, file: !45, line: 77, type: !23)
!128 = !DILocation(line: 77, column: 9, scope: !126)
!129 = !DILocation(line: 79, column: 10, scope: !126)
!130 = !DILocation(line: 80, column: 8, scope: !131)
!131 = distinct !DILexicalBlock(scope: !126, file: !45, line: 80, column: 8)
!132 = !DILocation(line: 80, column: 25, scope: !131)
!133 = !DILocation(line: 80, column: 8, scope: !126)
!134 = !DILocalVariable(name: "inputBuffer", scope: !135, file: !45, line: 83, type: !65)
!135 = distinct !DILexicalBlock(scope: !136, file: !45, line: 82, column: 9)
!136 = distinct !DILexicalBlock(scope: !131, file: !45, line: 81, column: 5)
!137 = !DILocation(line: 83, column: 18, scope: !135)
!138 = !DILocation(line: 85, column: 23, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !45, line: 85, column: 17)
!140 = !DILocation(line: 85, column: 53, scope: !139)
!141 = !DILocation(line: 85, column: 17, scope: !139)
!142 = !DILocation(line: 85, column: 60, scope: !139)
!143 = !DILocation(line: 85, column: 17, scope: !135)
!144 = !DILocation(line: 88, column: 29, scope: !145)
!145 = distinct !DILexicalBlock(scope: !139, file: !45, line: 86, column: 13)
!146 = !DILocation(line: 88, column: 24, scope: !145)
!147 = !DILocation(line: 88, column: 22, scope: !145)
!148 = !DILocation(line: 89, column: 13, scope: !145)
!149 = !DILocation(line: 92, column: 17, scope: !150)
!150 = distinct !DILexicalBlock(scope: !139, file: !45, line: 91, column: 13)
!151 = !DILocation(line: 95, column: 5, scope: !136)
!152 = !DILocation(line: 96, column: 8, scope: !153)
!153 = distinct !DILexicalBlock(scope: !126, file: !45, line: 96, column: 8)
!154 = !DILocation(line: 96, column: 25, scope: !153)
!155 = !DILocation(line: 96, column: 8, scope: !126)
!156 = !DILocation(line: 99, column: 9, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !45, line: 97, column: 5)
!158 = !DILocation(line: 100, column: 5, scope: !157)
!159 = !DILocalVariable(name: "i", scope: !160, file: !45, line: 104, type: !23)
!160 = distinct !DILexicalBlock(scope: !161, file: !45, line: 103, column: 9)
!161 = distinct !DILexicalBlock(scope: !153, file: !45, line: 102, column: 5)
!162 = !DILocation(line: 104, column: 17, scope: !160)
!163 = !DILocalVariable(name: "buffer", scope: !160, file: !45, line: 105, type: !92)
!164 = !DILocation(line: 105, column: 17, scope: !160)
!165 = !DILocation(line: 107, column: 17, scope: !166)
!166 = distinct !DILexicalBlock(scope: !160, file: !45, line: 107, column: 17)
!167 = !DILocation(line: 107, column: 22, scope: !166)
!168 = !DILocation(line: 107, column: 27, scope: !166)
!169 = !DILocation(line: 107, column: 30, scope: !166)
!170 = !DILocation(line: 107, column: 35, scope: !166)
!171 = !DILocation(line: 107, column: 17, scope: !160)
!172 = !DILocation(line: 109, column: 24, scope: !173)
!173 = distinct !DILexicalBlock(scope: !166, file: !45, line: 108, column: 13)
!174 = !DILocation(line: 109, column: 17, scope: !173)
!175 = !DILocation(line: 109, column: 30, scope: !173)
!176 = !DILocation(line: 111, column: 23, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !45, line: 111, column: 17)
!178 = !DILocation(line: 111, column: 21, scope: !177)
!179 = !DILocation(line: 111, column: 28, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !45, line: 111, column: 17)
!181 = !DILocation(line: 111, column: 30, scope: !180)
!182 = !DILocation(line: 111, column: 17, scope: !177)
!183 = !DILocation(line: 113, column: 41, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !45, line: 112, column: 17)
!185 = !DILocation(line: 113, column: 34, scope: !184)
!186 = !DILocation(line: 113, column: 21, scope: !184)
!187 = !DILocation(line: 114, column: 17, scope: !184)
!188 = !DILocation(line: 111, column: 37, scope: !180)
!189 = !DILocation(line: 111, column: 17, scope: !180)
!190 = distinct !{!190, !182, !191, !120}
!191 = !DILocation(line: 114, column: 17, scope: !177)
!192 = !DILocation(line: 115, column: 13, scope: !173)
!193 = !DILocation(line: 118, column: 17, scope: !194)
!194 = distinct !DILexicalBlock(scope: !166, file: !45, line: 117, column: 13)
!195 = !DILocation(line: 122, column: 1, scope: !126)
!196 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 125, type: !53, scopeLine: 126, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!197 = !DILocalVariable(name: "data", scope: !196, file: !45, line: 127, type: !23)
!198 = !DILocation(line: 127, column: 9, scope: !196)
!199 = !DILocation(line: 129, column: 10, scope: !196)
!200 = !DILocation(line: 130, column: 8, scope: !201)
!201 = distinct !DILexicalBlock(scope: !196, file: !45, line: 130, column: 8)
!202 = !DILocation(line: 130, column: 25, scope: !201)
!203 = !DILocation(line: 130, column: 8, scope: !196)
!204 = !DILocalVariable(name: "inputBuffer", scope: !205, file: !45, line: 133, type: !65)
!205 = distinct !DILexicalBlock(scope: !206, file: !45, line: 132, column: 9)
!206 = distinct !DILexicalBlock(scope: !201, file: !45, line: 131, column: 5)
!207 = !DILocation(line: 133, column: 18, scope: !205)
!208 = !DILocation(line: 135, column: 23, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !45, line: 135, column: 17)
!210 = !DILocation(line: 135, column: 53, scope: !209)
!211 = !DILocation(line: 135, column: 17, scope: !209)
!212 = !DILocation(line: 135, column: 60, scope: !209)
!213 = !DILocation(line: 135, column: 17, scope: !205)
!214 = !DILocation(line: 138, column: 29, scope: !215)
!215 = distinct !DILexicalBlock(scope: !209, file: !45, line: 136, column: 13)
!216 = !DILocation(line: 138, column: 24, scope: !215)
!217 = !DILocation(line: 138, column: 22, scope: !215)
!218 = !DILocation(line: 139, column: 13, scope: !215)
!219 = !DILocation(line: 142, column: 17, scope: !220)
!220 = distinct !DILexicalBlock(scope: !209, file: !45, line: 141, column: 13)
!221 = !DILocation(line: 145, column: 5, scope: !206)
!222 = !DILocation(line: 146, column: 8, scope: !223)
!223 = distinct !DILexicalBlock(scope: !196, file: !45, line: 146, column: 8)
!224 = !DILocation(line: 146, column: 25, scope: !223)
!225 = !DILocation(line: 146, column: 8, scope: !196)
!226 = !DILocalVariable(name: "i", scope: !227, file: !45, line: 149, type: !23)
!227 = distinct !DILexicalBlock(scope: !228, file: !45, line: 148, column: 9)
!228 = distinct !DILexicalBlock(scope: !223, file: !45, line: 147, column: 5)
!229 = !DILocation(line: 149, column: 17, scope: !227)
!230 = !DILocalVariable(name: "buffer", scope: !227, file: !45, line: 150, type: !92)
!231 = !DILocation(line: 150, column: 17, scope: !227)
!232 = !DILocation(line: 152, column: 17, scope: !233)
!233 = distinct !DILexicalBlock(scope: !227, file: !45, line: 152, column: 17)
!234 = !DILocation(line: 152, column: 22, scope: !233)
!235 = !DILocation(line: 152, column: 27, scope: !233)
!236 = !DILocation(line: 152, column: 30, scope: !233)
!237 = !DILocation(line: 152, column: 35, scope: !233)
!238 = !DILocation(line: 152, column: 17, scope: !227)
!239 = !DILocation(line: 154, column: 24, scope: !240)
!240 = distinct !DILexicalBlock(scope: !233, file: !45, line: 153, column: 13)
!241 = !DILocation(line: 154, column: 17, scope: !240)
!242 = !DILocation(line: 154, column: 30, scope: !240)
!243 = !DILocation(line: 156, column: 23, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !45, line: 156, column: 17)
!245 = !DILocation(line: 156, column: 21, scope: !244)
!246 = !DILocation(line: 156, column: 28, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !45, line: 156, column: 17)
!248 = !DILocation(line: 156, column: 30, scope: !247)
!249 = !DILocation(line: 156, column: 17, scope: !244)
!250 = !DILocation(line: 158, column: 41, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !45, line: 157, column: 17)
!252 = !DILocation(line: 158, column: 34, scope: !251)
!253 = !DILocation(line: 158, column: 21, scope: !251)
!254 = !DILocation(line: 159, column: 17, scope: !251)
!255 = !DILocation(line: 156, column: 37, scope: !247)
!256 = !DILocation(line: 156, column: 17, scope: !247)
!257 = distinct !{!257, !249, !258, !120}
!258 = !DILocation(line: 159, column: 17, scope: !244)
!259 = !DILocation(line: 160, column: 13, scope: !240)
!260 = !DILocation(line: 163, column: 17, scope: !261)
!261 = distinct !DILexicalBlock(scope: !233, file: !45, line: 162, column: 13)
!262 = !DILocation(line: 166, column: 5, scope: !228)
!263 = !DILocation(line: 167, column: 1, scope: !196)
!264 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 170, type: !53, scopeLine: 171, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!265 = !DILocalVariable(name: "data", scope: !264, file: !45, line: 172, type: !23)
!266 = !DILocation(line: 172, column: 9, scope: !264)
!267 = !DILocation(line: 174, column: 10, scope: !264)
!268 = !DILocation(line: 175, column: 8, scope: !269)
!269 = distinct !DILexicalBlock(scope: !264, file: !45, line: 175, column: 8)
!270 = !DILocation(line: 175, column: 25, scope: !269)
!271 = !DILocation(line: 175, column: 8, scope: !264)
!272 = !DILocation(line: 178, column: 9, scope: !273)
!273 = distinct !DILexicalBlock(scope: !269, file: !45, line: 176, column: 5)
!274 = !DILocation(line: 179, column: 5, scope: !273)
!275 = !DILocation(line: 184, column: 14, scope: !276)
!276 = distinct !DILexicalBlock(scope: !269, file: !45, line: 181, column: 5)
!277 = !DILocation(line: 186, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !264, file: !45, line: 186, column: 8)
!279 = !DILocation(line: 186, column: 25, scope: !278)
!280 = !DILocation(line: 186, column: 8, scope: !264)
!281 = !DILocalVariable(name: "i", scope: !282, file: !45, line: 189, type: !23)
!282 = distinct !DILexicalBlock(scope: !283, file: !45, line: 188, column: 9)
!283 = distinct !DILexicalBlock(scope: !278, file: !45, line: 187, column: 5)
!284 = !DILocation(line: 189, column: 17, scope: !282)
!285 = !DILocalVariable(name: "buffer", scope: !282, file: !45, line: 190, type: !92)
!286 = !DILocation(line: 190, column: 17, scope: !282)
!287 = !DILocation(line: 193, column: 17, scope: !288)
!288 = distinct !DILexicalBlock(scope: !282, file: !45, line: 193, column: 17)
!289 = !DILocation(line: 193, column: 22, scope: !288)
!290 = !DILocation(line: 193, column: 17, scope: !282)
!291 = !DILocation(line: 195, column: 24, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !45, line: 194, column: 13)
!293 = !DILocation(line: 195, column: 17, scope: !292)
!294 = !DILocation(line: 195, column: 30, scope: !292)
!295 = !DILocation(line: 197, column: 23, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !45, line: 197, column: 17)
!297 = !DILocation(line: 197, column: 21, scope: !296)
!298 = !DILocation(line: 197, column: 28, scope: !299)
!299 = distinct !DILexicalBlock(scope: !296, file: !45, line: 197, column: 17)
!300 = !DILocation(line: 197, column: 30, scope: !299)
!301 = !DILocation(line: 197, column: 17, scope: !296)
!302 = !DILocation(line: 199, column: 41, scope: !303)
!303 = distinct !DILexicalBlock(scope: !299, file: !45, line: 198, column: 17)
!304 = !DILocation(line: 199, column: 34, scope: !303)
!305 = !DILocation(line: 199, column: 21, scope: !303)
!306 = !DILocation(line: 200, column: 17, scope: !303)
!307 = !DILocation(line: 197, column: 37, scope: !299)
!308 = !DILocation(line: 197, column: 17, scope: !299)
!309 = distinct !{!309, !301, !310, !120}
!310 = !DILocation(line: 200, column: 17, scope: !296)
!311 = !DILocation(line: 201, column: 13, scope: !292)
!312 = !DILocation(line: 204, column: 17, scope: !313)
!313 = distinct !DILexicalBlock(scope: !288, file: !45, line: 203, column: 13)
!314 = !DILocation(line: 207, column: 5, scope: !283)
!315 = !DILocation(line: 208, column: 1, scope: !264)
!316 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 211, type: !53, scopeLine: 212, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!317 = !DILocalVariable(name: "data", scope: !316, file: !45, line: 213, type: !23)
!318 = !DILocation(line: 213, column: 9, scope: !316)
!319 = !DILocation(line: 215, column: 10, scope: !316)
!320 = !DILocation(line: 216, column: 8, scope: !321)
!321 = distinct !DILexicalBlock(scope: !316, file: !45, line: 216, column: 8)
!322 = !DILocation(line: 216, column: 25, scope: !321)
!323 = !DILocation(line: 216, column: 8, scope: !316)
!324 = !DILocation(line: 220, column: 14, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !45, line: 217, column: 5)
!326 = !DILocation(line: 221, column: 5, scope: !325)
!327 = !DILocation(line: 222, column: 8, scope: !328)
!328 = distinct !DILexicalBlock(scope: !316, file: !45, line: 222, column: 8)
!329 = !DILocation(line: 222, column: 25, scope: !328)
!330 = !DILocation(line: 222, column: 8, scope: !316)
!331 = !DILocalVariable(name: "i", scope: !332, file: !45, line: 225, type: !23)
!332 = distinct !DILexicalBlock(scope: !333, file: !45, line: 224, column: 9)
!333 = distinct !DILexicalBlock(scope: !328, file: !45, line: 223, column: 5)
!334 = !DILocation(line: 225, column: 17, scope: !332)
!335 = !DILocalVariable(name: "buffer", scope: !332, file: !45, line: 226, type: !92)
!336 = !DILocation(line: 226, column: 17, scope: !332)
!337 = !DILocation(line: 229, column: 17, scope: !338)
!338 = distinct !DILexicalBlock(scope: !332, file: !45, line: 229, column: 17)
!339 = !DILocation(line: 229, column: 22, scope: !338)
!340 = !DILocation(line: 229, column: 17, scope: !332)
!341 = !DILocation(line: 231, column: 24, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !45, line: 230, column: 13)
!343 = !DILocation(line: 231, column: 17, scope: !342)
!344 = !DILocation(line: 231, column: 30, scope: !342)
!345 = !DILocation(line: 233, column: 23, scope: !346)
!346 = distinct !DILexicalBlock(scope: !342, file: !45, line: 233, column: 17)
!347 = !DILocation(line: 233, column: 21, scope: !346)
!348 = !DILocation(line: 233, column: 28, scope: !349)
!349 = distinct !DILexicalBlock(scope: !346, file: !45, line: 233, column: 17)
!350 = !DILocation(line: 233, column: 30, scope: !349)
!351 = !DILocation(line: 233, column: 17, scope: !346)
!352 = !DILocation(line: 235, column: 41, scope: !353)
!353 = distinct !DILexicalBlock(scope: !349, file: !45, line: 234, column: 17)
!354 = !DILocation(line: 235, column: 34, scope: !353)
!355 = !DILocation(line: 235, column: 21, scope: !353)
!356 = !DILocation(line: 236, column: 17, scope: !353)
!357 = !DILocation(line: 233, column: 37, scope: !349)
!358 = !DILocation(line: 233, column: 17, scope: !349)
!359 = distinct !{!359, !351, !360, !120}
!360 = !DILocation(line: 236, column: 17, scope: !346)
!361 = !DILocation(line: 237, column: 13, scope: !342)
!362 = !DILocation(line: 240, column: 17, scope: !363)
!363 = distinct !DILexicalBlock(scope: !338, file: !45, line: 239, column: 13)
!364 = !DILocation(line: 243, column: 5, scope: !333)
!365 = !DILocation(line: 244, column: 1, scope: !316)
!366 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_13_good", scope: !45, file: !45, line: 246, type: !53, scopeLine: 247, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!367 = !DILocation(line: 248, column: 5, scope: !366)
!368 = !DILocation(line: 249, column: 5, scope: !366)
!369 = !DILocation(line: 250, column: 5, scope: !366)
!370 = !DILocation(line: 251, column: 5, scope: !366)
!371 = !DILocation(line: 252, column: 1, scope: !366)
!372 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !373, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !42}
!375 = !DILocalVariable(name: "line", arg: 1, scope: !372, file: !3, line: 11, type: !42)
!376 = !DILocation(line: 11, column: 25, scope: !372)
!377 = !DILocation(line: 13, column: 1, scope: !372)
!378 = !DILocation(line: 14, column: 8, scope: !379)
!379 = distinct !DILexicalBlock(scope: !372, file: !3, line: 14, column: 8)
!380 = !DILocation(line: 14, column: 13, scope: !379)
!381 = !DILocation(line: 14, column: 8, scope: !372)
!382 = !DILocation(line: 16, column: 24, scope: !383)
!383 = distinct !DILexicalBlock(scope: !379, file: !3, line: 15, column: 5)
!384 = !DILocation(line: 16, column: 9, scope: !383)
!385 = !DILocation(line: 17, column: 5, scope: !383)
!386 = !DILocation(line: 18, column: 5, scope: !372)
!387 = !DILocation(line: 19, column: 1, scope: !372)
!388 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !373, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!389 = !DILocalVariable(name: "line", arg: 1, scope: !388, file: !3, line: 20, type: !42)
!390 = !DILocation(line: 20, column: 29, scope: !388)
!391 = !DILocation(line: 22, column: 8, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !3, line: 22, column: 8)
!393 = !DILocation(line: 22, column: 13, scope: !392)
!394 = !DILocation(line: 22, column: 8, scope: !388)
!395 = !DILocation(line: 24, column: 24, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !3, line: 23, column: 5)
!397 = !DILocation(line: 24, column: 9, scope: !396)
!398 = !DILocation(line: 25, column: 5, scope: !396)
!399 = !DILocation(line: 26, column: 1, scope: !388)
!400 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !401, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !403}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !405, line: 74, baseType: !23)
!405 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!406 = !DILocalVariable(name: "line", arg: 1, scope: !400, file: !3, line: 27, type: !403)
!407 = !DILocation(line: 27, column: 29, scope: !400)
!408 = !DILocation(line: 29, column: 8, scope: !409)
!409 = distinct !DILexicalBlock(scope: !400, file: !3, line: 29, column: 8)
!410 = !DILocation(line: 29, column: 13, scope: !409)
!411 = !DILocation(line: 29, column: 8, scope: !400)
!412 = !DILocation(line: 31, column: 27, scope: !413)
!413 = distinct !DILexicalBlock(scope: !409, file: !3, line: 30, column: 5)
!414 = !DILocation(line: 31, column: 9, scope: !413)
!415 = !DILocation(line: 32, column: 5, scope: !413)
!416 = !DILocation(line: 33, column: 1, scope: !400)
!417 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !418, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !23}
!420 = !DILocalVariable(name: "intNumber", arg: 1, scope: !417, file: !3, line: 35, type: !23)
!421 = !DILocation(line: 35, column: 24, scope: !417)
!422 = !DILocation(line: 37, column: 20, scope: !417)
!423 = !DILocation(line: 37, column: 5, scope: !417)
!424 = !DILocation(line: 38, column: 1, scope: !417)
!425 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !426, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !428}
!428 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!429 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !425, file: !3, line: 40, type: !428)
!430 = !DILocation(line: 40, column: 28, scope: !425)
!431 = !DILocation(line: 42, column: 21, scope: !425)
!432 = !DILocation(line: 42, column: 5, scope: !425)
!433 = !DILocation(line: 43, column: 1, scope: !425)
!434 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !435, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !437}
!437 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!438 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !434, file: !3, line: 45, type: !437)
!439 = !DILocation(line: 45, column: 28, scope: !434)
!440 = !DILocation(line: 47, column: 20, scope: !434)
!441 = !DILocation(line: 47, column: 5, scope: !434)
!442 = !DILocation(line: 48, column: 1, scope: !434)
!443 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !444, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !446}
!446 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!447 = !DILocalVariable(name: "longNumber", arg: 1, scope: !443, file: !3, line: 50, type: !446)
!448 = !DILocation(line: 50, column: 26, scope: !443)
!449 = !DILocation(line: 52, column: 21, scope: !443)
!450 = !DILocation(line: 52, column: 5, scope: !443)
!451 = !DILocation(line: 53, column: 1, scope: !443)
!452 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !453, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !455}
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !456, line: 27, baseType: !457)
!456 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !458, line: 44, baseType: !446)
!458 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!459 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !452, file: !3, line: 55, type: !455)
!460 = !DILocation(line: 55, column: 33, scope: !452)
!461 = !DILocation(line: 57, column: 29, scope: !452)
!462 = !DILocation(line: 57, column: 5, scope: !452)
!463 = !DILocation(line: 58, column: 1, scope: !452)
!464 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !465, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !467}
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !405, line: 46, baseType: !468)
!468 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!469 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !464, file: !3, line: 60, type: !467)
!470 = !DILocation(line: 60, column: 29, scope: !464)
!471 = !DILocation(line: 62, column: 21, scope: !464)
!472 = !DILocation(line: 62, column: 5, scope: !464)
!473 = !DILocation(line: 63, column: 1, scope: !464)
!474 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !475, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !43}
!477 = !DILocalVariable(name: "charHex", arg: 1, scope: !474, file: !3, line: 65, type: !43)
!478 = !DILocation(line: 65, column: 29, scope: !474)
!479 = !DILocation(line: 67, column: 22, scope: !474)
!480 = !DILocation(line: 67, column: 5, scope: !474)
!481 = !DILocation(line: 68, column: 1, scope: !474)
!482 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !483, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !404}
!485 = !DILocalVariable(name: "wideChar", arg: 1, scope: !482, file: !3, line: 70, type: !404)
!486 = !DILocation(line: 70, column: 29, scope: !482)
!487 = !DILocalVariable(name: "s", scope: !482, file: !3, line: 74, type: !488)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 64, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 2)
!491 = !DILocation(line: 74, column: 13, scope: !482)
!492 = !DILocation(line: 75, column: 16, scope: !482)
!493 = !DILocation(line: 75, column: 9, scope: !482)
!494 = !DILocation(line: 75, column: 14, scope: !482)
!495 = !DILocation(line: 76, column: 9, scope: !482)
!496 = !DILocation(line: 76, column: 14, scope: !482)
!497 = !DILocation(line: 77, column: 21, scope: !482)
!498 = !DILocation(line: 77, column: 5, scope: !482)
!499 = !DILocation(line: 78, column: 1, scope: !482)
!500 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !501, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !7}
!503 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !500, file: !3, line: 80, type: !7)
!504 = !DILocation(line: 80, column: 33, scope: !500)
!505 = !DILocation(line: 82, column: 20, scope: !500)
!506 = !DILocation(line: 82, column: 5, scope: !500)
!507 = !DILocation(line: 83, column: 1, scope: !500)
!508 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !509, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !25}
!511 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !508, file: !3, line: 85, type: !25)
!512 = !DILocation(line: 85, column: 45, scope: !508)
!513 = !DILocation(line: 87, column: 22, scope: !508)
!514 = !DILocation(line: 87, column: 5, scope: !508)
!515 = !DILocation(line: 88, column: 1, scope: !508)
!516 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !517, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !519}
!519 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!520 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !516, file: !3, line: 90, type: !519)
!521 = !DILocation(line: 90, column: 29, scope: !516)
!522 = !DILocation(line: 92, column: 20, scope: !516)
!523 = !DILocation(line: 92, column: 5, scope: !516)
!524 = !DILocation(line: 93, column: 1, scope: !516)
!525 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !526, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !528}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !530, line: 100, baseType: !531)
!530 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_576/source_code")
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !530, line: 96, size: 64, elements: !532)
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !531, file: !530, line: 98, baseType: !23, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !531, file: !530, line: 99, baseType: !23, size: 32, offset: 32)
!535 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !525, file: !3, line: 95, type: !528)
!536 = !DILocation(line: 95, column: 40, scope: !525)
!537 = !DILocation(line: 97, column: 26, scope: !525)
!538 = !DILocation(line: 97, column: 47, scope: !525)
!539 = !DILocation(line: 97, column: 55, scope: !525)
!540 = !DILocation(line: 97, column: 76, scope: !525)
!541 = !DILocation(line: 97, column: 5, scope: !525)
!542 = !DILocation(line: 98, column: 1, scope: !525)
!543 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !544, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !546, !467}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!547 = !DILocalVariable(name: "bytes", arg: 1, scope: !543, file: !3, line: 100, type: !546)
!548 = !DILocation(line: 100, column: 38, scope: !543)
!549 = !DILocalVariable(name: "numBytes", arg: 2, scope: !543, file: !3, line: 100, type: !467)
!550 = !DILocation(line: 100, column: 52, scope: !543)
!551 = !DILocalVariable(name: "i", scope: !543, file: !3, line: 102, type: !467)
!552 = !DILocation(line: 102, column: 12, scope: !543)
!553 = !DILocation(line: 103, column: 12, scope: !554)
!554 = distinct !DILexicalBlock(scope: !543, file: !3, line: 103, column: 5)
!555 = !DILocation(line: 103, column: 10, scope: !554)
!556 = !DILocation(line: 103, column: 17, scope: !557)
!557 = distinct !DILexicalBlock(scope: !554, file: !3, line: 103, column: 5)
!558 = !DILocation(line: 103, column: 21, scope: !557)
!559 = !DILocation(line: 103, column: 19, scope: !557)
!560 = !DILocation(line: 103, column: 5, scope: !554)
!561 = !DILocation(line: 105, column: 24, scope: !562)
!562 = distinct !DILexicalBlock(scope: !557, file: !3, line: 104, column: 5)
!563 = !DILocation(line: 105, column: 30, scope: !562)
!564 = !DILocation(line: 105, column: 9, scope: !562)
!565 = !DILocation(line: 106, column: 5, scope: !562)
!566 = !DILocation(line: 103, column: 31, scope: !557)
!567 = !DILocation(line: 103, column: 5, scope: !557)
!568 = distinct !{!568, !560, !569, !120}
!569 = !DILocation(line: 106, column: 5, scope: !554)
!570 = !DILocation(line: 107, column: 5, scope: !543)
!571 = !DILocation(line: 108, column: 1, scope: !543)
!572 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !573, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!573 = !DISubroutineType(types: !574)
!574 = !{!467, !546, !467, !42}
!575 = !DILocalVariable(name: "bytes", arg: 1, scope: !572, file: !3, line: 113, type: !546)
!576 = !DILocation(line: 113, column: 39, scope: !572)
!577 = !DILocalVariable(name: "numBytes", arg: 2, scope: !572, file: !3, line: 113, type: !467)
!578 = !DILocation(line: 113, column: 53, scope: !572)
!579 = !DILocalVariable(name: "hex", arg: 3, scope: !572, file: !3, line: 113, type: !42)
!580 = !DILocation(line: 113, column: 71, scope: !572)
!581 = !DILocalVariable(name: "numWritten", scope: !572, file: !3, line: 115, type: !467)
!582 = !DILocation(line: 115, column: 12, scope: !572)
!583 = !DILocation(line: 121, column: 5, scope: !572)
!584 = !DILocation(line: 121, column: 12, scope: !572)
!585 = !DILocation(line: 121, column: 25, scope: !572)
!586 = !DILocation(line: 121, column: 23, scope: !572)
!587 = !DILocation(line: 121, column: 34, scope: !572)
!588 = !DILocation(line: 121, column: 37, scope: !572)
!589 = !DILocation(line: 121, column: 67, scope: !572)
!590 = !DILocation(line: 121, column: 70, scope: !572)
!591 = !DILocation(line: 0, scope: !572)
!592 = !DILocalVariable(name: "byte", scope: !593, file: !3, line: 123, type: !23)
!593 = distinct !DILexicalBlock(scope: !572, file: !3, line: 122, column: 5)
!594 = !DILocation(line: 123, column: 13, scope: !593)
!595 = !DILocation(line: 124, column: 17, scope: !593)
!596 = !DILocation(line: 124, column: 25, scope: !593)
!597 = !DILocation(line: 124, column: 23, scope: !593)
!598 = !DILocation(line: 124, column: 9, scope: !593)
!599 = !DILocation(line: 125, column: 45, scope: !593)
!600 = !DILocation(line: 125, column: 29, scope: !593)
!601 = !DILocation(line: 125, column: 9, scope: !593)
!602 = !DILocation(line: 125, column: 15, scope: !593)
!603 = !DILocation(line: 125, column: 27, scope: !593)
!604 = !DILocation(line: 126, column: 9, scope: !593)
!605 = distinct !{!605, !583, !606, !120}
!606 = !DILocation(line: 127, column: 5, scope: !572)
!607 = !DILocation(line: 129, column: 12, scope: !572)
!608 = !DILocation(line: 129, column: 5, scope: !572)
!609 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !610, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DISubroutineType(types: !611)
!611 = !{!467, !546, !467, !403}
!612 = !DILocalVariable(name: "bytes", arg: 1, scope: !609, file: !3, line: 135, type: !546)
!613 = !DILocation(line: 135, column: 41, scope: !609)
!614 = !DILocalVariable(name: "numBytes", arg: 2, scope: !609, file: !3, line: 135, type: !467)
!615 = !DILocation(line: 135, column: 55, scope: !609)
!616 = !DILocalVariable(name: "hex", arg: 3, scope: !609, file: !3, line: 135, type: !403)
!617 = !DILocation(line: 135, column: 76, scope: !609)
!618 = !DILocalVariable(name: "numWritten", scope: !609, file: !3, line: 137, type: !467)
!619 = !DILocation(line: 137, column: 12, scope: !609)
!620 = !DILocation(line: 143, column: 5, scope: !609)
!621 = !DILocation(line: 143, column: 12, scope: !609)
!622 = !DILocation(line: 143, column: 25, scope: !609)
!623 = !DILocation(line: 143, column: 23, scope: !609)
!624 = !DILocation(line: 143, column: 34, scope: !609)
!625 = !DILocation(line: 143, column: 47, scope: !609)
!626 = !DILocation(line: 143, column: 55, scope: !609)
!627 = !DILocation(line: 143, column: 53, scope: !609)
!628 = !DILocation(line: 143, column: 37, scope: !609)
!629 = !DILocation(line: 143, column: 68, scope: !609)
!630 = !DILocation(line: 143, column: 81, scope: !609)
!631 = !DILocation(line: 143, column: 89, scope: !609)
!632 = !DILocation(line: 143, column: 87, scope: !609)
!633 = !DILocation(line: 143, column: 100, scope: !609)
!634 = !DILocation(line: 143, column: 71, scope: !609)
!635 = !DILocation(line: 0, scope: !609)
!636 = !DILocalVariable(name: "byte", scope: !637, file: !3, line: 145, type: !23)
!637 = distinct !DILexicalBlock(scope: !609, file: !3, line: 144, column: 5)
!638 = !DILocation(line: 145, column: 13, scope: !637)
!639 = !DILocation(line: 146, column: 18, scope: !637)
!640 = !DILocation(line: 146, column: 26, scope: !637)
!641 = !DILocation(line: 146, column: 24, scope: !637)
!642 = !DILocation(line: 146, column: 9, scope: !637)
!643 = !DILocation(line: 147, column: 45, scope: !637)
!644 = !DILocation(line: 147, column: 29, scope: !637)
!645 = !DILocation(line: 147, column: 9, scope: !637)
!646 = !DILocation(line: 147, column: 15, scope: !637)
!647 = !DILocation(line: 147, column: 27, scope: !637)
!648 = !DILocation(line: 148, column: 9, scope: !637)
!649 = distinct !{!649, !620, !650, !120}
!650 = !DILocation(line: 149, column: 5, scope: !609)
!651 = !DILocation(line: 151, column: 12, scope: !609)
!652 = !DILocation(line: 151, column: 5, scope: !609)
!653 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !654, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!654 = !DISubroutineType(types: !655)
!655 = !{!23}
!656 = !DILocation(line: 158, column: 5, scope: !653)
!657 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !654, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!658 = !DILocation(line: 163, column: 5, scope: !657)
!659 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !654, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!660 = !DILocation(line: 168, column: 13, scope: !659)
!661 = !DILocation(line: 168, column: 20, scope: !659)
!662 = !DILocation(line: 168, column: 5, scope: !659)
!663 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!664 = !DILocation(line: 187, column: 16, scope: !663)
!665 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!666 = !DILocation(line: 188, column: 16, scope: !665)
!667 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!668 = !DILocation(line: 189, column: 16, scope: !667)
!669 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!670 = !DILocation(line: 190, column: 16, scope: !669)
!671 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!672 = !DILocation(line: 191, column: 16, scope: !671)
!673 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!674 = !DILocation(line: 192, column: 16, scope: !673)
!675 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!676 = !DILocation(line: 193, column: 16, scope: !675)
!677 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!678 = !DILocation(line: 194, column: 16, scope: !677)
!679 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!680 = !DILocation(line: 195, column: 16, scope: !679)
!681 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!682 = !DILocation(line: 198, column: 15, scope: !681)
!683 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!684 = !DILocation(line: 199, column: 15, scope: !683)
!685 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!686 = !DILocation(line: 200, column: 15, scope: !685)
!687 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!688 = !DILocation(line: 201, column: 15, scope: !687)
!689 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!690 = !DILocation(line: 202, column: 15, scope: !689)
!691 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!692 = !DILocation(line: 203, column: 15, scope: !691)
!693 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!694 = !DILocation(line: 204, column: 15, scope: !693)
!695 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!696 = !DILocation(line: 205, column: 15, scope: !695)
!697 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!698 = !DILocation(line: 206, column: 15, scope: !697)
