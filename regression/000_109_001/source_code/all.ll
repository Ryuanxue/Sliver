; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType = type { i8* }
%struct._twoIntsStruct = type { i32, i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_34_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %data19 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType* %myUnion, metadata !57, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !65, metadata !DIExpression()), !dbg !69
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !69
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !69
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !70
  store i8* %arraydecay, i8** %data, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !72, metadata !DIExpression()), !dbg !77
  %1 = load i8*, i8** %data, align 8, !dbg !78
  %call = call i64 @strlen(i8* %1) #7, !dbg !79
  store i64 %call, i64* %dataLen, align 8, !dbg !77
  %2 = load i64, i64* %dataLen, align 8, !dbg !80
  %sub = sub i64 100, %2, !dbg !82
  %cmp = icmp ugt i64 %sub, 1, !dbg !83
  br i1 %cmp, label %if.then, label %if.end18, !dbg !84

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !85
  %4 = load i64, i64* %dataLen, align 8, !dbg !88
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !89
  %5 = load i64, i64* %dataLen, align 8, !dbg !90
  %sub1 = sub i64 100, %5, !dbg !91
  %conv = trunc i64 %sub1 to i32, !dbg !92
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !93
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !94
  %cmp3 = icmp ne i8* %call2, null, !dbg !95
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !96

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !97
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !99
  store i64 %call6, i64* %dataLen, align 8, !dbg !100
  %8 = load i64, i64* %dataLen, align 8, !dbg !101
  %cmp7 = icmp ugt i64 %8, 0, !dbg !103
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !104

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !105
  %10 = load i64, i64* %dataLen, align 8, !dbg !106
  %sub9 = sub i64 %10, 1, !dbg !107
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !105
  %11 = load i8, i8* %arrayidx, align 1, !dbg !105
  %conv10 = sext i8 %11 to i32, !dbg !105
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !108
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !109

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !110
  %13 = load i64, i64* %dataLen, align 8, !dbg !112
  %sub14 = sub i64 %13, 1, !dbg !113
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !110
  store i8 0, i8* %arrayidx15, align 1, !dbg !114
  br label %if.end, !dbg !115

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !116

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !117
  %14 = load i8*, i8** %data, align 8, !dbg !119
  %15 = load i64, i64* %dataLen, align 8, !dbg !120
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !119
  store i8 0, i8* %arrayidx16, align 1, !dbg !121
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !122

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !123
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType* %myUnion to i8**, !dbg !124
  store i8* %16, i8** %unionFirst, align 8, !dbg !125
  call void @llvm.dbg.declare(metadata i8** %data19, metadata !126, metadata !DIExpression()), !dbg !128
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType* %myUnion to i8**, !dbg !129
  %17 = load i8*, i8** %unionSecond, align 8, !dbg !129
  store i8* %17, i8** %data19, align 8, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %i, metadata !130, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata i32* %n, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !135, metadata !DIExpression()), !dbg !136
  %18 = load i8*, i8** %data19, align 8, !dbg !137
  %call20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !139
  %cmp21 = icmp eq i32 %call20, 1, !dbg !140
  br i1 %cmp21, label %if.then23, label %if.end27, !dbg !141

if.then23:                                        ; preds = %if.end18
  store i32 0, i32* %intVariable, align 4, !dbg !142
  store i32 0, i32* %i, align 4, !dbg !144
  br label %for.cond, !dbg !146

for.cond:                                         ; preds = %for.inc, %if.then23
  %19 = load i32, i32* %i, align 4, !dbg !147
  %20 = load i32, i32* %n, align 4, !dbg !149
  %cmp24 = icmp slt i32 %19, %20, !dbg !150
  br i1 %cmp24, label %for.body, label %for.end, !dbg !151

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !152
  %inc = add nsw i32 %21, 1, !dbg !152
  store i32 %inc, i32* %intVariable, align 4, !dbg !152
  br label %for.inc, !dbg !154

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !dbg !155
  %inc26 = add nsw i32 %22, 1, !dbg !155
  store i32 %inc26, i32* %i, align 4, !dbg !155
  br label %for.cond, !dbg !156, !llvm.loop !157

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %intVariable, align 4, !dbg !160
  call void @printIntLine(i32 %23), !dbg !161
  br label %if.end27, !dbg !162

if.end27:                                         ; preds = %for.end, %if.end18
  ret void, !dbg !163
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !164 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType* %myUnion, metadata !167, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !169, metadata !DIExpression()), !dbg !170
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !170
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !170
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !171
  store i8* %arraydecay, i8** %data, align 8, !dbg !172
  %1 = load i8*, i8** %data, align 8, !dbg !173
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !174
  %2 = load i8*, i8** %data, align 8, !dbg !175
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType* %myUnion to i8**, !dbg !176
  store i8* %2, i8** %unionFirst, align 8, !dbg !177
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !178, metadata !DIExpression()), !dbg !180
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType* %myUnion to i8**, !dbg !181
  %3 = load i8*, i8** %unionSecond, align 8, !dbg !181
  store i8* %3, i8** %data1, align 8, !dbg !180
  call void @llvm.dbg.declare(metadata i32* %i, metadata !182, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata i32* %n, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !187, metadata !DIExpression()), !dbg !188
  %4 = load i8*, i8** %data1, align 8, !dbg !189
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !191
  %cmp = icmp eq i32 %call2, 1, !dbg !192
  br i1 %cmp, label %if.then, label %if.end, !dbg !193

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !194
  store i32 0, i32* %i, align 4, !dbg !196
  br label %for.cond, !dbg !198

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !199
  %6 = load i32, i32* %n, align 4, !dbg !201
  %cmp3 = icmp slt i32 %5, %6, !dbg !202
  br i1 %cmp3, label %for.body, label %for.end, !dbg !203

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !204
  %inc = add nsw i32 %7, 1, !dbg !204
  store i32 %inc, i32* %intVariable, align 4, !dbg !204
  br label %for.inc, !dbg !206

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !207
  %inc4 = add nsw i32 %8, 1, !dbg !207
  store i32 %inc4, i32* %i, align 4, !dbg !207
  br label %for.cond, !dbg !208, !llvm.loop !209

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !211
  call void @printIntLine(i32 %9), !dbg !212
  br label %if.end, !dbg !213

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !214
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !215 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %data19 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType* %myUnion, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !220, metadata !DIExpression()), !dbg !221
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !221
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !221
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !222
  store i8* %arraydecay, i8** %data, align 8, !dbg !223
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !224, metadata !DIExpression()), !dbg !226
  %1 = load i8*, i8** %data, align 8, !dbg !227
  %call = call i64 @strlen(i8* %1) #7, !dbg !228
  store i64 %call, i64* %dataLen, align 8, !dbg !226
  %2 = load i64, i64* %dataLen, align 8, !dbg !229
  %sub = sub i64 100, %2, !dbg !231
  %cmp = icmp ugt i64 %sub, 1, !dbg !232
  br i1 %cmp, label %if.then, label %if.end18, !dbg !233

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !234
  %4 = load i64, i64* %dataLen, align 8, !dbg !237
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !238
  %5 = load i64, i64* %dataLen, align 8, !dbg !239
  %sub1 = sub i64 100, %5, !dbg !240
  %conv = trunc i64 %sub1 to i32, !dbg !241
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !242
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !243
  %cmp3 = icmp ne i8* %call2, null, !dbg !244
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !245

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !246
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !248
  store i64 %call6, i64* %dataLen, align 8, !dbg !249
  %8 = load i64, i64* %dataLen, align 8, !dbg !250
  %cmp7 = icmp ugt i64 %8, 0, !dbg !252
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !253

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !254
  %10 = load i64, i64* %dataLen, align 8, !dbg !255
  %sub9 = sub i64 %10, 1, !dbg !256
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !254
  %11 = load i8, i8* %arrayidx, align 1, !dbg !254
  %conv10 = sext i8 %11 to i32, !dbg !254
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !257
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !258

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !259
  %13 = load i64, i64* %dataLen, align 8, !dbg !261
  %sub14 = sub i64 %13, 1, !dbg !262
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !259
  store i8 0, i8* %arrayidx15, align 1, !dbg !263
  br label %if.end, !dbg !264

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !265

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !266
  %14 = load i8*, i8** %data, align 8, !dbg !268
  %15 = load i64, i64* %dataLen, align 8, !dbg !269
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !268
  store i8 0, i8* %arrayidx16, align 1, !dbg !270
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !271

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !272
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType* %myUnion to i8**, !dbg !273
  store i8* %16, i8** %unionFirst, align 8, !dbg !274
  call void @llvm.dbg.declare(metadata i8** %data19, metadata !275, metadata !DIExpression()), !dbg !277
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType* %myUnion to i8**, !dbg !278
  %17 = load i8*, i8** %unionSecond, align 8, !dbg !278
  store i8* %17, i8** %data19, align 8, !dbg !277
  call void @llvm.dbg.declare(metadata i32* %i, metadata !279, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata i32* %n, metadata !282, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !284, metadata !DIExpression()), !dbg !285
  %18 = load i8*, i8** %data19, align 8, !dbg !286
  %call20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !288
  %cmp21 = icmp eq i32 %call20, 1, !dbg !289
  br i1 %cmp21, label %if.then23, label %if.end31, !dbg !290

