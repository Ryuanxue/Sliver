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
@.str.21 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.28 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.29 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
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
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54_bad() #0 !dbg !60 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !63, metadata !DIExpression()), !dbg !64
  store i32 -1, i32* %data, align 4, !dbg !65
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !66, metadata !DIExpression()), !dbg !71
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !71
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !71
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !72
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !74
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !75
  %cmp = icmp ne i8* %call, null, !dbg !76
  br i1 %cmp, label %if.then, label %if.else, !dbg !77

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !78
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !80
  store i32 %call2, i32* %data, align 4, !dbg !81
  br label %if.end, !dbg !82

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !83
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data, align 4, !dbg !85
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54b_badSink(i32 %2), !dbg !86
  ret void, !dbg !87
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !88 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !89, metadata !DIExpression()), !dbg !90
  store i32 -1, i32* %data, align 4, !dbg !91
  store i32 7, i32* %data, align 4, !dbg !92
  %0 = load i32, i32* %data, align 4, !dbg !93
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54b_goodG2BSink(i32 %0), !dbg !94
  ret void, !dbg !95
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !96 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !97, metadata !DIExpression()), !dbg !98
  store i32 -1, i32* %data, align 4, !dbg !99
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !100, metadata !DIExpression()), !dbg !102
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !102
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !102
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !103
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !105
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !106
  %cmp = icmp ne i8* %call, null, !dbg !107
  br i1 %cmp, label %if.then, label %if.else, !dbg !108

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !109
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !111
  store i32 %call2, i32* %data, align 4, !dbg !112
  br label %if.end, !dbg !113

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !114
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data, align 4, !dbg !116
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54b_goodB2GSink(i32 %2), !dbg !117
  ret void, !dbg !118
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54_good() #0 !dbg !119 {
entry:
  call void @goodG2B(), !dbg !120
  call void @goodB2G(), !dbg !121
  ret void, !dbg !122
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54b_badSink(i32 %data) #0 !dbg !123 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !126, metadata !DIExpression()), !dbg !127
  %0 = load i32, i32* %data.addr, align 4, !dbg !128
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54c_badSink(i32 %0), !dbg !129
  ret void, !dbg !130
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54b_goodG2BSink(i32 %data) #0 !dbg !131 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !132, metadata !DIExpression()), !dbg !133
  %0 = load i32, i32* %data.addr, align 4, !dbg !134
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54c_goodG2BSink(i32 %0), !dbg !135
  ret void, !dbg !136
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54b_goodB2GSink(i32 %data) #0 !dbg !137 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !138, metadata !DIExpression()), !dbg !139
  %0 = load i32, i32* %data.addr, align 4, !dbg !140
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54c_goodB2GSink(i32 %0), !dbg !141
  ret void, !dbg !142
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54c_badSink(i32 %data) #0 !dbg !143 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !144, metadata !DIExpression()), !dbg !145
  %0 = load i32, i32* %data.addr, align 4, !dbg !146
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54d_badSink(i32 %0), !dbg !147
  ret void, !dbg !148
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54c_goodG2BSink(i32 %data) #0 !dbg !149 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !150, metadata !DIExpression()), !dbg !151
  %0 = load i32, i32* %data.addr, align 4, !dbg !152
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54d_goodG2BSink(i32 %0), !dbg !153
  ret void, !dbg !154
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54c_goodB2GSink(i32 %data) #0 !dbg !155 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !156, metadata !DIExpression()), !dbg !157
  %0 = load i32, i32* %data.addr, align 4, !dbg !158
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54d_goodB2GSink(i32 %0), !dbg !159
  ret void, !dbg !160
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54d_badSink(i32 %data) #0 !dbg !161 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !162, metadata !DIExpression()), !dbg !163
  %0 = load i32, i32* %data.addr, align 4, !dbg !164
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54e_badSink(i32 %0), !dbg !165
  ret void, !dbg !166
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54d_goodG2BSink(i32 %data) #0 !dbg !167 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !168, metadata !DIExpression()), !dbg !169
  %0 = load i32, i32* %data.addr, align 4, !dbg !170
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54e_goodG2BSink(i32 %0), !dbg !171
  ret void, !dbg !172
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54d_goodB2GSink(i32 %data) #0 !dbg !173 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !174, metadata !DIExpression()), !dbg !175
  %0 = load i32, i32* %data.addr, align 4, !dbg !176
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54e_goodB2GSink(i32 %0), !dbg !177
  ret void, !dbg !178
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54e_badSink(i32 %data) #0 !dbg !179 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i32* %i, metadata !182, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !185, metadata !DIExpression()), !dbg !189
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !189
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !189
  %1 = load i32, i32* %data.addr, align 4, !dbg !190
  %cmp = icmp sge i32 %1, 0, !dbg !192
  br i1 %cmp, label %if.then, label %if.else, !dbg !193

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !194
  %idxprom = sext i32 %2 to i64, !dbg !196
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !196
  store i32 1, i32* %arrayidx, align 4, !dbg !197
  store i32 0, i32* %i, align 4, !dbg !198
  br label %for.cond, !dbg !200

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !201
  %cmp1 = icmp slt i32 %3, 10, !dbg !203
  br i1 %cmp1, label %for.body, label %for.end, !dbg !204

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !205
  %idxprom2 = sext i32 %4 to i64, !dbg !207
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !207
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !207
  call void @printIntLine(i32 %5), !dbg !208
  br label %for.inc, !dbg !209

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !210
  %inc = add nsw i32 %6, 1, !dbg !210
  store i32 %inc, i32* %i, align 4, !dbg !210
  br label %for.cond, !dbg !211, !llvm.loop !212

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !215

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0)), !dbg !216
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !218
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54e_goodG2BSink(i32 %data) #0 !dbg !219 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata i32* %i, metadata !222, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !225, metadata !DIExpression()), !dbg !226
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !226
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !226
  %1 = load i32, i32* %data.addr, align 4, !dbg !227
  %cmp = icmp sge i32 %1, 0, !dbg !229
  br i1 %cmp, label %if.then, label %if.else, !dbg !230

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !231
  %idxprom = sext i32 %2 to i64, !dbg !233
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !233
  store i32 1, i32* %arrayidx, align 4, !dbg !234
  store i32 0, i32* %i, align 4, !dbg !235
  br label %for.cond, !dbg !237

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !238
  %cmp1 = icmp slt i32 %3, 10, !dbg !240
  br i1 %cmp1, label %for.body, label %for.end, !dbg !241

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !242
  %idxprom2 = sext i32 %4 to i64, !dbg !244
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !244
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !244
  call void @printIntLine(i32 %5), !dbg !245
  br label %for.inc, !dbg !246

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !247
  %inc = add nsw i32 %6, 1, !dbg !247
  store i32 %inc, i32* %i, align 4, !dbg !247
  br label %for.cond, !dbg !248, !llvm.loop !249

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !251

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0)), !dbg !252
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !254
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54e_goodB2GSink(i32 %data) #0 !dbg !255 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !256, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i32* %i, metadata !258, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !261, metadata !DIExpression()), !dbg !262
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !262
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !262
  %1 = load i32, i32* %data.addr, align 4, !dbg !263
  %cmp = icmp sge i32 %1, 0, !dbg !265
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !266

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !267
  %cmp1 = icmp slt i32 %2, 10, !dbg !268
  br i1 %cmp1, label %if.then, label %if.else, !dbg !269

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %data.addr, align 4, !dbg !270
  %idxprom = sext i32 %3 to i64, !dbg !272
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !272
  store i32 1, i32* %arrayidx, align 4, !dbg !273
  store i32 0, i32* %i, align 4, !dbg !274
  br label %for.cond, !dbg !276

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !277
  %cmp2 = icmp slt i32 %4, 10, !dbg !279
  br i1 %cmp2, label %for.body, label %for.end, !dbg !280

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !281
  %idxprom3 = sext i32 %5 to i64, !dbg !283
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !283
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !283
  call void @printIntLine(i32 %6), !dbg !284
  br label %for.inc, !dbg !285

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !286
  %inc = add nsw i32 %7, 1, !dbg !286
  store i32 %inc, i32* %i, align 4, !dbg !286
  br label %for.cond, !dbg !287, !llvm.loop !288

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !290

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !291
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !293
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !294 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !297, metadata !DIExpression()), !dbg !298
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)), !dbg !299
  %0 = load i8*, i8** %line.addr, align 8, !dbg !300
  %cmp = icmp ne i8* %0, null, !dbg !302
  br i1 %cmp, label %if.then, label %if.end, !dbg !303

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !304
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.29, i64 0, i64 0), i8* %1), !dbg !306
  br label %if.end, !dbg !307

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !308
  ret void, !dbg !309
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !310 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !311, metadata !DIExpression()), !dbg !312
  %0 = load i8*, i8** %line.addr, align 8, !dbg !313
  %cmp = icmp ne i8* %0, null, !dbg !315
  br i1 %cmp, label %if.then, label %if.end, !dbg !316

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !317
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.29, i64 0, i64 0), i8* %1), !dbg !319
  br label %if.end, !dbg !320

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !321
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !322 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !328, metadata !DIExpression()), !dbg !329
  %0 = load i32*, i32** %line.addr, align 8, !dbg !330
  %cmp = icmp ne i32* %0, null, !dbg !332
  br i1 %cmp, label %if.then, label %if.end, !dbg !333

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !334
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !336
  br label %if.end, !dbg !337

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !338
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !339 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !340, metadata !DIExpression()), !dbg !341
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !342
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !343
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !345 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !351
  %conv = sext i16 %0 to i32, !dbg !351
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !352
  ret void, !dbg !353
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !354 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !358, metadata !DIExpression()), !dbg !359
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !360
  %conv = fpext float %0 to double, !dbg !360
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !361
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !363 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !367, metadata !DIExpression()), !dbg !368
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !369
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !370
  ret void, !dbg !371
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !372 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !379, metadata !DIExpression()), !dbg !380
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !381
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !382
  ret void, !dbg !383
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !384 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !389, metadata !DIExpression()), !dbg !390
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !391
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !392
  ret void, !dbg !393
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !394 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !397, metadata !DIExpression()), !dbg !398
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !399
  %conv = sext i8 %0 to i32, !dbg !399
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !400
  ret void, !dbg !401
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !402 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !405, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !407, metadata !DIExpression()), !dbg !411
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !412
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !413
  store i32 %0, i32* %arrayidx, align 4, !dbg !414
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !415
  store i32 0, i32* %arrayidx1, align 4, !dbg !416
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !417
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !418
  ret void, !dbg !419
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !420 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !423, metadata !DIExpression()), !dbg !424
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !425
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !426
  ret void, !dbg !427
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !428 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !431, metadata !DIExpression()), !dbg !432
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !433
  %conv = zext i8 %0 to i32, !dbg !433
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !434
  ret void, !dbg !435
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !436 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !440, metadata !DIExpression()), !dbg !441
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !442
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !443
  ret void, !dbg !444
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !445 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !455, metadata !DIExpression()), !dbg !456
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !457
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !458
  %1 = load i32, i32* %intOne, align 4, !dbg !458
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !459
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !460
  %3 = load i32, i32* %intTwo, align 4, !dbg !460
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !461
  ret void, !dbg !462
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !463 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !467, metadata !DIExpression()), !dbg !468
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !469, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.declare(metadata i64* %i, metadata !471, metadata !DIExpression()), !dbg !472
  store i64 0, i64* %i, align 8, !dbg !473
  br label %for.cond, !dbg !475

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !476
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !478
  %cmp = icmp ult i64 %0, %1, !dbg !479
  br i1 %cmp, label %for.body, label %for.end, !dbg !480

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !481
  %3 = load i64, i64* %i, align 8, !dbg !483
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !481
  %4 = load i8, i8* %arrayidx, align 1, !dbg !481
  %conv = zext i8 %4 to i32, !dbg !481
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !484
  br label %for.inc, !dbg !485

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !486
  %inc = add i64 %5, 1, !dbg !486
  store i64 %inc, i64* %i, align 8, !dbg !486
  br label %for.cond, !dbg !487, !llvm.loop !488

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !490
  ret void, !dbg !491
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !492 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !495, metadata !DIExpression()), !dbg !496
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !497, metadata !DIExpression()), !dbg !498
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !499, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !501, metadata !DIExpression()), !dbg !502
  store i64 0, i64* %numWritten, align 8, !dbg !502
  br label %while.cond, !dbg !503

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !504
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !505
  %cmp = icmp ult i64 %0, %1, !dbg !506
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !507

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !508
  %2 = load i16*, i16** %call, align 8, !dbg !508
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !508
  %4 = load i64, i64* %numWritten, align 8, !dbg !508
  %mul = mul i64 2, %4, !dbg !508
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !508
  %5 = load i8, i8* %arrayidx, align 1, !dbg !508
  %conv = sext i8 %5 to i32, !dbg !508
  %idxprom = sext i32 %conv to i64, !dbg !508
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !508
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !508
  %conv2 = zext i16 %6 to i32, !dbg !508
  %and = and i32 %conv2, 4096, !dbg !508
  %tobool = icmp ne i32 %and, 0, !dbg !508
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !509

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !510
  %7 = load i16*, i16** %call3, align 8, !dbg !510
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !510
  %9 = load i64, i64* %numWritten, align 8, !dbg !510
  %mul4 = mul i64 2, %9, !dbg !510
  %add = add i64 %mul4, 1, !dbg !510
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !510
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !510
  %conv6 = sext i8 %10 to i32, !dbg !510
  %idxprom7 = sext i32 %conv6 to i64, !dbg !510
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !510
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !510
  %conv9 = zext i16 %11 to i32, !dbg !510
  %and10 = and i32 %conv9, 4096, !dbg !510
  %tobool11 = icmp ne i32 %and10, 0, !dbg !509
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !511
  br i1 %12, label %while.body, label %while.end, !dbg !503

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !512, metadata !DIExpression()), !dbg !514
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !515
  %14 = load i64, i64* %numWritten, align 8, !dbg !516
  %mul12 = mul i64 2, %14, !dbg !517
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !515
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !518
  %15 = load i32, i32* %byte, align 4, !dbg !519
  %conv15 = trunc i32 %15 to i8, !dbg !520
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !521
  %17 = load i64, i64* %numWritten, align 8, !dbg !522
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !521
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !523
  %18 = load i64, i64* %numWritten, align 8, !dbg !524
  %inc = add i64 %18, 1, !dbg !524
  store i64 %inc, i64* %numWritten, align 8, !dbg !524
  br label %while.cond, !dbg !503, !llvm.loop !525

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !527
  ret i64 %19, !dbg !528
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !529 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !532, metadata !DIExpression()), !dbg !533
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !534, metadata !DIExpression()), !dbg !535
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !536, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !538, metadata !DIExpression()), !dbg !539
  store i64 0, i64* %numWritten, align 8, !dbg !539
  br label %while.cond, !dbg !540

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !541
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !542
  %cmp = icmp ult i64 %0, %1, !dbg !543
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !544

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !545
  %3 = load i64, i64* %numWritten, align 8, !dbg !546
  %mul = mul i64 2, %3, !dbg !547
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !545
  %4 = load i32, i32* %arrayidx, align 4, !dbg !545
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !548
  %tobool = icmp ne i32 %call, 0, !dbg !548
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !549

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !550
  %6 = load i64, i64* %numWritten, align 8, !dbg !551
  %mul1 = mul i64 2, %6, !dbg !552
  %add = add i64 %mul1, 1, !dbg !553
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !550
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !550
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !554
  %tobool4 = icmp ne i32 %call3, 0, !dbg !549
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !555
  br i1 %8, label %while.body, label %while.end, !dbg !540

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !556, metadata !DIExpression()), !dbg !558
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !559
  %10 = load i64, i64* %numWritten, align 8, !dbg !560
  %mul5 = mul i64 2, %10, !dbg !561
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !559
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !562
  %11 = load i32, i32* %byte, align 4, !dbg !563
  %conv = trunc i32 %11 to i8, !dbg !564
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !565
  %13 = load i64, i64* %numWritten, align 8, !dbg !566
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !565
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !567
  %14 = load i64, i64* %numWritten, align 8, !dbg !568
  %inc = add i64 %14, 1, !dbg !568
  store i64 %inc, i64* %numWritten, align 8, !dbg !568
  br label %while.cond, !dbg !540, !llvm.loop !569

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !571
  ret i64 %15, !dbg !572
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !573 {
entry:
  ret i32 1, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !577 {
entry:
  ret i32 0, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !579 {
entry:
  %call = call i32 @rand() #9, !dbg !580
  %rem = srem i32 %call, 2, !dbg !581
  ret i32 %rem, !dbg !582
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !583 {
entry:
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !585 {
entry:
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !587 {
entry:
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !589 {
entry:
  ret void, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !591 {
entry:
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !593 {
entry:
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !595 {
entry:
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !597 {
entry:
  ret void, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !599 {
entry:
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !601 {
entry:
  ret void, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !603 {
entry:
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !605 {
entry:
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !607 {
entry:
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !609 {
entry:
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !611 {
entry:
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !613 {
entry:
  ret void, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !615 {
entry:
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !617 {
entry:
  ret void, !dbg !618
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

!llvm.dbg.cu = !{!44, !48, !50, !52, !54, !2}
!llvm.ident = !{!56, !56, !56, !56, !56, !56}
!llvm.module.flags = !{!57, !58, !59}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_596/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_596/source_code")
!46 = !{}
!47 = !{!22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_596/source_code")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_596/source_code")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54d.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_596/source_code")
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54e.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_596/source_code")
!56 = !{!"clang version 12.0.0"}
!57 = !{i32 7, !"Dwarf Version", i32 4}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54_bad", scope: !45, file: !45, line: 27, type: !61, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!61 = !DISubroutineType(types: !62)
!62 = !{null}
!63 = !DILocalVariable(name: "data", scope: !60, file: !45, line: 29, type: !23)
!64 = !DILocation(line: 29, column: 9, scope: !60)
!65 = !DILocation(line: 31, column: 10, scope: !60)
!66 = !DILocalVariable(name: "inputBuffer", scope: !67, file: !45, line: 33, type: !68)
!67 = distinct !DILexicalBlock(scope: !60, file: !45, line: 32, column: 5)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 112, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 14)
!71 = !DILocation(line: 33, column: 14, scope: !67)
!72 = !DILocation(line: 35, column: 19, scope: !73)
!73 = distinct !DILexicalBlock(scope: !67, file: !45, line: 35, column: 13)
!74 = !DILocation(line: 35, column: 49, scope: !73)
!75 = !DILocation(line: 35, column: 13, scope: !73)
!76 = !DILocation(line: 35, column: 56, scope: !73)
!77 = !DILocation(line: 35, column: 13, scope: !67)
!78 = !DILocation(line: 38, column: 25, scope: !79)
!79 = distinct !DILexicalBlock(scope: !73, file: !45, line: 36, column: 9)
!80 = !DILocation(line: 38, column: 20, scope: !79)
!81 = !DILocation(line: 38, column: 18, scope: !79)
!82 = !DILocation(line: 39, column: 9, scope: !79)
!83 = !DILocation(line: 42, column: 13, scope: !84)
!84 = distinct !DILexicalBlock(scope: !73, file: !45, line: 41, column: 9)
!85 = !DILocation(line: 45, column: 66, scope: !60)
!86 = !DILocation(line: 45, column: 5, scope: !60)
!87 = !DILocation(line: 46, column: 1, scope: !60)
!88 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 54, type: !61, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!89 = !DILocalVariable(name: "data", scope: !88, file: !45, line: 56, type: !23)
!90 = !DILocation(line: 56, column: 9, scope: !88)
!91 = !DILocation(line: 58, column: 10, scope: !88)
!92 = !DILocation(line: 61, column: 10, scope: !88)
!93 = !DILocation(line: 62, column: 70, scope: !88)
!94 = !DILocation(line: 62, column: 5, scope: !88)
!95 = !DILocation(line: 63, column: 1, scope: !88)
!96 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 67, type: !61, scopeLine: 68, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!97 = !DILocalVariable(name: "data", scope: !96, file: !45, line: 69, type: !23)
!98 = !DILocation(line: 69, column: 9, scope: !96)
!99 = !DILocation(line: 71, column: 10, scope: !96)
!100 = !DILocalVariable(name: "inputBuffer", scope: !101, file: !45, line: 73, type: !68)
!101 = distinct !DILexicalBlock(scope: !96, file: !45, line: 72, column: 5)
!102 = !DILocation(line: 73, column: 14, scope: !101)
!103 = !DILocation(line: 75, column: 19, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !45, line: 75, column: 13)
!105 = !DILocation(line: 75, column: 49, scope: !104)
!106 = !DILocation(line: 75, column: 13, scope: !104)
!107 = !DILocation(line: 75, column: 56, scope: !104)
!108 = !DILocation(line: 75, column: 13, scope: !101)
!109 = !DILocation(line: 78, column: 25, scope: !110)
!110 = distinct !DILexicalBlock(scope: !104, file: !45, line: 76, column: 9)
!111 = !DILocation(line: 78, column: 20, scope: !110)
!112 = !DILocation(line: 78, column: 18, scope: !110)
!113 = !DILocation(line: 79, column: 9, scope: !110)
!114 = !DILocation(line: 82, column: 13, scope: !115)
!115 = distinct !DILexicalBlock(scope: !104, file: !45, line: 81, column: 9)
!116 = !DILocation(line: 85, column: 70, scope: !96)
!117 = !DILocation(line: 85, column: 5, scope: !96)
!118 = !DILocation(line: 86, column: 1, scope: !96)
!119 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54_good", scope: !45, file: !45, line: 88, type: !61, scopeLine: 89, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!120 = !DILocation(line: 90, column: 5, scope: !119)
!121 = !DILocation(line: 91, column: 5, scope: !119)
!122 = !DILocation(line: 92, column: 1, scope: !119)
!123 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54b_badSink", scope: !49, file: !49, line: 27, type: !124, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !23}
!126 = !DILocalVariable(name: "data", arg: 1, scope: !123, file: !49, line: 27, type: !23)
!127 = !DILocation(line: 27, column: 71, scope: !123)
!128 = !DILocation(line: 29, column: 66, scope: !123)
!129 = !DILocation(line: 29, column: 5, scope: !123)
!130 = !DILocation(line: 30, column: 1, scope: !123)
!131 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54b_goodG2BSink", scope: !49, file: !49, line: 39, type: !124, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!132 = !DILocalVariable(name: "data", arg: 1, scope: !131, file: !49, line: 39, type: !23)
!133 = !DILocation(line: 39, column: 75, scope: !131)
!134 = !DILocation(line: 41, column: 70, scope: !131)
!135 = !DILocation(line: 41, column: 5, scope: !131)
!136 = !DILocation(line: 42, column: 1, scope: !131)
!137 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54b_goodB2GSink", scope: !49, file: !49, line: 47, type: !124, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!138 = !DILocalVariable(name: "data", arg: 1, scope: !137, file: !49, line: 47, type: !23)
!139 = !DILocation(line: 47, column: 75, scope: !137)
!140 = !DILocation(line: 49, column: 70, scope: !137)
!141 = !DILocation(line: 49, column: 5, scope: !137)
!142 = !DILocation(line: 50, column: 1, scope: !137)
!143 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54c_badSink", scope: !51, file: !51, line: 27, type: !124, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!144 = !DILocalVariable(name: "data", arg: 1, scope: !143, file: !51, line: 27, type: !23)
!145 = !DILocation(line: 27, column: 71, scope: !143)
!146 = !DILocation(line: 29, column: 66, scope: !143)
!147 = !DILocation(line: 29, column: 5, scope: !143)
!148 = !DILocation(line: 30, column: 1, scope: !143)
!149 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54c_goodG2BSink", scope: !51, file: !51, line: 39, type: !124, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!150 = !DILocalVariable(name: "data", arg: 1, scope: !149, file: !51, line: 39, type: !23)
!151 = !DILocation(line: 39, column: 75, scope: !149)
!152 = !DILocation(line: 41, column: 70, scope: !149)
!153 = !DILocation(line: 41, column: 5, scope: !149)
!154 = !DILocation(line: 42, column: 1, scope: !149)
!155 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54c_goodB2GSink", scope: !51, file: !51, line: 47, type: !124, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!156 = !DILocalVariable(name: "data", arg: 1, scope: !155, file: !51, line: 47, type: !23)
!157 = !DILocation(line: 47, column: 75, scope: !155)
!158 = !DILocation(line: 49, column: 70, scope: !155)
!159 = !DILocation(line: 49, column: 5, scope: !155)
!160 = !DILocation(line: 50, column: 1, scope: !155)
!161 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54d_badSink", scope: !53, file: !53, line: 27, type: !124, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!162 = !DILocalVariable(name: "data", arg: 1, scope: !161, file: !53, line: 27, type: !23)
!163 = !DILocation(line: 27, column: 71, scope: !161)
!164 = !DILocation(line: 29, column: 66, scope: !161)
!165 = !DILocation(line: 29, column: 5, scope: !161)
!166 = !DILocation(line: 30, column: 1, scope: !161)
!167 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54d_goodG2BSink", scope: !53, file: !53, line: 39, type: !124, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!168 = !DILocalVariable(name: "data", arg: 1, scope: !167, file: !53, line: 39, type: !23)
!169 = !DILocation(line: 39, column: 75, scope: !167)
!170 = !DILocation(line: 41, column: 70, scope: !167)
!171 = !DILocation(line: 41, column: 5, scope: !167)
!172 = !DILocation(line: 42, column: 1, scope: !167)
!173 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54d_goodB2GSink", scope: !53, file: !53, line: 47, type: !124, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!174 = !DILocalVariable(name: "data", arg: 1, scope: !173, file: !53, line: 47, type: !23)
!175 = !DILocation(line: 47, column: 75, scope: !173)
!176 = !DILocation(line: 49, column: 70, scope: !173)
!177 = !DILocation(line: 49, column: 5, scope: !173)
!178 = !DILocation(line: 50, column: 1, scope: !173)
!179 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54e_badSink", scope: !55, file: !55, line: 24, type: !124, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !46)
!180 = !DILocalVariable(name: "data", arg: 1, scope: !179, file: !55, line: 24, type: !23)
!181 = !DILocation(line: 24, column: 71, scope: !179)
!182 = !DILocalVariable(name: "i", scope: !183, file: !55, line: 27, type: !23)
!183 = distinct !DILexicalBlock(scope: !179, file: !55, line: 26, column: 5)
!184 = !DILocation(line: 27, column: 13, scope: !183)
!185 = !DILocalVariable(name: "buffer", scope: !183, file: !55, line: 28, type: !186)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 10)
!189 = !DILocation(line: 28, column: 13, scope: !183)
!190 = !DILocation(line: 31, column: 13, scope: !191)
!191 = distinct !DILexicalBlock(scope: !183, file: !55, line: 31, column: 13)
!192 = !DILocation(line: 31, column: 18, scope: !191)
!193 = !DILocation(line: 31, column: 13, scope: !183)
!194 = !DILocation(line: 33, column: 20, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !55, line: 32, column: 9)
!196 = !DILocation(line: 33, column: 13, scope: !195)
!197 = !DILocation(line: 33, column: 26, scope: !195)
!198 = !DILocation(line: 35, column: 19, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !55, line: 35, column: 13)
!200 = !DILocation(line: 35, column: 17, scope: !199)
!201 = !DILocation(line: 35, column: 24, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !55, line: 35, column: 13)
!203 = !DILocation(line: 35, column: 26, scope: !202)
!204 = !DILocation(line: 35, column: 13, scope: !199)
!205 = !DILocation(line: 37, column: 37, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !55, line: 36, column: 13)
!207 = !DILocation(line: 37, column: 30, scope: !206)
!208 = !DILocation(line: 37, column: 17, scope: !206)
!209 = !DILocation(line: 38, column: 13, scope: !206)
!210 = !DILocation(line: 35, column: 33, scope: !202)
!211 = !DILocation(line: 35, column: 13, scope: !202)
!212 = distinct !{!212, !204, !213, !214}
!213 = !DILocation(line: 38, column: 13, scope: !199)
!214 = !{!"llvm.loop.mustprogress"}
!215 = !DILocation(line: 39, column: 9, scope: !195)
!216 = !DILocation(line: 42, column: 13, scope: !217)
!217 = distinct !DILexicalBlock(scope: !191, file: !55, line: 41, column: 9)
!218 = !DILocation(line: 45, column: 1, scope: !179)
!219 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54e_goodG2BSink", scope: !55, file: !55, line: 52, type: !124, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !46)
!220 = !DILocalVariable(name: "data", arg: 1, scope: !219, file: !55, line: 52, type: !23)
!221 = !DILocation(line: 52, column: 75, scope: !219)
!222 = !DILocalVariable(name: "i", scope: !223, file: !55, line: 55, type: !23)
!223 = distinct !DILexicalBlock(scope: !219, file: !55, line: 54, column: 5)
!224 = !DILocation(line: 55, column: 13, scope: !223)
!225 = !DILocalVariable(name: "buffer", scope: !223, file: !55, line: 56, type: !186)
!226 = !DILocation(line: 56, column: 13, scope: !223)
!227 = !DILocation(line: 59, column: 13, scope: !228)
!228 = distinct !DILexicalBlock(scope: !223, file: !55, line: 59, column: 13)
!229 = !DILocation(line: 59, column: 18, scope: !228)
!230 = !DILocation(line: 59, column: 13, scope: !223)
!231 = !DILocation(line: 61, column: 20, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !55, line: 60, column: 9)
!233 = !DILocation(line: 61, column: 13, scope: !232)
!234 = !DILocation(line: 61, column: 26, scope: !232)
!235 = !DILocation(line: 63, column: 19, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !55, line: 63, column: 13)
!237 = !DILocation(line: 63, column: 17, scope: !236)
!238 = !DILocation(line: 63, column: 24, scope: !239)
!239 = distinct !DILexicalBlock(scope: !236, file: !55, line: 63, column: 13)
!240 = !DILocation(line: 63, column: 26, scope: !239)
!241 = !DILocation(line: 63, column: 13, scope: !236)
!242 = !DILocation(line: 65, column: 37, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !55, line: 64, column: 13)
!244 = !DILocation(line: 65, column: 30, scope: !243)
!245 = !DILocation(line: 65, column: 17, scope: !243)
!246 = !DILocation(line: 66, column: 13, scope: !243)
!247 = !DILocation(line: 63, column: 33, scope: !239)
!248 = !DILocation(line: 63, column: 13, scope: !239)
!249 = distinct !{!249, !241, !250, !214}
!250 = !DILocation(line: 66, column: 13, scope: !236)
!251 = !DILocation(line: 67, column: 9, scope: !232)
!252 = !DILocation(line: 70, column: 13, scope: !253)
!253 = distinct !DILexicalBlock(scope: !228, file: !55, line: 69, column: 9)
!254 = !DILocation(line: 73, column: 1, scope: !219)
!255 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54e_goodB2GSink", scope: !55, file: !55, line: 76, type: !124, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !46)
!256 = !DILocalVariable(name: "data", arg: 1, scope: !255, file: !55, line: 76, type: !23)
!257 = !DILocation(line: 76, column: 75, scope: !255)
!258 = !DILocalVariable(name: "i", scope: !259, file: !55, line: 79, type: !23)
!259 = distinct !DILexicalBlock(scope: !255, file: !55, line: 78, column: 5)
!260 = !DILocation(line: 79, column: 13, scope: !259)
!261 = !DILocalVariable(name: "buffer", scope: !259, file: !55, line: 80, type: !186)
!262 = !DILocation(line: 80, column: 13, scope: !259)
!263 = !DILocation(line: 82, column: 13, scope: !264)
!264 = distinct !DILexicalBlock(scope: !259, file: !55, line: 82, column: 13)
!265 = !DILocation(line: 82, column: 18, scope: !264)
!266 = !DILocation(line: 82, column: 23, scope: !264)
!267 = !DILocation(line: 82, column: 26, scope: !264)
!268 = !DILocation(line: 82, column: 31, scope: !264)
!269 = !DILocation(line: 82, column: 13, scope: !259)
!270 = !DILocation(line: 84, column: 20, scope: !271)
!271 = distinct !DILexicalBlock(scope: !264, file: !55, line: 83, column: 9)
!272 = !DILocation(line: 84, column: 13, scope: !271)
!273 = !DILocation(line: 84, column: 26, scope: !271)
!274 = !DILocation(line: 86, column: 19, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !55, line: 86, column: 13)
!276 = !DILocation(line: 86, column: 17, scope: !275)
!277 = !DILocation(line: 86, column: 24, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !55, line: 86, column: 13)
!279 = !DILocation(line: 86, column: 26, scope: !278)
!280 = !DILocation(line: 86, column: 13, scope: !275)
!281 = !DILocation(line: 88, column: 37, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !55, line: 87, column: 13)
!283 = !DILocation(line: 88, column: 30, scope: !282)
!284 = !DILocation(line: 88, column: 17, scope: !282)
!285 = !DILocation(line: 89, column: 13, scope: !282)
!286 = !DILocation(line: 86, column: 33, scope: !278)
!287 = !DILocation(line: 86, column: 13, scope: !278)
!288 = distinct !{!288, !280, !289, !214}
!289 = !DILocation(line: 89, column: 13, scope: !275)
!290 = !DILocation(line: 90, column: 9, scope: !271)
!291 = !DILocation(line: 93, column: 13, scope: !292)
!292 = distinct !DILexicalBlock(scope: !264, file: !55, line: 92, column: 9)
!293 = !DILocation(line: 96, column: 1, scope: !255)
!294 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !295, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !42}
!297 = !DILocalVariable(name: "line", arg: 1, scope: !294, file: !3, line: 11, type: !42)
!298 = !DILocation(line: 11, column: 25, scope: !294)
!299 = !DILocation(line: 13, column: 1, scope: !294)
!300 = !DILocation(line: 14, column: 8, scope: !301)
!301 = distinct !DILexicalBlock(scope: !294, file: !3, line: 14, column: 8)
!302 = !DILocation(line: 14, column: 13, scope: !301)
!303 = !DILocation(line: 14, column: 8, scope: !294)
!304 = !DILocation(line: 16, column: 24, scope: !305)
!305 = distinct !DILexicalBlock(scope: !301, file: !3, line: 15, column: 5)
!306 = !DILocation(line: 16, column: 9, scope: !305)
!307 = !DILocation(line: 17, column: 5, scope: !305)
!308 = !DILocation(line: 18, column: 5, scope: !294)
!309 = !DILocation(line: 19, column: 1, scope: !294)
!310 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !295, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!311 = !DILocalVariable(name: "line", arg: 1, scope: !310, file: !3, line: 20, type: !42)
!312 = !DILocation(line: 20, column: 29, scope: !310)
!313 = !DILocation(line: 22, column: 8, scope: !314)
!314 = distinct !DILexicalBlock(scope: !310, file: !3, line: 22, column: 8)
!315 = !DILocation(line: 22, column: 13, scope: !314)
!316 = !DILocation(line: 22, column: 8, scope: !310)
!317 = !DILocation(line: 24, column: 24, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !3, line: 23, column: 5)
!319 = !DILocation(line: 24, column: 9, scope: !318)
!320 = !DILocation(line: 25, column: 5, scope: !318)
!321 = !DILocation(line: 26, column: 1, scope: !310)
!322 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !323, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !325}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !327, line: 74, baseType: !23)
!327 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!328 = !DILocalVariable(name: "line", arg: 1, scope: !322, file: !3, line: 27, type: !325)
!329 = !DILocation(line: 27, column: 29, scope: !322)
!330 = !DILocation(line: 29, column: 8, scope: !331)
!331 = distinct !DILexicalBlock(scope: !322, file: !3, line: 29, column: 8)
!332 = !DILocation(line: 29, column: 13, scope: !331)
!333 = !DILocation(line: 29, column: 8, scope: !322)
!334 = !DILocation(line: 31, column: 27, scope: !335)
!335 = distinct !DILexicalBlock(scope: !331, file: !3, line: 30, column: 5)
!336 = !DILocation(line: 31, column: 9, scope: !335)
!337 = !DILocation(line: 32, column: 5, scope: !335)
!338 = !DILocation(line: 33, column: 1, scope: !322)
!339 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !124, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!340 = !DILocalVariable(name: "intNumber", arg: 1, scope: !339, file: !3, line: 35, type: !23)
!341 = !DILocation(line: 35, column: 24, scope: !339)
!342 = !DILocation(line: 37, column: 20, scope: !339)
!343 = !DILocation(line: 37, column: 5, scope: !339)
!344 = !DILocation(line: 38, column: 1, scope: !339)
!345 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !346, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !348}
!348 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!349 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !345, file: !3, line: 40, type: !348)
!350 = !DILocation(line: 40, column: 28, scope: !345)
!351 = !DILocation(line: 42, column: 21, scope: !345)
!352 = !DILocation(line: 42, column: 5, scope: !345)
!353 = !DILocation(line: 43, column: 1, scope: !345)
!354 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !355, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !357}
!357 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!358 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !354, file: !3, line: 45, type: !357)
!359 = !DILocation(line: 45, column: 28, scope: !354)
!360 = !DILocation(line: 47, column: 20, scope: !354)
!361 = !DILocation(line: 47, column: 5, scope: !354)
!362 = !DILocation(line: 48, column: 1, scope: !354)
!363 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !364, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !366}
!366 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!367 = !DILocalVariable(name: "longNumber", arg: 1, scope: !363, file: !3, line: 50, type: !366)
!368 = !DILocation(line: 50, column: 26, scope: !363)
!369 = !DILocation(line: 52, column: 21, scope: !363)
!370 = !DILocation(line: 52, column: 5, scope: !363)
!371 = !DILocation(line: 53, column: 1, scope: !363)
!372 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !373, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !375}
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !376, line: 27, baseType: !377)
!376 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !378, line: 44, baseType: !366)
!378 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!379 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !372, file: !3, line: 55, type: !375)
!380 = !DILocation(line: 55, column: 33, scope: !372)
!381 = !DILocation(line: 57, column: 29, scope: !372)
!382 = !DILocation(line: 57, column: 5, scope: !372)
!383 = !DILocation(line: 58, column: 1, scope: !372)
!384 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !385, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !387}
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !327, line: 46, baseType: !388)
!388 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!389 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !384, file: !3, line: 60, type: !387)
!390 = !DILocation(line: 60, column: 29, scope: !384)
!391 = !DILocation(line: 62, column: 21, scope: !384)
!392 = !DILocation(line: 62, column: 5, scope: !384)
!393 = !DILocation(line: 63, column: 1, scope: !384)
!394 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !395, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !43}
!397 = !DILocalVariable(name: "charHex", arg: 1, scope: !394, file: !3, line: 65, type: !43)
!398 = !DILocation(line: 65, column: 29, scope: !394)
!399 = !DILocation(line: 67, column: 22, scope: !394)
!400 = !DILocation(line: 67, column: 5, scope: !394)
!401 = !DILocation(line: 68, column: 1, scope: !394)
!402 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !403, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !326}
!405 = !DILocalVariable(name: "wideChar", arg: 1, scope: !402, file: !3, line: 70, type: !326)
!406 = !DILocation(line: 70, column: 29, scope: !402)
!407 = !DILocalVariable(name: "s", scope: !402, file: !3, line: 74, type: !408)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 64, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 2)
!411 = !DILocation(line: 74, column: 13, scope: !402)
!412 = !DILocation(line: 75, column: 16, scope: !402)
!413 = !DILocation(line: 75, column: 9, scope: !402)
!414 = !DILocation(line: 75, column: 14, scope: !402)
!415 = !DILocation(line: 76, column: 9, scope: !402)
!416 = !DILocation(line: 76, column: 14, scope: !402)
!417 = !DILocation(line: 77, column: 21, scope: !402)
!418 = !DILocation(line: 77, column: 5, scope: !402)
!419 = !DILocation(line: 78, column: 1, scope: !402)
!420 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !421, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !7}
!423 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !420, file: !3, line: 80, type: !7)
!424 = !DILocation(line: 80, column: 33, scope: !420)
!425 = !DILocation(line: 82, column: 20, scope: !420)
!426 = !DILocation(line: 82, column: 5, scope: !420)
!427 = !DILocation(line: 83, column: 1, scope: !420)
!428 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !429, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !25}
!431 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !428, file: !3, line: 85, type: !25)
!432 = !DILocation(line: 85, column: 45, scope: !428)
!433 = !DILocation(line: 87, column: 22, scope: !428)
!434 = !DILocation(line: 87, column: 5, scope: !428)
!435 = !DILocation(line: 88, column: 1, scope: !428)
!436 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !437, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !439}
!439 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!440 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !436, file: !3, line: 90, type: !439)
!441 = !DILocation(line: 90, column: 29, scope: !436)
!442 = !DILocation(line: 92, column: 20, scope: !436)
!443 = !DILocation(line: 92, column: 5, scope: !436)
!444 = !DILocation(line: 93, column: 1, scope: !436)
!445 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !446, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !450, line: 100, baseType: !451)
!450 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_596/source_code")
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !450, line: 96, size: 64, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !451, file: !450, line: 98, baseType: !23, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !451, file: !450, line: 99, baseType: !23, size: 32, offset: 32)
!455 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !445, file: !3, line: 95, type: !448)
!456 = !DILocation(line: 95, column: 40, scope: !445)
!457 = !DILocation(line: 97, column: 26, scope: !445)
!458 = !DILocation(line: 97, column: 47, scope: !445)
!459 = !DILocation(line: 97, column: 55, scope: !445)
!460 = !DILocation(line: 97, column: 76, scope: !445)
!461 = !DILocation(line: 97, column: 5, scope: !445)
!462 = !DILocation(line: 98, column: 1, scope: !445)
!463 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !464, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !466, !387}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!467 = !DILocalVariable(name: "bytes", arg: 1, scope: !463, file: !3, line: 100, type: !466)
!468 = !DILocation(line: 100, column: 38, scope: !463)
!469 = !DILocalVariable(name: "numBytes", arg: 2, scope: !463, file: !3, line: 100, type: !387)
!470 = !DILocation(line: 100, column: 52, scope: !463)
!471 = !DILocalVariable(name: "i", scope: !463, file: !3, line: 102, type: !387)
!472 = !DILocation(line: 102, column: 12, scope: !463)
!473 = !DILocation(line: 103, column: 12, scope: !474)
!474 = distinct !DILexicalBlock(scope: !463, file: !3, line: 103, column: 5)
!475 = !DILocation(line: 103, column: 10, scope: !474)
!476 = !DILocation(line: 103, column: 17, scope: !477)
!477 = distinct !DILexicalBlock(scope: !474, file: !3, line: 103, column: 5)
!478 = !DILocation(line: 103, column: 21, scope: !477)
!479 = !DILocation(line: 103, column: 19, scope: !477)
!480 = !DILocation(line: 103, column: 5, scope: !474)
!481 = !DILocation(line: 105, column: 24, scope: !482)
!482 = distinct !DILexicalBlock(scope: !477, file: !3, line: 104, column: 5)
!483 = !DILocation(line: 105, column: 30, scope: !482)
!484 = !DILocation(line: 105, column: 9, scope: !482)
!485 = !DILocation(line: 106, column: 5, scope: !482)
!486 = !DILocation(line: 103, column: 31, scope: !477)
!487 = !DILocation(line: 103, column: 5, scope: !477)
!488 = distinct !{!488, !480, !489, !214}
!489 = !DILocation(line: 106, column: 5, scope: !474)
!490 = !DILocation(line: 107, column: 5, scope: !463)
!491 = !DILocation(line: 108, column: 1, scope: !463)
!492 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !493, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!493 = !DISubroutineType(types: !494)
!494 = !{!387, !466, !387, !42}
!495 = !DILocalVariable(name: "bytes", arg: 1, scope: !492, file: !3, line: 113, type: !466)
!496 = !DILocation(line: 113, column: 39, scope: !492)
!497 = !DILocalVariable(name: "numBytes", arg: 2, scope: !492, file: !3, line: 113, type: !387)
!498 = !DILocation(line: 113, column: 53, scope: !492)
!499 = !DILocalVariable(name: "hex", arg: 3, scope: !492, file: !3, line: 113, type: !42)
!500 = !DILocation(line: 113, column: 71, scope: !492)
!501 = !DILocalVariable(name: "numWritten", scope: !492, file: !3, line: 115, type: !387)
!502 = !DILocation(line: 115, column: 12, scope: !492)
!503 = !DILocation(line: 121, column: 5, scope: !492)
!504 = !DILocation(line: 121, column: 12, scope: !492)
!505 = !DILocation(line: 121, column: 25, scope: !492)
!506 = !DILocation(line: 121, column: 23, scope: !492)
!507 = !DILocation(line: 121, column: 34, scope: !492)
!508 = !DILocation(line: 121, column: 37, scope: !492)
!509 = !DILocation(line: 121, column: 67, scope: !492)
!510 = !DILocation(line: 121, column: 70, scope: !492)
!511 = !DILocation(line: 0, scope: !492)
!512 = !DILocalVariable(name: "byte", scope: !513, file: !3, line: 123, type: !23)
!513 = distinct !DILexicalBlock(scope: !492, file: !3, line: 122, column: 5)
!514 = !DILocation(line: 123, column: 13, scope: !513)
!515 = !DILocation(line: 124, column: 17, scope: !513)
!516 = !DILocation(line: 124, column: 25, scope: !513)
!517 = !DILocation(line: 124, column: 23, scope: !513)
!518 = !DILocation(line: 124, column: 9, scope: !513)
!519 = !DILocation(line: 125, column: 45, scope: !513)
!520 = !DILocation(line: 125, column: 29, scope: !513)
!521 = !DILocation(line: 125, column: 9, scope: !513)
!522 = !DILocation(line: 125, column: 15, scope: !513)
!523 = !DILocation(line: 125, column: 27, scope: !513)
!524 = !DILocation(line: 126, column: 9, scope: !513)
!525 = distinct !{!525, !503, !526, !214}
!526 = !DILocation(line: 127, column: 5, scope: !492)
!527 = !DILocation(line: 129, column: 12, scope: !492)
!528 = !DILocation(line: 129, column: 5, scope: !492)
!529 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !530, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DISubroutineType(types: !531)
!531 = !{!387, !466, !387, !325}
!532 = !DILocalVariable(name: "bytes", arg: 1, scope: !529, file: !3, line: 135, type: !466)
!533 = !DILocation(line: 135, column: 41, scope: !529)
!534 = !DILocalVariable(name: "numBytes", arg: 2, scope: !529, file: !3, line: 135, type: !387)
!535 = !DILocation(line: 135, column: 55, scope: !529)
!536 = !DILocalVariable(name: "hex", arg: 3, scope: !529, file: !3, line: 135, type: !325)
!537 = !DILocation(line: 135, column: 76, scope: !529)
!538 = !DILocalVariable(name: "numWritten", scope: !529, file: !3, line: 137, type: !387)
!539 = !DILocation(line: 137, column: 12, scope: !529)
!540 = !DILocation(line: 143, column: 5, scope: !529)
!541 = !DILocation(line: 143, column: 12, scope: !529)
!542 = !DILocation(line: 143, column: 25, scope: !529)
!543 = !DILocation(line: 143, column: 23, scope: !529)
!544 = !DILocation(line: 143, column: 34, scope: !529)
!545 = !DILocation(line: 143, column: 47, scope: !529)
!546 = !DILocation(line: 143, column: 55, scope: !529)
!547 = !DILocation(line: 143, column: 53, scope: !529)
!548 = !DILocation(line: 143, column: 37, scope: !529)
!549 = !DILocation(line: 143, column: 68, scope: !529)
!550 = !DILocation(line: 143, column: 81, scope: !529)
!551 = !DILocation(line: 143, column: 89, scope: !529)
!552 = !DILocation(line: 143, column: 87, scope: !529)
!553 = !DILocation(line: 143, column: 100, scope: !529)
!554 = !DILocation(line: 143, column: 71, scope: !529)
!555 = !DILocation(line: 0, scope: !529)
!556 = !DILocalVariable(name: "byte", scope: !557, file: !3, line: 145, type: !23)
!557 = distinct !DILexicalBlock(scope: !529, file: !3, line: 144, column: 5)
!558 = !DILocation(line: 145, column: 13, scope: !557)
!559 = !DILocation(line: 146, column: 18, scope: !557)
!560 = !DILocation(line: 146, column: 26, scope: !557)
!561 = !DILocation(line: 146, column: 24, scope: !557)
!562 = !DILocation(line: 146, column: 9, scope: !557)
!563 = !DILocation(line: 147, column: 45, scope: !557)
!564 = !DILocation(line: 147, column: 29, scope: !557)
!565 = !DILocation(line: 147, column: 9, scope: !557)
!566 = !DILocation(line: 147, column: 15, scope: !557)
!567 = !DILocation(line: 147, column: 27, scope: !557)
!568 = !DILocation(line: 148, column: 9, scope: !557)
!569 = distinct !{!569, !540, !570, !214}
!570 = !DILocation(line: 149, column: 5, scope: !529)
!571 = !DILocation(line: 151, column: 12, scope: !529)
!572 = !DILocation(line: 151, column: 5, scope: !529)
!573 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !574, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DISubroutineType(types: !575)
!575 = !{!23}
!576 = !DILocation(line: 158, column: 5, scope: !573)
!577 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !574, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 163, column: 5, scope: !577)
!579 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !574, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 168, column: 13, scope: !579)
!581 = !DILocation(line: 168, column: 20, scope: !579)
!582 = !DILocation(line: 168, column: 5, scope: !579)
!583 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !61, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DILocation(line: 187, column: 16, scope: !583)
!585 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !61, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DILocation(line: 188, column: 16, scope: !585)
!587 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !61, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DILocation(line: 189, column: 16, scope: !587)
!589 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !61, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DILocation(line: 190, column: 16, scope: !589)
!591 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !61, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!592 = !DILocation(line: 191, column: 16, scope: !591)
!593 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !61, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DILocation(line: 192, column: 16, scope: !593)
!595 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !61, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DILocation(line: 193, column: 16, scope: !595)
!597 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !61, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DILocation(line: 194, column: 16, scope: !597)
!599 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !61, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DILocation(line: 195, column: 16, scope: !599)
!601 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !61, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!602 = !DILocation(line: 198, column: 15, scope: !601)
!603 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !61, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DILocation(line: 199, column: 15, scope: !603)
!605 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !61, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DILocation(line: 200, column: 15, scope: !605)
!607 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !61, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 201, column: 15, scope: !607)
!609 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !61, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DILocation(line: 202, column: 15, scope: !609)
!611 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !61, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DILocation(line: 203, column: 15, scope: !611)
!613 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !61, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DILocation(line: 204, column: 15, scope: !613)
!615 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !61, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!616 = !DILocation(line: 205, column: 15, scope: !615)
!617 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !61, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!618 = !DILocation(line: 206, column: 15, scope: !617)
