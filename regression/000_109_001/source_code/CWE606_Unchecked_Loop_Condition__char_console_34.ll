; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_34.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_34.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType = type { i8* }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_34_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %data19 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType* %myUnion, metadata !17, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !25, metadata !DIExpression()), !dbg !29
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !29
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !29
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !30
  store i8* %arraydecay, i8** %data, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !32, metadata !DIExpression()), !dbg !37
  %1 = load i8*, i8** %data, align 8, !dbg !38
  %call = call i64 @strlen(i8* %1) #6, !dbg !39
  store i64 %call, i64* %dataLen, align 8, !dbg !37
  %2 = load i64, i64* %dataLen, align 8, !dbg !40
  %sub = sub i64 100, %2, !dbg !42
  %cmp = icmp ugt i64 %sub, 1, !dbg !43
  br i1 %cmp, label %if.then, label %if.end18, !dbg !44

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !45
  %4 = load i64, i64* %dataLen, align 8, !dbg !48
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !49
  %5 = load i64, i64* %dataLen, align 8, !dbg !50
  %sub1 = sub i64 100, %5, !dbg !51
  %conv = trunc i64 %sub1 to i32, !dbg !52
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !53
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !54
  %cmp3 = icmp ne i8* %call2, null, !dbg !55
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !56

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !57
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !59
  store i64 %call6, i64* %dataLen, align 8, !dbg !60
  %8 = load i64, i64* %dataLen, align 8, !dbg !61
  %cmp7 = icmp ugt i64 %8, 0, !dbg !63
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !64

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !65
  %10 = load i64, i64* %dataLen, align 8, !dbg !66
  %sub9 = sub i64 %10, 1, !dbg !67
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !65
  %11 = load i8, i8* %arrayidx, align 1, !dbg !65
  %conv10 = sext i8 %11 to i32, !dbg !65
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !68
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !69

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !70
  %13 = load i64, i64* %dataLen, align 8, !dbg !72
  %sub14 = sub i64 %13, 1, !dbg !73
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !70
  store i8 0, i8* %arrayidx15, align 1, !dbg !74
  br label %if.end, !dbg !75

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !76

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !77
  %14 = load i8*, i8** %data, align 8, !dbg !79
  %15 = load i64, i64* %dataLen, align 8, !dbg !80
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !79
  store i8 0, i8* %arrayidx16, align 1, !dbg !81
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !82

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !83
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType* %myUnion to i8**, !dbg !84
  store i8* %16, i8** %unionFirst, align 8, !dbg !85
  call void @llvm.dbg.declare(metadata i8** %data19, metadata !86, metadata !DIExpression()), !dbg !88
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType* %myUnion to i8**, !dbg !89
  %17 = load i8*, i8** %unionSecond, align 8, !dbg !89
  store i8* %17, i8** %data19, align 8, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %i, metadata !90, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata i32* %n, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !95, metadata !DIExpression()), !dbg !96
  %18 = load i8*, i8** %data19, align 8, !dbg !97
  %call20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !99
  %cmp21 = icmp eq i32 %call20, 1, !dbg !100
  br i1 %cmp21, label %if.then23, label %if.end27, !dbg !101

if.then23:                                        ; preds = %if.end18
  store i32 0, i32* %intVariable, align 4, !dbg !102
  store i32 0, i32* %i, align 4, !dbg !104
  br label %for.cond, !dbg !106

for.cond:                                         ; preds = %for.inc, %if.then23
  %19 = load i32, i32* %i, align 4, !dbg !107
  %20 = load i32, i32* %n, align 4, !dbg !109
  %cmp24 = icmp slt i32 %19, %20, !dbg !110
  br i1 %cmp24, label %for.body, label %for.end, !dbg !111

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !112
  %inc = add nsw i32 %21, 1, !dbg !112
  store i32 %inc, i32* %intVariable, align 4, !dbg !112
  br label %for.inc, !dbg !114

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !dbg !115
  %inc26 = add nsw i32 %22, 1, !dbg !115
  store i32 %inc26, i32* %i, align 4, !dbg !115
  br label %for.cond, !dbg !116, !llvm.loop !117

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %intVariable, align 4, !dbg !120
  call void @printIntLine(i32 %23), !dbg !121
  br label %if.end27, !dbg !122

