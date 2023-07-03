; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@STATIC_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@STATIC_CONST_FALSE = dso_local global i32 0, align 4, !dbg !8
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_04_bad() #0 !dbg !57 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !60, metadata !DIExpression()), !dbg !61
  store i32 -1, i32* %data, align 4, !dbg !62
  %0 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !63
  %tobool = icmp ne i32 %0, 0, !dbg !63
  br i1 %tobool, label %if.then, label %if.end4, !dbg !65

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !66, metadata !DIExpression()), !dbg !72
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !72
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !72
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !73
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !75
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !76
  %cmp = icmp ne i8* %call, null, !dbg !77
  br i1 %cmp, label %if.then1, label %if.else, !dbg !78

if.then1:                                         ; preds = %if.then
  %arraydecay2 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !79
  %call3 = call i32 @atoi(i8* %arraydecay2) #7, !dbg !81
  store i32 %call3, i32* %data, align 4, !dbg !82
  br label %if.end, !dbg !83

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !84
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end4, !dbg !86

if.end4:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !87
  %tobool5 = icmp ne i32 %3, 0, !dbg !87
  br i1 %tobool5, label %if.then6, label %if.end14, !dbg !89

if.then6:                                         ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !90, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !94, metadata !DIExpression()), !dbg !98
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !98
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !98
  %5 = load i32, i32* %data, align 4, !dbg !99
  %cmp7 = icmp sge i32 %5, 0, !dbg !101
  br i1 %cmp7, label %if.then8, label %if.else12, !dbg !102

if.then8:                                         ; preds = %if.then6
  %6 = load i32, i32* %data, align 4, !dbg !103
  %idxprom = sext i32 %6 to i64, !dbg !105
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !105
  store i32 1, i32* %arrayidx, align 4, !dbg !106
  store i32 0, i32* %i, align 4, !dbg !107
  br label %for.cond, !dbg !109

for.cond:                                         ; preds = %for.inc, %if.then8
  %7 = load i32, i32* %i, align 4, !dbg !110
  %cmp9 = icmp slt i32 %7, 10, !dbg !112
  br i1 %cmp9, label %for.body, label %for.end, !dbg !113

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !114
  %idxprom10 = sext i32 %8 to i64, !dbg !116
  %arrayidx11 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom10, !dbg !116
  %9 = load i32, i32* %arrayidx11, align 4, !dbg !116
  call void @printIntLine(i32 %9), !dbg !117
  br label %for.inc, !dbg !118

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !119
  %inc = add nsw i32 %10, 1, !dbg !119
  store i32 %inc, i32* %i, align 4, !dbg !119
  br label %for.cond, !dbg !120, !llvm.loop !121

for.end:                                          ; preds = %for.cond
  br label %if.end13, !dbg !124

if.else12:                                        ; preds = %if.then6
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !125
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %for.end
  br label %if.end14, !dbg !127

if.end14:                                         ; preds = %if.end13, %if.end4
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
  %0 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !133
  %tobool = icmp ne i32 %0, 0, !dbg !133
  br i1 %tobool, label %if.then, label %if.end4, !dbg !135

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !136, metadata !DIExpression()), !dbg !139
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !139
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !139
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !140
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !142
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !143
  %cmp = icmp ne i8* %call, null, !dbg !144
  br i1 %cmp, label %if.then1, label %if.else, !dbg !145

if.then1:                                         ; preds = %if.then
  %arraydecay2 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !146
  %call3 = call i32 @atoi(i8* %arraydecay2) #7, !dbg !148
  store i32 %call3, i32* %data, align 4, !dbg !149
  br label %if.end, !dbg !150

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !151
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end4, !dbg !153

if.end4:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @STATIC_CONST_FALSE, align 4, !dbg !154
  %tobool5 = icmp ne i32 %3, 0, !dbg !154
  br i1 %tobool5, label %if.then6, label %if.else7, !dbg !156

if.then6:                                         ; preds = %if.end4
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !157
  br label %if.end16, !dbg !159

if.else7:                                         ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !160, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !164, metadata !DIExpression()), !dbg !165
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !165
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !165
  %5 = load i32, i32* %data, align 4, !dbg !166
  %cmp8 = icmp sge i32 %5, 0, !dbg !168
  br i1 %cmp8, label %land.lhs.true, label %if.else14, !dbg !169

land.lhs.true:                                    ; preds = %if.else7
  %6 = load i32, i32* %data, align 4, !dbg !170
  %cmp9 = icmp slt i32 %6, 10, !dbg !171
  br i1 %cmp9, label %if.then10, label %if.else14, !dbg !172

if.then10:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !173
  %idxprom = sext i32 %7 to i64, !dbg !175
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !175
  store i32 1, i32* %arrayidx, align 4, !dbg !176
  store i32 0, i32* %i, align 4, !dbg !177
  br label %for.cond, !dbg !179

for.cond:                                         ; preds = %for.inc, %if.then10
  %8 = load i32, i32* %i, align 4, !dbg !180
  %cmp11 = icmp slt i32 %8, 10, !dbg !182
  br i1 %cmp11, label %for.body, label %for.end, !dbg !183

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !184
  %idxprom12 = sext i32 %9 to i64, !dbg !186
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom12, !dbg !186
  %10 = load i32, i32* %arrayidx13, align 4, !dbg !186
  call void @printIntLine(i32 %10), !dbg !187
  br label %for.inc, !dbg !188

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !189
  %inc = add nsw i32 %11, 1, !dbg !189
  store i32 %inc, i32* %i, align 4, !dbg !189
  br label %for.cond, !dbg !190, !llvm.loop !191

for.end:                                          ; preds = %for.cond
  br label %if.end15, !dbg !193

if.else14:                                        ; preds = %land.lhs.true, %if.else7
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !194
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %for.end
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then6
  ret void, !dbg !196
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !197 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !198, metadata !DIExpression()), !dbg !199
  store i32 -1, i32* %data, align 4, !dbg !200
  %0 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !201
  %tobool = icmp ne i32 %0, 0, !dbg !201
  br i1 %tobool, label %if.then, label %if.end4, !dbg !203

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !204, metadata !DIExpression()), !dbg !207
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !207
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !207
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !208
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !210
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !211
  %cmp = icmp ne i8* %call, null, !dbg !212
  br i1 %cmp, label %if.then1, label %if.else, !dbg !213

if.then1:                                         ; preds = %if.then
  %arraydecay2 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !214
  %call3 = call i32 @atoi(i8* %arraydecay2) #7, !dbg !216
  store i32 %call3, i32* %data, align 4, !dbg !217
  br label %if.end, !dbg !218

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !219
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end4, !dbg !221

if.end4:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !222
  %tobool5 = icmp ne i32 %3, 0, !dbg !222
  br i1 %tobool5, label %if.then6, label %if.end15, !dbg !224

if.then6:                                         ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !225, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !229, metadata !DIExpression()), !dbg !230
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !230
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !230
  %5 = load i32, i32* %data, align 4, !dbg !231
  %cmp7 = icmp sge i32 %5, 0, !dbg !233
  br i1 %cmp7, label %land.lhs.true, label %if.else13, !dbg !234

land.lhs.true:                                    ; preds = %if.then6
  %6 = load i32, i32* %data, align 4, !dbg !235
  %cmp8 = icmp slt i32 %6, 10, !dbg !236
  br i1 %cmp8, label %if.then9, label %if.else13, !dbg !237

if.then9:                                         ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !238
  %idxprom = sext i32 %7 to i64, !dbg !240
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !240
  store i32 1, i32* %arrayidx, align 4, !dbg !241
  store i32 0, i32* %i, align 4, !dbg !242
  br label %for.cond, !dbg !244

for.cond:                                         ; preds = %for.inc, %if.then9
  %8 = load i32, i32* %i, align 4, !dbg !245
  %cmp10 = icmp slt i32 %8, 10, !dbg !247
  br i1 %cmp10, label %for.body, label %for.end, !dbg !248

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !249
  %idxprom11 = sext i32 %9 to i64, !dbg !251
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom11, !dbg !251
  %10 = load i32, i32* %arrayidx12, align 4, !dbg !251
  call void @printIntLine(i32 %10), !dbg !252
  br label %for.inc, !dbg !253

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !254
  %inc = add nsw i32 %11, 1, !dbg !254
  store i32 %inc, i32* %i, align 4, !dbg !254
  br label %for.cond, !dbg !255, !llvm.loop !256

