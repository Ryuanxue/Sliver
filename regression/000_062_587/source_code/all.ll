; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType = type { i32 }
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad() #0 !dbg !52 {
entry:
  %data = alloca i32, align 4
  %myUnion = alloca %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %data3 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %myUnion, metadata !57, metadata !DIExpression()), !dbg !64
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
  %unionFirst = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %myUnion to i32*, !dbg !86
  store i32 %2, i32* %unionFirst, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %data3, metadata !88, metadata !DIExpression()), !dbg !90
  %unionSecond = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %myUnion to i32*, !dbg !91
  %3 = load i32, i32* %unionSecond, align 4, !dbg !91
  store i32 %3, i32* %data3, align 4, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %i, metadata !92, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !95, metadata !DIExpression()), !dbg !99
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !99
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !99
  %5 = load i32, i32* %data3, align 4, !dbg !100
  %cmp4 = icmp sge i32 %5, 0, !dbg !102
  br i1 %cmp4, label %if.then5, label %if.else9, !dbg !103

if.then5:                                         ; preds = %if.end
  %6 = load i32, i32* %data3, align 4, !dbg !104
  %idxprom = sext i32 %6 to i64, !dbg !106
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !106
  store i32 1, i32* %arrayidx, align 4, !dbg !107
  store i32 0, i32* %i, align 4, !dbg !108
  br label %for.cond, !dbg !110

for.cond:                                         ; preds = %for.inc, %if.then5
  %7 = load i32, i32* %i, align 4, !dbg !111
  %cmp6 = icmp slt i32 %7, 10, !dbg !113
  br i1 %cmp6, label %for.body, label %for.end, !dbg !114

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !115
  %idxprom7 = sext i32 %8 to i64, !dbg !117
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom7, !dbg !117
  %9 = load i32, i32* %arrayidx8, align 4, !dbg !117
  call void @printIntLine(i32 %9), !dbg !118
  br label %for.inc, !dbg !119

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !120
  %inc = add nsw i32 %10, 1, !dbg !120
  store i32 %inc, i32* %i, align 4, !dbg !120
  br label %for.cond, !dbg !121, !llvm.loop !122

for.end:                                          ; preds = %for.cond
  br label %if.end10, !dbg !125

if.else9:                                         ; preds = %if.end
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !126
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %for.end
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
define dso_local void @goodG2B() #0 !dbg !129 {
entry:
  %data = alloca i32, align 4
  %myUnion = alloca %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType, align 4
  %data1 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %myUnion, metadata !132, metadata !DIExpression()), !dbg !133
  store i32 -1, i32* %data, align 4, !dbg !134
  store i32 7, i32* %data, align 4, !dbg !135
  %0 = load i32, i32* %data, align 4, !dbg !136
  %unionFirst = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %myUnion to i32*, !dbg !137
  store i32 %0, i32* %unionFirst, align 4, !dbg !138
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !139, metadata !DIExpression()), !dbg !141
  %unionSecond = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %myUnion to i32*, !dbg !142
  %1 = load i32, i32* %unionSecond, align 4, !dbg !142
  store i32 %1, i32* %data1, align 4, !dbg !141
  call void @llvm.dbg.declare(metadata i32* %i, metadata !143, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !146, metadata !DIExpression()), !dbg !147
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !147
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !147
  %3 = load i32, i32* %data1, align 4, !dbg !148
  %cmp = icmp sge i32 %3, 0, !dbg !150
  br i1 %cmp, label %if.then, label %if.else, !dbg !151

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %data1, align 4, !dbg !152
  %idxprom = sext i32 %4 to i64, !dbg !154
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !154
  store i32 1, i32* %arrayidx, align 4, !dbg !155
  store i32 0, i32* %i, align 4, !dbg !156
  br label %for.cond, !dbg !158

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !159
  %cmp2 = icmp slt i32 %5, 10, !dbg !161
  br i1 %cmp2, label %for.body, label %for.end, !dbg !162

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !163
  %idxprom3 = sext i32 %6 to i64, !dbg !165
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !165
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !165
  call void @printIntLine(i32 %7), !dbg !166
  br label %for.inc, !dbg !167

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !168
  %inc = add nsw i32 %8, 1, !dbg !168
  store i32 %inc, i32* %i, align 4, !dbg !168
  br label %for.cond, !dbg !169, !llvm.loop !170

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !172

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !173
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !175
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !176 {
entry:
  %data = alloca i32, align 4
  %myUnion = alloca %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %data3 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %myUnion, metadata !179, metadata !DIExpression()), !dbg !180
  store i32 -1, i32* %data, align 4, !dbg !181
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !182, metadata !DIExpression()), !dbg !184
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !184
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !184
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !185
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !187
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !188
  %cmp = icmp ne i8* %call, null, !dbg !189
  br i1 %cmp, label %if.then, label %if.else, !dbg !190

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !191
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !193
  store i32 %call2, i32* %data, align 4, !dbg !194
  br label %if.end, !dbg !195

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !196
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data, align 4, !dbg !198
  %unionFirst = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %myUnion to i32*, !dbg !199
  store i32 %2, i32* %unionFirst, align 4, !dbg !200
  call void @llvm.dbg.declare(metadata i32* %data3, metadata !201, metadata !DIExpression()), !dbg !203
  %unionSecond = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %myUnion to i32*, !dbg !204
  %3 = load i32, i32* %unionSecond, align 4, !dbg !204
  store i32 %3, i32* %data3, align 4, !dbg !203
  call void @llvm.dbg.declare(metadata i32* %i, metadata !205, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !208, metadata !DIExpression()), !dbg !209
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !209
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !209
  %5 = load i32, i32* %data3, align 4, !dbg !210
  %cmp4 = icmp sge i32 %5, 0, !dbg !212
  br i1 %cmp4, label %land.lhs.true, label %if.else10, !dbg !213

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, i32* %data3, align 4, !dbg !214
  %cmp5 = icmp slt i32 %6, 10, !dbg !215
  br i1 %cmp5, label %if.then6, label %if.else10, !dbg !216