if.end27:                                         ; preds = %for.end, %if.end18
  ret void, !dbg !123
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !124 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType* %myUnion, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !129, metadata !DIExpression()), !dbg !130
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !130
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !130
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !131
  store i8* %arraydecay, i8** %data, align 8, !dbg !132
  %1 = load i8*, i8** %data, align 8, !dbg !133
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !134
  %2 = load i8*, i8** %data, align 8, !dbg !135
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType* %myUnion to i8**, !dbg !136
  store i8* %2, i8** %unionFirst, align 8, !dbg !137
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !138, metadata !DIExpression()), !dbg !140
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType* %myUnion to i8**, !dbg !141
  %3 = load i8*, i8** %unionSecond, align 8, !dbg !141
  store i8* %3, i8** %data1, align 8, !dbg !140
  call void @llvm.dbg.declare(metadata i32* %i, metadata !142, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %n, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !147, metadata !DIExpression()), !dbg !148
  %4 = load i8*, i8** %data1, align 8, !dbg !149
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !151
  %cmp = icmp eq i32 %call2, 1, !dbg !152
  br i1 %cmp, label %if.then, label %if.end, !dbg !153

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !154
  store i32 0, i32* %i, align 4, !dbg !156
  br label %for.cond, !dbg !158

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !159
  %6 = load i32, i32* %n, align 4, !dbg !161
  %cmp3 = icmp slt i32 %5, %6, !dbg !162
  br i1 %cmp3, label %for.body, label %for.end, !dbg !163

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !164
  %inc = add nsw i32 %7, 1, !dbg !164
  store i32 %inc, i32* %intVariable, align 4, !dbg !164
  br label %for.inc, !dbg !166

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !167
  %inc4 = add nsw i32 %8, 1, !dbg !167
  store i32 %inc4, i32* %i, align 4, !dbg !167
  br label %for.cond, !dbg !168, !llvm.loop !169

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !171
  call void @printIntLine(i32 %9), !dbg !172
  br label %if.end, !dbg !173

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !174
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !175 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %data19 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType* %myUnion, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !180, metadata !DIExpression()), !dbg !181
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !181
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !181
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !182
  store i8* %arraydecay, i8** %data, align 8, !dbg !183
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !184, metadata !DIExpression()), !dbg !186
  %1 = load i8*, i8** %data, align 8, !dbg !187
  %call = call i64 @strlen(i8* %1) #6, !dbg !188
  store i64 %call, i64* %dataLen, align 8, !dbg !186
  %2 = load i64, i64* %dataLen, align 8, !dbg !189
  %sub = sub i64 100, %2, !dbg !191
  %cmp = icmp ugt i64 %sub, 1, !dbg !192
  br i1 %cmp, label %if.then, label %if.end18, !dbg !193

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !194
  %4 = load i64, i64* %dataLen, align 8, !dbg !197
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !198
  %5 = load i64, i64* %dataLen, align 8, !dbg !199
  %sub1 = sub i64 100, %5, !dbg !200
  %conv = trunc i64 %sub1 to i32, !dbg !201
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !202
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !203
  %cmp3 = icmp ne i8* %call2, null, !dbg !204
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !205

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !206
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !208
  store i64 %call6, i64* %dataLen, align 8, !dbg !209
  %8 = load i64, i64* %dataLen, align 8, !dbg !210
  %cmp7 = icmp ugt i64 %8, 0, !dbg !212
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !213

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !214
  %10 = load i64, i64* %dataLen, align 8, !dbg !215
  %sub9 = sub i64 %10, 1, !dbg !216
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !214
  %11 = load i8, i8* %arrayidx, align 1, !dbg !214
  %conv10 = sext i8 %11 to i32, !dbg !214
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !217
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !218

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !219
  %13 = load i64, i64* %dataLen, align 8, !dbg !221
  %sub14 = sub i64 %13, 1, !dbg !222
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !219
  store i8 0, i8* %arrayidx15, align 1, !dbg !223
  br label %if.end, !dbg !224

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !225

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !226
  %14 = load i8*, i8** %data, align 8, !dbg !228
  %15 = load i64, i64* %dataLen, align 8, !dbg !229
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !228
  store i8 0, i8* %arrayidx16, align 1, !dbg !230
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !231

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !232
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType* %myUnion to i8**, !dbg !233
  store i8* %16, i8** %unionFirst, align 8, !dbg !234
  call void @llvm.dbg.declare(metadata i8** %data19, metadata !235, metadata !DIExpression()), !dbg !237
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_console_34_unionType* %myUnion to i8**, !dbg !238
  %17 = load i8*, i8** %unionSecond, align 8, !dbg !238
  store i8* %17, i8** %data19, align 8, !dbg !237
  call void @llvm.dbg.declare(metadata i32* %i, metadata !239, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i32* %n, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !244, metadata !DIExpression()), !dbg !245
  %18 = load i8*, i8** %data19, align 8, !dbg !246
  %call20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !248
  %cmp21 = icmp eq i32 %call20, 1, !dbg !249
  br i1 %cmp21, label %if.then23, label %if.end31, !dbg !250

