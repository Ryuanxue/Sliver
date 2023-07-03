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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11_bad() #0 !dbg !52 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 -1, i32* %data, align 4, !dbg !57
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrue to i32 (...)*)(), !dbg !58
  %tobool = icmp ne i32 %call, 0, !dbg !58
  br i1 %tobool, label %if.then, label %if.end5, !dbg !60

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
  br label %if.end5, !dbg !81

if.end5:                                          ; preds = %if.end, %entry
  %call6 = call i32 (...) bitcast (i32 ()* @globalReturnsTrue to i32 (...)*)(), !dbg !82
  %tobool7 = icmp ne i32 %call6, 0, !dbg !82
  br i1 %tobool7, label %if.then8, label %if.end16, !dbg !84

if.then8:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !85, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !89, metadata !DIExpression()), !dbg !93
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !93
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !93
  %3 = load i32, i32* %data, align 4, !dbg !94
  %cmp9 = icmp sge i32 %3, 0, !dbg !96
  br i1 %cmp9, label %if.then10, label %if.else14, !dbg !97

if.then10:                                        ; preds = %if.then8
  %4 = load i32, i32* %data, align 4, !dbg !98
  %idxprom = sext i32 %4 to i64, !dbg !100
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !100
  store i32 1, i32* %arrayidx, align 4, !dbg !101
  store i32 0, i32* %i, align 4, !dbg !102
  br label %for.cond, !dbg !104

for.cond:                                         ; preds = %for.inc, %if.then10
  %5 = load i32, i32* %i, align 4, !dbg !105
  %cmp11 = icmp slt i32 %5, 10, !dbg !107
  br i1 %cmp11, label %for.body, label %for.end, !dbg !108

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !109
  %idxprom12 = sext i32 %6 to i64, !dbg !111
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom12, !dbg !111
  %7 = load i32, i32* %arrayidx13, align 4, !dbg !111
  call void @printIntLine(i32 %7), !dbg !112
  br label %for.inc, !dbg !113

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !114
  %inc = add nsw i32 %8, 1, !dbg !114
  store i32 %inc, i32* %i, align 4, !dbg !114
  br label %for.cond, !dbg !115, !llvm.loop !116

for.end:                                          ; preds = %for.cond
  br label %if.end15, !dbg !119

if.else14:                                        ; preds = %if.then8
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !120
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %for.end
  br label %if.end16, !dbg !122

if.end16:                                         ; preds = %if.end15, %if.end5
  ret void, !dbg !123
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !124 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !125, metadata !DIExpression()), !dbg !126
  store i32 -1, i32* %data, align 4, !dbg !127
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrue to i32 (...)*)(), !dbg !128
  %tobool = icmp ne i32 %call, 0, !dbg !128
  br i1 %tobool, label %if.then, label %if.end5, !dbg !130

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !131, metadata !DIExpression()), !dbg !134
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !134
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !134
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !135
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !137
  %call1 = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !138
  %cmp = icmp ne i8* %call1, null, !dbg !139
  br i1 %cmp, label %if.then2, label %if.else, !dbg !140

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !141
  %call4 = call i32 @atoi(i8* %arraydecay3) #7, !dbg !143
  store i32 %call4, i32* %data, align 4, !dbg !144
  br label %if.end, !dbg !145

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !146
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !148

if.end5:                                          ; preds = %if.end, %entry
  %call6 = call i32 (...) bitcast (i32 ()* @globalReturnsFalse to i32 (...)*)(), !dbg !149
  %tobool7 = icmp ne i32 %call6, 0, !dbg !149
  br i1 %tobool7, label %if.then8, label %if.else9, !dbg !151

if.then8:                                         ; preds = %if.end5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !152
  br label %if.end18, !dbg !154

if.else9:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !155, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !159, metadata !DIExpression()), !dbg !160
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !160
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !160
  %3 = load i32, i32* %data, align 4, !dbg !161
  %cmp10 = icmp sge i32 %3, 0, !dbg !163
  br i1 %cmp10, label %land.lhs.true, label %if.else16, !dbg !164

land.lhs.true:                                    ; preds = %if.else9
  %4 = load i32, i32* %data, align 4, !dbg !165
  %cmp11 = icmp slt i32 %4, 10, !dbg !166
  br i1 %cmp11, label %if.then12, label %if.else16, !dbg !167

if.then12:                                        ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !168
  %idxprom = sext i32 %5 to i64, !dbg !170
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !170
  store i32 1, i32* %arrayidx, align 4, !dbg !171
  store i32 0, i32* %i, align 4, !dbg !172
  br label %for.cond, !dbg !174

for.cond:                                         ; preds = %for.inc, %if.then12
  %6 = load i32, i32* %i, align 4, !dbg !175
  %cmp13 = icmp slt i32 %6, 10, !dbg !177
  br i1 %cmp13, label %for.body, label %for.end, !dbg !178

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !179
  %idxprom14 = sext i32 %7 to i64, !dbg !181
  %arrayidx15 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom14, !dbg !181
  %8 = load i32, i32* %arrayidx15, align 4, !dbg !181
  call void @printIntLine(i32 %8), !dbg !182
  br label %for.inc, !dbg !183

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !184
  %inc = add nsw i32 %9, 1, !dbg !184
  store i32 %inc, i32* %i, align 4, !dbg !184
  br label %for.cond, !dbg !185, !llvm.loop !186

for.end:                                          ; preds = %for.cond
  br label %if.end17, !dbg !188

if.else16:                                        ; preds = %land.lhs.true, %if.else9
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !189
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %for.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then8
  ret void, !dbg !191
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !192 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !193, metadata !DIExpression()), !dbg !194
  store i32 -1, i32* %data, align 4, !dbg !195
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrue to i32 (...)*)(), !dbg !196
  %tobool = icmp ne i32 %call, 0, !dbg !196
  br i1 %tobool, label %if.then, label %if.end5, !dbg !198

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !199, metadata !DIExpression()), !dbg !202
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !202
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !202
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !203
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !205
  %call1 = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !206
  %cmp = icmp ne i8* %call1, null, !dbg !207
  br i1 %cmp, label %if.then2, label %if.else, !dbg !208

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !209
  %call4 = call i32 @atoi(i8* %arraydecay3) #7, !dbg !211
  store i32 %call4, i32* %data, align 4, !dbg !212
  br label %if.end, !dbg !213

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !214
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !216

if.end5:                                          ; preds = %if.end, %entry
  %call6 = call i32 (...) bitcast (i32 ()* @globalReturnsTrue to i32 (...)*)(), !dbg !217
  %tobool7 = icmp ne i32 %call6, 0, !dbg !217
  br i1 %tobool7, label %if.then8, label %if.end17, !dbg !219

if.then8:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !220, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !224, metadata !DIExpression()), !dbg !225
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !225
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !225
  %3 = load i32, i32* %data, align 4, !dbg !226
  %cmp9 = icmp sge i32 %3, 0, !dbg !228
  br i1 %cmp9, label %land.lhs.true, label %if.else15, !dbg !229

land.lhs.true:                                    ; preds = %if.then8
  %4 = load i32, i32* %data, align 4, !dbg !230
  %cmp10 = icmp slt i32 %4, 10, !dbg !231
  br i1 %cmp10, label %if.then11, label %if.else15, !dbg !232

if.then11:                                        ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !233
  %idxprom = sext i32 %5 to i64, !dbg !235
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !235
  store i32 1, i32* %arrayidx, align 4, !dbg !236
  store i32 0, i32* %i, align 4, !dbg !237
  br label %for.cond, !dbg !239

