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
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"buffer overread....\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !9
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !34
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !36
@globalTrue = dso_local global i32 1, align 4, !dbg !38
@globalFalse = dso_local global i32 0, align 4, !dbg !40
@globalFive = dso_local global i32 5, align 4, !dbg !42
@globalArgc = dso_local global i32 0, align 4, !dbg !44
@globalArgv = dso_local global i8** null, align 8, !dbg !46
@.str.5 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.8 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.12 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_07_bad() #0 !dbg !55 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !58, metadata !DIExpression()), !dbg !59
  store i32 -1, i32* %data, align 4, !dbg !60
  %0 = load i32, i32* @staticFive, align 4, !dbg !61
  %cmp = icmp eq i32 %0, 5, !dbg !63
  br i1 %cmp, label %if.then, label %if.end5, !dbg !64

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !65, metadata !DIExpression()), !dbg !71
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !71
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !71
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !72
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !74
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !75
  %cmp1 = icmp ne i8* %call, null, !dbg !76
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !77

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !78
  %call4 = call i32 @atoi(i8* %arraydecay3) #7, !dbg !80
  store i32 %call4, i32* %data, align 4, !dbg !81
  br label %if.end, !dbg !82

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !83
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !85

if.end5:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @staticFive, align 4, !dbg !86
  %cmp6 = icmp eq i32 %3, 5, !dbg !88
  br i1 %cmp6, label %if.then7, label %if.end19, !dbg !89

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !90, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !94, metadata !DIExpression()), !dbg !98
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !98
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !98
  %5 = load i32, i32* %data, align 4, !dbg !99
  %cmp8 = icmp sge i32 %5, 0, !dbg !101
  br i1 %cmp8, label %if.then9, label %if.else17, !dbg !102

if.then9:                                         ; preds = %if.then7
  %6 = load i32, i32* %data, align 4, !dbg !103
  %cmp10 = icmp sgt i32 %6, 9, !dbg !106
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !107

if.then11:                                        ; preds = %if.then9
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)), !dbg !108
  br label %if.end13, !dbg !110

if.end13:                                         ; preds = %if.then11, %if.then9
  %7 = load i32, i32* %data, align 4, !dbg !111
  %idxprom = sext i32 %7 to i64, !dbg !112
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !112
  store i32 1, i32* %arrayidx, align 4, !dbg !113
  store i32 0, i32* %i, align 4, !dbg !114
  br label %for.cond, !dbg !116

for.cond:                                         ; preds = %for.inc, %if.end13
  %8 = load i32, i32* %i, align 4, !dbg !117
  %cmp14 = icmp slt i32 %8, 10, !dbg !119
  br i1 %cmp14, label %for.body, label %for.end, !dbg !120

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !121
  %idxprom15 = sext i32 %9 to i64, !dbg !123
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom15, !dbg !123
  %10 = load i32, i32* %arrayidx16, align 4, !dbg !123
  call void @printIntLine(i32 %10), !dbg !124
  br label %for.inc, !dbg !125

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !126
  %inc = add nsw i32 %11, 1, !dbg !126
  store i32 %inc, i32* %i, align 4, !dbg !126
  br label %for.cond, !dbg !127, !llvm.loop !128

for.end:                                          ; preds = %for.cond
  br label %if.end18, !dbg !131

if.else17:                                        ; preds = %if.then7
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !132
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %for.end
  br label %if.end19, !dbg !134

if.end19:                                         ; preds = %if.end18, %if.end5
  ret void, !dbg !135
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !136 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !137, metadata !DIExpression()), !dbg !138
  store i32 -1, i32* %data, align 4, !dbg !139
  %0 = load i32, i32* @staticFive, align 4, !dbg !140
  %cmp = icmp eq i32 %0, 5, !dbg !142
  br i1 %cmp, label %if.then, label %if.end5, !dbg !143

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !144, metadata !DIExpression()), !dbg !147
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !147
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !147
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !148
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !150
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !151
  %cmp1 = icmp ne i8* %call, null, !dbg !152
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !153

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !154
  %call4 = call i32 @atoi(i8* %arraydecay3) #7, !dbg !156
  store i32 %call4, i32* %data, align 4, !dbg !157
  br label %if.end, !dbg !158

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !159
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !161

if.end5:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @staticFive, align 4, !dbg !162
  %cmp6 = icmp ne i32 %3, 5, !dbg !164
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !165

if.then7:                                         ; preds = %if.end5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !166
  br label %if.end17, !dbg !168

if.else8:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !169, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !173, metadata !DIExpression()), !dbg !174
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !174
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !174
  %5 = load i32, i32* %data, align 4, !dbg !175
  %cmp9 = icmp sge i32 %5, 0, !dbg !177
  br i1 %cmp9, label %land.lhs.true, label %if.else15, !dbg !178

land.lhs.true:                                    ; preds = %if.else8
  %6 = load i32, i32* %data, align 4, !dbg !179
  %cmp10 = icmp slt i32 %6, 10, !dbg !180
  br i1 %cmp10, label %if.then11, label %if.else15, !dbg !181

if.then11:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !182
  %idxprom = sext i32 %7 to i64, !dbg !184
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !184
  store i32 1, i32* %arrayidx, align 4, !dbg !185
  store i32 0, i32* %i, align 4, !dbg !186
  br label %for.cond, !dbg !188

for.cond:                                         ; preds = %for.inc, %if.then11
  %8 = load i32, i32* %i, align 4, !dbg !189
  %cmp12 = icmp slt i32 %8, 10, !dbg !191
  br i1 %cmp12, label %for.body, label %for.end, !dbg !192

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !193
  %idxprom13 = sext i32 %9 to i64, !dbg !195
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom13, !dbg !195
  %10 = load i32, i32* %arrayidx14, align 4, !dbg !195
  call void @printIntLine(i32 %10), !dbg !196
  br label %for.inc, !dbg !197

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !198
  %inc = add nsw i32 %11, 1, !dbg !198
  store i32 %inc, i32* %i, align 4, !dbg !198
  br label %for.cond, !dbg !199, !llvm.loop !200

for.end:                                          ; preds = %for.cond
  br label %if.end16, !dbg !202

if.else15:                                        ; preds = %land.lhs.true, %if.else8
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)), !dbg !203
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %for.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7
  ret void, !dbg !205
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !206 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !207, metadata !DIExpression()), !dbg !208
  store i32 -1, i32* %data, align 4, !dbg !209
  %0 = load i32, i32* @staticFive, align 4, !dbg !210
  %cmp = icmp eq i32 %0, 5, !dbg !212
  br i1 %cmp, label %if.then, label %if.end5, !dbg !213

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !214, metadata !DIExpression()), !dbg !217
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !217
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !217
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !218
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !220
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !221
  %cmp1 = icmp ne i8* %call, null, !dbg !222
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !223

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !224
  %call4 = call i32 @atoi(i8* %arraydecay3) #7, !dbg !226
  store i32 %call4, i32* %data, align 4, !dbg !227
  br label %if.end, !dbg !228

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !229
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !231

if.end5:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @staticFive, align 4, !dbg !232
  %cmp6 = icmp eq i32 %3, 5, !dbg !234
  br i1 %cmp6, label %if.then7, label %if.end16, !dbg !235

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !236, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !240, metadata !DIExpression()), !dbg !241
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !241
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !241
  %5 = load i32, i32* %data, align 4, !dbg !242
  %cmp8 = icmp sge i32 %5, 0, !dbg !244
  br i1 %cmp8, label %land.lhs.true, label %if.else14, !dbg !245

land.lhs.true:                                    ; preds = %if.then7
  %6 = load i32, i32* %data, align 4, !dbg !246
  %cmp9 = icmp slt i32 %6, 10, !dbg !247
  br i1 %cmp9, label %if.then10, label %if.else14, !dbg !248

if.then10:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !249
  %idxprom = sext i32 %7 to i64, !dbg !251
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !251
  store i32 1, i32* %arrayidx, align 4, !dbg !252
  store i32 0, i32* %i, align 4, !dbg !253
  br label %for.cond, !dbg !255

for.cond:                                         ; preds = %for.inc, %if.then10
  %8 = load i32, i32* %i, align 4, !dbg !256
  %cmp11 = icmp slt i32 %8, 10, !dbg !258
  br i1 %cmp11, label %for.body, label %for.end, !dbg !259

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !260
  %idxprom12 = sext i32 %9 to i64, !dbg !262
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom12, !dbg !262
  %10 = load i32, i32* %arrayidx13, align 4, !dbg !262
  call void @printIntLine(i32 %10), !dbg !263
  br label %for.inc, !dbg !264

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !265
  %inc = add nsw i32 %11, 1, !dbg !265
  store i32 %inc, i32* %i, align 4, !dbg !265
  br label %for.cond, !dbg !266, !llvm.loop !267