if.then23:                                        ; preds = %if.end18
  %19 = load i32, i32* %n, align 4, !dbg !251
  %cmp24 = icmp slt i32 %19, 10000, !dbg !254
  br i1 %cmp24, label %if.then26, label %if.end30, !dbg !255

if.then26:                                        ; preds = %if.then23
  store i32 0, i32* %intVariable, align 4, !dbg !256
  store i32 0, i32* %i, align 4, !dbg !258
  br label %for.cond, !dbg !260

for.cond:                                         ; preds = %for.inc, %if.then26
  %20 = load i32, i32* %i, align 4, !dbg !261
  %21 = load i32, i32* %n, align 4, !dbg !263
  %cmp27 = icmp slt i32 %20, %21, !dbg !264
  br i1 %cmp27, label %for.body, label %for.end, !dbg !265

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !266
  %inc = add nsw i32 %22, 1, !dbg !266
  store i32 %inc, i32* %intVariable, align 4, !dbg !266
  br label %for.inc, !dbg !268

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !269
  %inc29 = add nsw i32 %23, 1, !dbg !269
  store i32 %inc29, i32* %i, align 4, !dbg !269
  br label %for.cond, !dbg !270, !llvm.loop !271

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %intVariable, align 4, !dbg !273
  call void @printIntLine(i32 %24), !dbg !274
  br label %if.end30, !dbg !275

if.end30:                                         ; preds = %for.end, %if.then23
  br label %if.end31, !dbg !276