for.cond:                                         ; preds = %for.inc, %if.then11
  %6 = load i32, i32* %i, align 4, !dbg !240
  %cmp12 = icmp slt i32 %6, 10, !dbg !242
  br i1 %cmp12, label %for.body, label %for.end, !dbg !243

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !244
  %idxprom13 = sext i32 %7 to i64, !dbg !246
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom13, !dbg !246
  %8 = load i32, i32* %arrayidx14, align 4, !dbg !246
  call void @printIntLine(i32 %8), !dbg !247
  br label %for.inc, !dbg !248

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !249
  %inc = add nsw i32 %9, 1, !dbg !249
  store i32 %inc, i32* %i, align 4, !dbg !249
  br label %for.cond, !dbg !250, !llvm.loop !251

for.end:                                          ; preds = %for.cond
  br label %if.end16, !dbg !253

if.else15:                                        ; preds = %land.lhs.true, %if.then8
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !254
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %for.end
  br label %if.end17, !dbg !256

if.end17:                                         ; preds = %if.end16, %if.end5
  ret void, !dbg !257
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !258 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !259, metadata !DIExpression()), !dbg !260
  store i32 -1, i32* %data, align 4, !dbg !261
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsFalse to i32 (...)*)(), !dbg !262
  %tobool = icmp ne i32 %call, 0, !dbg !262
  br i1 %tobool, label %if.then, label %if.else, !dbg !264

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !265
  br label %if.end, !dbg !267

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !268
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call1 = call i32 (...) bitcast (i32 ()* @globalReturnsTrue to i32 (...)*)(), !dbg !270
  %tobool2 = icmp ne i32 %call1, 0, !dbg !270
  br i1 %tobool2, label %if.then3, label %if.end10, !dbg !272

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !277, metadata !DIExpression()), !dbg !278
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !278
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !278
  %1 = load i32, i32* %data, align 4, !dbg !279
  %cmp = icmp sge i32 %1, 0, !dbg !281
  br i1 %cmp, label %if.then4, label %if.else8, !dbg !282

if.then4:                                         ; preds = %if.then3
  %2 = load i32, i32* %data, align 4, !dbg !283
  %idxprom = sext i32 %2 to i64, !dbg !285
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !285
  store i32 1, i32* %arrayidx, align 4, !dbg !286
  store i32 0, i32* %i, align 4, !dbg !287
  br label %for.cond, !dbg !289

for.cond:                                         ; preds = %for.inc, %if.then4
  %3 = load i32, i32* %i, align 4, !dbg !290
  %cmp5 = icmp slt i32 %3, 10, !dbg !292
  br i1 %cmp5, label %for.body, label %for.end, !dbg !293

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !294
  %idxprom6 = sext i32 %4 to i64, !dbg !296
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !296
  %5 = load i32, i32* %arrayidx7, align 4, !dbg !296
  call void @printIntLine(i32 %5), !dbg !297
  br label %for.inc, !dbg !298

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !299
  %inc = add nsw i32 %6, 1, !dbg !299
  store i32 %inc, i32* %i, align 4, !dbg !299
  br label %for.cond, !dbg !300, !llvm.loop !301

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !303

if.else8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !304
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end10, !dbg !306

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !307
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !308 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !309, metadata !DIExpression()), !dbg !310
  store i32 -1, i32* %data, align 4, !dbg !311
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrue to i32 (...)*)(), !dbg !312
  %tobool = icmp ne i32 %call, 0, !dbg !312
  br i1 %tobool, label %if.then, label %if.end, !dbg !314

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !315
  br label %if.end, !dbg !317

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 (...) bitcast (i32 ()* @globalReturnsTrue to i32 (...)*)(), !dbg !318
  %tobool2 = icmp ne i32 %call1, 0, !dbg !318
  br i1 %tobool2, label %if.then3, label %if.end9, !dbg !320

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !321, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !325, metadata !DIExpression()), !dbg !326
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !326
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !326
  %1 = load i32, i32* %data, align 4, !dbg !327
  %cmp = icmp sge i32 %1, 0, !dbg !329
  br i1 %cmp, label %if.then4, label %if.else, !dbg !330

if.then4:                                         ; preds = %if.then3
  %2 = load i32, i32* %data, align 4, !dbg !331
  %idxprom = sext i32 %2 to i64, !dbg !333
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !333
  store i32 1, i32* %arrayidx, align 4, !dbg !334
  store i32 0, i32* %i, align 4, !dbg !335
  br label %for.cond, !dbg !337

for.cond:                                         ; preds = %for.inc, %if.then4
  %3 = load i32, i32* %i, align 4, !dbg !338
  %cmp5 = icmp slt i32 %3, 10, !dbg !340
  br i1 %cmp5, label %for.body, label %for.end, !dbg !341

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !342
  %idxprom6 = sext i32 %4 to i64, !dbg !344
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !344
  %5 = load i32, i32* %arrayidx7, align 4, !dbg !344
  call void @printIntLine(i32 %5), !dbg !345
  br label %for.inc, !dbg !346

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !347
  %inc = add nsw i32 %6, 1, !dbg !347
  store i32 %inc, i32* %i, align 4, !dbg !347
  br label %for.cond, !dbg !348, !llvm.loop !349

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !351

