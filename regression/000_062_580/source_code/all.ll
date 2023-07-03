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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad() #0 !dbg !52 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i7 = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %i, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %j, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %data, metadata !59, metadata !DIExpression()), !dbg !60
  store i32 -1, i32* %data, align 4, !dbg !61
  store i32 0, i32* %i, align 4, !dbg !62
  br label %for.cond, !dbg !64

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !65
  %cmp = icmp slt i32 %0, 1, !dbg !67
  br i1 %cmp, label %for.body, label %for.end, !dbg !68

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !69, metadata !DIExpression()), !dbg !75
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !75
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !75
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !76
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !78
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !79
  %cmp1 = icmp ne i8* %call, null, !dbg !80
  br i1 %cmp1, label %if.then, label %if.else, !dbg !81

if.then:                                          ; preds = %for.body
  %arraydecay2 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !82
  %call3 = call i32 @atoi(i8* %arraydecay2) #7, !dbg !84
  store i32 %call3, i32* %data, align 4, !dbg !85
  br label %if.end, !dbg !86

if.else:                                          ; preds = %for.body
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !87
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !89

for.inc:                                          ; preds = %if.end
  %3 = load i32, i32* %i, align 4, !dbg !90
  %inc = add nsw i32 %3, 1, !dbg !90
  store i32 %inc, i32* %i, align 4, !dbg !90
  br label %for.cond, !dbg !91, !llvm.loop !92

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !95
  br label %for.cond4, !dbg !97

for.cond4:                                        ; preds = %for.inc20, %for.end
  %4 = load i32, i32* %j, align 4, !dbg !98
  %cmp5 = icmp slt i32 %4, 1, !dbg !100
  br i1 %cmp5, label %for.body6, label %for.end22, !dbg !101

for.body6:                                        ; preds = %for.cond4
  call void @llvm.dbg.declare(metadata i32* %i7, metadata !102, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !106, metadata !DIExpression()), !dbg !110
  %5 = bitcast [10 x i32]* %buffer to i8*, !dbg !110
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 40, i1 false), !dbg !110
  %6 = load i32, i32* %data, align 4, !dbg !111
  %cmp8 = icmp sge i32 %6, 0, !dbg !113
  br i1 %cmp8, label %if.then9, label %if.else18, !dbg !114

if.then9:                                         ; preds = %for.body6
  %7 = load i32, i32* %data, align 4, !dbg !115
  %idxprom = sext i32 %7 to i64, !dbg !117
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !117
  store i32 1, i32* %arrayidx, align 4, !dbg !118
  store i32 0, i32* %i7, align 4, !dbg !119
  br label %for.cond10, !dbg !121

for.cond10:                                       ; preds = %for.inc15, %if.then9
  %8 = load i32, i32* %i7, align 4, !dbg !122
  %cmp11 = icmp slt i32 %8, 10, !dbg !124
  br i1 %cmp11, label %for.body12, label %for.end17, !dbg !125

for.body12:                                       ; preds = %for.cond10
  %9 = load i32, i32* %i7, align 4, !dbg !126
  %idxprom13 = sext i32 %9 to i64, !dbg !128
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom13, !dbg !128
  %10 = load i32, i32* %arrayidx14, align 4, !dbg !128
  call void @printIntLine(i32 %10), !dbg !129
  br label %for.inc15, !dbg !130

for.inc15:                                        ; preds = %for.body12
  %11 = load i32, i32* %i7, align 4, !dbg !131
  %inc16 = add nsw i32 %11, 1, !dbg !131
  store i32 %inc16, i32* %i7, align 4, !dbg !131
  br label %for.cond10, !dbg !132, !llvm.loop !133

for.end17:                                        ; preds = %for.cond10
  br label %if.end19, !dbg !135

if.else18:                                        ; preds = %for.body6
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !136
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %for.end17
  br label %for.inc20, !dbg !138

for.inc20:                                        ; preds = %if.end19
  %12 = load i32, i32* %j, align 4, !dbg !139
  %inc21 = add nsw i32 %12, 1, !dbg !139
  store i32 %inc21, i32* %j, align 4, !dbg !139
  br label %for.cond4, !dbg !140, !llvm.loop !141

for.end22:                                        ; preds = %for.cond4
  ret void, !dbg !143
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !144 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i7 = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %i, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %k, metadata !147, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata i32* %data, metadata !149, metadata !DIExpression()), !dbg !150
  store i32 -1, i32* %data, align 4, !dbg !151
  store i32 0, i32* %i, align 4, !dbg !152
  br label %for.cond, !dbg !154

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !155
  %cmp = icmp slt i32 %0, 1, !dbg !157
  br i1 %cmp, label %for.body, label %for.end, !dbg !158

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !159, metadata !DIExpression()), !dbg !162
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !162
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !162
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !163
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !165
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !166
  %cmp1 = icmp ne i8* %call, null, !dbg !167
  br i1 %cmp1, label %if.then, label %if.else, !dbg !168

if.then:                                          ; preds = %for.body
  %arraydecay2 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !169
  %call3 = call i32 @atoi(i8* %arraydecay2) #7, !dbg !171
  store i32 %call3, i32* %data, align 4, !dbg !172
  br label %if.end, !dbg !173

if.else:                                          ; preds = %for.body
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !174
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !176

for.inc:                                          ; preds = %if.end
  %3 = load i32, i32* %i, align 4, !dbg !177
  %inc = add nsw i32 %3, 1, !dbg !177
  store i32 %inc, i32* %i, align 4, !dbg !177
  br label %for.cond, !dbg !178, !llvm.loop !179

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !181
  br label %for.cond4, !dbg !183

for.cond4:                                        ; preds = %for.inc21, %for.end
  %4 = load i32, i32* %k, align 4, !dbg !184
  %cmp5 = icmp slt i32 %4, 1, !dbg !186
  br i1 %cmp5, label %for.body6, label %for.end23, !dbg !187

for.body6:                                        ; preds = %for.cond4
  call void @llvm.dbg.declare(metadata i32* %i7, metadata !188, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !192, metadata !DIExpression()), !dbg !193
  %5 = bitcast [10 x i32]* %buffer to i8*, !dbg !193
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 40, i1 false), !dbg !193
  %6 = load i32, i32* %data, align 4, !dbg !194
  %cmp8 = icmp sge i32 %6, 0, !dbg !196
  br i1 %cmp8, label %land.lhs.true, label %if.else19, !dbg !197

land.lhs.true:                                    ; preds = %for.body6
  %7 = load i32, i32* %data, align 4, !dbg !198
  %cmp9 = icmp slt i32 %7, 10, !dbg !199
  br i1 %cmp9, label %if.then10, label %if.else19, !dbg !200

if.then10:                                        ; preds = %land.lhs.true
  %8 = load i32, i32* %data, align 4, !dbg !201
  %idxprom = sext i32 %8 to i64, !dbg !203
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !203
  store i32 1, i32* %arrayidx, align 4, !dbg !204
  store i32 0, i32* %i7, align 4, !dbg !205
  br label %for.cond11, !dbg !207