if.end31:                                         ; preds = %if.end30, %if.end18
  ret void, !dbg !277
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_34_good() #0 !dbg !278 {
entry:
  call void @goodG2B(), !dbg !279
  call void @goodB2G(), !dbg !280
  ret void, !dbg !281
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_34.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_001/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_34_bad", scope: !1, file: !1, line: 30, type: !11, scopeLine: 31, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 32, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 32, column: 12, scope: !10)
!17 = !DILocalVariable(name: "myUnion", scope: !10, file: !1, line: 33, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_console_34_unionType", file: !19, line: 9, baseType: !20)
!19 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_001/source_code")
!20 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !19, line: 5, size: 64, elements: !21)
!21 = !{!22, !23}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "unionFirst", scope: !20, file: !19, line: 7, baseType: !14, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "unionSecond", scope: !20, file: !19, line: 8, baseType: !14, size: 64)
!24 = !DILocation(line: 33, column: 64, scope: !10)
!25 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 34, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 100)
!29 = !DILocation(line: 34, column: 10, scope: !10)
!30 = !DILocation(line: 35, column: 12, scope: !10)
!31 = !DILocation(line: 35, column: 10, scope: !10)
!32 = !DILocalVariable(name: "dataLen", scope: !33, file: !1, line: 38, type: !34)
!33 = distinct !DILexicalBlock(scope: !10, file: !1, line: 36, column: 5)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 38, column: 16, scope: !33)
!38 = !DILocation(line: 38, column: 33, scope: !33)
!39 = !DILocation(line: 38, column: 26, scope: !33)
!40 = !DILocation(line: 40, column: 17, scope: !41)
!41 = distinct !DILexicalBlock(scope: !33, file: !1, line: 40, column: 13)
!42 = !DILocation(line: 40, column: 16, scope: !41)
!43 = !DILocation(line: 40, column: 25, scope: !41)
!44 = !DILocation(line: 40, column: 13, scope: !33)
!45 = !DILocation(line: 43, column: 23, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 43, column: 17)
!47 = distinct !DILexicalBlock(scope: !41, file: !1, line: 41, column: 9)
!48 = !DILocation(line: 43, column: 28, scope: !46)
!49 = !DILocation(line: 43, column: 27, scope: !46)
!50 = !DILocation(line: 43, column: 47, scope: !46)
!51 = !DILocation(line: 43, column: 46, scope: !46)
!52 = !DILocation(line: 43, column: 37, scope: !46)
!53 = !DILocation(line: 43, column: 57, scope: !46)
!54 = !DILocation(line: 43, column: 17, scope: !46)
!55 = !DILocation(line: 43, column: 64, scope: !46)
!56 = !DILocation(line: 43, column: 17, scope: !47)
!57 = !DILocation(line: 47, column: 34, scope: !58)
!58 = distinct !DILexicalBlock(scope: !46, file: !1, line: 44, column: 13)
!59 = !DILocation(line: 47, column: 27, scope: !58)
!60 = !DILocation(line: 47, column: 25, scope: !58)
!61 = !DILocation(line: 48, column: 21, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 48, column: 21)
!63 = !DILocation(line: 48, column: 29, scope: !62)
!64 = !DILocation(line: 48, column: 33, scope: !62)
!65 = !DILocation(line: 48, column: 36, scope: !62)
!66 = !DILocation(line: 48, column: 41, scope: !62)
!67 = !DILocation(line: 48, column: 48, scope: !62)
!68 = !DILocation(line: 48, column: 52, scope: !62)
!69 = !DILocation(line: 48, column: 21, scope: !58)
!70 = !DILocation(line: 50, column: 21, scope: !71)
!71 = distinct !DILexicalBlock(scope: !62, file: !1, line: 49, column: 17)
!72 = !DILocation(line: 50, column: 26, scope: !71)
!73 = !DILocation(line: 50, column: 33, scope: !71)
!74 = !DILocation(line: 50, column: 37, scope: !71)
!75 = !DILocation(line: 51, column: 17, scope: !71)
!76 = !DILocation(line: 52, column: 13, scope: !58)
!77 = !DILocation(line: 55, column: 17, scope: !78)
!78 = distinct !DILexicalBlock(scope: !46, file: !1, line: 54, column: 13)
!79 = !DILocation(line: 57, column: 17, scope: !78)
!80 = !DILocation(line: 57, column: 22, scope: !78)
!81 = !DILocation(line: 57, column: 31, scope: !78)
!82 = !DILocation(line: 59, column: 9, scope: !47)
!83 = !DILocation(line: 61, column: 26, scope: !10)
!84 = !DILocation(line: 61, column: 13, scope: !10)
!85 = !DILocation(line: 61, column: 24, scope: !10)
!86 = !DILocalVariable(name: "data", scope: !87, file: !1, line: 63, type: !14)
!87 = distinct !DILexicalBlock(scope: !10, file: !1, line: 62, column: 5)
!88 = !DILocation(line: 63, column: 16, scope: !87)
!89 = !DILocation(line: 63, column: 31, scope: !87)
!90 = !DILocalVariable(name: "i", scope: !91, file: !1, line: 65, type: !4)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 64, column: 9)
!92 = !DILocation(line: 65, column: 17, scope: !91)
!93 = !DILocalVariable(name: "n", scope: !91, file: !1, line: 65, type: !4)
!94 = !DILocation(line: 65, column: 20, scope: !91)
!95 = !DILocalVariable(name: "intVariable", scope: !91, file: !1, line: 65, type: !4)
!96 = !DILocation(line: 65, column: 23, scope: !91)
!97 = !DILocation(line: 66, column: 24, scope: !98)
!98 = distinct !DILexicalBlock(scope: !91, file: !1, line: 66, column: 17)
!99 = !DILocation(line: 66, column: 17, scope: !98)
!100 = !DILocation(line: 66, column: 40, scope: !98)
!101 = !DILocation(line: 66, column: 17, scope: !91)
!102 = !DILocation(line: 69, column: 29, scope: !103)
!103 = distinct !DILexicalBlock(scope: !98, file: !1, line: 67, column: 13)
!104 = !DILocation(line: 70, column: 24, scope: !105)
!105 = distinct !DILexicalBlock(scope: !103, file: !1, line: 70, column: 17)
!106 = !DILocation(line: 70, column: 22, scope: !105)
!107 = !DILocation(line: 70, column: 29, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !1, line: 70, column: 17)
!109 = !DILocation(line: 70, column: 33, scope: !108)
!110 = !DILocation(line: 70, column: 31, scope: !108)
!111 = !DILocation(line: 70, column: 17, scope: !105)
!112 = !DILocation(line: 73, column: 32, scope: !113)
!113 = distinct !DILexicalBlock(scope: !108, file: !1, line: 71, column: 17)
!114 = !DILocation(line: 74, column: 17, scope: !113)
!115 = !DILocation(line: 70, column: 37, scope: !108)
!116 = !DILocation(line: 70, column: 17, scope: !108)
!117 = distinct !{!117, !111, !118, !119}
!118 = !DILocation(line: 74, column: 17, scope: !105)
!119 = !{!"llvm.loop.mustprogress"}
!120 = !DILocation(line: 75, column: 30, scope: !103)
!121 = !DILocation(line: 75, column: 17, scope: !103)
!122 = !DILocation(line: 76, column: 13, scope: !103)
!123 = !DILocation(line: 79, column: 1, scope: !10)
!124 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 86, type: !11, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!125 = !DILocalVariable(name: "data", scope: !124, file: !1, line: 88, type: !14)
!126 = !DILocation(line: 88, column: 12, scope: !124)
!127 = !DILocalVariable(name: "myUnion", scope: !124, file: !1, line: 89, type: !18)
!128 = !DILocation(line: 89, column: 64, scope: !124)
!129 = !DILocalVariable(name: "dataBuffer", scope: !124, file: !1, line: 90, type: !26)
!130 = !DILocation(line: 90, column: 10, scope: !124)
!131 = !DILocation(line: 91, column: 12, scope: !124)
!132 = !DILocation(line: 91, column: 10, scope: !124)
!133 = !DILocation(line: 93, column: 12, scope: !124)
!134 = !DILocation(line: 93, column: 5, scope: !124)
!135 = !DILocation(line: 94, column: 26, scope: !124)
!136 = !DILocation(line: 94, column: 13, scope: !124)
!137 = !DILocation(line: 94, column: 24, scope: !124)
!138 = !DILocalVariable(name: "data", scope: !139, file: !1, line: 96, type: !14)
!139 = distinct !DILexicalBlock(scope: !124, file: !1, line: 95, column: 5)
!140 = !DILocation(line: 96, column: 16, scope: !139)
!141 = !DILocation(line: 96, column: 31, scope: !139)
!142 = !DILocalVariable(name: "i", scope: !143, file: !1, line: 98, type: !4)
!143 = distinct !DILexicalBlock(scope: !139, file: !1, line: 97, column: 9)
!144 = !DILocation(line: 98, column: 17, scope: !143)
!145 = !DILocalVariable(name: "n", scope: !143, file: !1, line: 98, type: !4)
!146 = !DILocation(line: 98, column: 20, scope: !143)
!147 = !DILocalVariable(name: "intVariable", scope: !143, file: !1, line: 98, type: !4)
!148 = !DILocation(line: 98, column: 23, scope: !143)
!149 = !DILocation(line: 99, column: 24, scope: !150)
!150 = distinct !DILexicalBlock(scope: !143, file: !1, line: 99, column: 17)
!151 = !DILocation(line: 99, column: 17, scope: !150)
!152 = !DILocation(line: 99, column: 40, scope: !150)
!153 = !DILocation(line: 99, column: 17, scope: !143)
!154 = !DILocation(line: 102, column: 29, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !1, line: 100, column: 13)
!156 = !DILocation(line: 103, column: 24, scope: !157)
!157 = distinct !DILexicalBlock(scope: !155, file: !1, line: 103, column: 17)
!158 = !DILocation(line: 103, column: 22, scope: !157)
!159 = !DILocation(line: 103, column: 29, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !1, line: 103, column: 17)
!161 = !DILocation(line: 103, column: 33, scope: !160)
!162 = !DILocation(line: 103, column: 31, scope: !160)
!163 = !DILocation(line: 103, column: 17, scope: !157)
!164 = !DILocation(line: 106, column: 32, scope: !165)
!165 = distinct !DILexicalBlock(scope: !160, file: !1, line: 104, column: 17)
!166 = !DILocation(line: 107, column: 17, scope: !165)
!167 = !DILocation(line: 103, column: 37, scope: !160)
!168 = !DILocation(line: 103, column: 17, scope: !160)
!169 = distinct !{!169, !163, !170, !119}
!170 = !DILocation(line: 107, column: 17, scope: !157)
!171 = !DILocation(line: 108, column: 30, scope: !155)
!172 = !DILocation(line: 108, column: 17, scope: !155)
!173 = !DILocation(line: 109, column: 13, scope: !155)
!174 = !DILocation(line: 112, column: 1, scope: !124)
!175 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 115, type: !11, scopeLine: 116, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!176 = !DILocalVariable(name: "data", scope: !175, file: !1, line: 117, type: !14)
!177 = !DILocation(line: 117, column: 12, scope: !175)
!178 = !DILocalVariable(name: "myUnion", scope: !175, file: !1, line: 118, type: !18)
!179 = !DILocation(line: 118, column: 64, scope: !175)
!180 = !DILocalVariable(name: "dataBuffer", scope: !175, file: !1, line: 119, type: !26)
!181 = !DILocation(line: 119, column: 10, scope: !175)
!182 = !DILocation(line: 120, column: 12, scope: !175)
!183 = !DILocation(line: 120, column: 10, scope: !175)
!184 = !DILocalVariable(name: "dataLen", scope: !185, file: !1, line: 123, type: !34)
!185 = distinct !DILexicalBlock(scope: !175, file: !1, line: 121, column: 5)
!186 = !DILocation(line: 123, column: 16, scope: !185)
!187 = !DILocation(line: 123, column: 33, scope: !185)
!188 = !DILocation(line: 123, column: 26, scope: !185)
!189 = !DILocation(line: 125, column: 17, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !1, line: 125, column: 13)
!191 = !DILocation(line: 125, column: 16, scope: !190)
!192 = !DILocation(line: 125, column: 25, scope: !190)
!193 = !DILocation(line: 125, column: 13, scope: !185)
!194 = !DILocation(line: 128, column: 23, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !1, line: 128, column: 17)
!196 = distinct !DILexicalBlock(scope: !190, file: !1, line: 126, column: 9)
!197 = !DILocation(line: 128, column: 28, scope: !195)
!198 = !DILocation(line: 128, column: 27, scope: !195)
!199 = !DILocation(line: 128, column: 47, scope: !195)
!200 = !DILocation(line: 128, column: 46, scope: !195)
!201 = !DILocation(line: 128, column: 37, scope: !195)
!202 = !DILocation(line: 128, column: 57, scope: !195)
!203 = !DILocation(line: 128, column: 17, scope: !195)
!204 = !DILocation(line: 128, column: 64, scope: !195)
!205 = !DILocation(line: 128, column: 17, scope: !196)
!206 = !DILocation(line: 132, column: 34, scope: !207)
!207 = distinct !DILexicalBlock(scope: !195, file: !1, line: 129, column: 13)
!208 = !DILocation(line: 132, column: 27, scope: !207)
!209 = !DILocation(line: 132, column: 25, scope: !207)
!210 = !DILocation(line: 133, column: 21, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !1, line: 133, column: 21)
!212 = !DILocation(line: 133, column: 29, scope: !211)
!213 = !DILocation(line: 133, column: 33, scope: !211)
!214 = !DILocation(line: 133, column: 36, scope: !211)
!215 = !DILocation(line: 133, column: 41, scope: !211)
!216 = !DILocation(line: 133, column: 48, scope: !211)
!217 = !DILocation(line: 133, column: 52, scope: !211)
!218 = !DILocation(line: 133, column: 21, scope: !207)
!219 = !DILocation(line: 135, column: 21, scope: !220)
!220 = distinct !DILexicalBlock(scope: !211, file: !1, line: 134, column: 17)
!221 = !DILocation(line: 135, column: 26, scope: !220)
!222 = !DILocation(line: 135, column: 33, scope: !220)
!223 = !DILocation(line: 135, column: 37, scope: !220)
!224 = !DILocation(line: 136, column: 17, scope: !220)
!225 = !DILocation(line: 137, column: 13, scope: !207)
!226 = !DILocation(line: 140, column: 17, scope: !227)
!227 = distinct !DILexicalBlock(scope: !195, file: !1, line: 139, column: 13)
!228 = !DILocation(line: 142, column: 17, scope: !227)
!229 = !DILocation(line: 142, column: 22, scope: !227)
!230 = !DILocation(line: 142, column: 31, scope: !227)
!231 = !DILocation(line: 144, column: 9, scope: !196)
!232 = !DILocation(line: 146, column: 26, scope: !175)
!233 = !DILocation(line: 146, column: 13, scope: !175)
!234 = !DILocation(line: 146, column: 24, scope: !175)
!235 = !DILocalVariable(name: "data", scope: !236, file: !1, line: 148, type: !14)
!236 = distinct !DILexicalBlock(scope: !175, file: !1, line: 147, column: 5)
!237 = !DILocation(line: 148, column: 16, scope: !236)
!238 = !DILocation(line: 148, column: 31, scope: !236)
!239 = !DILocalVariable(name: "i", scope: !240, file: !1, line: 150, type: !4)
!240 = distinct !DILexicalBlock(scope: !236, file: !1, line: 149, column: 9)
!241 = !DILocation(line: 150, column: 17, scope: !240)
!242 = !DILocalVariable(name: "n", scope: !240, file: !1, line: 150, type: !4)
!243 = !DILocation(line: 150, column: 20, scope: !240)
!244 = !DILocalVariable(name: "intVariable", scope: !240, file: !1, line: 150, type: !4)
!245 = !DILocation(line: 150, column: 23, scope: !240)
!246 = !DILocation(line: 151, column: 24, scope: !247)
!247 = distinct !DILexicalBlock(scope: !240, file: !1, line: 151, column: 17)
!248 = !DILocation(line: 151, column: 17, scope: !247)
!249 = !DILocation(line: 151, column: 40, scope: !247)
!250 = !DILocation(line: 151, column: 17, scope: !240)
!251 = !DILocation(line: 154, column: 21, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !1, line: 154, column: 21)
!253 = distinct !DILexicalBlock(scope: !247, file: !1, line: 152, column: 13)
!254 = !DILocation(line: 154, column: 23, scope: !252)
!255 = !DILocation(line: 154, column: 21, scope: !253)
!256 = !DILocation(line: 156, column: 33, scope: !257)
!257 = distinct !DILexicalBlock(scope: !252, file: !1, line: 155, column: 17)
!258 = !DILocation(line: 157, column: 28, scope: !259)
!259 = distinct !DILexicalBlock(scope: !257, file: !1, line: 157, column: 21)
!260 = !DILocation(line: 157, column: 26, scope: !259)
!261 = !DILocation(line: 157, column: 33, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !1, line: 157, column: 21)
!263 = !DILocation(line: 157, column: 37, scope: !262)
!264 = !DILocation(line: 157, column: 35, scope: !262)
!265 = !DILocation(line: 157, column: 21, scope: !259)
!266 = !DILocation(line: 160, column: 36, scope: !267)
!267 = distinct !DILexicalBlock(scope: !262, file: !1, line: 158, column: 21)
!268 = !DILocation(line: 161, column: 21, scope: !267)
!269 = !DILocation(line: 157, column: 41, scope: !262)
!270 = !DILocation(line: 157, column: 21, scope: !262)
!271 = distinct !{!271, !265, !272, !119}
!272 = !DILocation(line: 161, column: 21, scope: !259)
!273 = !DILocation(line: 162, column: 34, scope: !257)
!274 = !DILocation(line: 162, column: 21, scope: !257)
!275 = !DILocation(line: 163, column: 17, scope: !257)
!276 = !DILocation(line: 164, column: 13, scope: !253)
!277 = !DILocation(line: 167, column: 1, scope: !175)
!278 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_34_good", scope: !1, file: !1, line: 169, type: !11, scopeLine: 170, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!279 = !DILocation(line: 171, column: 5, scope: !278)
!280 = !DILocation(line: 172, column: 5, scope: !278)
!281 = !DILocation(line: 173, column: 1, scope: !278)