if.then23:                                        ; preds = %if.end18
  %19 = load i32, i32* %n, align 4, !dbg !291
  %cmp24 = icmp slt i32 %19, 10000, !dbg !294
  br i1 %cmp24, label %if.then26, label %if.end30, !dbg !295

if.then26:                                        ; preds = %if.then23
  store i32 0, i32* %intVariable, align 4, !dbg !296
  store i32 0, i32* %i, align 4, !dbg !298
  br label %for.cond, !dbg !300

for.cond:                                         ; preds = %for.inc, %if.then26
  %20 = load i32, i32* %i, align 4, !dbg !301
  %21 = load i32, i32* %n, align 4, !dbg !303
  %cmp27 = icmp slt i32 %20, %21, !dbg !304
  br i1 %cmp27, label %for.body, label %for.end, !dbg !305

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !306
  %inc = add nsw i32 %22, 1, !dbg !306
  store i32 %inc, i32* %intVariable, align 4, !dbg !306
  br label %for.inc, !dbg !308

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !309
  %inc29 = add nsw i32 %23, 1, !dbg !309
  store i32 %inc29, i32* %i, align 4, !dbg !309
  br label %for.cond, !dbg !310, !llvm.loop !311

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %intVariable, align 4, !dbg !313
  call void @printIntLine(i32 %24), !dbg !314
  br label %if.end30, !dbg !315

if.end30:                                         ; preds = %for.end, %if.then23
  br label %if.end31, !dbg !316