for.cond11:                                       ; preds = %for.inc16, %if.then10
  %9 = load i32, i32* %i7, align 4, !dbg !208
  %cmp12 = icmp slt i32 %9, 10, !dbg !210
  br i1 %cmp12, label %for.body13, label %for.end18, !dbg !211

for.body13:                                       ; preds = %for.cond11
  %10 = load i32, i32* %i7, align 4, !dbg !212
  %idxprom14 = sext i32 %10 to i64, !dbg !214
  %arrayidx15 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom14, !dbg !214
  %11 = load i32, i32* %arrayidx15, align 4, !dbg !214
  call void @printIntLine(i32 %11), !dbg !215
  br label %for.inc16, !dbg !216

for.inc16:                                        ; preds = %for.body13
  %12 = load i32, i32* %i7, align 4, !dbg !217
  %inc17 = add nsw i32 %12, 1, !dbg !217
  store i32 %inc17, i32* %i7, align 4, !dbg !217
  br label %for.cond11, !dbg !218, !llvm.loop !219

for.end18:                                        ; preds = %for.cond11
  br label %if.end20, !dbg !221

if.else19:                                        ; preds = %land.lhs.true, %for.body6
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !222
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %for.end18
  br label %for.inc21, !dbg !224

for.inc21:                                        ; preds = %if.end20
  %13 = load i32, i32* %k, align 4, !dbg !225
  %inc22 = add nsw i32 %13, 1, !dbg !225
  store i32 %inc22, i32* %k, align 4, !dbg !225
  br label %for.cond4, !dbg !226, !llvm.loop !227

for.end23:                                        ; preds = %for.cond4
  ret void, !dbg !229
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !230 {
entry:
  %h = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %h, metadata !231, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata i32* %j, metadata !233, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata i32* %data, metadata !235, metadata !DIExpression()), !dbg !236
  store i32 -1, i32* %data, align 4, !dbg !237
  store i32 0, i32* %h, align 4, !dbg !238
  br label %for.cond, !dbg !240

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %h, align 4, !dbg !241
  %cmp = icmp slt i32 %0, 1, !dbg !243
  br i1 %cmp, label %for.body, label %for.end, !dbg !244

for.body:                                         ; preds = %for.cond
  store i32 7, i32* %data, align 4, !dbg !245
  br label %for.inc, !dbg !247

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %h, align 4, !dbg !248
  %inc = add nsw i32 %1, 1, !dbg !248
  store i32 %inc, i32* %h, align 4, !dbg !248
  br label %for.cond, !dbg !249, !llvm.loop !250

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !252
  br label %for.cond1, !dbg !254

for.cond1:                                        ; preds = %for.inc13, %for.end
  %2 = load i32, i32* %j, align 4, !dbg !255
  %cmp2 = icmp slt i32 %2, 1, !dbg !257
  br i1 %cmp2, label %for.body3, label %for.end15, !dbg !258

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.declare(metadata i32* %i, metadata !259, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !263, metadata !DIExpression()), !dbg !264
  %3 = bitcast [10 x i32]* %buffer to i8*, !dbg !264
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !264
  %4 = load i32, i32* %data, align 4, !dbg !265
  %cmp4 = icmp sge i32 %4, 0, !dbg !267
  br i1 %cmp4, label %if.then, label %if.else, !dbg !268

if.then:                                          ; preds = %for.body3
  %5 = load i32, i32* %data, align 4, !dbg !269
  %idxprom = sext i32 %5 to i64, !dbg !271
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !271
  store i32 1, i32* %arrayidx, align 4, !dbg !272
  store i32 0, i32* %i, align 4, !dbg !273
  br label %for.cond5, !dbg !275

for.cond5:                                        ; preds = %for.inc10, %if.then
  %6 = load i32, i32* %i, align 4, !dbg !276
  %cmp6 = icmp slt i32 %6, 10, !dbg !278
  br i1 %cmp6, label %for.body7, label %for.end12, !dbg !279

for.body7:                                        ; preds = %for.cond5
  %7 = load i32, i32* %i, align 4, !dbg !280
  %idxprom8 = sext i32 %7 to i64, !dbg !282
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom8, !dbg !282
  %8 = load i32, i32* %arrayidx9, align 4, !dbg !282
  call void @printIntLine(i32 %8), !dbg !283
  br label %for.inc10, !dbg !284

for.inc10:                                        ; preds = %for.body7
  %9 = load i32, i32* %i, align 4, !dbg !285
  %inc11 = add nsw i32 %9, 1, !dbg !285
  store i32 %inc11, i32* %i, align 4, !dbg !285
  br label %for.cond5, !dbg !286, !llvm.loop !287

for.end12:                                        ; preds = %for.cond5
  br label %if.end, !dbg !289

if.else:                                          ; preds = %for.body3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !290
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end12
  br label %for.inc13, !dbg !292

for.inc13:                                        ; preds = %if.end
  %10 = load i32, i32* %j, align 4, !dbg !293
  %inc14 = add nsw i32 %10, 1, !dbg !293
  store i32 %inc14, i32* %j, align 4, !dbg !293
  br label %for.cond1, !dbg !294, !llvm.loop !295