for.end:                                          ; preds = %for.cond
  br label %if.end14, !dbg !258

if.else13:                                        ; preds = %land.lhs.true, %if.then6
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !259
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %for.end
  br label %if.end15, !dbg !261

if.end15:                                         ; preds = %if.end14, %if.end4
  ret void, !dbg !262
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !263 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !264, metadata !DIExpression()), !dbg !265
  store i32 -1, i32* %data, align 4, !dbg !266
  %0 = load i32, i32* @STATIC_CONST_FALSE, align 4, !dbg !267
  %tobool = icmp ne i32 %0, 0, !dbg !267
  br i1 %tobool, label %if.then, label %if.else, !dbg !269

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !270
  br label %if.end, !dbg !272

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !273
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !275
  %tobool1 = icmp ne i32 %1, 0, !dbg !275
  br i1 %tobool1, label %if.then2, label %if.end9, !dbg !277

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !278, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !282, metadata !DIExpression()), !dbg !283
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !283
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !283
  %3 = load i32, i32* %data, align 4, !dbg !284
  %cmp = icmp sge i32 %3, 0, !dbg !286
  br i1 %cmp, label %if.then3, label %if.else7, !dbg !287

if.then3:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !288
  %idxprom = sext i32 %4 to i64, !dbg !290
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !290
  store i32 1, i32* %arrayidx, align 4, !dbg !291
  store i32 0, i32* %i, align 4, !dbg !292
  br label %for.cond, !dbg !294

for.cond:                                         ; preds = %for.inc, %if.then3
  %5 = load i32, i32* %i, align 4, !dbg !295
  %cmp4 = icmp slt i32 %5, 10, !dbg !297
  br i1 %cmp4, label %for.body, label %for.end, !dbg !298

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !299
  %idxprom5 = sext i32 %6 to i64, !dbg !301
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom5, !dbg !301
  %7 = load i32, i32* %arrayidx6, align 4, !dbg !301
  call void @printIntLine(i32 %7), !dbg !302
  br label %for.inc, !dbg !303

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !304
  %inc = add nsw i32 %8, 1, !dbg !304
  store i32 %inc, i32* %i, align 4, !dbg !304
  br label %for.cond, !dbg !305, !llvm.loop !306

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !308

if.else7:                                         ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !309
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %for.end
  br label %if.end9, !dbg !311

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !312
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !313 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !314, metadata !DIExpression()), !dbg !315
  store i32 -1, i32* %data, align 4, !dbg !316
  %0 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !317
  %tobool = icmp ne i32 %0, 0, !dbg !317
  br i1 %tobool, label %if.then, label %if.end, !dbg !319

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !320
  br label %if.end, !dbg !322

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !323
  %tobool1 = icmp ne i32 %1, 0, !dbg !323
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !325

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !326, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !330, metadata !DIExpression()), !dbg !331
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !331
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !331
  %3 = load i32, i32* %data, align 4, !dbg !332
  %cmp = icmp sge i32 %3, 0, !dbg !334
  br i1 %cmp, label %if.then3, label %if.else, !dbg !335

if.then3:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !336
  %idxprom = sext i32 %4 to i64, !dbg !338
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !338
  store i32 1, i32* %arrayidx, align 4, !dbg !339
  store i32 0, i32* %i, align 4, !dbg !340
  br label %for.cond, !dbg !342

for.cond:                                         ; preds = %for.inc, %if.then3
  %5 = load i32, i32* %i, align 4, !dbg !343
  %cmp4 = icmp slt i32 %5, 10, !dbg !345
  br i1 %cmp4, label %for.body, label %for.end, !dbg !346

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !347
  %idxprom5 = sext i32 %6 to i64, !dbg !349
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom5, !dbg !349
  %7 = load i32, i32* %arrayidx6, align 4, !dbg !349
  call void @printIntLine(i32 %7), !dbg !350
  br label %for.inc, !dbg !351

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !352
  %inc = add nsw i32 %8, 1, !dbg !352
  store i32 %inc, i32* %i, align 4, !dbg !352
  br label %for.cond, !dbg !353, !llvm.loop !354

for.end:                                          ; preds = %for.cond
  br label %if.end7, !dbg !356

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !357
  br label %if.end7

