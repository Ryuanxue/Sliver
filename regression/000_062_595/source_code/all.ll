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
@.str.15 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.22 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
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
@.str.15.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53_bad() #0 !dbg !58 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !61, metadata !DIExpression()), !dbg !62
  store i32 -1, i32* %data, align 4, !dbg !63
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !64, metadata !DIExpression()), !dbg !69
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !69
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !69
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !70
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !72
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !73
  %cmp = icmp ne i8* %call, null, !dbg !74
  br i1 %cmp, label %if.then, label %if.else, !dbg !75

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !76
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !78
  store i32 %call2, i32* %data, align 4, !dbg !79
  br label %if.end, !dbg !80

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !81
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data, align 4, !dbg !83
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b_badSink(i32 %2), !dbg !84
  ret void, !dbg !85
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !86 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !87, metadata !DIExpression()), !dbg !88
  store i32 -1, i32* %data, align 4, !dbg !89
  store i32 7, i32* %data, align 4, !dbg !90
  %0 = load i32, i32* %data, align 4, !dbg !91
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b_goodG2BSink(i32 %0), !dbg !92
  ret void, !dbg !93
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !94 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !95, metadata !DIExpression()), !dbg !96
  store i32 -1, i32* %data, align 4, !dbg !97
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !98, metadata !DIExpression()), !dbg !100
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !100
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !100
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !101
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !103
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !104
  %cmp = icmp ne i8* %call, null, !dbg !105
  br i1 %cmp, label %if.then, label %if.else, !dbg !106

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !107
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !109
  store i32 %call2, i32* %data, align 4, !dbg !110
  br label %if.end, !dbg !111

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !112
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data, align 4, !dbg !114
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b_goodB2GSink(i32 %2), !dbg !115
  ret void, !dbg !116
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53_good() #0 !dbg !117 {
entry:
  call void @goodG2B(), !dbg !118
  call void @goodB2G(), !dbg !119
  ret void, !dbg !120
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b_badSink(i32 %data) #0 !dbg !121 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !124, metadata !DIExpression()), !dbg !125
  %0 = load i32, i32* %data.addr, align 4, !dbg !126
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53c_badSink(i32 %0), !dbg !127
  ret void, !dbg !128
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b_goodG2BSink(i32 %data) #0 !dbg !129 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !130, metadata !DIExpression()), !dbg !131
  %0 = load i32, i32* %data.addr, align 4, !dbg !132
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53c_goodG2BSink(i32 %0), !dbg !133
  ret void, !dbg !134
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b_goodB2GSink(i32 %data) #0 !dbg !135 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !136, metadata !DIExpression()), !dbg !137
  %0 = load i32, i32* %data.addr, align 4, !dbg !138
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53c_goodB2GSink(i32 %0), !dbg !139
  ret void, !dbg !140
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53c_badSink(i32 %data) #0 !dbg !141 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !142, metadata !DIExpression()), !dbg !143
  %0 = load i32, i32* %data.addr, align 4, !dbg !144
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_badSink(i32 %0), !dbg !145
  ret void, !dbg !146
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53c_goodG2BSink(i32 %data) #0 !dbg !147 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !148, metadata !DIExpression()), !dbg !149
  %0 = load i32, i32* %data.addr, align 4, !dbg !150
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodG2BSink(i32 %0), !dbg !151
  ret void, !dbg !152
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53c_goodB2GSink(i32 %data) #0 !dbg !153 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !154, metadata !DIExpression()), !dbg !155
  %0 = load i32, i32* %data.addr, align 4, !dbg !156
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink(i32 %0), !dbg !157
  ret void, !dbg !158
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_badSink(i32 %data) #0 !dbg !159 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata i32* %i, metadata !162, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !165, metadata !DIExpression()), !dbg !169
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !169
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !169
  %1 = load i32, i32* %data.addr, align 4, !dbg !170
  %cmp = icmp sge i32 %1, 0, !dbg !172
  br i1 %cmp, label %if.then, label %if.else, !dbg !173

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !174
  %idxprom = sext i32 %2 to i64, !dbg !176
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !176
  store i32 1, i32* %arrayidx, align 4, !dbg !177
  store i32 0, i32* %i, align 4, !dbg !178
  br label %for.cond, !dbg !180

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !181
  %cmp1 = icmp slt i32 %3, 10, !dbg !183
  br i1 %cmp1, label %for.body, label %for.end, !dbg !184

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !185
  %idxprom2 = sext i32 %4 to i64, !dbg !187
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !187
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !187
  call void @printIntLine(i32 %5), !dbg !188
  br label %for.inc, !dbg !189

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !190
  %inc = add nsw i32 %6, 1, !dbg !190
  store i32 %inc, i32* %i, align 4, !dbg !190
  br label %for.cond, !dbg !191, !llvm.loop !192

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !195

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0)), !dbg !196
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !198
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodG2BSink(i32 %data) #0 !dbg !199 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata i32* %i, metadata !202, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !205, metadata !DIExpression()), !dbg !206
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !206
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !206
  %1 = load i32, i32* %data.addr, align 4, !dbg !207
  %cmp = icmp sge i32 %1, 0, !dbg !209
  br i1 %cmp, label %if.then, label %if.else, !dbg !210

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !211
  %idxprom = sext i32 %2 to i64, !dbg !213
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !213
  store i32 1, i32* %arrayidx, align 4, !dbg !214
  store i32 0, i32* %i, align 4, !dbg !215
  br label %for.cond, !dbg !217

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !218
  %cmp1 = icmp slt i32 %3, 10, !dbg !220
  br i1 %cmp1, label %for.body, label %for.end, !dbg !221

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !222
  %idxprom2 = sext i32 %4 to i64, !dbg !224
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !224
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !224
  call void @printIntLine(i32 %5), !dbg !225
  br label %for.inc, !dbg !226

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !227
  %inc = add nsw i32 %6, 1, !dbg !227
  store i32 %inc, i32* %i, align 4, !dbg !227
  br label %for.cond, !dbg !228, !llvm.loop !229

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !231

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0)), !dbg !232
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !234
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink(i32 %data) #0 !dbg !235 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !236, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i32* %i, metadata !238, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !241, metadata !DIExpression()), !dbg !242
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !242
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !242
  %1 = load i32, i32* %data.addr, align 4, !dbg !243
  %cmp = icmp sge i32 %1, 0, !dbg !245
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !246

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !247
  %cmp1 = icmp slt i32 %2, 10, !dbg !248
  br i1 %cmp1, label %if.then, label %if.else, !dbg !249

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %data.addr, align 4, !dbg !250
  %idxprom = sext i32 %3 to i64, !dbg !252
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !252
  store i32 1, i32* %arrayidx, align 4, !dbg !253
  store i32 0, i32* %i, align 4, !dbg !254
  br label %for.cond, !dbg !256

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !257
  %cmp2 = icmp slt i32 %4, 10, !dbg !259
  br i1 %cmp2, label %for.body, label %for.end, !dbg !260

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !261
  %idxprom3 = sext i32 %5 to i64, !dbg !263
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !263
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !263
  call void @printIntLine(i32 %6), !dbg !264
  br label %for.inc, !dbg !265

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !266
  %inc = add nsw i32 %7, 1, !dbg !266
  store i32 %inc, i32* %i, align 4, !dbg !266
  br label %for.cond, !dbg !267, !llvm.loop !268

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !270

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !271
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !273
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !274 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !277, metadata !DIExpression()), !dbg !278
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0)), !dbg !279
  %0 = load i8*, i8** %line.addr, align 8, !dbg !280
  %cmp = icmp ne i8* %0, null, !dbg !282
  br i1 %cmp, label %if.then, label %if.end, !dbg !283

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !284
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.23, i64 0, i64 0), i8* %1), !dbg !286
  br label %if.end, !dbg !287

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !288
  ret void, !dbg !289
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !290 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !291, metadata !DIExpression()), !dbg !292
  %0 = load i8*, i8** %line.addr, align 8, !dbg !293
  %cmp = icmp ne i8* %0, null, !dbg !295
  br i1 %cmp, label %if.then, label %if.end, !dbg !296

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !297
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.23, i64 0, i64 0), i8* %1), !dbg !299
  br label %if.end, !dbg !300

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !301
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !302 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !308, metadata !DIExpression()), !dbg !309
  %0 = load i32*, i32** %line.addr, align 8, !dbg !310
  %cmp = icmp ne i32* %0, null, !dbg !312
  br i1 %cmp, label %if.then, label %if.end, !dbg !313

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !314
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !316
  br label %if.end, !dbg !317

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !318
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !319 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !320, metadata !DIExpression()), !dbg !321
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !322
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !323
  ret void, !dbg !324
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !325 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !329, metadata !DIExpression()), !dbg !330
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !331
  %conv = sext i16 %0 to i32, !dbg !331
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !332
  ret void, !dbg !333
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !334 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !338, metadata !DIExpression()), !dbg !339
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !340
  %conv = fpext float %0 to double, !dbg !340
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !341
  ret void, !dbg !342
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !343 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !347, metadata !DIExpression()), !dbg !348
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !349
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !350
  ret void, !dbg !351
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !352 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !359, metadata !DIExpression()), !dbg !360
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !361
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !362
  ret void, !dbg !363
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !364 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !371
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !372
  ret void, !dbg !373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !374 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !377, metadata !DIExpression()), !dbg !378
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !379
  %conv = sext i8 %0 to i32, !dbg !379
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !380
  ret void, !dbg !381
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !382 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !385, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !387, metadata !DIExpression()), !dbg !391
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !392
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !393
  store i32 %0, i32* %arrayidx, align 4, !dbg !394
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !395
  store i32 0, i32* %arrayidx1, align 4, !dbg !396
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !397
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !398
  ret void, !dbg !399
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !400 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !408 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !411, metadata !DIExpression()), !dbg !412
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !413
  %conv = zext i8 %0 to i32, !dbg !413
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !414
  ret void, !dbg !415
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !416 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !420, metadata !DIExpression()), !dbg !421
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !422
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !423
  ret void, !dbg !424
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !425 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !435, metadata !DIExpression()), !dbg !436
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !437
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !438
  %1 = load i32, i32* %intOne, align 4, !dbg !438
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !439
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !440
  %3 = load i32, i32* %intTwo, align 4, !dbg !440
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !441
  ret void, !dbg !442
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !443 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !447, metadata !DIExpression()), !dbg !448
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !449, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.declare(metadata i64* %i, metadata !451, metadata !DIExpression()), !dbg !452
  store i64 0, i64* %i, align 8, !dbg !453
  br label %for.cond, !dbg !455

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !456
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !458
  %cmp = icmp ult i64 %0, %1, !dbg !459
  br i1 %cmp, label %for.body, label %for.end, !dbg !460

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !461
  %3 = load i64, i64* %i, align 8, !dbg !463
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !461
  %4 = load i8, i8* %arrayidx, align 1, !dbg !461
  %conv = zext i8 %4 to i32, !dbg !461
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !464
  br label %for.inc, !dbg !465

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !466
  %inc = add i64 %5, 1, !dbg !466
  store i64 %inc, i64* %i, align 8, !dbg !466
  br label %for.cond, !dbg !467, !llvm.loop !468

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15.26, i64 0, i64 0)), !dbg !470
  ret void, !dbg !471
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !472 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !475, metadata !DIExpression()), !dbg !476
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !477, metadata !DIExpression()), !dbg !478
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !479, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !481, metadata !DIExpression()), !dbg !482
  store i64 0, i64* %numWritten, align 8, !dbg !482
  br label %while.cond, !dbg !483

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !484
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !485
  %cmp = icmp ult i64 %0, %1, !dbg !486
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !487

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !488
  %2 = load i16*, i16** %call, align 8, !dbg !488
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !488
  %4 = load i64, i64* %numWritten, align 8, !dbg !488
  %mul = mul i64 2, %4, !dbg !488
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !488
  %5 = load i8, i8* %arrayidx, align 1, !dbg !488
  %conv = sext i8 %5 to i32, !dbg !488
  %idxprom = sext i32 %conv to i64, !dbg !488
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !488
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !488
  %conv2 = zext i16 %6 to i32, !dbg !488
  %and = and i32 %conv2, 4096, !dbg !488
  %tobool = icmp ne i32 %and, 0, !dbg !488
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !489

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !490
  %7 = load i16*, i16** %call3, align 8, !dbg !490
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !490
  %9 = load i64, i64* %numWritten, align 8, !dbg !490
  %mul4 = mul i64 2, %9, !dbg !490
  %add = add i64 %mul4, 1, !dbg !490
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !490
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !490
  %conv6 = sext i8 %10 to i32, !dbg !490
  %idxprom7 = sext i32 %conv6 to i64, !dbg !490
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !490
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !490
  %conv9 = zext i16 %11 to i32, !dbg !490
  %and10 = and i32 %conv9, 4096, !dbg !490
  %tobool11 = icmp ne i32 %and10, 0, !dbg !489
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !491
  br i1 %12, label %while.body, label %while.end, !dbg !483

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !492, metadata !DIExpression()), !dbg !494
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !495
  %14 = load i64, i64* %numWritten, align 8, !dbg !496
  %mul12 = mul i64 2, %14, !dbg !497
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !495
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !498
  %15 = load i32, i32* %byte, align 4, !dbg !499
  %conv15 = trunc i32 %15 to i8, !dbg !500
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !501
  %17 = load i64, i64* %numWritten, align 8, !dbg !502
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !501
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !503
  %18 = load i64, i64* %numWritten, align 8, !dbg !504
  %inc = add i64 %18, 1, !dbg !504
  store i64 %inc, i64* %numWritten, align 8, !dbg !504
  br label %while.cond, !dbg !483, !llvm.loop !505

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !507
  ret i64 %19, !dbg !508
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !509 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !512, metadata !DIExpression()), !dbg !513
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !514, metadata !DIExpression()), !dbg !515
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !516, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !518, metadata !DIExpression()), !dbg !519
  store i64 0, i64* %numWritten, align 8, !dbg !519
  br label %while.cond, !dbg !520

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !521
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !522
  %cmp = icmp ult i64 %0, %1, !dbg !523
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !524

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !525
  %3 = load i64, i64* %numWritten, align 8, !dbg !526
  %mul = mul i64 2, %3, !dbg !527
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !525
  %4 = load i32, i32* %arrayidx, align 4, !dbg !525
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !528
  %tobool = icmp ne i32 %call, 0, !dbg !528
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !529

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !530
  %6 = load i64, i64* %numWritten, align 8, !dbg !531
  %mul1 = mul i64 2, %6, !dbg !532
  %add = add i64 %mul1, 1, !dbg !533
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !530
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !530
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !534
  %tobool4 = icmp ne i32 %call3, 0, !dbg !529
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !535
  br i1 %8, label %while.body, label %while.end, !dbg !520

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !536, metadata !DIExpression()), !dbg !538
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !539
  %10 = load i64, i64* %numWritten, align 8, !dbg !540
  %mul5 = mul i64 2, %10, !dbg !541
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !539
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !542
  %11 = load i32, i32* %byte, align 4, !dbg !543
  %conv = trunc i32 %11 to i8, !dbg !544
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !545
  %13 = load i64, i64* %numWritten, align 8, !dbg !546
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !545
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !547
  %14 = load i64, i64* %numWritten, align 8, !dbg !548
  %inc = add i64 %14, 1, !dbg !548
  store i64 %inc, i64* %numWritten, align 8, !dbg !548
  br label %while.cond, !dbg !520, !llvm.loop !549

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !551
  ret i64 %15, !dbg !552
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !553 {
entry:
  ret i32 1, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !557 {
entry:
  ret i32 0, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !559 {
entry:
  %call = call i32 @rand() #9, !dbg !560
  %rem = srem i32 %call, 2, !dbg !561
  ret i32 %rem, !dbg !562
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !563 {
entry:
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !565 {
entry:
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !567 {
entry:
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !569 {
entry:
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !571 {
entry:
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !573 {
entry:
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !575 {
entry:
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !577 {
entry:
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !579 {
entry:
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !581 {
entry:
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !583 {
entry:
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !585 {
entry:
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !587 {
entry:
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !589 {
entry:
  ret void, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !591 {
entry:
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !593 {
entry:
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !595 {
entry:
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !597 {
entry:
  ret void, !dbg !598
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

!llvm.dbg.cu = !{!44, !48, !50, !52, !2}
!llvm.ident = !{!54, !54, !54, !54, !54}
!llvm.module.flags = !{!55, !56, !57}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_595/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_595/source_code")
!46 = !{}
!47 = !{!22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_595/source_code")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_595/source_code")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_595/source_code")
!54 = !{!"clang version 12.0.0"}
!55 = !{i32 7, !"Dwarf Version", i32 4}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53_bad", scope: !45, file: !45, line: 27, type: !59, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!59 = !DISubroutineType(types: !60)
!60 = !{null}
!61 = !DILocalVariable(name: "data", scope: !58, file: !45, line: 29, type: !23)
!62 = !DILocation(line: 29, column: 9, scope: !58)
!63 = !DILocation(line: 31, column: 10, scope: !58)
!64 = !DILocalVariable(name: "inputBuffer", scope: !65, file: !45, line: 33, type: !66)
!65 = distinct !DILexicalBlock(scope: !58, file: !45, line: 32, column: 5)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 112, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 14)
!69 = !DILocation(line: 33, column: 14, scope: !65)
!70 = !DILocation(line: 35, column: 19, scope: !71)
!71 = distinct !DILexicalBlock(scope: !65, file: !45, line: 35, column: 13)
!72 = !DILocation(line: 35, column: 49, scope: !71)
!73 = !DILocation(line: 35, column: 13, scope: !71)
!74 = !DILocation(line: 35, column: 56, scope: !71)
!75 = !DILocation(line: 35, column: 13, scope: !65)
!76 = !DILocation(line: 38, column: 25, scope: !77)
!77 = distinct !DILexicalBlock(scope: !71, file: !45, line: 36, column: 9)
!78 = !DILocation(line: 38, column: 20, scope: !77)
!79 = !DILocation(line: 38, column: 18, scope: !77)
!80 = !DILocation(line: 39, column: 9, scope: !77)
!81 = !DILocation(line: 42, column: 13, scope: !82)
!82 = distinct !DILexicalBlock(scope: !71, file: !45, line: 41, column: 9)
!83 = !DILocation(line: 45, column: 66, scope: !58)
!84 = !DILocation(line: 45, column: 5, scope: !58)
!85 = !DILocation(line: 46, column: 1, scope: !58)
!86 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 54, type: !59, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!87 = !DILocalVariable(name: "data", scope: !86, file: !45, line: 56, type: !23)
!88 = !DILocation(line: 56, column: 9, scope: !86)
!89 = !DILocation(line: 58, column: 10, scope: !86)
!90 = !DILocation(line: 61, column: 10, scope: !86)
!91 = !DILocation(line: 62, column: 70, scope: !86)
!92 = !DILocation(line: 62, column: 5, scope: !86)
!93 = !DILocation(line: 63, column: 1, scope: !86)
!94 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 67, type: !59, scopeLine: 68, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!95 = !DILocalVariable(name: "data", scope: !94, file: !45, line: 69, type: !23)
!96 = !DILocation(line: 69, column: 9, scope: !94)
!97 = !DILocation(line: 71, column: 10, scope: !94)
!98 = !DILocalVariable(name: "inputBuffer", scope: !99, file: !45, line: 73, type: !66)
!99 = distinct !DILexicalBlock(scope: !94, file: !45, line: 72, column: 5)
!100 = !DILocation(line: 73, column: 14, scope: !99)
!101 = !DILocation(line: 75, column: 19, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !45, line: 75, column: 13)
!103 = !DILocation(line: 75, column: 49, scope: !102)
!104 = !DILocation(line: 75, column: 13, scope: !102)
!105 = !DILocation(line: 75, column: 56, scope: !102)
!106 = !DILocation(line: 75, column: 13, scope: !99)
!107 = !DILocation(line: 78, column: 25, scope: !108)
!108 = distinct !DILexicalBlock(scope: !102, file: !45, line: 76, column: 9)
!109 = !DILocation(line: 78, column: 20, scope: !108)
!110 = !DILocation(line: 78, column: 18, scope: !108)
!111 = !DILocation(line: 79, column: 9, scope: !108)
!112 = !DILocation(line: 82, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !102, file: !45, line: 81, column: 9)
!114 = !DILocation(line: 85, column: 70, scope: !94)
!115 = !DILocation(line: 85, column: 5, scope: !94)
!116 = !DILocation(line: 86, column: 1, scope: !94)
!117 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53_good", scope: !45, file: !45, line: 88, type: !59, scopeLine: 89, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!118 = !DILocation(line: 90, column: 5, scope: !117)
!119 = !DILocation(line: 91, column: 5, scope: !117)
!120 = !DILocation(line: 92, column: 1, scope: !117)
!121 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b_badSink", scope: !49, file: !49, line: 27, type: !122, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !23}
!124 = !DILocalVariable(name: "data", arg: 1, scope: !121, file: !49, line: 27, type: !23)
!125 = !DILocation(line: 27, column: 71, scope: !121)
!126 = !DILocation(line: 29, column: 66, scope: !121)
!127 = !DILocation(line: 29, column: 5, scope: !121)
!128 = !DILocation(line: 30, column: 1, scope: !121)
!129 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b_goodG2BSink", scope: !49, file: !49, line: 39, type: !122, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!130 = !DILocalVariable(name: "data", arg: 1, scope: !129, file: !49, line: 39, type: !23)
!131 = !DILocation(line: 39, column: 75, scope: !129)
!132 = !DILocation(line: 41, column: 70, scope: !129)
!133 = !DILocation(line: 41, column: 5, scope: !129)
!134 = !DILocation(line: 42, column: 1, scope: !129)
!135 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b_goodB2GSink", scope: !49, file: !49, line: 47, type: !122, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!136 = !DILocalVariable(name: "data", arg: 1, scope: !135, file: !49, line: 47, type: !23)
!137 = !DILocation(line: 47, column: 75, scope: !135)
!138 = !DILocation(line: 49, column: 70, scope: !135)
!139 = !DILocation(line: 49, column: 5, scope: !135)
!140 = !DILocation(line: 50, column: 1, scope: !135)
!141 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53c_badSink", scope: !51, file: !51, line: 27, type: !122, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!142 = !DILocalVariable(name: "data", arg: 1, scope: !141, file: !51, line: 27, type: !23)
!143 = !DILocation(line: 27, column: 71, scope: !141)
!144 = !DILocation(line: 29, column: 66, scope: !141)
!145 = !DILocation(line: 29, column: 5, scope: !141)
!146 = !DILocation(line: 30, column: 1, scope: !141)
!147 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53c_goodG2BSink", scope: !51, file: !51, line: 39, type: !122, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!148 = !DILocalVariable(name: "data", arg: 1, scope: !147, file: !51, line: 39, type: !23)
!149 = !DILocation(line: 39, column: 75, scope: !147)
!150 = !DILocation(line: 41, column: 70, scope: !147)
!151 = !DILocation(line: 41, column: 5, scope: !147)
!152 = !DILocation(line: 42, column: 1, scope: !147)
!153 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53c_goodB2GSink", scope: !51, file: !51, line: 47, type: !122, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!154 = !DILocalVariable(name: "data", arg: 1, scope: !153, file: !51, line: 47, type: !23)
!155 = !DILocation(line: 47, column: 75, scope: !153)
!156 = !DILocation(line: 49, column: 70, scope: !153)
!157 = !DILocation(line: 49, column: 5, scope: !153)
!158 = !DILocation(line: 50, column: 1, scope: !153)
!159 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_badSink", scope: !53, file: !53, line: 24, type: !122, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!160 = !DILocalVariable(name: "data", arg: 1, scope: !159, file: !53, line: 24, type: !23)
!161 = !DILocation(line: 24, column: 71, scope: !159)
!162 = !DILocalVariable(name: "i", scope: !163, file: !53, line: 27, type: !23)
!163 = distinct !DILexicalBlock(scope: !159, file: !53, line: 26, column: 5)
!164 = !DILocation(line: 27, column: 13, scope: !163)
!165 = !DILocalVariable(name: "buffer", scope: !163, file: !53, line: 28, type: !166)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 10)
!169 = !DILocation(line: 28, column: 13, scope: !163)
!170 = !DILocation(line: 31, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !163, file: !53, line: 31, column: 13)
!172 = !DILocation(line: 31, column: 18, scope: !171)
!173 = !DILocation(line: 31, column: 13, scope: !163)
!174 = !DILocation(line: 33, column: 20, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !53, line: 32, column: 9)
!176 = !DILocation(line: 33, column: 13, scope: !175)
!177 = !DILocation(line: 33, column: 26, scope: !175)
!178 = !DILocation(line: 35, column: 19, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !53, line: 35, column: 13)
!180 = !DILocation(line: 35, column: 17, scope: !179)
!181 = !DILocation(line: 35, column: 24, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !53, line: 35, column: 13)
!183 = !DILocation(line: 35, column: 26, scope: !182)
!184 = !DILocation(line: 35, column: 13, scope: !179)
!185 = !DILocation(line: 37, column: 37, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !53, line: 36, column: 13)
!187 = !DILocation(line: 37, column: 30, scope: !186)
!188 = !DILocation(line: 37, column: 17, scope: !186)
!189 = !DILocation(line: 38, column: 13, scope: !186)
!190 = !DILocation(line: 35, column: 33, scope: !182)
!191 = !DILocation(line: 35, column: 13, scope: !182)
!192 = distinct !{!192, !184, !193, !194}
!193 = !DILocation(line: 38, column: 13, scope: !179)
!194 = !{!"llvm.loop.mustprogress"}
!195 = !DILocation(line: 39, column: 9, scope: !175)
!196 = !DILocation(line: 42, column: 13, scope: !197)
!197 = distinct !DILexicalBlock(scope: !171, file: !53, line: 41, column: 9)
!198 = !DILocation(line: 45, column: 1, scope: !159)
!199 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodG2BSink", scope: !53, file: !53, line: 52, type: !122, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!200 = !DILocalVariable(name: "data", arg: 1, scope: !199, file: !53, line: 52, type: !23)
!201 = !DILocation(line: 52, column: 75, scope: !199)
!202 = !DILocalVariable(name: "i", scope: !203, file: !53, line: 55, type: !23)
!203 = distinct !DILexicalBlock(scope: !199, file: !53, line: 54, column: 5)
!204 = !DILocation(line: 55, column: 13, scope: !203)
!205 = !DILocalVariable(name: "buffer", scope: !203, file: !53, line: 56, type: !166)
!206 = !DILocation(line: 56, column: 13, scope: !203)
!207 = !DILocation(line: 59, column: 13, scope: !208)
!208 = distinct !DILexicalBlock(scope: !203, file: !53, line: 59, column: 13)
!209 = !DILocation(line: 59, column: 18, scope: !208)
!210 = !DILocation(line: 59, column: 13, scope: !203)
!211 = !DILocation(line: 61, column: 20, scope: !212)
!212 = distinct !DILexicalBlock(scope: !208, file: !53, line: 60, column: 9)
!213 = !DILocation(line: 61, column: 13, scope: !212)
!214 = !DILocation(line: 61, column: 26, scope: !212)
!215 = !DILocation(line: 63, column: 19, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !53, line: 63, column: 13)
!217 = !DILocation(line: 63, column: 17, scope: !216)
!218 = !DILocation(line: 63, column: 24, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !53, line: 63, column: 13)
!220 = !DILocation(line: 63, column: 26, scope: !219)
!221 = !DILocation(line: 63, column: 13, scope: !216)
!222 = !DILocation(line: 65, column: 37, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !53, line: 64, column: 13)
!224 = !DILocation(line: 65, column: 30, scope: !223)
!225 = !DILocation(line: 65, column: 17, scope: !223)
!226 = !DILocation(line: 66, column: 13, scope: !223)
!227 = !DILocation(line: 63, column: 33, scope: !219)
!228 = !DILocation(line: 63, column: 13, scope: !219)
!229 = distinct !{!229, !221, !230, !194}
!230 = !DILocation(line: 66, column: 13, scope: !216)
!231 = !DILocation(line: 67, column: 9, scope: !212)
!232 = !DILocation(line: 70, column: 13, scope: !233)
!233 = distinct !DILexicalBlock(scope: !208, file: !53, line: 69, column: 9)
!234 = !DILocation(line: 73, column: 1, scope: !199)
!235 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink", scope: !53, file: !53, line: 76, type: !122, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!236 = !DILocalVariable(name: "data", arg: 1, scope: !235, file: !53, line: 76, type: !23)
!237 = !DILocation(line: 76, column: 75, scope: !235)
!238 = !DILocalVariable(name: "i", scope: !239, file: !53, line: 79, type: !23)
!239 = distinct !DILexicalBlock(scope: !235, file: !53, line: 78, column: 5)
!240 = !DILocation(line: 79, column: 13, scope: !239)
!241 = !DILocalVariable(name: "buffer", scope: !239, file: !53, line: 80, type: !166)
!242 = !DILocation(line: 80, column: 13, scope: !239)
!243 = !DILocation(line: 82, column: 13, scope: !244)
!244 = distinct !DILexicalBlock(scope: !239, file: !53, line: 82, column: 13)
!245 = !DILocation(line: 82, column: 18, scope: !244)
!246 = !DILocation(line: 82, column: 23, scope: !244)
!247 = !DILocation(line: 82, column: 26, scope: !244)
!248 = !DILocation(line: 82, column: 31, scope: !244)
!249 = !DILocation(line: 82, column: 13, scope: !239)
!250 = !DILocation(line: 84, column: 20, scope: !251)
!251 = distinct !DILexicalBlock(scope: !244, file: !53, line: 83, column: 9)
!252 = !DILocation(line: 84, column: 13, scope: !251)
!253 = !DILocation(line: 84, column: 26, scope: !251)
!254 = !DILocation(line: 86, column: 19, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !53, line: 86, column: 13)
!256 = !DILocation(line: 86, column: 17, scope: !255)
!257 = !DILocation(line: 86, column: 24, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !53, line: 86, column: 13)
!259 = !DILocation(line: 86, column: 26, scope: !258)
!260 = !DILocation(line: 86, column: 13, scope: !255)
!261 = !DILocation(line: 88, column: 37, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !53, line: 87, column: 13)
!263 = !DILocation(line: 88, column: 30, scope: !262)
!264 = !DILocation(line: 88, column: 17, scope: !262)
!265 = !DILocation(line: 89, column: 13, scope: !262)
!266 = !DILocation(line: 86, column: 33, scope: !258)
!267 = !DILocation(line: 86, column: 13, scope: !258)
!268 = distinct !{!268, !260, !269, !194}
!269 = !DILocation(line: 89, column: 13, scope: !255)
!270 = !DILocation(line: 90, column: 9, scope: !251)
!271 = !DILocation(line: 93, column: 13, scope: !272)
!272 = distinct !DILexicalBlock(scope: !244, file: !53, line: 92, column: 9)
!273 = !DILocation(line: 96, column: 1, scope: !235)
!274 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !275, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !42}
!277 = !DILocalVariable(name: "line", arg: 1, scope: !274, file: !3, line: 11, type: !42)
!278 = !DILocation(line: 11, column: 25, scope: !274)
!279 = !DILocation(line: 13, column: 1, scope: !274)
!280 = !DILocation(line: 14, column: 8, scope: !281)
!281 = distinct !DILexicalBlock(scope: !274, file: !3, line: 14, column: 8)
!282 = !DILocation(line: 14, column: 13, scope: !281)
!283 = !DILocation(line: 14, column: 8, scope: !274)
!284 = !DILocation(line: 16, column: 24, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !3, line: 15, column: 5)
!286 = !DILocation(line: 16, column: 9, scope: !285)
!287 = !DILocation(line: 17, column: 5, scope: !285)
!288 = !DILocation(line: 18, column: 5, scope: !274)
!289 = !DILocation(line: 19, column: 1, scope: !274)
!290 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !275, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!291 = !DILocalVariable(name: "line", arg: 1, scope: !290, file: !3, line: 20, type: !42)
!292 = !DILocation(line: 20, column: 29, scope: !290)
!293 = !DILocation(line: 22, column: 8, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !3, line: 22, column: 8)
!295 = !DILocation(line: 22, column: 13, scope: !294)
!296 = !DILocation(line: 22, column: 8, scope: !290)
!297 = !DILocation(line: 24, column: 24, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !3, line: 23, column: 5)
!299 = !DILocation(line: 24, column: 9, scope: !298)
!300 = !DILocation(line: 25, column: 5, scope: !298)
!301 = !DILocation(line: 26, column: 1, scope: !290)
!302 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !303, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !305}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !307, line: 74, baseType: !23)
!307 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!308 = !DILocalVariable(name: "line", arg: 1, scope: !302, file: !3, line: 27, type: !305)
!309 = !DILocation(line: 27, column: 29, scope: !302)
!310 = !DILocation(line: 29, column: 8, scope: !311)
!311 = distinct !DILexicalBlock(scope: !302, file: !3, line: 29, column: 8)
!312 = !DILocation(line: 29, column: 13, scope: !311)
!313 = !DILocation(line: 29, column: 8, scope: !302)
!314 = !DILocation(line: 31, column: 27, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !3, line: 30, column: 5)
!316 = !DILocation(line: 31, column: 9, scope: !315)
!317 = !DILocation(line: 32, column: 5, scope: !315)
!318 = !DILocation(line: 33, column: 1, scope: !302)
!319 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !122, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!320 = !DILocalVariable(name: "intNumber", arg: 1, scope: !319, file: !3, line: 35, type: !23)
!321 = !DILocation(line: 35, column: 24, scope: !319)
!322 = !DILocation(line: 37, column: 20, scope: !319)
!323 = !DILocation(line: 37, column: 5, scope: !319)
!324 = !DILocation(line: 38, column: 1, scope: !319)
!325 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !326, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !328}
!328 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!329 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !325, file: !3, line: 40, type: !328)
!330 = !DILocation(line: 40, column: 28, scope: !325)
!331 = !DILocation(line: 42, column: 21, scope: !325)
!332 = !DILocation(line: 42, column: 5, scope: !325)
!333 = !DILocation(line: 43, column: 1, scope: !325)
!334 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !335, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !337}
!337 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!338 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !334, file: !3, line: 45, type: !337)
!339 = !DILocation(line: 45, column: 28, scope: !334)
!340 = !DILocation(line: 47, column: 20, scope: !334)
!341 = !DILocation(line: 47, column: 5, scope: !334)
!342 = !DILocation(line: 48, column: 1, scope: !334)
!343 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !344, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !346}
!346 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!347 = !DILocalVariable(name: "longNumber", arg: 1, scope: !343, file: !3, line: 50, type: !346)
!348 = !DILocation(line: 50, column: 26, scope: !343)
!349 = !DILocation(line: 52, column: 21, scope: !343)
!350 = !DILocation(line: 52, column: 5, scope: !343)
!351 = !DILocation(line: 53, column: 1, scope: !343)
!352 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !353, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !355}
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !356, line: 27, baseType: !357)
!356 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !358, line: 44, baseType: !346)
!358 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!359 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !352, file: !3, line: 55, type: !355)
!360 = !DILocation(line: 55, column: 33, scope: !352)
!361 = !DILocation(line: 57, column: 29, scope: !352)
!362 = !DILocation(line: 57, column: 5, scope: !352)
!363 = !DILocation(line: 58, column: 1, scope: !352)
!364 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !365, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !367}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !307, line: 46, baseType: !368)
!368 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!369 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !364, file: !3, line: 60, type: !367)
!370 = !DILocation(line: 60, column: 29, scope: !364)
!371 = !DILocation(line: 62, column: 21, scope: !364)
!372 = !DILocation(line: 62, column: 5, scope: !364)
!373 = !DILocation(line: 63, column: 1, scope: !364)
!374 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !375, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !43}
!377 = !DILocalVariable(name: "charHex", arg: 1, scope: !374, file: !3, line: 65, type: !43)
!378 = !DILocation(line: 65, column: 29, scope: !374)
!379 = !DILocation(line: 67, column: 22, scope: !374)
!380 = !DILocation(line: 67, column: 5, scope: !374)
!381 = !DILocation(line: 68, column: 1, scope: !374)
!382 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !383, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !306}
!385 = !DILocalVariable(name: "wideChar", arg: 1, scope: !382, file: !3, line: 70, type: !306)
!386 = !DILocation(line: 70, column: 29, scope: !382)
!387 = !DILocalVariable(name: "s", scope: !382, file: !3, line: 74, type: !388)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 64, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 2)
!391 = !DILocation(line: 74, column: 13, scope: !382)
!392 = !DILocation(line: 75, column: 16, scope: !382)
!393 = !DILocation(line: 75, column: 9, scope: !382)
!394 = !DILocation(line: 75, column: 14, scope: !382)
!395 = !DILocation(line: 76, column: 9, scope: !382)
!396 = !DILocation(line: 76, column: 14, scope: !382)
!397 = !DILocation(line: 77, column: 21, scope: !382)
!398 = !DILocation(line: 77, column: 5, scope: !382)
!399 = !DILocation(line: 78, column: 1, scope: !382)
!400 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !401, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !7}
!403 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !400, file: !3, line: 80, type: !7)
!404 = !DILocation(line: 80, column: 33, scope: !400)
!405 = !DILocation(line: 82, column: 20, scope: !400)
!406 = !DILocation(line: 82, column: 5, scope: !400)
!407 = !DILocation(line: 83, column: 1, scope: !400)
!408 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !409, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !25}
!411 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !408, file: !3, line: 85, type: !25)
!412 = !DILocation(line: 85, column: 45, scope: !408)
!413 = !DILocation(line: 87, column: 22, scope: !408)
!414 = !DILocation(line: 87, column: 5, scope: !408)
!415 = !DILocation(line: 88, column: 1, scope: !408)
!416 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !417, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !419}
!419 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!420 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !416, file: !3, line: 90, type: !419)
!421 = !DILocation(line: 90, column: 29, scope: !416)
!422 = !DILocation(line: 92, column: 20, scope: !416)
!423 = !DILocation(line: 92, column: 5, scope: !416)
!424 = !DILocation(line: 93, column: 1, scope: !416)
!425 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !426, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !428}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !430, line: 100, baseType: !431)
!430 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_595/source_code")
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !430, line: 96, size: 64, elements: !432)
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !431, file: !430, line: 98, baseType: !23, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !431, file: !430, line: 99, baseType: !23, size: 32, offset: 32)
!435 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !425, file: !3, line: 95, type: !428)
!436 = !DILocation(line: 95, column: 40, scope: !425)
!437 = !DILocation(line: 97, column: 26, scope: !425)
!438 = !DILocation(line: 97, column: 47, scope: !425)
!439 = !DILocation(line: 97, column: 55, scope: !425)
!440 = !DILocation(line: 97, column: 76, scope: !425)
!441 = !DILocation(line: 97, column: 5, scope: !425)
!442 = !DILocation(line: 98, column: 1, scope: !425)
!443 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !444, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !446, !367}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!447 = !DILocalVariable(name: "bytes", arg: 1, scope: !443, file: !3, line: 100, type: !446)
!448 = !DILocation(line: 100, column: 38, scope: !443)
!449 = !DILocalVariable(name: "numBytes", arg: 2, scope: !443, file: !3, line: 100, type: !367)
!450 = !DILocation(line: 100, column: 52, scope: !443)
!451 = !DILocalVariable(name: "i", scope: !443, file: !3, line: 102, type: !367)
!452 = !DILocation(line: 102, column: 12, scope: !443)
!453 = !DILocation(line: 103, column: 12, scope: !454)
!454 = distinct !DILexicalBlock(scope: !443, file: !3, line: 103, column: 5)
!455 = !DILocation(line: 103, column: 10, scope: !454)
!456 = !DILocation(line: 103, column: 17, scope: !457)
!457 = distinct !DILexicalBlock(scope: !454, file: !3, line: 103, column: 5)
!458 = !DILocation(line: 103, column: 21, scope: !457)
!459 = !DILocation(line: 103, column: 19, scope: !457)
!460 = !DILocation(line: 103, column: 5, scope: !454)
!461 = !DILocation(line: 105, column: 24, scope: !462)
!462 = distinct !DILexicalBlock(scope: !457, file: !3, line: 104, column: 5)
!463 = !DILocation(line: 105, column: 30, scope: !462)
!464 = !DILocation(line: 105, column: 9, scope: !462)
!465 = !DILocation(line: 106, column: 5, scope: !462)
!466 = !DILocation(line: 103, column: 31, scope: !457)
!467 = !DILocation(line: 103, column: 5, scope: !457)
!468 = distinct !{!468, !460, !469, !194}
!469 = !DILocation(line: 106, column: 5, scope: !454)
!470 = !DILocation(line: 107, column: 5, scope: !443)
!471 = !DILocation(line: 108, column: 1, scope: !443)
!472 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !473, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!473 = !DISubroutineType(types: !474)
!474 = !{!367, !446, !367, !42}
!475 = !DILocalVariable(name: "bytes", arg: 1, scope: !472, file: !3, line: 113, type: !446)
!476 = !DILocation(line: 113, column: 39, scope: !472)
!477 = !DILocalVariable(name: "numBytes", arg: 2, scope: !472, file: !3, line: 113, type: !367)
!478 = !DILocation(line: 113, column: 53, scope: !472)
!479 = !DILocalVariable(name: "hex", arg: 3, scope: !472, file: !3, line: 113, type: !42)
!480 = !DILocation(line: 113, column: 71, scope: !472)
!481 = !DILocalVariable(name: "numWritten", scope: !472, file: !3, line: 115, type: !367)
!482 = !DILocation(line: 115, column: 12, scope: !472)
!483 = !DILocation(line: 121, column: 5, scope: !472)
!484 = !DILocation(line: 121, column: 12, scope: !472)
!485 = !DILocation(line: 121, column: 25, scope: !472)
!486 = !DILocation(line: 121, column: 23, scope: !472)
!487 = !DILocation(line: 121, column: 34, scope: !472)
!488 = !DILocation(line: 121, column: 37, scope: !472)
!489 = !DILocation(line: 121, column: 67, scope: !472)
!490 = !DILocation(line: 121, column: 70, scope: !472)
!491 = !DILocation(line: 0, scope: !472)
!492 = !DILocalVariable(name: "byte", scope: !493, file: !3, line: 123, type: !23)
!493 = distinct !DILexicalBlock(scope: !472, file: !3, line: 122, column: 5)
!494 = !DILocation(line: 123, column: 13, scope: !493)
!495 = !DILocation(line: 124, column: 17, scope: !493)
!496 = !DILocation(line: 124, column: 25, scope: !493)
!497 = !DILocation(line: 124, column: 23, scope: !493)
!498 = !DILocation(line: 124, column: 9, scope: !493)
!499 = !DILocation(line: 125, column: 45, scope: !493)
!500 = !DILocation(line: 125, column: 29, scope: !493)
!501 = !DILocation(line: 125, column: 9, scope: !493)
!502 = !DILocation(line: 125, column: 15, scope: !493)
!503 = !DILocation(line: 125, column: 27, scope: !493)
!504 = !DILocation(line: 126, column: 9, scope: !493)
!505 = distinct !{!505, !483, !506, !194}
!506 = !DILocation(line: 127, column: 5, scope: !472)
!507 = !DILocation(line: 129, column: 12, scope: !472)
!508 = !DILocation(line: 129, column: 5, scope: !472)
!509 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !510, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!510 = !DISubroutineType(types: !511)
!511 = !{!367, !446, !367, !305}
!512 = !DILocalVariable(name: "bytes", arg: 1, scope: !509, file: !3, line: 135, type: !446)
!513 = !DILocation(line: 135, column: 41, scope: !509)
!514 = !DILocalVariable(name: "numBytes", arg: 2, scope: !509, file: !3, line: 135, type: !367)
!515 = !DILocation(line: 135, column: 55, scope: !509)
!516 = !DILocalVariable(name: "hex", arg: 3, scope: !509, file: !3, line: 135, type: !305)
!517 = !DILocation(line: 135, column: 76, scope: !509)
!518 = !DILocalVariable(name: "numWritten", scope: !509, file: !3, line: 137, type: !367)
!519 = !DILocation(line: 137, column: 12, scope: !509)
!520 = !DILocation(line: 143, column: 5, scope: !509)
!521 = !DILocation(line: 143, column: 12, scope: !509)
!522 = !DILocation(line: 143, column: 25, scope: !509)
!523 = !DILocation(line: 143, column: 23, scope: !509)
!524 = !DILocation(line: 143, column: 34, scope: !509)
!525 = !DILocation(line: 143, column: 47, scope: !509)
!526 = !DILocation(line: 143, column: 55, scope: !509)
!527 = !DILocation(line: 143, column: 53, scope: !509)
!528 = !DILocation(line: 143, column: 37, scope: !509)
!529 = !DILocation(line: 143, column: 68, scope: !509)
!530 = !DILocation(line: 143, column: 81, scope: !509)
!531 = !DILocation(line: 143, column: 89, scope: !509)
!532 = !DILocation(line: 143, column: 87, scope: !509)
!533 = !DILocation(line: 143, column: 100, scope: !509)
!534 = !DILocation(line: 143, column: 71, scope: !509)
!535 = !DILocation(line: 0, scope: !509)
!536 = !DILocalVariable(name: "byte", scope: !537, file: !3, line: 145, type: !23)
!537 = distinct !DILexicalBlock(scope: !509, file: !3, line: 144, column: 5)
!538 = !DILocation(line: 145, column: 13, scope: !537)
!539 = !DILocation(line: 146, column: 18, scope: !537)
!540 = !DILocation(line: 146, column: 26, scope: !537)
!541 = !DILocation(line: 146, column: 24, scope: !537)
!542 = !DILocation(line: 146, column: 9, scope: !537)
!543 = !DILocation(line: 147, column: 45, scope: !537)
!544 = !DILocation(line: 147, column: 29, scope: !537)
!545 = !DILocation(line: 147, column: 9, scope: !537)
!546 = !DILocation(line: 147, column: 15, scope: !537)
!547 = !DILocation(line: 147, column: 27, scope: !537)
!548 = !DILocation(line: 148, column: 9, scope: !537)
!549 = distinct !{!549, !520, !550, !194}
!550 = !DILocation(line: 149, column: 5, scope: !509)
!551 = !DILocation(line: 151, column: 12, scope: !509)
!552 = !DILocation(line: 151, column: 5, scope: !509)
!553 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !554, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DISubroutineType(types: !555)
!555 = !{!23}
!556 = !DILocation(line: 158, column: 5, scope: !553)
!557 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !554, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 163, column: 5, scope: !557)
!559 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !554, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DILocation(line: 168, column: 13, scope: !559)
!561 = !DILocation(line: 168, column: 20, scope: !559)
!562 = !DILocation(line: 168, column: 5, scope: !559)
!563 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !59, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DILocation(line: 187, column: 16, scope: !563)
!565 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !59, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DILocation(line: 188, column: 16, scope: !565)
!567 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !59, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DILocation(line: 189, column: 16, scope: !567)
!569 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !59, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!570 = !DILocation(line: 190, column: 16, scope: !569)
!571 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !59, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DILocation(line: 191, column: 16, scope: !571)
!573 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !59, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DILocation(line: 192, column: 16, scope: !573)
!575 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !59, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DILocation(line: 193, column: 16, scope: !575)
!577 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !59, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 194, column: 16, scope: !577)
!579 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !59, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 195, column: 16, scope: !579)
!581 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !59, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!582 = !DILocation(line: 198, column: 15, scope: !581)
!583 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !59, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DILocation(line: 199, column: 15, scope: !583)
!585 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !59, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DILocation(line: 200, column: 15, scope: !585)
!587 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !59, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DILocation(line: 201, column: 15, scope: !587)
!589 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !59, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DILocation(line: 202, column: 15, scope: !589)
!591 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !59, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!592 = !DILocation(line: 203, column: 15, scope: !591)
!593 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !59, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DILocation(line: 204, column: 15, scope: !593)
!595 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !59, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DILocation(line: 205, column: 15, scope: !595)
!597 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !59, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DILocation(line: 206, column: 15, scope: !597)