if.end31:                                         ; preds = %if.end30, %if.end18
  ret void, !dbg !317
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_34_good() #0 !dbg !318 {
entry:
  call void @goodG2B(), !dbg !319
  call void @goodB2G(), !dbg !320
  ret void, !dbg !321
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !322 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !325, metadata !DIExpression()), !dbg !326
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !327
  %0 = load i8*, i8** %line.addr, align 8, !dbg !328
  %cmp = icmp ne i8* %0, null, !dbg !330
  br i1 %cmp, label %if.then, label %if.end, !dbg !331

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !332
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !334
  br label %if.end, !dbg !335

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !336
  ret void, !dbg !337
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !338 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !339, metadata !DIExpression()), !dbg !340
  %0 = load i8*, i8** %line.addr, align 8, !dbg !341
  %cmp = icmp ne i8* %0, null, !dbg !343
  br i1 %cmp, label %if.then, label %if.end, !dbg !344

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !345
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !347
  br label %if.end, !dbg !348

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !349
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !350 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !355, metadata !DIExpression()), !dbg !356
  %0 = load i32*, i32** %line.addr, align 8, !dbg !357
  %cmp = icmp ne i32* %0, null, !dbg !359
  br i1 %cmp, label %if.then, label %if.end, !dbg !360

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !361
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !363
  br label %if.end, !dbg !364

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !365
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !366 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !371
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !372
  ret void, !dbg !373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !374 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !378, metadata !DIExpression()), !dbg !379
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !380
  %conv = sext i16 %0 to i32, !dbg !380
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !381
  ret void, !dbg !382
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !383 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !387, metadata !DIExpression()), !dbg !388
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !389
  %conv = fpext float %0 to double, !dbg !389
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !390
  ret void, !dbg !391
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !392 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !396, metadata !DIExpression()), !dbg !397
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !398
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !399
  ret void, !dbg !400
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !401 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !408, metadata !DIExpression()), !dbg !409
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !410
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !411
  ret void, !dbg !412
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !413 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !416, metadata !DIExpression()), !dbg !417
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !418
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !419
  ret void, !dbg !420
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !421 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !424, metadata !DIExpression()), !dbg !425
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !426
  %conv = sext i8 %0 to i32, !dbg !426
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !427
  ret void, !dbg !428
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !429 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !434, metadata !DIExpression()), !dbg !438
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !439
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !440
  store i32 %0, i32* %arrayidx, align 4, !dbg !441
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !442
  store i32 0, i32* %arrayidx1, align 4, !dbg !443
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !444
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !447 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !452
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !453
  ret void, !dbg !454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !455 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !458, metadata !DIExpression()), !dbg !459
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !460
  %conv = zext i8 %0 to i32, !dbg !460
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !461
  ret void, !dbg !462
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !463 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !467, metadata !DIExpression()), !dbg !468
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !469
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !470
  ret void, !dbg !471
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !472 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !482, metadata !DIExpression()), !dbg !483
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !484
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !485
  %1 = load i32, i32* %intOne, align 4, !dbg !485
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !486
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !487
  %3 = load i32, i32* %intTwo, align 4, !dbg !487
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !488
  ret void, !dbg !489
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !490 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !494, metadata !DIExpression()), !dbg !495
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !496, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.declare(metadata i64* %i, metadata !498, metadata !DIExpression()), !dbg !499
  store i64 0, i64* %i, align 8, !dbg !500
  br label %for.cond, !dbg !502

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !503
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !505
  %cmp = icmp ult i64 %0, %1, !dbg !506
  br i1 %cmp, label %for.body, label %for.end, !dbg !507

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !508
  %3 = load i64, i64* %i, align 8, !dbg !510
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !508
  %4 = load i8, i8* %arrayidx, align 1, !dbg !508
  %conv = zext i8 %4 to i32, !dbg !508
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !511
  br label %for.inc, !dbg !512

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !513
  %inc = add i64 %5, 1, !dbg !513
  store i64 %inc, i64* %i, align 8, !dbg !513
  br label %for.cond, !dbg !514, !llvm.loop !515

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !517
  ret void, !dbg !518
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !519 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !522, metadata !DIExpression()), !dbg !523
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !524, metadata !DIExpression()), !dbg !525
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !526, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !528, metadata !DIExpression()), !dbg !529
  store i64 0, i64* %numWritten, align 8, !dbg !529
  br label %while.cond, !dbg !530

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !531
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !532
  %cmp = icmp ult i64 %0, %1, !dbg !533
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !534

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !535
  %2 = load i16*, i16** %call, align 8, !dbg !535
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !535
  %4 = load i64, i64* %numWritten, align 8, !dbg !535
  %mul = mul i64 2, %4, !dbg !535
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !535
  %5 = load i8, i8* %arrayidx, align 1, !dbg !535
  %conv = sext i8 %5 to i32, !dbg !535
  %idxprom = sext i32 %conv to i64, !dbg !535
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !535
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !535
  %conv2 = zext i16 %6 to i32, !dbg !535
  %and = and i32 %conv2, 4096, !dbg !535
  %tobool = icmp ne i32 %and, 0, !dbg !535
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !536

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !537
  %7 = load i16*, i16** %call3, align 8, !dbg !537
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !537
  %9 = load i64, i64* %numWritten, align 8, !dbg !537
  %mul4 = mul i64 2, %9, !dbg !537
  %add = add i64 %mul4, 1, !dbg !537
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !537
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !537
  %conv6 = sext i8 %10 to i32, !dbg !537
  %idxprom7 = sext i32 %conv6 to i64, !dbg !537
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !537
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !537
  %conv9 = zext i16 %11 to i32, !dbg !537
  %and10 = and i32 %conv9, 4096, !dbg !537
  %tobool11 = icmp ne i32 %and10, 0, !dbg !536
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !538
  br i1 %12, label %while.body, label %while.end, !dbg !530

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !539, metadata !DIExpression()), !dbg !541
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !542
  %14 = load i64, i64* %numWritten, align 8, !dbg !543
  %mul12 = mul i64 2, %14, !dbg !544
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !542
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !545
  %15 = load i32, i32* %byte, align 4, !dbg !546
  %conv15 = trunc i32 %15 to i8, !dbg !547
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !548
  %17 = load i64, i64* %numWritten, align 8, !dbg !549
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !548
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !550
  %18 = load i64, i64* %numWritten, align 8, !dbg !551
  %inc = add i64 %18, 1, !dbg !551
  store i64 %inc, i64* %numWritten, align 8, !dbg !551
  br label %while.cond, !dbg !530, !llvm.loop !552

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !554
  ret i64 %19, !dbg !555
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !556 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !559, metadata !DIExpression()), !dbg !560
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !561, metadata !DIExpression()), !dbg !562
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !563, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !565, metadata !DIExpression()), !dbg !566
  store i64 0, i64* %numWritten, align 8, !dbg !566
  br label %while.cond, !dbg !567

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !568
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !569
  %cmp = icmp ult i64 %0, %1, !dbg !570
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !571

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !572
  %3 = load i64, i64* %numWritten, align 8, !dbg !573
  %mul = mul i64 2, %3, !dbg !574
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !572
  %4 = load i32, i32* %arrayidx, align 4, !dbg !572
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !575
  %tobool = icmp ne i32 %call, 0, !dbg !575
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !576

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !577
  %6 = load i64, i64* %numWritten, align 8, !dbg !578
  %mul1 = mul i64 2, %6, !dbg !579
  %add = add i64 %mul1, 1, !dbg !580
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !577
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !577
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !581
  %tobool4 = icmp ne i32 %call3, 0, !dbg !576
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !582
  br i1 %8, label %while.body, label %while.end, !dbg !567

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !583, metadata !DIExpression()), !dbg !585
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !586
  %10 = load i64, i64* %numWritten, align 8, !dbg !587
  %mul5 = mul i64 2, %10, !dbg !588
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !586
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !589
  %11 = load i32, i32* %byte, align 4, !dbg !590
  %conv = trunc i32 %11 to i8, !dbg !591
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !592
  %13 = load i64, i64* %numWritten, align 8, !dbg !593
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !592
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !594
  %14 = load i64, i64* %numWritten, align 8, !dbg !595
  %inc = add i64 %14, 1, !dbg !595
  store i64 %inc, i64* %numWritten, align 8, !dbg !595
  br label %while.cond, !dbg !567, !llvm.loop !596

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !598
  ret i64 %15, !dbg !599
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !600 {
entry:
  ret i32 1, !dbg !603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !604 {
entry:
  ret i32 0, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !606 {
entry:
  %call = call i32 @rand() #8, !dbg !607
  %rem = srem i32 %call, 2, !dbg !608
  ret i32 %rem, !dbg !609
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !610 {
entry:
  ret void, !dbg !611
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !612 {
entry:
  ret void, !dbg !613
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !614 {
entry:
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !616 {
entry:
  ret void, !dbg !617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !618 {
entry:
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !620 {
entry:
  ret void, !dbg !621
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !622 {
entry:
  ret void, !dbg !623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !624 {
entry:
  ret void, !dbg !625
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !626 {
entry:
  ret void, !dbg !627
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !628 {
entry:
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !630 {
entry:
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !632 {
entry:
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !634 {
entry:
  ret void, !dbg !635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !636 {
entry:
  ret void, !dbg !637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !638 {
entry:
  ret void, !dbg !639
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !640 {
entry:
  ret void, !dbg !641
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !642 {
entry:
  ret void, !dbg !643
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !644 {
entry:
  ret void, !dbg !645
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_001/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_34.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_001/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_34_bad", scope: !45, file: !45, line: 30, type: !53, scopeLine: 31, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 32, type: !42)
!56 = !DILocation(line: 32, column: 12, scope: !52)
!57 = !DILocalVariable(name: "myUnion", scope: !52, file: !45, line: 33, type: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_console_34_unionType", file: !59, line: 9, baseType: !60)
!59 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_001/source_code")
!60 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !59, line: 5, size: 64, elements: !61)
!61 = !{!62, !63}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "unionFirst", scope: !60, file: !59, line: 7, baseType: !42, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "unionSecond", scope: !60, file: !59, line: 8, baseType: !42, size: 64)
!64 = !DILocation(line: 33, column: 64, scope: !52)
!65 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 34, type: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 100)
!69 = !DILocation(line: 34, column: 10, scope: !52)
!70 = !DILocation(line: 35, column: 12, scope: !52)
!71 = !DILocation(line: 35, column: 10, scope: !52)
!72 = !DILocalVariable(name: "dataLen", scope: !73, file: !45, line: 38, type: !74)
!73 = distinct !DILexicalBlock(scope: !52, file: !45, line: 36, column: 5)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!76 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !DILocation(line: 38, column: 16, scope: !73)
!78 = !DILocation(line: 38, column: 33, scope: !73)
!79 = !DILocation(line: 38, column: 26, scope: !73)
!80 = !DILocation(line: 40, column: 17, scope: !81)
!81 = distinct !DILexicalBlock(scope: !73, file: !45, line: 40, column: 13)
!82 = !DILocation(line: 40, column: 16, scope: !81)
!83 = !DILocation(line: 40, column: 25, scope: !81)
!84 = !DILocation(line: 40, column: 13, scope: !73)
!85 = !DILocation(line: 43, column: 23, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !45, line: 43, column: 17)
!87 = distinct !DILexicalBlock(scope: !81, file: !45, line: 41, column: 9)
!88 = !DILocation(line: 43, column: 28, scope: !86)
!89 = !DILocation(line: 43, column: 27, scope: !86)
!90 = !DILocation(line: 43, column: 47, scope: !86)
!91 = !DILocation(line: 43, column: 46, scope: !86)
!92 = !DILocation(line: 43, column: 37, scope: !86)
!93 = !DILocation(line: 43, column: 57, scope: !86)
!94 = !DILocation(line: 43, column: 17, scope: !86)
!95 = !DILocation(line: 43, column: 64, scope: !86)
!96 = !DILocation(line: 43, column: 17, scope: !87)
!97 = !DILocation(line: 47, column: 34, scope: !98)
!98 = distinct !DILexicalBlock(scope: !86, file: !45, line: 44, column: 13)
!99 = !DILocation(line: 47, column: 27, scope: !98)
!100 = !DILocation(line: 47, column: 25, scope: !98)
!101 = !DILocation(line: 48, column: 21, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !45, line: 48, column: 21)
!103 = !DILocation(line: 48, column: 29, scope: !102)
!104 = !DILocation(line: 48, column: 33, scope: !102)
!105 = !DILocation(line: 48, column: 36, scope: !102)
!106 = !DILocation(line: 48, column: 41, scope: !102)
!107 = !DILocation(line: 48, column: 48, scope: !102)
!108 = !DILocation(line: 48, column: 52, scope: !102)
!109 = !DILocation(line: 48, column: 21, scope: !98)
!110 = !DILocation(line: 50, column: 21, scope: !111)
!111 = distinct !DILexicalBlock(scope: !102, file: !45, line: 49, column: 17)
!112 = !DILocation(line: 50, column: 26, scope: !111)
!113 = !DILocation(line: 50, column: 33, scope: !111)
!114 = !DILocation(line: 50, column: 37, scope: !111)
!115 = !DILocation(line: 51, column: 17, scope: !111)
!116 = !DILocation(line: 52, column: 13, scope: !98)
!117 = !DILocation(line: 55, column: 17, scope: !118)
!118 = distinct !DILexicalBlock(scope: !86, file: !45, line: 54, column: 13)
!119 = !DILocation(line: 57, column: 17, scope: !118)
!120 = !DILocation(line: 57, column: 22, scope: !118)
!121 = !DILocation(line: 57, column: 31, scope: !118)
!122 = !DILocation(line: 59, column: 9, scope: !87)
!123 = !DILocation(line: 61, column: 26, scope: !52)
!124 = !DILocation(line: 61, column: 13, scope: !52)
!125 = !DILocation(line: 61, column: 24, scope: !52)
!126 = !DILocalVariable(name: "data", scope: !127, file: !45, line: 63, type: !42)
!127 = distinct !DILexicalBlock(scope: !52, file: !45, line: 62, column: 5)
!128 = !DILocation(line: 63, column: 16, scope: !127)
!129 = !DILocation(line: 63, column: 31, scope: !127)
!130 = !DILocalVariable(name: "i", scope: !131, file: !45, line: 65, type: !23)
!131 = distinct !DILexicalBlock(scope: !127, file: !45, line: 64, column: 9)
!132 = !DILocation(line: 65, column: 17, scope: !131)
!133 = !DILocalVariable(name: "n", scope: !131, file: !45, line: 65, type: !23)
!134 = !DILocation(line: 65, column: 20, scope: !131)
!135 = !DILocalVariable(name: "intVariable", scope: !131, file: !45, line: 65, type: !23)
!136 = !DILocation(line: 65, column: 23, scope: !131)
!137 = !DILocation(line: 66, column: 24, scope: !138)
!138 = distinct !DILexicalBlock(scope: !131, file: !45, line: 66, column: 17)
!139 = !DILocation(line: 66, column: 17, scope: !138)
!140 = !DILocation(line: 66, column: 40, scope: !138)
!141 = !DILocation(line: 66, column: 17, scope: !131)
!142 = !DILocation(line: 69, column: 29, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !45, line: 67, column: 13)
!144 = !DILocation(line: 70, column: 24, scope: !145)
!145 = distinct !DILexicalBlock(scope: !143, file: !45, line: 70, column: 17)
!146 = !DILocation(line: 70, column: 22, scope: !145)
!147 = !DILocation(line: 70, column: 29, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !45, line: 70, column: 17)
!149 = !DILocation(line: 70, column: 33, scope: !148)
!150 = !DILocation(line: 70, column: 31, scope: !148)
!151 = !DILocation(line: 70, column: 17, scope: !145)
!152 = !DILocation(line: 73, column: 32, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !45, line: 71, column: 17)
!154 = !DILocation(line: 74, column: 17, scope: !153)
!155 = !DILocation(line: 70, column: 37, scope: !148)
!156 = !DILocation(line: 70, column: 17, scope: !148)
!157 = distinct !{!157, !151, !158, !159}
!158 = !DILocation(line: 74, column: 17, scope: !145)
!159 = !{!"llvm.loop.mustprogress"}
!160 = !DILocation(line: 75, column: 30, scope: !143)
!161 = !DILocation(line: 75, column: 17, scope: !143)
!162 = !DILocation(line: 76, column: 13, scope: !143)
!163 = !DILocation(line: 79, column: 1, scope: !52)
!164 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 86, type: !53, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!165 = !DILocalVariable(name: "data", scope: !164, file: !45, line: 88, type: !42)
!166 = !DILocation(line: 88, column: 12, scope: !164)
!167 = !DILocalVariable(name: "myUnion", scope: !164, file: !45, line: 89, type: !58)
!168 = !DILocation(line: 89, column: 64, scope: !164)
!169 = !DILocalVariable(name: "dataBuffer", scope: !164, file: !45, line: 90, type: !66)
!170 = !DILocation(line: 90, column: 10, scope: !164)
!171 = !DILocation(line: 91, column: 12, scope: !164)
!172 = !DILocation(line: 91, column: 10, scope: !164)
!173 = !DILocation(line: 93, column: 12, scope: !164)
!174 = !DILocation(line: 93, column: 5, scope: !164)
!175 = !DILocation(line: 94, column: 26, scope: !164)
!176 = !DILocation(line: 94, column: 13, scope: !164)
!177 = !DILocation(line: 94, column: 24, scope: !164)
!178 = !DILocalVariable(name: "data", scope: !179, file: !45, line: 96, type: !42)
!179 = distinct !DILexicalBlock(scope: !164, file: !45, line: 95, column: 5)
!180 = !DILocation(line: 96, column: 16, scope: !179)
!181 = !DILocation(line: 96, column: 31, scope: !179)
!182 = !DILocalVariable(name: "i", scope: !183, file: !45, line: 98, type: !23)
!183 = distinct !DILexicalBlock(scope: !179, file: !45, line: 97, column: 9)
!184 = !DILocation(line: 98, column: 17, scope: !183)
!185 = !DILocalVariable(name: "n", scope: !183, file: !45, line: 98, type: !23)
!186 = !DILocation(line: 98, column: 20, scope: !183)
!187 = !DILocalVariable(name: "intVariable", scope: !183, file: !45, line: 98, type: !23)
!188 = !DILocation(line: 98, column: 23, scope: !183)
!189 = !DILocation(line: 99, column: 24, scope: !190)
!190 = distinct !DILexicalBlock(scope: !183, file: !45, line: 99, column: 17)
!191 = !DILocation(line: 99, column: 17, scope: !190)
!192 = !DILocation(line: 99, column: 40, scope: !190)
!193 = !DILocation(line: 99, column: 17, scope: !183)
!194 = !DILocation(line: 102, column: 29, scope: !195)
!195 = distinct !DILexicalBlock(scope: !190, file: !45, line: 100, column: 13)
!196 = !DILocation(line: 103, column: 24, scope: !197)
!197 = distinct !DILexicalBlock(scope: !195, file: !45, line: 103, column: 17)
!198 = !DILocation(line: 103, column: 22, scope: !197)
!199 = !DILocation(line: 103, column: 29, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !45, line: 103, column: 17)
!201 = !DILocation(line: 103, column: 33, scope: !200)
!202 = !DILocation(line: 103, column: 31, scope: !200)
!203 = !DILocation(line: 103, column: 17, scope: !197)
!204 = !DILocation(line: 106, column: 32, scope: !205)
!205 = distinct !DILexicalBlock(scope: !200, file: !45, line: 104, column: 17)
!206 = !DILocation(line: 107, column: 17, scope: !205)
!207 = !DILocation(line: 103, column: 37, scope: !200)
!208 = !DILocation(line: 103, column: 17, scope: !200)
!209 = distinct !{!209, !203, !210, !159}
!210 = !DILocation(line: 107, column: 17, scope: !197)
!211 = !DILocation(line: 108, column: 30, scope: !195)
!212 = !DILocation(line: 108, column: 17, scope: !195)
!213 = !DILocation(line: 109, column: 13, scope: !195)
!214 = !DILocation(line: 112, column: 1, scope: !164)
!215 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 115, type: !53, scopeLine: 116, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!216 = !DILocalVariable(name: "data", scope: !215, file: !45, line: 117, type: !42)
!217 = !DILocation(line: 117, column: 12, scope: !215)
!218 = !DILocalVariable(name: "myUnion", scope: !215, file: !45, line: 118, type: !58)
!219 = !DILocation(line: 118, column: 64, scope: !215)
!220 = !DILocalVariable(name: "dataBuffer", scope: !215, file: !45, line: 119, type: !66)
!221 = !DILocation(line: 119, column: 10, scope: !215)
!222 = !DILocation(line: 120, column: 12, scope: !215)
!223 = !DILocation(line: 120, column: 10, scope: !215)
!224 = !DILocalVariable(name: "dataLen", scope: !225, file: !45, line: 123, type: !74)
!225 = distinct !DILexicalBlock(scope: !215, file: !45, line: 121, column: 5)
!226 = !DILocation(line: 123, column: 16, scope: !225)
!227 = !DILocation(line: 123, column: 33, scope: !225)
!228 = !DILocation(line: 123, column: 26, scope: !225)
!229 = !DILocation(line: 125, column: 17, scope: !230)
!230 = distinct !DILexicalBlock(scope: !225, file: !45, line: 125, column: 13)
!231 = !DILocation(line: 125, column: 16, scope: !230)
!232 = !DILocation(line: 125, column: 25, scope: !230)
!233 = !DILocation(line: 125, column: 13, scope: !225)
!234 = !DILocation(line: 128, column: 23, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !45, line: 128, column: 17)
!236 = distinct !DILexicalBlock(scope: !230, file: !45, line: 126, column: 9)
!237 = !DILocation(line: 128, column: 28, scope: !235)
!238 = !DILocation(line: 128, column: 27, scope: !235)
!239 = !DILocation(line: 128, column: 47, scope: !235)
!240 = !DILocation(line: 128, column: 46, scope: !235)
!241 = !DILocation(line: 128, column: 37, scope: !235)
!242 = !DILocation(line: 128, column: 57, scope: !235)
!243 = !DILocation(line: 128, column: 17, scope: !235)
!244 = !DILocation(line: 128, column: 64, scope: !235)
!245 = !DILocation(line: 128, column: 17, scope: !236)
!246 = !DILocation(line: 132, column: 34, scope: !247)
!247 = distinct !DILexicalBlock(scope: !235, file: !45, line: 129, column: 13)
!248 = !DILocation(line: 132, column: 27, scope: !247)
!249 = !DILocation(line: 132, column: 25, scope: !247)
!250 = !DILocation(line: 133, column: 21, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !45, line: 133, column: 21)
!252 = !DILocation(line: 133, column: 29, scope: !251)
!253 = !DILocation(line: 133, column: 33, scope: !251)
!254 = !DILocation(line: 133, column: 36, scope: !251)
!255 = !DILocation(line: 133, column: 41, scope: !251)
!256 = !DILocation(line: 133, column: 48, scope: !251)
!257 = !DILocation(line: 133, column: 52, scope: !251)
!258 = !DILocation(line: 133, column: 21, scope: !247)
!259 = !DILocation(line: 135, column: 21, scope: !260)
!260 = distinct !DILexicalBlock(scope: !251, file: !45, line: 134, column: 17)
!261 = !DILocation(line: 135, column: 26, scope: !260)
!262 = !DILocation(line: 135, column: 33, scope: !260)
!263 = !DILocation(line: 135, column: 37, scope: !260)
!264 = !DILocation(line: 136, column: 17, scope: !260)
!265 = !DILocation(line: 137, column: 13, scope: !247)
!266 = !DILocation(line: 140, column: 17, scope: !267)
!267 = distinct !DILexicalBlock(scope: !235, file: !45, line: 139, column: 13)
!268 = !DILocation(line: 142, column: 17, scope: !267)
!269 = !DILocation(line: 142, column: 22, scope: !267)
!270 = !DILocation(line: 142, column: 31, scope: !267)
!271 = !DILocation(line: 144, column: 9, scope: !236)
!272 = !DILocation(line: 146, column: 26, scope: !215)
!273 = !DILocation(line: 146, column: 13, scope: !215)
!274 = !DILocation(line: 146, column: 24, scope: !215)
!275 = !DILocalVariable(name: "data", scope: !276, file: !45, line: 148, type: !42)
!276 = distinct !DILexicalBlock(scope: !215, file: !45, line: 147, column: 5)
!277 = !DILocation(line: 148, column: 16, scope: !276)
!278 = !DILocation(line: 148, column: 31, scope: !276)
!279 = !DILocalVariable(name: "i", scope: !280, file: !45, line: 150, type: !23)
!280 = distinct !DILexicalBlock(scope: !276, file: !45, line: 149, column: 9)
!281 = !DILocation(line: 150, column: 17, scope: !280)
!282 = !DILocalVariable(name: "n", scope: !280, file: !45, line: 150, type: !23)
!283 = !DILocation(line: 150, column: 20, scope: !280)
!284 = !DILocalVariable(name: "intVariable", scope: !280, file: !45, line: 150, type: !23)
!285 = !DILocation(line: 150, column: 23, scope: !280)
!286 = !DILocation(line: 151, column: 24, scope: !287)
!287 = distinct !DILexicalBlock(scope: !280, file: !45, line: 151, column: 17)
!288 = !DILocation(line: 151, column: 17, scope: !287)
!289 = !DILocation(line: 151, column: 40, scope: !287)
!290 = !DILocation(line: 151, column: 17, scope: !280)
!291 = !DILocation(line: 154, column: 21, scope: !292)
!292 = distinct !DILexicalBlock(scope: !293, file: !45, line: 154, column: 21)
!293 = distinct !DILexicalBlock(scope: !287, file: !45, line: 152, column: 13)
!294 = !DILocation(line: 154, column: 23, scope: !292)
!295 = !DILocation(line: 154, column: 21, scope: !293)
!296 = !DILocation(line: 156, column: 33, scope: !297)
!297 = distinct !DILexicalBlock(scope: !292, file: !45, line: 155, column: 17)
!298 = !DILocation(line: 157, column: 28, scope: !299)
!299 = distinct !DILexicalBlock(scope: !297, file: !45, line: 157, column: 21)
!300 = !DILocation(line: 157, column: 26, scope: !299)
!301 = !DILocation(line: 157, column: 33, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !45, line: 157, column: 21)
!303 = !DILocation(line: 157, column: 37, scope: !302)
!304 = !DILocation(line: 157, column: 35, scope: !302)
!305 = !DILocation(line: 157, column: 21, scope: !299)
!306 = !DILocation(line: 160, column: 36, scope: !307)
!307 = distinct !DILexicalBlock(scope: !302, file: !45, line: 158, column: 21)
!308 = !DILocation(line: 161, column: 21, scope: !307)
!309 = !DILocation(line: 157, column: 41, scope: !302)
!310 = !DILocation(line: 157, column: 21, scope: !302)
!311 = distinct !{!311, !305, !312, !159}
!312 = !DILocation(line: 161, column: 21, scope: !299)
!313 = !DILocation(line: 162, column: 34, scope: !297)
!314 = !DILocation(line: 162, column: 21, scope: !297)
!315 = !DILocation(line: 163, column: 17, scope: !297)
!316 = !DILocation(line: 164, column: 13, scope: !293)
!317 = !DILocation(line: 167, column: 1, scope: !215)
!318 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_34_good", scope: !45, file: !45, line: 169, type: !53, scopeLine: 170, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!319 = !DILocation(line: 171, column: 5, scope: !318)
!320 = !DILocation(line: 172, column: 5, scope: !318)
!321 = !DILocation(line: 173, column: 1, scope: !318)
!322 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !323, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !42}
!325 = !DILocalVariable(name: "line", arg: 1, scope: !322, file: !3, line: 11, type: !42)
!326 = !DILocation(line: 11, column: 25, scope: !322)
!327 = !DILocation(line: 13, column: 1, scope: !322)
!328 = !DILocation(line: 14, column: 8, scope: !329)
!329 = distinct !DILexicalBlock(scope: !322, file: !3, line: 14, column: 8)
!330 = !DILocation(line: 14, column: 13, scope: !329)
!331 = !DILocation(line: 14, column: 8, scope: !322)
!332 = !DILocation(line: 16, column: 24, scope: !333)
!333 = distinct !DILexicalBlock(scope: !329, file: !3, line: 15, column: 5)
!334 = !DILocation(line: 16, column: 9, scope: !333)
!335 = !DILocation(line: 17, column: 5, scope: !333)
!336 = !DILocation(line: 18, column: 5, scope: !322)
!337 = !DILocation(line: 19, column: 1, scope: !322)
!338 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !323, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!339 = !DILocalVariable(name: "line", arg: 1, scope: !338, file: !3, line: 20, type: !42)
!340 = !DILocation(line: 20, column: 29, scope: !338)
!341 = !DILocation(line: 22, column: 8, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !3, line: 22, column: 8)
!343 = !DILocation(line: 22, column: 13, scope: !342)
!344 = !DILocation(line: 22, column: 8, scope: !338)
!345 = !DILocation(line: 24, column: 24, scope: !346)
!346 = distinct !DILexicalBlock(scope: !342, file: !3, line: 23, column: 5)
!347 = !DILocation(line: 24, column: 9, scope: !346)
!348 = !DILocation(line: 25, column: 5, scope: !346)
!349 = !DILocation(line: 26, column: 1, scope: !338)
!350 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !351, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !75, line: 74, baseType: !23)
!355 = !DILocalVariable(name: "line", arg: 1, scope: !350, file: !3, line: 27, type: !353)
!356 = !DILocation(line: 27, column: 29, scope: !350)
!357 = !DILocation(line: 29, column: 8, scope: !358)
!358 = distinct !DILexicalBlock(scope: !350, file: !3, line: 29, column: 8)
!359 = !DILocation(line: 29, column: 13, scope: !358)
!360 = !DILocation(line: 29, column: 8, scope: !350)
!361 = !DILocation(line: 31, column: 27, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !3, line: 30, column: 5)
!363 = !DILocation(line: 31, column: 9, scope: !362)
!364 = !DILocation(line: 32, column: 5, scope: !362)
!365 = !DILocation(line: 33, column: 1, scope: !350)
!366 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !367, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !23}
!369 = !DILocalVariable(name: "intNumber", arg: 1, scope: !366, file: !3, line: 35, type: !23)
!370 = !DILocation(line: 35, column: 24, scope: !366)
!371 = !DILocation(line: 37, column: 20, scope: !366)
!372 = !DILocation(line: 37, column: 5, scope: !366)
!373 = !DILocation(line: 38, column: 1, scope: !366)
!374 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !375, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !377}
!377 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!378 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !374, file: !3, line: 40, type: !377)
!379 = !DILocation(line: 40, column: 28, scope: !374)
!380 = !DILocation(line: 42, column: 21, scope: !374)
!381 = !DILocation(line: 42, column: 5, scope: !374)
!382 = !DILocation(line: 43, column: 1, scope: !374)
!383 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !384, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !386}
!386 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!387 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !383, file: !3, line: 45, type: !386)
!388 = !DILocation(line: 45, column: 28, scope: !383)
!389 = !DILocation(line: 47, column: 20, scope: !383)
!390 = !DILocation(line: 47, column: 5, scope: !383)
!391 = !DILocation(line: 48, column: 1, scope: !383)
!392 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !393, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !395}
!395 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!396 = !DILocalVariable(name: "longNumber", arg: 1, scope: !392, file: !3, line: 50, type: !395)
!397 = !DILocation(line: 50, column: 26, scope: !392)
!398 = !DILocation(line: 52, column: 21, scope: !392)
!399 = !DILocation(line: 52, column: 5, scope: !392)
!400 = !DILocation(line: 53, column: 1, scope: !392)
!401 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !402, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !404}
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !405, line: 27, baseType: !406)
!405 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !407, line: 44, baseType: !395)
!407 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!408 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !401, file: !3, line: 55, type: !404)
!409 = !DILocation(line: 55, column: 33, scope: !401)
!410 = !DILocation(line: 57, column: 29, scope: !401)
!411 = !DILocation(line: 57, column: 5, scope: !401)
!412 = !DILocation(line: 58, column: 1, scope: !401)
!413 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !414, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !74}
!416 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !413, file: !3, line: 60, type: !74)
!417 = !DILocation(line: 60, column: 29, scope: !413)
!418 = !DILocation(line: 62, column: 21, scope: !413)
!419 = !DILocation(line: 62, column: 5, scope: !413)
!420 = !DILocation(line: 63, column: 1, scope: !413)
!421 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !422, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !43}
!424 = !DILocalVariable(name: "charHex", arg: 1, scope: !421, file: !3, line: 65, type: !43)
!425 = !DILocation(line: 65, column: 29, scope: !421)
!426 = !DILocation(line: 67, column: 22, scope: !421)
!427 = !DILocation(line: 67, column: 5, scope: !421)
!428 = !DILocation(line: 68, column: 1, scope: !421)
!429 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !430, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !354}
!432 = !DILocalVariable(name: "wideChar", arg: 1, scope: !429, file: !3, line: 70, type: !354)
!433 = !DILocation(line: 70, column: 29, scope: !429)
!434 = !DILocalVariable(name: "s", scope: !429, file: !3, line: 74, type: !435)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 64, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 2)
!438 = !DILocation(line: 74, column: 13, scope: !429)
!439 = !DILocation(line: 75, column: 16, scope: !429)
!440 = !DILocation(line: 75, column: 9, scope: !429)
!441 = !DILocation(line: 75, column: 14, scope: !429)
!442 = !DILocation(line: 76, column: 9, scope: !429)
!443 = !DILocation(line: 76, column: 14, scope: !429)
!444 = !DILocation(line: 77, column: 21, scope: !429)
!445 = !DILocation(line: 77, column: 5, scope: !429)
!446 = !DILocation(line: 78, column: 1, scope: !429)
!447 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !448, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !7}
!450 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !447, file: !3, line: 80, type: !7)
!451 = !DILocation(line: 80, column: 33, scope: !447)
!452 = !DILocation(line: 82, column: 20, scope: !447)
!453 = !DILocation(line: 82, column: 5, scope: !447)
!454 = !DILocation(line: 83, column: 1, scope: !447)
!455 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !456, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !25}
!458 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !455, file: !3, line: 85, type: !25)
!459 = !DILocation(line: 85, column: 45, scope: !455)
!460 = !DILocation(line: 87, column: 22, scope: !455)
!461 = !DILocation(line: 87, column: 5, scope: !455)
!462 = !DILocation(line: 88, column: 1, scope: !455)
!463 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !464, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !466}
!466 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!467 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !463, file: !3, line: 90, type: !466)
!468 = !DILocation(line: 90, column: 29, scope: !463)
!469 = !DILocation(line: 92, column: 20, scope: !463)
!470 = !DILocation(line: 92, column: 5, scope: !463)
!471 = !DILocation(line: 93, column: 1, scope: !463)
!472 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !473, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !477, line: 100, baseType: !478)
!477 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_001/source_code")
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !477, line: 96, size: 64, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !478, file: !477, line: 98, baseType: !23, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !478, file: !477, line: 99, baseType: !23, size: 32, offset: 32)
!482 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !472, file: !3, line: 95, type: !475)
!483 = !DILocation(line: 95, column: 40, scope: !472)
!484 = !DILocation(line: 97, column: 26, scope: !472)
!485 = !DILocation(line: 97, column: 47, scope: !472)
!486 = !DILocation(line: 97, column: 55, scope: !472)
!487 = !DILocation(line: 97, column: 76, scope: !472)
!488 = !DILocation(line: 97, column: 5, scope: !472)
!489 = !DILocation(line: 98, column: 1, scope: !472)
!490 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !491, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !493, !74}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!494 = !DILocalVariable(name: "bytes", arg: 1, scope: !490, file: !3, line: 100, type: !493)
!495 = !DILocation(line: 100, column: 38, scope: !490)
!496 = !DILocalVariable(name: "numBytes", arg: 2, scope: !490, file: !3, line: 100, type: !74)
!497 = !DILocation(line: 100, column: 52, scope: !490)
!498 = !DILocalVariable(name: "i", scope: !490, file: !3, line: 102, type: !74)
!499 = !DILocation(line: 102, column: 12, scope: !490)
!500 = !DILocation(line: 103, column: 12, scope: !501)
!501 = distinct !DILexicalBlock(scope: !490, file: !3, line: 103, column: 5)
!502 = !DILocation(line: 103, column: 10, scope: !501)
!503 = !DILocation(line: 103, column: 17, scope: !504)
!504 = distinct !DILexicalBlock(scope: !501, file: !3, line: 103, column: 5)
!505 = !DILocation(line: 103, column: 21, scope: !504)
!506 = !DILocation(line: 103, column: 19, scope: !504)
!507 = !DILocation(line: 103, column: 5, scope: !501)
!508 = !DILocation(line: 105, column: 24, scope: !509)
!509 = distinct !DILexicalBlock(scope: !504, file: !3, line: 104, column: 5)
!510 = !DILocation(line: 105, column: 30, scope: !509)
!511 = !DILocation(line: 105, column: 9, scope: !509)
!512 = !DILocation(line: 106, column: 5, scope: !509)
!513 = !DILocation(line: 103, column: 31, scope: !504)
!514 = !DILocation(line: 103, column: 5, scope: !504)
!515 = distinct !{!515, !507, !516, !159}
!516 = !DILocation(line: 106, column: 5, scope: !501)
!517 = !DILocation(line: 107, column: 5, scope: !490)
!518 = !DILocation(line: 108, column: 1, scope: !490)
!519 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !520, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DISubroutineType(types: !521)
!521 = !{!74, !493, !74, !42}
!522 = !DILocalVariable(name: "bytes", arg: 1, scope: !519, file: !3, line: 113, type: !493)
!523 = !DILocation(line: 113, column: 39, scope: !519)
!524 = !DILocalVariable(name: "numBytes", arg: 2, scope: !519, file: !3, line: 113, type: !74)
!525 = !DILocation(line: 113, column: 53, scope: !519)
!526 = !DILocalVariable(name: "hex", arg: 3, scope: !519, file: !3, line: 113, type: !42)
!527 = !DILocation(line: 113, column: 71, scope: !519)
!528 = !DILocalVariable(name: "numWritten", scope: !519, file: !3, line: 115, type: !74)
!529 = !DILocation(line: 115, column: 12, scope: !519)
!530 = !DILocation(line: 121, column: 5, scope: !519)
!531 = !DILocation(line: 121, column: 12, scope: !519)
!532 = !DILocation(line: 121, column: 25, scope: !519)
!533 = !DILocation(line: 121, column: 23, scope: !519)
!534 = !DILocation(line: 121, column: 34, scope: !519)
!535 = !DILocation(line: 121, column: 37, scope: !519)
!536 = !DILocation(line: 121, column: 67, scope: !519)
!537 = !DILocation(line: 121, column: 70, scope: !519)
!538 = !DILocation(line: 0, scope: !519)
!539 = !DILocalVariable(name: "byte", scope: !540, file: !3, line: 123, type: !23)
!540 = distinct !DILexicalBlock(scope: !519, file: !3, line: 122, column: 5)
!541 = !DILocation(line: 123, column: 13, scope: !540)
!542 = !DILocation(line: 124, column: 17, scope: !540)
!543 = !DILocation(line: 124, column: 25, scope: !540)
!544 = !DILocation(line: 124, column: 23, scope: !540)
!545 = !DILocation(line: 124, column: 9, scope: !540)
!546 = !DILocation(line: 125, column: 45, scope: !540)
!547 = !DILocation(line: 125, column: 29, scope: !540)
!548 = !DILocation(line: 125, column: 9, scope: !540)
!549 = !DILocation(line: 125, column: 15, scope: !540)
!550 = !DILocation(line: 125, column: 27, scope: !540)
!551 = !DILocation(line: 126, column: 9, scope: !540)
!552 = distinct !{!552, !530, !553, !159}
!553 = !DILocation(line: 127, column: 5, scope: !519)
!554 = !DILocation(line: 129, column: 12, scope: !519)
!555 = !DILocation(line: 129, column: 5, scope: !519)
!556 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !557, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!557 = !DISubroutineType(types: !558)
!558 = !{!74, !493, !74, !353}
!559 = !DILocalVariable(name: "bytes", arg: 1, scope: !556, file: !3, line: 135, type: !493)
!560 = !DILocation(line: 135, column: 41, scope: !556)
!561 = !DILocalVariable(name: "numBytes", arg: 2, scope: !556, file: !3, line: 135, type: !74)
!562 = !DILocation(line: 135, column: 55, scope: !556)
!563 = !DILocalVariable(name: "hex", arg: 3, scope: !556, file: !3, line: 135, type: !353)
!564 = !DILocation(line: 135, column: 76, scope: !556)
!565 = !DILocalVariable(name: "numWritten", scope: !556, file: !3, line: 137, type: !74)
!566 = !DILocation(line: 137, column: 12, scope: !556)
!567 = !DILocation(line: 143, column: 5, scope: !556)
!568 = !DILocation(line: 143, column: 12, scope: !556)
!569 = !DILocation(line: 143, column: 25, scope: !556)
!570 = !DILocation(line: 143, column: 23, scope: !556)
!571 = !DILocation(line: 143, column: 34, scope: !556)
!572 = !DILocation(line: 143, column: 47, scope: !556)
!573 = !DILocation(line: 143, column: 55, scope: !556)
!574 = !DILocation(line: 143, column: 53, scope: !556)
!575 = !DILocation(line: 143, column: 37, scope: !556)
!576 = !DILocation(line: 143, column: 68, scope: !556)
!577 = !DILocation(line: 143, column: 81, scope: !556)
!578 = !DILocation(line: 143, column: 89, scope: !556)
!579 = !DILocation(line: 143, column: 87, scope: !556)
!580 = !DILocation(line: 143, column: 100, scope: !556)
!581 = !DILocation(line: 143, column: 71, scope: !556)
!582 = !DILocation(line: 0, scope: !556)
!583 = !DILocalVariable(name: "byte", scope: !584, file: !3, line: 145, type: !23)
!584 = distinct !DILexicalBlock(scope: !556, file: !3, line: 144, column: 5)
!585 = !DILocation(line: 145, column: 13, scope: !584)
!586 = !DILocation(line: 146, column: 18, scope: !584)
!587 = !DILocation(line: 146, column: 26, scope: !584)
!588 = !DILocation(line: 146, column: 24, scope: !584)
!589 = !DILocation(line: 146, column: 9, scope: !584)
!590 = !DILocation(line: 147, column: 45, scope: !584)
!591 = !DILocation(line: 147, column: 29, scope: !584)
!592 = !DILocation(line: 147, column: 9, scope: !584)
!593 = !DILocation(line: 147, column: 15, scope: !584)
!594 = !DILocation(line: 147, column: 27, scope: !584)
!595 = !DILocation(line: 148, column: 9, scope: !584)
!596 = distinct !{!596, !567, !597, !159}
!597 = !DILocation(line: 149, column: 5, scope: !556)
!598 = !DILocation(line: 151, column: 12, scope: !556)
!599 = !DILocation(line: 151, column: 5, scope: !556)
!600 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !601, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!601 = !DISubroutineType(types: !602)
!602 = !{!23}
!603 = !DILocation(line: 158, column: 5, scope: !600)
!604 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !601, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!605 = !DILocation(line: 163, column: 5, scope: !604)
!606 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !601, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!607 = !DILocation(line: 168, column: 13, scope: !606)
!608 = !DILocation(line: 168, column: 20, scope: !606)
!609 = !DILocation(line: 168, column: 5, scope: !606)
!610 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!611 = !DILocation(line: 187, column: 16, scope: !610)
!612 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!613 = !DILocation(line: 188, column: 16, scope: !612)
!614 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!615 = !DILocation(line: 189, column: 16, scope: !614)
!616 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!617 = !DILocation(line: 190, column: 16, scope: !616)
!618 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!619 = !DILocation(line: 191, column: 16, scope: !618)
!620 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!621 = !DILocation(line: 192, column: 16, scope: !620)
!622 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!623 = !DILocation(line: 193, column: 16, scope: !622)
!624 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!625 = !DILocation(line: 194, column: 16, scope: !624)
!626 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!627 = !DILocation(line: 195, column: 16, scope: !626)
!628 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!629 = !DILocation(line: 198, column: 15, scope: !628)
!630 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!631 = !DILocation(line: 199, column: 15, scope: !630)
!632 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!633 = !DILocation(line: 200, column: 15, scope: !632)
!634 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!635 = !DILocation(line: 201, column: 15, scope: !634)
!636 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!637 = !DILocation(line: 202, column: 15, scope: !636)
!638 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!639 = !DILocation(line: 203, column: 15, scope: !638)
!640 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!641 = !DILocation(line: 204, column: 15, scope: !640)
!642 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!643 = !DILocation(line: 205, column: 15, scope: !642)
!644 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!645 = !DILocation(line: 206, column: 15, scope: !644)