if.end7:                                          ; preds = %if.else, %for.end
  br label %if.end8, !dbg !359

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !360
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_04_good() #0 !dbg !361 {
entry:
  call void @goodB2G1(), !dbg !362
  call void @goodB2G2(), !dbg !363
  call void @goodG2B1(), !dbg !364
  call void @goodG2B2(), !dbg !365
  ret void, !dbg !366
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !367 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !370, metadata !DIExpression()), !dbg !371
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !372
  %0 = load i8*, i8** %line.addr, align 8, !dbg !373
  %cmp = icmp ne i8* %0, null, !dbg !375
  br i1 %cmp, label %if.then, label %if.end, !dbg !376

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !377
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !379
  br label %if.end, !dbg !380

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !381
  ret void, !dbg !382
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !383 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !384, metadata !DIExpression()), !dbg !385
  %0 = load i8*, i8** %line.addr, align 8, !dbg !386
  %cmp = icmp ne i8* %0, null, !dbg !388
  br i1 %cmp, label %if.then, label %if.end, !dbg !389

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !390
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !392
  br label %if.end, !dbg !393

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !394
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !395 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !401, metadata !DIExpression()), !dbg !402
  %0 = load i32*, i32** %line.addr, align 8, !dbg !403
  %cmp = icmp ne i32* %0, null, !dbg !405
  br i1 %cmp, label %if.then, label %if.end, !dbg !406

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !407
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !409
  br label %if.end, !dbg !410

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !411
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !412 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !415, metadata !DIExpression()), !dbg !416
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !417
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !418
  ret void, !dbg !419
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !420 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !424, metadata !DIExpression()), !dbg !425
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !426
  %conv = sext i16 %0 to i32, !dbg !426
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !427
  ret void, !dbg !428
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !429 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !433, metadata !DIExpression()), !dbg !434
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !435
  %conv = fpext float %0 to double, !dbg !435
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !436
  ret void, !dbg !437
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !438 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !442, metadata !DIExpression()), !dbg !443
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !444
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !447 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !454, metadata !DIExpression()), !dbg !455
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !456
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !457
  ret void, !dbg !458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !459 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !464, metadata !DIExpression()), !dbg !465
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !466
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !467
  ret void, !dbg !468
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !469 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !472, metadata !DIExpression()), !dbg !473
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !474
  %conv = sext i8 %0 to i32, !dbg !474
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !475
  ret void, !dbg !476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !477 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !480, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !482, metadata !DIExpression()), !dbg !486
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !487
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !488
  store i32 %0, i32* %arrayidx, align 4, !dbg !489
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !490
  store i32 0, i32* %arrayidx1, align 4, !dbg !491
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !492
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !493
  ret void, !dbg !494
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !495 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !498, metadata !DIExpression()), !dbg !499
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !500
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !501
  ret void, !dbg !502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !503 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !506, metadata !DIExpression()), !dbg !507
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !508
  %conv = zext i8 %0 to i32, !dbg !508
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !509
  ret void, !dbg !510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !511 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !515, metadata !DIExpression()), !dbg !516
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !517
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !518
  ret void, !dbg !519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !520 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !530, metadata !DIExpression()), !dbg !531
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !532
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !533
  %1 = load i32, i32* %intOne, align 4, !dbg !533
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !534
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !535
  %3 = load i32, i32* %intTwo, align 4, !dbg !535
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !536
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !538 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !542, metadata !DIExpression()), !dbg !543
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !544, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.declare(metadata i64* %i, metadata !546, metadata !DIExpression()), !dbg !547
  store i64 0, i64* %i, align 8, !dbg !548
  br label %for.cond, !dbg !550

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !551
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !553
  %cmp = icmp ult i64 %0, %1, !dbg !554
  br i1 %cmp, label %for.body, label %for.end, !dbg !555

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !556
  %3 = load i64, i64* %i, align 8, !dbg !558
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !556
  %4 = load i8, i8* %arrayidx, align 1, !dbg !556
  %conv = zext i8 %4 to i32, !dbg !556
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !559
  br label %for.inc, !dbg !560

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !561
  %inc = add i64 %5, 1, !dbg !561
  store i64 %inc, i64* %i, align 8, !dbg !561
  br label %for.cond, !dbg !562, !llvm.loop !563

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !565
  ret void, !dbg !566
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !567 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !570, metadata !DIExpression()), !dbg !571
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !572, metadata !DIExpression()), !dbg !573
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !574, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !576, metadata !DIExpression()), !dbg !577
  store i64 0, i64* %numWritten, align 8, !dbg !577
  br label %while.cond, !dbg !578

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !579
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !580
  %cmp = icmp ult i64 %0, %1, !dbg !581
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !582

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !583
  %2 = load i16*, i16** %call, align 8, !dbg !583
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !583
  %4 = load i64, i64* %numWritten, align 8, !dbg !583
  %mul = mul i64 2, %4, !dbg !583
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !583
  %5 = load i8, i8* %arrayidx, align 1, !dbg !583
  %conv = sext i8 %5 to i32, !dbg !583
  %idxprom = sext i32 %conv to i64, !dbg !583
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !583
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !583
  %conv2 = zext i16 %6 to i32, !dbg !583
  %and = and i32 %conv2, 4096, !dbg !583
  %tobool = icmp ne i32 %and, 0, !dbg !583
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !584

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !585
  %7 = load i16*, i16** %call3, align 8, !dbg !585
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !585
  %9 = load i64, i64* %numWritten, align 8, !dbg !585
  %mul4 = mul i64 2, %9, !dbg !585
  %add = add i64 %mul4, 1, !dbg !585
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !585
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !585
  %conv6 = sext i8 %10 to i32, !dbg !585
  %idxprom7 = sext i32 %conv6 to i64, !dbg !585
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !585
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !585
  %conv9 = zext i16 %11 to i32, !dbg !585
  %and10 = and i32 %conv9, 4096, !dbg !585
  %tobool11 = icmp ne i32 %and10, 0, !dbg !584
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !586
  br i1 %12, label %while.body, label %while.end, !dbg !578

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !587, metadata !DIExpression()), !dbg !589
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !590
  %14 = load i64, i64* %numWritten, align 8, !dbg !591
  %mul12 = mul i64 2, %14, !dbg !592
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !590
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !593
  %15 = load i32, i32* %byte, align 4, !dbg !594
  %conv15 = trunc i32 %15 to i8, !dbg !595
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !596
  %17 = load i64, i64* %numWritten, align 8, !dbg !597
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !596
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !598
  %18 = load i64, i64* %numWritten, align 8, !dbg !599
  %inc = add i64 %18, 1, !dbg !599
  store i64 %inc, i64* %numWritten, align 8, !dbg !599
  br label %while.cond, !dbg !578, !llvm.loop !600

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !602
  ret i64 %19, !dbg !603
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !604 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !607, metadata !DIExpression()), !dbg !608
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !609, metadata !DIExpression()), !dbg !610
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !611, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !613, metadata !DIExpression()), !dbg !614
  store i64 0, i64* %numWritten, align 8, !dbg !614
  br label %while.cond, !dbg !615

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !616
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !617
  %cmp = icmp ult i64 %0, %1, !dbg !618
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !619

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !620
  %3 = load i64, i64* %numWritten, align 8, !dbg !621
  %mul = mul i64 2, %3, !dbg !622
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !620
  %4 = load i32, i32* %arrayidx, align 4, !dbg !620
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !623
  %tobool = icmp ne i32 %call, 0, !dbg !623
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !624

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !625
  %6 = load i64, i64* %numWritten, align 8, !dbg !626
  %mul1 = mul i64 2, %6, !dbg !627
  %add = add i64 %mul1, 1, !dbg !628
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !625
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !625
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !629
  %tobool4 = icmp ne i32 %call3, 0, !dbg !624
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !630
  br i1 %8, label %while.body, label %while.end, !dbg !615

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !631, metadata !DIExpression()), !dbg !633
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !634
  %10 = load i64, i64* %numWritten, align 8, !dbg !635
  %mul5 = mul i64 2, %10, !dbg !636
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !634
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !637
  %11 = load i32, i32* %byte, align 4, !dbg !638
  %conv = trunc i32 %11 to i8, !dbg !639
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !640
  %13 = load i64, i64* %numWritten, align 8, !dbg !641
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !640
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !642
  %14 = load i64, i64* %numWritten, align 8, !dbg !643
  %inc = add i64 %14, 1, !dbg !643
  store i64 %inc, i64* %numWritten, align 8, !dbg !643
  br label %while.cond, !dbg !615, !llvm.loop !644

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !646
  ret i64 %15, !dbg !647
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !648 {
entry:
  ret i32 1, !dbg !651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !652 {
entry:
  ret i32 0, !dbg !653
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !654 {
entry:
  %call = call i32 @rand() #9, !dbg !655
  %rem = srem i32 %call, 2, !dbg !656
  ret i32 %rem, !dbg !657
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !658 {
entry:
  ret void, !dbg !659
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !660 {
entry:
  ret void, !dbg !661
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !662 {
entry:
  ret void, !dbg !663
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !664 {
entry:
  ret void, !dbg !665
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !666 {
entry:
  ret void, !dbg !667
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !668 {
entry:
  ret void, !dbg !669
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !670 {
entry:
  ret void, !dbg !671
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !672 {
entry:
  ret void, !dbg !673
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !674 {
entry:
  ret void, !dbg !675
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !676 {
entry:
  ret void, !dbg !677
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !678 {
entry:
  ret void, !dbg !679
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !680 {
entry:
  ret void, !dbg !681
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !682 {
entry:
  ret void, !dbg !683
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !684 {
entry:
  ret void, !dbg !685
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !686 {
entry:
  ret void, !dbg !687
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !688 {
entry:
  ret void, !dbg !689
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !690 {
entry:
  ret void, !dbg !691
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !692 {
entry:
  ret void, !dbg !693
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

!llvm.dbg.cu = !{!2, !13}
!llvm.ident = !{!53, !53}
!llvm.module.flags = !{!54, !55, !56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "STATIC_CONST_TRUE", scope: !2, file: !3, line: 26, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_04.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_567/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "STATIC_CONST_FALSE", scope: !2, file: !3, line: 27, type: !10, isLocal: false, isDefinition: true)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !13, file: !14, line: 174, type: !10, isLocal: false, isDefinition: true)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !32, globals: !35, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_567/source_code")
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
!32 = !{!6, !10, !33, !34}
!33 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !{!11, !36, !38, !40, !42, !44, !46, !48}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !13, file: !14, line: 175, type: !10, isLocal: false, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !13, file: !14, line: 176, type: !10, isLocal: false, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "globalTrue", scope: !13, file: !14, line: 181, type: !10, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "globalFalse", scope: !13, file: !14, line: 182, type: !10, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalFive", scope: !13, file: !14, line: 183, type: !10, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalArgc", scope: !13, file: !14, line: 214, type: !10, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "globalArgv", scope: !13, file: !14, line: 215, type: !50, isLocal: false, isDefinition: true)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !{!"clang version 12.0.0"}
!54 = !{i32 7, !"Dwarf Version", i32 4}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{i32 1, !"wchar_size", i32 4}
!57 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_04_bad", scope: !3, file: !3, line: 31, type: !58, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!58 = !DISubroutineType(types: !59)
!59 = !{null}
!60 = !DILocalVariable(name: "data", scope: !57, file: !3, line: 33, type: !10)
!61 = !DILocation(line: 33, column: 9, scope: !57)
!62 = !DILocation(line: 35, column: 10, scope: !57)
!63 = !DILocation(line: 36, column: 8, scope: !64)
!64 = distinct !DILexicalBlock(scope: !57, file: !3, line: 36, column: 8)
!65 = !DILocation(line: 36, column: 8, scope: !57)
!66 = !DILocalVariable(name: "inputBuffer", scope: !67, file: !3, line: 39, type: !69)
!67 = distinct !DILexicalBlock(scope: !68, file: !3, line: 38, column: 9)
!68 = distinct !DILexicalBlock(scope: !64, file: !3, line: 37, column: 5)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 112, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 14)
!72 = !DILocation(line: 39, column: 18, scope: !67)
!73 = !DILocation(line: 41, column: 23, scope: !74)
!74 = distinct !DILexicalBlock(scope: !67, file: !3, line: 41, column: 17)
!75 = !DILocation(line: 41, column: 53, scope: !74)
!76 = !DILocation(line: 41, column: 17, scope: !74)
!77 = !DILocation(line: 41, column: 60, scope: !74)
!78 = !DILocation(line: 41, column: 17, scope: !67)
!79 = !DILocation(line: 44, column: 29, scope: !80)
!80 = distinct !DILexicalBlock(scope: !74, file: !3, line: 42, column: 13)
!81 = !DILocation(line: 44, column: 24, scope: !80)
!82 = !DILocation(line: 44, column: 22, scope: !80)
!83 = !DILocation(line: 45, column: 13, scope: !80)
!84 = !DILocation(line: 48, column: 17, scope: !85)
!85 = distinct !DILexicalBlock(scope: !74, file: !3, line: 47, column: 13)
!86 = !DILocation(line: 51, column: 5, scope: !68)
!87 = !DILocation(line: 52, column: 8, scope: !88)
!88 = distinct !DILexicalBlock(scope: !57, file: !3, line: 52, column: 8)
!89 = !DILocation(line: 52, column: 8, scope: !57)
!90 = !DILocalVariable(name: "i", scope: !91, file: !3, line: 55, type: !10)
!91 = distinct !DILexicalBlock(scope: !92, file: !3, line: 54, column: 9)
!92 = distinct !DILexicalBlock(scope: !88, file: !3, line: 53, column: 5)
!93 = !DILocation(line: 55, column: 17, scope: !91)
!94 = !DILocalVariable(name: "buffer", scope: !91, file: !3, line: 56, type: !95)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 10)
!98 = !DILocation(line: 56, column: 17, scope: !91)
!99 = !DILocation(line: 59, column: 17, scope: !100)
!100 = distinct !DILexicalBlock(scope: !91, file: !3, line: 59, column: 17)
!101 = !DILocation(line: 59, column: 22, scope: !100)
!102 = !DILocation(line: 59, column: 17, scope: !91)
!103 = !DILocation(line: 61, column: 24, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !3, line: 60, column: 13)
!105 = !DILocation(line: 61, column: 17, scope: !104)
!106 = !DILocation(line: 61, column: 30, scope: !104)
!107 = !DILocation(line: 63, column: 23, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !3, line: 63, column: 17)
!109 = !DILocation(line: 63, column: 21, scope: !108)
!110 = !DILocation(line: 63, column: 28, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !3, line: 63, column: 17)
!112 = !DILocation(line: 63, column: 30, scope: !111)
!113 = !DILocation(line: 63, column: 17, scope: !108)
!114 = !DILocation(line: 65, column: 41, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !3, line: 64, column: 17)
!116 = !DILocation(line: 65, column: 34, scope: !115)
!117 = !DILocation(line: 65, column: 21, scope: !115)
!118 = !DILocation(line: 66, column: 17, scope: !115)
!119 = !DILocation(line: 63, column: 37, scope: !111)
!120 = !DILocation(line: 63, column: 17, scope: !111)
!121 = distinct !{!121, !113, !122, !123}
!122 = !DILocation(line: 66, column: 17, scope: !108)
!123 = !{!"llvm.loop.mustprogress"}
!124 = !DILocation(line: 67, column: 13, scope: !104)
!125 = !DILocation(line: 70, column: 17, scope: !126)
!126 = distinct !DILexicalBlock(scope: !100, file: !3, line: 69, column: 13)
!127 = !DILocation(line: 73, column: 5, scope: !92)
!128 = !DILocation(line: 74, column: 1, scope: !57)
!129 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 81, type: !58, scopeLine: 82, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!130 = !DILocalVariable(name: "data", scope: !129, file: !3, line: 83, type: !10)
!131 = !DILocation(line: 83, column: 9, scope: !129)
!132 = !DILocation(line: 85, column: 10, scope: !129)
!133 = !DILocation(line: 86, column: 8, scope: !134)
!134 = distinct !DILexicalBlock(scope: !129, file: !3, line: 86, column: 8)
!135 = !DILocation(line: 86, column: 8, scope: !129)
!136 = !DILocalVariable(name: "inputBuffer", scope: !137, file: !3, line: 89, type: !69)
!137 = distinct !DILexicalBlock(scope: !138, file: !3, line: 88, column: 9)
!138 = distinct !DILexicalBlock(scope: !134, file: !3, line: 87, column: 5)
!139 = !DILocation(line: 89, column: 18, scope: !137)
!140 = !DILocation(line: 91, column: 23, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !3, line: 91, column: 17)
!142 = !DILocation(line: 91, column: 53, scope: !141)
!143 = !DILocation(line: 91, column: 17, scope: !141)
!144 = !DILocation(line: 91, column: 60, scope: !141)
!145 = !DILocation(line: 91, column: 17, scope: !137)
!146 = !DILocation(line: 94, column: 29, scope: !147)
!147 = distinct !DILexicalBlock(scope: !141, file: !3, line: 92, column: 13)
!148 = !DILocation(line: 94, column: 24, scope: !147)
!149 = !DILocation(line: 94, column: 22, scope: !147)
!150 = !DILocation(line: 95, column: 13, scope: !147)
!151 = !DILocation(line: 98, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !141, file: !3, line: 97, column: 13)
!153 = !DILocation(line: 101, column: 5, scope: !138)
!154 = !DILocation(line: 102, column: 8, scope: !155)
!155 = distinct !DILexicalBlock(scope: !129, file: !3, line: 102, column: 8)
!156 = !DILocation(line: 102, column: 8, scope: !129)
!157 = !DILocation(line: 105, column: 9, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !3, line: 103, column: 5)
!159 = !DILocation(line: 106, column: 5, scope: !158)
!160 = !DILocalVariable(name: "i", scope: !161, file: !3, line: 110, type: !10)
!161 = distinct !DILexicalBlock(scope: !162, file: !3, line: 109, column: 9)
!162 = distinct !DILexicalBlock(scope: !155, file: !3, line: 108, column: 5)
!163 = !DILocation(line: 110, column: 17, scope: !161)
!164 = !DILocalVariable(name: "buffer", scope: !161, file: !3, line: 111, type: !95)
!165 = !DILocation(line: 111, column: 17, scope: !161)
!166 = !DILocation(line: 113, column: 17, scope: !167)
!167 = distinct !DILexicalBlock(scope: !161, file: !3, line: 113, column: 17)
!168 = !DILocation(line: 113, column: 22, scope: !167)
!169 = !DILocation(line: 113, column: 27, scope: !167)
!170 = !DILocation(line: 113, column: 30, scope: !167)
!171 = !DILocation(line: 113, column: 35, scope: !167)
!172 = !DILocation(line: 113, column: 17, scope: !161)
!173 = !DILocation(line: 115, column: 24, scope: !174)
!174 = distinct !DILexicalBlock(scope: !167, file: !3, line: 114, column: 13)
!175 = !DILocation(line: 115, column: 17, scope: !174)
!176 = !DILocation(line: 115, column: 30, scope: !174)
!177 = !DILocation(line: 117, column: 23, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !3, line: 117, column: 17)
!179 = !DILocation(line: 117, column: 21, scope: !178)
!180 = !DILocation(line: 117, column: 28, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !3, line: 117, column: 17)
!182 = !DILocation(line: 117, column: 30, scope: !181)
!183 = !DILocation(line: 117, column: 17, scope: !178)
!184 = !DILocation(line: 119, column: 41, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !3, line: 118, column: 17)
!186 = !DILocation(line: 119, column: 34, scope: !185)
!187 = !DILocation(line: 119, column: 21, scope: !185)
!188 = !DILocation(line: 120, column: 17, scope: !185)
!189 = !DILocation(line: 117, column: 37, scope: !181)
!190 = !DILocation(line: 117, column: 17, scope: !181)
!191 = distinct !{!191, !183, !192, !123}
!192 = !DILocation(line: 120, column: 17, scope: !178)
!193 = !DILocation(line: 121, column: 13, scope: !174)
!194 = !DILocation(line: 124, column: 17, scope: !195)
!195 = distinct !DILexicalBlock(scope: !167, file: !3, line: 123, column: 13)
!196 = !DILocation(line: 128, column: 1, scope: !129)
!197 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 131, type: !58, scopeLine: 132, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!198 = !DILocalVariable(name: "data", scope: !197, file: !3, line: 133, type: !10)
!199 = !DILocation(line: 133, column: 9, scope: !197)
!200 = !DILocation(line: 135, column: 10, scope: !197)
!201 = !DILocation(line: 136, column: 8, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !3, line: 136, column: 8)
!203 = !DILocation(line: 136, column: 8, scope: !197)
!204 = !DILocalVariable(name: "inputBuffer", scope: !205, file: !3, line: 139, type: !69)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 138, column: 9)
!206 = distinct !DILexicalBlock(scope: !202, file: !3, line: 137, column: 5)
!207 = !DILocation(line: 139, column: 18, scope: !205)
!208 = !DILocation(line: 141, column: 23, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !3, line: 141, column: 17)
!210 = !DILocation(line: 141, column: 53, scope: !209)
!211 = !DILocation(line: 141, column: 17, scope: !209)
!212 = !DILocation(line: 141, column: 60, scope: !209)
!213 = !DILocation(line: 141, column: 17, scope: !205)
!214 = !DILocation(line: 144, column: 29, scope: !215)
!215 = distinct !DILexicalBlock(scope: !209, file: !3, line: 142, column: 13)
!216 = !DILocation(line: 144, column: 24, scope: !215)
!217 = !DILocation(line: 144, column: 22, scope: !215)
!218 = !DILocation(line: 145, column: 13, scope: !215)
!219 = !DILocation(line: 148, column: 17, scope: !220)
!220 = distinct !DILexicalBlock(scope: !209, file: !3, line: 147, column: 13)
!221 = !DILocation(line: 151, column: 5, scope: !206)
!222 = !DILocation(line: 152, column: 8, scope: !223)
!223 = distinct !DILexicalBlock(scope: !197, file: !3, line: 152, column: 8)
!224 = !DILocation(line: 152, column: 8, scope: !197)
!225 = !DILocalVariable(name: "i", scope: !226, file: !3, line: 155, type: !10)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 154, column: 9)
!227 = distinct !DILexicalBlock(scope: !223, file: !3, line: 153, column: 5)
!228 = !DILocation(line: 155, column: 17, scope: !226)
!229 = !DILocalVariable(name: "buffer", scope: !226, file: !3, line: 156, type: !95)
!230 = !DILocation(line: 156, column: 17, scope: !226)
!231 = !DILocation(line: 158, column: 17, scope: !232)
!232 = distinct !DILexicalBlock(scope: !226, file: !3, line: 158, column: 17)
!233 = !DILocation(line: 158, column: 22, scope: !232)
!234 = !DILocation(line: 158, column: 27, scope: !232)
!235 = !DILocation(line: 158, column: 30, scope: !232)
!236 = !DILocation(line: 158, column: 35, scope: !232)
!237 = !DILocation(line: 158, column: 17, scope: !226)
!238 = !DILocation(line: 160, column: 24, scope: !239)
!239 = distinct !DILexicalBlock(scope: !232, file: !3, line: 159, column: 13)
!240 = !DILocation(line: 160, column: 17, scope: !239)
!241 = !DILocation(line: 160, column: 30, scope: !239)
!242 = !DILocation(line: 162, column: 23, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !3, line: 162, column: 17)
!244 = !DILocation(line: 162, column: 21, scope: !243)
!245 = !DILocation(line: 162, column: 28, scope: !246)
!246 = distinct !DILexicalBlock(scope: !243, file: !3, line: 162, column: 17)
!247 = !DILocation(line: 162, column: 30, scope: !246)
!248 = !DILocation(line: 162, column: 17, scope: !243)
!249 = !DILocation(line: 164, column: 41, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !3, line: 163, column: 17)
!251 = !DILocation(line: 164, column: 34, scope: !250)
!252 = !DILocation(line: 164, column: 21, scope: !250)
!253 = !DILocation(line: 165, column: 17, scope: !250)
!254 = !DILocation(line: 162, column: 37, scope: !246)
!255 = !DILocation(line: 162, column: 17, scope: !246)
!256 = distinct !{!256, !248, !257, !123}
!257 = !DILocation(line: 165, column: 17, scope: !243)
!258 = !DILocation(line: 166, column: 13, scope: !239)
!259 = !DILocation(line: 169, column: 17, scope: !260)
!260 = distinct !DILexicalBlock(scope: !232, file: !3, line: 168, column: 13)
!261 = !DILocation(line: 172, column: 5, scope: !227)
!262 = !DILocation(line: 173, column: 1, scope: !197)
!263 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 176, type: !58, scopeLine: 177, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!264 = !DILocalVariable(name: "data", scope: !263, file: !3, line: 178, type: !10)
!265 = !DILocation(line: 178, column: 9, scope: !263)
!266 = !DILocation(line: 180, column: 10, scope: !263)
!267 = !DILocation(line: 181, column: 8, scope: !268)
!268 = distinct !DILexicalBlock(scope: !263, file: !3, line: 181, column: 8)
!269 = !DILocation(line: 181, column: 8, scope: !263)
!270 = !DILocation(line: 184, column: 9, scope: !271)
!271 = distinct !DILexicalBlock(scope: !268, file: !3, line: 182, column: 5)
!272 = !DILocation(line: 185, column: 5, scope: !271)
!273 = !DILocation(line: 190, column: 14, scope: !274)
!274 = distinct !DILexicalBlock(scope: !268, file: !3, line: 187, column: 5)
!275 = !DILocation(line: 192, column: 8, scope: !276)
!276 = distinct !DILexicalBlock(scope: !263, file: !3, line: 192, column: 8)
!277 = !DILocation(line: 192, column: 8, scope: !263)
!278 = !DILocalVariable(name: "i", scope: !279, file: !3, line: 195, type: !10)
!279 = distinct !DILexicalBlock(scope: !280, file: !3, line: 194, column: 9)
!280 = distinct !DILexicalBlock(scope: !276, file: !3, line: 193, column: 5)
!281 = !DILocation(line: 195, column: 17, scope: !279)
!282 = !DILocalVariable(name: "buffer", scope: !279, file: !3, line: 196, type: !95)
!283 = !DILocation(line: 196, column: 17, scope: !279)
!284 = !DILocation(line: 199, column: 17, scope: !285)
!285 = distinct !DILexicalBlock(scope: !279, file: !3, line: 199, column: 17)
!286 = !DILocation(line: 199, column: 22, scope: !285)
!287 = !DILocation(line: 199, column: 17, scope: !279)
!288 = !DILocation(line: 201, column: 24, scope: !289)
!289 = distinct !DILexicalBlock(scope: !285, file: !3, line: 200, column: 13)
!290 = !DILocation(line: 201, column: 17, scope: !289)
!291 = !DILocation(line: 201, column: 30, scope: !289)
!292 = !DILocation(line: 203, column: 23, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !3, line: 203, column: 17)
!294 = !DILocation(line: 203, column: 21, scope: !293)
!295 = !DILocation(line: 203, column: 28, scope: !296)
!296 = distinct !DILexicalBlock(scope: !293, file: !3, line: 203, column: 17)
!297 = !DILocation(line: 203, column: 30, scope: !296)
!298 = !DILocation(line: 203, column: 17, scope: !293)
!299 = !DILocation(line: 205, column: 41, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !3, line: 204, column: 17)
!301 = !DILocation(line: 205, column: 34, scope: !300)
!302 = !DILocation(line: 205, column: 21, scope: !300)
!303 = !DILocation(line: 206, column: 17, scope: !300)
!304 = !DILocation(line: 203, column: 37, scope: !296)
!305 = !DILocation(line: 203, column: 17, scope: !296)
!306 = distinct !{!306, !298, !307, !123}
!307 = !DILocation(line: 206, column: 17, scope: !293)
!308 = !DILocation(line: 207, column: 13, scope: !289)
!309 = !DILocation(line: 210, column: 17, scope: !310)
!310 = distinct !DILexicalBlock(scope: !285, file: !3, line: 209, column: 13)
!311 = !DILocation(line: 213, column: 5, scope: !280)
!312 = !DILocation(line: 214, column: 1, scope: !263)
!313 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 217, type: !58, scopeLine: 218, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!314 = !DILocalVariable(name: "data", scope: !313, file: !3, line: 219, type: !10)
!315 = !DILocation(line: 219, column: 9, scope: !313)
!316 = !DILocation(line: 221, column: 10, scope: !313)
!317 = !DILocation(line: 222, column: 8, scope: !318)
!318 = distinct !DILexicalBlock(scope: !313, file: !3, line: 222, column: 8)
!319 = !DILocation(line: 222, column: 8, scope: !313)
!320 = !DILocation(line: 226, column: 14, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !3, line: 223, column: 5)
!322 = !DILocation(line: 227, column: 5, scope: !321)
!323 = !DILocation(line: 228, column: 8, scope: !324)
!324 = distinct !DILexicalBlock(scope: !313, file: !3, line: 228, column: 8)
!325 = !DILocation(line: 228, column: 8, scope: !313)
!326 = !DILocalVariable(name: "i", scope: !327, file: !3, line: 231, type: !10)
!327 = distinct !DILexicalBlock(scope: !328, file: !3, line: 230, column: 9)
!328 = distinct !DILexicalBlock(scope: !324, file: !3, line: 229, column: 5)
!329 = !DILocation(line: 231, column: 17, scope: !327)
!330 = !DILocalVariable(name: "buffer", scope: !327, file: !3, line: 232, type: !95)
!331 = !DILocation(line: 232, column: 17, scope: !327)
!332 = !DILocation(line: 235, column: 17, scope: !333)
!333 = distinct !DILexicalBlock(scope: !327, file: !3, line: 235, column: 17)
!334 = !DILocation(line: 235, column: 22, scope: !333)
!335 = !DILocation(line: 235, column: 17, scope: !327)
!336 = !DILocation(line: 237, column: 24, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !3, line: 236, column: 13)
!338 = !DILocation(line: 237, column: 17, scope: !337)
!339 = !DILocation(line: 237, column: 30, scope: !337)
!340 = !DILocation(line: 239, column: 23, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !3, line: 239, column: 17)
!342 = !DILocation(line: 239, column: 21, scope: !341)
!343 = !DILocation(line: 239, column: 28, scope: !344)
!344 = distinct !DILexicalBlock(scope: !341, file: !3, line: 239, column: 17)
!345 = !DILocation(line: 239, column: 30, scope: !344)
!346 = !DILocation(line: 239, column: 17, scope: !341)
!347 = !DILocation(line: 241, column: 41, scope: !348)
!348 = distinct !DILexicalBlock(scope: !344, file: !3, line: 240, column: 17)
!349 = !DILocation(line: 241, column: 34, scope: !348)
!350 = !DILocation(line: 241, column: 21, scope: !348)
!351 = !DILocation(line: 242, column: 17, scope: !348)
!352 = !DILocation(line: 239, column: 37, scope: !344)
!353 = !DILocation(line: 239, column: 17, scope: !344)
!354 = distinct !{!354, !346, !355, !123}
!355 = !DILocation(line: 242, column: 17, scope: !341)
!356 = !DILocation(line: 243, column: 13, scope: !337)
!357 = !DILocation(line: 246, column: 17, scope: !358)
!358 = distinct !DILexicalBlock(scope: !333, file: !3, line: 245, column: 13)
!359 = !DILocation(line: 249, column: 5, scope: !328)
!360 = !DILocation(line: 250, column: 1, scope: !313)
!361 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_04_good", scope: !3, file: !3, line: 252, type: !58, scopeLine: 253, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!362 = !DILocation(line: 254, column: 5, scope: !361)
!363 = !DILocation(line: 255, column: 5, scope: !361)
!364 = !DILocation(line: 256, column: 5, scope: !361)
!365 = !DILocation(line: 257, column: 5, scope: !361)
!366 = !DILocation(line: 258, column: 1, scope: !361)
!367 = distinct !DISubprogram(name: "printLine", scope: !14, file: !14, line: 11, type: !368, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !51}
!370 = !DILocalVariable(name: "line", arg: 1, scope: !367, file: !14, line: 11, type: !51)
!371 = !DILocation(line: 11, column: 25, scope: !367)
!372 = !DILocation(line: 13, column: 1, scope: !367)
!373 = !DILocation(line: 14, column: 8, scope: !374)
!374 = distinct !DILexicalBlock(scope: !367, file: !14, line: 14, column: 8)
!375 = !DILocation(line: 14, column: 13, scope: !374)
!376 = !DILocation(line: 14, column: 8, scope: !367)
!377 = !DILocation(line: 16, column: 24, scope: !378)
!378 = distinct !DILexicalBlock(scope: !374, file: !14, line: 15, column: 5)
!379 = !DILocation(line: 16, column: 9, scope: !378)
!380 = !DILocation(line: 17, column: 5, scope: !378)
!381 = !DILocation(line: 18, column: 5, scope: !367)
!382 = !DILocation(line: 19, column: 1, scope: !367)
!383 = distinct !DISubprogram(name: "printSinkLine", scope: !14, file: !14, line: 20, type: !368, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!384 = !DILocalVariable(name: "line", arg: 1, scope: !383, file: !14, line: 20, type: !51)
!385 = !DILocation(line: 20, column: 29, scope: !383)
!386 = !DILocation(line: 22, column: 8, scope: !387)
!387 = distinct !DILexicalBlock(scope: !383, file: !14, line: 22, column: 8)
!388 = !DILocation(line: 22, column: 13, scope: !387)
!389 = !DILocation(line: 22, column: 8, scope: !383)
!390 = !DILocation(line: 24, column: 24, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !14, line: 23, column: 5)
!392 = !DILocation(line: 24, column: 9, scope: !391)
!393 = !DILocation(line: 25, column: 5, scope: !391)
!394 = !DILocation(line: 26, column: 1, scope: !383)
!395 = distinct !DISubprogram(name: "printWLine", scope: !14, file: !14, line: 27, type: !396, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !398}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !400, line: 74, baseType: !10)
!400 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!401 = !DILocalVariable(name: "line", arg: 1, scope: !395, file: !14, line: 27, type: !398)
!402 = !DILocation(line: 27, column: 29, scope: !395)
!403 = !DILocation(line: 29, column: 8, scope: !404)
!404 = distinct !DILexicalBlock(scope: !395, file: !14, line: 29, column: 8)
!405 = !DILocation(line: 29, column: 13, scope: !404)
!406 = !DILocation(line: 29, column: 8, scope: !395)
!407 = !DILocation(line: 31, column: 27, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !14, line: 30, column: 5)
!409 = !DILocation(line: 31, column: 9, scope: !408)
!410 = !DILocation(line: 32, column: 5, scope: !408)
!411 = !DILocation(line: 33, column: 1, scope: !395)
!412 = distinct !DISubprogram(name: "printIntLine", scope: !14, file: !14, line: 35, type: !413, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !10}
!415 = !DILocalVariable(name: "intNumber", arg: 1, scope: !412, file: !14, line: 35, type: !10)
!416 = !DILocation(line: 35, column: 24, scope: !412)
!417 = !DILocation(line: 37, column: 20, scope: !412)
!418 = !DILocation(line: 37, column: 5, scope: !412)
!419 = !DILocation(line: 38, column: 1, scope: !412)
!420 = distinct !DISubprogram(name: "printShortLine", scope: !14, file: !14, line: 40, type: !421, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !423}
!423 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!424 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !420, file: !14, line: 40, type: !423)
!425 = !DILocation(line: 40, column: 28, scope: !420)
!426 = !DILocation(line: 42, column: 21, scope: !420)
!427 = !DILocation(line: 42, column: 5, scope: !420)
!428 = !DILocation(line: 43, column: 1, scope: !420)
!429 = distinct !DISubprogram(name: "printFloatLine", scope: !14, file: !14, line: 45, type: !430, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !432}
!432 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!433 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !429, file: !14, line: 45, type: !432)
!434 = !DILocation(line: 45, column: 28, scope: !429)
!435 = !DILocation(line: 47, column: 20, scope: !429)
!436 = !DILocation(line: 47, column: 5, scope: !429)
!437 = !DILocation(line: 48, column: 1, scope: !429)
!438 = distinct !DISubprogram(name: "printLongLine", scope: !14, file: !14, line: 50, type: !439, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !441}
!441 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!442 = !DILocalVariable(name: "longNumber", arg: 1, scope: !438, file: !14, line: 50, type: !441)
!443 = !DILocation(line: 50, column: 26, scope: !438)
!444 = !DILocation(line: 52, column: 21, scope: !438)
!445 = !DILocation(line: 52, column: 5, scope: !438)
!446 = !DILocation(line: 53, column: 1, scope: !438)
!447 = distinct !DISubprogram(name: "printLongLongLine", scope: !14, file: !14, line: 55, type: !448, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !450}
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !451, line: 27, baseType: !452)
!451 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !453, line: 44, baseType: !441)
!453 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!454 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !447, file: !14, line: 55, type: !450)
!455 = !DILocation(line: 55, column: 33, scope: !447)
!456 = !DILocation(line: 57, column: 29, scope: !447)
!457 = !DILocation(line: 57, column: 5, scope: !447)
!458 = !DILocation(line: 58, column: 1, scope: !447)
!459 = distinct !DISubprogram(name: "printSizeTLine", scope: !14, file: !14, line: 60, type: !460, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !462}
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !400, line: 46, baseType: !463)
!463 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!464 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !459, file: !14, line: 60, type: !462)
!465 = !DILocation(line: 60, column: 29, scope: !459)
!466 = !DILocation(line: 62, column: 21, scope: !459)
!467 = !DILocation(line: 62, column: 5, scope: !459)
!468 = !DILocation(line: 63, column: 1, scope: !459)
!469 = distinct !DISubprogram(name: "printHexCharLine", scope: !14, file: !14, line: 65, type: !470, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !52}
!472 = !DILocalVariable(name: "charHex", arg: 1, scope: !469, file: !14, line: 65, type: !52)
!473 = !DILocation(line: 65, column: 29, scope: !469)
!474 = !DILocation(line: 67, column: 22, scope: !469)
!475 = !DILocation(line: 67, column: 5, scope: !469)
!476 = !DILocation(line: 68, column: 1, scope: !469)
!477 = distinct !DISubprogram(name: "printWcharLine", scope: !14, file: !14, line: 70, type: !478, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !399}
!480 = !DILocalVariable(name: "wideChar", arg: 1, scope: !477, file: !14, line: 70, type: !399)
!481 = !DILocation(line: 70, column: 29, scope: !477)
!482 = !DILocalVariable(name: "s", scope: !477, file: !14, line: 74, type: !483)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 64, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 2)
!486 = !DILocation(line: 74, column: 13, scope: !477)
!487 = !DILocation(line: 75, column: 16, scope: !477)
!488 = !DILocation(line: 75, column: 9, scope: !477)
!489 = !DILocation(line: 75, column: 14, scope: !477)
!490 = !DILocation(line: 76, column: 9, scope: !477)
!491 = !DILocation(line: 76, column: 14, scope: !477)
!492 = !DILocation(line: 77, column: 21, scope: !477)
!493 = !DILocation(line: 77, column: 5, scope: !477)
!494 = !DILocation(line: 78, column: 1, scope: !477)
!495 = distinct !DISubprogram(name: "printUnsignedLine", scope: !14, file: !14, line: 80, type: !496, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !18}
!498 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !495, file: !14, line: 80, type: !18)
!499 = !DILocation(line: 80, column: 33, scope: !495)
!500 = !DILocation(line: 82, column: 20, scope: !495)
!501 = !DILocation(line: 82, column: 5, scope: !495)
!502 = !DILocation(line: 83, column: 1, scope: !495)
!503 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !14, file: !14, line: 85, type: !504, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !34}
!506 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !503, file: !14, line: 85, type: !34)
!507 = !DILocation(line: 85, column: 45, scope: !503)
!508 = !DILocation(line: 87, column: 22, scope: !503)
!509 = !DILocation(line: 87, column: 5, scope: !503)
!510 = !DILocation(line: 88, column: 1, scope: !503)
!511 = distinct !DISubprogram(name: "printDoubleLine", scope: !14, file: !14, line: 90, type: !512, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !514}
!514 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!515 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !511, file: !14, line: 90, type: !514)
!516 = !DILocation(line: 90, column: 29, scope: !511)
!517 = !DILocation(line: 92, column: 20, scope: !511)
!518 = !DILocation(line: 92, column: 5, scope: !511)
!519 = !DILocation(line: 93, column: 1, scope: !511)
!520 = distinct !DISubprogram(name: "printStructLine", scope: !14, file: !14, line: 95, type: !521, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !525, line: 100, baseType: !526)
!525 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_567/source_code")
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !525, line: 96, size: 64, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !526, file: !525, line: 98, baseType: !10, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !526, file: !525, line: 99, baseType: !10, size: 32, offset: 32)
!530 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !520, file: !14, line: 95, type: !523)
!531 = !DILocation(line: 95, column: 40, scope: !520)
!532 = !DILocation(line: 97, column: 26, scope: !520)
!533 = !DILocation(line: 97, column: 47, scope: !520)
!534 = !DILocation(line: 97, column: 55, scope: !520)
!535 = !DILocation(line: 97, column: 76, scope: !520)
!536 = !DILocation(line: 97, column: 5, scope: !520)
!537 = !DILocation(line: 98, column: 1, scope: !520)
!538 = distinct !DISubprogram(name: "printBytesLine", scope: !14, file: !14, line: 100, type: !539, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !541, !462}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!542 = !DILocalVariable(name: "bytes", arg: 1, scope: !538, file: !14, line: 100, type: !541)
!543 = !DILocation(line: 100, column: 38, scope: !538)
!544 = !DILocalVariable(name: "numBytes", arg: 2, scope: !538, file: !14, line: 100, type: !462)
!545 = !DILocation(line: 100, column: 52, scope: !538)
!546 = !DILocalVariable(name: "i", scope: !538, file: !14, line: 102, type: !462)
!547 = !DILocation(line: 102, column: 12, scope: !538)
!548 = !DILocation(line: 103, column: 12, scope: !549)
!549 = distinct !DILexicalBlock(scope: !538, file: !14, line: 103, column: 5)
!550 = !DILocation(line: 103, column: 10, scope: !549)
!551 = !DILocation(line: 103, column: 17, scope: !552)
!552 = distinct !DILexicalBlock(scope: !549, file: !14, line: 103, column: 5)
!553 = !DILocation(line: 103, column: 21, scope: !552)
!554 = !DILocation(line: 103, column: 19, scope: !552)
!555 = !DILocation(line: 103, column: 5, scope: !549)
!556 = !DILocation(line: 105, column: 24, scope: !557)
!557 = distinct !DILexicalBlock(scope: !552, file: !14, line: 104, column: 5)
!558 = !DILocation(line: 105, column: 30, scope: !557)
!559 = !DILocation(line: 105, column: 9, scope: !557)
!560 = !DILocation(line: 106, column: 5, scope: !557)
!561 = !DILocation(line: 103, column: 31, scope: !552)
!562 = !DILocation(line: 103, column: 5, scope: !552)
!563 = distinct !{!563, !555, !564, !123}
!564 = !DILocation(line: 106, column: 5, scope: !549)
!565 = !DILocation(line: 107, column: 5, scope: !538)
!566 = !DILocation(line: 108, column: 1, scope: !538)
!567 = distinct !DISubprogram(name: "decodeHexChars", scope: !14, file: !14, line: 113, type: !568, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!568 = !DISubroutineType(types: !569)
!569 = !{!462, !541, !462, !51}
!570 = !DILocalVariable(name: "bytes", arg: 1, scope: !567, file: !14, line: 113, type: !541)
!571 = !DILocation(line: 113, column: 39, scope: !567)
!572 = !DILocalVariable(name: "numBytes", arg: 2, scope: !567, file: !14, line: 113, type: !462)
!573 = !DILocation(line: 113, column: 53, scope: !567)
!574 = !DILocalVariable(name: "hex", arg: 3, scope: !567, file: !14, line: 113, type: !51)
!575 = !DILocation(line: 113, column: 71, scope: !567)
!576 = !DILocalVariable(name: "numWritten", scope: !567, file: !14, line: 115, type: !462)
!577 = !DILocation(line: 115, column: 12, scope: !567)
!578 = !DILocation(line: 121, column: 5, scope: !567)
!579 = !DILocation(line: 121, column: 12, scope: !567)
!580 = !DILocation(line: 121, column: 25, scope: !567)
!581 = !DILocation(line: 121, column: 23, scope: !567)
!582 = !DILocation(line: 121, column: 34, scope: !567)
!583 = !DILocation(line: 121, column: 37, scope: !567)
!584 = !DILocation(line: 121, column: 67, scope: !567)
!585 = !DILocation(line: 121, column: 70, scope: !567)
!586 = !DILocation(line: 0, scope: !567)
!587 = !DILocalVariable(name: "byte", scope: !588, file: !14, line: 123, type: !10)
!588 = distinct !DILexicalBlock(scope: !567, file: !14, line: 122, column: 5)
!589 = !DILocation(line: 123, column: 13, scope: !588)
!590 = !DILocation(line: 124, column: 17, scope: !588)
!591 = !DILocation(line: 124, column: 25, scope: !588)
!592 = !DILocation(line: 124, column: 23, scope: !588)
!593 = !DILocation(line: 124, column: 9, scope: !588)
!594 = !DILocation(line: 125, column: 45, scope: !588)
!595 = !DILocation(line: 125, column: 29, scope: !588)
!596 = !DILocation(line: 125, column: 9, scope: !588)
!597 = !DILocation(line: 125, column: 15, scope: !588)
!598 = !DILocation(line: 125, column: 27, scope: !588)
!599 = !DILocation(line: 126, column: 9, scope: !588)
!600 = distinct !{!600, !578, !601, !123}
!601 = !DILocation(line: 127, column: 5, scope: !567)
!602 = !DILocation(line: 129, column: 12, scope: !567)
!603 = !DILocation(line: 129, column: 5, scope: !567)
!604 = distinct !DISubprogram(name: "decodeHexWChars", scope: !14, file: !14, line: 135, type: !605, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!605 = !DISubroutineType(types: !606)
!606 = !{!462, !541, !462, !398}
!607 = !DILocalVariable(name: "bytes", arg: 1, scope: !604, file: !14, line: 135, type: !541)
!608 = !DILocation(line: 135, column: 41, scope: !604)
!609 = !DILocalVariable(name: "numBytes", arg: 2, scope: !604, file: !14, line: 135, type: !462)
!610 = !DILocation(line: 135, column: 55, scope: !604)
!611 = !DILocalVariable(name: "hex", arg: 3, scope: !604, file: !14, line: 135, type: !398)
!612 = !DILocation(line: 135, column: 76, scope: !604)
!613 = !DILocalVariable(name: "numWritten", scope: !604, file: !14, line: 137, type: !462)
!614 = !DILocation(line: 137, column: 12, scope: !604)
!615 = !DILocation(line: 143, column: 5, scope: !604)
!616 = !DILocation(line: 143, column: 12, scope: !604)
!617 = !DILocation(line: 143, column: 25, scope: !604)
!618 = !DILocation(line: 143, column: 23, scope: !604)
!619 = !DILocation(line: 143, column: 34, scope: !604)
!620 = !DILocation(line: 143, column: 47, scope: !604)
!621 = !DILocation(line: 143, column: 55, scope: !604)
!622 = !DILocation(line: 143, column: 53, scope: !604)
!623 = !DILocation(line: 143, column: 37, scope: !604)
!624 = !DILocation(line: 143, column: 68, scope: !604)
!625 = !DILocation(line: 143, column: 81, scope: !604)
!626 = !DILocation(line: 143, column: 89, scope: !604)
!627 = !DILocation(line: 143, column: 87, scope: !604)
!628 = !DILocation(line: 143, column: 100, scope: !604)
!629 = !DILocation(line: 143, column: 71, scope: !604)
!630 = !DILocation(line: 0, scope: !604)
!631 = !DILocalVariable(name: "byte", scope: !632, file: !14, line: 145, type: !10)
!632 = distinct !DILexicalBlock(scope: !604, file: !14, line: 144, column: 5)
!633 = !DILocation(line: 145, column: 13, scope: !632)
!634 = !DILocation(line: 146, column: 18, scope: !632)
!635 = !DILocation(line: 146, column: 26, scope: !632)
!636 = !DILocation(line: 146, column: 24, scope: !632)
!637 = !DILocation(line: 146, column: 9, scope: !632)
!638 = !DILocation(line: 147, column: 45, scope: !632)
!639 = !DILocation(line: 147, column: 29, scope: !632)
!640 = !DILocation(line: 147, column: 9, scope: !632)
!641 = !DILocation(line: 147, column: 15, scope: !632)
!642 = !DILocation(line: 147, column: 27, scope: !632)
!643 = !DILocation(line: 148, column: 9, scope: !632)
!644 = distinct !{!644, !615, !645, !123}
!645 = !DILocation(line: 149, column: 5, scope: !604)
!646 = !DILocation(line: 151, column: 12, scope: !604)
!647 = !DILocation(line: 151, column: 5, scope: !604)
!648 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !14, file: !14, line: 156, type: !649, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!649 = !DISubroutineType(types: !650)
!650 = !{!10}
!651 = !DILocation(line: 158, column: 5, scope: !648)
!652 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !14, file: !14, line: 161, type: !649, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!653 = !DILocation(line: 163, column: 5, scope: !652)
!654 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !14, file: !14, line: 166, type: !649, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!655 = !DILocation(line: 168, column: 13, scope: !654)
!656 = !DILocation(line: 168, column: 20, scope: !654)
!657 = !DILocation(line: 168, column: 5, scope: !654)
!658 = distinct !DISubprogram(name: "good1", scope: !14, file: !14, line: 187, type: !58, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!659 = !DILocation(line: 187, column: 16, scope: !658)
!660 = distinct !DISubprogram(name: "good2", scope: !14, file: !14, line: 188, type: !58, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!661 = !DILocation(line: 188, column: 16, scope: !660)
!662 = distinct !DISubprogram(name: "good3", scope: !14, file: !14, line: 189, type: !58, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!663 = !DILocation(line: 189, column: 16, scope: !662)
!664 = distinct !DISubprogram(name: "good4", scope: !14, file: !14, line: 190, type: !58, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!665 = !DILocation(line: 190, column: 16, scope: !664)
!666 = distinct !DISubprogram(name: "good5", scope: !14, file: !14, line: 191, type: !58, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!667 = !DILocation(line: 191, column: 16, scope: !666)
!668 = distinct !DISubprogram(name: "good6", scope: !14, file: !14, line: 192, type: !58, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!669 = !DILocation(line: 192, column: 16, scope: !668)
!670 = distinct !DISubprogram(name: "good7", scope: !14, file: !14, line: 193, type: !58, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!671 = !DILocation(line: 193, column: 16, scope: !670)
!672 = distinct !DISubprogram(name: "good8", scope: !14, file: !14, line: 194, type: !58, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!673 = !DILocation(line: 194, column: 16, scope: !672)
!674 = distinct !DISubprogram(name: "good9", scope: !14, file: !14, line: 195, type: !58, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!675 = !DILocation(line: 195, column: 16, scope: !674)
!676 = distinct !DISubprogram(name: "bad1", scope: !14, file: !14, line: 198, type: !58, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!677 = !DILocation(line: 198, column: 15, scope: !676)
!678 = distinct !DISubprogram(name: "bad2", scope: !14, file: !14, line: 199, type: !58, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!679 = !DILocation(line: 199, column: 15, scope: !678)
!680 = distinct !DISubprogram(name: "bad3", scope: !14, file: !14, line: 200, type: !58, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!681 = !DILocation(line: 200, column: 15, scope: !680)
!682 = distinct !DISubprogram(name: "bad4", scope: !14, file: !14, line: 201, type: !58, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!683 = !DILocation(line: 201, column: 15, scope: !682)
!684 = distinct !DISubprogram(name: "bad5", scope: !14, file: !14, line: 202, type: !58, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!685 = !DILocation(line: 202, column: 15, scope: !684)
!686 = distinct !DISubprogram(name: "bad6", scope: !14, file: !14, line: 203, type: !58, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!687 = !DILocation(line: 203, column: 15, scope: !686)
!688 = distinct !DISubprogram(name: "bad7", scope: !14, file: !14, line: 204, type: !58, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!689 = !DILocation(line: 204, column: 15, scope: !688)
!690 = distinct !DISubprogram(name: "bad8", scope: !14, file: !14, line: 205, type: !58, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!691 = !DILocation(line: 205, column: 15, scope: !690)
!692 = distinct !DISubprogram(name: "bad9", scope: !14, file: !14, line: 206, type: !58, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!693 = !DILocation(line: 206, column: 15, scope: !692)