for.end15:                                        ; preds = %for.cond1
  ret void, !dbg !297
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_good() #0 !dbg !298 {
entry:
  call void @goodB2G(), !dbg !299
  call void @goodG2B(), !dbg !300
  ret void, !dbg !301
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !302 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !305, metadata !DIExpression()), !dbg !306
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !307
  %0 = load i8*, i8** %line.addr, align 8, !dbg !308
  %cmp = icmp ne i8* %0, null, !dbg !310
  br i1 %cmp, label %if.then, label %if.end, !dbg !311

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !312
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !314
  br label %if.end, !dbg !315

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !316
  ret void, !dbg !317
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !318 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !319, metadata !DIExpression()), !dbg !320
  %0 = load i8*, i8** %line.addr, align 8, !dbg !321
  %cmp = icmp ne i8* %0, null, !dbg !323
  br i1 %cmp, label %if.then, label %if.end, !dbg !324

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !325
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !327
  br label %if.end, !dbg !328

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !329
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !330 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !336, metadata !DIExpression()), !dbg !337
  %0 = load i32*, i32** %line.addr, align 8, !dbg !338
  %cmp = icmp ne i32* %0, null, !dbg !340
  br i1 %cmp, label %if.then, label %if.end, !dbg !341

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !342
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !344
  br label %if.end, !dbg !345

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !346
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !347 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !350, metadata !DIExpression()), !dbg !351
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !352
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !353
  ret void, !dbg !354
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !355 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !359, metadata !DIExpression()), !dbg !360
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !361
  %conv = sext i16 %0 to i32, !dbg !361
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !362
  ret void, !dbg !363
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !364 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !368, metadata !DIExpression()), !dbg !369
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !370
  %conv = fpext float %0 to double, !dbg !370
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !371
  ret void, !dbg !372
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !373 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !377, metadata !DIExpression()), !dbg !378
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !379
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !380
  ret void, !dbg !381
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !382 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !389, metadata !DIExpression()), !dbg !390
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !391
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !392
  ret void, !dbg !393
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !394 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !399, metadata !DIExpression()), !dbg !400
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !401
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !402
  ret void, !dbg !403
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !404 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !407, metadata !DIExpression()), !dbg !408
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !409
  %conv = sext i8 %0 to i32, !dbg !409
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !410
  ret void, !dbg !411
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !412 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !415, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !417, metadata !DIExpression()), !dbg !421
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !422
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !423
  store i32 %0, i32* %arrayidx, align 4, !dbg !424
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !425
  store i32 0, i32* %arrayidx1, align 4, !dbg !426
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !427
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !428
  ret void, !dbg !429
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !430 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !433, metadata !DIExpression()), !dbg !434
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !435
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !436
  ret void, !dbg !437
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !438 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !441, metadata !DIExpression()), !dbg !442
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !443
  %conv = zext i8 %0 to i32, !dbg !443
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !444
  ret void, !dbg !445
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !446 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !452
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !453
  ret void, !dbg !454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !455 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !465, metadata !DIExpression()), !dbg !466
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !467
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !468
  %1 = load i32, i32* %intOne, align 4, !dbg !468
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !469
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !470
  %3 = load i32, i32* %intTwo, align 4, !dbg !470
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !471
  ret void, !dbg !472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !473 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !477, metadata !DIExpression()), !dbg !478
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !479, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.declare(metadata i64* %i, metadata !481, metadata !DIExpression()), !dbg !482
  store i64 0, i64* %i, align 8, !dbg !483
  br label %for.cond, !dbg !485

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !486
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !488
  %cmp = icmp ult i64 %0, %1, !dbg !489
  br i1 %cmp, label %for.body, label %for.end, !dbg !490

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !491
  %3 = load i64, i64* %i, align 8, !dbg !493
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !491
  %4 = load i8, i8* %arrayidx, align 1, !dbg !491
  %conv = zext i8 %4 to i32, !dbg !491
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !494
  br label %for.inc, !dbg !495

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !496
  %inc = add i64 %5, 1, !dbg !496
  store i64 %inc, i64* %i, align 8, !dbg !496
  br label %for.cond, !dbg !497, !llvm.loop !498

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !500
  ret void, !dbg !501
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !502 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !505, metadata !DIExpression()), !dbg !506
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !507, metadata !DIExpression()), !dbg !508
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !509, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !511, metadata !DIExpression()), !dbg !512
  store i64 0, i64* %numWritten, align 8, !dbg !512
  br label %while.cond, !dbg !513

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !514
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !515
  %cmp = icmp ult i64 %0, %1, !dbg !516
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !517

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !518
  %2 = load i16*, i16** %call, align 8, !dbg !518
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !518
  %4 = load i64, i64* %numWritten, align 8, !dbg !518
  %mul = mul i64 2, %4, !dbg !518
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !518
  %5 = load i8, i8* %arrayidx, align 1, !dbg !518
  %conv = sext i8 %5 to i32, !dbg !518
  %idxprom = sext i32 %conv to i64, !dbg !518
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !518
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !518
  %conv2 = zext i16 %6 to i32, !dbg !518
  %and = and i32 %conv2, 4096, !dbg !518
  %tobool = icmp ne i32 %and, 0, !dbg !518
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !519

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !520
  %7 = load i16*, i16** %call3, align 8, !dbg !520
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !520
  %9 = load i64, i64* %numWritten, align 8, !dbg !520
  %mul4 = mul i64 2, %9, !dbg !520
  %add = add i64 %mul4, 1, !dbg !520
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !520
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !520
  %conv6 = sext i8 %10 to i32, !dbg !520
  %idxprom7 = sext i32 %conv6 to i64, !dbg !520
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !520
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !520
  %conv9 = zext i16 %11 to i32, !dbg !520
  %and10 = and i32 %conv9, 4096, !dbg !520
  %tobool11 = icmp ne i32 %and10, 0, !dbg !519
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !521
  br i1 %12, label %while.body, label %while.end, !dbg !513

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !522, metadata !DIExpression()), !dbg !524
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !525
  %14 = load i64, i64* %numWritten, align 8, !dbg !526
  %mul12 = mul i64 2, %14, !dbg !527
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !525
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !528
  %15 = load i32, i32* %byte, align 4, !dbg !529
  %conv15 = trunc i32 %15 to i8, !dbg !530
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !531
  %17 = load i64, i64* %numWritten, align 8, !dbg !532
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !531
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !533
  %18 = load i64, i64* %numWritten, align 8, !dbg !534
  %inc = add i64 %18, 1, !dbg !534
  store i64 %inc, i64* %numWritten, align 8, !dbg !534
  br label %while.cond, !dbg !513, !llvm.loop !535

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !537
  ret i64 %19, !dbg !538
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !539 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !542, metadata !DIExpression()), !dbg !543
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !544, metadata !DIExpression()), !dbg !545
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !546, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !548, metadata !DIExpression()), !dbg !549
  store i64 0, i64* %numWritten, align 8, !dbg !549
  br label %while.cond, !dbg !550

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !551
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !552
  %cmp = icmp ult i64 %0, %1, !dbg !553
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !554

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !555
  %3 = load i64, i64* %numWritten, align 8, !dbg !556
  %mul = mul i64 2, %3, !dbg !557
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !555
  %4 = load i32, i32* %arrayidx, align 4, !dbg !555
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !558
  %tobool = icmp ne i32 %call, 0, !dbg !558
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !559

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !560
  %6 = load i64, i64* %numWritten, align 8, !dbg !561
  %mul1 = mul i64 2, %6, !dbg !562
  %add = add i64 %mul1, 1, !dbg !563
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !560
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !560
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !564
  %tobool4 = icmp ne i32 %call3, 0, !dbg !559
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !565
  br i1 %8, label %while.body, label %while.end, !dbg !550

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !566, metadata !DIExpression()), !dbg !568
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !569
  %10 = load i64, i64* %numWritten, align 8, !dbg !570
  %mul5 = mul i64 2, %10, !dbg !571
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !569
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !572
  %11 = load i32, i32* %byte, align 4, !dbg !573
  %conv = trunc i32 %11 to i8, !dbg !574
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !575
  %13 = load i64, i64* %numWritten, align 8, !dbg !576
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !575
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !577
  %14 = load i64, i64* %numWritten, align 8, !dbg !578
  %inc = add i64 %14, 1, !dbg !578
  store i64 %inc, i64* %numWritten, align 8, !dbg !578
  br label %while.cond, !dbg !550, !llvm.loop !579

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !581
  ret i64 %15, !dbg !582
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !583 {
entry:
  ret i32 1, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !587 {
entry:
  ret i32 0, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !589 {
entry:
  %call = call i32 @rand() #9, !dbg !590
  %rem = srem i32 %call, 2, !dbg !591
  ret i32 %rem, !dbg !592
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !593 {
entry:
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !595 {
entry:
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !597 {
entry:
  ret void, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !599 {
entry:
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !601 {
entry:
  ret void, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !603 {
entry:
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !605 {
entry:
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !607 {
entry:
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !609 {
entry:
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !611 {
entry:
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !613 {
entry:
  ret void, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !615 {
entry:
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !617 {
entry:
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !619 {
entry:
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !621 {
entry:
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !623 {
entry:
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !625 {
entry:
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !627 {
entry:
  ret void, !dbg !628
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_580/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_580/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad", scope: !45, file: !45, line: 25, type: !53, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "i", scope: !52, file: !45, line: 27, type: !23)
!56 = !DILocation(line: 27, column: 9, scope: !52)
!57 = !DILocalVariable(name: "j", scope: !52, file: !45, line: 27, type: !23)
!58 = !DILocation(line: 27, column: 11, scope: !52)
!59 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 28, type: !23)
!60 = !DILocation(line: 28, column: 9, scope: !52)
!61 = !DILocation(line: 30, column: 10, scope: !52)
!62 = !DILocation(line: 31, column: 11, scope: !63)
!63 = distinct !DILexicalBlock(scope: !52, file: !45, line: 31, column: 5)
!64 = !DILocation(line: 31, column: 9, scope: !63)
!65 = !DILocation(line: 31, column: 16, scope: !66)
!66 = distinct !DILexicalBlock(scope: !63, file: !45, line: 31, column: 5)
!67 = !DILocation(line: 31, column: 18, scope: !66)
!68 = !DILocation(line: 31, column: 5, scope: !63)
!69 = !DILocalVariable(name: "inputBuffer", scope: !70, file: !45, line: 34, type: !72)
!70 = distinct !DILexicalBlock(scope: !71, file: !45, line: 33, column: 9)
!71 = distinct !DILexicalBlock(scope: !66, file: !45, line: 32, column: 5)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 112, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 14)
!75 = !DILocation(line: 34, column: 18, scope: !70)
!76 = !DILocation(line: 36, column: 23, scope: !77)
!77 = distinct !DILexicalBlock(scope: !70, file: !45, line: 36, column: 17)
!78 = !DILocation(line: 36, column: 53, scope: !77)
!79 = !DILocation(line: 36, column: 17, scope: !77)
!80 = !DILocation(line: 36, column: 60, scope: !77)
!81 = !DILocation(line: 36, column: 17, scope: !70)
!82 = !DILocation(line: 39, column: 29, scope: !83)
!83 = distinct !DILexicalBlock(scope: !77, file: !45, line: 37, column: 13)
!84 = !DILocation(line: 39, column: 24, scope: !83)
!85 = !DILocation(line: 39, column: 22, scope: !83)
!86 = !DILocation(line: 40, column: 13, scope: !83)
!87 = !DILocation(line: 43, column: 17, scope: !88)
!88 = distinct !DILexicalBlock(scope: !77, file: !45, line: 42, column: 13)
!89 = !DILocation(line: 46, column: 5, scope: !71)
!90 = !DILocation(line: 31, column: 24, scope: !66)
!91 = !DILocation(line: 31, column: 5, scope: !66)
!92 = distinct !{!92, !68, !93, !94}
!93 = !DILocation(line: 46, column: 5, scope: !63)
!94 = !{!"llvm.loop.mustprogress"}
!95 = !DILocation(line: 47, column: 11, scope: !96)
!96 = distinct !DILexicalBlock(scope: !52, file: !45, line: 47, column: 5)
!97 = !DILocation(line: 47, column: 9, scope: !96)
!98 = !DILocation(line: 47, column: 16, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !45, line: 47, column: 5)
!100 = !DILocation(line: 47, column: 18, scope: !99)
!101 = !DILocation(line: 47, column: 5, scope: !96)
!102 = !DILocalVariable(name: "i", scope: !103, file: !45, line: 50, type: !23)
!103 = distinct !DILexicalBlock(scope: !104, file: !45, line: 49, column: 9)
!104 = distinct !DILexicalBlock(scope: !99, file: !45, line: 48, column: 5)
!105 = !DILocation(line: 50, column: 17, scope: !103)
!106 = !DILocalVariable(name: "buffer", scope: !103, file: !45, line: 51, type: !107)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 10)
!110 = !DILocation(line: 51, column: 17, scope: !103)
!111 = !DILocation(line: 54, column: 17, scope: !112)
!112 = distinct !DILexicalBlock(scope: !103, file: !45, line: 54, column: 17)
!113 = !DILocation(line: 54, column: 22, scope: !112)
!114 = !DILocation(line: 54, column: 17, scope: !103)
!115 = !DILocation(line: 56, column: 24, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !45, line: 55, column: 13)
!117 = !DILocation(line: 56, column: 17, scope: !116)
!118 = !DILocation(line: 56, column: 30, scope: !116)
!119 = !DILocation(line: 58, column: 23, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !45, line: 58, column: 17)
!121 = !DILocation(line: 58, column: 21, scope: !120)
!122 = !DILocation(line: 58, column: 28, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !45, line: 58, column: 17)
!124 = !DILocation(line: 58, column: 30, scope: !123)
!125 = !DILocation(line: 58, column: 17, scope: !120)
!126 = !DILocation(line: 60, column: 41, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !45, line: 59, column: 17)
!128 = !DILocation(line: 60, column: 34, scope: !127)
!129 = !DILocation(line: 60, column: 21, scope: !127)
!130 = !DILocation(line: 61, column: 17, scope: !127)
!131 = !DILocation(line: 58, column: 37, scope: !123)
!132 = !DILocation(line: 58, column: 17, scope: !123)
!133 = distinct !{!133, !125, !134, !94}
!134 = !DILocation(line: 61, column: 17, scope: !120)
!135 = !DILocation(line: 62, column: 13, scope: !116)
!136 = !DILocation(line: 65, column: 17, scope: !137)
!137 = distinct !DILexicalBlock(scope: !112, file: !45, line: 64, column: 13)
!138 = !DILocation(line: 68, column: 5, scope: !104)
!139 = !DILocation(line: 47, column: 24, scope: !99)
!140 = !DILocation(line: 47, column: 5, scope: !99)
!141 = distinct !{!141, !101, !142, !94}
!142 = !DILocation(line: 68, column: 5, scope: !96)
!143 = !DILocation(line: 69, column: 1, scope: !52)
!144 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 76, type: !53, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!145 = !DILocalVariable(name: "i", scope: !144, file: !45, line: 78, type: !23)
!146 = !DILocation(line: 78, column: 9, scope: !144)
!147 = !DILocalVariable(name: "k", scope: !144, file: !45, line: 78, type: !23)
!148 = !DILocation(line: 78, column: 11, scope: !144)
!149 = !DILocalVariable(name: "data", scope: !144, file: !45, line: 79, type: !23)
!150 = !DILocation(line: 79, column: 9, scope: !144)
!151 = !DILocation(line: 81, column: 10, scope: !144)
!152 = !DILocation(line: 82, column: 11, scope: !153)
!153 = distinct !DILexicalBlock(scope: !144, file: !45, line: 82, column: 5)
!154 = !DILocation(line: 82, column: 9, scope: !153)
!155 = !DILocation(line: 82, column: 16, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !45, line: 82, column: 5)
!157 = !DILocation(line: 82, column: 18, scope: !156)
!158 = !DILocation(line: 82, column: 5, scope: !153)
!159 = !DILocalVariable(name: "inputBuffer", scope: !160, file: !45, line: 85, type: !72)
!160 = distinct !DILexicalBlock(scope: !161, file: !45, line: 84, column: 9)
!161 = distinct !DILexicalBlock(scope: !156, file: !45, line: 83, column: 5)
!162 = !DILocation(line: 85, column: 18, scope: !160)
!163 = !DILocation(line: 87, column: 23, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !45, line: 87, column: 17)
!165 = !DILocation(line: 87, column: 53, scope: !164)
!166 = !DILocation(line: 87, column: 17, scope: !164)
!167 = !DILocation(line: 87, column: 60, scope: !164)
!168 = !DILocation(line: 87, column: 17, scope: !160)
!169 = !DILocation(line: 90, column: 29, scope: !170)
!170 = distinct !DILexicalBlock(scope: !164, file: !45, line: 88, column: 13)
!171 = !DILocation(line: 90, column: 24, scope: !170)
!172 = !DILocation(line: 90, column: 22, scope: !170)
!173 = !DILocation(line: 91, column: 13, scope: !170)
!174 = !DILocation(line: 94, column: 17, scope: !175)
!175 = distinct !DILexicalBlock(scope: !164, file: !45, line: 93, column: 13)
!176 = !DILocation(line: 97, column: 5, scope: !161)
!177 = !DILocation(line: 82, column: 24, scope: !156)
!178 = !DILocation(line: 82, column: 5, scope: !156)
!179 = distinct !{!179, !158, !180, !94}
!180 = !DILocation(line: 97, column: 5, scope: !153)
!181 = !DILocation(line: 98, column: 11, scope: !182)
!182 = distinct !DILexicalBlock(scope: !144, file: !45, line: 98, column: 5)
!183 = !DILocation(line: 98, column: 9, scope: !182)
!184 = !DILocation(line: 98, column: 16, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !45, line: 98, column: 5)
!186 = !DILocation(line: 98, column: 18, scope: !185)
!187 = !DILocation(line: 98, column: 5, scope: !182)
!188 = !DILocalVariable(name: "i", scope: !189, file: !45, line: 101, type: !23)
!189 = distinct !DILexicalBlock(scope: !190, file: !45, line: 100, column: 9)
!190 = distinct !DILexicalBlock(scope: !185, file: !45, line: 99, column: 5)
!191 = !DILocation(line: 101, column: 17, scope: !189)
!192 = !DILocalVariable(name: "buffer", scope: !189, file: !45, line: 102, type: !107)
!193 = !DILocation(line: 102, column: 17, scope: !189)
!194 = !DILocation(line: 104, column: 17, scope: !195)
!195 = distinct !DILexicalBlock(scope: !189, file: !45, line: 104, column: 17)
!196 = !DILocation(line: 104, column: 22, scope: !195)
!197 = !DILocation(line: 104, column: 27, scope: !195)
!198 = !DILocation(line: 104, column: 30, scope: !195)
!199 = !DILocation(line: 104, column: 35, scope: !195)
!200 = !DILocation(line: 104, column: 17, scope: !189)
!201 = !DILocation(line: 106, column: 24, scope: !202)
!202 = distinct !DILexicalBlock(scope: !195, file: !45, line: 105, column: 13)
!203 = !DILocation(line: 106, column: 17, scope: !202)
!204 = !DILocation(line: 106, column: 30, scope: !202)
!205 = !DILocation(line: 108, column: 23, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !45, line: 108, column: 17)
!207 = !DILocation(line: 108, column: 21, scope: !206)
!208 = !DILocation(line: 108, column: 28, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !45, line: 108, column: 17)
!210 = !DILocation(line: 108, column: 30, scope: !209)
!211 = !DILocation(line: 108, column: 17, scope: !206)
!212 = !DILocation(line: 110, column: 41, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !45, line: 109, column: 17)
!214 = !DILocation(line: 110, column: 34, scope: !213)
!215 = !DILocation(line: 110, column: 21, scope: !213)
!216 = !DILocation(line: 111, column: 17, scope: !213)
!217 = !DILocation(line: 108, column: 37, scope: !209)
!218 = !DILocation(line: 108, column: 17, scope: !209)
!219 = distinct !{!219, !211, !220, !94}
!220 = !DILocation(line: 111, column: 17, scope: !206)
!221 = !DILocation(line: 112, column: 13, scope: !202)
!222 = !DILocation(line: 115, column: 17, scope: !223)
!223 = distinct !DILexicalBlock(scope: !195, file: !45, line: 114, column: 13)
!224 = !DILocation(line: 118, column: 5, scope: !190)
!225 = !DILocation(line: 98, column: 24, scope: !185)
!226 = !DILocation(line: 98, column: 5, scope: !185)
!227 = distinct !{!227, !187, !228, !94}
!228 = !DILocation(line: 118, column: 5, scope: !182)
!229 = !DILocation(line: 119, column: 1, scope: !144)
!230 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 122, type: !53, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!231 = !DILocalVariable(name: "h", scope: !230, file: !45, line: 124, type: !23)
!232 = !DILocation(line: 124, column: 9, scope: !230)
!233 = !DILocalVariable(name: "j", scope: !230, file: !45, line: 124, type: !23)
!234 = !DILocation(line: 124, column: 11, scope: !230)
!235 = !DILocalVariable(name: "data", scope: !230, file: !45, line: 125, type: !23)
!236 = !DILocation(line: 125, column: 9, scope: !230)
!237 = !DILocation(line: 127, column: 10, scope: !230)
!238 = !DILocation(line: 128, column: 11, scope: !239)
!239 = distinct !DILexicalBlock(scope: !230, file: !45, line: 128, column: 5)
!240 = !DILocation(line: 128, column: 9, scope: !239)
!241 = !DILocation(line: 128, column: 16, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !45, line: 128, column: 5)
!243 = !DILocation(line: 128, column: 18, scope: !242)
!244 = !DILocation(line: 128, column: 5, scope: !239)
!245 = !DILocation(line: 132, column: 14, scope: !246)
!246 = distinct !DILexicalBlock(scope: !242, file: !45, line: 129, column: 5)
!247 = !DILocation(line: 133, column: 5, scope: !246)
!248 = !DILocation(line: 128, column: 24, scope: !242)
!249 = !DILocation(line: 128, column: 5, scope: !242)
!250 = distinct !{!250, !244, !251, !94}
!251 = !DILocation(line: 133, column: 5, scope: !239)
!252 = !DILocation(line: 134, column: 11, scope: !253)
!253 = distinct !DILexicalBlock(scope: !230, file: !45, line: 134, column: 5)
!254 = !DILocation(line: 134, column: 9, scope: !253)
!255 = !DILocation(line: 134, column: 16, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !45, line: 134, column: 5)
!257 = !DILocation(line: 134, column: 18, scope: !256)
!258 = !DILocation(line: 134, column: 5, scope: !253)
!259 = !DILocalVariable(name: "i", scope: !260, file: !45, line: 137, type: !23)
!260 = distinct !DILexicalBlock(scope: !261, file: !45, line: 136, column: 9)
!261 = distinct !DILexicalBlock(scope: !256, file: !45, line: 135, column: 5)
!262 = !DILocation(line: 137, column: 17, scope: !260)
!263 = !DILocalVariable(name: "buffer", scope: !260, file: !45, line: 138, type: !107)
!264 = !DILocation(line: 138, column: 17, scope: !260)
!265 = !DILocation(line: 141, column: 17, scope: !266)
!266 = distinct !DILexicalBlock(scope: !260, file: !45, line: 141, column: 17)
!267 = !DILocation(line: 141, column: 22, scope: !266)
!268 = !DILocation(line: 141, column: 17, scope: !260)
!269 = !DILocation(line: 143, column: 24, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !45, line: 142, column: 13)
!271 = !DILocation(line: 143, column: 17, scope: !270)
!272 = !DILocation(line: 143, column: 30, scope: !270)
!273 = !DILocation(line: 145, column: 23, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !45, line: 145, column: 17)
!275 = !DILocation(line: 145, column: 21, scope: !274)
!276 = !DILocation(line: 145, column: 28, scope: !277)
!277 = distinct !DILexicalBlock(scope: !274, file: !45, line: 145, column: 17)
!278 = !DILocation(line: 145, column: 30, scope: !277)
!279 = !DILocation(line: 145, column: 17, scope: !274)
!280 = !DILocation(line: 147, column: 41, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !45, line: 146, column: 17)
!282 = !DILocation(line: 147, column: 34, scope: !281)
!283 = !DILocation(line: 147, column: 21, scope: !281)
!284 = !DILocation(line: 148, column: 17, scope: !281)
!285 = !DILocation(line: 145, column: 37, scope: !277)
!286 = !DILocation(line: 145, column: 17, scope: !277)
!287 = distinct !{!287, !279, !288, !94}
!288 = !DILocation(line: 148, column: 17, scope: !274)
!289 = !DILocation(line: 149, column: 13, scope: !270)
!290 = !DILocation(line: 152, column: 17, scope: !291)
!291 = distinct !DILexicalBlock(scope: !266, file: !45, line: 151, column: 13)
!292 = !DILocation(line: 155, column: 5, scope: !261)
!293 = !DILocation(line: 134, column: 24, scope: !256)
!294 = !DILocation(line: 134, column: 5, scope: !256)
!295 = distinct !{!295, !258, !296, !94}
!296 = !DILocation(line: 155, column: 5, scope: !253)
!297 = !DILocation(line: 156, column: 1, scope: !230)
!298 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_good", scope: !45, file: !45, line: 158, type: !53, scopeLine: 159, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!299 = !DILocation(line: 160, column: 5, scope: !298)
!300 = !DILocation(line: 161, column: 5, scope: !298)
!301 = !DILocation(line: 162, column: 1, scope: !298)
!302 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !303, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !42}
!305 = !DILocalVariable(name: "line", arg: 1, scope: !302, file: !3, line: 11, type: !42)
!306 = !DILocation(line: 11, column: 25, scope: !302)
!307 = !DILocation(line: 13, column: 1, scope: !302)
!308 = !DILocation(line: 14, column: 8, scope: !309)
!309 = distinct !DILexicalBlock(scope: !302, file: !3, line: 14, column: 8)
!310 = !DILocation(line: 14, column: 13, scope: !309)
!311 = !DILocation(line: 14, column: 8, scope: !302)
!312 = !DILocation(line: 16, column: 24, scope: !313)
!313 = distinct !DILexicalBlock(scope: !309, file: !3, line: 15, column: 5)
!314 = !DILocation(line: 16, column: 9, scope: !313)
!315 = !DILocation(line: 17, column: 5, scope: !313)
!316 = !DILocation(line: 18, column: 5, scope: !302)
!317 = !DILocation(line: 19, column: 1, scope: !302)
!318 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !303, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!319 = !DILocalVariable(name: "line", arg: 1, scope: !318, file: !3, line: 20, type: !42)
!320 = !DILocation(line: 20, column: 29, scope: !318)
!321 = !DILocation(line: 22, column: 8, scope: !322)
!322 = distinct !DILexicalBlock(scope: !318, file: !3, line: 22, column: 8)
!323 = !DILocation(line: 22, column: 13, scope: !322)
!324 = !DILocation(line: 22, column: 8, scope: !318)
!325 = !DILocation(line: 24, column: 24, scope: !326)
!326 = distinct !DILexicalBlock(scope: !322, file: !3, line: 23, column: 5)
!327 = !DILocation(line: 24, column: 9, scope: !326)
!328 = !DILocation(line: 25, column: 5, scope: !326)
!329 = !DILocation(line: 26, column: 1, scope: !318)
!330 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !331, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !333}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !335, line: 74, baseType: !23)
!335 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!336 = !DILocalVariable(name: "line", arg: 1, scope: !330, file: !3, line: 27, type: !333)
!337 = !DILocation(line: 27, column: 29, scope: !330)
!338 = !DILocation(line: 29, column: 8, scope: !339)
!339 = distinct !DILexicalBlock(scope: !330, file: !3, line: 29, column: 8)
!340 = !DILocation(line: 29, column: 13, scope: !339)
!341 = !DILocation(line: 29, column: 8, scope: !330)
!342 = !DILocation(line: 31, column: 27, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !3, line: 30, column: 5)
!344 = !DILocation(line: 31, column: 9, scope: !343)
!345 = !DILocation(line: 32, column: 5, scope: !343)
!346 = !DILocation(line: 33, column: 1, scope: !330)
!347 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !348, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !23}
!350 = !DILocalVariable(name: "intNumber", arg: 1, scope: !347, file: !3, line: 35, type: !23)
!351 = !DILocation(line: 35, column: 24, scope: !347)
!352 = !DILocation(line: 37, column: 20, scope: !347)
!353 = !DILocation(line: 37, column: 5, scope: !347)
!354 = !DILocation(line: 38, column: 1, scope: !347)
!355 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !356, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !358}
!358 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!359 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !355, file: !3, line: 40, type: !358)
!360 = !DILocation(line: 40, column: 28, scope: !355)
!361 = !DILocation(line: 42, column: 21, scope: !355)
!362 = !DILocation(line: 42, column: 5, scope: !355)
!363 = !DILocation(line: 43, column: 1, scope: !355)
!364 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !365, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !367}
!367 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!368 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !364, file: !3, line: 45, type: !367)
!369 = !DILocation(line: 45, column: 28, scope: !364)
!370 = !DILocation(line: 47, column: 20, scope: !364)
!371 = !DILocation(line: 47, column: 5, scope: !364)
!372 = !DILocation(line: 48, column: 1, scope: !364)
!373 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !374, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !376}
!376 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!377 = !DILocalVariable(name: "longNumber", arg: 1, scope: !373, file: !3, line: 50, type: !376)
!378 = !DILocation(line: 50, column: 26, scope: !373)
!379 = !DILocation(line: 52, column: 21, scope: !373)
!380 = !DILocation(line: 52, column: 5, scope: !373)
!381 = !DILocation(line: 53, column: 1, scope: !373)
!382 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !383, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !385}
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !386, line: 27, baseType: !387)
!386 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !388, line: 44, baseType: !376)
!388 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!389 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !382, file: !3, line: 55, type: !385)
!390 = !DILocation(line: 55, column: 33, scope: !382)
!391 = !DILocation(line: 57, column: 29, scope: !382)
!392 = !DILocation(line: 57, column: 5, scope: !382)
!393 = !DILocation(line: 58, column: 1, scope: !382)
!394 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !395, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !397}
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !335, line: 46, baseType: !398)
!398 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!399 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !394, file: !3, line: 60, type: !397)
!400 = !DILocation(line: 60, column: 29, scope: !394)
!401 = !DILocation(line: 62, column: 21, scope: !394)
!402 = !DILocation(line: 62, column: 5, scope: !394)
!403 = !DILocation(line: 63, column: 1, scope: !394)
!404 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !405, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !43}
!407 = !DILocalVariable(name: "charHex", arg: 1, scope: !404, file: !3, line: 65, type: !43)
!408 = !DILocation(line: 65, column: 29, scope: !404)
!409 = !DILocation(line: 67, column: 22, scope: !404)
!410 = !DILocation(line: 67, column: 5, scope: !404)
!411 = !DILocation(line: 68, column: 1, scope: !404)
!412 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !413, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !334}
!415 = !DILocalVariable(name: "wideChar", arg: 1, scope: !412, file: !3, line: 70, type: !334)
!416 = !DILocation(line: 70, column: 29, scope: !412)
!417 = !DILocalVariable(name: "s", scope: !412, file: !3, line: 74, type: !418)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 64, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 2)
!421 = !DILocation(line: 74, column: 13, scope: !412)
!422 = !DILocation(line: 75, column: 16, scope: !412)
!423 = !DILocation(line: 75, column: 9, scope: !412)
!424 = !DILocation(line: 75, column: 14, scope: !412)
!425 = !DILocation(line: 76, column: 9, scope: !412)
!426 = !DILocation(line: 76, column: 14, scope: !412)
!427 = !DILocation(line: 77, column: 21, scope: !412)
!428 = !DILocation(line: 77, column: 5, scope: !412)
!429 = !DILocation(line: 78, column: 1, scope: !412)
!430 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !431, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !7}
!433 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !430, file: !3, line: 80, type: !7)
!434 = !DILocation(line: 80, column: 33, scope: !430)
!435 = !DILocation(line: 82, column: 20, scope: !430)
!436 = !DILocation(line: 82, column: 5, scope: !430)
!437 = !DILocation(line: 83, column: 1, scope: !430)
!438 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !439, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !25}
!441 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !438, file: !3, line: 85, type: !25)
!442 = !DILocation(line: 85, column: 45, scope: !438)
!443 = !DILocation(line: 87, column: 22, scope: !438)
!444 = !DILocation(line: 87, column: 5, scope: !438)
!445 = !DILocation(line: 88, column: 1, scope: !438)
!446 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !447, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !449}
!449 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!450 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !446, file: !3, line: 90, type: !449)
!451 = !DILocation(line: 90, column: 29, scope: !446)
!452 = !DILocation(line: 92, column: 20, scope: !446)
!453 = !DILocation(line: 92, column: 5, scope: !446)
!454 = !DILocation(line: 93, column: 1, scope: !446)
!455 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !456, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !460, line: 100, baseType: !461)
!460 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_580/source_code")
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !460, line: 96, size: 64, elements: !462)
!462 = !{!463, !464}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !461, file: !460, line: 98, baseType: !23, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !461, file: !460, line: 99, baseType: !23, size: 32, offset: 32)
!465 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !455, file: !3, line: 95, type: !458)
!466 = !DILocation(line: 95, column: 40, scope: !455)
!467 = !DILocation(line: 97, column: 26, scope: !455)
!468 = !DILocation(line: 97, column: 47, scope: !455)
!469 = !DILocation(line: 97, column: 55, scope: !455)
!470 = !DILocation(line: 97, column: 76, scope: !455)
!471 = !DILocation(line: 97, column: 5, scope: !455)
!472 = !DILocation(line: 98, column: 1, scope: !455)
!473 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !474, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !476, !397}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!477 = !DILocalVariable(name: "bytes", arg: 1, scope: !473, file: !3, line: 100, type: !476)
!478 = !DILocation(line: 100, column: 38, scope: !473)
!479 = !DILocalVariable(name: "numBytes", arg: 2, scope: !473, file: !3, line: 100, type: !397)
!480 = !DILocation(line: 100, column: 52, scope: !473)
!481 = !DILocalVariable(name: "i", scope: !473, file: !3, line: 102, type: !397)
!482 = !DILocation(line: 102, column: 12, scope: !473)
!483 = !DILocation(line: 103, column: 12, scope: !484)
!484 = distinct !DILexicalBlock(scope: !473, file: !3, line: 103, column: 5)
!485 = !DILocation(line: 103, column: 10, scope: !484)
!486 = !DILocation(line: 103, column: 17, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !3, line: 103, column: 5)
!488 = !DILocation(line: 103, column: 21, scope: !487)
!489 = !DILocation(line: 103, column: 19, scope: !487)
!490 = !DILocation(line: 103, column: 5, scope: !484)
!491 = !DILocation(line: 105, column: 24, scope: !492)
!492 = distinct !DILexicalBlock(scope: !487, file: !3, line: 104, column: 5)
!493 = !DILocation(line: 105, column: 30, scope: !492)
!494 = !DILocation(line: 105, column: 9, scope: !492)
!495 = !DILocation(line: 106, column: 5, scope: !492)
!496 = !DILocation(line: 103, column: 31, scope: !487)
!497 = !DILocation(line: 103, column: 5, scope: !487)
!498 = distinct !{!498, !490, !499, !94}
!499 = !DILocation(line: 106, column: 5, scope: !484)
!500 = !DILocation(line: 107, column: 5, scope: !473)
!501 = !DILocation(line: 108, column: 1, scope: !473)
!502 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !503, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!503 = !DISubroutineType(types: !504)
!504 = !{!397, !476, !397, !42}
!505 = !DILocalVariable(name: "bytes", arg: 1, scope: !502, file: !3, line: 113, type: !476)
!506 = !DILocation(line: 113, column: 39, scope: !502)
!507 = !DILocalVariable(name: "numBytes", arg: 2, scope: !502, file: !3, line: 113, type: !397)
!508 = !DILocation(line: 113, column: 53, scope: !502)
!509 = !DILocalVariable(name: "hex", arg: 3, scope: !502, file: !3, line: 113, type: !42)
!510 = !DILocation(line: 113, column: 71, scope: !502)
!511 = !DILocalVariable(name: "numWritten", scope: !502, file: !3, line: 115, type: !397)
!512 = !DILocation(line: 115, column: 12, scope: !502)
!513 = !DILocation(line: 121, column: 5, scope: !502)
!514 = !DILocation(line: 121, column: 12, scope: !502)
!515 = !DILocation(line: 121, column: 25, scope: !502)
!516 = !DILocation(line: 121, column: 23, scope: !502)
!517 = !DILocation(line: 121, column: 34, scope: !502)
!518 = !DILocation(line: 121, column: 37, scope: !502)
!519 = !DILocation(line: 121, column: 67, scope: !502)
!520 = !DILocation(line: 121, column: 70, scope: !502)
!521 = !DILocation(line: 0, scope: !502)
!522 = !DILocalVariable(name: "byte", scope: !523, file: !3, line: 123, type: !23)
!523 = distinct !DILexicalBlock(scope: !502, file: !3, line: 122, column: 5)
!524 = !DILocation(line: 123, column: 13, scope: !523)
!525 = !DILocation(line: 124, column: 17, scope: !523)
!526 = !DILocation(line: 124, column: 25, scope: !523)
!527 = !DILocation(line: 124, column: 23, scope: !523)
!528 = !DILocation(line: 124, column: 9, scope: !523)
!529 = !DILocation(line: 125, column: 45, scope: !523)
!530 = !DILocation(line: 125, column: 29, scope: !523)
!531 = !DILocation(line: 125, column: 9, scope: !523)
!532 = !DILocation(line: 125, column: 15, scope: !523)
!533 = !DILocation(line: 125, column: 27, scope: !523)
!534 = !DILocation(line: 126, column: 9, scope: !523)
!535 = distinct !{!535, !513, !536, !94}
!536 = !DILocation(line: 127, column: 5, scope: !502)
!537 = !DILocation(line: 129, column: 12, scope: !502)
!538 = !DILocation(line: 129, column: 5, scope: !502)
!539 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !540, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DISubroutineType(types: !541)
!541 = !{!397, !476, !397, !333}
!542 = !DILocalVariable(name: "bytes", arg: 1, scope: !539, file: !3, line: 135, type: !476)
!543 = !DILocation(line: 135, column: 41, scope: !539)
!544 = !DILocalVariable(name: "numBytes", arg: 2, scope: !539, file: !3, line: 135, type: !397)
!545 = !DILocation(line: 135, column: 55, scope: !539)
!546 = !DILocalVariable(name: "hex", arg: 3, scope: !539, file: !3, line: 135, type: !333)
!547 = !DILocation(line: 135, column: 76, scope: !539)
!548 = !DILocalVariable(name: "numWritten", scope: !539, file: !3, line: 137, type: !397)
!549 = !DILocation(line: 137, column: 12, scope: !539)
!550 = !DILocation(line: 143, column: 5, scope: !539)
!551 = !DILocation(line: 143, column: 12, scope: !539)
!552 = !DILocation(line: 143, column: 25, scope: !539)
!553 = !DILocation(line: 143, column: 23, scope: !539)
!554 = !DILocation(line: 143, column: 34, scope: !539)
!555 = !DILocation(line: 143, column: 47, scope: !539)
!556 = !DILocation(line: 143, column: 55, scope: !539)
!557 = !DILocation(line: 143, column: 53, scope: !539)
!558 = !DILocation(line: 143, column: 37, scope: !539)
!559 = !DILocation(line: 143, column: 68, scope: !539)
!560 = !DILocation(line: 143, column: 81, scope: !539)
!561 = !DILocation(line: 143, column: 89, scope: !539)
!562 = !DILocation(line: 143, column: 87, scope: !539)
!563 = !DILocation(line: 143, column: 100, scope: !539)
!564 = !DILocation(line: 143, column: 71, scope: !539)
!565 = !DILocation(line: 0, scope: !539)
!566 = !DILocalVariable(name: "byte", scope: !567, file: !3, line: 145, type: !23)
!567 = distinct !DILexicalBlock(scope: !539, file: !3, line: 144, column: 5)
!568 = !DILocation(line: 145, column: 13, scope: !567)
!569 = !DILocation(line: 146, column: 18, scope: !567)
!570 = !DILocation(line: 146, column: 26, scope: !567)
!571 = !DILocation(line: 146, column: 24, scope: !567)
!572 = !DILocation(line: 146, column: 9, scope: !567)
!573 = !DILocation(line: 147, column: 45, scope: !567)
!574 = !DILocation(line: 147, column: 29, scope: !567)
!575 = !DILocation(line: 147, column: 9, scope: !567)
!576 = !DILocation(line: 147, column: 15, scope: !567)
!577 = !DILocation(line: 147, column: 27, scope: !567)
!578 = !DILocation(line: 148, column: 9, scope: !567)
!579 = distinct !{!579, !550, !580, !94}
!580 = !DILocation(line: 149, column: 5, scope: !539)
!581 = !DILocation(line: 151, column: 12, scope: !539)
!582 = !DILocation(line: 151, column: 5, scope: !539)
!583 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !584, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DISubroutineType(types: !585)
!585 = !{!23}
!586 = !DILocation(line: 158, column: 5, scope: !583)
!587 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !584, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DILocation(line: 163, column: 5, scope: !587)
!589 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !584, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DILocation(line: 168, column: 13, scope: !589)
!591 = !DILocation(line: 168, column: 20, scope: !589)
!592 = !DILocation(line: 168, column: 5, scope: !589)
!593 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DILocation(line: 187, column: 16, scope: !593)
!595 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DILocation(line: 188, column: 16, scope: !595)
!597 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DILocation(line: 189, column: 16, scope: !597)
!599 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DILocation(line: 190, column: 16, scope: !599)
!601 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!602 = !DILocation(line: 191, column: 16, scope: !601)
!603 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DILocation(line: 192, column: 16, scope: !603)
!605 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DILocation(line: 193, column: 16, scope: !605)
!607 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 194, column: 16, scope: !607)
!609 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DILocation(line: 195, column: 16, scope: !609)
!611 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DILocation(line: 198, column: 15, scope: !611)
!613 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DILocation(line: 199, column: 15, scope: !613)
!615 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!616 = !DILocation(line: 200, column: 15, scope: !615)
!617 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!618 = !DILocation(line: 201, column: 15, scope: !617)
!619 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!620 = !DILocation(line: 202, column: 15, scope: !619)
!621 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!622 = !DILocation(line: 203, column: 15, scope: !621)
!623 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!624 = !DILocation(line: 204, column: 15, scope: !623)
!625 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!626 = !DILocation(line: 205, column: 15, scope: !625)
!627 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!628 = !DILocation(line: 206, column: 15, scope: !627)
