; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@STATIC_CONST_FIVE = dso_local global i32 5, align 4, !dbg !0
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
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
@.str.4.10 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_06_bad() #0 !dbg !55 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !58, metadata !DIExpression()), !dbg !59
  store i32 -1, i32* %data, align 4, !dbg !60
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !61
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
  %3 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !86
  %cmp6 = icmp eq i32 %3, 5, !dbg !88
  br i1 %cmp6, label %if.then7, label %if.end15, !dbg !89

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !90, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !94, metadata !DIExpression()), !dbg !98
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !98
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !98
  %5 = load i32, i32* %data, align 4, !dbg !99
  %cmp8 = icmp sge i32 %5, 0, !dbg !101
  br i1 %cmp8, label %if.then9, label %if.else13, !dbg !102

if.then9:                                         ; preds = %if.then7
  %6 = load i32, i32* %data, align 4, !dbg !103
  %idxprom = sext i32 %6 to i64, !dbg !105
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !105
  store i32 1, i32* %arrayidx, align 4, !dbg !106
  store i32 0, i32* %i, align 4, !dbg !107
  br label %for.cond, !dbg !109

for.cond:                                         ; preds = %for.inc, %if.then9
  %7 = load i32, i32* %i, align 4, !dbg !110
  %cmp10 = icmp slt i32 %7, 10, !dbg !112
  br i1 %cmp10, label %for.body, label %for.end, !dbg !113

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !114
  %idxprom11 = sext i32 %8 to i64, !dbg !116
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom11, !dbg !116
  %9 = load i32, i32* %arrayidx12, align 4, !dbg !116
  call void @printIntLine(i32 %9), !dbg !117
  br label %for.inc, !dbg !118

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !119
  %inc = add nsw i32 %10, 1, !dbg !119
  store i32 %inc, i32* %i, align 4, !dbg !119
  br label %for.cond, !dbg !120, !llvm.loop !121

for.end:                                          ; preds = %for.cond
  br label %if.end14, !dbg !124

if.else13:                                        ; preds = %if.then7
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !125
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %for.end
  br label %if.end15, !dbg !127

if.end15:                                         ; preds = %if.end14, %if.end5
  ret void, !dbg !128
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !129 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !130, metadata !DIExpression()), !dbg !131
  store i32 -1, i32* %data, align 4, !dbg !132
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !133
  %cmp = icmp eq i32 %0, 5, !dbg !135
  br i1 %cmp, label %if.then, label %if.end5, !dbg !136

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !137, metadata !DIExpression()), !dbg !140
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !140
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !140
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !141
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !143
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !144
  %cmp1 = icmp ne i8* %call, null, !dbg !145
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !146

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !147
  %call4 = call i32 @atoi(i8* %arraydecay3) #7, !dbg !149
  store i32 %call4, i32* %data, align 4, !dbg !150
  br label %if.end, !dbg !151

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !152
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !154

if.end5:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !155
  %cmp6 = icmp ne i32 %3, 5, !dbg !157
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !158

if.then7:                                         ; preds = %if.end5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !159
  br label %if.end17, !dbg !161

if.else8:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !162, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !166, metadata !DIExpression()), !dbg !167
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !167
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !167
  %5 = load i32, i32* %data, align 4, !dbg !168
  %cmp9 = icmp sge i32 %5, 0, !dbg !170
  br i1 %cmp9, label %land.lhs.true, label %if.else15, !dbg !171

land.lhs.true:                                    ; preds = %if.else8
  %6 = load i32, i32* %data, align 4, !dbg !172
  %cmp10 = icmp slt i32 %6, 10, !dbg !173
  br i1 %cmp10, label %if.then11, label %if.else15, !dbg !174

if.then11:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !175
  %idxprom = sext i32 %7 to i64, !dbg !177
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !177
  store i32 1, i32* %arrayidx, align 4, !dbg !178
  store i32 0, i32* %i, align 4, !dbg !179
  br label %for.cond, !dbg !181

for.cond:                                         ; preds = %for.inc, %if.then11
  %8 = load i32, i32* %i, align 4, !dbg !182
  %cmp12 = icmp slt i32 %8, 10, !dbg !184
  br i1 %cmp12, label %for.body, label %for.end, !dbg !185

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !186
  %idxprom13 = sext i32 %9 to i64, !dbg !188
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom13, !dbg !188
  %10 = load i32, i32* %arrayidx14, align 4, !dbg !188
  call void @printIntLine(i32 %10), !dbg !189
  br label %for.inc, !dbg !190

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !191
  %inc = add nsw i32 %11, 1, !dbg !191
  store i32 %inc, i32* %i, align 4, !dbg !191
  br label %for.cond, !dbg !192, !llvm.loop !193

for.end:                                          ; preds = %for.cond
  br label %if.end16, !dbg !195

if.else15:                                        ; preds = %land.lhs.true, %if.else8
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !196
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %for.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7
  ret void, !dbg !198
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !199 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !200, metadata !DIExpression()), !dbg !201
  store i32 -1, i32* %data, align 4, !dbg !202
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !203
  %cmp = icmp eq i32 %0, 5, !dbg !205
  br i1 %cmp, label %if.then, label %if.end5, !dbg !206

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !207, metadata !DIExpression()), !dbg !210
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !210
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !210
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !211
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !213
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !214
  %cmp1 = icmp ne i8* %call, null, !dbg !215
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !216

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !217
  %call4 = call i32 @atoi(i8* %arraydecay3) #7, !dbg !219
  store i32 %call4, i32* %data, align 4, !dbg !220
  br label %if.end, !dbg !221

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !222
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !224

if.end5:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !225
  %cmp6 = icmp eq i32 %3, 5, !dbg !227
  br i1 %cmp6, label %if.then7, label %if.end16, !dbg !228

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !229, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !233, metadata !DIExpression()), !dbg !234
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !234
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !234
  %5 = load i32, i32* %data, align 4, !dbg !235
  %cmp8 = icmp sge i32 %5, 0, !dbg !237
  br i1 %cmp8, label %land.lhs.true, label %if.else14, !dbg !238

land.lhs.true:                                    ; preds = %if.then7
  %6 = load i32, i32* %data, align 4, !dbg !239
  %cmp9 = icmp slt i32 %6, 10, !dbg !240
  br i1 %cmp9, label %if.then10, label %if.else14, !dbg !241

if.then10:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !242
  %idxprom = sext i32 %7 to i64, !dbg !244
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !244
  store i32 1, i32* %arrayidx, align 4, !dbg !245
  store i32 0, i32* %i, align 4, !dbg !246
  br label %for.cond, !dbg !248

for.cond:                                         ; preds = %for.inc, %if.then10
  %8 = load i32, i32* %i, align 4, !dbg !249
  %cmp11 = icmp slt i32 %8, 10, !dbg !251
  br i1 %cmp11, label %for.body, label %for.end, !dbg !252

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !253
  %idxprom12 = sext i32 %9 to i64, !dbg !255
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom12, !dbg !255
  %10 = load i32, i32* %arrayidx13, align 4, !dbg !255
  call void @printIntLine(i32 %10), !dbg !256
  br label %for.inc, !dbg !257

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !258
  %inc = add nsw i32 %11, 1, !dbg !258
  store i32 %inc, i32* %i, align 4, !dbg !258
  br label %for.cond, !dbg !259, !llvm.loop !260

for.end:                                          ; preds = %for.cond
  br label %if.end15, !dbg !262

if.else14:                                        ; preds = %land.lhs.true, %if.then7
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !263
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %for.end
  br label %if.end16, !dbg !265