if.then6:                                         ; preds = %land.lhs.true
  %7 = load i32, i32* %data3, align 4, !dbg !217
  %idxprom = sext i32 %7 to i64, !dbg !219
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !219
  store i32 1, i32* %arrayidx, align 4, !dbg !220
  store i32 0, i32* %i, align 4, !dbg !221
  br label %for.cond, !dbg !223

for.cond:                                         ; preds = %for.inc, %if.then6
  %8 = load i32, i32* %i, align 4, !dbg !224
  %cmp7 = icmp slt i32 %8, 10, !dbg !226
  br i1 %cmp7, label %for.body, label %for.end, !dbg !227

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !228
  %idxprom8 = sext i32 %9 to i64, !dbg !230
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom8, !dbg !230
  %10 = load i32, i32* %arrayidx9, align 4, !dbg !230
  call void @printIntLine(i32 %10), !dbg !231
  br label %for.inc, !dbg !232

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !233
  %inc = add nsw i32 %11, 1, !dbg !233
  store i32 %inc, i32* %i, align 4, !dbg !233
  br label %for.cond, !dbg !234, !llvm.loop !235

for.end:                                          ; preds = %for.cond
  br label %if.end11, !dbg !237

if.else10:                                        ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !238
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %for.end
  ret void, !dbg !240
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_good() #0 !dbg !241 {
entry:
  call void @goodG2B(), !dbg !242
  call void @goodB2G(), !dbg !243
  ret void, !dbg !244
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !245 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !248, metadata !DIExpression()), !dbg !249
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !250
  %0 = load i8*, i8** %line.addr, align 8, !dbg !251
  %cmp = icmp ne i8* %0, null, !dbg !253
  br i1 %cmp, label %if.then, label %if.end, !dbg !254

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !255
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !257
  br label %if.end, !dbg !258

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !259
  ret void, !dbg !260
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !261 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !262, metadata !DIExpression()), !dbg !263
  %0 = load i8*, i8** %line.addr, align 8, !dbg !264
  %cmp = icmp ne i8* %0, null, !dbg !266
  br i1 %cmp, label %if.then, label %if.end, !dbg !267

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !268
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !270
  br label %if.end, !dbg !271

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !272
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !273 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !279, metadata !DIExpression()), !dbg !280
  %0 = load i32*, i32** %line.addr, align 8, !dbg !281
  %cmp = icmp ne i32* %0, null, !dbg !283
  br i1 %cmp, label %if.then, label %if.end, !dbg !284

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !285
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !287
  br label %if.end, !dbg !288

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !289
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !290 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !293, metadata !DIExpression()), !dbg !294
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !295
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !296
  ret void, !dbg !297
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !298 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !302, metadata !DIExpression()), !dbg !303
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !304
  %conv = sext i16 %0 to i32, !dbg !304
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !305
  ret void, !dbg !306
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !307 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !311, metadata !DIExpression()), !dbg !312
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !313
  %conv = fpext float %0 to double, !dbg !313
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !314
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !316 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !320, metadata !DIExpression()), !dbg !321
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !322
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !323
  ret void, !dbg !324
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !325 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !332, metadata !DIExpression()), !dbg !333
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !334
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !335
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !337 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !344
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !345
  ret void, !dbg !346
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !347 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !350, metadata !DIExpression()), !dbg !351
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !352
  %conv = sext i8 %0 to i32, !dbg !352
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !353
  ret void, !dbg !354
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !355 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !358, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !360, metadata !DIExpression()), !dbg !364
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !365
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !366
  store i32 %0, i32* %arrayidx, align 4, !dbg !367
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !368
  store i32 0, i32* %arrayidx1, align 4, !dbg !369
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !370
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !371
  ret void, !dbg !372
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !373 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !378
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !381 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !384, metadata !DIExpression()), !dbg !385
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !386
  %conv = zext i8 %0 to i32, !dbg !386
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !387
  ret void, !dbg !388
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !389 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !393, metadata !DIExpression()), !dbg !394
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !395
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !396
  ret void, !dbg !397
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !398 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !408, metadata !DIExpression()), !dbg !409
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !410
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !411
  %1 = load i32, i32* %intOne, align 4, !dbg !411
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !412
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !413
  %3 = load i32, i32* %intTwo, align 4, !dbg !413
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !414
  ret void, !dbg !415
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !416 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !420, metadata !DIExpression()), !dbg !421
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !422, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.declare(metadata i64* %i, metadata !424, metadata !DIExpression()), !dbg !425
  store i64 0, i64* %i, align 8, !dbg !426
  br label %for.cond, !dbg !428

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !429
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !431
  %cmp = icmp ult i64 %0, %1, !dbg !432
  br i1 %cmp, label %for.body, label %for.end, !dbg !433

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !434
  %3 = load i64, i64* %i, align 8, !dbg !436
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !434
  %4 = load i8, i8* %arrayidx, align 1, !dbg !434
  %conv = zext i8 %4 to i32, !dbg !434
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !437
  br label %for.inc, !dbg !438

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !439
  %inc = add i64 %5, 1, !dbg !439
  store i64 %inc, i64* %i, align 8, !dbg !439
  br label %for.cond, !dbg !440, !llvm.loop !441

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !443
  ret void, !dbg !444
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !445 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !448, metadata !DIExpression()), !dbg !449
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !450, metadata !DIExpression()), !dbg !451
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !452, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !454, metadata !DIExpression()), !dbg !455
  store i64 0, i64* %numWritten, align 8, !dbg !455
  br label %while.cond, !dbg !456

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !457
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !458
  %cmp = icmp ult i64 %0, %1, !dbg !459
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !460

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !461
  %2 = load i16*, i16** %call, align 8, !dbg !461
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !461
  %4 = load i64, i64* %numWritten, align 8, !dbg !461
  %mul = mul i64 2, %4, !dbg !461
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !461
  %5 = load i8, i8* %arrayidx, align 1, !dbg !461
  %conv = sext i8 %5 to i32, !dbg !461
  %idxprom = sext i32 %conv to i64, !dbg !461
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !461
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !461
  %conv2 = zext i16 %6 to i32, !dbg !461
  %and = and i32 %conv2, 4096, !dbg !461
  %tobool = icmp ne i32 %and, 0, !dbg !461
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !462

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !463
  %7 = load i16*, i16** %call3, align 8, !dbg !463
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !463
  %9 = load i64, i64* %numWritten, align 8, !dbg !463
  %mul4 = mul i64 2, %9, !dbg !463
  %add = add i64 %mul4, 1, !dbg !463
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !463
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !463
  %conv6 = sext i8 %10 to i32, !dbg !463
  %idxprom7 = sext i32 %conv6 to i64, !dbg !463
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !463
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !463
  %conv9 = zext i16 %11 to i32, !dbg !463
  %and10 = and i32 %conv9, 4096, !dbg !463
  %tobool11 = icmp ne i32 %and10, 0, !dbg !462
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !464
  br i1 %12, label %while.body, label %while.end, !dbg !456

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !465, metadata !DIExpression()), !dbg !467
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !468
  %14 = load i64, i64* %numWritten, align 8, !dbg !469
  %mul12 = mul i64 2, %14, !dbg !470
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !468
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !471
  %15 = load i32, i32* %byte, align 4, !dbg !472
  %conv15 = trunc i32 %15 to i8, !dbg !473
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !474
  %17 = load i64, i64* %numWritten, align 8, !dbg !475
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !474
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !476
  %18 = load i64, i64* %numWritten, align 8, !dbg !477
  %inc = add i64 %18, 1, !dbg !477
  store i64 %inc, i64* %numWritten, align 8, !dbg !477
  br label %while.cond, !dbg !456, !llvm.loop !478

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !480
  ret i64 %19, !dbg !481
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !482 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !485, metadata !DIExpression()), !dbg !486
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !487, metadata !DIExpression()), !dbg !488
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !489, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !491, metadata !DIExpression()), !dbg !492
  store i64 0, i64* %numWritten, align 8, !dbg !492
  br label %while.cond, !dbg !493

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !494
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !495
  %cmp = icmp ult i64 %0, %1, !dbg !496
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !497

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !498
  %3 = load i64, i64* %numWritten, align 8, !dbg !499
  %mul = mul i64 2, %3, !dbg !500
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !498
  %4 = load i32, i32* %arrayidx, align 4, !dbg !498
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !501
  %tobool = icmp ne i32 %call, 0, !dbg !501
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !502

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !503
  %6 = load i64, i64* %numWritten, align 8, !dbg !504
  %mul1 = mul i64 2, %6, !dbg !505
  %add = add i64 %mul1, 1, !dbg !506
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !503
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !503
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !507
  %tobool4 = icmp ne i32 %call3, 0, !dbg !502
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !508
  br i1 %8, label %while.body, label %while.end, !dbg !493

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !509, metadata !DIExpression()), !dbg !511
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !512
  %10 = load i64, i64* %numWritten, align 8, !dbg !513
  %mul5 = mul i64 2, %10, !dbg !514
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !512
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !515
  %11 = load i32, i32* %byte, align 4, !dbg !516
  %conv = trunc i32 %11 to i8, !dbg !517
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !518
  %13 = load i64, i64* %numWritten, align 8, !dbg !519
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !518
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !520
  %14 = load i64, i64* %numWritten, align 8, !dbg !521
  %inc = add i64 %14, 1, !dbg !521
  store i64 %inc, i64* %numWritten, align 8, !dbg !521
  br label %while.cond, !dbg !493, !llvm.loop !522

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !524
  ret i64 %15, !dbg !525
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !526 {
entry:
  ret i32 1, !dbg !529
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !530 {
entry:
  ret i32 0, !dbg !531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !532 {
entry:
  %call = call i32 @rand() #9, !dbg !533
  %rem = srem i32 %call, 2, !dbg !534
  ret i32 %rem, !dbg !535
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !536 {
entry:
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !538 {
entry:
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !540 {
entry:
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !542 {
entry:
  ret void, !dbg !543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !544 {
entry:
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !546 {
entry:
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !548 {
entry:
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !550 {
entry:
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !552 {
entry:
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !554 {
entry:
  ret void, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !556 {
entry:
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !558 {
entry:
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !560 {
entry:
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !562 {
entry:
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !564 {
entry:
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !566 {
entry:
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !568 {
entry:
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !570 {
entry:
  ret void, !dbg !571
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_587/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_587/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad", scope: !45, file: !45, line: 26, type: !53, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 28, type: !23)
!56 = !DILocation(line: 28, column: 9, scope: !52)
!57 = !DILocalVariable(name: "myUnion", scope: !52, file: !45, line: 29, type: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType", file: !59, line: 9, baseType: !60)
!59 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_587/source_code")
!60 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !59, line: 5, size: 32, elements: !61)
!61 = !{!62, !63}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "unionFirst", scope: !60, file: !59, line: 7, baseType: !23, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "unionSecond", scope: !60, file: !59, line: 8, baseType: !23, size: 32)
!64 = !DILocation(line: 29, column: 67, scope: !52)
!65 = !DILocation(line: 31, column: 10, scope: !52)
!66 = !DILocalVariable(name: "inputBuffer", scope: !67, file: !45, line: 33, type: !68)
!67 = distinct !DILexicalBlock(scope: !52, file: !45, line: 32, column: 5)
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
!85 = !DILocation(line: 45, column: 26, scope: !52)
!86 = !DILocation(line: 45, column: 13, scope: !52)
!87 = !DILocation(line: 45, column: 24, scope: !52)
!88 = !DILocalVariable(name: "data", scope: !89, file: !45, line: 47, type: !23)
!89 = distinct !DILexicalBlock(scope: !52, file: !45, line: 46, column: 5)
!90 = !DILocation(line: 47, column: 13, scope: !89)
!91 = !DILocation(line: 47, column: 28, scope: !89)
!92 = !DILocalVariable(name: "i", scope: !93, file: !45, line: 49, type: !23)
!93 = distinct !DILexicalBlock(scope: !89, file: !45, line: 48, column: 9)
!94 = !DILocation(line: 49, column: 17, scope: !93)
!95 = !DILocalVariable(name: "buffer", scope: !93, file: !45, line: 50, type: !96)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 10)
!99 = !DILocation(line: 50, column: 17, scope: !93)
!100 = !DILocation(line: 53, column: 17, scope: !101)
!101 = distinct !DILexicalBlock(scope: !93, file: !45, line: 53, column: 17)
!102 = !DILocation(line: 53, column: 22, scope: !101)
!103 = !DILocation(line: 53, column: 17, scope: !93)
!104 = !DILocation(line: 55, column: 24, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !45, line: 54, column: 13)
!106 = !DILocation(line: 55, column: 17, scope: !105)
!107 = !DILocation(line: 55, column: 30, scope: !105)
!108 = !DILocation(line: 57, column: 23, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !45, line: 57, column: 17)
!110 = !DILocation(line: 57, column: 21, scope: !109)
!111 = !DILocation(line: 57, column: 28, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !45, line: 57, column: 17)
!113 = !DILocation(line: 57, column: 30, scope: !112)
!114 = !DILocation(line: 57, column: 17, scope: !109)
!115 = !DILocation(line: 59, column: 41, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !45, line: 58, column: 17)
!117 = !DILocation(line: 59, column: 34, scope: !116)
!118 = !DILocation(line: 59, column: 21, scope: !116)
!119 = !DILocation(line: 60, column: 17, scope: !116)
!120 = !DILocation(line: 57, column: 37, scope: !112)
!121 = !DILocation(line: 57, column: 17, scope: !112)
!122 = distinct !{!122, !114, !123, !124}
!123 = !DILocation(line: 60, column: 17, scope: !109)
!124 = !{!"llvm.loop.mustprogress"}
!125 = !DILocation(line: 61, column: 13, scope: !105)
!126 = !DILocation(line: 64, column: 17, scope: !127)
!127 = distinct !DILexicalBlock(scope: !101, file: !45, line: 63, column: 13)
!128 = !DILocation(line: 68, column: 1, scope: !52)
!129 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 75, type: !53, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!130 = !DILocalVariable(name: "data", scope: !129, file: !45, line: 77, type: !23)
!131 = !DILocation(line: 77, column: 9, scope: !129)
!132 = !DILocalVariable(name: "myUnion", scope: !129, file: !45, line: 78, type: !58)
!133 = !DILocation(line: 78, column: 67, scope: !129)
!134 = !DILocation(line: 80, column: 10, scope: !129)
!135 = !DILocation(line: 83, column: 10, scope: !129)
!136 = !DILocation(line: 84, column: 26, scope: !129)
!137 = !DILocation(line: 84, column: 13, scope: !129)
!138 = !DILocation(line: 84, column: 24, scope: !129)
!139 = !DILocalVariable(name: "data", scope: !140, file: !45, line: 86, type: !23)
!140 = distinct !DILexicalBlock(scope: !129, file: !45, line: 85, column: 5)
!141 = !DILocation(line: 86, column: 13, scope: !140)
!142 = !DILocation(line: 86, column: 28, scope: !140)
!143 = !DILocalVariable(name: "i", scope: !144, file: !45, line: 88, type: !23)
!144 = distinct !DILexicalBlock(scope: !140, file: !45, line: 87, column: 9)
!145 = !DILocation(line: 88, column: 17, scope: !144)
!146 = !DILocalVariable(name: "buffer", scope: !144, file: !45, line: 89, type: !96)
!147 = !DILocation(line: 89, column: 17, scope: !144)
!148 = !DILocation(line: 92, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !144, file: !45, line: 92, column: 17)
!150 = !DILocation(line: 92, column: 22, scope: !149)
!151 = !DILocation(line: 92, column: 17, scope: !144)
!152 = !DILocation(line: 94, column: 24, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !45, line: 93, column: 13)
!154 = !DILocation(line: 94, column: 17, scope: !153)
!155 = !DILocation(line: 94, column: 30, scope: !153)
!156 = !DILocation(line: 96, column: 23, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !45, line: 96, column: 17)
!158 = !DILocation(line: 96, column: 21, scope: !157)
!159 = !DILocation(line: 96, column: 28, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !45, line: 96, column: 17)
!161 = !DILocation(line: 96, column: 30, scope: !160)
!162 = !DILocation(line: 96, column: 17, scope: !157)
!163 = !DILocation(line: 98, column: 41, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !45, line: 97, column: 17)
!165 = !DILocation(line: 98, column: 34, scope: !164)
!166 = !DILocation(line: 98, column: 21, scope: !164)
!167 = !DILocation(line: 99, column: 17, scope: !164)
!168 = !DILocation(line: 96, column: 37, scope: !160)
!169 = !DILocation(line: 96, column: 17, scope: !160)
!170 = distinct !{!170, !162, !171, !124}
!171 = !DILocation(line: 99, column: 17, scope: !157)
!172 = !DILocation(line: 100, column: 13, scope: !153)
!173 = !DILocation(line: 103, column: 17, scope: !174)
!174 = distinct !DILexicalBlock(scope: !149, file: !45, line: 102, column: 13)
!175 = !DILocation(line: 107, column: 1, scope: !129)
!176 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 110, type: !53, scopeLine: 111, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!177 = !DILocalVariable(name: "data", scope: !176, file: !45, line: 112, type: !23)
!178 = !DILocation(line: 112, column: 9, scope: !176)
!179 = !DILocalVariable(name: "myUnion", scope: !176, file: !45, line: 113, type: !58)
!180 = !DILocation(line: 113, column: 67, scope: !176)
!181 = !DILocation(line: 115, column: 10, scope: !176)
!182 = !DILocalVariable(name: "inputBuffer", scope: !183, file: !45, line: 117, type: !68)
!183 = distinct !DILexicalBlock(scope: !176, file: !45, line: 116, column: 5)
!184 = !DILocation(line: 117, column: 14, scope: !183)
!185 = !DILocation(line: 119, column: 19, scope: !186)
!186 = distinct !DILexicalBlock(scope: !183, file: !45, line: 119, column: 13)
!187 = !DILocation(line: 119, column: 49, scope: !186)
!188 = !DILocation(line: 119, column: 13, scope: !186)
!189 = !DILocation(line: 119, column: 56, scope: !186)
!190 = !DILocation(line: 119, column: 13, scope: !183)
!191 = !DILocation(line: 122, column: 25, scope: !192)
!192 = distinct !DILexicalBlock(scope: !186, file: !45, line: 120, column: 9)
!193 = !DILocation(line: 122, column: 20, scope: !192)
!194 = !DILocation(line: 122, column: 18, scope: !192)
!195 = !DILocation(line: 123, column: 9, scope: !192)
!196 = !DILocation(line: 126, column: 13, scope: !197)
!197 = distinct !DILexicalBlock(scope: !186, file: !45, line: 125, column: 9)
!198 = !DILocation(line: 129, column: 26, scope: !176)
!199 = !DILocation(line: 129, column: 13, scope: !176)
!200 = !DILocation(line: 129, column: 24, scope: !176)
!201 = !DILocalVariable(name: "data", scope: !202, file: !45, line: 131, type: !23)
!202 = distinct !DILexicalBlock(scope: !176, file: !45, line: 130, column: 5)
!203 = !DILocation(line: 131, column: 13, scope: !202)
!204 = !DILocation(line: 131, column: 28, scope: !202)
!205 = !DILocalVariable(name: "i", scope: !206, file: !45, line: 133, type: !23)
!206 = distinct !DILexicalBlock(scope: !202, file: !45, line: 132, column: 9)
!207 = !DILocation(line: 133, column: 17, scope: !206)
!208 = !DILocalVariable(name: "buffer", scope: !206, file: !45, line: 134, type: !96)
!209 = !DILocation(line: 134, column: 17, scope: !206)
!210 = !DILocation(line: 136, column: 17, scope: !211)
!211 = distinct !DILexicalBlock(scope: !206, file: !45, line: 136, column: 17)
!212 = !DILocation(line: 136, column: 22, scope: !211)
!213 = !DILocation(line: 136, column: 27, scope: !211)
!214 = !DILocation(line: 136, column: 30, scope: !211)
!215 = !DILocation(line: 136, column: 35, scope: !211)
!216 = !DILocation(line: 136, column: 17, scope: !206)
!217 = !DILocation(line: 138, column: 24, scope: !218)
!218 = distinct !DILexicalBlock(scope: !211, file: !45, line: 137, column: 13)
!219 = !DILocation(line: 138, column: 17, scope: !218)
!220 = !DILocation(line: 138, column: 30, scope: !218)
!221 = !DILocation(line: 140, column: 23, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !45, line: 140, column: 17)
!223 = !DILocation(line: 140, column: 21, scope: !222)
!224 = !DILocation(line: 140, column: 28, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !45, line: 140, column: 17)
!226 = !DILocation(line: 140, column: 30, scope: !225)
!227 = !DILocation(line: 140, column: 17, scope: !222)
!228 = !DILocation(line: 142, column: 41, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !45, line: 141, column: 17)
!230 = !DILocation(line: 142, column: 34, scope: !229)
!231 = !DILocation(line: 142, column: 21, scope: !229)
!232 = !DILocation(line: 143, column: 17, scope: !229)
!233 = !DILocation(line: 140, column: 37, scope: !225)
!234 = !DILocation(line: 140, column: 17, scope: !225)
!235 = distinct !{!235, !227, !236, !124}
!236 = !DILocation(line: 143, column: 17, scope: !222)
!237 = !DILocation(line: 144, column: 13, scope: !218)
!238 = !DILocation(line: 147, column: 17, scope: !239)
!239 = distinct !DILexicalBlock(scope: !211, file: !45, line: 146, column: 13)
!240 = !DILocation(line: 151, column: 1, scope: !176)
!241 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_good", scope: !45, file: !45, line: 153, type: !53, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!242 = !DILocation(line: 155, column: 5, scope: !241)
!243 = !DILocation(line: 156, column: 5, scope: !241)
!244 = !DILocation(line: 157, column: 1, scope: !241)
!245 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !246, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !42}
!248 = !DILocalVariable(name: "line", arg: 1, scope: !245, file: !3, line: 11, type: !42)
!249 = !DILocation(line: 11, column: 25, scope: !245)
!250 = !DILocation(line: 13, column: 1, scope: !245)
!251 = !DILocation(line: 14, column: 8, scope: !252)
!252 = distinct !DILexicalBlock(scope: !245, file: !3, line: 14, column: 8)
!253 = !DILocation(line: 14, column: 13, scope: !252)
!254 = !DILocation(line: 14, column: 8, scope: !245)
!255 = !DILocation(line: 16, column: 24, scope: !256)
!256 = distinct !DILexicalBlock(scope: !252, file: !3, line: 15, column: 5)
!257 = !DILocation(line: 16, column: 9, scope: !256)
!258 = !DILocation(line: 17, column: 5, scope: !256)
!259 = !DILocation(line: 18, column: 5, scope: !245)
!260 = !DILocation(line: 19, column: 1, scope: !245)
!261 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !246, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!262 = !DILocalVariable(name: "line", arg: 1, scope: !261, file: !3, line: 20, type: !42)
!263 = !DILocation(line: 20, column: 29, scope: !261)
!264 = !DILocation(line: 22, column: 8, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !3, line: 22, column: 8)
!266 = !DILocation(line: 22, column: 13, scope: !265)
!267 = !DILocation(line: 22, column: 8, scope: !261)
!268 = !DILocation(line: 24, column: 24, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !3, line: 23, column: 5)
!270 = !DILocation(line: 24, column: 9, scope: !269)
!271 = !DILocation(line: 25, column: 5, scope: !269)
!272 = !DILocation(line: 26, column: 1, scope: !261)
!273 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !274, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !276}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !278, line: 74, baseType: !23)
!278 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!279 = !DILocalVariable(name: "line", arg: 1, scope: !273, file: !3, line: 27, type: !276)
!280 = !DILocation(line: 27, column: 29, scope: !273)
!281 = !DILocation(line: 29, column: 8, scope: !282)
!282 = distinct !DILexicalBlock(scope: !273, file: !3, line: 29, column: 8)
!283 = !DILocation(line: 29, column: 13, scope: !282)
!284 = !DILocation(line: 29, column: 8, scope: !273)
!285 = !DILocation(line: 31, column: 27, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !3, line: 30, column: 5)
!287 = !DILocation(line: 31, column: 9, scope: !286)
!288 = !DILocation(line: 32, column: 5, scope: !286)
!289 = !DILocation(line: 33, column: 1, scope: !273)
!290 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !291, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !23}
!293 = !DILocalVariable(name: "intNumber", arg: 1, scope: !290, file: !3, line: 35, type: !23)
!294 = !DILocation(line: 35, column: 24, scope: !290)
!295 = !DILocation(line: 37, column: 20, scope: !290)
!296 = !DILocation(line: 37, column: 5, scope: !290)
!297 = !DILocation(line: 38, column: 1, scope: !290)
!298 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !299, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !301}
!301 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!302 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !298, file: !3, line: 40, type: !301)
!303 = !DILocation(line: 40, column: 28, scope: !298)
!304 = !DILocation(line: 42, column: 21, scope: !298)
!305 = !DILocation(line: 42, column: 5, scope: !298)
!306 = !DILocation(line: 43, column: 1, scope: !298)
!307 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !308, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !310}
!310 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!311 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !307, file: !3, line: 45, type: !310)
!312 = !DILocation(line: 45, column: 28, scope: !307)
!313 = !DILocation(line: 47, column: 20, scope: !307)
!314 = !DILocation(line: 47, column: 5, scope: !307)
!315 = !DILocation(line: 48, column: 1, scope: !307)
!316 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !317, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !319}
!319 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!320 = !DILocalVariable(name: "longNumber", arg: 1, scope: !316, file: !3, line: 50, type: !319)
!321 = !DILocation(line: 50, column: 26, scope: !316)
!322 = !DILocation(line: 52, column: 21, scope: !316)
!323 = !DILocation(line: 52, column: 5, scope: !316)
!324 = !DILocation(line: 53, column: 1, scope: !316)
!325 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !326, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !328}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !329, line: 27, baseType: !330)
!329 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !331, line: 44, baseType: !319)
!331 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!332 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !325, file: !3, line: 55, type: !328)
!333 = !DILocation(line: 55, column: 33, scope: !325)
!334 = !DILocation(line: 57, column: 29, scope: !325)
!335 = !DILocation(line: 57, column: 5, scope: !325)
!336 = !DILocation(line: 58, column: 1, scope: !325)
!337 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !338, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !340}
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !278, line: 46, baseType: !341)
!341 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!342 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !337, file: !3, line: 60, type: !340)
!343 = !DILocation(line: 60, column: 29, scope: !337)
!344 = !DILocation(line: 62, column: 21, scope: !337)
!345 = !DILocation(line: 62, column: 5, scope: !337)
!346 = !DILocation(line: 63, column: 1, scope: !337)
!347 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !348, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !43}
!350 = !DILocalVariable(name: "charHex", arg: 1, scope: !347, file: !3, line: 65, type: !43)
!351 = !DILocation(line: 65, column: 29, scope: !347)
!352 = !DILocation(line: 67, column: 22, scope: !347)
!353 = !DILocation(line: 67, column: 5, scope: !347)
!354 = !DILocation(line: 68, column: 1, scope: !347)
!355 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !356, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !277}
!358 = !DILocalVariable(name: "wideChar", arg: 1, scope: !355, file: !3, line: 70, type: !277)
!359 = !DILocation(line: 70, column: 29, scope: !355)
!360 = !DILocalVariable(name: "s", scope: !355, file: !3, line: 74, type: !361)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 64, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 2)
!364 = !DILocation(line: 74, column: 13, scope: !355)
!365 = !DILocation(line: 75, column: 16, scope: !355)
!366 = !DILocation(line: 75, column: 9, scope: !355)
!367 = !DILocation(line: 75, column: 14, scope: !355)
!368 = !DILocation(line: 76, column: 9, scope: !355)
!369 = !DILocation(line: 76, column: 14, scope: !355)
!370 = !DILocation(line: 77, column: 21, scope: !355)
!371 = !DILocation(line: 77, column: 5, scope: !355)
!372 = !DILocation(line: 78, column: 1, scope: !355)
!373 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !374, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !7}
!376 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !373, file: !3, line: 80, type: !7)
!377 = !DILocation(line: 80, column: 33, scope: !373)
!378 = !DILocation(line: 82, column: 20, scope: !373)
!379 = !DILocation(line: 82, column: 5, scope: !373)
!380 = !DILocation(line: 83, column: 1, scope: !373)
!381 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !382, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !25}
!384 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !381, file: !3, line: 85, type: !25)
!385 = !DILocation(line: 85, column: 45, scope: !381)
!386 = !DILocation(line: 87, column: 22, scope: !381)
!387 = !DILocation(line: 87, column: 5, scope: !381)
!388 = !DILocation(line: 88, column: 1, scope: !381)
!389 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !390, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !392}
!392 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!393 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !389, file: !3, line: 90, type: !392)
!394 = !DILocation(line: 90, column: 29, scope: !389)
!395 = !DILocation(line: 92, column: 20, scope: !389)
!396 = !DILocation(line: 92, column: 5, scope: !389)
!397 = !DILocation(line: 93, column: 1, scope: !389)
!398 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !399, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !401}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !403, line: 100, baseType: !404)
!403 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_587/source_code")
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !403, line: 96, size: 64, elements: !405)
!405 = !{!406, !407}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !404, file: !403, line: 98, baseType: !23, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !404, file: !403, line: 99, baseType: !23, size: 32, offset: 32)
!408 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !398, file: !3, line: 95, type: !401)
!409 = !DILocation(line: 95, column: 40, scope: !398)
!410 = !DILocation(line: 97, column: 26, scope: !398)
!411 = !DILocation(line: 97, column: 47, scope: !398)
!412 = !DILocation(line: 97, column: 55, scope: !398)
!413 = !DILocation(line: 97, column: 76, scope: !398)
!414 = !DILocation(line: 97, column: 5, scope: !398)
!415 = !DILocation(line: 98, column: 1, scope: !398)
!416 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !417, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !419, !340}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!420 = !DILocalVariable(name: "bytes", arg: 1, scope: !416, file: !3, line: 100, type: !419)
!421 = !DILocation(line: 100, column: 38, scope: !416)
!422 = !DILocalVariable(name: "numBytes", arg: 2, scope: !416, file: !3, line: 100, type: !340)
!423 = !DILocation(line: 100, column: 52, scope: !416)
!424 = !DILocalVariable(name: "i", scope: !416, file: !3, line: 102, type: !340)
!425 = !DILocation(line: 102, column: 12, scope: !416)
!426 = !DILocation(line: 103, column: 12, scope: !427)
!427 = distinct !DILexicalBlock(scope: !416, file: !3, line: 103, column: 5)
!428 = !DILocation(line: 103, column: 10, scope: !427)
!429 = !DILocation(line: 103, column: 17, scope: !430)
!430 = distinct !DILexicalBlock(scope: !427, file: !3, line: 103, column: 5)
!431 = !DILocation(line: 103, column: 21, scope: !430)
!432 = !DILocation(line: 103, column: 19, scope: !430)
!433 = !DILocation(line: 103, column: 5, scope: !427)
!434 = !DILocation(line: 105, column: 24, scope: !435)
!435 = distinct !DILexicalBlock(scope: !430, file: !3, line: 104, column: 5)
!436 = !DILocation(line: 105, column: 30, scope: !435)
!437 = !DILocation(line: 105, column: 9, scope: !435)
!438 = !DILocation(line: 106, column: 5, scope: !435)
!439 = !DILocation(line: 103, column: 31, scope: !430)
!440 = !DILocation(line: 103, column: 5, scope: !430)
!441 = distinct !{!441, !433, !442, !124}
!442 = !DILocation(line: 106, column: 5, scope: !427)
!443 = !DILocation(line: 107, column: 5, scope: !416)
!444 = !DILocation(line: 108, column: 1, scope: !416)
!445 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !446, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!446 = !DISubroutineType(types: !447)
!447 = !{!340, !419, !340, !42}
!448 = !DILocalVariable(name: "bytes", arg: 1, scope: !445, file: !3, line: 113, type: !419)
!449 = !DILocation(line: 113, column: 39, scope: !445)
!450 = !DILocalVariable(name: "numBytes", arg: 2, scope: !445, file: !3, line: 113, type: !340)
!451 = !DILocation(line: 113, column: 53, scope: !445)
!452 = !DILocalVariable(name: "hex", arg: 3, scope: !445, file: !3, line: 113, type: !42)
!453 = !DILocation(line: 113, column: 71, scope: !445)
!454 = !DILocalVariable(name: "numWritten", scope: !445, file: !3, line: 115, type: !340)
!455 = !DILocation(line: 115, column: 12, scope: !445)
!456 = !DILocation(line: 121, column: 5, scope: !445)
!457 = !DILocation(line: 121, column: 12, scope: !445)
!458 = !DILocation(line: 121, column: 25, scope: !445)
!459 = !DILocation(line: 121, column: 23, scope: !445)
!460 = !DILocation(line: 121, column: 34, scope: !445)
!461 = !DILocation(line: 121, column: 37, scope: !445)
!462 = !DILocation(line: 121, column: 67, scope: !445)
!463 = !DILocation(line: 121, column: 70, scope: !445)
!464 = !DILocation(line: 0, scope: !445)
!465 = !DILocalVariable(name: "byte", scope: !466, file: !3, line: 123, type: !23)
!466 = distinct !DILexicalBlock(scope: !445, file: !3, line: 122, column: 5)
!467 = !DILocation(line: 123, column: 13, scope: !466)
!468 = !DILocation(line: 124, column: 17, scope: !466)
!469 = !DILocation(line: 124, column: 25, scope: !466)
!470 = !DILocation(line: 124, column: 23, scope: !466)
!471 = !DILocation(line: 124, column: 9, scope: !466)
!472 = !DILocation(line: 125, column: 45, scope: !466)
!473 = !DILocation(line: 125, column: 29, scope: !466)
!474 = !DILocation(line: 125, column: 9, scope: !466)
!475 = !DILocation(line: 125, column: 15, scope: !466)
!476 = !DILocation(line: 125, column: 27, scope: !466)
!477 = !DILocation(line: 126, column: 9, scope: !466)
!478 = distinct !{!478, !456, !479, !124}
!479 = !DILocation(line: 127, column: 5, scope: !445)
!480 = !DILocation(line: 129, column: 12, scope: !445)
!481 = !DILocation(line: 129, column: 5, scope: !445)
!482 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !483, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!483 = !DISubroutineType(types: !484)
!484 = !{!340, !419, !340, !276}
!485 = !DILocalVariable(name: "bytes", arg: 1, scope: !482, file: !3, line: 135, type: !419)
!486 = !DILocation(line: 135, column: 41, scope: !482)
!487 = !DILocalVariable(name: "numBytes", arg: 2, scope: !482, file: !3, line: 135, type: !340)
!488 = !DILocation(line: 135, column: 55, scope: !482)
!489 = !DILocalVariable(name: "hex", arg: 3, scope: !482, file: !3, line: 135, type: !276)
!490 = !DILocation(line: 135, column: 76, scope: !482)
!491 = !DILocalVariable(name: "numWritten", scope: !482, file: !3, line: 137, type: !340)
!492 = !DILocation(line: 137, column: 12, scope: !482)
!493 = !DILocation(line: 143, column: 5, scope: !482)
!494 = !DILocation(line: 143, column: 12, scope: !482)
!495 = !DILocation(line: 143, column: 25, scope: !482)
!496 = !DILocation(line: 143, column: 23, scope: !482)
!497 = !DILocation(line: 143, column: 34, scope: !482)
!498 = !DILocation(line: 143, column: 47, scope: !482)
!499 = !DILocation(line: 143, column: 55, scope: !482)
!500 = !DILocation(line: 143, column: 53, scope: !482)
!501 = !DILocation(line: 143, column: 37, scope: !482)
!502 = !DILocation(line: 143, column: 68, scope: !482)
!503 = !DILocation(line: 143, column: 81, scope: !482)
!504 = !DILocation(line: 143, column: 89, scope: !482)
!505 = !DILocation(line: 143, column: 87, scope: !482)
!506 = !DILocation(line: 143, column: 100, scope: !482)
!507 = !DILocation(line: 143, column: 71, scope: !482)
!508 = !DILocation(line: 0, scope: !482)
!509 = !DILocalVariable(name: "byte", scope: !510, file: !3, line: 145, type: !23)
!510 = distinct !DILexicalBlock(scope: !482, file: !3, line: 144, column: 5)
!511 = !DILocation(line: 145, column: 13, scope: !510)
!512 = !DILocation(line: 146, column: 18, scope: !510)
!513 = !DILocation(line: 146, column: 26, scope: !510)
!514 = !DILocation(line: 146, column: 24, scope: !510)
!515 = !DILocation(line: 146, column: 9, scope: !510)
!516 = !DILocation(line: 147, column: 45, scope: !510)
!517 = !DILocation(line: 147, column: 29, scope: !510)
!518 = !DILocation(line: 147, column: 9, scope: !510)
!519 = !DILocation(line: 147, column: 15, scope: !510)
!520 = !DILocation(line: 147, column: 27, scope: !510)
!521 = !DILocation(line: 148, column: 9, scope: !510)
!522 = distinct !{!522, !493, !523, !124}
!523 = !DILocation(line: 149, column: 5, scope: !482)
!524 = !DILocation(line: 151, column: 12, scope: !482)
!525 = !DILocation(line: 151, column: 5, scope: !482)
!526 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !527, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!527 = !DISubroutineType(types: !528)
!528 = !{!23}
!529 = !DILocation(line: 158, column: 5, scope: !526)
!530 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !527, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!531 = !DILocation(line: 163, column: 5, scope: !530)
!532 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !527, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!533 = !DILocation(line: 168, column: 13, scope: !532)
!534 = !DILocation(line: 168, column: 20, scope: !532)
!535 = !DILocation(line: 168, column: 5, scope: !532)
!536 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!537 = !DILocation(line: 187, column: 16, scope: !536)
!538 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!539 = !DILocation(line: 188, column: 16, scope: !538)
!540 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!541 = !DILocation(line: 189, column: 16, scope: !540)
!542 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!543 = !DILocation(line: 190, column: 16, scope: !542)
!544 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!545 = !DILocation(line: 191, column: 16, scope: !544)
!546 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DILocation(line: 192, column: 16, scope: !546)
!548 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!549 = !DILocation(line: 193, column: 16, scope: !548)
!550 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!551 = !DILocation(line: 194, column: 16, scope: !550)
!552 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!553 = !DILocation(line: 195, column: 16, scope: !552)
!554 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DILocation(line: 198, column: 15, scope: !554)
!556 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!557 = !DILocation(line: 199, column: 15, scope: !556)
!558 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!559 = !DILocation(line: 200, column: 15, scope: !558)
!560 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!561 = !DILocation(line: 201, column: 15, scope: !560)
!562 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!563 = !DILocation(line: 202, column: 15, scope: !562)
!564 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!565 = !DILocation(line: 203, column: 15, scope: !564)
!566 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DILocation(line: 204, column: 15, scope: !566)
!568 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!569 = !DILocation(line: 205, column: 15, scope: !568)
!570 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!571 = !DILocation(line: 206, column: 15, scope: !570)