for.end:                                          ; preds = %for.cond
  br label %if.end15, !dbg !269

if.else14:                                        ; preds = %land.lhs.true, %if.then7
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)), !dbg !270
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %for.end
  br label %if.end16, !dbg !272

if.end16:                                         ; preds = %if.end15, %if.end5
  ret void, !dbg !273
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !274 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !275, metadata !DIExpression()), !dbg !276
  store i32 -1, i32* %data, align 4, !dbg !277
  %0 = load i32, i32* @staticFive, align 4, !dbg !278
  %cmp = icmp ne i32 %0, 5, !dbg !280
  br i1 %cmp, label %if.then, label %if.else, !dbg !281

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !282
  br label %if.end, !dbg !284

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !285
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @staticFive, align 4, !dbg !287
  %cmp1 = icmp eq i32 %1, 5, !dbg !289
  br i1 %cmp1, label %if.then2, label %if.end10, !dbg !290

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !291, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !295, metadata !DIExpression()), !dbg !296
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !296
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !296
  %3 = load i32, i32* %data, align 4, !dbg !297
  %cmp3 = icmp sge i32 %3, 0, !dbg !299
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !300

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !301
  %idxprom = sext i32 %4 to i64, !dbg !303
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !303
  store i32 1, i32* %arrayidx, align 4, !dbg !304
  store i32 0, i32* %i, align 4, !dbg !305
  br label %for.cond, !dbg !307

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !308
  %cmp5 = icmp slt i32 %5, 10, !dbg !310
  br i1 %cmp5, label %for.body, label %for.end, !dbg !311

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !312
  %idxprom6 = sext i32 %6 to i64, !dbg !314
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !314
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !314
  call void @printIntLine(i32 %7), !dbg !315
  br label %for.inc, !dbg !316

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !317
  %inc = add nsw i32 %8, 1, !dbg !317
  store i32 %inc, i32* %i, align 4, !dbg !317
  br label %for.cond, !dbg !318, !llvm.loop !319

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !321