if.end16:                                         ; preds = %if.end15, %if.end5
  ret void, !dbg !266
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !267 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !268, metadata !DIExpression()), !dbg !269
  store i32 -1, i32* %data, align 4, !dbg !270
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !271
  %cmp = icmp ne i32 %0, 5, !dbg !273
  br i1 %cmp, label %if.then, label %if.else, !dbg !274

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !275
  br label %if.end, !dbg !277

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !278
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !280
  %cmp1 = icmp eq i32 %1, 5, !dbg !282
  br i1 %cmp1, label %if.then2, label %if.end10, !dbg !283

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !284, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !288, metadata !DIExpression()), !dbg !289
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !289
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !289
  %3 = load i32, i32* %data, align 4, !dbg !290
  %cmp3 = icmp sge i32 %3, 0, !dbg !292
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !293

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !294
  %idxprom = sext i32 %4 to i64, !dbg !296
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !296
  store i32 1, i32* %arrayidx, align 4, !dbg !297
  store i32 0, i32* %i, align 4, !dbg !298
  br label %for.cond, !dbg !300

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !301
  %cmp5 = icmp slt i32 %5, 10, !dbg !303
  br i1 %cmp5, label %for.body, label %for.end, !dbg !304

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !305
  %idxprom6 = sext i32 %6 to i64, !dbg !307
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !307
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !307
  call void @printIntLine(i32 %7), !dbg !308
  br label %for.inc, !dbg !309

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !310
  %inc = add nsw i32 %8, 1, !dbg !310
  store i32 %inc, i32* %i, align 4, !dbg !310
  br label %for.cond, !dbg !311, !llvm.loop !312

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !314