if.else:                                          ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !352
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.end
  br label %if.end9, !dbg !354

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11_good() #0 !dbg !356 {
entry:
  call void @goodB2G1(), !dbg !357
  call void @goodB2G2(), !dbg !358
  call void @goodG2B1(), !dbg !359
  call void @goodG2B2(), !dbg !360
  ret void, !dbg !361
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !362 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !365, metadata !DIExpression()), !dbg !366
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !367
  %0 = load i8*, i8** %line.addr, align 8, !dbg !368
  %cmp = icmp ne i8* %0, null, !dbg !370
  br i1 %cmp, label %if.then, label %if.end, !dbg !371

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !372
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !374
  br label %if.end, !dbg !375

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !376
  ret void, !dbg !377
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !378 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !379, metadata !DIExpression()), !dbg !380
  %0 = load i8*, i8** %line.addr, align 8, !dbg !381
  %cmp = icmp ne i8* %0, null, !dbg !383
  br i1 %cmp, label %if.then, label %if.end, !dbg !384

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !387
  br label %if.end, !dbg !388

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !390 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !396, metadata !DIExpression()), !dbg !397
  %0 = load i32*, i32** %line.addr, align 8, !dbg !398
  %cmp = icmp ne i32* %0, null, !dbg !400
  br i1 %cmp, label %if.then, label %if.end, !dbg !401

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !402
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !404
  br label %if.end, !dbg !405

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !406
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !407 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !410, metadata !DIExpression()), !dbg !411
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !412
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !413
  ret void, !dbg !414
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !415 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !419, metadata !DIExpression()), !dbg !420
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !421
  %conv = sext i16 %0 to i32, !dbg !421
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !422
  ret void, !dbg !423
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !424 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !428, metadata !DIExpression()), !dbg !429
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !430
  %conv = fpext float %0 to double, !dbg !430
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !431
  ret void, !dbg !432
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !433 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !437, metadata !DIExpression()), !dbg !438
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !439
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !440
  ret void, !dbg !441
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !442 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !449, metadata !DIExpression()), !dbg !450
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !451
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !452
  ret void, !dbg !453
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !454 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !459, metadata !DIExpression()), !dbg !460
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !461
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !462
  ret void, !dbg !463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !464 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !467, metadata !DIExpression()), !dbg !468
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !469
  %conv = sext i8 %0 to i32, !dbg !469
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !470
  ret void, !dbg !471
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !472 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !475, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !477, metadata !DIExpression()), !dbg !481
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !482
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !483
  store i32 %0, i32* %arrayidx, align 4, !dbg !484
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !485
  store i32 0, i32* %arrayidx1, align 4, !dbg !486
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !487
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !488
  ret void, !dbg !489
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !490 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !493, metadata !DIExpression()), !dbg !494
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !495
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !496
  ret void, !dbg !497
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !498 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !501, metadata !DIExpression()), !dbg !502
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !503
  %conv = zext i8 %0 to i32, !dbg !503
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !504
  ret void, !dbg !505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !506 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !510, metadata !DIExpression()), !dbg !511
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !512
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !513
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !515 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !525, metadata !DIExpression()), !dbg !526
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !527
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !528
  %1 = load i32, i32* %intOne, align 4, !dbg !528
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !529
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !530
  %3 = load i32, i32* %intTwo, align 4, !dbg !530
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !531
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !533 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !537, metadata !DIExpression()), !dbg !538
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !539, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.declare(metadata i64* %i, metadata !541, metadata !DIExpression()), !dbg !542
  store i64 0, i64* %i, align 8, !dbg !543
  br label %for.cond, !dbg !545

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !546
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !548
  %cmp = icmp ult i64 %0, %1, !dbg !549
  br i1 %cmp, label %for.body, label %for.end, !dbg !550

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !551
  %3 = load i64, i64* %i, align 8, !dbg !553
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !551
  %4 = load i8, i8* %arrayidx, align 1, !dbg !551
  %conv = zext i8 %4 to i32, !dbg !551
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !554
  br label %for.inc, !dbg !555

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !556
  %inc = add i64 %5, 1, !dbg !556
  store i64 %inc, i64* %i, align 8, !dbg !556
  br label %for.cond, !dbg !557, !llvm.loop !558

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !560
  ret void, !dbg !561
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !562 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !565, metadata !DIExpression()), !dbg !566
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !567, metadata !DIExpression()), !dbg !568
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !569, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !571, metadata !DIExpression()), !dbg !572
  store i64 0, i64* %numWritten, align 8, !dbg !572
  br label %while.cond, !dbg !573

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !574
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !575
  %cmp = icmp ult i64 %0, %1, !dbg !576
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !577

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !578
  %2 = load i16*, i16** %call, align 8, !dbg !578
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !578
  %4 = load i64, i64* %numWritten, align 8, !dbg !578
  %mul = mul i64 2, %4, !dbg !578
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !578
  %5 = load i8, i8* %arrayidx, align 1, !dbg !578
  %conv = sext i8 %5 to i32, !dbg !578
  %idxprom = sext i32 %conv to i64, !dbg !578
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !578
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !578
  %conv2 = zext i16 %6 to i32, !dbg !578
  %and = and i32 %conv2, 4096, !dbg !578
  %tobool = icmp ne i32 %and, 0, !dbg !578
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !579

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !580
  %7 = load i16*, i16** %call3, align 8, !dbg !580
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !580
  %9 = load i64, i64* %numWritten, align 8, !dbg !580
  %mul4 = mul i64 2, %9, !dbg !580
  %add = add i64 %mul4, 1, !dbg !580
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !580
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !580
  %conv6 = sext i8 %10 to i32, !dbg !580
  %idxprom7 = sext i32 %conv6 to i64, !dbg !580
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !580
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !580
  %conv9 = zext i16 %11 to i32, !dbg !580
  %and10 = and i32 %conv9, 4096, !dbg !580
  %tobool11 = icmp ne i32 %and10, 0, !dbg !579
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !581
  br i1 %12, label %while.body, label %while.end, !dbg !573

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !582, metadata !DIExpression()), !dbg !584
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !585
  %14 = load i64, i64* %numWritten, align 8, !dbg !586
  %mul12 = mul i64 2, %14, !dbg !587
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !585
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !588
  %15 = load i32, i32* %byte, align 4, !dbg !589
  %conv15 = trunc i32 %15 to i8, !dbg !590
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !591
  %17 = load i64, i64* %numWritten, align 8, !dbg !592
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !591
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !593
  %18 = load i64, i64* %numWritten, align 8, !dbg !594
  %inc = add i64 %18, 1, !dbg !594
  store i64 %inc, i64* %numWritten, align 8, !dbg !594
  br label %while.cond, !dbg !573, !llvm.loop !595

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !597
  ret i64 %19, !dbg !598
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !599 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !602, metadata !DIExpression()), !dbg !603
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !604, metadata !DIExpression()), !dbg !605
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !606, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !608, metadata !DIExpression()), !dbg !609
  store i64 0, i64* %numWritten, align 8, !dbg !609
  br label %while.cond, !dbg !610

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !611
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !612
  %cmp = icmp ult i64 %0, %1, !dbg !613
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !614

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !615
  %3 = load i64, i64* %numWritten, align 8, !dbg !616
  %mul = mul i64 2, %3, !dbg !617
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !615
  %4 = load i32, i32* %arrayidx, align 4, !dbg !615
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !618
  %tobool = icmp ne i32 %call, 0, !dbg !618
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !619

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !620
  %6 = load i64, i64* %numWritten, align 8, !dbg !621
  %mul1 = mul i64 2, %6, !dbg !622
  %add = add i64 %mul1, 1, !dbg !623
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !620
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !620
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !624
  %tobool4 = icmp ne i32 %call3, 0, !dbg !619
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !625
  br i1 %8, label %while.body, label %while.end, !dbg !610

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !626, metadata !DIExpression()), !dbg !628
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !629
  %10 = load i64, i64* %numWritten, align 8, !dbg !630
  %mul5 = mul i64 2, %10, !dbg !631
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !629
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !632
  %11 = load i32, i32* %byte, align 4, !dbg !633
  %conv = trunc i32 %11 to i8, !dbg !634
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !635
  %13 = load i64, i64* %numWritten, align 8, !dbg !636
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !635
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !637
  %14 = load i64, i64* %numWritten, align 8, !dbg !638
  %inc = add i64 %14, 1, !dbg !638
  store i64 %inc, i64* %numWritten, align 8, !dbg !638
  br label %while.cond, !dbg !610, !llvm.loop !639

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !641
  ret i64 %15, !dbg !642
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !643 {
entry:
  ret i32 1, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !647 {
entry:
  ret i32 0, !dbg !648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !649 {
entry:
  %call = call i32 @rand() #9, !dbg !650
  %rem = srem i32 %call, 2, !dbg !651
  ret i32 %rem, !dbg !652
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !653 {
entry:
  ret void, !dbg !654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !655 {
entry:
  ret void, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !657 {
entry:
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !659 {
entry:
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !661 {
entry:
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !663 {
entry:
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !665 {
entry:
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !671 {
entry:
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !673 {
entry:
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !675 {
entry:
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !677 {
entry:
  ret void, !dbg !678
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !679 {
entry:
  ret void, !dbg !680
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !681 {
entry:
  ret void, !dbg !682
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !683 {
entry:
  ret void, !dbg !684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !685 {
entry:
  ret void, !dbg !686
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !687 {
entry:
  ret void, !dbg !688
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_574/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_574/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11_bad", scope: !45, file: !45, line: 25, type: !53, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!82 = !DILocation(line: 46, column: 8, scope: !83)
!83 = distinct !DILexicalBlock(scope: !52, file: !45, line: 46, column: 8)
!84 = !DILocation(line: 46, column: 8, scope: !52)
!85 = !DILocalVariable(name: "i", scope: !86, file: !45, line: 49, type: !23)
!86 = distinct !DILexicalBlock(scope: !87, file: !45, line: 48, column: 9)
!87 = distinct !DILexicalBlock(scope: !83, file: !45, line: 47, column: 5)
!88 = !DILocation(line: 49, column: 17, scope: !86)
!89 = !DILocalVariable(name: "buffer", scope: !86, file: !45, line: 50, type: !90)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 10)
!93 = !DILocation(line: 50, column: 17, scope: !86)
!94 = !DILocation(line: 53, column: 17, scope: !95)
!95 = distinct !DILexicalBlock(scope: !86, file: !45, line: 53, column: 17)
!96 = !DILocation(line: 53, column: 22, scope: !95)
!97 = !DILocation(line: 53, column: 17, scope: !86)
!98 = !DILocation(line: 55, column: 24, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !45, line: 54, column: 13)
!100 = !DILocation(line: 55, column: 17, scope: !99)
!101 = !DILocation(line: 55, column: 30, scope: !99)
!102 = !DILocation(line: 57, column: 23, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !45, line: 57, column: 17)
!104 = !DILocation(line: 57, column: 21, scope: !103)
!105 = !DILocation(line: 57, column: 28, scope: !106)
!106 = distinct !DILexicalBlock(scope: !103, file: !45, line: 57, column: 17)
!107 = !DILocation(line: 57, column: 30, scope: !106)
!108 = !DILocation(line: 57, column: 17, scope: !103)
!109 = !DILocation(line: 59, column: 41, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !45, line: 58, column: 17)
!111 = !DILocation(line: 59, column: 34, scope: !110)
!112 = !DILocation(line: 59, column: 21, scope: !110)
!113 = !DILocation(line: 60, column: 17, scope: !110)
!114 = !DILocation(line: 57, column: 37, scope: !106)
!115 = !DILocation(line: 57, column: 17, scope: !106)
!116 = distinct !{!116, !108, !117, !118}
!117 = !DILocation(line: 60, column: 17, scope: !103)
!118 = !{!"llvm.loop.mustprogress"}
!119 = !DILocation(line: 61, column: 13, scope: !99)
!120 = !DILocation(line: 64, column: 17, scope: !121)
!121 = distinct !DILexicalBlock(scope: !95, file: !45, line: 63, column: 13)
!122 = !DILocation(line: 67, column: 5, scope: !87)
!123 = !DILocation(line: 68, column: 1, scope: !52)
!124 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 75, type: !53, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!125 = !DILocalVariable(name: "data", scope: !124, file: !45, line: 77, type: !23)
!126 = !DILocation(line: 77, column: 9, scope: !124)
!127 = !DILocation(line: 79, column: 10, scope: !124)
!128 = !DILocation(line: 80, column: 8, scope: !129)
!129 = distinct !DILexicalBlock(scope: !124, file: !45, line: 80, column: 8)
!130 = !DILocation(line: 80, column: 8, scope: !124)
!131 = !DILocalVariable(name: "inputBuffer", scope: !132, file: !45, line: 83, type: !64)
!132 = distinct !DILexicalBlock(scope: !133, file: !45, line: 82, column: 9)
!133 = distinct !DILexicalBlock(scope: !129, file: !45, line: 81, column: 5)
!134 = !DILocation(line: 83, column: 18, scope: !132)
!135 = !DILocation(line: 85, column: 23, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !45, line: 85, column: 17)
!137 = !DILocation(line: 85, column: 53, scope: !136)
!138 = !DILocation(line: 85, column: 17, scope: !136)
!139 = !DILocation(line: 85, column: 60, scope: !136)
!140 = !DILocation(line: 85, column: 17, scope: !132)
!141 = !DILocation(line: 88, column: 29, scope: !142)
!142 = distinct !DILexicalBlock(scope: !136, file: !45, line: 86, column: 13)
!143 = !DILocation(line: 88, column: 24, scope: !142)
!144 = !DILocation(line: 88, column: 22, scope: !142)
!145 = !DILocation(line: 89, column: 13, scope: !142)
!146 = !DILocation(line: 92, column: 17, scope: !147)
!147 = distinct !DILexicalBlock(scope: !136, file: !45, line: 91, column: 13)
!148 = !DILocation(line: 95, column: 5, scope: !133)
!149 = !DILocation(line: 96, column: 8, scope: !150)
!150 = distinct !DILexicalBlock(scope: !124, file: !45, line: 96, column: 8)
!151 = !DILocation(line: 96, column: 8, scope: !124)
!152 = !DILocation(line: 99, column: 9, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !45, line: 97, column: 5)
!154 = !DILocation(line: 100, column: 5, scope: !153)
!155 = !DILocalVariable(name: "i", scope: !156, file: !45, line: 104, type: !23)
!156 = distinct !DILexicalBlock(scope: !157, file: !45, line: 103, column: 9)
!157 = distinct !DILexicalBlock(scope: !150, file: !45, line: 102, column: 5)
!158 = !DILocation(line: 104, column: 17, scope: !156)
!159 = !DILocalVariable(name: "buffer", scope: !156, file: !45, line: 105, type: !90)
!160 = !DILocation(line: 105, column: 17, scope: !156)
!161 = !DILocation(line: 107, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !156, file: !45, line: 107, column: 17)
!163 = !DILocation(line: 107, column: 22, scope: !162)
!164 = !DILocation(line: 107, column: 27, scope: !162)
!165 = !DILocation(line: 107, column: 30, scope: !162)
!166 = !DILocation(line: 107, column: 35, scope: !162)
!167 = !DILocation(line: 107, column: 17, scope: !156)
!168 = !DILocation(line: 109, column: 24, scope: !169)
!169 = distinct !DILexicalBlock(scope: !162, file: !45, line: 108, column: 13)
!170 = !DILocation(line: 109, column: 17, scope: !169)
!171 = !DILocation(line: 109, column: 30, scope: !169)
!172 = !DILocation(line: 111, column: 23, scope: !173)
!173 = distinct !DILexicalBlock(scope: !169, file: !45, line: 111, column: 17)
!174 = !DILocation(line: 111, column: 21, scope: !173)
!175 = !DILocation(line: 111, column: 28, scope: !176)
!176 = distinct !DILexicalBlock(scope: !173, file: !45, line: 111, column: 17)
!177 = !DILocation(line: 111, column: 30, scope: !176)
!178 = !DILocation(line: 111, column: 17, scope: !173)
!179 = !DILocation(line: 113, column: 41, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !45, line: 112, column: 17)
!181 = !DILocation(line: 113, column: 34, scope: !180)
!182 = !DILocation(line: 113, column: 21, scope: !180)
!183 = !DILocation(line: 114, column: 17, scope: !180)
!184 = !DILocation(line: 111, column: 37, scope: !176)
!185 = !DILocation(line: 111, column: 17, scope: !176)
!186 = distinct !{!186, !178, !187, !118}
!187 = !DILocation(line: 114, column: 17, scope: !173)
!188 = !DILocation(line: 115, column: 13, scope: !169)
!189 = !DILocation(line: 118, column: 17, scope: !190)
!190 = distinct !DILexicalBlock(scope: !162, file: !45, line: 117, column: 13)
!191 = !DILocation(line: 122, column: 1, scope: !124)
!192 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 125, type: !53, scopeLine: 126, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!193 = !DILocalVariable(name: "data", scope: !192, file: !45, line: 127, type: !23)
!194 = !DILocation(line: 127, column: 9, scope: !192)
!195 = !DILocation(line: 129, column: 10, scope: !192)
!196 = !DILocation(line: 130, column: 8, scope: !197)
!197 = distinct !DILexicalBlock(scope: !192, file: !45, line: 130, column: 8)
!198 = !DILocation(line: 130, column: 8, scope: !192)
!199 = !DILocalVariable(name: "inputBuffer", scope: !200, file: !45, line: 133, type: !64)
!200 = distinct !DILexicalBlock(scope: !201, file: !45, line: 132, column: 9)
!201 = distinct !DILexicalBlock(scope: !197, file: !45, line: 131, column: 5)
!202 = !DILocation(line: 133, column: 18, scope: !200)
!203 = !DILocation(line: 135, column: 23, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !45, line: 135, column: 17)
!205 = !DILocation(line: 135, column: 53, scope: !204)
!206 = !DILocation(line: 135, column: 17, scope: !204)
!207 = !DILocation(line: 135, column: 60, scope: !204)
!208 = !DILocation(line: 135, column: 17, scope: !200)
!209 = !DILocation(line: 138, column: 29, scope: !210)
!210 = distinct !DILexicalBlock(scope: !204, file: !45, line: 136, column: 13)
!211 = !DILocation(line: 138, column: 24, scope: !210)
!212 = !DILocation(line: 138, column: 22, scope: !210)
!213 = !DILocation(line: 139, column: 13, scope: !210)
!214 = !DILocation(line: 142, column: 17, scope: !215)
!215 = distinct !DILexicalBlock(scope: !204, file: !45, line: 141, column: 13)
!216 = !DILocation(line: 145, column: 5, scope: !201)
!217 = !DILocation(line: 146, column: 8, scope: !218)
!218 = distinct !DILexicalBlock(scope: !192, file: !45, line: 146, column: 8)
!219 = !DILocation(line: 146, column: 8, scope: !192)
!220 = !DILocalVariable(name: "i", scope: !221, file: !45, line: 149, type: !23)
!221 = distinct !DILexicalBlock(scope: !222, file: !45, line: 148, column: 9)
!222 = distinct !DILexicalBlock(scope: !218, file: !45, line: 147, column: 5)
!223 = !DILocation(line: 149, column: 17, scope: !221)
!224 = !DILocalVariable(name: "buffer", scope: !221, file: !45, line: 150, type: !90)
!225 = !DILocation(line: 150, column: 17, scope: !221)
!226 = !DILocation(line: 152, column: 17, scope: !227)
!227 = distinct !DILexicalBlock(scope: !221, file: !45, line: 152, column: 17)
!228 = !DILocation(line: 152, column: 22, scope: !227)
!229 = !DILocation(line: 152, column: 27, scope: !227)
!230 = !DILocation(line: 152, column: 30, scope: !227)
!231 = !DILocation(line: 152, column: 35, scope: !227)
!232 = !DILocation(line: 152, column: 17, scope: !221)
!233 = !DILocation(line: 154, column: 24, scope: !234)
!234 = distinct !DILexicalBlock(scope: !227, file: !45, line: 153, column: 13)
!235 = !DILocation(line: 154, column: 17, scope: !234)
!236 = !DILocation(line: 154, column: 30, scope: !234)
!237 = !DILocation(line: 156, column: 23, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !45, line: 156, column: 17)
!239 = !DILocation(line: 156, column: 21, scope: !238)
!240 = !DILocation(line: 156, column: 28, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !45, line: 156, column: 17)
!242 = !DILocation(line: 156, column: 30, scope: !241)
!243 = !DILocation(line: 156, column: 17, scope: !238)
!244 = !DILocation(line: 158, column: 41, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !45, line: 157, column: 17)
!246 = !DILocation(line: 158, column: 34, scope: !245)
!247 = !DILocation(line: 158, column: 21, scope: !245)
!248 = !DILocation(line: 159, column: 17, scope: !245)
!249 = !DILocation(line: 156, column: 37, scope: !241)
!250 = !DILocation(line: 156, column: 17, scope: !241)
!251 = distinct !{!251, !243, !252, !118}
!252 = !DILocation(line: 159, column: 17, scope: !238)
!253 = !DILocation(line: 160, column: 13, scope: !234)
!254 = !DILocation(line: 163, column: 17, scope: !255)
!255 = distinct !DILexicalBlock(scope: !227, file: !45, line: 162, column: 13)
!256 = !DILocation(line: 166, column: 5, scope: !222)
!257 = !DILocation(line: 167, column: 1, scope: !192)
!258 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 170, type: !53, scopeLine: 171, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!259 = !DILocalVariable(name: "data", scope: !258, file: !45, line: 172, type: !23)
!260 = !DILocation(line: 172, column: 9, scope: !258)
!261 = !DILocation(line: 174, column: 10, scope: !258)
!262 = !DILocation(line: 175, column: 8, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !45, line: 175, column: 8)
!264 = !DILocation(line: 175, column: 8, scope: !258)
!265 = !DILocation(line: 178, column: 9, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !45, line: 176, column: 5)
!267 = !DILocation(line: 179, column: 5, scope: !266)
!268 = !DILocation(line: 184, column: 14, scope: !269)
!269 = distinct !DILexicalBlock(scope: !263, file: !45, line: 181, column: 5)
!270 = !DILocation(line: 186, column: 8, scope: !271)
!271 = distinct !DILexicalBlock(scope: !258, file: !45, line: 186, column: 8)
!272 = !DILocation(line: 186, column: 8, scope: !258)
!273 = !DILocalVariable(name: "i", scope: !274, file: !45, line: 189, type: !23)
!274 = distinct !DILexicalBlock(scope: !275, file: !45, line: 188, column: 9)
!275 = distinct !DILexicalBlock(scope: !271, file: !45, line: 187, column: 5)
!276 = !DILocation(line: 189, column: 17, scope: !274)
!277 = !DILocalVariable(name: "buffer", scope: !274, file: !45, line: 190, type: !90)
!278 = !DILocation(line: 190, column: 17, scope: !274)
!279 = !DILocation(line: 193, column: 17, scope: !280)
!280 = distinct !DILexicalBlock(scope: !274, file: !45, line: 193, column: 17)
!281 = !DILocation(line: 193, column: 22, scope: !280)
!282 = !DILocation(line: 193, column: 17, scope: !274)
!283 = !DILocation(line: 195, column: 24, scope: !284)
!284 = distinct !DILexicalBlock(scope: !280, file: !45, line: 194, column: 13)
!285 = !DILocation(line: 195, column: 17, scope: !284)
!286 = !DILocation(line: 195, column: 30, scope: !284)
!287 = !DILocation(line: 197, column: 23, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !45, line: 197, column: 17)
!289 = !DILocation(line: 197, column: 21, scope: !288)
!290 = !DILocation(line: 197, column: 28, scope: !291)
!291 = distinct !DILexicalBlock(scope: !288, file: !45, line: 197, column: 17)
!292 = !DILocation(line: 197, column: 30, scope: !291)
!293 = !DILocation(line: 197, column: 17, scope: !288)
!294 = !DILocation(line: 199, column: 41, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !45, line: 198, column: 17)
!296 = !DILocation(line: 199, column: 34, scope: !295)
!297 = !DILocation(line: 199, column: 21, scope: !295)
!298 = !DILocation(line: 200, column: 17, scope: !295)
!299 = !DILocation(line: 197, column: 37, scope: !291)
!300 = !DILocation(line: 197, column: 17, scope: !291)
!301 = distinct !{!301, !293, !302, !118}
!302 = !DILocation(line: 200, column: 17, scope: !288)
!303 = !DILocation(line: 201, column: 13, scope: !284)
!304 = !DILocation(line: 204, column: 17, scope: !305)
!305 = distinct !DILexicalBlock(scope: !280, file: !45, line: 203, column: 13)
!306 = !DILocation(line: 207, column: 5, scope: !275)
!307 = !DILocation(line: 208, column: 1, scope: !258)
!308 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 211, type: !53, scopeLine: 212, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!309 = !DILocalVariable(name: "data", scope: !308, file: !45, line: 213, type: !23)
!310 = !DILocation(line: 213, column: 9, scope: !308)
!311 = !DILocation(line: 215, column: 10, scope: !308)
!312 = !DILocation(line: 216, column: 8, scope: !313)
!313 = distinct !DILexicalBlock(scope: !308, file: !45, line: 216, column: 8)
!314 = !DILocation(line: 216, column: 8, scope: !308)
!315 = !DILocation(line: 220, column: 14, scope: !316)
!316 = distinct !DILexicalBlock(scope: !313, file: !45, line: 217, column: 5)
!317 = !DILocation(line: 221, column: 5, scope: !316)
!318 = !DILocation(line: 222, column: 8, scope: !319)
!319 = distinct !DILexicalBlock(scope: !308, file: !45, line: 222, column: 8)
!320 = !DILocation(line: 222, column: 8, scope: !308)
!321 = !DILocalVariable(name: "i", scope: !322, file: !45, line: 225, type: !23)
!322 = distinct !DILexicalBlock(scope: !323, file: !45, line: 224, column: 9)
!323 = distinct !DILexicalBlock(scope: !319, file: !45, line: 223, column: 5)
!324 = !DILocation(line: 225, column: 17, scope: !322)
!325 = !DILocalVariable(name: "buffer", scope: !322, file: !45, line: 226, type: !90)
!326 = !DILocation(line: 226, column: 17, scope: !322)
!327 = !DILocation(line: 229, column: 17, scope: !328)
!328 = distinct !DILexicalBlock(scope: !322, file: !45, line: 229, column: 17)
!329 = !DILocation(line: 229, column: 22, scope: !328)
!330 = !DILocation(line: 229, column: 17, scope: !322)
!331 = !DILocation(line: 231, column: 24, scope: !332)
!332 = distinct !DILexicalBlock(scope: !328, file: !45, line: 230, column: 13)
!333 = !DILocation(line: 231, column: 17, scope: !332)
!334 = !DILocation(line: 231, column: 30, scope: !332)
!335 = !DILocation(line: 233, column: 23, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !45, line: 233, column: 17)
!337 = !DILocation(line: 233, column: 21, scope: !336)
!338 = !DILocation(line: 233, column: 28, scope: !339)
!339 = distinct !DILexicalBlock(scope: !336, file: !45, line: 233, column: 17)
!340 = !DILocation(line: 233, column: 30, scope: !339)
!341 = !DILocation(line: 233, column: 17, scope: !336)
!342 = !DILocation(line: 235, column: 41, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !45, line: 234, column: 17)
!344 = !DILocation(line: 235, column: 34, scope: !343)
!345 = !DILocation(line: 235, column: 21, scope: !343)
!346 = !DILocation(line: 236, column: 17, scope: !343)
!347 = !DILocation(line: 233, column: 37, scope: !339)
!348 = !DILocation(line: 233, column: 17, scope: !339)
!349 = distinct !{!349, !341, !350, !118}
!350 = !DILocation(line: 236, column: 17, scope: !336)
!351 = !DILocation(line: 237, column: 13, scope: !332)
!352 = !DILocation(line: 240, column: 17, scope: !353)
!353 = distinct !DILexicalBlock(scope: !328, file: !45, line: 239, column: 13)
!354 = !DILocation(line: 243, column: 5, scope: !323)
!355 = !DILocation(line: 244, column: 1, scope: !308)
!356 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11_good", scope: !45, file: !45, line: 246, type: !53, scopeLine: 247, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!357 = !DILocation(line: 248, column: 5, scope: !356)
!358 = !DILocation(line: 249, column: 5, scope: !356)
!359 = !DILocation(line: 250, column: 5, scope: !356)
!360 = !DILocation(line: 251, column: 5, scope: !356)
!361 = !DILocation(line: 252, column: 1, scope: !356)
!362 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !363, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !42}
!365 = !DILocalVariable(name: "line", arg: 1, scope: !362, file: !3, line: 11, type: !42)
!366 = !DILocation(line: 11, column: 25, scope: !362)
!367 = !DILocation(line: 13, column: 1, scope: !362)
!368 = !DILocation(line: 14, column: 8, scope: !369)
!369 = distinct !DILexicalBlock(scope: !362, file: !3, line: 14, column: 8)
!370 = !DILocation(line: 14, column: 13, scope: !369)
!371 = !DILocation(line: 14, column: 8, scope: !362)
!372 = !DILocation(line: 16, column: 24, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !3, line: 15, column: 5)
!374 = !DILocation(line: 16, column: 9, scope: !373)
!375 = !DILocation(line: 17, column: 5, scope: !373)
!376 = !DILocation(line: 18, column: 5, scope: !362)
!377 = !DILocation(line: 19, column: 1, scope: !362)
!378 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !363, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!379 = !DILocalVariable(name: "line", arg: 1, scope: !378, file: !3, line: 20, type: !42)
!380 = !DILocation(line: 20, column: 29, scope: !378)
!381 = !DILocation(line: 22, column: 8, scope: !382)
!382 = distinct !DILexicalBlock(scope: !378, file: !3, line: 22, column: 8)
!383 = !DILocation(line: 22, column: 13, scope: !382)
!384 = !DILocation(line: 22, column: 8, scope: !378)
!385 = !DILocation(line: 24, column: 24, scope: !386)
!386 = distinct !DILexicalBlock(scope: !382, file: !3, line: 23, column: 5)
!387 = !DILocation(line: 24, column: 9, scope: !386)
!388 = !DILocation(line: 25, column: 5, scope: !386)
!389 = !DILocation(line: 26, column: 1, scope: !378)
!390 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !391, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !395, line: 74, baseType: !23)
!395 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!396 = !DILocalVariable(name: "line", arg: 1, scope: !390, file: !3, line: 27, type: !393)
!397 = !DILocation(line: 27, column: 29, scope: !390)
!398 = !DILocation(line: 29, column: 8, scope: !399)
!399 = distinct !DILexicalBlock(scope: !390, file: !3, line: 29, column: 8)
!400 = !DILocation(line: 29, column: 13, scope: !399)
!401 = !DILocation(line: 29, column: 8, scope: !390)
!402 = !DILocation(line: 31, column: 27, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !3, line: 30, column: 5)
!404 = !DILocation(line: 31, column: 9, scope: !403)
!405 = !DILocation(line: 32, column: 5, scope: !403)
!406 = !DILocation(line: 33, column: 1, scope: !390)
!407 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !408, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !23}
!410 = !DILocalVariable(name: "intNumber", arg: 1, scope: !407, file: !3, line: 35, type: !23)
!411 = !DILocation(line: 35, column: 24, scope: !407)
!412 = !DILocation(line: 37, column: 20, scope: !407)
!413 = !DILocation(line: 37, column: 5, scope: !407)
!414 = !DILocation(line: 38, column: 1, scope: !407)
!415 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !416, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !418}
!418 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!419 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !415, file: !3, line: 40, type: !418)
!420 = !DILocation(line: 40, column: 28, scope: !415)
!421 = !DILocation(line: 42, column: 21, scope: !415)
!422 = !DILocation(line: 42, column: 5, scope: !415)
!423 = !DILocation(line: 43, column: 1, scope: !415)
!424 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !425, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !427}
!427 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!428 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !424, file: !3, line: 45, type: !427)
!429 = !DILocation(line: 45, column: 28, scope: !424)
!430 = !DILocation(line: 47, column: 20, scope: !424)
!431 = !DILocation(line: 47, column: 5, scope: !424)
!432 = !DILocation(line: 48, column: 1, scope: !424)
!433 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !434, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !436}
!436 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!437 = !DILocalVariable(name: "longNumber", arg: 1, scope: !433, file: !3, line: 50, type: !436)
!438 = !DILocation(line: 50, column: 26, scope: !433)
!439 = !DILocation(line: 52, column: 21, scope: !433)
!440 = !DILocation(line: 52, column: 5, scope: !433)
!441 = !DILocation(line: 53, column: 1, scope: !433)
!442 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !443, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !445}
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !446, line: 27, baseType: !447)
!446 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !448, line: 44, baseType: !436)
!448 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!449 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !442, file: !3, line: 55, type: !445)
!450 = !DILocation(line: 55, column: 33, scope: !442)
!451 = !DILocation(line: 57, column: 29, scope: !442)
!452 = !DILocation(line: 57, column: 5, scope: !442)
!453 = !DILocation(line: 58, column: 1, scope: !442)
!454 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !455, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !457}
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !395, line: 46, baseType: !458)
!458 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!459 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !454, file: !3, line: 60, type: !457)
!460 = !DILocation(line: 60, column: 29, scope: !454)
!461 = !DILocation(line: 62, column: 21, scope: !454)
!462 = !DILocation(line: 62, column: 5, scope: !454)
!463 = !DILocation(line: 63, column: 1, scope: !454)
!464 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !465, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !43}
!467 = !DILocalVariable(name: "charHex", arg: 1, scope: !464, file: !3, line: 65, type: !43)
!468 = !DILocation(line: 65, column: 29, scope: !464)
!469 = !DILocation(line: 67, column: 22, scope: !464)
!470 = !DILocation(line: 67, column: 5, scope: !464)
!471 = !DILocation(line: 68, column: 1, scope: !464)
!472 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !473, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !394}
!475 = !DILocalVariable(name: "wideChar", arg: 1, scope: !472, file: !3, line: 70, type: !394)
!476 = !DILocation(line: 70, column: 29, scope: !472)
!477 = !DILocalVariable(name: "s", scope: !472, file: !3, line: 74, type: !478)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 64, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 2)
!481 = !DILocation(line: 74, column: 13, scope: !472)
!482 = !DILocation(line: 75, column: 16, scope: !472)
!483 = !DILocation(line: 75, column: 9, scope: !472)
!484 = !DILocation(line: 75, column: 14, scope: !472)
!485 = !DILocation(line: 76, column: 9, scope: !472)
!486 = !DILocation(line: 76, column: 14, scope: !472)
!487 = !DILocation(line: 77, column: 21, scope: !472)
!488 = !DILocation(line: 77, column: 5, scope: !472)
!489 = !DILocation(line: 78, column: 1, scope: !472)
!490 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !491, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !7}
!493 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !490, file: !3, line: 80, type: !7)
!494 = !DILocation(line: 80, column: 33, scope: !490)
!495 = !DILocation(line: 82, column: 20, scope: !490)
!496 = !DILocation(line: 82, column: 5, scope: !490)
!497 = !DILocation(line: 83, column: 1, scope: !490)
!498 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !499, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !25}
!501 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !498, file: !3, line: 85, type: !25)
!502 = !DILocation(line: 85, column: 45, scope: !498)
!503 = !DILocation(line: 87, column: 22, scope: !498)
!504 = !DILocation(line: 87, column: 5, scope: !498)
!505 = !DILocation(line: 88, column: 1, scope: !498)
!506 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !507, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !509}
!509 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!510 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !506, file: !3, line: 90, type: !509)
!511 = !DILocation(line: 90, column: 29, scope: !506)
!512 = !DILocation(line: 92, column: 20, scope: !506)
!513 = !DILocation(line: 92, column: 5, scope: !506)
!514 = !DILocation(line: 93, column: 1, scope: !506)
!515 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !516, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !520, line: 100, baseType: !521)
!520 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_574/source_code")
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !520, line: 96, size: 64, elements: !522)
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !521, file: !520, line: 98, baseType: !23, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !521, file: !520, line: 99, baseType: !23, size: 32, offset: 32)
!525 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !515, file: !3, line: 95, type: !518)
!526 = !DILocation(line: 95, column: 40, scope: !515)
!527 = !DILocation(line: 97, column: 26, scope: !515)
!528 = !DILocation(line: 97, column: 47, scope: !515)
!529 = !DILocation(line: 97, column: 55, scope: !515)
!530 = !DILocation(line: 97, column: 76, scope: !515)
!531 = !DILocation(line: 97, column: 5, scope: !515)
!532 = !DILocation(line: 98, column: 1, scope: !515)
!533 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !534, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !536, !457}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!537 = !DILocalVariable(name: "bytes", arg: 1, scope: !533, file: !3, line: 100, type: !536)
!538 = !DILocation(line: 100, column: 38, scope: !533)
!539 = !DILocalVariable(name: "numBytes", arg: 2, scope: !533, file: !3, line: 100, type: !457)
!540 = !DILocation(line: 100, column: 52, scope: !533)
!541 = !DILocalVariable(name: "i", scope: !533, file: !3, line: 102, type: !457)
!542 = !DILocation(line: 102, column: 12, scope: !533)
!543 = !DILocation(line: 103, column: 12, scope: !544)
!544 = distinct !DILexicalBlock(scope: !533, file: !3, line: 103, column: 5)
!545 = !DILocation(line: 103, column: 10, scope: !544)
!546 = !DILocation(line: 103, column: 17, scope: !547)
!547 = distinct !DILexicalBlock(scope: !544, file: !3, line: 103, column: 5)
!548 = !DILocation(line: 103, column: 21, scope: !547)
!549 = !DILocation(line: 103, column: 19, scope: !547)
!550 = !DILocation(line: 103, column: 5, scope: !544)
!551 = !DILocation(line: 105, column: 24, scope: !552)
!552 = distinct !DILexicalBlock(scope: !547, file: !3, line: 104, column: 5)
!553 = !DILocation(line: 105, column: 30, scope: !552)
!554 = !DILocation(line: 105, column: 9, scope: !552)
!555 = !DILocation(line: 106, column: 5, scope: !552)
!556 = !DILocation(line: 103, column: 31, scope: !547)
!557 = !DILocation(line: 103, column: 5, scope: !547)
!558 = distinct !{!558, !550, !559, !118}
!559 = !DILocation(line: 106, column: 5, scope: !544)
!560 = !DILocation(line: 107, column: 5, scope: !533)
!561 = !DILocation(line: 108, column: 1, scope: !533)
!562 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !563, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!563 = !DISubroutineType(types: !564)
!564 = !{!457, !536, !457, !42}
!565 = !DILocalVariable(name: "bytes", arg: 1, scope: !562, file: !3, line: 113, type: !536)
!566 = !DILocation(line: 113, column: 39, scope: !562)
!567 = !DILocalVariable(name: "numBytes", arg: 2, scope: !562, file: !3, line: 113, type: !457)
!568 = !DILocation(line: 113, column: 53, scope: !562)
!569 = !DILocalVariable(name: "hex", arg: 3, scope: !562, file: !3, line: 113, type: !42)
!570 = !DILocation(line: 113, column: 71, scope: !562)
!571 = !DILocalVariable(name: "numWritten", scope: !562, file: !3, line: 115, type: !457)
!572 = !DILocation(line: 115, column: 12, scope: !562)
!573 = !DILocation(line: 121, column: 5, scope: !562)
!574 = !DILocation(line: 121, column: 12, scope: !562)
!575 = !DILocation(line: 121, column: 25, scope: !562)
!576 = !DILocation(line: 121, column: 23, scope: !562)
!577 = !DILocation(line: 121, column: 34, scope: !562)
!578 = !DILocation(line: 121, column: 37, scope: !562)
!579 = !DILocation(line: 121, column: 67, scope: !562)
!580 = !DILocation(line: 121, column: 70, scope: !562)
!581 = !DILocation(line: 0, scope: !562)
!582 = !DILocalVariable(name: "byte", scope: !583, file: !3, line: 123, type: !23)
!583 = distinct !DILexicalBlock(scope: !562, file: !3, line: 122, column: 5)
!584 = !DILocation(line: 123, column: 13, scope: !583)
!585 = !DILocation(line: 124, column: 17, scope: !583)
!586 = !DILocation(line: 124, column: 25, scope: !583)
!587 = !DILocation(line: 124, column: 23, scope: !583)
!588 = !DILocation(line: 124, column: 9, scope: !583)
!589 = !DILocation(line: 125, column: 45, scope: !583)
!590 = !DILocation(line: 125, column: 29, scope: !583)
!591 = !DILocation(line: 125, column: 9, scope: !583)
!592 = !DILocation(line: 125, column: 15, scope: !583)
!593 = !DILocation(line: 125, column: 27, scope: !583)
!594 = !DILocation(line: 126, column: 9, scope: !583)
!595 = distinct !{!595, !573, !596, !118}
!596 = !DILocation(line: 127, column: 5, scope: !562)
!597 = !DILocation(line: 129, column: 12, scope: !562)
!598 = !DILocation(line: 129, column: 5, scope: !562)
!599 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !600, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DISubroutineType(types: !601)
!601 = !{!457, !536, !457, !393}
!602 = !DILocalVariable(name: "bytes", arg: 1, scope: !599, file: !3, line: 135, type: !536)
!603 = !DILocation(line: 135, column: 41, scope: !599)
!604 = !DILocalVariable(name: "numBytes", arg: 2, scope: !599, file: !3, line: 135, type: !457)
!605 = !DILocation(line: 135, column: 55, scope: !599)
!606 = !DILocalVariable(name: "hex", arg: 3, scope: !599, file: !3, line: 135, type: !393)
!607 = !DILocation(line: 135, column: 76, scope: !599)
!608 = !DILocalVariable(name: "numWritten", scope: !599, file: !3, line: 137, type: !457)
!609 = !DILocation(line: 137, column: 12, scope: !599)
!610 = !DILocation(line: 143, column: 5, scope: !599)
!611 = !DILocation(line: 143, column: 12, scope: !599)
!612 = !DILocation(line: 143, column: 25, scope: !599)
!613 = !DILocation(line: 143, column: 23, scope: !599)
!614 = !DILocation(line: 143, column: 34, scope: !599)
!615 = !DILocation(line: 143, column: 47, scope: !599)
!616 = !DILocation(line: 143, column: 55, scope: !599)
!617 = !DILocation(line: 143, column: 53, scope: !599)
!618 = !DILocation(line: 143, column: 37, scope: !599)
!619 = !DILocation(line: 143, column: 68, scope: !599)
!620 = !DILocation(line: 143, column: 81, scope: !599)
!621 = !DILocation(line: 143, column: 89, scope: !599)
!622 = !DILocation(line: 143, column: 87, scope: !599)
!623 = !DILocation(line: 143, column: 100, scope: !599)
!624 = !DILocation(line: 143, column: 71, scope: !599)
!625 = !DILocation(line: 0, scope: !599)
!626 = !DILocalVariable(name: "byte", scope: !627, file: !3, line: 145, type: !23)
!627 = distinct !DILexicalBlock(scope: !599, file: !3, line: 144, column: 5)
!628 = !DILocation(line: 145, column: 13, scope: !627)
!629 = !DILocation(line: 146, column: 18, scope: !627)
!630 = !DILocation(line: 146, column: 26, scope: !627)
!631 = !DILocation(line: 146, column: 24, scope: !627)
!632 = !DILocation(line: 146, column: 9, scope: !627)
!633 = !DILocation(line: 147, column: 45, scope: !627)
!634 = !DILocation(line: 147, column: 29, scope: !627)
!635 = !DILocation(line: 147, column: 9, scope: !627)
!636 = !DILocation(line: 147, column: 15, scope: !627)
!637 = !DILocation(line: 147, column: 27, scope: !627)
!638 = !DILocation(line: 148, column: 9, scope: !627)
!639 = distinct !{!639, !610, !640, !118}
!640 = !DILocation(line: 149, column: 5, scope: !599)
!641 = !DILocation(line: 151, column: 12, scope: !599)
!642 = !DILocation(line: 151, column: 5, scope: !599)
!643 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !644, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!644 = !DISubroutineType(types: !645)
!645 = !{!23}
!646 = !DILocation(line: 158, column: 5, scope: !643)
!647 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !644, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!648 = !DILocation(line: 163, column: 5, scope: !647)
!649 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !644, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!650 = !DILocation(line: 168, column: 13, scope: !649)
!651 = !DILocation(line: 168, column: 20, scope: !649)
!652 = !DILocation(line: 168, column: 5, scope: !649)
!653 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!654 = !DILocation(line: 187, column: 16, scope: !653)
!655 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!656 = !DILocation(line: 188, column: 16, scope: !655)
!657 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!658 = !DILocation(line: 189, column: 16, scope: !657)
!659 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!660 = !DILocation(line: 190, column: 16, scope: !659)
!661 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!662 = !DILocation(line: 191, column: 16, scope: !661)
!663 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!664 = !DILocation(line: 192, column: 16, scope: !663)
!665 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!666 = !DILocation(line: 193, column: 16, scope: !665)
!667 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!668 = !DILocation(line: 194, column: 16, scope: !667)
!669 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!670 = !DILocation(line: 195, column: 16, scope: !669)
!671 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!672 = !DILocation(line: 198, column: 15, scope: !671)
!673 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!674 = !DILocation(line: 199, column: 15, scope: !673)
!675 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!676 = !DILocation(line: 200, column: 15, scope: !675)
!677 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!678 = !DILocation(line: 201, column: 15, scope: !677)
!679 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!680 = !DILocation(line: 202, column: 15, scope: !679)
!681 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!682 = !DILocation(line: 203, column: 15, scope: !681)
!683 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!684 = !DILocation(line: 204, column: 15, scope: !683)
!685 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!686 = !DILocation(line: 205, column: 15, scope: !685)
!687 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!688 = !DILocation(line: 206, column: 15, scope: !687)