if.else8:                                         ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !322
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end10, !dbg !324

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !325
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !326 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !327, metadata !DIExpression()), !dbg !328
  store i32 -1, i32* %data, align 4, !dbg !329
  %0 = load i32, i32* @staticFive, align 4, !dbg !330
  %cmp = icmp eq i32 %0, 5, !dbg !332
  br i1 %cmp, label %if.then, label %if.end, !dbg !333

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !334
  br label %if.end, !dbg !336

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @staticFive, align 4, !dbg !337
  %cmp1 = icmp eq i32 %1, 5, !dbg !339
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !340

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !341, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !345, metadata !DIExpression()), !dbg !346
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !346
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !346
  %3 = load i32, i32* %data, align 4, !dbg !347
  %cmp3 = icmp sge i32 %3, 0, !dbg !349
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !350

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !351
  %idxprom = sext i32 %4 to i64, !dbg !353
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !353
  store i32 1, i32* %arrayidx, align 4, !dbg !354
  store i32 0, i32* %i, align 4, !dbg !355
  br label %for.cond, !dbg !357

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !358
  %cmp5 = icmp slt i32 %5, 10, !dbg !360
  br i1 %cmp5, label %for.body, label %for.end, !dbg !361

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !362
  %idxprom6 = sext i32 %6 to i64, !dbg !364
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !364
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !364
  call void @printIntLine(i32 %7), !dbg !365
  br label %for.inc, !dbg !366

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !367
  %inc = add nsw i32 %8, 1, !dbg !367
  store i32 %inc, i32* %i, align 4, !dbg !367
  br label %for.cond, !dbg !368, !llvm.loop !369

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !371

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !372
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.end
  br label %if.end9, !dbg !374

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !375
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_07_good() #0 !dbg !376 {
entry:
  call void @goodB2G1(), !dbg !377
  call void @goodB2G2(), !dbg !378
  call void @goodG2B1(), !dbg !379
  call void @goodG2B2(), !dbg !380
  ret void, !dbg !381
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !382 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !387
  %0 = load i8*, i8** %line.addr, align 8, !dbg !388
  %cmp = icmp ne i8* %0, null, !dbg !390
  br i1 %cmp, label %if.then, label %if.end, !dbg !391

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !392
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !394
  br label %if.end, !dbg !395

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !396
  ret void, !dbg !397
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !398 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !399, metadata !DIExpression()), !dbg !400
  %0 = load i8*, i8** %line.addr, align 8, !dbg !401
  %cmp = icmp ne i8* %0, null, !dbg !403
  br i1 %cmp, label %if.then, label %if.end, !dbg !404

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !407
  br label %if.end, !dbg !408

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !409
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !410 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !416, metadata !DIExpression()), !dbg !417
  %0 = load i32*, i32** %line.addr, align 8, !dbg !418
  %cmp = icmp ne i32* %0, null, !dbg !420
  br i1 %cmp, label %if.then, label %if.end, !dbg !421

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !422
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !424
  br label %if.end, !dbg !425

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !426
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !427 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !430, metadata !DIExpression()), !dbg !431
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !432
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.11, i64 0, i64 0), i32 %0), !dbg !433
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !435 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !439, metadata !DIExpression()), !dbg !440
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !441
  %conv = sext i16 %0 to i32, !dbg !441
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.12, i64 0, i64 0), i32 %conv), !dbg !442
  ret void, !dbg !443
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !444 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !448, metadata !DIExpression()), !dbg !449
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !450
  %conv = fpext float %0 to double, !dbg !450
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !451
  ret void, !dbg !452
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !453 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !457, metadata !DIExpression()), !dbg !458
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !459
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !460
  ret void, !dbg !461
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !462 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !469, metadata !DIExpression()), !dbg !470
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !471
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !472
  ret void, !dbg !473
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !474 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !479, metadata !DIExpression()), !dbg !480
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !481
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !482
  ret void, !dbg !483
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !484 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !487, metadata !DIExpression()), !dbg !488
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !489
  %conv = sext i8 %0 to i32, !dbg !489
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !490
  ret void, !dbg !491
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !492 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !495, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !497, metadata !DIExpression()), !dbg !501
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !502
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !503
  store i32 %0, i32* %arrayidx, align 4, !dbg !504
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !505
  store i32 0, i32* %arrayidx1, align 4, !dbg !506
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !507
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !508
  ret void, !dbg !509
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !510 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !513, metadata !DIExpression()), !dbg !514
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !515
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !516
  ret void, !dbg !517
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !518 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !521, metadata !DIExpression()), !dbg !522
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !523
  %conv = zext i8 %0 to i32, !dbg !523
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !524
  ret void, !dbg !525
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !526 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !530, metadata !DIExpression()), !dbg !531
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !532
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !533
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !535 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !545, metadata !DIExpression()), !dbg !546
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !547
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !548
  %1 = load i32, i32* %intOne, align 4, !dbg !548
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !549
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !550
  %3 = load i32, i32* %intTwo, align 4, !dbg !550
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !551
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !553 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !557, metadata !DIExpression()), !dbg !558
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !559, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.declare(metadata i64* %i, metadata !561, metadata !DIExpression()), !dbg !562
  store i64 0, i64* %i, align 8, !dbg !563
  br label %for.cond, !dbg !565

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !566
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !568
  %cmp = icmp ult i64 %0, %1, !dbg !569
  br i1 %cmp, label %for.body, label %for.end, !dbg !570

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !571
  %3 = load i64, i64* %i, align 8, !dbg !573
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !571
  %4 = load i8, i8* %arrayidx, align 1, !dbg !571
  %conv = zext i8 %4 to i32, !dbg !571
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !574
  br label %for.inc, !dbg !575

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !576
  %inc = add i64 %5, 1, !dbg !576
  store i64 %inc, i64* %i, align 8, !dbg !576
  br label %for.cond, !dbg !577, !llvm.loop !578

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !580
  ret void, !dbg !581
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !582 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !585, metadata !DIExpression()), !dbg !586
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !587, metadata !DIExpression()), !dbg !588
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !589, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !591, metadata !DIExpression()), !dbg !592
  store i64 0, i64* %numWritten, align 8, !dbg !592
  br label %while.cond, !dbg !593

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !594
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !595
  %cmp = icmp ult i64 %0, %1, !dbg !596
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !597

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !598
  %2 = load i16*, i16** %call, align 8, !dbg !598
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !598
  %4 = load i64, i64* %numWritten, align 8, !dbg !598
  %mul = mul i64 2, %4, !dbg !598
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !598
  %5 = load i8, i8* %arrayidx, align 1, !dbg !598
  %conv = sext i8 %5 to i32, !dbg !598
  %idxprom = sext i32 %conv to i64, !dbg !598
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !598
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !598
  %conv2 = zext i16 %6 to i32, !dbg !598
  %and = and i32 %conv2, 4096, !dbg !598
  %tobool = icmp ne i32 %and, 0, !dbg !598
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !599

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !600
  %7 = load i16*, i16** %call3, align 8, !dbg !600
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !600
  %9 = load i64, i64* %numWritten, align 8, !dbg !600
  %mul4 = mul i64 2, %9, !dbg !600
  %add = add i64 %mul4, 1, !dbg !600
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !600
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !600
  %conv6 = sext i8 %10 to i32, !dbg !600
  %idxprom7 = sext i32 %conv6 to i64, !dbg !600
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !600
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !600
  %conv9 = zext i16 %11 to i32, !dbg !600
  %and10 = and i32 %conv9, 4096, !dbg !600
  %tobool11 = icmp ne i32 %and10, 0, !dbg !599
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !601
  br i1 %12, label %while.body, label %while.end, !dbg !593

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !602, metadata !DIExpression()), !dbg !604
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !605
  %14 = load i64, i64* %numWritten, align 8, !dbg !606
  %mul12 = mul i64 2, %14, !dbg !607
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !605
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !608
  %15 = load i32, i32* %byte, align 4, !dbg !609
  %conv15 = trunc i32 %15 to i8, !dbg !610
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !611
  %17 = load i64, i64* %numWritten, align 8, !dbg !612
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !611
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !613
  %18 = load i64, i64* %numWritten, align 8, !dbg !614
  %inc = add i64 %18, 1, !dbg !614
  store i64 %inc, i64* %numWritten, align 8, !dbg !614
  br label %while.cond, !dbg !593, !llvm.loop !615

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !617
  ret i64 %19, !dbg !618
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !619 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !622, metadata !DIExpression()), !dbg !623
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !624, metadata !DIExpression()), !dbg !625
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !626, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !628, metadata !DIExpression()), !dbg !629
  store i64 0, i64* %numWritten, align 8, !dbg !629
  br label %while.cond, !dbg !630

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !631
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !632
  %cmp = icmp ult i64 %0, %1, !dbg !633
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !634

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !635
  %3 = load i64, i64* %numWritten, align 8, !dbg !636
  %mul = mul i64 2, %3, !dbg !637
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !635
  %4 = load i32, i32* %arrayidx, align 4, !dbg !635
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !638
  %tobool = icmp ne i32 %call, 0, !dbg !638
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !639

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !640
  %6 = load i64, i64* %numWritten, align 8, !dbg !641
  %mul1 = mul i64 2, %6, !dbg !642
  %add = add i64 %mul1, 1, !dbg !643
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !640
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !640
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !644
  %tobool4 = icmp ne i32 %call3, 0, !dbg !639
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !645
  br i1 %8, label %while.body, label %while.end, !dbg !630

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !646, metadata !DIExpression()), !dbg !648
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !649
  %10 = load i64, i64* %numWritten, align 8, !dbg !650
  %mul5 = mul i64 2, %10, !dbg !651
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !649
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !652
  %11 = load i32, i32* %byte, align 4, !dbg !653
  %conv = trunc i32 %11 to i8, !dbg !654
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !655
  %13 = load i64, i64* %numWritten, align 8, !dbg !656
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !655
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !657
  %14 = load i64, i64* %numWritten, align 8, !dbg !658
  %inc = add i64 %14, 1, !dbg !658
  store i64 %inc, i64* %numWritten, align 8, !dbg !658
  br label %while.cond, !dbg !630, !llvm.loop !659

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !661
  ret i64 %15, !dbg !662
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !663 {
entry:
  ret i32 1, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !667 {
entry:
  ret i32 0, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !669 {
entry:
  %call = call i32 @rand() #9, !dbg !670
  %rem = srem i32 %call, 2, !dbg !671
  ret i32 %rem, !dbg !672
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !673 {
entry:
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !675 {
entry:
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !677 {
entry:
  ret void, !dbg !678
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !679 {
entry:
  ret void, !dbg !680
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !681 {
entry:
  ret void, !dbg !682
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !683 {
entry:
  ret void, !dbg !684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !685 {
entry:
  ret void, !dbg !686
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !687 {
entry:
  ret void, !dbg !688
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !689 {
entry:
  ret void, !dbg !690
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !691 {
entry:
  ret void, !dbg !692
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !693 {
entry:
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !695 {
entry:
  ret void, !dbg !696
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !697 {
entry:
  ret void, !dbg !698
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !699 {
entry:
  ret void, !dbg !700
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !701 {
entry:
  ret void, !dbg !702
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !703 {
entry:
  ret void, !dbg !704
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !705 {
entry:
  ret void, !dbg !706
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !707 {
entry:
  ret void, !dbg !708
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

!llvm.dbg.cu = !{!2, !11}
!llvm.ident = !{!51, !51}
!llvm.module.flags = !{!52, !53, !54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "staticFive", scope: !2, file: !3, line: 26, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_07.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_570/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0}
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !11, file: !12, line: 174, type: !8, isLocal: false, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, retainedTypes: !30, globals: !33, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_570/source_code")
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
!30 = !{!6, !8, !31, !32}
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!9, !34, !36, !38, !40, !42, !44, !46}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !11, file: !12, line: 175, type: !8, isLocal: false, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !11, file: !12, line: 176, type: !8, isLocal: false, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "globalTrue", scope: !11, file: !12, line: 181, type: !8, isLocal: false, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "globalFalse", scope: !11, file: !12, line: 182, type: !8, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "globalFive", scope: !11, file: !12, line: 183, type: !8, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalArgc", scope: !11, file: !12, line: 214, type: !8, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalArgv", scope: !11, file: !12, line: 215, type: !48, isLocal: false, isDefinition: true)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !{!"clang version 12.0.0"}
!52 = !{i32 7, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_07_bad", scope: !3, file: !3, line: 30, type: !56, scopeLine: 31, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!56 = !DISubroutineType(types: !57)
!57 = !{null}
!58 = !DILocalVariable(name: "data", scope: !55, file: !3, line: 32, type: !8)
!59 = !DILocation(line: 32, column: 9, scope: !55)
!60 = !DILocation(line: 34, column: 10, scope: !55)
!61 = !DILocation(line: 35, column: 8, scope: !62)
!62 = distinct !DILexicalBlock(scope: !55, file: !3, line: 35, column: 8)
!63 = !DILocation(line: 35, column: 18, scope: !62)
!64 = !DILocation(line: 35, column: 8, scope: !55)
!65 = !DILocalVariable(name: "inputBuffer", scope: !66, file: !3, line: 38, type: !68)
!66 = distinct !DILexicalBlock(scope: !67, file: !3, line: 37, column: 9)
!67 = distinct !DILexicalBlock(scope: !62, file: !3, line: 36, column: 5)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 112, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 14)
!71 = !DILocation(line: 38, column: 18, scope: !66)
!72 = !DILocation(line: 40, column: 23, scope: !73)
!73 = distinct !DILexicalBlock(scope: !66, file: !3, line: 40, column: 17)
!74 = !DILocation(line: 40, column: 53, scope: !73)
!75 = !DILocation(line: 40, column: 17, scope: !73)
!76 = !DILocation(line: 40, column: 60, scope: !73)
!77 = !DILocation(line: 40, column: 17, scope: !66)
!78 = !DILocation(line: 43, column: 29, scope: !79)
!79 = distinct !DILexicalBlock(scope: !73, file: !3, line: 41, column: 13)
!80 = !DILocation(line: 43, column: 24, scope: !79)
!81 = !DILocation(line: 43, column: 22, scope: !79)
!82 = !DILocation(line: 44, column: 13, scope: !79)
!83 = !DILocation(line: 47, column: 17, scope: !84)
!84 = distinct !DILexicalBlock(scope: !73, file: !3, line: 46, column: 13)
!85 = !DILocation(line: 50, column: 5, scope: !67)
!86 = !DILocation(line: 51, column: 8, scope: !87)
!87 = distinct !DILexicalBlock(scope: !55, file: !3, line: 51, column: 8)
!88 = !DILocation(line: 51, column: 18, scope: !87)
!89 = !DILocation(line: 51, column: 8, scope: !55)
!90 = !DILocalVariable(name: "i", scope: !91, file: !3, line: 54, type: !8)
!91 = distinct !DILexicalBlock(scope: !92, file: !3, line: 53, column: 9)
!92 = distinct !DILexicalBlock(scope: !87, file: !3, line: 52, column: 5)
!93 = !DILocation(line: 54, column: 17, scope: !91)
!94 = !DILocalVariable(name: "buffer", scope: !91, file: !3, line: 55, type: !95)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 320, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 10)
!98 = !DILocation(line: 55, column: 17, scope: !91)
!99 = !DILocation(line: 58, column: 17, scope: !100)
!100 = distinct !DILexicalBlock(scope: !91, file: !3, line: 58, column: 17)
!101 = !DILocation(line: 58, column: 22, scope: !100)
!102 = !DILocation(line: 58, column: 17, scope: !91)
!103 = !DILocation(line: 60, column: 17, scope: !104)
!104 = distinct !DILexicalBlock(scope: !105, file: !3, line: 60, column: 17)
!105 = distinct !DILexicalBlock(scope: !100, file: !3, line: 59, column: 13)
!106 = !DILocation(line: 60, column: 21, scope: !104)
!107 = !DILocation(line: 60, column: 17, scope: !105)
!108 = !DILocation(line: 62, column: 17, scope: !109)
!109 = distinct !DILexicalBlock(scope: !104, file: !3, line: 61, column: 17)
!110 = !DILocation(line: 63, column: 17, scope: !109)
!111 = !DILocation(line: 64, column: 24, scope: !105)
!112 = !DILocation(line: 64, column: 17, scope: !105)
!113 = !DILocation(line: 64, column: 30, scope: !105)
!114 = !DILocation(line: 67, column: 23, scope: !115)
!115 = distinct !DILexicalBlock(scope: !105, file: !3, line: 67, column: 17)
!116 = !DILocation(line: 67, column: 21, scope: !115)
!117 = !DILocation(line: 67, column: 28, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !3, line: 67, column: 17)
!119 = !DILocation(line: 67, column: 30, scope: !118)
!120 = !DILocation(line: 67, column: 17, scope: !115)
!121 = !DILocation(line: 69, column: 41, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !3, line: 68, column: 17)
!123 = !DILocation(line: 69, column: 34, scope: !122)
!124 = !DILocation(line: 69, column: 21, scope: !122)
!125 = !DILocation(line: 70, column: 17, scope: !122)
!126 = !DILocation(line: 67, column: 37, scope: !118)
!127 = !DILocation(line: 67, column: 17, scope: !118)
!128 = distinct !{!128, !120, !129, !130}
!129 = !DILocation(line: 70, column: 17, scope: !115)
!130 = !{!"llvm.loop.mustprogress"}
!131 = !DILocation(line: 71, column: 13, scope: !105)
!132 = !DILocation(line: 74, column: 17, scope: !133)
!133 = distinct !DILexicalBlock(scope: !100, file: !3, line: 73, column: 13)
!134 = !DILocation(line: 77, column: 5, scope: !92)
!135 = !DILocation(line: 78, column: 1, scope: !55)
!136 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 85, type: !56, scopeLine: 86, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!137 = !DILocalVariable(name: "data", scope: !136, file: !3, line: 87, type: !8)
!138 = !DILocation(line: 87, column: 9, scope: !136)
!139 = !DILocation(line: 89, column: 10, scope: !136)
!140 = !DILocation(line: 90, column: 8, scope: !141)
!141 = distinct !DILexicalBlock(scope: !136, file: !3, line: 90, column: 8)
!142 = !DILocation(line: 90, column: 18, scope: !141)
!143 = !DILocation(line: 90, column: 8, scope: !136)
!144 = !DILocalVariable(name: "inputBuffer", scope: !145, file: !3, line: 93, type: !68)
!145 = distinct !DILexicalBlock(scope: !146, file: !3, line: 92, column: 9)
!146 = distinct !DILexicalBlock(scope: !141, file: !3, line: 91, column: 5)
!147 = !DILocation(line: 93, column: 18, scope: !145)
!148 = !DILocation(line: 95, column: 23, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !3, line: 95, column: 17)
!150 = !DILocation(line: 95, column: 53, scope: !149)
!151 = !DILocation(line: 95, column: 17, scope: !149)
!152 = !DILocation(line: 95, column: 60, scope: !149)
!153 = !DILocation(line: 95, column: 17, scope: !145)
!154 = !DILocation(line: 98, column: 29, scope: !155)
!155 = distinct !DILexicalBlock(scope: !149, file: !3, line: 96, column: 13)
!156 = !DILocation(line: 98, column: 24, scope: !155)
!157 = !DILocation(line: 98, column: 22, scope: !155)
!158 = !DILocation(line: 99, column: 13, scope: !155)
!159 = !DILocation(line: 102, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !149, file: !3, line: 101, column: 13)
!161 = !DILocation(line: 105, column: 5, scope: !146)
!162 = !DILocation(line: 106, column: 8, scope: !163)
!163 = distinct !DILexicalBlock(scope: !136, file: !3, line: 106, column: 8)
!164 = !DILocation(line: 106, column: 18, scope: !163)
!165 = !DILocation(line: 106, column: 8, scope: !136)
!166 = !DILocation(line: 109, column: 9, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !3, line: 107, column: 5)
!168 = !DILocation(line: 110, column: 5, scope: !167)
!169 = !DILocalVariable(name: "i", scope: !170, file: !3, line: 114, type: !8)
!170 = distinct !DILexicalBlock(scope: !171, file: !3, line: 113, column: 9)
!171 = distinct !DILexicalBlock(scope: !163, file: !3, line: 112, column: 5)
!172 = !DILocation(line: 114, column: 17, scope: !170)
!173 = !DILocalVariable(name: "buffer", scope: !170, file: !3, line: 115, type: !95)
!174 = !DILocation(line: 115, column: 17, scope: !170)
!175 = !DILocation(line: 117, column: 17, scope: !176)
!176 = distinct !DILexicalBlock(scope: !170, file: !3, line: 117, column: 17)
!177 = !DILocation(line: 117, column: 22, scope: !176)
!178 = !DILocation(line: 117, column: 27, scope: !176)
!179 = !DILocation(line: 117, column: 30, scope: !176)
!180 = !DILocation(line: 117, column: 35, scope: !176)
!181 = !DILocation(line: 117, column: 17, scope: !170)
!182 = !DILocation(line: 119, column: 24, scope: !183)
!183 = distinct !DILexicalBlock(scope: !176, file: !3, line: 118, column: 13)
!184 = !DILocation(line: 119, column: 17, scope: !183)
!185 = !DILocation(line: 119, column: 30, scope: !183)
!186 = !DILocation(line: 121, column: 23, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !3, line: 121, column: 17)
!188 = !DILocation(line: 121, column: 21, scope: !187)
!189 = !DILocation(line: 121, column: 28, scope: !190)
!190 = distinct !DILexicalBlock(scope: !187, file: !3, line: 121, column: 17)
!191 = !DILocation(line: 121, column: 30, scope: !190)
!192 = !DILocation(line: 121, column: 17, scope: !187)
!193 = !DILocation(line: 123, column: 41, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !3, line: 122, column: 17)
!195 = !DILocation(line: 123, column: 34, scope: !194)
!196 = !DILocation(line: 123, column: 21, scope: !194)
!197 = !DILocation(line: 124, column: 17, scope: !194)
!198 = !DILocation(line: 121, column: 37, scope: !190)
!199 = !DILocation(line: 121, column: 17, scope: !190)
!200 = distinct !{!200, !192, !201, !130}
!201 = !DILocation(line: 124, column: 17, scope: !187)
!202 = !DILocation(line: 125, column: 13, scope: !183)
!203 = !DILocation(line: 128, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !176, file: !3, line: 127, column: 13)
!205 = !DILocation(line: 132, column: 1, scope: !136)
!206 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 135, type: !56, scopeLine: 136, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!207 = !DILocalVariable(name: "data", scope: !206, file: !3, line: 137, type: !8)
!208 = !DILocation(line: 137, column: 9, scope: !206)
!209 = !DILocation(line: 139, column: 10, scope: !206)
!210 = !DILocation(line: 140, column: 8, scope: !211)
!211 = distinct !DILexicalBlock(scope: !206, file: !3, line: 140, column: 8)
!212 = !DILocation(line: 140, column: 18, scope: !211)
!213 = !DILocation(line: 140, column: 8, scope: !206)
!214 = !DILocalVariable(name: "inputBuffer", scope: !215, file: !3, line: 143, type: !68)
!215 = distinct !DILexicalBlock(scope: !216, file: !3, line: 142, column: 9)
!216 = distinct !DILexicalBlock(scope: !211, file: !3, line: 141, column: 5)
!217 = !DILocation(line: 143, column: 18, scope: !215)
!218 = !DILocation(line: 145, column: 23, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !3, line: 145, column: 17)
!220 = !DILocation(line: 145, column: 53, scope: !219)
!221 = !DILocation(line: 145, column: 17, scope: !219)
!222 = !DILocation(line: 145, column: 60, scope: !219)
!223 = !DILocation(line: 145, column: 17, scope: !215)
!224 = !DILocation(line: 148, column: 29, scope: !225)
!225 = distinct !DILexicalBlock(scope: !219, file: !3, line: 146, column: 13)
!226 = !DILocation(line: 148, column: 24, scope: !225)
!227 = !DILocation(line: 148, column: 22, scope: !225)
!228 = !DILocation(line: 149, column: 13, scope: !225)
!229 = !DILocation(line: 152, column: 17, scope: !230)
!230 = distinct !DILexicalBlock(scope: !219, file: !3, line: 151, column: 13)
!231 = !DILocation(line: 155, column: 5, scope: !216)
!232 = !DILocation(line: 156, column: 8, scope: !233)
!233 = distinct !DILexicalBlock(scope: !206, file: !3, line: 156, column: 8)
!234 = !DILocation(line: 156, column: 18, scope: !233)
!235 = !DILocation(line: 156, column: 8, scope: !206)
!236 = !DILocalVariable(name: "i", scope: !237, file: !3, line: 159, type: !8)
!237 = distinct !DILexicalBlock(scope: !238, file: !3, line: 158, column: 9)
!238 = distinct !DILexicalBlock(scope: !233, file: !3, line: 157, column: 5)
!239 = !DILocation(line: 159, column: 17, scope: !237)
!240 = !DILocalVariable(name: "buffer", scope: !237, file: !3, line: 160, type: !95)
!241 = !DILocation(line: 160, column: 17, scope: !237)
!242 = !DILocation(line: 162, column: 17, scope: !243)
!243 = distinct !DILexicalBlock(scope: !237, file: !3, line: 162, column: 17)
!244 = !DILocation(line: 162, column: 22, scope: !243)
!245 = !DILocation(line: 162, column: 27, scope: !243)
!246 = !DILocation(line: 162, column: 30, scope: !243)
!247 = !DILocation(line: 162, column: 35, scope: !243)
!248 = !DILocation(line: 162, column: 17, scope: !237)
!249 = !DILocation(line: 164, column: 24, scope: !250)
!250 = distinct !DILexicalBlock(scope: !243, file: !3, line: 163, column: 13)
!251 = !DILocation(line: 164, column: 17, scope: !250)
!252 = !DILocation(line: 164, column: 30, scope: !250)
!253 = !DILocation(line: 166, column: 23, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !3, line: 166, column: 17)
!255 = !DILocation(line: 166, column: 21, scope: !254)
!256 = !DILocation(line: 166, column: 28, scope: !257)
!257 = distinct !DILexicalBlock(scope: !254, file: !3, line: 166, column: 17)
!258 = !DILocation(line: 166, column: 30, scope: !257)
!259 = !DILocation(line: 166, column: 17, scope: !254)
!260 = !DILocation(line: 168, column: 41, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !3, line: 167, column: 17)
!262 = !DILocation(line: 168, column: 34, scope: !261)
!263 = !DILocation(line: 168, column: 21, scope: !261)
!264 = !DILocation(line: 169, column: 17, scope: !261)
!265 = !DILocation(line: 166, column: 37, scope: !257)
!266 = !DILocation(line: 166, column: 17, scope: !257)
!267 = distinct !{!267, !259, !268, !130}
!268 = !DILocation(line: 169, column: 17, scope: !254)
!269 = !DILocation(line: 170, column: 13, scope: !250)
!270 = !DILocation(line: 173, column: 17, scope: !271)
!271 = distinct !DILexicalBlock(scope: !243, file: !3, line: 172, column: 13)
!272 = !DILocation(line: 176, column: 5, scope: !238)
!273 = !DILocation(line: 177, column: 1, scope: !206)
!274 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 180, type: !56, scopeLine: 181, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!275 = !DILocalVariable(name: "data", scope: !274, file: !3, line: 182, type: !8)
!276 = !DILocation(line: 182, column: 9, scope: !274)
!277 = !DILocation(line: 184, column: 10, scope: !274)
!278 = !DILocation(line: 185, column: 8, scope: !279)
!279 = distinct !DILexicalBlock(scope: !274, file: !3, line: 185, column: 8)
!280 = !DILocation(line: 185, column: 18, scope: !279)
!281 = !DILocation(line: 185, column: 8, scope: !274)
!282 = !DILocation(line: 188, column: 9, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !3, line: 186, column: 5)
!284 = !DILocation(line: 189, column: 5, scope: !283)
!285 = !DILocation(line: 194, column: 14, scope: !286)
!286 = distinct !DILexicalBlock(scope: !279, file: !3, line: 191, column: 5)
!287 = !DILocation(line: 196, column: 8, scope: !288)
!288 = distinct !DILexicalBlock(scope: !274, file: !3, line: 196, column: 8)
!289 = !DILocation(line: 196, column: 18, scope: !288)
!290 = !DILocation(line: 196, column: 8, scope: !274)
!291 = !DILocalVariable(name: "i", scope: !292, file: !3, line: 199, type: !8)
!292 = distinct !DILexicalBlock(scope: !293, file: !3, line: 198, column: 9)
!293 = distinct !DILexicalBlock(scope: !288, file: !3, line: 197, column: 5)
!294 = !DILocation(line: 199, column: 17, scope: !292)
!295 = !DILocalVariable(name: "buffer", scope: !292, file: !3, line: 200, type: !95)
!296 = !DILocation(line: 200, column: 17, scope: !292)
!297 = !DILocation(line: 203, column: 17, scope: !298)
!298 = distinct !DILexicalBlock(scope: !292, file: !3, line: 203, column: 17)
!299 = !DILocation(line: 203, column: 22, scope: !298)
!300 = !DILocation(line: 203, column: 17, scope: !292)
!301 = !DILocation(line: 205, column: 24, scope: !302)
!302 = distinct !DILexicalBlock(scope: !298, file: !3, line: 204, column: 13)
!303 = !DILocation(line: 205, column: 17, scope: !302)
!304 = !DILocation(line: 205, column: 30, scope: !302)
!305 = !DILocation(line: 207, column: 23, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !3, line: 207, column: 17)
!307 = !DILocation(line: 207, column: 21, scope: !306)
!308 = !DILocation(line: 207, column: 28, scope: !309)
!309 = distinct !DILexicalBlock(scope: !306, file: !3, line: 207, column: 17)
!310 = !DILocation(line: 207, column: 30, scope: !309)
!311 = !DILocation(line: 207, column: 17, scope: !306)
!312 = !DILocation(line: 209, column: 41, scope: !313)
!313 = distinct !DILexicalBlock(scope: !309, file: !3, line: 208, column: 17)
!314 = !DILocation(line: 209, column: 34, scope: !313)
!315 = !DILocation(line: 209, column: 21, scope: !313)
!316 = !DILocation(line: 210, column: 17, scope: !313)
!317 = !DILocation(line: 207, column: 37, scope: !309)
!318 = !DILocation(line: 207, column: 17, scope: !309)
!319 = distinct !{!319, !311, !320, !130}
!320 = !DILocation(line: 210, column: 17, scope: !306)
!321 = !DILocation(line: 211, column: 13, scope: !302)
!322 = !DILocation(line: 214, column: 17, scope: !323)
!323 = distinct !DILexicalBlock(scope: !298, file: !3, line: 213, column: 13)
!324 = !DILocation(line: 217, column: 5, scope: !293)
!325 = !DILocation(line: 218, column: 1, scope: !274)
!326 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 221, type: !56, scopeLine: 222, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!327 = !DILocalVariable(name: "data", scope: !326, file: !3, line: 223, type: !8)
!328 = !DILocation(line: 223, column: 9, scope: !326)
!329 = !DILocation(line: 225, column: 10, scope: !326)
!330 = !DILocation(line: 226, column: 8, scope: !331)
!331 = distinct !DILexicalBlock(scope: !326, file: !3, line: 226, column: 8)
!332 = !DILocation(line: 226, column: 18, scope: !331)
!333 = !DILocation(line: 226, column: 8, scope: !326)
!334 = !DILocation(line: 230, column: 14, scope: !335)
!335 = distinct !DILexicalBlock(scope: !331, file: !3, line: 227, column: 5)
!336 = !DILocation(line: 231, column: 5, scope: !335)
!337 = !DILocation(line: 232, column: 8, scope: !338)
!338 = distinct !DILexicalBlock(scope: !326, file: !3, line: 232, column: 8)
!339 = !DILocation(line: 232, column: 18, scope: !338)
!340 = !DILocation(line: 232, column: 8, scope: !326)
!341 = !DILocalVariable(name: "i", scope: !342, file: !3, line: 235, type: !8)
!342 = distinct !DILexicalBlock(scope: !343, file: !3, line: 234, column: 9)
!343 = distinct !DILexicalBlock(scope: !338, file: !3, line: 233, column: 5)
!344 = !DILocation(line: 235, column: 17, scope: !342)
!345 = !DILocalVariable(name: "buffer", scope: !342, file: !3, line: 236, type: !95)
!346 = !DILocation(line: 236, column: 17, scope: !342)
!347 = !DILocation(line: 239, column: 17, scope: !348)
!348 = distinct !DILexicalBlock(scope: !342, file: !3, line: 239, column: 17)
!349 = !DILocation(line: 239, column: 22, scope: !348)
!350 = !DILocation(line: 239, column: 17, scope: !342)
!351 = !DILocation(line: 241, column: 24, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !3, line: 240, column: 13)
!353 = !DILocation(line: 241, column: 17, scope: !352)
!354 = !DILocation(line: 241, column: 30, scope: !352)
!355 = !DILocation(line: 243, column: 23, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !3, line: 243, column: 17)
!357 = !DILocation(line: 243, column: 21, scope: !356)
!358 = !DILocation(line: 243, column: 28, scope: !359)
!359 = distinct !DILexicalBlock(scope: !356, file: !3, line: 243, column: 17)
!360 = !DILocation(line: 243, column: 30, scope: !359)
!361 = !DILocation(line: 243, column: 17, scope: !356)
!362 = !DILocation(line: 245, column: 41, scope: !363)
!363 = distinct !DILexicalBlock(scope: !359, file: !3, line: 244, column: 17)
!364 = !DILocation(line: 245, column: 34, scope: !363)
!365 = !DILocation(line: 245, column: 21, scope: !363)
!366 = !DILocation(line: 246, column: 17, scope: !363)
!367 = !DILocation(line: 243, column: 37, scope: !359)
!368 = !DILocation(line: 243, column: 17, scope: !359)
!369 = distinct !{!369, !361, !370, !130}
!370 = !DILocation(line: 246, column: 17, scope: !356)
!371 = !DILocation(line: 247, column: 13, scope: !352)
!372 = !DILocation(line: 250, column: 17, scope: !373)
!373 = distinct !DILexicalBlock(scope: !348, file: !3, line: 249, column: 13)
!374 = !DILocation(line: 253, column: 5, scope: !343)
!375 = !DILocation(line: 254, column: 1, scope: !326)
!376 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_07_good", scope: !3, file: !3, line: 256, type: !56, scopeLine: 257, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!377 = !DILocation(line: 258, column: 5, scope: !376)
!378 = !DILocation(line: 259, column: 5, scope: !376)
!379 = !DILocation(line: 260, column: 5, scope: !376)
!380 = !DILocation(line: 261, column: 5, scope: !376)
!381 = !DILocation(line: 262, column: 1, scope: !376)
!382 = distinct !DISubprogram(name: "printLine", scope: !12, file: !12, line: 11, type: !383, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !49}
!385 = !DILocalVariable(name: "line", arg: 1, scope: !382, file: !12, line: 11, type: !49)
!386 = !DILocation(line: 11, column: 25, scope: !382)
!387 = !DILocation(line: 13, column: 1, scope: !382)
!388 = !DILocation(line: 14, column: 8, scope: !389)
!389 = distinct !DILexicalBlock(scope: !382, file: !12, line: 14, column: 8)
!390 = !DILocation(line: 14, column: 13, scope: !389)
!391 = !DILocation(line: 14, column: 8, scope: !382)
!392 = !DILocation(line: 16, column: 24, scope: !393)
!393 = distinct !DILexicalBlock(scope: !389, file: !12, line: 15, column: 5)
!394 = !DILocation(line: 16, column: 9, scope: !393)
!395 = !DILocation(line: 17, column: 5, scope: !393)
!396 = !DILocation(line: 18, column: 5, scope: !382)
!397 = !DILocation(line: 19, column: 1, scope: !382)
!398 = distinct !DISubprogram(name: "printSinkLine", scope: !12, file: !12, line: 20, type: !383, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!399 = !DILocalVariable(name: "line", arg: 1, scope: !398, file: !12, line: 20, type: !49)
!400 = !DILocation(line: 20, column: 29, scope: !398)
!401 = !DILocation(line: 22, column: 8, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !12, line: 22, column: 8)
!403 = !DILocation(line: 22, column: 13, scope: !402)
!404 = !DILocation(line: 22, column: 8, scope: !398)
!405 = !DILocation(line: 24, column: 24, scope: !406)
!406 = distinct !DILexicalBlock(scope: !402, file: !12, line: 23, column: 5)
!407 = !DILocation(line: 24, column: 9, scope: !406)
!408 = !DILocation(line: 25, column: 5, scope: !406)
!409 = !DILocation(line: 26, column: 1, scope: !398)
!410 = distinct !DISubprogram(name: "printWLine", scope: !12, file: !12, line: 27, type: !411, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !415, line: 74, baseType: !8)
!415 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!416 = !DILocalVariable(name: "line", arg: 1, scope: !410, file: !12, line: 27, type: !413)
!417 = !DILocation(line: 27, column: 29, scope: !410)
!418 = !DILocation(line: 29, column: 8, scope: !419)
!419 = distinct !DILexicalBlock(scope: !410, file: !12, line: 29, column: 8)
!420 = !DILocation(line: 29, column: 13, scope: !419)
!421 = !DILocation(line: 29, column: 8, scope: !410)
!422 = !DILocation(line: 31, column: 27, scope: !423)
!423 = distinct !DILexicalBlock(scope: !419, file: !12, line: 30, column: 5)
!424 = !DILocation(line: 31, column: 9, scope: !423)
!425 = !DILocation(line: 32, column: 5, scope: !423)
!426 = !DILocation(line: 33, column: 1, scope: !410)
!427 = distinct !DISubprogram(name: "printIntLine", scope: !12, file: !12, line: 35, type: !428, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !8}
!430 = !DILocalVariable(name: "intNumber", arg: 1, scope: !427, file: !12, line: 35, type: !8)
!431 = !DILocation(line: 35, column: 24, scope: !427)
!432 = !DILocation(line: 37, column: 20, scope: !427)
!433 = !DILocation(line: 37, column: 5, scope: !427)
!434 = !DILocation(line: 38, column: 1, scope: !427)
!435 = distinct !DISubprogram(name: "printShortLine", scope: !12, file: !12, line: 40, type: !436, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !438}
!438 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!439 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !435, file: !12, line: 40, type: !438)
!440 = !DILocation(line: 40, column: 28, scope: !435)
!441 = !DILocation(line: 42, column: 21, scope: !435)
!442 = !DILocation(line: 42, column: 5, scope: !435)
!443 = !DILocation(line: 43, column: 1, scope: !435)
!444 = distinct !DISubprogram(name: "printFloatLine", scope: !12, file: !12, line: 45, type: !445, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !447}
!447 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!448 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !444, file: !12, line: 45, type: !447)
!449 = !DILocation(line: 45, column: 28, scope: !444)
!450 = !DILocation(line: 47, column: 20, scope: !444)
!451 = !DILocation(line: 47, column: 5, scope: !444)
!452 = !DILocation(line: 48, column: 1, scope: !444)
!453 = distinct !DISubprogram(name: "printLongLine", scope: !12, file: !12, line: 50, type: !454, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !456}
!456 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!457 = !DILocalVariable(name: "longNumber", arg: 1, scope: !453, file: !12, line: 50, type: !456)
!458 = !DILocation(line: 50, column: 26, scope: !453)
!459 = !DILocation(line: 52, column: 21, scope: !453)
!460 = !DILocation(line: 52, column: 5, scope: !453)
!461 = !DILocation(line: 53, column: 1, scope: !453)
!462 = distinct !DISubprogram(name: "printLongLongLine", scope: !12, file: !12, line: 55, type: !463, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !465}
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !466, line: 27, baseType: !467)
!466 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !468, line: 44, baseType: !456)
!468 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!469 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !462, file: !12, line: 55, type: !465)
!470 = !DILocation(line: 55, column: 33, scope: !462)
!471 = !DILocation(line: 57, column: 29, scope: !462)
!472 = !DILocation(line: 57, column: 5, scope: !462)
!473 = !DILocation(line: 58, column: 1, scope: !462)
!474 = distinct !DISubprogram(name: "printSizeTLine", scope: !12, file: !12, line: 60, type: !475, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !477}
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !415, line: 46, baseType: !478)
!478 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!479 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !474, file: !12, line: 60, type: !477)
!480 = !DILocation(line: 60, column: 29, scope: !474)
!481 = !DILocation(line: 62, column: 21, scope: !474)
!482 = !DILocation(line: 62, column: 5, scope: !474)
!483 = !DILocation(line: 63, column: 1, scope: !474)
!484 = distinct !DISubprogram(name: "printHexCharLine", scope: !12, file: !12, line: 65, type: !485, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !50}
!487 = !DILocalVariable(name: "charHex", arg: 1, scope: !484, file: !12, line: 65, type: !50)
!488 = !DILocation(line: 65, column: 29, scope: !484)
!489 = !DILocation(line: 67, column: 22, scope: !484)
!490 = !DILocation(line: 67, column: 5, scope: !484)
!491 = !DILocation(line: 68, column: 1, scope: !484)
!492 = distinct !DISubprogram(name: "printWcharLine", scope: !12, file: !12, line: 70, type: !493, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !414}
!495 = !DILocalVariable(name: "wideChar", arg: 1, scope: !492, file: !12, line: 70, type: !414)
!496 = !DILocation(line: 70, column: 29, scope: !492)
!497 = !DILocalVariable(name: "s", scope: !492, file: !12, line: 74, type: !498)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 64, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 2)
!501 = !DILocation(line: 74, column: 13, scope: !492)
!502 = !DILocation(line: 75, column: 16, scope: !492)
!503 = !DILocation(line: 75, column: 9, scope: !492)
!504 = !DILocation(line: 75, column: 14, scope: !492)
!505 = !DILocation(line: 76, column: 9, scope: !492)
!506 = !DILocation(line: 76, column: 14, scope: !492)
!507 = !DILocation(line: 77, column: 21, scope: !492)
!508 = !DILocation(line: 77, column: 5, scope: !492)
!509 = !DILocation(line: 78, column: 1, scope: !492)
!510 = distinct !DISubprogram(name: "printUnsignedLine", scope: !12, file: !12, line: 80, type: !511, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !16}
!513 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !510, file: !12, line: 80, type: !16)
!514 = !DILocation(line: 80, column: 33, scope: !510)
!515 = !DILocation(line: 82, column: 20, scope: !510)
!516 = !DILocation(line: 82, column: 5, scope: !510)
!517 = !DILocation(line: 83, column: 1, scope: !510)
!518 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !12, file: !12, line: 85, type: !519, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !32}
!521 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !518, file: !12, line: 85, type: !32)
!522 = !DILocation(line: 85, column: 45, scope: !518)
!523 = !DILocation(line: 87, column: 22, scope: !518)
!524 = !DILocation(line: 87, column: 5, scope: !518)
!525 = !DILocation(line: 88, column: 1, scope: !518)
!526 = distinct !DISubprogram(name: "printDoubleLine", scope: !12, file: !12, line: 90, type: !527, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !529}
!529 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!530 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !526, file: !12, line: 90, type: !529)
!531 = !DILocation(line: 90, column: 29, scope: !526)
!532 = !DILocation(line: 92, column: 20, scope: !526)
!533 = !DILocation(line: 92, column: 5, scope: !526)
!534 = !DILocation(line: 93, column: 1, scope: !526)
!535 = distinct !DISubprogram(name: "printStructLine", scope: !12, file: !12, line: 95, type: !536, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !538}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !540, line: 100, baseType: !541)
!540 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_570/source_code")
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !540, line: 96, size: 64, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !541, file: !540, line: 98, baseType: !8, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !541, file: !540, line: 99, baseType: !8, size: 32, offset: 32)
!545 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !535, file: !12, line: 95, type: !538)
!546 = !DILocation(line: 95, column: 40, scope: !535)
!547 = !DILocation(line: 97, column: 26, scope: !535)
!548 = !DILocation(line: 97, column: 47, scope: !535)
!549 = !DILocation(line: 97, column: 55, scope: !535)
!550 = !DILocation(line: 97, column: 76, scope: !535)
!551 = !DILocation(line: 97, column: 5, scope: !535)
!552 = !DILocation(line: 98, column: 1, scope: !535)
!553 = distinct !DISubprogram(name: "printBytesLine", scope: !12, file: !12, line: 100, type: !554, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !556, !477}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!557 = !DILocalVariable(name: "bytes", arg: 1, scope: !553, file: !12, line: 100, type: !556)
!558 = !DILocation(line: 100, column: 38, scope: !553)
!559 = !DILocalVariable(name: "numBytes", arg: 2, scope: !553, file: !12, line: 100, type: !477)
!560 = !DILocation(line: 100, column: 52, scope: !553)
!561 = !DILocalVariable(name: "i", scope: !553, file: !12, line: 102, type: !477)
!562 = !DILocation(line: 102, column: 12, scope: !553)
!563 = !DILocation(line: 103, column: 12, scope: !564)
!564 = distinct !DILexicalBlock(scope: !553, file: !12, line: 103, column: 5)
!565 = !DILocation(line: 103, column: 10, scope: !564)
!566 = !DILocation(line: 103, column: 17, scope: !567)
!567 = distinct !DILexicalBlock(scope: !564, file: !12, line: 103, column: 5)
!568 = !DILocation(line: 103, column: 21, scope: !567)
!569 = !DILocation(line: 103, column: 19, scope: !567)
!570 = !DILocation(line: 103, column: 5, scope: !564)
!571 = !DILocation(line: 105, column: 24, scope: !572)
!572 = distinct !DILexicalBlock(scope: !567, file: !12, line: 104, column: 5)
!573 = !DILocation(line: 105, column: 30, scope: !572)
!574 = !DILocation(line: 105, column: 9, scope: !572)
!575 = !DILocation(line: 106, column: 5, scope: !572)
!576 = !DILocation(line: 103, column: 31, scope: !567)
!577 = !DILocation(line: 103, column: 5, scope: !567)
!578 = distinct !{!578, !570, !579, !130}
!579 = !DILocation(line: 106, column: 5, scope: !564)
!580 = !DILocation(line: 107, column: 5, scope: !553)
!581 = !DILocation(line: 108, column: 1, scope: !553)
!582 = distinct !DISubprogram(name: "decodeHexChars", scope: !12, file: !12, line: 113, type: !583, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!583 = !DISubroutineType(types: !584)
!584 = !{!477, !556, !477, !49}
!585 = !DILocalVariable(name: "bytes", arg: 1, scope: !582, file: !12, line: 113, type: !556)
!586 = !DILocation(line: 113, column: 39, scope: !582)
!587 = !DILocalVariable(name: "numBytes", arg: 2, scope: !582, file: !12, line: 113, type: !477)
!588 = !DILocation(line: 113, column: 53, scope: !582)
!589 = !DILocalVariable(name: "hex", arg: 3, scope: !582, file: !12, line: 113, type: !49)
!590 = !DILocation(line: 113, column: 71, scope: !582)
!591 = !DILocalVariable(name: "numWritten", scope: !582, file: !12, line: 115, type: !477)
!592 = !DILocation(line: 115, column: 12, scope: !582)
!593 = !DILocation(line: 121, column: 5, scope: !582)
!594 = !DILocation(line: 121, column: 12, scope: !582)
!595 = !DILocation(line: 121, column: 25, scope: !582)
!596 = !DILocation(line: 121, column: 23, scope: !582)
!597 = !DILocation(line: 121, column: 34, scope: !582)
!598 = !DILocation(line: 121, column: 37, scope: !582)
!599 = !DILocation(line: 121, column: 67, scope: !582)
!600 = !DILocation(line: 121, column: 70, scope: !582)
!601 = !DILocation(line: 0, scope: !582)
!602 = !DILocalVariable(name: "byte", scope: !603, file: !12, line: 123, type: !8)
!603 = distinct !DILexicalBlock(scope: !582, file: !12, line: 122, column: 5)
!604 = !DILocation(line: 123, column: 13, scope: !603)
!605 = !DILocation(line: 124, column: 17, scope: !603)
!606 = !DILocation(line: 124, column: 25, scope: !603)
!607 = !DILocation(line: 124, column: 23, scope: !603)
!608 = !DILocation(line: 124, column: 9, scope: !603)
!609 = !DILocation(line: 125, column: 45, scope: !603)
!610 = !DILocation(line: 125, column: 29, scope: !603)
!611 = !DILocation(line: 125, column: 9, scope: !603)
!612 = !DILocation(line: 125, column: 15, scope: !603)
!613 = !DILocation(line: 125, column: 27, scope: !603)
!614 = !DILocation(line: 126, column: 9, scope: !603)
!615 = distinct !{!615, !593, !616, !130}
!616 = !DILocation(line: 127, column: 5, scope: !582)
!617 = !DILocation(line: 129, column: 12, scope: !582)
!618 = !DILocation(line: 129, column: 5, scope: !582)
!619 = distinct !DISubprogram(name: "decodeHexWChars", scope: !12, file: !12, line: 135, type: !620, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!620 = !DISubroutineType(types: !621)
!621 = !{!477, !556, !477, !413}
!622 = !DILocalVariable(name: "bytes", arg: 1, scope: !619, file: !12, line: 135, type: !556)
!623 = !DILocation(line: 135, column: 41, scope: !619)
!624 = !DILocalVariable(name: "numBytes", arg: 2, scope: !619, file: !12, line: 135, type: !477)
!625 = !DILocation(line: 135, column: 55, scope: !619)
!626 = !DILocalVariable(name: "hex", arg: 3, scope: !619, file: !12, line: 135, type: !413)
!627 = !DILocation(line: 135, column: 76, scope: !619)
!628 = !DILocalVariable(name: "numWritten", scope: !619, file: !12, line: 137, type: !477)
!629 = !DILocation(line: 137, column: 12, scope: !619)
!630 = !DILocation(line: 143, column: 5, scope: !619)
!631 = !DILocation(line: 143, column: 12, scope: !619)
!632 = !DILocation(line: 143, column: 25, scope: !619)
!633 = !DILocation(line: 143, column: 23, scope: !619)
!634 = !DILocation(line: 143, column: 34, scope: !619)
!635 = !DILocation(line: 143, column: 47, scope: !619)
!636 = !DILocation(line: 143, column: 55, scope: !619)
!637 = !DILocation(line: 143, column: 53, scope: !619)
!638 = !DILocation(line: 143, column: 37, scope: !619)
!639 = !DILocation(line: 143, column: 68, scope: !619)
!640 = !DILocation(line: 143, column: 81, scope: !619)
!641 = !DILocation(line: 143, column: 89, scope: !619)
!642 = !DILocation(line: 143, column: 87, scope: !619)
!643 = !DILocation(line: 143, column: 100, scope: !619)
!644 = !DILocation(line: 143, column: 71, scope: !619)
!645 = !DILocation(line: 0, scope: !619)
!646 = !DILocalVariable(name: "byte", scope: !647, file: !12, line: 145, type: !8)
!647 = distinct !DILexicalBlock(scope: !619, file: !12, line: 144, column: 5)
!648 = !DILocation(line: 145, column: 13, scope: !647)
!649 = !DILocation(line: 146, column: 18, scope: !647)
!650 = !DILocation(line: 146, column: 26, scope: !647)
!651 = !DILocation(line: 146, column: 24, scope: !647)
!652 = !DILocation(line: 146, column: 9, scope: !647)
!653 = !DILocation(line: 147, column: 45, scope: !647)
!654 = !DILocation(line: 147, column: 29, scope: !647)
!655 = !DILocation(line: 147, column: 9, scope: !647)
!656 = !DILocation(line: 147, column: 15, scope: !647)
!657 = !DILocation(line: 147, column: 27, scope: !647)
!658 = !DILocation(line: 148, column: 9, scope: !647)
!659 = distinct !{!659, !630, !660, !130}
!660 = !DILocation(line: 149, column: 5, scope: !619)
!661 = !DILocation(line: 151, column: 12, scope: !619)
!662 = !DILocation(line: 151, column: 5, scope: !619)
!663 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !12, file: !12, line: 156, type: !664, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!664 = !DISubroutineType(types: !665)
!665 = !{!8}
!666 = !DILocation(line: 158, column: 5, scope: !663)
!667 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !12, file: !12, line: 161, type: !664, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!668 = !DILocation(line: 163, column: 5, scope: !667)
!669 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !12, file: !12, line: 166, type: !664, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!670 = !DILocation(line: 168, column: 13, scope: !669)
!671 = !DILocation(line: 168, column: 20, scope: !669)
!672 = !DILocation(line: 168, column: 5, scope: !669)
!673 = distinct !DISubprogram(name: "good1", scope: !12, file: !12, line: 187, type: !56, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!674 = !DILocation(line: 187, column: 16, scope: !673)
!675 = distinct !DISubprogram(name: "good2", scope: !12, file: !12, line: 188, type: !56, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!676 = !DILocation(line: 188, column: 16, scope: !675)
!677 = distinct !DISubprogram(name: "good3", scope: !12, file: !12, line: 189, type: !56, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!678 = !DILocation(line: 189, column: 16, scope: !677)
!679 = distinct !DISubprogram(name: "good4", scope: !12, file: !12, line: 190, type: !56, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!680 = !DILocation(line: 190, column: 16, scope: !679)
!681 = distinct !DISubprogram(name: "good5", scope: !12, file: !12, line: 191, type: !56, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!682 = !DILocation(line: 191, column: 16, scope: !681)
!683 = distinct !DISubprogram(name: "good6", scope: !12, file: !12, line: 192, type: !56, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!684 = !DILocation(line: 192, column: 16, scope: !683)
!685 = distinct !DISubprogram(name: "good7", scope: !12, file: !12, line: 193, type: !56, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!686 = !DILocation(line: 193, column: 16, scope: !685)
!687 = distinct !DISubprogram(name: "good8", scope: !12, file: !12, line: 194, type: !56, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!688 = !DILocation(line: 194, column: 16, scope: !687)
!689 = distinct !DISubprogram(name: "good9", scope: !12, file: !12, line: 195, type: !56, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!690 = !DILocation(line: 195, column: 16, scope: !689)
!691 = distinct !DISubprogram(name: "bad1", scope: !12, file: !12, line: 198, type: !56, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!692 = !DILocation(line: 198, column: 15, scope: !691)
!693 = distinct !DISubprogram(name: "bad2", scope: !12, file: !12, line: 199, type: !56, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!694 = !DILocation(line: 199, column: 15, scope: !693)
!695 = distinct !DISubprogram(name: "bad3", scope: !12, file: !12, line: 200, type: !56, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!696 = !DILocation(line: 200, column: 15, scope: !695)
!697 = distinct !DISubprogram(name: "bad4", scope: !12, file: !12, line: 201, type: !56, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!698 = !DILocation(line: 201, column: 15, scope: !697)
!699 = distinct !DISubprogram(name: "bad5", scope: !12, file: !12, line: 202, type: !56, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!700 = !DILocation(line: 202, column: 15, scope: !699)
!701 = distinct !DISubprogram(name: "bad6", scope: !12, file: !12, line: 203, type: !56, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!702 = !DILocation(line: 203, column: 15, scope: !701)
!703 = distinct !DISubprogram(name: "bad7", scope: !12, file: !12, line: 204, type: !56, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!704 = !DILocation(line: 204, column: 15, scope: !703)
!705 = distinct !DISubprogram(name: "bad8", scope: !12, file: !12, line: 205, type: !56, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!706 = !DILocation(line: 205, column: 15, scope: !705)
!707 = distinct !DISubprogram(name: "bad9", scope: !12, file: !12, line: 206, type: !56, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!708 = !DILocation(line: 206, column: 15, scope: !707)