if.else8:                                         ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !315
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end10, !dbg !317

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !318
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !319 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !320, metadata !DIExpression()), !dbg !321
  store i32 -1, i32* %data, align 4, !dbg !322
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !323
  %cmp = icmp eq i32 %0, 5, !dbg !325
  br i1 %cmp, label %if.then, label %if.end, !dbg !326

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !327
  br label %if.end, !dbg !329

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !330
  %cmp1 = icmp eq i32 %1, 5, !dbg !332
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !333

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !334, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !338, metadata !DIExpression()), !dbg !339
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !339
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !339
  %3 = load i32, i32* %data, align 4, !dbg !340
  %cmp3 = icmp sge i32 %3, 0, !dbg !342
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !343

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !344
  %idxprom = sext i32 %4 to i64, !dbg !346
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !346
  store i32 1, i32* %arrayidx, align 4, !dbg !347
  store i32 0, i32* %i, align 4, !dbg !348
  br label %for.cond, !dbg !350

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !351
  %cmp5 = icmp slt i32 %5, 10, !dbg !353
  br i1 %cmp5, label %for.body, label %for.end, !dbg !354

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !355
  %idxprom6 = sext i32 %6 to i64, !dbg !357
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !357
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !357
  call void @printIntLine(i32 %7), !dbg !358
  br label %for.inc, !dbg !359

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !360
  %inc = add nsw i32 %8, 1, !dbg !360
  store i32 %inc, i32* %i, align 4, !dbg !360
  br label %for.cond, !dbg !361, !llvm.loop !362

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !364

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !365
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.end
  br label %if.end9, !dbg !367

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !368
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_06_good() #0 !dbg !369 {
entry:
  call void @goodB2G1(), !dbg !370
  call void @goodB2G2(), !dbg !371
  call void @goodG2B1(), !dbg !372
  call void @goodG2B2(), !dbg !373
  ret void, !dbg !374
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !375 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !378, metadata !DIExpression()), !dbg !379
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !380
  %0 = load i8*, i8** %line.addr, align 8, !dbg !381
  %cmp = icmp ne i8* %0, null, !dbg !383
  br i1 %cmp, label %if.then, label %if.end, !dbg !384

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !385
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !387
  br label %if.end, !dbg !388

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !389
  ret void, !dbg !390
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !391 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !392, metadata !DIExpression()), !dbg !393
  %0 = load i8*, i8** %line.addr, align 8, !dbg !394
  %cmp = icmp ne i8* %0, null, !dbg !396
  br i1 %cmp, label %if.then, label %if.end, !dbg !397

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !398
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !400
  br label %if.end, !dbg !401

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !403 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !409, metadata !DIExpression()), !dbg !410
  %0 = load i32*, i32** %line.addr, align 8, !dbg !411
  %cmp = icmp ne i32* %0, null, !dbg !413
  br i1 %cmp, label %if.then, label %if.end, !dbg !414

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !415
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !417
  br label %if.end, !dbg !418

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !419
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !420 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !423, metadata !DIExpression()), !dbg !424
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !425
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !426
  ret void, !dbg !427
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !428 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !432, metadata !DIExpression()), !dbg !433
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !434
  %conv = sext i16 %0 to i32, !dbg !434
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !435
  ret void, !dbg !436
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !437 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !441, metadata !DIExpression()), !dbg !442
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !443
  %conv = fpext float %0 to double, !dbg !443
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !444
  ret void, !dbg !445
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !446 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !452
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !453
  ret void, !dbg !454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !455 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !462, metadata !DIExpression()), !dbg !463
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !464
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !465
  ret void, !dbg !466
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !467 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !472, metadata !DIExpression()), !dbg !473
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !474
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !475
  ret void, !dbg !476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !477 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !480, metadata !DIExpression()), !dbg !481
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !482
  %conv = sext i8 %0 to i32, !dbg !482
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !483
  ret void, !dbg !484
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !485 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !488, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !490, metadata !DIExpression()), !dbg !494
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !495
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !496
  store i32 %0, i32* %arrayidx, align 4, !dbg !497
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !498
  store i32 0, i32* %arrayidx1, align 4, !dbg !499
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !500
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !501
  ret void, !dbg !502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !503 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !506, metadata !DIExpression()), !dbg !507
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !508
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !509
  ret void, !dbg !510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !511 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !514, metadata !DIExpression()), !dbg !515
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !516
  %conv = zext i8 %0 to i32, !dbg !516
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !517
  ret void, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !519 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !523, metadata !DIExpression()), !dbg !524
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !525
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !526
  ret void, !dbg !527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !528 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !538, metadata !DIExpression()), !dbg !539
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !540
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !541
  %1 = load i32, i32* %intOne, align 4, !dbg !541
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !542
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !543
  %3 = load i32, i32* %intTwo, align 4, !dbg !543
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !544
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !546 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !550, metadata !DIExpression()), !dbg !551
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !552, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.declare(metadata i64* %i, metadata !554, metadata !DIExpression()), !dbg !555
  store i64 0, i64* %i, align 8, !dbg !556
  br label %for.cond, !dbg !558

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !559
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !561
  %cmp = icmp ult i64 %0, %1, !dbg !562
  br i1 %cmp, label %for.body, label %for.end, !dbg !563

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !564
  %3 = load i64, i64* %i, align 8, !dbg !566
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !564
  %4 = load i8, i8* %arrayidx, align 1, !dbg !564
  %conv = zext i8 %4 to i32, !dbg !564
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !567
  br label %for.inc, !dbg !568

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !569
  %inc = add i64 %5, 1, !dbg !569
  store i64 %inc, i64* %i, align 8, !dbg !569
  br label %for.cond, !dbg !570, !llvm.loop !571

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !573
  ret void, !dbg !574
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !575 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !578, metadata !DIExpression()), !dbg !579
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !580, metadata !DIExpression()), !dbg !581
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !582, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !584, metadata !DIExpression()), !dbg !585
  store i64 0, i64* %numWritten, align 8, !dbg !585
  br label %while.cond, !dbg !586

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !587
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !588
  %cmp = icmp ult i64 %0, %1, !dbg !589
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !590

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !591
  %2 = load i16*, i16** %call, align 8, !dbg !591
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !591
  %4 = load i64, i64* %numWritten, align 8, !dbg !591
  %mul = mul i64 2, %4, !dbg !591
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !591
  %5 = load i8, i8* %arrayidx, align 1, !dbg !591
  %conv = sext i8 %5 to i32, !dbg !591
  %idxprom = sext i32 %conv to i64, !dbg !591
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !591
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !591
  %conv2 = zext i16 %6 to i32, !dbg !591
  %and = and i32 %conv2, 4096, !dbg !591
  %tobool = icmp ne i32 %and, 0, !dbg !591
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !592

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !593
  %7 = load i16*, i16** %call3, align 8, !dbg !593
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !593
  %9 = load i64, i64* %numWritten, align 8, !dbg !593
  %mul4 = mul i64 2, %9, !dbg !593
  %add = add i64 %mul4, 1, !dbg !593
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !593
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !593
  %conv6 = sext i8 %10 to i32, !dbg !593
  %idxprom7 = sext i32 %conv6 to i64, !dbg !593
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !593
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !593
  %conv9 = zext i16 %11 to i32, !dbg !593
  %and10 = and i32 %conv9, 4096, !dbg !593
  %tobool11 = icmp ne i32 %and10, 0, !dbg !592
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !594
  br i1 %12, label %while.body, label %while.end, !dbg !586

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !595, metadata !DIExpression()), !dbg !597
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !598
  %14 = load i64, i64* %numWritten, align 8, !dbg !599
  %mul12 = mul i64 2, %14, !dbg !600
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !598
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !601
  %15 = load i32, i32* %byte, align 4, !dbg !602
  %conv15 = trunc i32 %15 to i8, !dbg !603
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !604
  %17 = load i64, i64* %numWritten, align 8, !dbg !605
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !604
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !606
  %18 = load i64, i64* %numWritten, align 8, !dbg !607
  %inc = add i64 %18, 1, !dbg !607
  store i64 %inc, i64* %numWritten, align 8, !dbg !607
  br label %while.cond, !dbg !586, !llvm.loop !608

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !610
  ret i64 %19, !dbg !611
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !612 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !615, metadata !DIExpression()), !dbg !616
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !617, metadata !DIExpression()), !dbg !618
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !619, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !621, metadata !DIExpression()), !dbg !622
  store i64 0, i64* %numWritten, align 8, !dbg !622
  br label %while.cond, !dbg !623

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !624
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !625
  %cmp = icmp ult i64 %0, %1, !dbg !626
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !627

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !628
  %3 = load i64, i64* %numWritten, align 8, !dbg !629
  %mul = mul i64 2, %3, !dbg !630
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !628
  %4 = load i32, i32* %arrayidx, align 4, !dbg !628
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !631
  %tobool = icmp ne i32 %call, 0, !dbg !631
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !632

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !633
  %6 = load i64, i64* %numWritten, align 8, !dbg !634
  %mul1 = mul i64 2, %6, !dbg !635
  %add = add i64 %mul1, 1, !dbg !636
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !633
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !633
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !637
  %tobool4 = icmp ne i32 %call3, 0, !dbg !632
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !638
  br i1 %8, label %while.body, label %while.end, !dbg !623

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !639, metadata !DIExpression()), !dbg !641
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !642
  %10 = load i64, i64* %numWritten, align 8, !dbg !643
  %mul5 = mul i64 2, %10, !dbg !644
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !642
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !645
  %11 = load i32, i32* %byte, align 4, !dbg !646
  %conv = trunc i32 %11 to i8, !dbg !647
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !648
  %13 = load i64, i64* %numWritten, align 8, !dbg !649
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !648
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !650
  %14 = load i64, i64* %numWritten, align 8, !dbg !651
  %inc = add i64 %14, 1, !dbg !651
  store i64 %inc, i64* %numWritten, align 8, !dbg !651
  br label %while.cond, !dbg !623, !llvm.loop !652

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !654
  ret i64 %15, !dbg !655
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !656 {
entry:
  ret i32 1, !dbg !659
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !660 {
entry:
  ret i32 0, !dbg !661
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !662 {
entry:
  %call = call i32 @rand() #9, !dbg !663
  %rem = srem i32 %call, 2, !dbg !664
  ret i32 %rem, !dbg !665
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !666 {
entry:
  ret void, !dbg !667
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !668 {
entry:
  ret void, !dbg !669
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !670 {
entry:
  ret void, !dbg !671
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !672 {
entry:
  ret void, !dbg !673
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !674 {
entry:
  ret void, !dbg !675
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !676 {
entry:
  ret void, !dbg !677
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !678 {
entry:
  ret void, !dbg !679
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !680 {
entry:
  ret void, !dbg !681
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !682 {
entry:
  ret void, !dbg !683
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !684 {
entry:
  ret void, !dbg !685
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !686 {
entry:
  ret void, !dbg !687
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !688 {
entry:
  ret void, !dbg !689
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !690 {
entry:
  ret void, !dbg !691
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !692 {
entry:
  ret void, !dbg !693
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !694 {
entry:
  ret void, !dbg !695
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !696 {
entry:
  ret void, !dbg !697
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !698 {
entry:
  ret void, !dbg !699
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !700 {
entry:
  ret void, !dbg !701
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
!1 = distinct !DIGlobalVariable(name: "STATIC_CONST_FIVE", scope: !2, file: !3, line: 26, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_06.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_569/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0}
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !11, file: !12, line: 174, type: !8, isLocal: false, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, retainedTypes: !30, globals: !33, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_569/source_code")
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
!55 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_06_bad", scope: !3, file: !3, line: 30, type: !56, scopeLine: 31, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!56 = !DISubroutineType(types: !57)
!57 = !{null}
!58 = !DILocalVariable(name: "data", scope: !55, file: !3, line: 32, type: !8)
!59 = !DILocation(line: 32, column: 9, scope: !55)
!60 = !DILocation(line: 34, column: 10, scope: !55)
!61 = !DILocation(line: 35, column: 8, scope: !62)
!62 = distinct !DILexicalBlock(scope: !55, file: !3, line: 35, column: 8)
!63 = !DILocation(line: 35, column: 25, scope: !62)
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
!88 = !DILocation(line: 51, column: 25, scope: !87)
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
!103 = !DILocation(line: 60, column: 24, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !3, line: 59, column: 13)
!105 = !DILocation(line: 60, column: 17, scope: !104)
!106 = !DILocation(line: 60, column: 30, scope: !104)
!107 = !DILocation(line: 62, column: 23, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !3, line: 62, column: 17)
!109 = !DILocation(line: 62, column: 21, scope: !108)
!110 = !DILocation(line: 62, column: 28, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !3, line: 62, column: 17)
!112 = !DILocation(line: 62, column: 30, scope: !111)
!113 = !DILocation(line: 62, column: 17, scope: !108)
!114 = !DILocation(line: 64, column: 41, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !3, line: 63, column: 17)
!116 = !DILocation(line: 64, column: 34, scope: !115)
!117 = !DILocation(line: 64, column: 21, scope: !115)
!118 = !DILocation(line: 65, column: 17, scope: !115)
!119 = !DILocation(line: 62, column: 37, scope: !111)
!120 = !DILocation(line: 62, column: 17, scope: !111)
!121 = distinct !{!121, !113, !122, !123}
!122 = !DILocation(line: 65, column: 17, scope: !108)
!123 = !{!"llvm.loop.mustprogress"}
!124 = !DILocation(line: 66, column: 13, scope: !104)
!125 = !DILocation(line: 69, column: 17, scope: !126)
!126 = distinct !DILexicalBlock(scope: !100, file: !3, line: 68, column: 13)
!127 = !DILocation(line: 72, column: 5, scope: !92)
!128 = !DILocation(line: 73, column: 1, scope: !55)
!129 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 80, type: !56, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!130 = !DILocalVariable(name: "data", scope: !129, file: !3, line: 82, type: !8)
!131 = !DILocation(line: 82, column: 9, scope: !129)
!132 = !DILocation(line: 84, column: 10, scope: !129)
!133 = !DILocation(line: 85, column: 8, scope: !134)
!134 = distinct !DILexicalBlock(scope: !129, file: !3, line: 85, column: 8)
!135 = !DILocation(line: 85, column: 25, scope: !134)
!136 = !DILocation(line: 85, column: 8, scope: !129)
!137 = !DILocalVariable(name: "inputBuffer", scope: !138, file: !3, line: 88, type: !68)
!138 = distinct !DILexicalBlock(scope: !139, file: !3, line: 87, column: 9)
!139 = distinct !DILexicalBlock(scope: !134, file: !3, line: 86, column: 5)
!140 = !DILocation(line: 88, column: 18, scope: !138)
!141 = !DILocation(line: 90, column: 23, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !3, line: 90, column: 17)
!143 = !DILocation(line: 90, column: 53, scope: !142)
!144 = !DILocation(line: 90, column: 17, scope: !142)
!145 = !DILocation(line: 90, column: 60, scope: !142)
!146 = !DILocation(line: 90, column: 17, scope: !138)
!147 = !DILocation(line: 93, column: 29, scope: !148)
!148 = distinct !DILexicalBlock(scope: !142, file: !3, line: 91, column: 13)
!149 = !DILocation(line: 93, column: 24, scope: !148)
!150 = !DILocation(line: 93, column: 22, scope: !148)
!151 = !DILocation(line: 94, column: 13, scope: !148)
!152 = !DILocation(line: 97, column: 17, scope: !153)
!153 = distinct !DILexicalBlock(scope: !142, file: !3, line: 96, column: 13)
!154 = !DILocation(line: 100, column: 5, scope: !139)
!155 = !DILocation(line: 101, column: 8, scope: !156)
!156 = distinct !DILexicalBlock(scope: !129, file: !3, line: 101, column: 8)
!157 = !DILocation(line: 101, column: 25, scope: !156)
!158 = !DILocation(line: 101, column: 8, scope: !129)
!159 = !DILocation(line: 104, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !3, line: 102, column: 5)
!161 = !DILocation(line: 105, column: 5, scope: !160)
!162 = !DILocalVariable(name: "i", scope: !163, file: !3, line: 109, type: !8)
!163 = distinct !DILexicalBlock(scope: !164, file: !3, line: 108, column: 9)
!164 = distinct !DILexicalBlock(scope: !156, file: !3, line: 107, column: 5)
!165 = !DILocation(line: 109, column: 17, scope: !163)
!166 = !DILocalVariable(name: "buffer", scope: !163, file: !3, line: 110, type: !95)
!167 = !DILocation(line: 110, column: 17, scope: !163)
!168 = !DILocation(line: 112, column: 17, scope: !169)
!169 = distinct !DILexicalBlock(scope: !163, file: !3, line: 112, column: 17)
!170 = !DILocation(line: 112, column: 22, scope: !169)
!171 = !DILocation(line: 112, column: 27, scope: !169)
!172 = !DILocation(line: 112, column: 30, scope: !169)
!173 = !DILocation(line: 112, column: 35, scope: !169)
!174 = !DILocation(line: 112, column: 17, scope: !163)
!175 = !DILocation(line: 114, column: 24, scope: !176)
!176 = distinct !DILexicalBlock(scope: !169, file: !3, line: 113, column: 13)
!177 = !DILocation(line: 114, column: 17, scope: !176)
!178 = !DILocation(line: 114, column: 30, scope: !176)
!179 = !DILocation(line: 116, column: 23, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !3, line: 116, column: 17)
!181 = !DILocation(line: 116, column: 21, scope: !180)
!182 = !DILocation(line: 116, column: 28, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !3, line: 116, column: 17)
!184 = !DILocation(line: 116, column: 30, scope: !183)
!185 = !DILocation(line: 116, column: 17, scope: !180)
!186 = !DILocation(line: 118, column: 41, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !3, line: 117, column: 17)
!188 = !DILocation(line: 118, column: 34, scope: !187)
!189 = !DILocation(line: 118, column: 21, scope: !187)
!190 = !DILocation(line: 119, column: 17, scope: !187)
!191 = !DILocation(line: 116, column: 37, scope: !183)
!192 = !DILocation(line: 116, column: 17, scope: !183)
!193 = distinct !{!193, !185, !194, !123}
!194 = !DILocation(line: 119, column: 17, scope: !180)
!195 = !DILocation(line: 120, column: 13, scope: !176)
!196 = !DILocation(line: 123, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !169, file: !3, line: 122, column: 13)
!198 = !DILocation(line: 127, column: 1, scope: !129)
!199 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 130, type: !56, scopeLine: 131, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!200 = !DILocalVariable(name: "data", scope: !199, file: !3, line: 132, type: !8)
!201 = !DILocation(line: 132, column: 9, scope: !199)
!202 = !DILocation(line: 134, column: 10, scope: !199)
!203 = !DILocation(line: 135, column: 8, scope: !204)
!204 = distinct !DILexicalBlock(scope: !199, file: !3, line: 135, column: 8)
!205 = !DILocation(line: 135, column: 25, scope: !204)
!206 = !DILocation(line: 135, column: 8, scope: !199)
!207 = !DILocalVariable(name: "inputBuffer", scope: !208, file: !3, line: 138, type: !68)
!208 = distinct !DILexicalBlock(scope: !209, file: !3, line: 137, column: 9)
!209 = distinct !DILexicalBlock(scope: !204, file: !3, line: 136, column: 5)
!210 = !DILocation(line: 138, column: 18, scope: !208)
!211 = !DILocation(line: 140, column: 23, scope: !212)
!212 = distinct !DILexicalBlock(scope: !208, file: !3, line: 140, column: 17)
!213 = !DILocation(line: 140, column: 53, scope: !212)
!214 = !DILocation(line: 140, column: 17, scope: !212)
!215 = !DILocation(line: 140, column: 60, scope: !212)
!216 = !DILocation(line: 140, column: 17, scope: !208)
!217 = !DILocation(line: 143, column: 29, scope: !218)
!218 = distinct !DILexicalBlock(scope: !212, file: !3, line: 141, column: 13)
!219 = !DILocation(line: 143, column: 24, scope: !218)
!220 = !DILocation(line: 143, column: 22, scope: !218)
!221 = !DILocation(line: 144, column: 13, scope: !218)
!222 = !DILocation(line: 147, column: 17, scope: !223)
!223 = distinct !DILexicalBlock(scope: !212, file: !3, line: 146, column: 13)
!224 = !DILocation(line: 150, column: 5, scope: !209)
!225 = !DILocation(line: 151, column: 8, scope: !226)
!226 = distinct !DILexicalBlock(scope: !199, file: !3, line: 151, column: 8)
!227 = !DILocation(line: 151, column: 25, scope: !226)
!228 = !DILocation(line: 151, column: 8, scope: !199)
!229 = !DILocalVariable(name: "i", scope: !230, file: !3, line: 154, type: !8)
!230 = distinct !DILexicalBlock(scope: !231, file: !3, line: 153, column: 9)
!231 = distinct !DILexicalBlock(scope: !226, file: !3, line: 152, column: 5)
!232 = !DILocation(line: 154, column: 17, scope: !230)
!233 = !DILocalVariable(name: "buffer", scope: !230, file: !3, line: 155, type: !95)
!234 = !DILocation(line: 155, column: 17, scope: !230)
!235 = !DILocation(line: 157, column: 17, scope: !236)
!236 = distinct !DILexicalBlock(scope: !230, file: !3, line: 157, column: 17)
!237 = !DILocation(line: 157, column: 22, scope: !236)
!238 = !DILocation(line: 157, column: 27, scope: !236)
!239 = !DILocation(line: 157, column: 30, scope: !236)
!240 = !DILocation(line: 157, column: 35, scope: !236)
!241 = !DILocation(line: 157, column: 17, scope: !230)
!242 = !DILocation(line: 159, column: 24, scope: !243)
!243 = distinct !DILexicalBlock(scope: !236, file: !3, line: 158, column: 13)
!244 = !DILocation(line: 159, column: 17, scope: !243)
!245 = !DILocation(line: 159, column: 30, scope: !243)
!246 = !DILocation(line: 161, column: 23, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !3, line: 161, column: 17)
!248 = !DILocation(line: 161, column: 21, scope: !247)
!249 = !DILocation(line: 161, column: 28, scope: !250)
!250 = distinct !DILexicalBlock(scope: !247, file: !3, line: 161, column: 17)
!251 = !DILocation(line: 161, column: 30, scope: !250)
!252 = !DILocation(line: 161, column: 17, scope: !247)
!253 = !DILocation(line: 163, column: 41, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !3, line: 162, column: 17)
!255 = !DILocation(line: 163, column: 34, scope: !254)
!256 = !DILocation(line: 163, column: 21, scope: !254)
!257 = !DILocation(line: 164, column: 17, scope: !254)
!258 = !DILocation(line: 161, column: 37, scope: !250)
!259 = !DILocation(line: 161, column: 17, scope: !250)
!260 = distinct !{!260, !252, !261, !123}
!261 = !DILocation(line: 164, column: 17, scope: !247)
!262 = !DILocation(line: 165, column: 13, scope: !243)
!263 = !DILocation(line: 168, column: 17, scope: !264)
!264 = distinct !DILexicalBlock(scope: !236, file: !3, line: 167, column: 13)
!265 = !DILocation(line: 171, column: 5, scope: !231)
!266 = !DILocation(line: 172, column: 1, scope: !199)
!267 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 175, type: !56, scopeLine: 176, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!268 = !DILocalVariable(name: "data", scope: !267, file: !3, line: 177, type: !8)
!269 = !DILocation(line: 177, column: 9, scope: !267)
!270 = !DILocation(line: 179, column: 10, scope: !267)
!271 = !DILocation(line: 180, column: 8, scope: !272)
!272 = distinct !DILexicalBlock(scope: !267, file: !3, line: 180, column: 8)
!273 = !DILocation(line: 180, column: 25, scope: !272)
!274 = !DILocation(line: 180, column: 8, scope: !267)
!275 = !DILocation(line: 183, column: 9, scope: !276)
!276 = distinct !DILexicalBlock(scope: !272, file: !3, line: 181, column: 5)
!277 = !DILocation(line: 184, column: 5, scope: !276)
!278 = !DILocation(line: 189, column: 14, scope: !279)
!279 = distinct !DILexicalBlock(scope: !272, file: !3, line: 186, column: 5)
!280 = !DILocation(line: 191, column: 8, scope: !281)
!281 = distinct !DILexicalBlock(scope: !267, file: !3, line: 191, column: 8)
!282 = !DILocation(line: 191, column: 25, scope: !281)
!283 = !DILocation(line: 191, column: 8, scope: !267)
!284 = !DILocalVariable(name: "i", scope: !285, file: !3, line: 194, type: !8)
!285 = distinct !DILexicalBlock(scope: !286, file: !3, line: 193, column: 9)
!286 = distinct !DILexicalBlock(scope: !281, file: !3, line: 192, column: 5)
!287 = !DILocation(line: 194, column: 17, scope: !285)
!288 = !DILocalVariable(name: "buffer", scope: !285, file: !3, line: 195, type: !95)
!289 = !DILocation(line: 195, column: 17, scope: !285)
!290 = !DILocation(line: 198, column: 17, scope: !291)
!291 = distinct !DILexicalBlock(scope: !285, file: !3, line: 198, column: 17)
!292 = !DILocation(line: 198, column: 22, scope: !291)
!293 = !DILocation(line: 198, column: 17, scope: !285)
!294 = !DILocation(line: 200, column: 24, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !3, line: 199, column: 13)
!296 = !DILocation(line: 200, column: 17, scope: !295)
!297 = !DILocation(line: 200, column: 30, scope: !295)
!298 = !DILocation(line: 202, column: 23, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !3, line: 202, column: 17)
!300 = !DILocation(line: 202, column: 21, scope: !299)
!301 = !DILocation(line: 202, column: 28, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !3, line: 202, column: 17)
!303 = !DILocation(line: 202, column: 30, scope: !302)
!304 = !DILocation(line: 202, column: 17, scope: !299)
!305 = !DILocation(line: 204, column: 41, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !3, line: 203, column: 17)
!307 = !DILocation(line: 204, column: 34, scope: !306)
!308 = !DILocation(line: 204, column: 21, scope: !306)
!309 = !DILocation(line: 205, column: 17, scope: !306)
!310 = !DILocation(line: 202, column: 37, scope: !302)
!311 = !DILocation(line: 202, column: 17, scope: !302)
!312 = distinct !{!312, !304, !313, !123}
!313 = !DILocation(line: 205, column: 17, scope: !299)
!314 = !DILocation(line: 206, column: 13, scope: !295)
!315 = !DILocation(line: 209, column: 17, scope: !316)
!316 = distinct !DILexicalBlock(scope: !291, file: !3, line: 208, column: 13)
!317 = !DILocation(line: 212, column: 5, scope: !286)
!318 = !DILocation(line: 213, column: 1, scope: !267)
!319 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 216, type: !56, scopeLine: 217, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!320 = !DILocalVariable(name: "data", scope: !319, file: !3, line: 218, type: !8)
!321 = !DILocation(line: 218, column: 9, scope: !319)
!322 = !DILocation(line: 220, column: 10, scope: !319)
!323 = !DILocation(line: 221, column: 8, scope: !324)
!324 = distinct !DILexicalBlock(scope: !319, file: !3, line: 221, column: 8)
!325 = !DILocation(line: 221, column: 25, scope: !324)
!326 = !DILocation(line: 221, column: 8, scope: !319)
!327 = !DILocation(line: 225, column: 14, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !3, line: 222, column: 5)
!329 = !DILocation(line: 226, column: 5, scope: !328)
!330 = !DILocation(line: 227, column: 8, scope: !331)
!331 = distinct !DILexicalBlock(scope: !319, file: !3, line: 227, column: 8)
!332 = !DILocation(line: 227, column: 25, scope: !331)
!333 = !DILocation(line: 227, column: 8, scope: !319)
!334 = !DILocalVariable(name: "i", scope: !335, file: !3, line: 230, type: !8)
!335 = distinct !DILexicalBlock(scope: !336, file: !3, line: 229, column: 9)
!336 = distinct !DILexicalBlock(scope: !331, file: !3, line: 228, column: 5)
!337 = !DILocation(line: 230, column: 17, scope: !335)
!338 = !DILocalVariable(name: "buffer", scope: !335, file: !3, line: 231, type: !95)
!339 = !DILocation(line: 231, column: 17, scope: !335)
!340 = !DILocation(line: 234, column: 17, scope: !341)
!341 = distinct !DILexicalBlock(scope: !335, file: !3, line: 234, column: 17)
!342 = !DILocation(line: 234, column: 22, scope: !341)
!343 = !DILocation(line: 234, column: 17, scope: !335)
!344 = !DILocation(line: 236, column: 24, scope: !345)
!345 = distinct !DILexicalBlock(scope: !341, file: !3, line: 235, column: 13)
!346 = !DILocation(line: 236, column: 17, scope: !345)
!347 = !DILocation(line: 236, column: 30, scope: !345)
!348 = !DILocation(line: 238, column: 23, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !3, line: 238, column: 17)
!350 = !DILocation(line: 238, column: 21, scope: !349)
!351 = !DILocation(line: 238, column: 28, scope: !352)
!352 = distinct !DILexicalBlock(scope: !349, file: !3, line: 238, column: 17)
!353 = !DILocation(line: 238, column: 30, scope: !352)
!354 = !DILocation(line: 238, column: 17, scope: !349)
!355 = !DILocation(line: 240, column: 41, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !3, line: 239, column: 17)
!357 = !DILocation(line: 240, column: 34, scope: !356)
!358 = !DILocation(line: 240, column: 21, scope: !356)
!359 = !DILocation(line: 241, column: 17, scope: !356)
!360 = !DILocation(line: 238, column: 37, scope: !352)
!361 = !DILocation(line: 238, column: 17, scope: !352)
!362 = distinct !{!362, !354, !363, !123}
!363 = !DILocation(line: 241, column: 17, scope: !349)
!364 = !DILocation(line: 242, column: 13, scope: !345)
!365 = !DILocation(line: 245, column: 17, scope: !366)
!366 = distinct !DILexicalBlock(scope: !341, file: !3, line: 244, column: 13)
!367 = !DILocation(line: 248, column: 5, scope: !336)
!368 = !DILocation(line: 249, column: 1, scope: !319)
!369 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_06_good", scope: !3, file: !3, line: 251, type: !56, scopeLine: 252, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!370 = !DILocation(line: 253, column: 5, scope: !369)
!371 = !DILocation(line: 254, column: 5, scope: !369)
!372 = !DILocation(line: 255, column: 5, scope: !369)
!373 = !DILocation(line: 256, column: 5, scope: !369)
!374 = !DILocation(line: 257, column: 1, scope: !369)
!375 = distinct !DISubprogram(name: "printLine", scope: !12, file: !12, line: 11, type: !376, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !49}
!378 = !DILocalVariable(name: "line", arg: 1, scope: !375, file: !12, line: 11, type: !49)
!379 = !DILocation(line: 11, column: 25, scope: !375)
!380 = !DILocation(line: 13, column: 1, scope: !375)
!381 = !DILocation(line: 14, column: 8, scope: !382)
!382 = distinct !DILexicalBlock(scope: !375, file: !12, line: 14, column: 8)
!383 = !DILocation(line: 14, column: 13, scope: !382)
!384 = !DILocation(line: 14, column: 8, scope: !375)
!385 = !DILocation(line: 16, column: 24, scope: !386)
!386 = distinct !DILexicalBlock(scope: !382, file: !12, line: 15, column: 5)
!387 = !DILocation(line: 16, column: 9, scope: !386)
!388 = !DILocation(line: 17, column: 5, scope: !386)
!389 = !DILocation(line: 18, column: 5, scope: !375)
!390 = !DILocation(line: 19, column: 1, scope: !375)
!391 = distinct !DISubprogram(name: "printSinkLine", scope: !12, file: !12, line: 20, type: !376, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!392 = !DILocalVariable(name: "line", arg: 1, scope: !391, file: !12, line: 20, type: !49)
!393 = !DILocation(line: 20, column: 29, scope: !391)
!394 = !DILocation(line: 22, column: 8, scope: !395)
!395 = distinct !DILexicalBlock(scope: !391, file: !12, line: 22, column: 8)
!396 = !DILocation(line: 22, column: 13, scope: !395)
!397 = !DILocation(line: 22, column: 8, scope: !391)
!398 = !DILocation(line: 24, column: 24, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !12, line: 23, column: 5)
!400 = !DILocation(line: 24, column: 9, scope: !399)
!401 = !DILocation(line: 25, column: 5, scope: !399)
!402 = !DILocation(line: 26, column: 1, scope: !391)
!403 = distinct !DISubprogram(name: "printWLine", scope: !12, file: !12, line: 27, type: !404, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !406}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !408, line: 74, baseType: !8)
!408 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!409 = !DILocalVariable(name: "line", arg: 1, scope: !403, file: !12, line: 27, type: !406)
!410 = !DILocation(line: 27, column: 29, scope: !403)
!411 = !DILocation(line: 29, column: 8, scope: !412)
!412 = distinct !DILexicalBlock(scope: !403, file: !12, line: 29, column: 8)
!413 = !DILocation(line: 29, column: 13, scope: !412)
!414 = !DILocation(line: 29, column: 8, scope: !403)
!415 = !DILocation(line: 31, column: 27, scope: !416)
!416 = distinct !DILexicalBlock(scope: !412, file: !12, line: 30, column: 5)
!417 = !DILocation(line: 31, column: 9, scope: !416)
!418 = !DILocation(line: 32, column: 5, scope: !416)
!419 = !DILocation(line: 33, column: 1, scope: !403)
!420 = distinct !DISubprogram(name: "printIntLine", scope: !12, file: !12, line: 35, type: !421, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !8}
!423 = !DILocalVariable(name: "intNumber", arg: 1, scope: !420, file: !12, line: 35, type: !8)
!424 = !DILocation(line: 35, column: 24, scope: !420)
!425 = !DILocation(line: 37, column: 20, scope: !420)
!426 = !DILocation(line: 37, column: 5, scope: !420)
!427 = !DILocation(line: 38, column: 1, scope: !420)
!428 = distinct !DISubprogram(name: "printShortLine", scope: !12, file: !12, line: 40, type: !429, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !431}
!431 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!432 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !428, file: !12, line: 40, type: !431)
!433 = !DILocation(line: 40, column: 28, scope: !428)
!434 = !DILocation(line: 42, column: 21, scope: !428)
!435 = !DILocation(line: 42, column: 5, scope: !428)
!436 = !DILocation(line: 43, column: 1, scope: !428)
!437 = distinct !DISubprogram(name: "printFloatLine", scope: !12, file: !12, line: 45, type: !438, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !440}
!440 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!441 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !437, file: !12, line: 45, type: !440)
!442 = !DILocation(line: 45, column: 28, scope: !437)
!443 = !DILocation(line: 47, column: 20, scope: !437)
!444 = !DILocation(line: 47, column: 5, scope: !437)
!445 = !DILocation(line: 48, column: 1, scope: !437)
!446 = distinct !DISubprogram(name: "printLongLine", scope: !12, file: !12, line: 50, type: !447, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !449}
!449 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!450 = !DILocalVariable(name: "longNumber", arg: 1, scope: !446, file: !12, line: 50, type: !449)
!451 = !DILocation(line: 50, column: 26, scope: !446)
!452 = !DILocation(line: 52, column: 21, scope: !446)
!453 = !DILocation(line: 52, column: 5, scope: !446)
!454 = !DILocation(line: 53, column: 1, scope: !446)
!455 = distinct !DISubprogram(name: "printLongLongLine", scope: !12, file: !12, line: 55, type: !456, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !458}
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !459, line: 27, baseType: !460)
!459 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !461, line: 44, baseType: !449)
!461 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!462 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !455, file: !12, line: 55, type: !458)
!463 = !DILocation(line: 55, column: 33, scope: !455)
!464 = !DILocation(line: 57, column: 29, scope: !455)
!465 = !DILocation(line: 57, column: 5, scope: !455)
!466 = !DILocation(line: 58, column: 1, scope: !455)
!467 = distinct !DISubprogram(name: "printSizeTLine", scope: !12, file: !12, line: 60, type: !468, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !470}
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !408, line: 46, baseType: !471)
!471 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!472 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !467, file: !12, line: 60, type: !470)
!473 = !DILocation(line: 60, column: 29, scope: !467)
!474 = !DILocation(line: 62, column: 21, scope: !467)
!475 = !DILocation(line: 62, column: 5, scope: !467)
!476 = !DILocation(line: 63, column: 1, scope: !467)
!477 = distinct !DISubprogram(name: "printHexCharLine", scope: !12, file: !12, line: 65, type: !478, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !50}
!480 = !DILocalVariable(name: "charHex", arg: 1, scope: !477, file: !12, line: 65, type: !50)
!481 = !DILocation(line: 65, column: 29, scope: !477)
!482 = !DILocation(line: 67, column: 22, scope: !477)
!483 = !DILocation(line: 67, column: 5, scope: !477)
!484 = !DILocation(line: 68, column: 1, scope: !477)
!485 = distinct !DISubprogram(name: "printWcharLine", scope: !12, file: !12, line: 70, type: !486, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !407}
!488 = !DILocalVariable(name: "wideChar", arg: 1, scope: !485, file: !12, line: 70, type: !407)
!489 = !DILocation(line: 70, column: 29, scope: !485)
!490 = !DILocalVariable(name: "s", scope: !485, file: !12, line: 74, type: !491)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 64, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 2)
!494 = !DILocation(line: 74, column: 13, scope: !485)
!495 = !DILocation(line: 75, column: 16, scope: !485)
!496 = !DILocation(line: 75, column: 9, scope: !485)
!497 = !DILocation(line: 75, column: 14, scope: !485)
!498 = !DILocation(line: 76, column: 9, scope: !485)
!499 = !DILocation(line: 76, column: 14, scope: !485)
!500 = !DILocation(line: 77, column: 21, scope: !485)
!501 = !DILocation(line: 77, column: 5, scope: !485)
!502 = !DILocation(line: 78, column: 1, scope: !485)
!503 = distinct !DISubprogram(name: "printUnsignedLine", scope: !12, file: !12, line: 80, type: !504, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !16}
!506 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !503, file: !12, line: 80, type: !16)
!507 = !DILocation(line: 80, column: 33, scope: !503)
!508 = !DILocation(line: 82, column: 20, scope: !503)
!509 = !DILocation(line: 82, column: 5, scope: !503)
!510 = !DILocation(line: 83, column: 1, scope: !503)
!511 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !12, file: !12, line: 85, type: !512, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !32}
!514 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !511, file: !12, line: 85, type: !32)
!515 = !DILocation(line: 85, column: 45, scope: !511)
!516 = !DILocation(line: 87, column: 22, scope: !511)
!517 = !DILocation(line: 87, column: 5, scope: !511)
!518 = !DILocation(line: 88, column: 1, scope: !511)
!519 = distinct !DISubprogram(name: "printDoubleLine", scope: !12, file: !12, line: 90, type: !520, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !522}
!522 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!523 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !519, file: !12, line: 90, type: !522)
!524 = !DILocation(line: 90, column: 29, scope: !519)
!525 = !DILocation(line: 92, column: 20, scope: !519)
!526 = !DILocation(line: 92, column: 5, scope: !519)
!527 = !DILocation(line: 93, column: 1, scope: !519)
!528 = distinct !DISubprogram(name: "printStructLine", scope: !12, file: !12, line: 95, type: !529, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !531}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !533, line: 100, baseType: !534)
!533 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_569/source_code")
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !533, line: 96, size: 64, elements: !535)
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !534, file: !533, line: 98, baseType: !8, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !534, file: !533, line: 99, baseType: !8, size: 32, offset: 32)
!538 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !528, file: !12, line: 95, type: !531)
!539 = !DILocation(line: 95, column: 40, scope: !528)
!540 = !DILocation(line: 97, column: 26, scope: !528)
!541 = !DILocation(line: 97, column: 47, scope: !528)
!542 = !DILocation(line: 97, column: 55, scope: !528)
!543 = !DILocation(line: 97, column: 76, scope: !528)
!544 = !DILocation(line: 97, column: 5, scope: !528)
!545 = !DILocation(line: 98, column: 1, scope: !528)
!546 = distinct !DISubprogram(name: "printBytesLine", scope: !12, file: !12, line: 100, type: !547, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !549, !470}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!550 = !DILocalVariable(name: "bytes", arg: 1, scope: !546, file: !12, line: 100, type: !549)
!551 = !DILocation(line: 100, column: 38, scope: !546)
!552 = !DILocalVariable(name: "numBytes", arg: 2, scope: !546, file: !12, line: 100, type: !470)
!553 = !DILocation(line: 100, column: 52, scope: !546)
!554 = !DILocalVariable(name: "i", scope: !546, file: !12, line: 102, type: !470)
!555 = !DILocation(line: 102, column: 12, scope: !546)
!556 = !DILocation(line: 103, column: 12, scope: !557)
!557 = distinct !DILexicalBlock(scope: !546, file: !12, line: 103, column: 5)
!558 = !DILocation(line: 103, column: 10, scope: !557)
!559 = !DILocation(line: 103, column: 17, scope: !560)
!560 = distinct !DILexicalBlock(scope: !557, file: !12, line: 103, column: 5)
!561 = !DILocation(line: 103, column: 21, scope: !560)
!562 = !DILocation(line: 103, column: 19, scope: !560)
!563 = !DILocation(line: 103, column: 5, scope: !557)
!564 = !DILocation(line: 105, column: 24, scope: !565)
!565 = distinct !DILexicalBlock(scope: !560, file: !12, line: 104, column: 5)
!566 = !DILocation(line: 105, column: 30, scope: !565)
!567 = !DILocation(line: 105, column: 9, scope: !565)
!568 = !DILocation(line: 106, column: 5, scope: !565)
!569 = !DILocation(line: 103, column: 31, scope: !560)
!570 = !DILocation(line: 103, column: 5, scope: !560)
!571 = distinct !{!571, !563, !572, !123}
!572 = !DILocation(line: 106, column: 5, scope: !557)
!573 = !DILocation(line: 107, column: 5, scope: !546)
!574 = !DILocation(line: 108, column: 1, scope: !546)
!575 = distinct !DISubprogram(name: "decodeHexChars", scope: !12, file: !12, line: 113, type: !576, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!576 = !DISubroutineType(types: !577)
!577 = !{!470, !549, !470, !49}
!578 = !DILocalVariable(name: "bytes", arg: 1, scope: !575, file: !12, line: 113, type: !549)
!579 = !DILocation(line: 113, column: 39, scope: !575)
!580 = !DILocalVariable(name: "numBytes", arg: 2, scope: !575, file: !12, line: 113, type: !470)
!581 = !DILocation(line: 113, column: 53, scope: !575)
!582 = !DILocalVariable(name: "hex", arg: 3, scope: !575, file: !12, line: 113, type: !49)
!583 = !DILocation(line: 113, column: 71, scope: !575)
!584 = !DILocalVariable(name: "numWritten", scope: !575, file: !12, line: 115, type: !470)
!585 = !DILocation(line: 115, column: 12, scope: !575)
!586 = !DILocation(line: 121, column: 5, scope: !575)
!587 = !DILocation(line: 121, column: 12, scope: !575)
!588 = !DILocation(line: 121, column: 25, scope: !575)
!589 = !DILocation(line: 121, column: 23, scope: !575)
!590 = !DILocation(line: 121, column: 34, scope: !575)
!591 = !DILocation(line: 121, column: 37, scope: !575)
!592 = !DILocation(line: 121, column: 67, scope: !575)
!593 = !DILocation(line: 121, column: 70, scope: !575)
!594 = !DILocation(line: 0, scope: !575)
!595 = !DILocalVariable(name: "byte", scope: !596, file: !12, line: 123, type: !8)
!596 = distinct !DILexicalBlock(scope: !575, file: !12, line: 122, column: 5)
!597 = !DILocation(line: 123, column: 13, scope: !596)
!598 = !DILocation(line: 124, column: 17, scope: !596)
!599 = !DILocation(line: 124, column: 25, scope: !596)
!600 = !DILocation(line: 124, column: 23, scope: !596)
!601 = !DILocation(line: 124, column: 9, scope: !596)
!602 = !DILocation(line: 125, column: 45, scope: !596)
!603 = !DILocation(line: 125, column: 29, scope: !596)
!604 = !DILocation(line: 125, column: 9, scope: !596)
!605 = !DILocation(line: 125, column: 15, scope: !596)
!606 = !DILocation(line: 125, column: 27, scope: !596)
!607 = !DILocation(line: 126, column: 9, scope: !596)
!608 = distinct !{!608, !586, !609, !123}
!609 = !DILocation(line: 127, column: 5, scope: !575)
!610 = !DILocation(line: 129, column: 12, scope: !575)
!611 = !DILocation(line: 129, column: 5, scope: !575)
!612 = distinct !DISubprogram(name: "decodeHexWChars", scope: !12, file: !12, line: 135, type: !613, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!613 = !DISubroutineType(types: !614)
!614 = !{!470, !549, !470, !406}
!615 = !DILocalVariable(name: "bytes", arg: 1, scope: !612, file: !12, line: 135, type: !549)
!616 = !DILocation(line: 135, column: 41, scope: !612)
!617 = !DILocalVariable(name: "numBytes", arg: 2, scope: !612, file: !12, line: 135, type: !470)
!618 = !DILocation(line: 135, column: 55, scope: !612)
!619 = !DILocalVariable(name: "hex", arg: 3, scope: !612, file: !12, line: 135, type: !406)
!620 = !DILocation(line: 135, column: 76, scope: !612)
!621 = !DILocalVariable(name: "numWritten", scope: !612, file: !12, line: 137, type: !470)
!622 = !DILocation(line: 137, column: 12, scope: !612)
!623 = !DILocation(line: 143, column: 5, scope: !612)
!624 = !DILocation(line: 143, column: 12, scope: !612)
!625 = !DILocation(line: 143, column: 25, scope: !612)
!626 = !DILocation(line: 143, column: 23, scope: !612)
!627 = !DILocation(line: 143, column: 34, scope: !612)
!628 = !DILocation(line: 143, column: 47, scope: !612)
!629 = !DILocation(line: 143, column: 55, scope: !612)
!630 = !DILocation(line: 143, column: 53, scope: !612)
!631 = !DILocation(line: 143, column: 37, scope: !612)
!632 = !DILocation(line: 143, column: 68, scope: !612)
!633 = !DILocation(line: 143, column: 81, scope: !612)
!634 = !DILocation(line: 143, column: 89, scope: !612)
!635 = !DILocation(line: 143, column: 87, scope: !612)
!636 = !DILocation(line: 143, column: 100, scope: !612)
!637 = !DILocation(line: 143, column: 71, scope: !612)
!638 = !DILocation(line: 0, scope: !612)
!639 = !DILocalVariable(name: "byte", scope: !640, file: !12, line: 145, type: !8)
!640 = distinct !DILexicalBlock(scope: !612, file: !12, line: 144, column: 5)
!641 = !DILocation(line: 145, column: 13, scope: !640)
!642 = !DILocation(line: 146, column: 18, scope: !640)
!643 = !DILocation(line: 146, column: 26, scope: !640)
!644 = !DILocation(line: 146, column: 24, scope: !640)
!645 = !DILocation(line: 146, column: 9, scope: !640)
!646 = !DILocation(line: 147, column: 45, scope: !640)
!647 = !DILocation(line: 147, column: 29, scope: !640)
!648 = !DILocation(line: 147, column: 9, scope: !640)
!649 = !DILocation(line: 147, column: 15, scope: !640)
!650 = !DILocation(line: 147, column: 27, scope: !640)
!651 = !DILocation(line: 148, column: 9, scope: !640)
!652 = distinct !{!652, !623, !653, !123}
!653 = !DILocation(line: 149, column: 5, scope: !612)
!654 = !DILocation(line: 151, column: 12, scope: !612)
!655 = !DILocation(line: 151, column: 5, scope: !612)
!656 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !12, file: !12, line: 156, type: !657, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!657 = !DISubroutineType(types: !658)
!658 = !{!8}
!659 = !DILocation(line: 158, column: 5, scope: !656)
!660 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !12, file: !12, line: 161, type: !657, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!661 = !DILocation(line: 163, column: 5, scope: !660)
!662 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !12, file: !12, line: 166, type: !657, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!663 = !DILocation(line: 168, column: 13, scope: !662)
!664 = !DILocation(line: 168, column: 20, scope: !662)
!665 = !DILocation(line: 168, column: 5, scope: !662)
!666 = distinct !DISubprogram(name: "good1", scope: !12, file: !12, line: 187, type: !56, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!667 = !DILocation(line: 187, column: 16, scope: !666)
!668 = distinct !DISubprogram(name: "good2", scope: !12, file: !12, line: 188, type: !56, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!669 = !DILocation(line: 188, column: 16, scope: !668)
!670 = distinct !DISubprogram(name: "good3", scope: !12, file: !12, line: 189, type: !56, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!671 = !DILocation(line: 189, column: 16, scope: !670)
!672 = distinct !DISubprogram(name: "good4", scope: !12, file: !12, line: 190, type: !56, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!673 = !DILocation(line: 190, column: 16, scope: !672)
!674 = distinct !DISubprogram(name: "good5", scope: !12, file: !12, line: 191, type: !56, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!675 = !DILocation(line: 191, column: 16, scope: !674)
!676 = distinct !DISubprogram(name: "good6", scope: !12, file: !12, line: 192, type: !56, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!677 = !DILocation(line: 192, column: 16, scope: !676)
!678 = distinct !DISubprogram(name: "good7", scope: !12, file: !12, line: 193, type: !56, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!679 = !DILocation(line: 193, column: 16, scope: !678)
!680 = distinct !DISubprogram(name: "good8", scope: !12, file: !12, line: 194, type: !56, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!681 = !DILocation(line: 194, column: 16, scope: !680)
!682 = distinct !DISubprogram(name: "good9", scope: !12, file: !12, line: 195, type: !56, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!683 = !DILocation(line: 195, column: 16, scope: !682)
!684 = distinct !DISubprogram(name: "bad1", scope: !12, file: !12, line: 198, type: !56, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!685 = !DILocation(line: 198, column: 15, scope: !684)
!686 = distinct !DISubprogram(name: "bad2", scope: !12, file: !12, line: 199, type: !56, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!687 = !DILocation(line: 199, column: 15, scope: !686)
!688 = distinct !DISubprogram(name: "bad3", scope: !12, file: !12, line: 200, type: !56, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!689 = !DILocation(line: 200, column: 15, scope: !688)
!690 = distinct !DISubprogram(name: "bad4", scope: !12, file: !12, line: 201, type: !56, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!691 = !DILocation(line: 201, column: 15, scope: !690)
!692 = distinct !DISubprogram(name: "bad5", scope: !12, file: !12, line: 202, type: !56, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!693 = !DILocation(line: 202, column: 15, scope: !692)
!694 = distinct !DISubprogram(name: "bad6", scope: !12, file: !12, line: 203, type: !56, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!695 = !DILocation(line: 203, column: 15, scope: !694)
!696 = distinct !DISubprogram(name: "bad7", scope: !12, file: !12, line: 204, type: !56, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!697 = !DILocation(line: 204, column: 15, scope: !696)
!698 = distinct !DISubprogram(name: "bad8", scope: !12, file: !12, line: 205, type: !56, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!699 = !DILocation(line: 205, column: 15, scope: !698)
!700 = distinct !DISubprogram(name: "bad9", scope: !12, file: !12, line: 206, type: !56, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!701 = !DILocation(line: 206, column: 15, scope: !700)
